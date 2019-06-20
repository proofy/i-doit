<?php

use idoit\Component\Helper\Ip;

/**
 * AJAX
 *
 * @package     i-doit
 * @subpackage  General
 * @author      Leonard Fischer <lfischer@i-doit.org>
 * @version     1.0
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 * @since       0.9.9-8
 */
class isys_ajax_handler_ipv6 extends isys_ajax_handler
{
    /**
     * This variable will hold the host-address category DAO.
     *
     * @var  isys_cmdb_dao_category_g_ip
     */
    protected $m_ip_dao = null;

    /**
     * Init method, which gets called from the framework.
     *
     * @global  isys_component_database $g_comp_database
     * @author  Leonard Fischer <lfischer@i-doit.org>
     */
    public function init()
    {
        global $g_comp_database;

        // We need the catg_ip DAO for a few awesome IPv6 methods.
        $this->m_ip_dao = new isys_cmdb_dao_category_g_ip($g_comp_database);

        // We set the header information because we don't accept anything than JSON.
        header('Content-Type: application/json');

        if (!empty($_POST['method'])) {
            switch ($_POST['method']) {
                case 'calculate_ipv6_range':
                    echo isys_format_json::encode($this->calculate_ipv6_range());
                    break;

                case 'find_free_v6':
                    echo isys_format_json::encode($this->find_free_v6());
                    break;

                case 'is_ipv6_inside_range':
                    echo isys_format_json::encode($this->is_ipv6_inside_range());
                    break;

                default:
                    echo isys_format_json::encode([]);
            }
        }

        $this->_die();
    }

    /**
     * Method for calculating an IPv6 range by an IPv6 IP and a CIDR.
     *
     * @return  array
     * @author  Leonard Fischer <lfischer@i-doit.org>
     */
    public function calculate_ipv6_range()
    {
        return Ip::calc_ip_range_ipv6($_POST['ip'], $_POST['cidr']);
    }

    /**
     * Method for retrieving relevant information for a certain net.
     *
     * @global  isys_component_database $g_comp_database
     * @return  array
     * @author  Leonard Fischer <lfischer@i-doit.org>
     */
    public function find_free_v6()
    {
        global $g_comp_database;

        $l_net_dao = new isys_cmdb_dao_category_s_net($g_comp_database);

        return $l_net_dao->find_free_ipv6_by_assignment($_POST['net_obj_id'], $_POST['ip_assignment']);
    }

    /**
     * Method for finding out if an IPv6 address lies inside a given range.
     *
     * @return  boolean
     * @author  Leonard Fischer <lfischer@i-doit.org>
     */
    public function is_ipv6_inside_range()
    {
        return Ip::is_ipv6_in_range($_POST['address'], $_POST['net_from'], $_POST['net_to']);
    }
}