<?php

/**
 * i-doit
 *
 * DAO: global virtual category for the livestatus connection.
 *
 * @package     i-doit
 * @subpackage  CMDB_Categories
 * @author      Leonard Fischer <lfischer@i-doit.com>
 * @version     1.0.0
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 * @since       i-doit 1.3.0
 */
class isys_cmdb_dao_category_g_livestatus extends isys_cmdb_dao_category_g_virtual
{
    /**
     * Category's name. Will be used for the identifier, constant, main table, and many more.
     *
     * @var  string
     */
    protected $m_category = 'livestatus';

    /**
     * Dynamic property handling for getting the livestatus state of an object.
     *
     * @global  isys_component_database $g_comp_database
     * @global  array                   $g_config
     *
     * @param   array                   $p_row
     *
     * @return  string
     */
    public function dynamic_property_callback_livestatus_state(array $p_row)
    {
        global $g_dirs, $g_comp_database;

        $l_row = isys_cmdb_dao_category_g_monitoring::instance($g_comp_database)
            ->get_data(null, $p_row['__id__'])
            ->get_row();

        if (is_array($l_row) && $l_row['isys_monitoring_hosts__type'] == C__MONITORING__TYPE_LIVESTATUS) {
            return '<span class="livestatus_state loading"><img src="' . $g_dirs['images'] . 'ajax-loading.gif" class="vam" /> <span class="vam">' .
                isys_application::instance()->container->get('language')
                    ->get('LC__UNIVERSAL__LOADING') . '</span></span>';
        }

        return '<span>' . isys_tenantsettings::get('gui.empty_value', '-') . '</span>';
    }

    /**
     * Dynamic property handling for getting the livestatus state of an object.
     *
     * @global  isys_component_database $g_comp_database
     * @global  array                   $g_config
     *
     * @param   array                   $p_row
     *
     * @return  string
     */
    public function dynamic_property_callback_livestatus_state_button(array $p_row)
    {
        global $g_comp_database;

        $l_row = isys_cmdb_dao_category_g_monitoring::instance($g_comp_database)
            ->get_data(null, $p_row['__id__'])
            ->get_row();

        if (is_array($l_row) && $l_row['isys_monitoring_hosts__type'] == C__MONITORING__TYPE_LIVESTATUS && $l_row['isys_monitoring_hosts__active'] == 1) {
            $l_livestatus_url = isys_helper_link::create_url([
                C__GET__AJAX      => 1,
                C__GET__AJAX_CALL => 'monitoring_livestatus',
                'func'            => 'load_livestatus_state'
            ]);

            return '<button type="button" class="btn btn-mini" onclick="load_livestatus_state_in_list(this);" data-url="' . $l_livestatus_url . '">' .
                isys_application::instance()->container->get('language')
                    ->get('LC__UNIVERSAL__LOAD') . '</button>';
        }

        return '<span>' . isys_tenantsettings::get('gui.empty_value', '-') . '</span>';
    }

    /**
     * Method for retrieving the dynamic properties, used by the new list component.
     *
     * @return  array
     */
    protected function dynamic_properties()
    {
        return [
            '_livestatus_state'        => [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__MONITORING__LIVESTATUS_STATUS',
                    C__PROPERTY__INFO__DESCRIPTION => 'Livestatus status'
                ],
                C__PROPERTY__FORMAT   => [
                    C__PROPERTY__FORMAT__CALLBACK => [
                        $this,
                        'dynamic_property_callback_livestatus_state'
                    ]
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__LIST => false
                ]
            ],
            '_livestatus_state_button' => [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__MONITORING__LIVESTATUS_STATUS_BUTTON',
                    C__PROPERTY__INFO__DESCRIPTION => 'Livestatus status button'
                ],
                C__PROPERTY__FORMAT   => [
                    C__PROPERTY__FORMAT__CALLBACK => [
                        $this,
                        'dynamic_property_callback_livestatus_state_button'
                    ]
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__LIST => false
                ]
            ]
        ];
    }

    /**
     * Method for returning the properties.
     *
     * @return  array
     * @author  Leonard Fischer <lfischer@i-doit.com>
     * @author  Van Quyen Hoang <qhoang@i-doit.com>
     */
    protected function properties()
    {
        return [
            'livestatus_state'        => array_replace_recursive(isys_cmdb_dao_category_pattern::dialog(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__MONITORING__LIVESTATUS_STATUS',
                    C__PROPERTY__INFO__DESCRIPTION => 'Livestatus status'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD  => 'isys_catg_monitoring_list__active',
                    C__PROPERTY__DATA__SELECT => idoit\Module\Report\SqlQuery\Structure\SelectSubSelect::factory('SELECT (CASE WHEN isys_monitoring_hosts__type = ' .
                        $this->convert_sql_text(C__MONITORING__TYPE_LIVESTATUS) . ' THEN
                                        isys_catg_monitoring_list__isys_obj__id ELSE NULL END)
                                FROM isys_catg_monitoring_list
                                INNER JOIN isys_monitoring_hosts ON isys_monitoring_hosts__id = isys_catg_monitoring_list__isys_monitoring_hosts__id',
                        'isys_catg_monitoring_list', 'isys_catg_monitoring_list__id', 'isys_catg_monitoring_list__isys_obj__id')
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__LIST       => true,
                    C__PROPERTY__PROVIDES__VIRTUAL    => true,
                    C__PROPERTY__PROVIDES__SEARCH     => false,
                    C__PROPERTY__PROVIDES__REPORT     => false,
                    C__PROPERTY__PROVIDES__VALIDATION => false,
                    C__PROPERTY__PROVIDES__MULTIEDIT  => false,
                    C__PROPERTY__PROVIDES__EXPORT     => false,
                    C__PROPERTY__PROVIDES__IMPORT     => false
                ]
            ]),
            'livestatus_state_button' => array_replace_recursive(isys_cmdb_dao_category_pattern::dialog(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__MONITORING__LIVESTATUS_STATUS_BUTTON',
                    C__PROPERTY__INFO__DESCRIPTION => 'Livestatus status'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD  => 'isys_catg_monitoring_list__active',
                    C__PROPERTY__DATA__SELECT => idoit\Module\Report\SqlQuery\Structure\SelectSubSelect::factory('SELECT (CASE WHEN isys_monitoring_hosts__type = ' .
                        $this->convert_sql_text(C__MONITORING__TYPE_LIVESTATUS) . ' THEN
                                        isys_catg_monitoring_list__isys_obj__id ELSE NULL END)
                                FROM isys_catg_monitoring_list
                                INNER JOIN isys_monitoring_hosts ON isys_monitoring_hosts__id = isys_catg_monitoring_list__isys_monitoring_hosts__id',
                        'isys_catg_monitoring_list', 'isys_catg_monitoring_list__id', 'isys_catg_monitoring_list__isys_obj__id')
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__LIST       => true,
                    C__PROPERTY__PROVIDES__VIRTUAL    => true,
                    C__PROPERTY__PROVIDES__SEARCH     => false,
                    C__PROPERTY__PROVIDES__REPORT     => false,
                    C__PROPERTY__PROVIDES__VALIDATION => false,
                    C__PROPERTY__PROVIDES__MULTIEDIT  => false,
                    C__PROPERTY__PROVIDES__EXPORT     => false,
                    C__PROPERTY__PROVIDES__IMPORT     => false
                ]
            ])
        ];
    }
}
