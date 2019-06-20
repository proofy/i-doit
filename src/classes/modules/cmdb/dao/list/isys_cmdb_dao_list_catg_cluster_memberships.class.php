<?php

/**
 * i-doit
 *
 * DAO: ObjectType list for cluster members
 *
 * @package     i-doit
 * @subpackage  CMDB_Category_lists
 * @author      Dennis Blümer <dbluemer@i-doit.org>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_dao_list_catg_cluster_memberships extends isys_component_dao_category_table_list
{
    /**
     * Return constant of category.
     *
     * @return  integer
     * @author  Dennis Blümer <dbluemer@i-doit.org>
     */
    public function get_category()
    {
        return defined_or_default('C__CATG__CLUSTER_MEMBERSHIPS');
    }

    /**
     * Return constant of category type.
     *
     * @return  integer
     * @author  Dennis Blümer <dbluemer@i-doit.org>
     */
    public function get_category_type()
    {
        return C__CMDB__CATEGORY__TYPE_GLOBAL;
    }

    /**
     * Retrieve data for catg maintenance list view.
     *
     * @param   string  $p_str
     * @param   integer $p_objID
     * @param   integer $p_cRecStatus
     *
     * @return  isys_component_dao_result
     */
    public function get_result($p_str = null, $p_objID = null, $p_cRecStatus = null)
    {
        return isys_cmdb_dao_category_g_cluster_memberships::instance($this->m_db)
            ->get_data(null, $p_objID, "", null, (empty($p_cRecStatus) ? $this->get_rec_status() : $p_cRecStatus));
    }

    /**
     * @param  array &$p_arrRow
     */
    public function modify_row(&$p_arrRow)
    {
        if ($p_arrRow["isys_obj__id"] != null) {
            $p_arrRow["isys_obj_type__title"] = $this->m_cat_dao->get_objtype_name_by_id_as_string($this->m_cat_dao->get_objtypeID($p_arrRow["isys_obj__id"]));
            $p_arrRow["isys_obj__title"] = isys_factory::get_instance('isys_ajax_handler_quick_info')
                ->get_quick_info($p_arrRow["isys_obj__id"], $this->m_cat_dao->get_obj_name_by_id_as_string($p_arrRow["isys_obj__id"]), C__LINK__OBJECT);
        }
    }

    /**
     * Gets flag for the rec status dialog.
     *
     * @return  boolean
     * @author  Van Quyen Hoang <qhoang@i-doit.org>
     */
    public function rec_status_list_active()
    {
        return false;
    }

    /**
     *
     * @return  array
     */
    public function get_fields()
    {
        return [
            "isys_obj__title"      => "LC__CMDB__OBJTYPE__CLUSTER",
            "isys_obj_type__title" => "LC__CMDB__OBJTYPE"
        ];
    }

    /**
     * @return  string
     */
    public function make_row_link()
    {
        return "#";
    }
}