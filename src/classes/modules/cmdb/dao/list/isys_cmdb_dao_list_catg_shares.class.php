<?php

/**
 *
 * @package    i-doit
 * @author     Dennis Stücken <dstuecken@i-doit.org>
 * @version    1.0
 * @copyright  synetics GmbH
 * @license    http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_dao_list_catg_shares extends isys_component_dao_category_table_list implements isys_cmdb_dao_list_interface
{
    /**
     *
     * @return  integer
     */
    public function get_category()
    {
        return defined_or_default('C__CATG__SHARES');
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
     * @param  array &$p_row
     */
    public function modify_row(&$p_row)
    {
        if (empty($p_row["isys_catg_drive_list__title"])) {
            $p_row["isys_catg_drive_list__title"] = "unnamed";
        }
    }

    /**
     *
     * @return  array
     */
    public function get_fields()
    {
        return [
            "isys_catg_shares_list__title"    => "LC__CMDB__CATG__SHARES__SHARE_NAME",
            "isys_catg_shares_list__unc_path" => "LC__CMDB__CATG__SHARES__UNC_PATH",
            "isys_catg_drive_list__title"     => "LC__CMDB__CATG__SHARES__VOLUME",
            "isys_catg_shares_list__path"     => "LC__CMDB__CATG__SHARES__LOCAL_PATH"
        ];
    }
}