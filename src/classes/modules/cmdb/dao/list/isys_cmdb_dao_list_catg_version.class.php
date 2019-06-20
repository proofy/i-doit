<?php

/**
 * i-doit
 *
 * DAO: global category list for versions.
 *
 * @package     i-doit
 * @subpackage  CMDB_Category_lists
 * @author      Leonard Fischer <lfischer@i-doit.com>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_dao_list_catg_version extends isys_component_dao_category_table_list
{
    /**
     * Gets fields to display in the list view.
     *
     * @return  array
     */
    public function get_fields()
    {
        return [
            'isys_catg_version_list__title'       => 'LC__CATG__VERSION_TITLE',
            'isys_catg_version_list__servicepack' => 'LC__CATG__VERSION_SERVICEPACK',
            'isys_catg_version_list__kernel'      => 'LC__CATG__VERSION_KERNEL',
            'isys_catg_version_list__hotfix'      => 'LC__CATG__VERSION_PATCHLEVEL'
        ];
    }
}