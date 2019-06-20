<?php

/**
 * i-doit
 *
 * Cable connection DAO (UI, Port and FC-Port connections).
 *
 * @package     i-doit
 * @subpackage  CMDB_Low-Level_API
 * @version     1.0
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_dao_cable_connection extends isys_cmdb_dao
{
    /**
     * @var  array
     */
    protected static $m_last_counter = null;

    /**
     * Adds a new cable object and returns its ID.
     *
     * @param   string  $p_title
     * @param   integer $p_id
     *
     * @return  integer
     */
    public static function add_cable($p_title = null, $p_id = null)
    {
        $l_dao = isys_cmdb_dao::instance(isys_application::instance()->database);

        $title = isys_tenantsettings::get('cmdb.object.title.cable-prefix', '') . $p_title;

        if (mb_strlen($title) >= mb_strlen($p_title)) {
            $l_counter = (self::$m_last_counter === null) ? ($l_dao->retrieve('SELECT MAX(isys_cable_connection__id) AS cnt FROM isys_cable_connection')
                    ->get_row_value('cnt') + 1) : self::$m_last_counter++;

            $title = $title . $l_counter;
        }

        $l_cable_id = $l_dao->insert_new_obj(defined_or_default('C__OBJTYPE__CABLE'), false, $title, null, C__RECORD_STATUS__NORMAL);

        $l_sql = 'INSERT INTO isys_catg_cable_list SET
            isys_catg_cable_list__isys_obj__id = ' . $l_dao->convert_sql_id($l_cable_id) . ',
            isys_catg_cable_list__status = ' . $l_dao->convert_sql_int(C__RECORD_STATUS__NORMAL) . ';';

        $l_dao->update($l_sql) && $l_dao->apply_update();

        return $l_cable_id;
    }

    /**
     * Finds a cable which is not assigned to any connector (for recycling).
     *
     * @param   string $p_title
     *
     * @return  integer
     * @author  Van Quyen Hoang <qhoang@i-doit.com>
     */
    public static function recycle_cable($p_title = null)
    {
        global $g_comp_database;

        // Create dao instance
        $l_dao = new isys_cmdb_dao($g_comp_database);

        // Check whether unused cable exists
        $sql = '
            SELECT isys_obj__id, isys_obj__title FROM isys_obj
            WHERE isys_obj__id NOT IN(
                  SELECT isys_cable_connection__isys_obj__id FROM isys_catg_connector_list
                  INNER JOIN isys_cable_connection ON isys_catg_connector_list__isys_cable_connection__id = isys_cable_connection__id)
            AND isys_obj__isys_obj_type__id = ' . $l_dao->convert_sql_id(defined_or_default('C__OBJTYPE__CABLE')) . ' 
            AND isys_obj__status            = ' . $l_dao->convert_sql_id(C__RECORD_STATUS__NORMAL);

        $l_res = $l_dao->retrieve($sql);


        if (is_countable($l_res) && count($l_res)) {
            // Use unused cable in current connection
            $l_row = $l_res->get_row();
            $l_cable_id = $l_row['isys_obj__id'];

            // Use persisted title by default
            $title = $l_row['isys_obj__title'];

            // Check whether title is empty
            if (empty($title)) {
                // Generate new title for cable
                $title = isys_tenantsettings::get('cmdb.object.title.cable-prefix', '') . $p_title;

                if (mb_strlen($title) >= mb_strlen($p_title)) {
                    $l_counter = (self::$m_last_counter === null) ? ($l_dao->retrieve('SELECT MAX(isys_cable_connection__id) AS cnt FROM isys_cable_connection')
                            ->get_row_value('cnt') + 1) : self::$m_last_counter++;

                    $title = $title . $l_counter;
                }

                // Update title of cable
                $l_dao->update('UPDATE isys_obj SET isys_obj__title = ' . $l_dao->convert_sql_text($title) . ' WHERE isys_obj__id = ' . $l_dao->convert_sql_id($l_cable_id) . ';');
                $l_dao->apply_update();
            }
        } else {
            // Fallback if no cable object is free
            $l_cable_id = isys_cmdb_dao_cable_connection::add_cable();
        }

        return $l_cable_id;
    }

    /**
     * Retrieves a cable connection by its ID.
     *
     * @param   integer $p_connection_id
     *
     * @return  isys_component_dao_result
     */
    public function get_cable_connection($p_connection_id)
    {
        return $this->retrieve("SELECT * FROM isys_cable_connection WHERE isys_cable_connection__id = " . $this->convert_sql_id($p_connection_id) . ";");
    }

    /**
     *
     * @return  isys_component_dao_result
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_connection_types()
    {
        return $this->retrieve('SELECT * FROM isys_connection_type;');
    }

    /**
     * Retrieves the object id by connection id.
     *
     * @param   integer $p_connection_id
     *
     * @return  integer
     */
    public function get_cable_object_id_by_connection_id($p_connection_id)
    {
        return $this->get_cable_connection($p_connection_id)
            ->get_row_value('isys_cable_connection__isys_obj__id');
    }

    /**
     * Adds a new cable connection.
     *
     * @param   integer $p_cableID
     *
     * @return  mixed
     */
    public function add_cable_connection($p_cableID)
    {
        // ID-  A cable shall be able to be connected multiple times
        /*
        if (($l_cable_connection_id = $this->get_cable_connection_id_by_cable_id($p_cableID)))
        {
            $this->delete_cable_connection($l_cable_connection_id);
        }
        */

        if ($this->update("INSERT INTO isys_cable_connection SET isys_cable_connection__isys_obj__id = " . $this->convert_sql_id($p_cableID) . ";") && $this->apply_update()) {
            return $this->get_last_insert_id();
        } else {
            return false;
        }
    }

    /**
     * Deletes a cable connection (and all connected endpoints).
     *
     * @param   integer $p_id
     *
     * @return  boolean
     */
    public function delete_cable_connection($p_id)
    {
        if ($p_id !== null && $p_id > 0) {
            return $this->detach_connection($p_id) && $this->detach_cable_connection($p_id);
        }

        return null;
    }

    /**
     * Removes only the relation from the connector
     *
     * @param $p_id
     *
     * @return bool
     * @author   Van Quyen Hoang <qhoang@i-doit.com>
     */
    public function detach_connection($p_id)
    {
        $l_id = $this->convert_sql_id($p_id);

        $l_sql = "SELECT isys_catg_relation_list__isys_obj__id
				FROM isys_catg_relation_list
				INNER JOIN isys_catg_connector_list
				ON isys_catg_connector_list__isys_catg_relation_list__id = isys_catg_relation_list__id
				WHERE isys_catg_connector_list__isys_cable_connection__id = " . $l_id . ";";

        $l_data = $this->retrieve($l_sql)
            ->get_row_value('isys_catg_relation_list__isys_obj__id');

        if ($l_data !== null) {
            // Detach relation
            $l_sql = "UPDATE isys_catg_connector_list
                    SET isys_catg_connector_list__isys_catg_relation_list__id = NULL
                    WHERE isys_catg_connector_list__isys_cable_connection__id = " . $l_id;

            if ($this->update($l_sql)) {
                $this->delete_object($l_data);
            }
        }

        return $this->apply_update();
    }

    /**
     * Remove the complete cable connection
     *
     * @param int $p_id
     *
     * @return bool
     * @author   Van Quyen Hoang <qhoang@i-doit.com>
     */
    public function detach_cable_connection($p_id)
    {
        // Delete cable connection
        $l_update = "DELETE FROM isys_cable_connection WHERE isys_cable_connection__id = " . $this->convert_sql_id($p_id);

        return ($this->update($l_update) && $this->apply_update());
    }

    /**
     * @param int $p_id
     * @param int $p_cable_connection_id
     *
     * @return bool
     * @author   Van Quyen Hoang <qhoang@i-doit.com>
     */
    public function detach_connected_connections($p_id, $p_cable_connection_id)
    {
        $l_update = "UPDATE isys_catg_connector_list SET isys_catg_connector_list__isys_cable_connection__id = NULL WHERE isys_catg_connector_list__id != " .
            $this->convert_sql_id($p_id) . ' AND isys_catg_connector_list__isys_cable_connection__id = ' . $this->convert_sql_id($p_cable_connection_id);

        return ($this->update($l_update) && $this->apply_update());
    }

    /**
     * Handles the cable connection and determines if the complete cable connection should be deleted or only the connected connectors to the cable connection
     *
     * @param int      $p_cable_connection_id
     * @param int      $p_list_id
     * @param int|null $p_connected_connector_id
     * @param int|null $p_cableID
     *
     * @return int|null
     * @author   Van Quyen Hoang <qhoang@i-doit.com>
     */
    public function handle_cable_connection_detachment($p_cable_connection_id, $p_list_id, $p_connected_connector_id = null, $p_cableID = null)
    {
        // Cable connection handling
        if ($p_cable_connection_id) {
            if (empty($p_connected_connector_id)) {
                // Detach assigned connected connector and relation object
                $this->detach_connection($p_cable_connection_id);
            }

            if (empty($p_cableID)) {
                // Detach cable connection completely because no cable is assigned
                $this->detach_cable_connection($p_cable_connection_id);

                // Unset cable connection id
                $p_cable_connection_id = null;
            } elseif (empty($p_connected_connector_id)) {
                // Detach only the connected connectors but keep the cable connection for the connector because a cable is still assigned to the connector
                $this->detach_connected_connections($p_list_id, $p_cable_connection_id);
                $p_cable_connection_id = null;
            } elseif ($p_cableID && $p_connected_connector_id) {
                // Detach old connection
                $this->detach_connection($p_cable_connection_id);
                $this->detach_connected_connections($p_list_id, $p_cable_connection_id);
                // Update connection with the new cable object
                $this->update_cable_connection_cable($p_cable_connection_id, $p_cableID);
            }
        } elseif (empty($p_cableID)) {
            // Detach cable connection completely because no cable is assigned
            $this->detach_cable_connection($this->get_cable_connection_id_by_connector_id($p_list_id));

            // Unset cable connection id
            $p_cable_connection_id = null;
        }

        return $p_cable_connection_id;
    }

    /**
     * This function handles the cable connection
     *
     * @param int $p_current_connectorID
     * @param int $p_connected_connectorID
     * @param int $p_cableID
     * @param int $p_cable_connection_id
     * @param     $p_is_master_obj
     *
     * @return bool
     * @author   Van Quyen Hoang <qhoang@i-doit.com>
     */
    public function handle_cable_connection_attachment(
        $p_current_connectorID,
        $p_connected_connectorID,
        $p_cableID,
        $p_cableName = '',
        $p_cable_connection_id,
        $p_is_master_obj = null
    ) {
        $l_nRetCode = true;

        if (!empty($p_connected_connectorID)) {
            // Add cable if no cable has been selected
            if (empty($p_cableID)) {
                $p_cableID = isys_cmdb_dao_cable_connection::recycle_cable($p_cableName);
            }

            $l_cable_connection_id = ($p_cable_connection_id === null) ? $this->add_cable_connection($p_cableID) : $p_cable_connection_id;

            if ($p_is_master_obj) {
                $l_master_connector = $p_current_connectorID;
            } else {
                $l_master_connector = $p_connected_connectorID;
            }

            if ($l_master_connector && $p_current_connectorID && $p_connected_connectorID) {
                $l_cable_connection_id = ($l_cable_connection_id === null) ? $this->add_cable_connection($p_cableID) : $l_cable_connection_id;
                $l_nRetCode = $this->save_connection($p_current_connectorID, $p_connected_connectorID, $l_cable_connection_id, $l_master_connector);
            }
        } elseif (!empty($p_cableID) && !empty($p_cable_connection_id)) {
            // ID-5885 Update used cable object in connection
            $this->update_cable_connection_cable($p_cable_connection_id, $p_cableID);
        }

        return $l_nRetCode;
    }

    /**
     *
     * @param   integer $p_cable_object_id
     *
     * @return  mixed
     */
    public function get_cable_connection_id_by_cable_id($p_cable_object_id)
    {
        $l_cable_connection = $this->get_cable_connection_by_cable_id($p_cable_object_id);

        if (is_countable($l_cable_connection) && count($l_cable_connection)) {
            return $l_cable_connection->get_row_value('isys_cable_connection__id');
        } else {
            return false;
        }
    }

    /**
     *
     * @param   integer $p_cable_object_id
     *
     * @return  isys_component_dao_result
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_cable_connection_by_cable_id($p_cable_object_id)
    {
        $l_sql = "SELECT * FROM isys_cable_connection
            WHERE isys_cable_connection__isys_obj__id = " . $this->convert_sql_id($p_cable_object_id) . "
            AND isys_cable_connection__id IN (
                SELECT isys_catg_connector_list__isys_cable_connection__id FROM isys_catg_connector_list
            ) LIMIT 1;";

        return $this->retrieve($l_sql);
    }

    /**
     *
     * @param   integer $p_conID
     *
     * @return  mixed
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_cable_connection_id_by_connector_id($p_conID)
    {
        $l_query = "SELECT isys_cable_connection__id FROM isys_cable_connection
            LEFT JOIN isys_catg_connector_list ON isys_catg_connector_list__isys_cable_connection__id = isys_cable_connection__id
            WHERE isys_catg_connector_list__id = " . $this->convert_sql_id($p_conID) . "
            LIMIT 1;";

        return $this->retrieve($l_query)
            ->get_row_value('isys_cable_connection__id');
    }

    /**
     *
     * @param   integer $p_cableConID
     * @param   integer $p_connectorID
     *
     * @return  mixed
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_assigned_object($p_cableConID, $p_connectorID)
    {
        $l_query = "SELECT isys_obj__id FROM isys_obj
            INNER JOIN isys_catg_connector_list ON isys_catg_connector_list__isys_obj__id = isys_obj__id
            WHERE isys_catg_connector_list__isys_cable_connection__id = " . $this->convert_sql_id($p_cableConID) . "
            AND isys_catg_connector_list__id != " . $this->convert_sql_id($p_connectorID) . "
            LIMIT 1;";

        $l_obj_id = $this->retrieve($l_query)
            ->get_row_value('isys_obj__id');

        if ($l_obj_id !== null) {
            return $l_obj_id;
        } else {
            return false;
        }
    }

    /**
     *
     * @param   integer $p_uiID
     *
     * @return  mixed
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_assigned_ui($p_uiID)
    {
        $l_query = "SELECT there.isys_catg_ui_list__id FROM isys_catg_ui_list there
            INNER JOIN isys_catg_connector_list con_there ON con_there.isys_catg_connector_list__id = there.isys_catg_ui_list__isys_catg_connector_list__id
            LEFT JOIN isys_catg_connector_list con_here ON con_here.isys_catg_connector_list__isys_cable_connection__id = con_there.isys_catg_connector_list__isys_cable_connection__id
                AND con_here.isys_catg_connector_list__id != con_there.isys_catg_connector_list__id
            INNER JOIN isys_catg_ui_list here ON here.isys_catg_ui_list__isys_catg_connector_list__id = con_here.isys_catg_connector_list__id
            WHERE here.isys_catg_ui_list__id = " . $this->convert_sql_id($p_uiID) . "
            LIMIT 1;";

        return $this->retrieve($l_query)
            ->get_row_value("isys_catg_ui_list__id");
    }

    /**
     *
     * @param   integer $p_connectorID
     *
     * @return  mixed
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_assigned_cable($p_connectorID)
    {
        $l_query = "SELECT isys_cable_connection__isys_obj__id FROM isys_cable_connection
            LEFT JOIN isys_catg_connector_list ON isys_catg_connector_list__isys_cable_connection__id = isys_cable_connection__id
            WHERE isys_catg_connector_list__id = " . $this->convert_sql_id($p_connectorID) . "
            LIMIT 1;";

        return $this->retrieve($l_query)
            ->get_row_value("isys_cable_connection__isys_obj__id");
    }

    /**
     *
     * @param   integer $p_portID
     *
     * @return  mixed
     */
    public function get_assigned_port_id($p_portID)
    {
        return $this->get_assigned_port_info($p_portID)["isys_catg_port_list__id"];
    }

    /**
     *
     * @param   integer $p_portID
     *
     * @return  mixed
     */
    public function get_assigned_port_name($p_portID)
    {
        return $this->get_assigned_port_info($p_portID)["isys_catg_port_list__title"];
    }

    /**
     *
     * @param   integer $p_portID
     *
     * @return  mixed
     */
    public function get_assigned_fc_port_id($p_portID)
    {
        return $this->get_assigned_fc_port_info($p_portID)["isys_catg_fc_port_list__id"];
    }

    /**
     *
     * @param   integer $p_portID
     *
     * @return  mixed
     */
    public function get_assigned_fc_port_name($p_portID)
    {
        return $this->get_assigned_fc_port_info($p_portID)['isys_catg_fc_port_list__title'];
    }

    /**
     *
     * @param   integer $p_portID
     *
     * @return  array
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_assigned_port_info($p_portID)
    {
        $l_query = "SELECT there.isys_catg_port_list__id, there.isys_catg_port_list__title FROM isys_catg_port_list there
            INNER JOIN isys_catg_connector_list con_there ON con_there.isys_catg_connector_list__id = there.isys_catg_port_list__isys_catg_connector_list__id
            LEFT JOIN isys_catg_connector_list con_here ON con_here.isys_catg_connector_list__isys_cable_connection__id = con_there.isys_catg_connector_list__isys_cable_connection__id
                AND con_here.isys_catg_connector_list__id != con_there.isys_catg_connector_list__id
            INNER JOIN isys_catg_port_list here ON here.isys_catg_port_list__isys_catg_connector_list__id = con_here.isys_catg_connector_list__id
            WHERE here.isys_catg_port_list__id = " . $this->convert_sql_id($p_portID);

        return $this->retrieve($l_query)
            ->get_row();
    }

    /**
     *
     * @param   integer $p_connector_id
     * @param   integer $p_otherType
     * @param   integer $p_myType
     *
     * @return  isys_component_dao_result
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_assigned_connector($p_connector_id, $p_otherType = null, $p_myType = null)
    {
        $l_query = "SELECT isys_obj.*,there.*, isys_cable_connection.*, isys_connection_type__title, isys_obj_type__title AS object_type
            FROM isys_catg_connector_list here
            LEFT JOIN isys_catg_connector_list there ON there.isys_catg_connector_list__isys_cable_connection__id = here.isys_catg_connector_list__isys_cable_connection__id
                AND there.isys_catg_connector_list__id != here.isys_catg_connector_list__id
            LEFT JOIN isys_connection_type ON here.isys_catg_connector_list__isys_connection_type__id = isys_connection_type__id
            LEFT JOIN isys_cable_connection ON there.isys_catg_connector_list__isys_cable_connection__id = isys_cable_connection__id
            LEFT JOIN isys_obj ON isys_obj__id = there.isys_catg_connector_list__isys_obj__id
            LEFT JOIN isys_obj_type ON isys_obj__isys_obj_type__id = isys_obj_type__id
            WHERE here.isys_catg_connector_list__id = " . $this->convert_sql_id($p_connector_id);

        if ($p_otherType !== null) {
            $l_query .= " AND there.isys_catg_connector_list__type = " . $this->convert_sql_id($p_otherType);
        }

        if ($p_myType !== null) {
            $l_query .= " AND here.isys_catg_connector_list__type = " . $this->convert_sql_id($p_myType);
        }

        return $this->retrieve($l_query . ";");
    }

    /**
     *
     * @param   integer $p_cableConID
     *
     * @return  isys_component_dao_result
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_connection_info($p_cableConID)
    {
        $l_query = "SELECT * FROM isys_catg_connector_list
            INNER JOIN isys_obj ON isys_obj__id = isys_catg_connector_list__isys_obj__id
            WHERE isys_catg_connector_list__isys_cable_connection__id = " . $this->convert_sql_id($p_cableConID);

        return $this->retrieve($l_query);
    }

    /**
     *
     * @param   integer $p_conID
     * @param   integer $p_cableConID
     *
     * @return  string
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_assigned_connector_name($p_conID, $p_cableConID)
    {
        $l_query = "SELECT isys_catg_connector_list__title FROM isys_catg_connector_list
            WHERE isys_catg_connector_list__isys_cable_connection__id = " . $this->convert_sql_id($p_cableConID) . "
            AND isys_catg_connector_list__id != " . $this->convert_sql_id($p_conID) . ";";

        return $this->retrieve($l_query)
            ->get_row_value('isys_catg_connector_list__title');
    }

    /**
     *
     * @param   integer $p_conID
     *
     * @return  mixed
     */
    public function get_assigned_connector_id($p_conID)
    {
        $l_res = $this->get_assigned_connector($p_conID);

        if (is_countable($l_res) && count($l_res)) {
            return $l_res->get_row_value('isys_catg_connector_list__id');
        }

        return null;
    }

    /**
     * Get assigned fc ports over fc_port_id.
     *
     * @param   integer $p_portID
     *
     * @return  array  isys_catg_fc_port_list__id and isys_catg_fc_port_list__title
     */
    public function get_assigned_fc_port_info($p_portID)
    {
        $l_query = "SELECT there.isys_catg_fc_port_list__id, there.isys_catg_fc_port_list__title FROM isys_catg_fc_port_list there
            INNER JOIN isys_catg_connector_list con_there ON con_there.isys_catg_connector_list__id = there.isys_catg_fc_port_list__isys_catg_connector_list__id
            LEFT JOIN isys_catg_connector_list con_here ON con_here.isys_catg_connector_list__isys_cable_connection__id = con_there.isys_catg_connector_list__isys_cable_connection__id AND con_here.isys_catg_connector_list__id != con_there.isys_catg_connector_list__id
            INNER JOIN isys_catg_fc_port_list here ON here.isys_catg_fc_port_list__isys_catg_connector_list__id = con_here.isys_catg_connector_list__id
            WHERE here.isys_catg_fc_port_list__id = " . $this->convert_sql_id($p_portID);

        return $this->retrieve($l_query)
            ->get_row();
    }

    /**
     * Saves a connector with the given endpoint.
     *
     * @param   integer $p_connector1ID
     * @param   integer $p_connector2ID
     * @param   integer $p_connectionID
     * @param   integer $p_master_connector_id
     *
     * @return  boolean
     * @throws  isys_exception_cmdb
     * @throws  isys_exception_dao
     */
    public function save_connection($p_connector1ID, $p_connector2ID, $p_connectionID, $p_master_connector_id = null)
    {
        $l_dao_conncetor = new isys_cmdb_dao_category_g_connector($this->get_database_component());
        $l_dao_relation = new isys_cmdb_dao_category_g_relation($this->get_database_component());

        // Get connector data.
        $l_connector1 = $l_dao_conncetor->get_data($p_connector1ID)
            ->__to_array();
        $l_connector2 = $l_dao_conncetor->get_data($p_connector2ID)
            ->__to_array();

        $l_rel_id = null;

        // Create implicit relation.
        try {
            if ($l_connector1["isys_catg_connector_list__isys_obj__id"] > 0 && $l_connector2["isys_catg_connector_list__isys_obj__id"] > 0) {
                if (is_numeric($l_connector1["isys_catg_connector_list__assigned_category"])) {
                    if ($l_connector1["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CATG__CONNECTOR')) {
                        $l_connector1["isys_catg_connector_list__assigned_category"] = 'C__CATG__CONNECTOR';
                    } elseif ($l_connector1["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CATG__NETWORK_PORT') ||
                        $l_connector1["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CMDB__SUBCAT__NETWORK_PORT')) {
                        $l_connector1["isys_catg_connector_list__assigned_category"] = 'C__CATG__NETWORK_PORT';
                    } elseif ($l_connector1["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CATG__POWER_CONSUMER')) {
                        $l_connector1["isys_catg_connector_list__assigned_category"] = 'C__CATG__POWER_CONSUMER';
                    } elseif ($l_connector1["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CATG__UNIVERSAL_INTERFACE')) {
                        $l_connector1["isys_catg_connector_list__assigned_category"] = 'C__CATG__UNIVERSAL_INTERFACE';
                    } elseif ($l_connector1["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CATG__CONTROLLER_FC_PORT')) {
                        $l_connector1["isys_catg_connector_list__assigned_category"] = 'C__CATG__CONTROLLER_FC_PORT';
                    }
                }

                if (is_numeric($l_connector2["isys_catg_connector_list__assigned_category"])) {
                    if ($l_connector2["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CATG__CONNECTOR')) {
                        $l_connector2["isys_catg_connector_list__assigned_category"] = 'C__CATG__CONNECTOR';
                    } elseif ($l_connector2["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CATG__NETWORK_PORT') || // @todo  Remove in i-doit 1.12
                        $l_connector2["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CMDB__SUBCAT__NETWORK_PORT')) {
                        $l_connector2["isys_catg_connector_list__assigned_category"] = 'C__CATG__NETWORK_PORT';
                    } elseif ($l_connector2["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CATG__POWER_CONSUMER')) {
                        $l_connector2["isys_catg_connector_list__assigned_category"] = 'C__CATG__POWER_CONSUMER';
                    } elseif ($l_connector2["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CATG__UNIVERSAL_INTERFACE')) {
                        $l_connector2["isys_catg_connector_list__assigned_category"] = 'C__CATG__UNIVERSAL_INTERFACE';
                    } elseif ($l_connector2["isys_catg_connector_list__assigned_category"] == defined_or_default('C__CATG__CONTROLLER_FC_PORT')) {
                        $l_connector2["isys_catg_connector_list__assigned_category"] = 'C__CATG__CONTROLLER_FC_PORT';
                    }
                }

                $l_relation_type = $relationTypeConnectorA = $l_dao_relation->get_relation_type_by_category($l_connector1["isys_catg_connector_list__assigned_category"]);
                $relationTypeConnectorB = $l_dao_relation->get_relation_type_by_category($l_connector2["isys_catg_connector_list__assigned_category"]);

                if (!$relationTypeConnectorA || $relationTypeConnectorA === defined_or_default('C__RELATION_TYPE__CONNECTORS')) {
                    $l_relation_type = $relationTypeConnectorB;
                }

                if ((!$relationTypeConnectorA && $relationTypeConnectorB) ||
                    ($relationTypeConnectorA === defined_or_default('C__RELATION_TYPE__CONNECTORS') && $relationTypeConnectorB !== defined_or_default('C__RELATION_TYPE__CONNECTORS'))) {
                    $l_puffer = $l_connector1;
                    $l_connector1 = $l_connector2;
                    $l_connector2 = $l_puffer;
                }

                if ((int)$p_master_connector_id > 0 && $p_master_connector_id == $p_connector1ID) {
                    // switch places
                    $l_puffer = $l_connector2["isys_catg_connector_list__isys_obj__id"];
                    $l_connector2["isys_catg_connector_list__isys_obj__id"] = $l_connector1["isys_catg_connector_list__isys_obj__id"];
                    $l_connector1["isys_catg_connector_list__isys_obj__id"] = $l_puffer;
                }

                if (!$l_relation_type) {
                    $l_relation_type = defined_or_default('C__RELATION_TYPE__CONNECTORS');
                }

                if ($l_connector1["isys_catg_connector_list__isys_catg_relation_list__id"]) {
                    $l_call = "save_relation";
                } else {
                    $l_call = "create_relation";
                }

                $l_rel_id = $l_dao_relation->$l_call(
                    "isys_catg_connector_list",
                    $l_connector1["isys_catg_connector_list__id"],
                    $l_connector2["isys_catg_connector_list__isys_obj__id"],
                    $l_connector1["isys_catg_connector_list__isys_obj__id"],
                    $l_relation_type
                );

                if ($l_call == 'save_relation') {
                    $l_rel_id = $l_connector1["isys_catg_connector_list__isys_catg_relation_list__id"];
                }
            }
        } catch (isys_exception_cmdb $e) {
            throw $e;
        }

        $l_update = "UPDATE isys_catg_connector_list SET
            isys_catg_connector_list__isys_cable_connection__id = " . $this->convert_sql_id($p_connectionID) . ",
            isys_catg_connector_list__isys_catg_relation_list__id = " . $this->convert_sql_id($l_rel_id) . "
            WHERE isys_catg_connector_list__id = " . $this->convert_sql_id($p_connector1ID) . "
            OR isys_catg_connector_list__id = " . $this->convert_sql_id($p_connector2ID);

        return ($this->update($l_update) && $this->apply_update());
    }

    /**
     *
     * @param   integer $p_id
     *
     * @return  boolean
     * @throws  isys_exception_dao
     */
    public function delete_connector($p_id)
    {
        return ($this->update("DELETE FROM isys_catg_connector_list WHERE isys_catg_connector_list__id = " . $this->convert_sql_id($p_id) . ";") && $this->apply_update());
    }

    /**
     *
     *
     * @param $p_id
     * @param $p_cable_connection_id
     *
     * @return bool
     * @author   Van Quyen Hoang <qhoang@i-doit.com>
     */
    public function update_cable_connection_connector($p_id, $p_cable_connection_id)
    {
        return ($this->update('UPDATE isys_catg_connector_list SET isys_catg_connector_list__isys_cable_connection__id = ' . $this->convert_sql_id($p_cable_connection_id) .
                ' WHERE isys_catg_connector_list__id = ' . $this->convert_sql_id($p_id)) && $this->apply_update());
    }

    /**
     * This method updates the object id of the cable connection
     *
     * @param $p_cable_connection_id
     * @param $p_cable_object_id
     *
     * @return bool
     * @author   Van Quyen Hoang <qhoang@i-doit.com>
     */
    public function update_cable_connection_cable($p_cable_connection_id, $p_cable_object_id)
    {
        return ($this->update('UPDATE isys_cable_connection SET isys_cable_connection__isys_obj__id = ' . $this->convert_sql_id($p_cable_object_id) .
                ' WHERE isys_cable_connection__id = ' . $this->convert_sql_id($p_cable_connection_id)) && $this->apply_update());
    }

    /**
     * Constructor
     *
     * @param  isys_component_database $p_database
     */
    public function __construct(isys_component_database $p_database)
    {
        parent::__construct($p_database);
    }
}
