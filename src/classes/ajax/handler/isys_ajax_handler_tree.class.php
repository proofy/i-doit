<?php

/**
 * AJAX
 *
 * @package     i-doit
 * @subpackage  General
 * @author      Dennis Stücken <dstuecken@synetics.de>
 * @version     1.0
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_ajax_handler_tree extends isys_ajax_handler
{
    /**
     * Initialization for this AJAX request.
     *
     * @global  isys_component_database $g_comp_database
     */
    public function init()
    {
        global $g_comp_database;

        $l_dao = isys_component_dao_user::instance($g_comp_database);

        if (!defined('C__WF__VIEW__TREE') || $_GET[C__CMDB__GET__TREEMODE] != C__WF__VIEW__TREE) {
            if ($_GET[C__CMDB__GET__TREEMODE] == C__CMDB__VIEW__TREE_LOCATION) {
                isys_auth_cmdb::instance()
                    ->check(isys_auth::VIEW, 'LOCATION_VIEW');
            }

            $l_dao->save_settings(C__SETTINGS_PAGE__SYSTEM, ['C__CATG__OVERVIEW__DEFAULT_TREEVIEW' => $_GET[C__CMDB__GET__TREEMODE]]);
        }

        // At this point we need to select the previously saved option to assign it to the template.
        $l_settings = $l_dao->get_user_settings();

        isys_application::instance()->container->get('template')
            ->assign('treeType', $l_settings['isys_user_locale__default_tree_type'])
            ->display('file:' . $this->m_smarty_dir . 'templates/content/leftContent.tpl');

        $this->_die();
    }

    /**
     * Method which defines, if the hypergate needs to be run.
     *
     * @return  boolean
     */
    public static function needs_hypergate()
    {
        return true;
    }
}
