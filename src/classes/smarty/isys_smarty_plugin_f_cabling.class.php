<?php

/**
 * i-doit
 *
 * Smarty plugin for text input fields.
 *
 * @todo        Remove in i-doit 1.13
 * @deprecated  This smarty plugin is unused and will be removed in i-doit 1.13
 * @package     i-doit
 * @subpackage  Smarty_Plugins
 * @author      Dennis Blümer <dbluemer@i-doit.org>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_smarty_plugin_f_cabling extends isys_smarty_plugin_f implements isys_smarty_plugin
{
    /**
     * Returns the map for the Smarty Meta Map (SM2).
     *
     * @return  array
     * @author  André Wösten <awoesten@i-doit.org>
     */
    public static function get_meta_map()
    {
        return [
            "p_endpointID",
            "p_cableConID",
            "p_strType"
        ];
    }

    /**
     * Returns the content value.
     *
     * @global  array                   $g_dirs
     * @global  isys_component_database $g_comp_database
     *
     * @param   isys_component_template &$p_tplclass
     * @param   array                   $p_params
     *
     * @return  string
     */
    public function navigation_view(isys_component_template $p_tplclass, $p_params = null)
    {
        if ($p_params === null) {
            $p_params = $this->m_parameter;
        }

        if ($p_params["p_bInvisible"] == true) {
            return '';
        }

        global $g_dirs, $g_comp_database;

        $l_connectorID = $p_params["p_connectorID"];
        $l_cableConID = $p_params["p_cableConID"];

        if ($l_cableConID == null) {
            return isys_tenantsettings::get('gui.empty_value', '-');
        }

        $l_dao = new isys_cmdb_dao_cable_connection($g_comp_database);

        $l_strImage = '<img src="' . $g_dirs["images"] . 'icons/silk/link.png" class="vam" />';

        $l_objID = $l_dao->get_assigned_object($l_cableConID, $l_connectorID);

        $l_objInfo = $l_dao->get_type_by_object_id($l_objID)
            ->get_row();

        $l_arrMaster = [
            C__CMDB__GET__OBJECT     => $l_objID,
            C__CMDB__GET__OBJECTTYPE => $l_objInfo["isys_obj_type__id"],
            C__CMDB__GET__VIEWMODE   => C__CMDB__VIEW__CATEGORY,
            C__CMDB__GET__CATG       => defined_or_default('C__CATG__CABLING'),
            C__CMDB__GET__TREEMODE   => $_GET[C__CMDB__GET__TREEMODE]
        ];

        // Exchange the specified column.
        return '<a href="' . isys_helper_link::create_url($l_arrMaster) . '">' . $l_strImage . ' ' . $l_objInfo["isys_obj__title"] . '</a>';
    }

    /**
     * Navigation edit.
     *
     * @param   isys_component_template &$p_tplclass
     * @param   array                   $p_params
     *
     * @return  string
     */
    public function navigation_edit(isys_component_template $p_tplclass, $p_params = null)
    {
        if ($p_params === null) {
            $p_params = $this->m_parameter;
        }

        $this->m_strPluginClass = "f_cabling";
        $this->m_strPluginName = $p_params["name"];

        return '';
    }
}
