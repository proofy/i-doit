<?php

/**
 * i-doit
 *
 * DAO for logbook archiving
 *
 * @package    i-doit
 * @subpackage Components
 * @author     Dennis Bluemer <dbluemer@synetics.de>
 * @version    Dennis Stücken <dstuecken@synetics.de>
 * @copyright  synetics GmbH
 * @license    http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_component_dao_archive extends isys_component_dao_logbook
{

    /**
     * @var bool
     */
    private $m_profile = false;

    /**
     * @var int
     */
    private $nLimit = 0;

    /**
     * @var int
     */
    private $nStart = 0;

    /**
     * @param    isys_component_dao_logbook $p_daoLogbook
     * @param                               $p_fromDate
     * @param null                          $p_interval
     * @param bool                          $p_ownDatabase
     *
     * @return int
     * @throws Exception
     */
    public function archive($p_daoLogbook, $p_fromDate, $p_interval = null, $p_ownDatabase = true)
    {
        try {
            if ($this->m_profile && function_exists('verbose')) {
                verbose('Creating necessary tables (' . (memory_get_usage(true) / 1024 / 1024) . ' mb memory usage)');
            }

            $this->createTables();
            $this->fillTables($p_daoLogbook);

            if ($this->m_profile && function_exists('verbose')) {
                verbose('Moving to archive (' . (memory_get_usage(true) / 1024 / 1024) . ' mb memory usage)');
            }

            $this->synchronizeArchive($p_daoLogbook, $p_ownDatabase, $p_interval);

            if ($this->m_profile && function_exists('verbose')) {
                verbose('Deleting old entries (' . (memory_get_usage(true) / 1024 / 1024) . ' mb memory usage)');
            }

            $deletedRecords = $this->deleteOldData($p_daoLogbook, $p_interval);

            if ($this->m_profile && function_exists('verbose')) {
                verbose('Done (' . (memory_get_usage(true) / 1024 / 1024) . ' mb memory usage)');
            }

            return $deletedRecords;
        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
    }

    /**
     * @param string $p_value
     *
     * @return string
     */
    public function convert_sql_text($p_value)
    {
        /**
         * @todo Can we remove this
         */
        return '\'' . str_replace([
                "\\",
                "\x00",
                "\n",
                "\r",
                "'",
                '"',
                "\x1a"
            ], [
                "\\\\",
                "\\0",
                "\\n",
                "\\r",
                "\\'",
                '\"',
                "\\Z"
            ], strval($p_value)) . '\'';
    }

    /**
     * @param isys_component_dao_logbook $p_daoLogbook
     * @param                            $p_fromDate
     * @param                            $p_interval
     * @param bool                       $p_ownDatabase
     *
     * @throws isys_exception_dao
     */
    public function restore($p_daoLogbook, $p_fromDate, $p_interval, $p_ownDatabase = true)
    {
        $p_daoLogbook->begin_update();
        $p_daoLogbook->update("SET FOREIGN_KEY_CHECKS=0;");

        try {
            if ($p_ownDatabase) {
                // Do an INSERT INTO SELECT if restore is processed on own database

                $p_daoLogbook->update('INSERT IGNORE INTO isys_logbook
                      (
                        isys_logbook__id, 
                        isys_logbook__isys_obj__id, 
                        isys_logbook__isys_logbook_event__id, 
                        isys_logbook__isys_logbook_level__id, 
                        isys_logbook__isys_logbook_source__id, 
                        isys_logbook__title, 
                        isys_logbook__description, 
                        isys_logbook__comment, 
                        isys_logbook__changes, 
                        isys_logbook__date,
                        isys_logbook__status, 
                        isys_logbook__property,
                        isys_logbook__user_name_static, 
                        isys_logbook__event_static, 
                        isys_logbook__obj_name_static, 
                        isys_logbook__category_static, 
                        isys_logbook__entry_identifier_static,  
                        isys_logbook__obj_type_static,
                        isys_logbook__isys_logbook_reason__id,
                        isys_logbook__changecount
                      ) ' .
                    '(SELECT 
                        isys_logbook__id, 
                        isys_logbook__isys_obj__id, 
                        isys_logbook__isys_logbook_event__id, 
                        isys_logbook__isys_logbook_level__id, 
                        isys_logbook__isys_logbook_source__id, 
                        isys_logbook__title, 
                        isys_logbook__description, 
                        isys_logbook__comment, 
                        isys_logbook__changes, 
                        isys_logbook__date,
                        isys_logbook__status, 
                        isys_logbook__property,
                        isys_logbook__user_name_static, 
                        isys_logbook__event_static, 
                        isys_logbook__obj_name_static, 
                        isys_logbook__category_static, 
                        isys_logbook__entry_identifier_static,  
                        isys_logbook__obj_type_static,
                        isys_logbook__isys_logbook_reason__id,
                        isys_logbook__changecount
                    FROM isys_archive_logbook
                    WHERE isys_logbook__date < ' . $this->convert_sql_datetime($p_fromDate) . ' ORDER BY isys_logbook__id ASC);');

                $p_daoLogbook->update('INSERT
                IGNORE INTO isys_catg_logb_list (
                            isys_catg_logb_list__id,
                            isys_catg_logb_list__isys_logbook__id,
                            isys_catg_logb_list__status,
                            isys_catg_logb_list__property,
                            isys_catg_logb_list__title,
                            isys_catg_logb_list__description,
                            isys_catg_logb_list__isys_obj__id
                )
                (SELECT 
                            isys_catg_logb_list__id,
                            isys_catg_logb_list__isys_logbook__id,
                            isys_catg_logb_list__status,
                            isys_catg_logb_list__property,
                            isys_catg_logb_list__title,
                            isys_catg_logb_list__description,
                            isys_catg_logb_list__isys_obj__id
                FROM isys_archive_catg_logb_list
                LEFT JOIN isys_archive_logbook ON isys_logbook__id = isys_catg_logb_list__isys_logbook__id
                WHERE isys_logbook__date < ' . $this->convert_sql_datetime($p_fromDate) . '
                ORDER BY isys_logbook__id ASC)');
            } else {
                $l_entries = $this->get_data($p_interval);

                if ($l_entries->num_rows() == 0) {
                    throw new Exception("Nothing to restore");
                }

                while ($l_entry = $l_entries->get_row()) {
                    // We need some increased memory limits if the restore is taking place on a foreign database

                    $l_update = 'INSERT IGNORE INTO isys_logbook SET
                    isys_logbook__id                        =   ' . $l_entry["isys_logbook__id"] . ',
                    isys_logbook__isys_obj__id              =   ' . ($l_entry["isys_logbook__isys_obj__id"] ? $l_entry["isys_logbook__isys_obj__id"] : 'NULL') . ', 
                    isys_logbook__title                     =   ' . ($l_entry["isys_logbook__title"] ? $l_entry["isys_logbook__title"] : 'NULL') . ', 
                    isys_logbook__isys_logbook_level__id    =   ' . ($l_entry["isys_logbook__isys_logbook_level__id"] ? $l_entry["isys_logbook__isys_logbook_level__id"] : 'NULL') . ', 
                    isys_logbook__isys_logbook_source__id   =   ' . ($l_entry["isys_logbook__isys_logbook_source__id"] ? $l_entry["isys_logbook__isys_logbook_source__id"] : 'NULL') . ',
                    isys_logbook__isys_logbook_event__id    =   ' . ($l_entry["isys_logbook__isys_logbook_event__id"] ? $l_entry["isys_logbook__isys_logbook_event__id"] : 'NULL') . ',
                    isys_logbook__isys_logbook_reason__id   =   ' . ($l_entry["isys_logbook__isys_logbook_reason__id"] ? $l_entry["isys_logbook__isys_logbook_reason__id"] : 'NULL') . ',
                    isys_logbook__description               =   ' . $this->convert_sql_text($l_entry["isys_logbook__description"]) . ', 
                    isys_logbook__comment                   =   ' . $this->convert_sql_text($l_entry["isys_logbook__comment"]) . ',
                    isys_logbook__changes                   =   ' . $this->convert_sql_text($l_entry["isys_logbook__changes"]) . ', 
                    isys_logbook__date                      =   ' . $this->convert_sql_text($l_entry["isys_logbook__date"]) . ',
                    isys_logbook__user_name_static          =   ' . $this->convert_sql_text($l_entry["isys_logbook__user_name_static"]) . ',
                    isys_logbook__event_static              =   ' . $this->convert_sql_text($l_entry["isys_logbook__event_static"]) . ', 
                    isys_logbook__obj_name_static           =   ' . $this->convert_sql_text($l_entry["isys_logbook__obj_name_static"]) . ',
                    isys_logbook__category_static           =   ' . $this->convert_sql_text($l_entry["isys_logbook__category_static"]) . ',
                    isys_logbook__obj_type_static           =   ' . $this->convert_sql_text($l_entry["isys_logbook__obj_type_static"]) . ',
                    isys_logbook__entry_identifier_static   =   ' . $this->convert_sql_text($l_entry["isys_logbook__entry_identifier_static"]) . ',
                    isys_logbook__status                    =   ' . ($l_entry["isys_logbook__status"] ? $l_entry["isys_logbook__status"] : null) . ',
                    isys_logbook__changecount               =   ' . ((int)$l_entry["isys_logbook__changecount"]);

                    if (!$p_daoLogbook->update($l_update)) {
                        throw new Exception("Error executing: " . $l_update);
                    }

                    if ($l_entry["isys_catg_logb_list__id"] != "") {
                        $l_update = "INSERT IGNORE INTO isys_catg_logb_list(
                                isys_catg_logb_list__id,
                                isys_catg_logb_list__isys_logbook__id,
                                isys_catg_logb_list__status,
                                isys_catg_logb_list__property,
                                isys_catg_logb_list__title,
                                isys_catg_logb_list__description,
                                isys_catg_logb_list__isys_obj__id
                            )
                            VALUES(" .
                            $l_entry["isys_catg_logb_list__id"] . ", " .
                            $l_entry["isys_logbook__id"] . ", " .
                            ($l_entry["isys_catg_logb_list__status"] ? $l_entry["isys_catg_logb_list__status"] : 'NULL') . ", " .
                            ($l_entry["isys_catg_logb_list__property"] ? $l_entry["isys_catg_logb_list__property"] : 'NULL') . ", " .
                            $this->convert_sql_text($l_entry["isys_catg_logb_list__title"]) . ", " .
                            $this->convert_sql_text($l_entry["isys_catg_logb_list__description"]) . ", " .
                            ($l_entry["isys_catg_logb_list__isys_obj__id"] ? $l_entry["isys_catg_logb_list__isys_obj__id"] : 'NULL') .
                            ")";

                        if (!$p_daoLogbook->update($l_update)) {
                            throw new Exception("Error executing: " . $l_update);
                        }
                    }

                    unset($l_update, $l_entry);
                }
            }
        } catch (Exception $e) {
            $p_daoLogbook->cancel_update();
            throw new Exception("Failed restoring: " . $e->getMessage());
        }

        $p_daoLogbook->apply_update();
    }

    /**
     * @param $p_entry
     *
     * @return string
     */
    private function convertEntry($p_entry)
    {
        if ($p_entry == null) {
            return ('NULL');
        } else {
            return ("'" . isys_application::instance()->database->escape_string($p_entry) . "'");
        }
    }

    /**
     * @param   isys_component_dao_logbook $p_daoLogbook
     * @param bool                         $p_ownDatabase
     * @param int                          $p_interval
     *
     * @return int
     * @throws Exception
     */
    private function synchronizeArchive($p_daoLogbook, $p_ownDatabase = true, $p_interval = 90)
    {
        $p_fromDate = date('Y-m-d', strtotime('-' . $p_interval . ' days'));

        $this->begin_update();

        try {
            $archivedRecords = 0;

            if ($p_ownDatabase) {
                // Do an INSERT INTO SELECT if restore is processed on own database

                $update = $p_daoLogbook->update('INSERT IGNORE INTO isys_archive_logbook (
                        isys_logbook__id, 
                        isys_logbook__isys_obj__id, 
                        isys_logbook__isys_logbook_event__id, 
                        isys_logbook__isys_logbook_level__id, 
                        isys_logbook__isys_logbook_source__id, 
                        isys_logbook__title, 
                        isys_logbook__description, 
                        isys_logbook__comment, 
                        isys_logbook__changes, 
                        isys_logbook__date,
                        isys_logbook__status, 
                        isys_logbook__property,
                        isys_logbook__user_name_static, 
                        isys_logbook__event_static, 
                        isys_logbook__obj_name_static, 
                        isys_logbook__category_static, 
                        isys_logbook__entry_identifier_static,  
                        isys_logbook__obj_type_static,
                        isys_logbook__isys_logbook_reason__id,
                        isys_logbook__changecount
                     ) ' .
                    '(SELECT 
                        isys_logbook__id, 
                        isys_logbook__isys_obj__id, 
                        isys_logbook__isys_logbook_event__id, 
                        isys_logbook__isys_logbook_level__id, 
                        isys_logbook__isys_logbook_source__id, 
                        isys_logbook__title, 
                        isys_logbook__description, 
                        isys_logbook__comment, 
                        isys_logbook__changes, 
                        isys_logbook__date,
                        isys_logbook__status, 
                        isys_logbook__property,
                        isys_logbook__user_name_static, 
                        isys_logbook__event_static, 
                        isys_logbook__obj_name_static, 
                        isys_logbook__category_static, 
                        isys_logbook__entry_identifier_static,  
                        isys_logbook__obj_type_static,
                        isys_logbook__isys_logbook_reason__id,
                        isys_logbook__changecount
                    FROM isys_logbook 
                    WHERE isys_logbook__date < ' . $this->convert_sql_datetime($p_fromDate) . ' 
                    ORDER BY isys_logbook__id ASC);');
                if ($update) {
                    $archivedRecords = $p_daoLogbook->get_database_component()
                        ->affected_rows();
                }

                $insertLogbookCategory = 'INSERT
							IGNORE INTO isys_archive_catg_logb_list (
                                isys_catg_logb_list__id,
                                isys_catg_logb_list__isys_logbook__id,
                                isys_catg_logb_list__status,
                                isys_catg_logb_list__property,
                                isys_catg_logb_list__title,
                                isys_catg_logb_list__description,
                                isys_catg_logb_list__isys_obj__id
							)
							  (SELECT 
							    isys_catg_logb_list__id,
                                isys_catg_logb_list__isys_logbook__id,
                                isys_catg_logb_list__status,
                                isys_catg_logb_list__property,
                                isys_catg_logb_list__title,
                                isys_catg_logb_list__description,
                                isys_catg_logb_list__isys_obj__id
							   FROM isys_catg_logb_list
							   LEFT JOIN isys_logbook ON isys_logbook__id = isys_catg_logb_list__isys_logbook__id
							   WHERE isys_logbook__date < ' . $this->convert_sql_datetime($p_fromDate) . '
							   ORDER BY isys_logbook__id ASC)';

                if ($insertLogbookCategory) {
                    $p_daoLogbook->update($insertLogbookCategory);
                    $archivedRecords += $p_daoLogbook->get_database_component()
                        ->affected_rows();
                }
            } else {
                $l_entries = $p_daoLogbook->get_data($p_interval);

                while ($l_entry = $l_entries->get_row()) {
                    $archivedRecords++;

                    $l_update = 'INSERT IGNORE INTO isys_archive_logbook SET
                    isys_logbook__id                        =   ' . $l_entry["isys_logbook__id"] . ',
                    isys_logbook__isys_obj__id              =   ' . ($l_entry["isys_logbook__isys_obj__id"] ? $l_entry["isys_logbook__isys_obj__id"] : 'NULL') . ', 
                    isys_logbook__title                     =   ' . ($l_entry["isys_logbook__title"] ? $l_entry["isys_logbook__title"] : 'NULL') . ', 
                    isys_logbook__isys_logbook_level__id    =   ' . ($l_entry["isys_logbook__isys_logbook_level__id"] ? $l_entry["isys_logbook__isys_logbook_level__id"] : 'NULL') . ', 
                    isys_logbook__isys_logbook_source__id   =   ' . ($l_entry["isys_logbook__isys_logbook_source__id"] ? $l_entry["isys_logbook__isys_logbook_source__id"] : 'NULL') . ',
                    isys_logbook__isys_logbook_event__id    =   ' . ($l_entry["isys_logbook__isys_logbook_event__id"] ? $l_entry["isys_logbook__isys_logbook_event__id"] : 'NULL') . ',
                    isys_logbook__isys_logbook_reason__id   =   ' . ($l_entry["isys_logbook__isys_logbook_reason__id"] ? $l_entry["isys_logbook__isys_logbook_reason__id"] : 'NULL') . ',
                    isys_logbook__description               =   ' . $this->convert_sql_text($l_entry["isys_logbook__description"]) . ', 
                    isys_logbook__comment                   =   ' . $this->convert_sql_text($l_entry["isys_logbook__comment"]) . ',
                    isys_logbook__changes                   =   ' . $this->convert_sql_text($l_entry["isys_logbook__changes"]) . ', 
                    isys_logbook__date                      =   ' . $this->convert_sql_text($l_entry["isys_logbook__date"]) . ',
                    isys_logbook__user_name_static          =   ' . $this->convert_sql_text($l_entry["isys_logbook__user_name_static"]) . ',
                    isys_logbook__event_static              =   ' . $this->convert_sql_text($l_entry["isys_logbook__event_static"]) . ', 
                    isys_logbook__obj_name_static           =   ' . $this->convert_sql_text($l_entry["isys_logbook__obj_name_static"]) . ',
                    isys_logbook__category_static           =   ' . $this->convert_sql_text($l_entry["isys_logbook__category_static"]) . ',
                    isys_logbook__obj_type_static           =   ' . $this->convert_sql_text($l_entry["isys_logbook__obj_type_static"]) . ',
                    isys_logbook__entry_identifier_static   =   ' . $this->convert_sql_text($l_entry["isys_logbook__entry_identifier_static"]) . ',
                    isys_logbook__status                    =   ' . ($l_entry["isys_logbook__status"] ? $l_entry["isys_logbook__status"] : null) . ',
                    isys_logbook__changecount               =   ' . ((int)$l_entry["isys_logbook__changecount"]);

                    if (!$this->update($l_update)) {
                        throw new Exception("Error executing: " . $l_update);
                    }

                    if ($l_entry["isys_catg_logb_list__id"] != "") {
                        $l_update = "INSERT IGNORE INTO isys_archive_catg_logb_list(
                                isys_catg_logb_list__id,
                                isys_catg_logb_list__isys_logbook__id,
                                isys_catg_logb_list__status,
                                isys_catg_logb_list__property,
                                isys_catg_logb_list__title,
                                isys_catg_logb_list__description,
                                isys_catg_logb_list__isys_obj__id
                            )
                            VALUES(" .
                                $l_entry["isys_catg_logb_list__id"] . ", " .
                                $l_entry["isys_logbook__id"] . ", " .
                                ($l_entry["isys_catg_logb_list__status"] ? $l_entry["isys_catg_logb_list__status"] : 'NULL') . ", " .
                                ($l_entry["isys_catg_logb_list__property"] ? $l_entry["isys_catg_logb_list__property"] : 'NULL') . ", " .
                                $this->convert_sql_text($l_entry["isys_catg_logb_list__title"]) . ", " .
                                $this->convert_sql_text($l_entry["isys_catg_logb_list__description"]) . ", " .
                                ($l_entry["isys_catg_logb_list__isys_obj__id"] ? $l_entry["isys_catg_logb_list__isys_obj__id"] : 'NULL') .
                            ")";

                        if (!$this->update($l_update)) {
                            throw new Exception("Error executing: " . $l_update);
                        }
                        $archivedRecords++;
                    }

                    unset($l_update, $l_entry);
                }
                $l_entries->free_result();
            }
        } catch (Exception $e) {
            $this->cancel_update();
            throw new Exception("Failed synchronizing with archive: " . $e->getMessage());
        }
        $this->apply_update();

        return $archivedRecords;
    }

    /**
     * @param isys_component_dao_logbook $p_daoLogbook
     * @param int                        $p_interval
     *
     * @return mixed
     * @throws Exception
     */
    private function deleteOldData($p_daoLogbook, $p_interval)
    {
        try {
            if ($p_interval > 0) {
                $p_daoLogbook->begin_update();
                $p_daoLogbook->update("DELETE FROM isys_logbook WHERE isys_logbook__date < DATE_SUB(CURDATE(),INTERVAL " . $p_interval . " DAY);");
                $deletedRows = $p_daoLogbook->get_database_component()
                    ->affected_rows();
                $p_daoLogbook->apply_update();

                return $deletedRows;
            }
        } catch (Exception $e) {
            $p_daoLogbook->cancel_update();
            throw new Exception("Failed archiving: " . $e->getMessage());
        }
    }

    /**
     * @throws Exception
     * @throws isys_exception_dao
     * @throws isys_exception_database
     */
    private function createTables()
    {
        $this->begin_update();

        $l_update = "CREATE TABLE IF NOT EXISTS isys_archive_logbook (
					  isys_logbook__id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
					  isys_logbook__isys_person_extern__id INT(10) UNSIGNED DEFAULT NULL,
					  isys_logbook__isys_person_intern__id INT(10) UNSIGNED DEFAULT NULL,
					  isys_logbook__isys_logbook_level__id INT(10) UNSIGNED DEFAULT NULL,
					  isys_logbook__isys_logbook_source__id INT(10) UNSIGNED DEFAULT NULL,
					  isys_logbook__description TEXT COLLATE utf8_unicode_ci,
					  isys_logbook__date DATETIME DEFAULT NULL,
					  isys_logbook__user_name_static VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  isys_logbook__event_static VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL,
					  isys_logbook__obj_name_static VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  isys_logbook__category_static VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  isys_logbook__obj_type_static VARCHAR(255) COLLATE utf8_unicode_ci NULL,
					  isys_logbook__status INT(10) UNSIGNED DEFAULT '1',
					  isys_logbook__property INT(10) UNSIGNED DEFAULT '0',
					  isys_logbook__changecount INT(10) UNSIGNED DEFAULT '0',
					  PRIMARY KEY  (isys_logbook__id),
					  KEY isys_logbook_FKIndex1 (isys_logbook__isys_person_intern__id),
					  KEY isys_logbook_FKIndex2 (isys_logbook__isys_logbook_source__id),
					  KEY isys_logbook_FKIndex3 (isys_logbook__isys_logbook_level__id),
					  KEY isys_logbook_FKIndex4 (isys_logbook__isys_person_extern__id)
					) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;";
        if (!$this->update($l_update)) {
            throw new Exception("Error creating isys_archive_logbook");
        }

        $l_update = "CREATE TABLE IF NOT EXISTS isys_archive_catg_logb_list (
					  isys_catg_logb_list__id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
					  isys_catg_logb_list__isys_obj__id INT(10) UNSIGNED NOT NULL DEFAULT '0',
					  isys_catg_logb_list__isys_logbook__id INT(10) UNSIGNED NOT NULL DEFAULT '0',
					  isys_catg_logb_list__status INT(10) UNSIGNED DEFAULT '2',
					  isys_catg_logb_list__property INT(10) UNSIGNED DEFAULT '0',
					  isys_catg_logb_list__title VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  isys_catg_logb_list__description TEXT COLLATE utf8_unicode_ci,
					  PRIMARY KEY  (isys_catg_logb_list__id)
					) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;";

        if (!$this->update($l_update)) {
            throw new Exception("Error creating isys_archive_catg_logb_list");
        }

        $l_update = "CREATE TABLE IF NOT EXISTS isys_archive_logbook_level (
					  isys_logbook_level__id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
					  isys_logbook_level__title VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  isys_logbook_level__description TEXT COLLATE utf8_unicode_ci,
					  isys_logbook_level__const VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  isys_logbook_level__css VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  isys_logbook_level__sort INT(10) UNSIGNED DEFAULT NULL,
					  isys_logbook_level__property INT(10) UNSIGNED DEFAULT '0',
					  isys_logbook_level__status INT(10) UNSIGNED DEFAULT '1',
					  PRIMARY KEY  (isys_logbook_level__id)
					) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;";

        if (!$this->update($l_update)) {
            throw new Exception("Error creating isys_archive_logbook_level");
        }

        $l_update = "CREATE TABLE IF NOT EXISTS isys_archive_logbook_source (
					  isys_logbook_source__id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
					  isys_logbook_source__title VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  isys_logbook_source__description TEXT COLLATE utf8_unicode_ci,
					  isys_logbook_source__const VARCHAR(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  isys_logbook_source__property INT(10) UNSIGNED DEFAULT '0',
					  isys_logbook_source__status INT(10) UNSIGNED DEFAULT '1',
					  PRIMARY KEY  (isys_logbook_source__id)
					) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;";

        if (!$this->update($l_update)) {
            throw new Exception("Error creating isys_archive_logbook_level");
        }

        $l_update = "CREATE TABLE IF NOT EXISTS `isys_archive_logbook_event` (
                      `isys_logbook_event__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                      `isys_logbook_event__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                      `isys_logbook_event__description` text COLLATE utf8_unicode_ci,
                      `isys_logbook_event__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                      `isys_logbook_event__sort` int(10) unsigned DEFAULT NULL,
                      `isys_logbook_event__class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                      `isys_logbook_event__property` int(10) unsigned DEFAULT NULL,
                      `isys_logbook_event__status` int(10) unsigned DEFAULT NULL,
                      PRIMARY KEY (`isys_logbook_event__id`),
                      KEY `isys_logbook_event__title` (`isys_logbook_event__title`),
                      KEY `isys_logbook_event__const` (`isys_logbook_event__const`),
                      KEY `isys_logbook_event__status` (`isys_logbook_event__status`)
                    ) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

        if (!$this->update($l_update)) {
            throw new Exception("Error creating isys_archive_logbook_level");
        }

        $l_update = "CREATE TABLE IF NOT EXISTS `isys_archive_logbook_reason` (
                      `isys_logbook_reason__id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                      `isys_logbook_reason__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                      `isys_logbook_reason__description` text COLLATE utf8_unicode_ci,
                      `isys_logbook_reason__const` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                      `isys_logbook_reason__sort` int(10) unsigned DEFAULT '5',
                      `isys_logbook_reason__status` int(10) unsigned DEFAULT '2',
                      `isys_logbook_reason__property` int(10) unsigned DEFAULT '0',
                      PRIMARY KEY (`isys_logbook_reason__id`),
                      KEY `isys_logbook_reason__title` (`isys_logbook_reason__title`),
                      KEY `isys_logbook_reason__const` (`isys_logbook_reason__const`),
                      KEY `isys_logbook_reason__status` (`isys_logbook_reason__status`)
                    ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";

        if (!$this->update($l_update)) {
            throw new Exception("Error creating isys_archive_logbook_level");
        }


        $l_query = "SHOW COLUMNS FROM isys_archive_logbook WHERE Field = 'isys_logbook__changes'";
        $l_res = $this->retrieve($l_query);
        if ($l_res->num_rows() < 1) {
            $l_update = "ALTER TABLE isys_archive_logbook ADD isys_logbook__changes TEXT COLLATE utf8_unicode_ci AFTER isys_logbook__description";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding isys_logbook__changes");
            }
        }

        $l_query = "SHOW COLUMNS FROM isys_archive_logbook WHERE Field = 'isys_logbook__comment'";
        $l_res = $this->retrieve($l_query);
        if ($l_res->num_rows() < 1) {
            $l_update = "ALTER TABLE isys_archive_logbook ADD isys_logbook__comment TEXT COLLATE utf8_unicode_ci AFTER isys_logbook__description";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding isys_logbook__comment");
            }
        }

        $l_query = "SHOW COLUMNS FROM isys_archive_logbook WHERE Field = 'isys_logbook__isys_logbook_event__id'";
        $l_res = $this->retrieve($l_query);
        if ($l_res->num_rows() < 1) {
            $l_update = "ALTER TABLE isys_archive_logbook ADD isys_logbook__isys_logbook_event__id int(10) unsigned DEFAULT NULL AFTER isys_logbook__isys_logbook_source__id;";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding isys_logbook__isys_logbook_event__id");
            }
        }

        $l_query = "SHOW COLUMNS FROM isys_archive_logbook WHERE Field = 'isys_logbook__title'";
        $l_res = $this->retrieve($l_query);
        if ($l_res->num_rows() < 1) {
            $l_update = "ALTER TABLE isys_archive_logbook ADD `isys_logbook__title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL AFTER isys_logbook__isys_logbook_source__id;";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding isys_logbook__title");
            }
        }

        $l_query = "SHOW COLUMNS FROM isys_archive_logbook WHERE Field = 'isys_logbook__entry_identifier_static'";
        $l_res = $this->retrieve($l_query);
        if ($l_res->num_rows() < 1) {
            $l_update = "ALTER TABLE isys_archive_logbook ADD `isys_logbook__entry_identifier_static` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL AFTER isys_logbook__isys_logbook_source__id;";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding isys_logbook__entry_identifier_static");
            }
        }

        $l_query = "SHOW COLUMNS FROM isys_archive_logbook WHERE Field = 'isys_logbook__isys_logbook_reason__id'";
        $l_res = $this->retrieve($l_query);
        if ($l_res->num_rows() < 1) {
            $l_update = "ALTER TABLE isys_archive_logbook ADD isys_logbook__isys_logbook_reason__id int(10) unsigned DEFAULT NULL AFTER isys_logbook__isys_logbook_source__id;";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding isys_logbook__isys_logbook_reason__id");
            }
        }

        $l_query = "SHOW INDEX FROM isys_archive_catg_logb_list WHERE Column_name = 'isys_catg_logb_list__isys_logbook__id'";
        $l_res = $this->retrieve($l_query);
        if ($l_res->num_rows() < 1) {
            $l_update = "ALTER TABLE isys_archive_catg_logb_list ADD INDEX ( isys_catg_logb_list__isys_logbook__id )";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding index isys_archive_catg_logb_list");
            }
        }

        $l_query = "SHOW COLUMNS FROM isys_archive_logbook WHERE Field = 'isys_logbook__isys_obj__id'";
        $l_res = $this->retrieve($l_query);
        if ($l_res->num_rows() < 1) {
            $l_update = "ALTER TABLE isys_archive_logbook ADD isys_logbook__isys_obj__id INT(10) UNSIGNED DEFAULT NULL";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding isys_logbook__isys_obj__id");
            }

            $l_update = "ALTER TABLE isys_archive_logbook ADD INDEX ( isys_logbook__isys_obj__id )";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding index isys_logbook__isys_obj__id");
            }
        }

        $l_query = "SHOW COLUMNS FROM isys_archive_logbook WHERE Field = 'isys_logbook__changecount'";
        $l_res = $this->retrieve($l_query);
        if ($l_res->num_rows() < 1) {
            $l_update = "ALTER TABLE isys_archive_logbook ADD isys_logbook__changecount INT(10) UNSIGNED DEFAULT '0'";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding isys_logbook__changecount");
            }

            $l_update = "ALTER TABLE isys_archive_logbook ADD INDEX ( isys_logbook__changecount )";
            if (!$this->update($l_update)) {
                throw new Exception("Error adding index isys_logbook__changecount");
            }
        }

        $this->apply_update();
    }

    /**
     * @param isys_component_dao_logbook $p_daoLogbook
     *
     * @throws Exception
     * @throws isys_exception_dao
     */
    private function fillTables($p_daoLogbook)
    {
        $this->begin_update();

        $l_res = $p_daoLogbook->retrieve("SELECT * FROM isys_logbook_level");
        while ($l_row = $l_res->get_row()) {
            $l_update = "INSERT IGNORE INTO isys_archive_logbook_level VALUES(" . $this->convertEntry($l_row["isys_logbook_level__id"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_level__title"]) . ", " . $this->convertEntry($l_row["isys_logbook_level__description"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_level__const"]) . ", " . $this->convertEntry($l_row["isys_logbook_level__css"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_level__sort"]) . ", " . $this->convertEntry($l_row["isys_logbook_level__property"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_level__status"]) . ")";

            if (!$this->update($l_update)) {
                throw new Exception("Error execeuting: " . $l_update);
            }
        }

        $l_res = $p_daoLogbook->retrieve("SELECT * FROM isys_logbook_source");
        while ($l_row = $l_res->get_row()) {
            $l_update = "INSERT IGNORE INTO isys_archive_logbook_source VALUES(" . $this->convertEntry($l_row["isys_logbook_source__id"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_source__title"]) . ", " . $this->convertEntry($l_row["isys_logbook_source__description"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_source__const"]) . ", " . $this->convertEntry($l_row["isys_logbook_source__property"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_source__status"]) . ")";

            if (!$this->update($l_update)) {
                throw new Exception("Error execeuting: " . $l_update);
            }
        }

        $l_res = $p_daoLogbook->retrieve("SELECT * FROM isys_logbook_event");
        while ($l_row = $l_res->get_row()) {
            $l_update = "INSERT IGNORE INTO isys_archive_logbook_event VALUES(" .
                $this->convertEntry($l_row["isys_logbook_event__id"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_event__title"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_event__description"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_event__const"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_event__sort"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_event__class"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_event__property"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_source__status"]) . ")";

            if (!$this->update($l_update)) {
                throw new Exception("Error execeuting: " . $l_update);
            }
        }

        $l_res = $p_daoLogbook->retrieve("SELECT * FROM isys_logbook_reason");
        while ($l_row = $l_res->get_row()) {
            $l_update = "INSERT IGNORE INTO isys_archive_logbook_reason VALUES(" .
                $this->convertEntry($l_row["isys_logbook_reason__id"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_reason__title"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_reason__description"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_reason__const"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_reason__sort"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_reason__property"]) . ", " .
                $this->convertEntry($l_row["isys_logbook_reason__status"]) . ")";

            if (!$this->update($l_update)) {
                throw new Exception("Error execeuting: " . $l_update);
            }
        }

        $this->apply_update();
    }

    /**
     * Get table name
     *
     * @param $tableName
     *
     * @return mixed
     */
    public function getTableName($tableName)
    {
        // Replace first occurence of `isys` with `isys_archive`
        return substr_replace($tableName, 'isys_archive', 0, strlen('isys'));
    }
}
