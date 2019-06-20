<?php

/**
 * i-doit
 *
 * @package     i-doit
 * @subpackage  Components
 * @author      Dennis Stücken <dstuecken@i-doit.org>
 * @version     1.0
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_component_dao_lock extends isys_component_dao
{
    /**
     * This is a session specific check. Checks if the object_id is locked for the current user.
     * That means that if the lock was generated by the one who is checking, this method will return false. If it is locked by another person it will return true.
     *
     * @param   integer $p_object_id
     * @param   string  $p_session_id
     *
     * @return  boolean
     */
    public function check_lock($p_object_id, $p_session_id = null, $tableLabel = null, $tableName = null, $tableField = null, $fieldValue = null)
    {
        global $g_comp_session;

        if (is_null($p_session_id)) {
            $p_session_id = $g_comp_session->get_user_session_id();
        }

        if (defined("C__LOCK__DATASETS") && C__LOCK__DATASETS) {
            $l_lockdata = $this->get_lock($p_object_id, null, $tableLabel, $tableName, $tableField, $fieldValue);

            if ($l_lockdata->num_rows() > 0) {
                $l_lockdata = $l_lockdata->get_row();

                if ($l_lockdata["isys_lock__isys_user_session__id"] != $p_session_id) {
                    return $l_lockdata;
                }
            }
        }

        return false;
    }

    /**
     * Gets the current lock state of an object-id / session id combination. Session-id can be blank to check for all locks.
     * Hint: This is not the PHP Session ID but the isys_user_session__id.
     *
     * @param   integer $p_obj_id
     * @param   integer $p_session_id
     *
     * @return  isys_component_dao_result
     */
    public function get_lock($p_obj_id, $p_session_id = null, $tableLabel = null, $tableName = null, $tableField = null, $fieldValue = null)
    {
        global $g_comp_session;

        $p_obj_id = (int)$this->m_db->escape_string($p_obj_id);
        $l_my_session_id = $g_comp_session->get_user_session_id();

        $this->delete_expired_locks($p_obj_id, $p_session_id);

        $objectCondition = "(isys_lock__isys_obj__id = " . $this->convert_sql_id($p_obj_id);

        if ($this->convert_sql_id($p_obj_id) === "NULL") {
            $objectCondition = "(isys_lock__isys_obj__id IS NULL";
        }

        $l_sql = "SELECT * FROM isys_lock WHERE " . $objectCondition . ") AND " .
            "(isys_lock__isys_user_session__id != '{$l_my_session_id}')";

        if (!empty($p_session_id)) {
            $l_sql .= " AND (isys_lock__isys_user_session__id = " . $this->convert_sql_id($p_session_id) . ")";
        }

        if (!empty($tableLabel)) {
            $l_sql .= " AND (isys_lock__table_label = " . $this->convert_sql_text($tableLabel) . ")";
        }

        if (!empty($tableName)) {
            $l_sql .= " AND (isys_lock__table_name = " . $this->convert_sql_text($tableName) . ")";
        }

        if (!empty($tableField)) {
            $l_sql .= " AND (isys_lock__table_field = " . $this->convert_sql_text($tableField) . ")";
        }

        if (!empty($fieldValue)) {
            $l_sql .= " AND (isys_lock__field_value= " . $this->convert_sql_id($fieldValue) . ")";
        }

        return $this->retrieve($l_sql);
    }

    /**
     * Deletes expired locks. LOCK__TIMEOUT is setted in the i-doit regisry.
     *
     * @return  resource
     */
    public function delete_expired_locks()
    {
        if (defined('C__LOCK__TIMEOUT') && C__LOCK__TIMEOUT) {
            return $this->m_db->query('DELETE FROM isys_lock WHERE ' . $this->m_db->date_add('SECOND', C__LOCK__TIMEOUT, 'isys_lock__datetime') . ' < CURRENT_TIMESTAMP;');
        }
    }

    /**
     * @param  integer $p_obj_id
     * @param  integer $p_session_id
     *
     * @return isys_component_dao_result
     */
    public function get_lock_information($p_obj_id = null, $p_session_id = null, $tableLabel = null, $tableName = null, $tableField = null, $fieldValue = null)
    {
        $l_sql = 'SELECT *, isys_catg_mail_addresses_list__title AS isys_cats_person_list__mail_address FROM isys_lock
			INNER JOIN isys_user_session ON isys_user_session__id = isys_lock__isys_user_session__id
			INNER JOIN isys_cats_person_list ON isys_cats_person_list__isys_obj__id = isys_user_session__isys_obj__id
			LEFT JOIN isys_obj ON isys_obj__id = isys_lock__isys_obj__id
			LEFT JOIN isys_obj_type ON isys_obj__isys_obj_type__id = isys_obj_type__id
			LEFT JOIN isys_catg_mail_addresses_list ON isys_catg_mail_addresses_list__isys_obj__id = isys_obj__id AND isys_catg_mail_addresses_list__primary = 1
			WHERE TRUE';

        if (!empty($p_obj_id)) {
            $l_sql .= ' AND isys_lock__isys_obj__id = ' . $this->convert_sql_id($p_obj_id);
        }

        if (!empty($p_session_id)) {
            $l_sql .= ' AND isys_lock__isys_user_session__id = ' . $this->convert_sql_id($p_session_id);
        }

        if (!empty($tableLabel)) {
            $l_sql .= " AND (isys_lock__table_label = " . $this->convert_sql_text($tableLabel) . ")";
        }

        if (!empty($tableName)) {
            $l_sql .= " AND (isys_lock__table_name = " . $this->convert_sql_text($tableName) . ")";
        }

        if (!empty($tableField)) {
            $l_sql .= " AND (isys_lock__table_field = " . $this->convert_sql_text($tableField) . ")";
        }

        if (!empty($fieldValue)) {
            $l_sql .= " AND (isys_lock__field_value= " . $this->convert_sql_id($fieldValue) . ")";
        }

        // @See ID-4337
        // IFNULL for cases where isys_obj__id is null because of table data
        $l_sql .= ' AND isys_lock__id IN (SELECT MAX(isys_lock__id) FROM isys_lock GROUP BY IFNULL(isys_lock__isys_obj__id, isys_lock__id))';

        return $this->retrieve($l_sql . ';');
    }

    /**
     * @param   integer $p_obj_id
     * @param   integer $p_session_id
     *
     * @return  boolean
     */
    public function is_locked($p_obj_id, $p_session_id = null, $tableLabel = null, $tableName = null, $tableField = null, $fieldValue = null)
    {
        return (bool)$this->check_lock($p_obj_id, $p_session_id, $tableLabel, $tableName, $tableField, $fieldValue);
    }

    /**
     * @param   integer $p_obj_id
     *
     * @return  boolean
     */
    public function add_lock($p_obj_id, $tableLabel = null, $tableName = null, $tableField = null, $fieldValue = null)
    {
        global $g_comp_session;

        if (!$this->is_locked($p_obj_id)) {
            $l_session_data = $g_comp_session->get_session_data();
            $l_session_id = $l_session_data["isys_user_session__id"];

            $l_sql = "INSERT INTO isys_lock (isys_lock__isys_obj__id, isys_lock__isys_user_session__id, isys_lock__datetime, isys_lock__table_label, isys_lock__table_name, isys_lock__table_field, isys_lock__field_value) VALUES (" . $this->convert_sql_id($p_obj_id) .
                ", " . $this->convert_sql_id($l_session_id) . ", CURRENT_TIMESTAMP" . ", " . (!empty($tableLabel) ? "'$tableLabel'" : "NULL") . ", " . (!empty($tableName) ? "'$tableName'" : "NULL") . ", " .  (!empty($tableName) ? "'$tableField'" : "NULL") . ", " . (!empty($tableName) ? "$fieldValue" : "NULL") . ")";

            return $this->m_db->query($l_sql) && $this->m_db->commit();
        }

        return true;
    }

    /**
     * Deletes a lock by its primary id.
     *
     * @param   integer $p_lock_id
     *
     * @return  resource
     */
    public function delete($p_lock_id)
    {
        return $this->m_db->query("DELETE FROM isys_lock WHERE (isys_lock__id = " . $this->convert_sql_id($p_lock_id) . ");");
    }

    /**
     * Deletes locks by object id.
     *
     * @param   integer $p_obj_id
     *
     * @return  resource
     */
    public function delete_by_object_id($p_obj_id)
    {
        return $this->m_db->query("DELETE FROM isys_lock WHERE (isys_lock__isys_obj__id = " . $this->convert_sql_id($p_obj_id) . ");");
    }

    public function delete_by_table_data($tableName, $tableField, $fieldValue)
    {
        return $this->m_db->query("DELETE FROM isys_lock WHERE (isys_lock__table_name = " . $this->convert_sql_text($tableName) . ") AND (isys_lock__table_field = " . $this->convert_sql_text($tableField) . ") AND (isys_lock__field_value = " . $this->convert_sql_id($fieldValue) . ");");
    }

    /**
     * Constructor.
     *
     * @param  isys_component_database $p_database
     */
    public function __construct(isys_component_database &$p_database)
    {
        parent::__construct($p_database);
    }
}