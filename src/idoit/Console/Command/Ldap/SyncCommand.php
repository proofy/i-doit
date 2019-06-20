<?php

namespace idoit\Console\Command\Ldap;

use idoit\Component\Helper\Memory;
use idoit\Console\Command\AbstractCommand;
use idoit\Console\Exception\MissingModuleException;
use idoit\Context\Context;
use idoit\Module\Cmdb\Search\Index\Signals;
use isys_array;
use isys_caching;
use isys_cmdb_dao;
use isys_cmdb_dao_category_s_person_master;
use isys_cmdb_dao_distributor;
use isys_component_signalcollection;
use isys_exception_validation;
use isys_format_json;
use isys_helper_crypt;
use isys_import_handler_cmdb;
use isys_ldap_dao;
use isys_module_ldap;
use isys_tenantsettings;
use Symfony\Component\Console\Exception\RuntimeException;
use Symfony\Component\Console\Input\InputDefinition;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;

class SyncCommand extends AbstractCommand
{
    const NAME = 'ldap-sync';

    /**
     * @var  integer
     */
    private $m_default_company = null;

    /**
     * @var  array
     */
    private $m_room = [];

    /**
     * Configuration
     *
     * @var array
     */
    private $ldapConfig = [];

    /**
     * Start time of sync
     *
     * @var int
     */
    private $m_start_time = 0;

    /**
     * Contains all users whose status will be ignored in the Reactivation
     *
     * @var array
     */
    private $ignoreUserStatus = [];

    /**
     * @var OutputInterface
     */
    private $output;

    /**
     * Call defined configured ignoreFunction via callLanguageConstructFunction
     *
     * @var bool
     */
    private $callLanguageConstruct = false;

    /**
     * Call defined configured ignoreFunction via call_user_func
     *
     * @var bool
     */
    private $callCallableFunction = false;

    /**
     * Contains language constructs which are supported and make sense
     *
     * @var array
     */
    private static $languageConstructs = [
        'empty',
        '!empty',
        'isset',
        '!isset'
    ];

    /**
     * @param $languageConstruct
     * @param $value
     *
     * @return bool
     */
    private function callLanguageConstructFunction($languageConstruct, $value)
    {
        switch ($languageConstruct) {
            case 'empty':
                return empty($value);
            case '!empty':
                return !empty($value);
            case 'isset':
                return isset($value);
            case '!isset':
                return !isset($value);
            default:
                return false;
        }
    }

    /**
     * Get name for command
     *
     * @return string
     */
    public function getCommandName()
    {
        return self::NAME;
    }

    /**
     * Get description for command
     *
     * @return string
     */
    public function getCommandDescription()
    {
        return 'Synchronizes LDAP user accounts with i-doit user objects';
    }

    /**
     * Retrieve Command InputDefinition
     *
     * @return InputDefinition
     */
    public function getCommandDefinition()
    {
        $definition = new InputDefinition();
        $definition->addOption(new InputOption(
            'ldapServerId',
            'l',
            InputOption::VALUE_REQUIRED,
            'Configuration Id of the server that should be synced with, else every configured server will be synced'
        ));

        $definition->addOption(new InputOption(
            'dumpConfig',
            null,
            InputOption::VALUE_NONE,
            'Dump used LDAP config and exit command after'
        ));

        return $definition;
    }

    /**
     * Checks if a command can have a config file via --config
     *
     * @return bool
     */
    public function isConfigurable()
    {
        return true;
    }

