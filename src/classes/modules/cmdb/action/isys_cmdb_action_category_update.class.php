<?php

use idoit\Context\Context;

/**
 * Action: category creation.
 *
 * @package     i-doit
 * @subpackage  CMDB_Actions
 * @author      Andre Woesten <awoesten@i-doit.de>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_action_category_update extends isys_cmdb_action_category implements isys_cmdb_action
{
    /**
     * Cache the property infos
     *
     * @var array
     */
    private static $m_infocache = [];

    /**
     * @var array
     */
    private static $m_popup_instance = [];

    /**
     * Categories where the title is generated with the plugin isys_smarty_plugin_f_title_suffix_counter
     *
     * @var array
     */
    private $m_categories_with_suffix = [
        'isys_cmdb_dao_category_g_network_port'      => [
            'C__CATG__PORT__TITLE',
            'C__CATG__PORT'
        ],
        'isys_cmdb_dao_category_g_connector'         => [
            'C__UNIVERSAL__TITLE',
            'C__CATG__CONNECTOR'
        ],
        'isys_cmdb_dao_category_g_controller_fcport' => [
            'C__CATG__CONTROLLER_FC_PORT_TITLE',
            'C__CATG__FC_PORT'
        ],
        'isys_cmdb_dao_category_s_chassis_slot'      => [
            'C__CMDB__CATS__CHASSIS_SLOT__TITLE',
            'C__CMDB__CATS__CHASSIS_SLOT'
        ]
    ];

    private $m_sm2_skip = [
        'main',
        'filter',
        'C__CATG__TITLE',
        'C__CATG__SYSID',
        'C__CATG__LOCATION',
        'C__CATG__PURPOSE',
        'C__CATG__CONTACT',
        'C__CATG__RELATIONS',
        'C__CATG__ACCESS',
        'C__UNIVERSAL__BUTTON_SAVE_QUICK',
        'C__UNIVERSAL__BUTTON_CANCEL',
        'C__CONTACT__PERSON_PASSWORD_SECOND',
        'commentary',
        'LogbookReason',
    ];

    /**
     * Check if a change occurred by comparing the post value (string) and the complete
     * sm2 array. Return value is an array with the changes.
     *
     * @param   string $p_post_value
     * @param   array  $p_sm2
     *
     * @return  array
     * @author  Dennis Stuecken <dstuecken@i-doit.de>
     */
    public static function get_change($p_post_value, $p_sm2)
    {
        if (isset($p_sm2["p_strValue"]) && !empty($p_sm2["p_strValue"])) {
            $l_field = $p_sm2["p_strValue"];
        } else {
            if (isset($p_sm2["p_strSelectedID"]) && !empty($p_sm2["p_strSelectedID"])) {
                $l_field = $p_sm2["p_strSelectedID"];
            } else {
                if (isset($p_sm2["p_arData"]) && !empty($p_sm2["p_arData"])) {
                    $l_field = '';
                    if ($p_sm2["type"] === 'f_dialog_list') {
                        $l_arData = unserialize($p_sm2['p_arData']);
                        if (is_array($l_arData)) {
                            $l_from = [];
                            foreach ($l_arData AS $l_data) {
                                if ($l_data['sel']) {
                                    $l_from[] = $l_data['val'];
                                }
                            }
                            ksort($l_from);
                            $l_field = implode(',', $l_from);
                        }
                    }
                } else {
                    $l_field = null;
                }
            }
        }

        $l_field = trim($l_field);
        $p_post_value = trim($p_post_value);

        if (($l_field_json = isys_format_json::is_json_array($l_field))) {
            $l_field = str_replace([
                "'",
                '"'
            ], '', $l_field);
        }

        if (($l_post_json = isys_format_json::is_json_array($p_post_value))) {
            $p_post_value = str_replace([
                "'",
                '"'
            ], '', $p_post_value);
        }

        // @todo LF: Check, if "$p_sm2["p_strPopupType"] != 'dialog_plus'" doesn't break anything! It should work just fine but you'll never know.
        if (isset($p_sm2["p_strPopupType"]) && $p_sm2["p_strPopupType"] != 'dialog_plus') {
            $l_class = "isys_popup_" . $p_sm2["p_strPopupType"];

            if (class_exists($l_class)) {
                /**
                 * @var $l_formatter isys_component_popup
                 */
                if (isset(self::$m_popup_instance[$p_sm2["p_strPopupType"]])) {
                    $l_formatter = self::$m_popup_instance[$p_sm2["p_strPopupType"]];
                } else {
                    $l_formatter = new $l_class();
                }

                if (method_exists($l_formatter, 'set_format_quick_info')) {
                    // We don´t need the quickinfo for the logbook changes otherwise the comparison would always be false
                    $l_formatter->set_format_quick_info(false);
                } elseif (method_exists($l_formatter, 'set_format_as_text')) {
                    // @see ID-3386 popup browser location has a different method for deactivating the quickinfo
                    $l_formatter->set_format_as_text(true);
                }

                if (is_numeric($l_field) || is_numeric($p_post_value)) {
                    $l_field = ((is_numeric($l_field)) ? $l_formatter->format_selection($l_field, true) : $l_field);
                    $p_post_value = (is_numeric($p_post_value) ? $l_formatter->format_selection($p_post_value, true) : $p_post_value);
                } else {
                    // This case only occurs in create mode if we have an object browser with multiselection
                    $l_dao = isys_cmdb_dao::instance(isys_application::instance()->database);
                    if ($l_post_json) {
                        $p_post_value = implode(', ', array_map(function ($l_item) use ($l_dao) {
                            if (is_numeric($l_item)) {
                                return trim($l_dao->get_obj_name_by_id_as_string($l_item));
                            } else {
                                return trim($l_item);
                            }
                        }, isys_format_json::decode($p_post_value)));
                    }

                    if ($l_field_json) {
                        $l_field = implode(', ', array_map(function ($l_item) use ($l_dao) {
                            if (is_numeric($l_item)) {
                                return trim($l_dao->get_obj_name_by_id_as_string($l_item));
                            } else {
                                return trim($l_item);
                            }
                        }, isys_format_json::decode($l_field)));
                    }
                }

                if ($l_field != $p_post_value) {
                    return [
                        "from" => strip_tags($l_field),
                        "to"   => strip_tags($p_post_value)
                    ];
                } else {
                    return null;
                }
            }
        }

        /**
         * Format a possible "," notated number to the english "." format, to not track 1,76 and 1.76 as a change.
         *
         * @see ID-2460
         *
         * Format a 'no-break space' (&nbsp;) and a UTF8 encoded 'no-break space' (chr(194) + chr(160)) with a " " (this can occur in WYSIWYG fields).
         * @see ID-3115
         */

        $l_search = [',', '&nbsp;', chr(194) . chr(160)];
        $l_replace = ['.', ' ', ' '];

        if (str_replace($l_search, $l_replace, $l_field) != str_replace($l_search, $l_replace, $p_post_value)) {
            if (is_null($l_field) || $l_field == "") {
                $l_field = null;
            }

            return [
                "from" => $l_field,
                "to"   => $p_post_value
            ];
        }

        return null;
    }

    /**
     * Process method.
     *
     * @param   isys_cmdb_dao $p_dao
     * @param   array         $p_data
     *
     * @throws  isys_exception_cmdb
     * @throws  Exception
     * @return  mixed
     */
    public function handle(isys_cmdb_dao $p_dao, &$p_data)
    {
        Context::instance()
            ->setContextTechnical(Context::CONTEXT_DAO_UPDATE)
            ->setGroup(Context::CONTEXT_GROUP_DAO)
            ->setContextCustomer(Context::CONTEXT_DAO_UPDATE);

        global $g_catlevel, $g_navmode;

        $l_mod_event_manager = isys_event_manager::getInstance();

        $l_changed_compressed = null;
        $l_changed = [];
        $l_saveval = 0;

        $l_gets = isys_module_request::get_instance()
            ->get_gets();
        $l_posts = isys_module_request::get_instance()
            ->get_posts();

        /** @var  $l_actproc isys_cmdb_action_processor */
        $l_actproc = &$p_data["__ACTIONPROC"];

        /** @var $l_dao isys_cmdb_dao_category */
        $l_dao = $p_data[0];

        /** @var  isys_cmdb_ui_category */
        $l_ui = $p_data[1];

        // Class name.
        $l_class = get_class($l_dao);

        // New auth-check.
        $this->check_right($_GET[C__CMDB__GET__OBJECT], $l_dao->get_category_const());

        // Check classes.
        if (!isset($l_dao) || !$l_dao) {
            throw new isys_exception_cmdb("Could not handle category update (DAO class not set)", C__CMDB__ERROR__ACTION_PROCESSOR);
        }

        if (!isset($l_ui) || !$l_ui) {
            throw new isys_exception_cmdb("Could not handle category update (DAO class not set)", C__CMDB__ERROR__ACTION_PROCESSOR);
        }

        // Check Locking.
        if ($this->object_is_locked()) {
            $l_actproc->result_push(null);

            return null;
        }

        $l_recstatus = null;
        $l_newlevel = 0;

        if (isset($_GET[C__CMDB__GET__CATG_CUSTOM]) && $l_class == 'isys_cmdb_dao_category_g_custom_fields') {
            $l_category = $l_dao->get_cat_custom_name_by_id_as_string($_GET[C__CMDB__GET__CATG_CUSTOM]);
            $l_strConstEvent = "C__LOGBOOK_EVENT__CATEGORY_CHANGED";

            if (method_exists($l_dao, 'set_catg_custom_id')) {
                $l_dao->set_catg_custom_id($_GET[C__CMDB__GET__CATG_CUSTOM]);
            }
        } elseif ($_GET[C__CMDB__GET__CATG]) {
            $l_category = $l_dao->get_catg_name_by_id_as_string($_GET[C__CMDB__GET__CATG]);
            $l_strConstEvent = "C__LOGBOOK_EVENT__CATEGORY_CHANGED";
        } elseif ($_GET[C__CMDB__GET__CATS]) {
            $l_category = $l_dao->get_cats_name_by_id_as_string($_GET[C__CMDB__GET__CATS]);
            $l_strConstEvent = "C__LOGBOOK_EVENT__CATEGORY_CHANGED";
        } else {
            $l_strConstEvent = "C__LOGBOOK_EVENT__OBJECT_CHANGED";
            $l_category = '';
        }

        $l_category_with_suffix = false;

        // Sanitize Data
        $_POST = $l_dao->sanitize_post_data();

        $l_dao->set_strLogbookSQL('');

        // Check if sent POST data is OK.
        $l_validation_result = $l_dao->validate_user_data();
        if ($l_validation_result) {
            try {
                /**
                 * -----------------------------------------------------------------------------------
                 * Call logbook change management
                 * -----------------------------------------------------------------------------------
                 */
                $l_changed = [];
                $l_changed_compressed = "";

                if (array_key_exists($l_class, $this->m_categories_with_suffix)) {
                    $l_suffix_info = $this->m_categories_with_suffix[$l_class];
                    $l_generated_titles = isys_smarty_plugin_f_title_suffix_counter::generate_title_as_array($l_posts, $l_suffix_info[1], $l_suffix_info[0]);
                    $l_category_with_suffix = true;
                    if (is_array($l_generated_titles)) {
                        $l_changed_compressed = [];

                        foreach ($l_generated_titles AS $l_title) {
                            $l_posts[$l_suffix_info[0]] = $l_title;
                            $l_changed = $this->format_changes($l_posts, $l_dao);
                            $l_changed_compressed[] = serialize($l_changed);
                        }
                    }
                } else {
                    $l_changed = $this->format_changes($l_posts, $l_dao);

                    $l_changed_compressed = serialize($l_changed);
                }

                // Emit category signal (beforeCategoryEntrySave).
                isys_component_signalcollection::get_instance()
                    ->emit("mod.cmdb.beforeCategoryEntrySave", $l_dao, $_GET[C__CMDB__GET__CATLEVEL], $_GET[C__CMDB__GET__OBJECT], $_POST, $l_changed);

                // Save category.
                if (method_exists($l_dao, 'save_element')) {
                    $l_saveval = $l_dao->save_element($l_newlevel, $l_recstatus, empty($_GET[C__CMDB__GET__CATLEVEL]));
                } else {
                    $l_saveval = $l_dao->save_user_data(empty($_GET[C__CMDB__GET__CATLEVEL]));
                }
                $l_dao->object_changed($_GET[C__CMDB__GET__OBJECT]);

                // Emit category signal (afterCategoryEntrySave).
                isys_component_signalcollection::get_instance()
                    ->emit("mod.cmdb.afterCategoryEntrySave", $l_dao, $_GET[C__CMDB__GET__CATLEVEL], $l_saveval, $_GET[C__CMDB__GET__OBJECT], $_POST, $l_changed);

                /*
                 * Dennis Stücken:
                 * Send category id to UI, if a new category was created by save_element.
                 * This functions requests, that a create() inside save_element returns the created id, of course!
                 */
                if (is_numeric($l_saveval)) {
                    $_GET[C__CMDB__GET__CATLEVEL] = $l_saveval;
                }

                if ($l_newlevel) {
                    $g_catlevel = $l_newlevel;
                }
            } catch (isys_exception $e) {
                isys_application::instance()->container['notify']->error($e->getMessage());
            }

            $l_dao->get_result()
                ->requery();

            if ($l_saveval > 0) {
                // Save_element() has set a new level->ID assignment.
                $l_actproc->result_push([
                    $l_newlevel,
                    $l_saveval
                ]);
                $l_logbook_do = true;
            } else {
                if ($l_saveval < 0) {
                    // Errors found.
                    throw new isys_exception_cmdb("Could not save category entry (" . $l_class . "->save_element())" . " - return code is " . $l_saveval,
                        C__CMDB__ERROR__ACTION_PROCESSOR);
                } else {
                    // Standard save.
                    $l_actproc->result_push(null);
                    $l_logbook_do = true;
                }
            }

            if ($l_logbook_do && is_countable($l_changed) && count($l_changed) && $_GET[C__CMDB__GET__CATG] != defined_or_default('C__CATG__LOGBOOK')) {
                // Removes lock of the dataset.
                if ($this->m_dao_lock) {
                    $this->m_dao_lock->delete_by_object_id($l_gets[C__CMDB__GET__OBJECT]);
                }

                if ($_GET[C__CMDB__GET__CATG] != defined_or_default('C__CATG__OVERVIEW')) {
                    /**
                     * -----------------------------------------------------------------------------------
                     * Create the logbook entry after object change
                     * -----------------------------------------------------------------------------------
                     */
                    if ($l_category_with_suffix && is_array($l_changed_compressed)) {
                        if (is_array($l_changed_compressed)) {
                            foreach ($l_changed_compressed AS $l_changed_compressed_child) {
                                $l_dao->logbook_update($l_strConstEvent, $l_category, $l_changed_compressed_child);
                            }
                        }
                    } else {
                        $l_dao->logbook_update($l_strConstEvent, $l_category, $l_changed_compressed);
                    }
                }
            }

            return true;
        } else {
            // Overview error handler.
            if (method_exists($l_dao, "get_invalid_classes")) {
                $l_invalid = "errors occured in: <strong>" . str_replace("isys_cmdb_dao_category_", "", $l_dao->get_invalid_classes()) . "</strong>";
            } else {
                $l_invalid = isys_format_json::encode($l_dao->get_additional_rules());
            }

            // Maybe we should process the gui now.
            $l_mod_event_manager->triggerCMDBEvent($l_strConstEvent . "__NOT", $l_invalid, $l_gets[C__CMDB__GET__OBJECT], $l_gets[C__CMDB__GET__OBJECTTYPE], $l_category);

            // C__CMDB__ERROR__ACTION_CATEGORY_UPDATE for form error.
            $l_actproc->result_push(-C__CMDB__ERROR__ACTION_CATEGORY_UPDATE);

            // Switch navmode back to edit so that edit controls are enabled again.
            $g_navmode = $_POST[C__GET__NAVMODE] = C__NAVMODE__EDIT;

            // If ever necessary, we can assign the complete property information to the template a few lines below :)
            isys_application::instance()->template->assign('validation_errors', $l_dao->get_additional_rules());

            // Throw exception only if update is triggered via ajax
            if ($l_gets[C__GET__AJAX] && isset($l_gets[C__GET__AJAX_CALL])) {
                $l_messages = [];

                foreach ($l_dao->get_additional_rules() as $l_attribute_constant => $l_data) {
                    $l_property = $l_data['title'];

                    if (empty($l_property)) {
                        $l_property = $l_dao->get_property_by_ui_id($l_attribute_constant);

                        if ($l_property === false) {
                            $l_property = 'LC__CMDB__CATG__ATTRIBUTE';
                        } else {
                            $l_property = current($l_property);

                            $l_property = $l_property[C__PROPERTY__INFO][C__PROPERTY__INFO__TITLE];
                        }
                    }

                    $l_messages[] = '<br /><strong>' . isys_application::instance()->container->get('language')
                            ->get($l_property) . '</strong> - ' . $l_data['message'];
                }

                // This will trigger the "Notify" box.
                throw new Exception(isys_application::instance()->container->get('language')
                        ->get('LC__VALIDATION_ERROR') . ' ' . implode('', $l_messages));
            } else {
                isys_application::instance()->container['notify']->error(isys_application::instance()->container->get('language')
                    ->get('LC__VALIDATION_ERROR'));
            }
        }

        return null;
    }

    /**
     * Format the users changes by processing the _SM2_FORM data and compare them with the post array.
     *
     * @param   array         $p_posts
     * @param   isys_cmdb_dao $p_dao
     * @param   bool          $p_filter
     *
     * @return  array
     * @author  Dennis Stuecken <dstuecken@i-doit.de>
     */
    public function format_changes($p_posts, &$p_dao, $p_filter = false)
    {
        global $g_SM2_FORM;

        $l_changed = [];

        if (is_array($g_SM2_FORM) && is_array($p_posts) && is_a($p_dao, 'isys_cmdb_dao_category')) {
            $l_class = get_class($p_dao);
            $l_sm2 = $g_SM2_FORM;

            if (isset($p_posts['C__CONTACT__PERSON_PASSWORD'])) {
                $p_posts['C__CONTACT__PERSON_PASSWORD'] = md5($p_posts['C__CONTACT__PERSON_PASSWORD']);
            }

            if (is_array($p_posts['g_cat_custom_id'])) {
                $l_cat_class = 'isys_cmdb_dao_category_g_custom_fields';
                if (class_exists($l_cat_class)) {
                    /**
                     * @var $l_dao isys_cmdb_dao_category_g_custom_fields
                     */
                    $l_dao = new $l_cat_class($p_dao->get_database_component());
                    if (!isset(self::$m_infocache['g_custom_id'])) {
                        foreach ($p_posts['g_cat_custom_id'] AS $l_custom_id) {
                            if (method_exists($l_dao, 'set_catg_custom_id')) {
                                $l_dao->set_catg_custom_id($l_custom_id);
                                $l_data_information = $l_dao->get_properties();
                                if (is_array($l_data_information)) {
                                    foreach ($l_data_information as $l_tag => $l_info) {
                                        if ($l_tag == 'description' && !empty($p_posts[$l_info[C__PROPERTY__UI][C__PROPERTY__UI__ID]])) {
                                            $l_info[C__PROPERTY__UI][C__PROPERTY__UI__DEFAULT] = '<br>';
                                        } else {
                                            $l_info[C__PROPERTY__UI][C__PROPERTY__UI__ID] = 'C__CATG__CUSTOM__' . substr($l_tag, strpos($l_tag, '_c_') + 1, strlen($l_tag));
                                        }

                                        self::$m_infocache['g_custom_id'][$l_info[C__PROPERTY__UI][C__PROPERTY__UI__ID]] = [
                                            'dao'       => $l_cat_class,
                                            'tag'       => $l_tag,
                                            'default'   => $l_info[C__PROPERTY__UI][C__PROPERTY__UI__DEFAULT],
                                            'custom_id' => $l_custom_id
                                        ];
                                    }
                                }
                                $l_dao->unset_properties();
                            }
                        }
                    }
                }
            }

            if (is_array($p_posts['g_cat_id'])) {
                if (!isset(self::$m_infocache['g_cat_id'])) {
                    foreach ($p_posts['g_cat_id'] as $l_catg_id) {
                        $l_catgdata = $p_dao->get_isysgui('isysgui_catg', $l_catg_id)
                            ->__to_array();
                        $l_cat_class = $l_catgdata['isysgui_catg__class_name'];
                        if (class_exists($l_cat_class)) {
                            $l_dao = new $l_cat_class($p_dao->get_database_component());
                            $l_data_information = $l_dao->get_properties();
                            foreach ($l_data_information as $l_tag => $l_info) {
                                if ($l_tag == 'description' && !empty($p_posts[$l_info[C__PROPERTY__UI][C__PROPERTY__UI__ID]])) {
                                    $l_info[C__PROPERTY__UI][C__PROPERTY__UI__DEFAULT] = '<br>';
                                }

                                self::$m_infocache['g_cat_id'][$l_info[C__PROPERTY__UI][C__PROPERTY__UI__ID]] = [
                                    'dao'     => $l_cat_class,
                                    'tag'     => $l_tag,
                                    'default' => $l_info[C__PROPERTY__UI][C__PROPERTY__UI__DEFAULT]
                                ];
                            }
                        }
                    }
                }
            }
            if (is_array($p_posts['g_cats_id'])) {
                if (!isset(self::$m_infocache['g_cats_id'])) {
                    foreach ($p_posts['g_cats_id'] AS $l_cats_id) {
                        $l_catsdata = $p_dao->get_isysgui('isysgui_cats', $l_cats_id)
                            ->__to_array();
                        $l_cat_class = $l_catsdata['isysgui_cats__class_name'];
                        if (class_exists($l_cat_class)) {
                            $l_dao = new $l_cat_class($p_dao->get_database_component());
                            $l_data_information = $l_dao->get_properties();
                            if (is_array($l_data_information)) {
                                foreach ($l_data_information as $l_tag => $l_info) {
                                    if ($l_tag == 'description' && !empty($p_posts[$l_info[C__PROPERTY__UI][C__PROPERTY__UI__ID]])) {
                                        $l_info[C__PROPERTY__UI][C__PROPERTY__UI__DEFAULT] = '<br>';
                                    }

                                    self::$m_infocache['g_cats_id'][$l_info[C__PROPERTY__UI][C__PROPERTY__UI__ID]] = [
                                        'dao'     => $l_cat_class,
                                        'tag'     => $l_tag,
                                        'default' => $l_info[C__PROPERTY__UI][C__PROPERTY__UI__DEFAULT]
                                    ];
                                }
                            }
                        }
                    }
                }
            }

            foreach ($this->m_sm2_skip as $l_skip) {
                unset($l_sm2[$l_skip]);
            }

            foreach ($l_sm2 as $l_key => $l_value) {
                $l_view = false;
                $l_key_additional = '';
                $l_infocache = [];

                if (isset(self::$m_infocache['g_cats_id'][$l_key])) {
                    $l_infocache = self::$m_infocache['g_cats_id'];
                } elseif (isset(self::$m_infocache['g_cat_id'][$l_key])) {
                    $l_infocache = self::$m_infocache['g_cat_id'];
                } elseif (isset(self::$m_infocache['g_custom_id'][$l_key])) {
                    $l_infocache = self::$m_infocache['g_custom_id'];
                }

                if (isset($l_infocache[$l_key]['dao'])) {
                    if ($p_filter) {
                        if (method_exists($p_dao, 'get_catg_custom_id') && isset($l_infocache[$l_key]['custom_id'])) {
                            if ($l_infocache[$l_key]['custom_id'] != $p_dao->get_catg_custom_id()) {
                                continue;
                            }
                        }
                        if ($l_infocache[$l_key]['dao'] != $l_class) {
                            continue;
                        }
                    }
                }

                // Get identification from data information
                if (isset($l_infocache[$l_key])) {
                    $l_ident = $l_infocache[$l_key]['dao'] . '::' . $l_infocache[$l_key]['tag'];

                    // Special case for custom categories
                    if (isset($l_infocache[$l_key]['custom_id'])) {
                        $l_ident .= '::' . $l_infocache[$l_key]['custom_id'];
                    }

                    $l_default_value = trim((String)$l_infocache[$l_key]['default']);
                    $l_category_changes_key = $l_infocache[$l_key]['dao'];
                } else {
                    // Special case for custom categories
                    if (isset($p_posts['catg_custom_id'])) {
                        $l_tag = str_replace('C__CATG__CUSTOM__', '', $l_key);
                        $l_type = $l_value['type'];
                        $l_ident = 'isys_cmdb_dao_category_g_custom_fields::' . $l_type . '_' . $l_tag . '::' . $p_posts['catg_custom_id'];
                    } else {
                        $l_ident = $l_key;
                    }
                    $l_default_value = '';
                    $l_category_changes_key = 'changes';
                }

                if (!isset($l_category_changes[$l_category_changes_key])) {
                    $l_category_changes[$l_category_changes_key] = 0;
                }

                // Swtich changes
                if (isset($l_value["type"])) {
                    switch ($l_value["type"]) {
                        case "f_count":
                        case "f_wysiwyg":
                        case "f_text":
                        case "f_link":
                        case "f_textarea":
                        case "f_money_number":

                            if (isset($p_posts[$l_key]) && trim($p_posts[$l_key]) != trim($l_value['p_strValue'])) {
                                $l_view = $p_posts[$l_key];
                            }

                            break;

                        case "f_popup":
                        case "f_autotext":
                        case "f_dialog":

                            // If type is dialog or dialog_plus, try to get the "real" value from dialog table.
                            if ($l_value["type"] == "f_dialog" || ((isset($l_value["p_strPopupType"])) && $l_value["p_strPopupType"] == "dialog_plus")) {
                                // @see ID-5534 Do not consider empty values and `-1` values
                                if (isset($p_posts[$l_key]) && (!empty($p_posts[$l_key]) && !($l_value['p_strSelectedID'] === '-1' && $p_posts[$l_key] === '-1'))) {
                                    if (isset($l_value["p_strTable"]) && $l_value["p_strTable"]) {
                                        $l_dialog = new isys_smarty_plugin_f_dialog();
                                        $l_data = $l_dialog->get_array_data($l_value["p_strTable"], C__RECORD_STATUS__NORMAL, $l_value["order"], $l_value["condition"]);

                                        $l_value["p_strValue"] = isys_application::instance()->container->get('language')
                                            ->get($l_data[$l_value["p_strSelectedID"]]);

                                        if (isset($p_posts[$l_key])) {
                                            if (is_array($p_posts[$l_key])) {
                                                $l_view = [];

                                                foreach ($p_posts[$l_key] as $l_post) {
                                                    $l_view[] = isys_application::instance()->container->get('language')
                                                        ->get($l_data[$l_post]);
                                                }

                                                $l_view = implode(', ', $l_view);
                                            } else {
                                                $l_view = isys_application::instance()->container->get('language')
                                                    ->get($l_data[$p_posts[$l_key]]);
                                            }
                                        }
                                    } else {
                                        if (isset($l_value["p_arData"])) {
                                            $l_tmp = unserialize($l_value["p_arData"]);
                                            $l_value["p_strValue"] = $l_tmp[$l_value["p_strSelectedID"]];
                                            $l_view = $l_tmp[$p_posts[$l_key]];

                                            // @see ID-5632 Try to translate values which was provided via `p_arData`
                                            $l_view = isys_application::instance()->container->get('language')->get($l_view);
                                            $l_value['p_strValue'] = isys_application::instance()->container->get('language')->get($l_value['p_strValue']);
                                        } else {
                                            $l_view = $p_posts[$l_key];
                                        }
                                    }
                                }
                            } else {
                                if (isset($p_posts[$l_key . "__HIDDEN"])) {
                                    // @todo fix this calendar workaround
                                    if ($l_value["p_strPopupType"] == "calendar") {
                                        $p_posts[$l_key] = $p_posts[$l_key . "__HIDDEN"];

                                        $l_value["p_strValue"] = str_replace("00:00:00", "", $l_value["p_strValue"]);
                                        $p_posts[$l_key] = str_replace("00:00:00", "", $p_posts[$l_key]);
                                    } else if ($l_value["p_strPopupType"] == "browser_object_ng") {
                                        // If we have a json array we can iterate through the elements and retrieve their title
                                        if (isys_format_json::is_json_array($p_posts[$l_key . '__HIDDEN'])) {
                                            $p_posts[$l_key . "__VIEW"] = $p_posts[$l_key . '__HIDDEN'];
                                        }

                                        if (isset($p_posts[$l_key . "__VIEW"])) {
                                            $p_posts[$l_key] = $p_posts[$l_key . "__HIDDEN"];
                                        }
                                    } elseif (in_array($l_value["p_strPopupType"], ["browser_location"]) && $p_posts[$l_key . "__HIDDEN"]) {
                                        // special handling for location - the string comparsion should be done according to id in the getChange
                                        $l_view = $p_posts[$l_key . "__HIDDEN"];
                                        break;
                                    }

                                    $l_key_additional = '__HIDDEN';
                                    // @todo this does not work with the object browser (multi selection)
                                    // Set view string
                                    $l_view = (isset($p_posts[$l_key . "__VIEW"]) && $p_posts[$l_key . "__VIEW"]) ? $p_posts[$l_key . "__VIEW"] : $p_posts[$l_key];
                                }
                            }
                            break;
                        case 'f_dialog_list':

                            if (isset($p_posts[$l_key . '__selected_box'])) {
                                if (isset($l_value['p_arData']) && $l_value['p_arData'] !== '') {
                                    $l_selection = $p_posts[$l_key . '__selected_box'];
                                    $l_arData = unserialize($l_value['p_arData']);
                                    if (is_array($l_arData)) {
                                        $l_view = [];
                                        foreach ($l_arData AS $l_data) {
                                            // To data
                                            if (in_array($l_data['id'], $l_selection)) {
                                                $l_view[] = $l_data['val'];
                                            }
                                        }
                                        ksort($l_view);
                                        $l_view = implode(',', $l_view);
                                    }
                                }
                            }
                            break;
                    }

                    if ($l_view !== false) {
                        if (is_null($l_view)) {
                            $l_view = '';
                        }
                        if (is_scalar($l_view)) {

                            if (($l_tmp = $this->get_change($l_view, $l_value))) {
                                list($l_dao_tmp, $l_prop_key) = explode('::', $l_ident);

                                if ($l_category_changes[$l_category_changes_key] == 0 && isset($p_posts[$l_key . $l_key_additional]) && $l_value['p_strValue'] == '' &&
                                    ($l_value['p_strSelectedID'] == '' || $l_value['p_strSelectedID'] == '-1')) {
                                    if (is_string($p_posts[$l_key . $l_key_additional]) && trim($p_posts[$l_key . $l_key_additional]) == $l_default_value) {
                                        continue;
                                    }
                                }

                                isys_cmdb_dao::set_changed_prop($l_dao_tmp, $l_prop_key);
                                $l_changed[$l_ident] = $l_tmp;
                                $l_category_changes[$l_category_changes_key]++;
                            }
                        } else {
                            /**
                             * logging to error tracker that value $l_view (post field $l_ident) was not from scalar type
                             *
                             * @todo fix values that are of non scalar type!
                             */
                            //isys_module_error_tracker::tracker()->message('l_view is not from scalar type in ' . __CLASS__, 'error', ['l_view' => $l_view, 'changes' => $l_changed, 'posts' => $p_posts]);
                            //isys_application::instance()->logger->addWarning('l_view is not from scalar type in ' . __CLASS__, ['l_view' => $l_view, 'changes' => $l_changed, 'posts' => $p_posts]);
                        }
                    }
                } else {
                    // SM2 type is not set
                }
            }
        } else {
            // Wrong parameters given, either SM2 or Post is not an array.
        }

        return $l_changed;
    }
}
