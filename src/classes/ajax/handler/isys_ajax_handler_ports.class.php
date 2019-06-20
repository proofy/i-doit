<?php

/**
 * AJAX
 *
 * @package     i-doit
 * @subpackage  General
 * @author      Leonard Fischer <lfischer@i-doit.org>
 * @version     1.0
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 * @since       1.0
 */
class isys_ajax_handler_ports extends isys_ajax_handler
{
    /**
     * Init method, which gets called from the framework.
     *
     * @author  Leonard Fischer <lfischer@i-doit.org>
     */
    public function init()
    {
        // We set the header information because we don't accept anything than JSON.
        header('Content-Type: application/json');

        $l_return = [];

        switch ($_GET['func']) {
            case 'load_port_overview':
                $l_return = $this->get_port_overview($_POST[C__CMDB__GET__OBJECT]);
                break;

            case 'load_fc_ports':
                $l_return = $this->get_fc_ports(isys_format_json::decode($_POST[C__CMDB__GET__OBJECT]), $_POST[C__CMDB__GET__CATLEVEL]);
                break;
        }

        echo isys_format_json::encode($l_return);

        $this->_die();
    }

    /**
     * This method defines, if the hypergate needs to be included for this request.
     *
     * @static
     * @return  boolean
     */
    public static function needs_hypergate()
    {
        return true;
    }

    /**
     * @param   integer $p_obj_id
     *
     * @return  array
     */
    public function get_port_overview($p_obj_id)
    {
        return isys_cmdb_dao_category_g_network_port_overview::instance($this->m_database_component)
            ->get_port_overview($p_obj_id);
    }

    /**
     * @param   array   $p_obj_ids
     * @param   integer $p_cat_id
     *
     * @return  array
     */
    public function get_fc_ports($p_obj_ids = [], $p_cat_id)
    {
        if (!is_array($p_obj_ids) && empty($p_obj_ids)) {
            $p_obj_ids = [];
        }

        return isys_cmdb_dao_category_g_controller_fcport::instance($this->m_database_component)
            ->prepare_data_for_gui($p_obj_ids, $p_cat_id);
    }
}

?>