    /**
     * Returns an array of command usages
     *
     * @return string[]
     */
    public function getCommandUsages()
    {
        return [];
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $this->output = $output;

        $this->ldapConfig = isys_tenantsettings::get('ldap.config', $this->config);

        if (is_string($this->ldapConfig)) {
            $this->ldapConfig = isys_format_json::decode($this->ldapConfig);
        }

        if (isset($this->ldapConfig["rooms"]) && is_array($this->ldapConfig["rooms"])) {
            $this->m_room = $this->ldapConfig["rooms"];
        }

        if ($input->getOption('dumpConfig')) {
            echo json_encode($this->ldapConfig, JSON_PRETTY_PRINT);
            echo PHP_EOL;
            echo json_encode($this->m_room, JSON_PRETTY_PRINT);

            return;
        }

        if (isset($this->ldapConfig['ignoreFunction'])) {
            if (in_array($this->ldapConfig['ignoreFunction'], self::$languageConstructs)) {
                $this->callLanguageConstruct = true;
            }

            if (is_callable($this->ldapConfig['ignoreFunction'])) {
                $this->callCallableFunction = true;
            }
        }

        try {
            $this->sync($input->getOption('ldapServerId'));
        } catch (\Exception $exception) {
            $this->output->writeln('<error>' . $exception->getMessage() . '</error>');
        }
    }

