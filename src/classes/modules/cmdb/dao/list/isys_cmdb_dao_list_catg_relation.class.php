<?php

/**
 *
 * @package    i-doit
 * @author     Dennis Stücken <dstuecken@i-doit.org>
 * @version    1.0
 * @copyright  synetics GmbH
 * @license    http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_dao_list_catg_relation extends isys_component_dao_category_table_list implements isys_cmdb_dao_list_interface
{
    /**
     *
     * @return  integer
     */
    public function get_category()
    {
        if (isset($_GET[C__CMDB__GET__OBJECTTYPE]) && defined('C__OBJTYPE__IT_SERVICE') && $_GET[C__CMDB__GET__OBJECTTYPE] == C__OBJTYPE__IT_SERVICE &&
            isset($_GET[C__CMDB__GET__CATG])) {
            return $_GET[C__CMDB__GET__CATG];
        }

        return defined_or_default('C__CATG__RELATION');
    }

    /**
     *
     * @return  integer
     */
    public function get_category_type()
    {
        return C__CMDB__CATEGORY__TYPE_GLOBAL;
    }

    /**
     *
     * @param   string  $p_table
     * @param   integer $p_object_id
     * @param   integer $p_cRecStatus
     *
     * @return  isys_component_dao_result
     * @throws  Exception
     * @throws  isys_exception_database
     */
    public function get_result($p_table = null, $p_object_id, $p_cRecStatus = null)
    {
        $l_cRecStatus = empty($p_cRecStatus) ? $this->get_rec_status() : $p_cRecStatus;

        $p_object_id = (int)$p_object_id;

        if (is_value_in_constants($_GET[C__CMDB__GET__CATG], ['C__CATG__IT_SERVICE_RELATIONS', 'C__CATG__RELATION_ROOT'])) {
            $l_sql = 'SELECT main.*, isys_relation_type.*, isys_weighting.*, main_obj.*
                FROM isys_catg_relation_list main
                LEFT JOIN isys_relation_type ON main.isys_catg_relation_list__isys_relation_type__id = isys_relation_type__id
                LEFT JOIN isys_weighting ON main.isys_catg_relation_list__isys_weighting__id = isys_weighting__id
                INNER JOIN isys_obj main_obj ON main.isys_catg_relation_list__isys_obj__id = main_obj.isys_obj__id
                LEFT JOIN isys_catg_relation_list object1_master ON object1_master.isys_catg_relation_list__isys_obj__id = main.isys_catg_relation_list__isys_obj__id__master
                LEFT JOIN isys_catg_relation_list object2_master ON object2_master.isys_catg_relation_list__isys_obj__id = main.isys_catg_relation_list__isys_obj__id__master
                LEFT JOIN isys_catg_relation_list object1_slave ON object1_slave.isys_catg_relation_list__isys_obj__id = main.isys_catg_relation_list__isys_obj__id__slave
                LEFT JOIN isys_catg_relation_list object2_slave ON object2_slave.isys_catg_relation_list__isys_obj__id = main.isys_catg_relation_list__isys_obj__id__slave
                WHERE TRUE
                AND (main_obj.isys_obj__id = ' . $this->convert_sql_id($p_object_id) . '
                    OR main.isys_catg_relation_list__isys_obj__id__itservice = ' . $this->convert_sql_id($p_object_id) . ')
				AND main.isys_catg_relation_list__isys_obj__id__master != ' . $this->convert_sql_id($p_object_id) . '
				AND main.isys_catg_relation_list__isys_obj__id__slave != ' . $this->convert_sql_id($p_object_id) . '
				AND main.isys_catg_relation_list__status = ' . $this->convert_sql_int($l_cRecStatus);
        } else {
            // @see ID-2772
            $l_sql = 'SELECT main.*, isys_relation_type.*, isys_weighting.*, main_obj.*
	            FROM (
	                SELECT isys_catg_relation_list__id
                    FROM isys_catg_relation_list
                    WHERE isys_catg_relation_list__isys_obj__id__slave=' . $p_object_id . ' OR isys_catg_relation_list__isys_obj__id__master=' . $p_object_id . '

	                UNION DISTINCT

	                SELECT main.isys_catg_relation_list__id
                    FROM isys_catg_relation_list main
                    LEFT JOIN isys_catg_relation_list object1_slave
                    ON object1_slave.isys_catg_relation_list__isys_obj__id = main.isys_catg_relation_list__isys_obj__id__slave
                    WHERE object1_slave.isys_catg_relation_list__isys_obj__id__slave=' . $p_object_id . ' OR object1_slave.isys_catg_relation_list__isys_obj__id__master=' .
                $p_object_id . '

	                UNION DISTINCT

	                SELECT main.isys_catg_relation_list__id
                    FROM isys_catg_relation_list main
                    LEFT JOIN isys_catg_relation_list object1_slave
                    ON object1_slave.isys_catg_relation_list__isys_obj__id = main.isys_catg_relation_list__isys_obj__id__master
                    WHERE object1_slave.isys_catg_relation_list__isys_obj__id__slave=' . $p_object_id . ' OR object1_slave.isys_catg_relation_list__isys_obj__id__master=' .
                $p_object_id . '
	            ) AS filter
	            INNER JOIN isys_catg_relation_list main  ON main.isys_catg_relation_list__id = filter.isys_catg_relation_list__id
	            LEFT JOIN isys_relation_type ON main.isys_catg_relation_list__isys_relation_type__id = isys_relation_type__id
	            LEFT JOIN isys_weighting ON main.isys_catg_relation_list__isys_weighting__id = isys_weighting__id
	            INNER JOIN isys_obj main_obj ON main.isys_catg_relation_list__isys_obj__id = main_obj.isys_obj__id
	            WHERE main.isys_catg_relation_list__status = ' . $this->convert_sql_int($l_cRecStatus);
        }

        // Add Object Condition
        $l_sql .= ' AND (SELECT 1 FROM isys_obj WHERE isys_obj__id = main.isys_catg_relation_list__isys_obj__id__slave AND isys_obj__status = ' . $this->convert_sql_int(C__RECORD_STATUS__NORMAL) . ') 
            AND (SELECT 1 FROM isys_obj WHERE isys_obj__id = main.isys_catg_relation_list__isys_obj__id__master AND isys_obj__status = ' . $this->convert_sql_int(C__RECORD_STATUS__NORMAL) . ')';

        return $this->retrieve($l_sql . ';');
    }

    /**
     * @param array $p_row
     */
    public function modify_row(&$p_row)
    {
        $l_quickinfo = new isys_ajax_handler_quick_info();

        // Get Master object.
        $p_row["master"] = $l_quickinfo->getQuickInfoReplacement(
            $p_row["isys_catg_relation_list__isys_obj__id__master"],
            $this->m_cat_dao->get_obj_name_by_id_as_string($p_row["isys_catg_relation_list__isys_obj__id__master"])
        );

        // Get Slave object.
        $p_row["slave"] = $l_quickinfo->getQuickInfoReplacement(
            $p_row["isys_catg_relation_list__isys_obj__id__slave"],
            $this->m_cat_dao->get_obj_name_by_id_as_string($p_row["isys_catg_relation_list__isys_obj__id__slave"])
        );

        // Assign relation description.
        $p_row["relation"] = $p_row["isys_relation_type__master"];

        /*
         * Check if current object is equal to the master relation object.
         * 	if true, set Slave to be Object 1 and Master to be object 2,
         *  use standard direction otherwise
         */
        if ($p_row["isys_catg_relation_list__isys_obj__id__master"] == $_GET[C__CMDB__GET__OBJECT] ||
            $this->m_cat_dao->object_belongs_to_relation($_GET[C__CMDB__GET__OBJECT], $p_row["isys_catg_relation_list__isys_obj__id__master"])) {
            $p_row["slave"] .= " (Slave)";
            $p_row["master"] .= " (Master)";
        } else {
            $l_tmp = $p_row["slave"];

            $p_row["slave"] = $p_row["master"] . " (Master)";
            $p_row["master"] = $l_tmp . " (Slave)";
            $p_row["relation"] = $p_row["isys_relation_type__slave"];
        }

        // Display correct IT Service, if no IT Service is seleceted, show keyword "Global".
        if (empty($p_row["isys_catg_relation_list__isys_obj__id__itservice"])) {
            $p_row["itservice"] = "Global";
        } else {
            $p_row["itservice"] = $l_quickinfo->getQuickInfoReplacement(
                $p_row["isys_catg_relation_list__isys_obj__id__itservice"],
                $this->m_cat_dao->get_obj_name_by_id_as_string($p_row["isys_catg_relation_list__isys_obj__id__itservice"])
            );
        }

        // Retrieve relation type.
        switch ($p_row["isys_relation_type__type"]) {
            case C__RELATION__EXPLICIT:
                $p_row["type"] = isys_application::instance()->container->get('language')
                    ->get("LC__CMDB__RELATION_EXPLICIT");
                break;
            default:
            case C__RELATION__IMPLICIT:
                $p_row["type"] = isys_application::instance()->container->get('language')
                    ->get("LC__CMDB__RELATION_IMPLICIT");
                break;
        }

        $l_dao = new isys_cmdb_dao_category_s_parallel_relation($this->m_db);
        $l_siblibgs = $l_dao->get_pool_siblings_as_array($p_row["isys_obj__id"]);

        $p_row["parallel"] = sprintf(isys_application::instance()->container->get('language')
            ->get("LC__PARALLEL_RELATIONS__X_RELATIONS"), is_countable($l_siblibgs) ? count($l_siblibgs) : 0);
    }

    /**
     * @return  array
     */
    public function get_fields()
    {
        return [
            "isys_relation_type__title" => 'LC__CATG__RELATION__RELATION_TYPE',
            "type"                      => "",
            "master"                    => isys_application::instance()->container->get('language')
                    ->get("LC_UNIVERSAL__OBJECT") . " 1",
            "relation"                  => "",
            "slave"                     => isys_application::instance()->container->get('language')
                    ->get("LC_UNIVERSAL__OBJECT") . " 2",
            "isys_weighting__title"     => 'LC__CATG__RELATION__WEIGHTING',
            "itservice"                 => "Service",
            "parallel"                  => 'LC__PARALLEL_RELATIONS__ALIGNED_TO'
        ];
    }
}
