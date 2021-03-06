<?php

/**
 * i-doit
 *
 * DAO: Gloabl category Hostadapter (HBA)
 *
 * @package     i-doit
 * @subpackage  CMDB_Category_lists
 * @author      Dennis Bluemer <dbluemer@i-doit.org>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_dao_list_catg_hba extends isys_component_dao_category_table_list
{
    /**
     * Return constant of category.
     *
     * @return  integer
     */
    public function get_category()
    {
        return defined_or_default('C__CATG__HBA');
    }

    /**
     * Return constant of category type.
     *
     * @return  integer
     */
    public function get_category_type()
    {
        return C__CMDB__CATEGORY__TYPE_GLOBAL;
    }

    /**
     * Returns array with table headers.
     *
     * @return  array
     */
    public function get_fields()
    {
        return [
            "isys_catg_hba_list__title"           => "LC__CATG__STORAGE_CONTROLLER_TITLE",
            "isys_hba_type__title"                => "LC__CATG__STORAGE_CONTROLLER_TYPE",
            "isys_controller_manufacturer__title" => "LC__CATG__STORAGE_CONTROLLER_MANUFACTURER",
            "isys_controller_model__title"        => "LC__CATG__STORAGE_CONTROLLER_MODEL"
        ];
    }
}