    /**
     * Start the sync job.
     *
     * @param int $l_server_id
     * @param int $p_forceStatus
     *
     * @throws MissingModuleException
     * @throws \Exception
     * @throws \idoit\Exception\OutOfMemoryException
     * @throws \isys_exception_dao
     * @throws \isys_exception_database
     * @throws \isys_exception_ldap
     */
    private function sync($l_server_id = null, $p_forceStatus = C__RECORD_STATUS__NORMAL)
    {
        $l_memory = Memory::instance();
        ;
        $this->m_start_time = time();
        $regenerateSearchIndex = false;

        if (!class_exists("isys_module_ldap")) {
            throw new MissingModuleException("LDAP Module not installed! Please (re-)install via the update manager and latest i-doit update.");
        }

        /**
         * Disconnect the onAfterCategoryEntrySave event to not always reindex the object in every category
         * This is extremely important!
         *
         * An Index is done for all objects at the end of the request, if enabled via parameter.
         */
        Signals::instance()
            ->disconnectOnAfterCategoryEntrySave();

        Context::instance()
            ->setContextTechnical(Context::CONTEXT_LDAP_SYNC)
            ->setGroup(Context::CONTEXT_GROUP_IMPORT)
            ->setContextCustomer(Context::CONTEXT_LDAP_SYNC)
            ->setImmutable(true);

        $l_ldap_module = new isys_module_ldap();
        $l_ldap_dao = new isys_ldap_dao($this->container->database);
        $l_person_dao = new isys_cmdb_dao_category_s_person_master($l_ldap_dao->get_database_component());

        $l_servers = $l_ldap_dao->get_active_servers($l_server_id);

        if ($l_servers->num_rows() == 0) {
            throw new RuntimeException("No LDAP server configured.");
        }

        while ($l_row = $l_servers->get_row()) {
            $l_hostname = $l_row["isys_ldap__hostname"];
            $l_port = $l_row["isys_ldap__port"];
            $l_dn = $l_row["isys_ldap__dn"];
            $l_filter = $l_row["isys_ldap__filter"];
            $l_password = isys_helper_crypt::decrypt($l_row["isys_ldap__password"]);
            $l_mapping = unserialize($l_row["isys_ldap_directory__mapping"]);
            $l_recursive = (int)$l_row['isys_ldap__recursive'];
            $l_tls = $l_row['isys_ldap__tls'];
            $l_version = (int)$l_row['isys_ldap__version'] ?: 3;
            $l_disabled = 0;
            $l_synced_users = [];
            $pageLimit = (int)$l_row['isys_ldap__page_limit'];

            // Set map which object ids should be ignored in status update
            $this->output->writeln("Syncing LDAP-Server " . $l_hostname . " (" . $l_row["isys_ldap_directory__title"] . ")");

            $l_coninfo = null;
            $l_ldap_lib = $l_ldap_module->get_library($l_hostname, $l_dn, $l_password, $l_port, $l_version, $l_tls);
            $pagedResultEnabled = (bool)$l_row['isys_ldap__enable_paging'] && $l_ldap_lib->isPagedResultSupported();

            // First disable all found users
            if ($l_row["isys_ldap_directory__const"] == "C__LDAP__AD") {
                $pagedResultCookie = '';

                do {
                    if ($pagedResultEnabled) {
                        $l_ldap_lib->ldapControlPagedResult($pageLimit, true, $pagedResultCookie);
                    }

                    // Disabled users in Active Directory.
                    // userAccountControl = Attributename
                    // 1.2.840.113556.1.4.803:=2 == LDAP_MATCHING_RULE_BIT_AND:=UF_ACCOUNTDISABLE
                    // For more info see https://support.microsoft.com/de-de/help/269181/how-to-query-active-directory-by-using-a-bitwise-filter
                    $l_search = $l_ldap_lib->search(
                        $l_row["isys_ldap__user_search"],
                        "(&(userAccountControl:1.2.840.113556.1.4.803:=2)(objectclass=user))",
                        [],
                        0,
                        null,
                        null,
                        null,
                        $l_recursive
                    );

                    if ($l_search) {
                        $l_attributes = $l_ldap_lib->get_entries($l_search);

                        if (is_null($l_attributes["count"])) {
                            $l_disabled = 0;
                        } else {
                            $l_disabled = $l_attributes["count"];
                        }

                        for ($l_i = 0;$l_i <= $l_attributes["count"];$l_i++) {
                            if (!isset($l_attributes[$l_i]["dn"])) {
                                continue;
                            }

                            $l_username = $l_attributes[$l_i][strtolower($l_mapping[C__LDAP_MAPPING__USERNAME])][0];

                            if (!$l_username) {
                                continue;
                            }

                            $userData = $l_person_dao->get_person_by_username($l_username)
                                ->get_row();

                            // @See ID-4359 archive users only if the local object has no constant set
                            if ($userData && empty($userData['isys_obj__const'])) {
                                $this->ignoreUserStatus[$l_username] = true;
                                $userObjectId = $userData['isys_obj__id'];
                                $l_person_dao->set_object_status($userObjectId, C__RECORD_STATUS__ARCHIVED);
                            }
                        }
                    }

                    if ($pagedResultEnabled) {
                        $l_ldap_lib->ldapControlPagedResultResponse($l_search, $pagedResultCookie);
                    }
                } while ($pagedResultCookie !== null && $pagedResultCookie != '');
            }

            // Synchronize all users which are found via DN String
            if (!empty($l_mapping[C__LDAP_MAPPING__LASTNAME])) {
                /**
                 * Remove all ldap_dn entries for this ldap server
                 *  - This is used to identify deleted users later on
                 */
                $l_sql = "UPDATE isys_cats_person_list
                          SET isys_cats_person_list__ldap_dn = ''
                          WHERE isys_cats_person_list__isys_ldap__id = '" . $l_row["isys_ldap__id"] . "'";

                $l_person_dao->update($l_sql);
                $pagedResultCookie = '';

                do {
                    if ($pagedResultEnabled) {
                        $l_ldap_lib->ldapControlPagedResult($pageLimit, true, $pagedResultCookie);
                    }

                    $l_search = $l_ldap_lib->search($l_row["isys_ldap__user_search"], $l_filter, [], 0, null, null, null, $l_recursive);

                    if ($l_search) {
                        $l_attributes = $l_ldap_lib->get_entries($l_search);

                        for ($l_i = 0;$l_i <= $l_attributes["count"];$l_i++) {
                            // Break if memory consumption is too high
                            $l_memory->outOfMemoryBreak(8192);

                            if (!isset($l_attributes[$l_i]["dn"])) {
                                continue;
                            }

                            $l_attributes[$l_i]["ldapi"] = &$l_ldap_lib;
                            $l_attributes[$l_i]["ldap_data"] = &$l_row;

                            try {
                                if ($l_synced_users[] = $this->sync_user(
                                    $l_attributes[$l_i],
                                    $l_person_dao,
                                    $l_mapping,
                                    $l_row["isys_ldap__id"],
                                    $l_ldap_module,
                                    $l_row,
                                    $p_forceStatus
                                )) {
                                    $this->output->writeln("User " . '<info>' . $l_attributes[$l_i]["dn"] . '</info>' . " synchronized.");
                                } else {
                                    $this->output->writeln("Failed synchronizing: " . '<error>' . $l_attributes[$l_i]["dn"] . '</error>');
                                }
                            } catch (isys_exception_validation $e) {
                                $this->output->writeln("Validation for " . '<error>' . $l_attributes[$l_i]["dn"] . '</error>' . ' failed: ' . $e->getMessage());
                            }
                        }
                    }

                    if ($pagedResultEnabled) {
                        $l_ldap_lib->ldapControlPagedResultResponse($l_search, $pagedResultCookie);
                    }
                } while ($pagedResultCookie !== null && $pagedResultCookie != '');
                /**
                 * Archive or delete all deleted users where ldap_dn = '', this means this user was not synced and should therefore not exist anymore
                 */
                if (!isset($this->ldapConfig['deletedUsersBehaviour'])) {
                    $this->ldapConfig['deletedUsersBehaviour'] = 'archive';
                }

                if ($this->ldapConfig['deletedUsersBehaviour'] == 'delete') {
                    $l_deletedUserStatus = C__RECORD_STATUS__DELETED;
                } else {
                    $l_deletedUserStatus = C__RECORD_STATUS__ARCHIVED;
                }

                $l_sql = "SELECT isys_obj__title, isys_obj__id
                                        FROM isys_obj
                                        INNER JOIN isys_cats_person_list ON isys_obj__id = isys_cats_person_list__isys_obj__id
                                        WHERE isys_cats_person_list__isys_ldap__id = '" . $l_row["isys_ldap__id"] . "' AND isys_cats_person_list__ldap_dn = '';";

                $l_deletedUsers = $l_person_dao->retrieve($l_sql);
                $l_deletedUsersArray = [];

                while ($l_delRow = $l_deletedUsers->get_row()) {
                    $l_deletedUsersArray[(int)$l_delRow['isys_obj__id']] = $l_delRow['isys_obj__title'];
                }

                if (count($l_deletedUsersArray) > 0 && $l_deletedUserStatus > 0) {
                    $l_sql = "UPDATE isys_obj
                              SET isys_obj__status = " . (int)$l_deletedUserStatus . "
                              WHERE isys_obj__id IN(" . implode(',', array_keys($l_deletedUsersArray)) . ")";

                    $l_person_dao->update($l_sql);

                    $l_ldap_module->debug('NOTICE: The following users were ' . $this->ldapConfig['deletedUsersBehaviour'] . 'd: ' . implode(', ', $l_deletedUsersArray));

                    $this->output->writeln('Found ' . count($l_deletedUsersArray) . ' orphaned user(s) which is/are ' . $this->ldapConfig['deletedUsersBehaviour'] .
                        'd now (deleted users in your directory)');
                } else {
                    $this->output->writeln('No deleted users found.');
                }

                unset($l_deletedUsersArray);
            }

            // Output which users are disabled
            if ($l_disabled > 0 && count($this->ignoreUserStatus)) {
                $this->output->writeln("Found " . $l_disabled . " disabled object(s) inside " . $l_row["isys_ldap__user_search"] . ".");

                foreach ($this->ignoreUserStatus as $username => $unused) {
                    // @see  ID-5092  Old "controller" style was used here.
                    $this->output->writeln("User <info>'" . $username . "'</info> archived.");
                }
            }

            // Regenerate Search Index
            if (($l_disabled > 0 || count($l_synced_users)) && !$regenerateSearchIndex) {
                $regenerateSearchIndex = true;
            }
        }

        // Regenerate search index only if necessary
        if ($regenerateSearchIndex) {
            $this->regenerate_search_index();
        }

        // Attach users to rooms.
        foreach ($this->m_room as $l_room_title => $l_room_users) {
            if (!is_countable($l_room_users)) {
                $this->output->writeln('There are no users to assign to room: ' . $l_room_title);
                continue;
            }
            $this->output->writeln("Adding " . count($l_room_users) . " users to room: " . $l_room_title);

            $l_contacts = [];

            foreach ($l_room_users as $l_user) {
                if (!is_numeric($l_user)) {
                    $l_userdata = $l_person_dao->get_person_by_username($l_user)
                        ->__to_array();
                    $l_user = $l_userdata["isys_cats_person_list__isys_obj__id"];
                }

                $l_contacts[] = $l_user;
            }

            if (count($l_contacts)) {
                if ($l_count_assigned = $this->connect_room($l_contacts, $l_room_title)) {
                    $this->output->writeln("Adding " . $l_count_assigned . " users to room: " . $l_room_title);
                } else {
                    $this->output->writeln("No users added to room: " . $l_room_title);
                }
            }
        }

        // Clear all found "auth-*" cache-files.
        try {
            $l_cache_files = isys_caching::find('auth-*');
            array_map(function (isys_caching $l_cache) {
                $l_cache->clear();
            }, $l_cache_files);
        } catch (\Exception $e) {
            $this->output->writeln('<error>An error occurred while clearing the cache files: ' . $e->getMessage() . '</error>');
        }
    }

