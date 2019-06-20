<?php

/**
 * i-doit
 *
 * DAO: Specific category for emergency plans with assigned objects.
 *
 * @package     i-doit
 * @subpackage  CMDB_Categories
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_dao_category_s_emergency_plan_assigned_obj extends isys_cmdb_dao_category_s_emergency_plan
{
    /**
     * Category's name. Will be used for the identifier, constant, main table, and many more.
     *
     * @var  string
     */
    protected $m_category = 'emergency_plan_assigned_obj';

    /**
     * Category's constant.
     *
     * @var    string
     * @fixme  No standard behavior!
     */
    protected $m_category_const = 'C__CATS__EMERGENCY_PLAN_LINKED_OBJECTS';

    /**
     * Category's identifier.
     *
     * @var    integer
     * @fixme  No standard behavior!
     * This is removed, because it is done automatically in constructor of dao_category
     */
//     protected $m_category_id = C__CATS__EMERGENCY_PLAN_LINKED_OBJECTS;

    /**
     * @var string
     */
    protected $m_entry_identifier = 'object';

    /**
     * Category's table
     *
     * @var string
     */
    protected $m_table = 'isys_catg_emergency_plan_list';

    /**
     * Category's template.
     *
     * @var    string
     * @fixme  No standard behavior!
     */
    protected $m_tpl = 'object_table_list.tpl';

    public function get_count($p_obj_id = null)
    {
        if (!empty($p_obj_id)) {
            $l_obj_id = $p_obj_id;
        } else {
            $l_obj_id = $this->m_object_id;
        }

        $l_sql = "SELECT COUNT(isys_catg_emergency_plan_list__id) AS count FROM isys_catg_emergency_plan_list " .
            "INNER JOIN isys_connection ON isys_catg_emergency_plan_list__isys_connection__id = isys_connection__id " . "WHERE TRUE ";

        if (!empty($l_obj_id)) {
            $l_sql .= " AND (isys_connection__isys_obj__id = " . $this->convert_sql_id($l_obj_id) . ")";
        }

        $l_sql .= " AND (isys_catg_emergency_plan_list__status = " . $this->convert_sql_int(C__RECORD_STATUS__NORMAL) . ")";

        $l_data = $this->retrieve($l_sql)
            ->__to_array();

        return $l_data["count"];
    }

    /**
     * Get data method.
     *
     * @param   integer $p_catg_list_id
     * @param   integer $p_obj_id
     * @param   string  $p_condition
     * @param   fixed   $p_filter
     * @param   integer $p_status
     *
     * @return  isys_component_dao_result
     */
    public function get_data($p_catg_list_id = null, $p_obj_id = null, $p_condition = "", $p_filter = null, $p_status = C__RECORD_STATUS__NORMAL)
    {
        $l_sql = " ";

        if ($p_obj_id !== null) {
            $l_sql .= "AND isys_connection__isys_obj__id = " . $this->convert_sql_id($p_obj_id) . " ";
        }

        if ($p_status !== null) {
            $l_sql .= "AND isys_obj__status = " . $this->convert_sql_int($p_status) . " ";
        }

        return isys_cmdb_dao_category_g_emergency_plan::instance($this->m_db)
            ->get_data($p_catg_list_id, null, $l_sql . $p_condition);
    }

    /**
     * Method for returning the properties.
     *
     * @return  array
     */
    protected function properties()
    {
        return [
            'object' => array_replace_recursive(isys_cmdb_dao_category_pattern::text(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__UNIVERSAL__TITLE',
                    C__PROPERTY__INFO__DESCRIPTION => 'Title'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD  => 'isys_catg_emergency_plan_list__isys_obj__id',
                    C__PROPERTY__DATA__SELECT => idoit\Module\Report\SqlQuery\Structure\SelectSubSelect::factory('SELECT CONCAT(isys_obj_type__title, \' > \', isys_obj__title, \' {\', isys_obj__id, \'}\')
                            FROM isys_catg_emergency_plan_list
                            INNER JOIN isys_connection ON isys_connection__id = isys_catg_emergency_plan_list__isys_connection__id
                            INNER JOIN isys_obj ON isys_obj__id = isys_catg_emergency_plan_list__isys_obj__id
                            INNER JOIN isys_obj_type ON isys_obj_type__id = isys_obj__isys_obj_type__id', 'isys_conneciont', 'isys_connection__id',
                        'isys_connection__isys_obj__id', '', '', idoit\Module\Report\SqlQuery\Structure\SelectCondition::factory([]),
                        idoit\Module\Report\SqlQuery\Structure\SelectGroupBy::factory(['isys_connection__isys_obj__id'])),
                    C__PROPERTY__DATA__JOIN   => [
                        idoit\Module\Report\SqlQuery\Structure\SelectJoin::factory('isys_connection', 'LEFT', 'isys_connection__isys_obj__id', 'isys_obj__id'),
                        idoit\Module\Report\SqlQuery\Structure\SelectJoin::factory('isys_catg_emergency_plan_list', 'LEFT', 'isys_connection__id',
                            'isys_catg_emergency_plan_list__isys_connection__id')
                    ]
                ],
                C__PROPERTY__UI       => [
                    C__PROPERTY__UI__ID => 'C__CMDB__CATS__EMERGENCY_PLAN_ASSIGNED_OBJ__OBJECT'
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__SEARCH     => false,
                    C__PROPERTY__PROVIDES__REPORT     => true,
                    C__PROPERTY__PROVIDES__LIST       => false,
                    C__PROPERTY__PROVIDES__VALIDATION => false,
                    C__PROPERTY__PROVIDES__MULTIEDIT  => false,
                    C__PROPERTY__PROVIDES__IMPORT     => false,
                    C__PROPERTY__PROVIDES__EXPORT     => true
                ],
                C__PROPERTY__FORMAT   => [
                    C__PROPERTY__FORMAT__CALLBACK => [
                        'isys_export_helper',
                        'object'
                    ]
                ]
            ])
        ];
    }
}

?>