    /**
     * Person is syncronized here. $p_attributes are ldap_search data attributes.
     *
     * @param   array                                  $p_attributes
     * @param   isys_cmdb_dao_category_s_person_master $p_person_dao
     * @param   array                                  $p_mapping
     * @param   integer                                $p_ldap_server_id
     * @param   isys_module_ldap                       $p_ldap_module
     *
     * @param   array                                  $p_serverdata
     * @param   int                                    $p_forceStatus
     *
     * @return bool
     *
     * @throws \Exception
     * @throws \isys_exception_cmdb
     * @throws isys_exception_validation
     */
    private function sync_user($p_attributes, $p_person_dao, $p_mapping, $p_ldap_server_id, $p_ldap_module, $p_serverdata, $p_forceStatus = C__RECORD_STATUS__NORMAL)
    {
        if (isset($this->ldapConfig['defaultCompany']) && $this->ldapConfig['defaultCompany']) {
            $this->m_default_company = $this->ldapConfig['defaultCompany'];
        }

        if (empty($p_mapping[C__LDAP_MAPPING__USERNAME]) && empty($p_mapping[C__LDAP_MAPPING__FIRSTNAME])) {
            throw new RuntimeException('LDAP Mappings empty! Configure your LDAP-Mappings in System -> LDAP -> Directories');
        }

        $l_username = $p_attributes[strtolower($p_mapping[C__LDAP_MAPPING__USERNAME])][0];
        $l_firstname = $p_attributes[strtolower($p_mapping[C__LDAP_MAPPING__FIRSTNAME])][0];
        $l_lastname = $p_attributes[strtolower($p_mapping[C__LDAP_MAPPING__LASTNAME])][0];
        $l_mail = $p_attributes[strtolower($p_mapping[C__LDAP_MAPPING__MAIL])][0];

        if (isset($this->ldapConfig['ignoreUsersWithAttributes']) && is_array($this->ldapConfig['ignoreUsersWithAttributes']) && count($this->ldapConfig['ignoreUsersWithAttributes'])) {
            /**
             * INFO:
             *
             * This routine will run the defined "ignoreFunction" against each property
             * from "ignoreUsersWithAttributes". Users will be only ignored if "ignoreFunction"
             * returns true for each property. Otherwise the user will be syncronized.
             */
            $ignoreUser = true;

            foreach ($this->ldapConfig['ignoreUsersWithAttributes'] as $l_checkAttr) {
                if ($this->callLanguageConstruct) {
                    $ignoreUser = $this->callLanguageConstructFunction($this->ldapConfig['ignoreFunction'], $p_attributes[$l_checkAttr][0]);
                }

                if ($this->callCallableFunction) {
                    $ignoreUser = !call_user_func($this->ldapConfig['ignoreFunction'], $p_attributes[$l_checkAttr][0], $p_attributes);
                }

                // Check whether "ignoreFunction" does not match property
                if ($ignoreUser === false) {
                    break;
                }
            }

            if ($ignoreUser) {
                $p_ldap_module->debug('ignoreFunction prohibited syncing user "' . ($p_attributes['distinguishedname'] ?: $p_attributes['cn']) . '"');

                throw new isys_exception_validation('ignoreFunction prohibited syncing user.', $this->ldapConfig['ignoreUsersWithAttributes']);
            }
        }

        if ($l_username) {
            $l_userdata = $p_person_dao->get_person_by_username($l_username);
            $l_user_created = false;

            if ($l_userdata->num_rows() <= 0) {
                $p_ldap_module->debug('User with username "' . $l_username . '" was not found. Creating..');
                $l_object_id = $p_person_dao->create(
                    null,
                    $l_username,
                    $l_firstname,
                    $l_lastname,
                    $l_mail,
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    $p_ldap_server_id,
                    $p_attributes["dn"],
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    '',
                    ''
                );

                // Set Object status to archived because the user is deactivated in Active Directory
                if (isset($this->ignoreUserStatus[$l_username])) {
                    $p_person_dao->set_object_status($l_object_id, C__RECORD_STATUS__ARCHIVED);
                }

                $l_userdata = $p_person_dao->get_person_by_username($l_username)
                    ->get_row();
                $l_user_id = $l_userdata['isys_cats_person_list__id'];
                $l_user_created = true;
            } else {
                $output = 'User with username "' . $l_username . '" found. Syncing..';

                $l_userdata = $l_userdata->get_row();
                $l_user_id = $l_userdata["isys_cats_person_list__id"];
                $l_object_id = $l_userdata['isys_cats_person_list__isys_obj__id'];

                // Fixing object status (in case an object was re-activated in ldap again, or accidentally archived in i-doit)
                // Only update object status if its different or if Active Directory and is not in ignoredUserIdStatus or if config autoReactivateUsers is true
                if ($l_userdata['isys_obj__status'] != $p_forceStatus &&
                    ((isset($p_serverdata["isys_ldap_directory__const"]) && $p_serverdata["isys_ldap_directory__const"] == "C__LDAP__AD" &&
                            !isset($this->ignoreUserStatus[$l_username])) || $this->ldapConfig['autoReactivateUsers'])) {
                    $p_person_dao->set_object_status($l_object_id, $p_forceStatus);
                    $output .= " User " . $l_username . " has been reactivated.";
                }

                $p_ldap_module->debug($output);
                // Setting login
                $p_person_dao->save_login($l_user_id, $l_username, null, null, $p_forceStatus, false);
            }

            if ($l_user_id > 0) {
                $p_ldap_module->debug('Available attributes for this user: ' . implode(',', array_filter(array_keys($p_attributes), function ($p_val) {
                    return !is_numeric($p_val) && $p_val != 'count' && $p_val != 'ldapi' && $p_val != 'ldap_data';
                })));

                /**
                 * Initialize category data array
                 */
                $l_category_data = [
                    'data_id'    => $l_user_id,
                    'properties' => []
                ];

                /**
                 * Prepare current values
                 */
                foreach ($p_person_dao->get_properties() as $l_key => $l_property) {
                    if (isset($l_userdata[$l_property[C__PROPERTY__DATA][C__PROPERTY__DATA__FIELD]])) {
                        if ($l_key == 'organization') {
                            $l_category_data['properties'][$l_key][C__DATA__VALUE] = $l_userdata['isys_connection__isys_obj__id'];
                        } else {
                            $l_category_data['properties'][$l_key][C__DATA__VALUE] = $l_userdata[$l_property[C__PROPERTY__DATA][C__PROPERTY__DATA__FIELD]];
                        }
                    }
                }

                // Custom properties
                $l_custom_properties = $p_person_dao->get_custom_properties(true);

                foreach ($l_custom_properties as $l_key => $l_property) {
                    if (isset($l_userdata[$l_property[C__PROPERTY__DATA][C__PROPERTY__DATA__FIELD]])) {
                        $l_category_data['properties'][$l_key][C__DATA__VALUE] = $l_userdata[$l_property[C__PROPERTY__DATA][C__PROPERTY__DATA__FIELD]];
                    }
                }

                /* Override default properties coming from ldap */
                $l_category_data['properties']['id'] = [C__DATA__VALUE => $l_user_id];
                $l_category_data['properties']['first_name'] = [C__DATA__VALUE => $l_firstname];
                $l_category_data['properties']['last_name'] = [C__DATA__VALUE => $l_lastname];
                $l_category_data['properties']['ldap_dn'] = [C__DATA__VALUE => $p_attributes["dn"]];
                $l_category_data['properties']['ldap_id'] = [C__DATA__VALUE => $p_ldap_server_id];
                $l_category_data['properties']['mail'] = [C__DATA__VALUE => $l_mail];

                // Prepare 'syncable' attributes.
                if (isset($this->ldapConfig['attributes']) && is_array($this->ldapConfig['attributes'])) {
                    foreach ($this->ldapConfig['attributes'] as $l_idoitAttribute => $l_ldapAttribute) {
                        $l_ldapAttribute = strtolower($l_ldapAttribute);

                        if (!isset($l_category_data[$l_idoitAttribute])) {
                            if (isset($p_attributes[$l_ldapAttribute][0])) {
                                $l_category_data['properties'][$l_idoitAttribute][C__DATA__VALUE] = $p_attributes[$l_ldapAttribute][0];
                            } else {
                                $p_ldap_module->debug('Warning: LDAP Attribute "' . $l_ldapAttribute . '" was not found for user ' . $p_attributes["dn"]);
                            }
                        }
                    }
                }

                // Prepare organization assignment.
                if (isset($this->ldapConfig['attributes']['organization']) && isset($p_attributes[$this->ldapConfig['attributes']['organization']][0])) {
                    $l_company = $p_attributes[$this->ldapConfig['attributes']['organization']][0];
                } else {
                    if ($this->m_default_company) {
                        $l_company = $this->m_default_company;
                    }
                }

                // Check if company is defined
                if (isset($l_company) && $l_company) {
                    if (!is_numeric($l_company) && defined('C__OBJTYPE__ORGANIZATION')) {
                        $l_orga_obj_types = $p_person_dao->get_objtype_ids_by_cats_id_as_array(defined_or_default('C__CATS__ORGANIZATION')) ?: C__OBJTYPE__ORGANIZATION;
                        $l_category_data['properties']['organization'][C__DATA__VALUE] = $p_person_dao->get_obj_id_by_title($l_company, $l_orga_obj_types);

                        if (!$l_category_data['properties']['organization'][C__DATA__VALUE]) {
                            $l_category_data['properties']['organization'][C__DATA__VALUE] = $p_person_dao->insert_new_obj(
                                C__OBJTYPE__ORGANIZATION,
                                false,
                                $l_company,
                                null,
                                C__RECORD_STATUS__NORMAL
                            );
                        }
                    } else {
                        if (is_numeric($l_company)) {
                            if ($p_person_dao->obj_exists($l_company)) {
                                $l_category_data['properties']['organization'][C__DATA__VALUE] = $l_company;
                            }
                        }
                    }
                }

                // Synchronize.
                $l_success = $p_person_dao->sync($l_category_data, $l_object_id, isys_import_handler_cmdb::C__UPDATE);

                // Emit category signal (afterCategoryEntrySave).
                isys_component_signalcollection::get_instance()
                    ->emit("mod.cmdb.afterCategoryEntrySave", $p_person_dao, $l_user_id, $l_success, $l_object_id, $l_category_data, []);

                /**
                 * Also sync room
                 */
                if (isset($this->ldapConfig['attributes']['office']) && isset($p_attributes[$this->ldapConfig['attributes']['office']][0])) {
                    $l_room_title = $p_attributes[$this->ldapConfig['attributes']['office']][0];

                    if ($this->ldapConfig["import_rooms"] && $l_room_title) {
                        $this->add_to_room($l_room_title, $l_object_id);
                    }
                }

                /**
                 * And corresponding groups
                 */
                if ($l_userdata && is_array($l_userdata)) {
                    if (isset($l_userdata["isys_obj__id"]) && $l_userdata["isys_obj__id"] > 0) {
                        $p_ldap_module->attach_groups_to_user($l_userdata["isys_obj__id"], $p_ldap_module->ldap_get_groups($p_attributes), $p_person_dao, $l_user_created);
                    } else {
                        $p_ldap_module->debug('Could not attach user to groups. User ID was not found.');
                    }
                }

                $p_ldap_module->debug('Done: User ID is "' . $l_userdata["isys_obj__id"] . '" (Category ID: ' . $l_user_id . ')');

                // Mark synchronized object as chenged
                $p_person_dao->object_changed($l_object_id);

                return $l_object_id;
            } else {
                $p_ldap_module->debug('Could not add user.');
            }
        } else {
            $this->output->writeln("Username for DN: " . '<error>' . $p_attributes["dn"] . '</error>' . " is not defined!");
        }

        return false;
    }

    /**
     *
     * @param $p_room_key
     * @param $p_user_id
     */
    private function add_to_room($p_room_key, $p_user_id)
    {
        $this->m_room[$p_room_key][] = $p_user_id;
    }

    /**
     *
     * @param $p_user_obj_id
     * @param $p_room_title
     */
    private function connect_room($p_user_obj_id, $p_room_title)
    {
        $l_dao = new isys_cmdb_dao($this->container->database);
        $l_object_id = $l_dao->get_obj_id_by_title($p_room_title, defined_or_default('C__OBJTYPE__ROOM'));

        if (!defined('C__CATG__CONTACT')) {
            return null;
        }
        if (empty($l_object_id)) {
            $l_object_id = $l_dao->insert_new_obj(defined_or_default('C__OBJTYPE__ROOM'), false, $p_room_title, null, C__RECORD_STATUS__NORMAL);
        }

        $l_dist = new isys_cmdb_dao_distributor($l_dao->get_database_component(), $l_object_id, C__CMDB__CATEGORY__TYPE_GLOBAL, null, [C__CATG__CONTACT => true]);

        if ($l_dist && $l_dist->count() > 0) {
            $l_cat = $l_dist->get_category(C__CATG__CONTACT);

            if (is_object($l_cat)) {
                $l_persons_to_attach = [];

                foreach ($p_user_obj_id as $l_person_obj_id) {
                    if (!$l_cat->check_contacts($l_person_obj_id, $l_object_id)) {
                        $l_persons_to_attach[] = $l_person_obj_id;
                    }
                }

                // Attach persons only if they are not already assigned
                return (count($l_persons_to_attach)) ? ($l_cat->attachObjects($l_object_id, $l_persons_to_attach) ? count($l_persons_to_attach) : null) : null;
            }
        }
    }

    /**
     * Regenerate search index for synced contacts
     */
    private function regenerate_search_index()
    {
        $this->output->writeln('Regenerating search index..');

        Signals::instance()->setOutput($this->output);
        Signals::instance()->onPostImport($this->m_start_time, [
            'C__CATG__CONTACT',
            'C__CATG__IP'
        ], [
            'C__CATS__ORGANIZATION',
            'C__CATS__PERSON_MASTER',
            'C__CATS__PERSON_GROUP_MASTER',
            'C__CATS__CLIENT'
        ], false);

        $this->output->writeln('Done!');
    }
}
