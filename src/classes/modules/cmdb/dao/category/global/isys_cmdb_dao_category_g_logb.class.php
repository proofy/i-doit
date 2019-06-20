<?php

/**
 * i-doit
 *
 * DAO: global category for logbook entries
 *
 * @package     i-doit
 * @subpackage  CMDB_Categories
 * @author      Niclas Potthast <npotthast@i-doit.org>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_dao_category_g_logb extends isys_cmdb_dao_category_global
{
    /**
     * Category's name. Will be used for the identifier, constant, main table, and many more.
     *
     * @var  string
     */
    protected $m_category = 'logb';

    /**
     * Category's constant.
     *
     * @var    string
     * @fixme  No standard behavior!
     */
    protected $m_category_const = 'C__CATG__LOGBOOK';

    /**
     * Category's identifier.
     *
     * @var    integer
     * @fixme  No standard behavior!
     * This is removed, because it is done automatically in constructor of dao_category
     */
//     protected $m_category_id = C__CATG__LOGBOOK;

    /**
     * Is category multi-valued or single-valued?
     *
     * @var  boolean
     */
    protected $m_multivalued = true;

    /**
     * Return Category Data
     *
     * @param [int $p_id]
     * @param [int $p_obj_id]
     * @param [string $p_condition]
     *
     * @return isys_component_dao_result
     */
    public function get_data($p_catg_list_id = null, $p_obj_id = null, $p_condition = "", $p_filter = null, $p_status = null, $p_limit = null)
    {
        $p_condition .= $this->prepare_filter($p_filter);

        $l_sql = "SELECT * FROM isys_catg_logb_list " . "INNER JOIN isys_obj " . "ON " . "isys_obj__id = " . "isys_catg_logb_list__isys_obj__id " .
            "INNER JOIN isys_logbook " . "ON " . "isys_logbook__id = " . "isys_catg_logb_list__isys_logbook__id " . "LEFT JOIN isys_logbook_source " . "ON " .
            "isys_logbook__isys_logbook_source__id = " . "isys_logbook_source__id " .

            "WHERE TRUE ";

        $l_sql .= $p_condition;

        if (!empty($p_obj_id)) {
            $l_sql .= $this->get_object_condition($p_obj_id);
        }

        if (!empty($p_catg_list_id)) {
            $l_sql .= " AND (isys_catg_logb_list__id = " . $this->convert_sql_id($p_catg_list_id) . ")";
        }

        if (!empty($p_status)) {
            $l_sql .= " AND (isys_catg_logb_list__status = '{$p_status}')";
        }

        if ($p_limit) {
            $l_sql .= ' LIMIT ' . $this->m_db->escape_string($p_limit);
        }

        return $this->retrieve($l_sql . ";");
    }

    /**
     * @param isys_component_dao_result $p_daores
     *
     * @return bool
     */
    public function init(isys_component_dao_result &$p_daores)
    {
        $this->m_daores = $p_daores;

        return true;
    }

    /**
     * Method for returning the properties.
     *
     * @return  array
     * @author  Van Quyen Hoang <qhoang@i-doit.com>
     */
    protected function properties()
    {
        return [
            'date'             => array_replace_recursive(isys_cmdb_dao_category_pattern::datetime(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__LOGBOOK__DATE',
                    C__PROPERTY__INFO__DESCRIPTION => 'Date'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_logbook__date'
                ],
                C__PROPERTY__UI       => [
                    C__PROPERTY__UI__ID => 'C__CMDB__CATG__LOGB__DATE'
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__LIST => false
                ]
            ]),
            'object'           => array_replace_recursive(isys_cmdb_dao_category_pattern::int(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__LOGBOOK__SOURCE__OBJECT',
                    C__PROPERTY__INFO__DESCRIPTION => 'Object'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_catg_logb_list__isys_obj__id',
                    C__PROPERTY__DATA__JOIN  => idoit\Module\Report\SqlQuery\Structure\JoinSubSelect::factory('SELECT isys_catg_logb_list__id AS id, isys_catg_logb_list__isys_obj__id AS objectID,
                              isys_obj__title AS title, isys_obj__id AS reference
                              FROM isys_catg_logb_list
                              INNER JOIN isys_obj ON isys_obj__id = isys_catg_logb_list__isys_obj__id
                            ', 'LEFT', [
                        'isys_catg_logb_list',
                        'isys_obj'
                    ], 'isys_catg_logb_list__id', 'isys_catg_logb_list__isys_obj__id')
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__SEARCH => false,
                    C__PROPERTY__PROVIDES__REPORT => true,
                    C__PROPERTY__PROVIDES__LIST   => false
                ],
                C__PROPERTY__FORMAT   => [
                    C__PROPERTY__FORMAT__CALLBACK => [
                        'isys_export_helper',
                        'object'
                    ]
                ]
            ]),
            'event'            => array_replace_recursive(isys_cmdb_dao_category_pattern::dialog(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__UNIVERSAL__EVENT',
                    C__PROPERTY__INFO__DESCRIPTION => 'Event'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD      => 'isys_logbook__isys_logbook_event__id',
                    C__PROPERTY__DATA__REFERENCES => [
                        'isys_logbook_event',
                        'isys_logbook_event__id'
                    ],
                    C__PROPERTY__DATA__JOIN       => idoit\Module\Report\SqlQuery\Structure\JoinSubSelect::factory('SELECT isys_catg_logb_list__id AS id, isys_catg_logb_list__isys_obj__id AS objectID,
                              isys_logbook_event__title AS title, isys_logbook_event__id AS reference
                              FROM isys_catg_logb_list
                              INNER JOIN isys_logbook ON isys_logbook__id = isys_catg_logb_list__isys_logbook__id
                              INNER JOIN isys_logbook_event ON isys_logbook_event__id = isys_logbook__isys_logbook_event__id
                            ', 'LEFT', [
                        'isys_catg_logb_list',
                        'isys_logbook',
                        'isys_logbook_event'
                    ], 'isys_catg_logb_list__id', 'isys_catg_logb_list__isys_obj__id')
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__REPORT => true,
                    C__PROPERTY__PROVIDES__SEARCH => false,
                    C__PROPERTY__PROVIDES__LIST   => false
                ],
                C__PROPERTY__FORMAT   => [
                    C__PROPERTY__FORMAT__CALLBACK => [
                        'isys_export_helper',
                        'dialog'
                    ]
                ]
            ]),
            'source'           => array_replace_recursive(isys_cmdb_dao_category_pattern::int(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__UNIVERSAL__SOURCE',
                    C__PROPERTY__INFO__DESCRIPTION => 'Source'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD      => 'isys_logbook__isys_logbook_source__id',
                    C__PROPERTY__DATA__REFERENCES => [
                        'isys_logbook_source',
                        'isys_logbook_source__id'
                    ],
                    C__PROPERTY__DATA__JOIN       => idoit\Module\Report\SqlQuery\Structure\JoinSubSelect::factory('SELECT isys_catg_logb_list__id AS id, isys_catg_logb_list__isys_obj__id AS objectID,
                              isys_logbook_source__title AS title, isys_logbook_source__id AS reference
                              FROM isys_catg_logb_list
                              INNER JOIN isys_logbook ON isys_logbook__id = isys_catg_logb_list__isys_logbook__id
                              INNER JOIN isys_logbook_source ON isys_logbook_source__id = isys_logbook__isys_logbook_source__id
                            ', 'LEFT', [
                        'isys_catg_logb_list',
                        'isys_logbook',
                        'isys_logbook_source'
                    ], 'isys_catg_logb_list__id', 'isys_catg_logb_list__isys_obj__id')
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__SEARCH => false,
                    C__PROPERTY__PROVIDES__LIST   => false
                ]
            ]),
            'user'             => array_replace_recursive(isys_cmdb_dao_category_pattern::int(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__LOGBOOK__SOURCE__USER',
                    C__PROPERTY__INFO__DESCRIPTION => 'User'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_logbook__isys_obj__id'
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__SEARCH => false,
                    C__PROPERTY__PROVIDES__REPORT => false,
                    C__PROPERTY__PROVIDES__LIST   => false
                ],
                C__PROPERTY__FORMAT   => [
                    C__PROPERTY__FORMAT__CALLBACK => [
                        'isys_export_helper',
                        'object'
                    ]
                ]
            ]),
            'object_type'      => array_replace_recursive(isys_cmdb_dao_category_pattern::text(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__OBJTYPE',
                    C__PROPERTY__INFO__DESCRIPTION => 'Object type'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_logbook__obj_type_static'
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__SEARCH => false,
                    C__PROPERTY__PROVIDES__LIST   => false
                ]
            ]),
            'category'         => array_replace_recursive(isys_cmdb_dao_category_pattern::text(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__CATG__GLOBAL_CATEGORY',
                    C__PROPERTY__INFO__DESCRIPTION => 'Category'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_logbook__category_static'
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__SEARCH => false,
                    C__PROPERTY__PROVIDES__LIST   => false
                ]
            ]),
            'alert_level'      => array_replace_recursive(isys_cmdb_dao_category_pattern::text(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__LOGBOOK__LEVEL',
                    C__PROPERTY__INFO__DESCRIPTION => 'Alarmlevel'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD      => 'isys_logbook__isys_logbook_level__id',
                    C__PROPERTY__DATA__REFERENCES => [
                        'isys_logbook_level',
                        'isys_logbook_level__id'
                    ],
                    C__PROPERTY__DATA__JOIN       => idoit\Module\Report\SqlQuery\Structure\JoinSubSelect::factory('SELECT isys_catg_logb_list__id AS id, isys_catg_logb_list__isys_obj__id AS objectID,
                              isys_logbook_level__title AS title, isys_logbook_level__id AS reference
                              FROM isys_catg_logb_list
                              INNER JOIN isys_logbook ON isys_logbook__id = isys_catg_logb_list__isys_logbook__id
                              INNER JOIN isys_logbook_level ON isys_logbook_level__id = isys_logbook__isys_logbook_level__id
                            ', 'LEFT', [
                        'isys_catg_logb_list',
                        'isys_logbook',
                        'isys_logbook_source'
                    ], 'isys_catg_logb_list__id', 'isys_catg_logb_list__isys_obj__id')
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__SEARCH => false,
                    C__PROPERTY__PROVIDES__LIST   => false
                ],
                C__PROPERTY__FORMAT   => [
                    C__PROPERTY__FORMAT__CALLBACK => [
                        'isys_export_helper',
                        'dialog'
                    ]
                ]
            ]),
            'user_name_static' => array_replace_recursive(isys_cmdb_dao_category_pattern::text(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__LOGBOOK__USER',
                    C__PROPERTY__INFO__DESCRIPTION => 'Username'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_logbook__user_name_static'
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__IMPORT => false,
                    C__PROPERTY__PROVIDES__EXPORT => false,
                    C__PROPERTY__PROVIDES__LIST   => false
                ]
            ]),
            'event_static'     => array_replace_recursive(isys_cmdb_dao_category_pattern::text(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__CATG__LOGB__EVENT_STATIC',
                    C__PROPERTY__INFO__DESCRIPTION => 'Event'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_logbook__event_static'
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__IMPORT => false,
                    C__PROPERTY__PROVIDES__EXPORT => false,
                    C__PROPERTY__PROVIDES__SEARCH => false,
                    C__PROPERTY__PROVIDES__LIST   => false,
                    C__PROPERTY__PROVIDES__REPORT => false
                ]
            ]),
            'comment'          => array_replace_recursive(isys_cmdb_dao_category_pattern::text(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CATG__CONTACT_COMMENT',
                    C__PROPERTY__INFO__DESCRIPTION => 'Comment'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_logbook__comment'
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__LIST => false
                ]
            ]),
            'changes'          => array_replace_recursive(isys_cmdb_dao_category_pattern::text(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__UNIVERSAL__CHANGES',
                    C__PROPERTY__INFO__DESCRIPTION => 'Changes'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_logbook__changes'
                ],
                C__PROPERTY__UI       => [
                    C__PROPERTY__UI__ID => 'C__CMDB__CATG__LOGB__CHANGES'
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__IMPORT => false,
                    C__PROPERTY__PROVIDES__LIST   => false,
                    C__PROPERTY__PROVIDES__REPORT => false
                ],
                C__PROPERTY__FORMAT   => [
                    C__PROPERTY__FORMAT__CALLBACK => [
                        'isys_export_helper',
                        'logbook_changes'
                    ]
                ]
            ]),
            'reason'           => array_replace_recursive(isys_cmdb_dao_category_pattern::dialog_plus(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__CATG__ACCESS_TYPE',
                    C__PROPERTY__INFO__DESCRIPTION => 'Access type'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD        => 'isys_logbook__isys_logbook_reason__id',
                    C__PROPERTY__DATA__SOURCE_TABLE => 'isys_logbook_reason',
                    C__PROPERTY__DATA__REFERENCES   => [
                        'isys_logbook_reason',
                        'isys_logbook_reason__id'
                    ],
                    C__PROPERTY__DATA__JOIN         => idoit\Module\Report\SqlQuery\Structure\JoinSubSelect::factory('SELECT isys_catg_logb_list__id AS id, isys_catg_logb_list__isys_obj__id AS objectID,
                              isys_logbook_reason__title AS title, isys_logbook_reason__id AS reference
                              FROM isys_catg_logb_list
                              INNER JOIN isys_logbook ON isys_logbook__id = isys_catg_logb_list__isys_logbook__id
                              INNER JOIN isys_logbook_reason ON isys_logbook_reason__id = isys_logbook__isys_logbook_reason__id
                            ', 'LEFT', [
                        'isys_catg_logb_list',
                        'isys_logbook',
                        'isys_logbook_source'
                    ], 'isys_catg_logb_list__id', 'isys_catg_logb_list__isys_obj__id')
                ],
                C__PROPERTY__UI       => [
                    C__PROPERTY__UI__ID     => 'C__CMDB__LOGBOOK__REASON',
                    C__PROPERTY__UI__PARAMS => [
                        'p_strTable' => 'isys_logbook_reason'
                    ]
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__SEARCH => false,
                    C__PROPERTY__PROVIDES__LIST   => false
                ]
            ]),
            'description'      => array_replace_recursive(isys_cmdb_dao_category_pattern::commentary(), [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__LOGBOOK__DESCRIPTION',
                    C__PROPERTY__INFO__DESCRIPTION => 'Description'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_logbook__description'
                ],
                C__PROPERTY__UI       => [
                    C__PROPERTY__UI__ID => 'C__CMDB__CAT__COMMENTARY_' . C__CMDB__CATEGORY__TYPE_GLOBAL . defined_or_default('C__CATG__LOGBOOK', 'C__CATG__LOGBOOK')
                ],
            ])
        ];
    }

    /**
     * Dynamic properties
     */
    public function dynamic_properties()
    {
        return [
            '_title' => [
                C__PROPERTY__INFO     => [
                    C__PROPERTY__INFO__TITLE       => 'LC__CMDB__LOGBOOK__TITLE',
                    C__PROPERTY__INFO__DESCRIPTION => 'Title'
                ],
                C__PROPERTY__DATA     => [
                    C__PROPERTY__DATA__FIELD => 'isys_catg_logb_list__id'
                ],
                C__PROPERTY__FORMAT   => [
                    C__PROPERTY__FORMAT__CALLBACK => [
                        isys_cmdb_dao_category_g_logb::instance(isys_application::instance()->database),
                        'dynamicPropertyCallbackTitle'
                    ]
                ],
                C__PROPERTY__PROVIDES => [
                    C__PROPERTY__PROVIDES__LIST   => false,
                    C__PROPERTY__PROVIDES__REPORT => true
                ]
            ]
        ];
    }

    /**
     * @param $dataSet
     *
     * @return string
     * @author   Van Quyen Hoang <qhoang@i-doit.com>
     */
    public function dynamicPropertyCallbackTitle($dataSet)
    {
        $id = null;
        $return = '';
        if (isset($dataSet['isys_logbook__id'])) {
            $id = $dataSet['isys_logbook__id'];
        } elseif ($dataSet['isys_catg_logb_list__id']) {
            $id = $dataSet['isys_catg_logb_list__id'];
        }

        if ($id) {
            $dao = isys_cmdb_dao_category_g_logb::instance(isys_application::instance()->database);
            $query = 'SELECT 
                isys_logbook__event_static, 
                isys_logbook__obj_name_static, 
                isys_logbook__category_static, 
                isys_logbook__obj_type_static, 
                isys_logbook__entry_identifier_static, 
                isys_logbook__changecount
                FROM isys_catg_logb_list INNER JOIN isys_logbook ON isys_catg_logb_list__isys_logbook__id = isys_logbook__id
                WHERE isys_catg_logb_list__id = ' . $dao->convert_sql_id($id);

            $logbookRow = $dao->retrieve($query)
                ->get_row();
            $return = isys_event_manager::getInstance()
                ->translateEvent($logbookRow["isys_logbook__event_static"], $logbookRow["isys_logbook__obj_name_static"], $logbookRow["isys_logbook__category_static"],
                    $logbookRow["isys_logbook__obj_type_static"], $logbookRow["isys_logbook__entry_identifier_static"], $logbookRow["isys_logbook__changecount"]);
        }

        return $return;
    }

    /**
     * Sync method
     *
     * @param array $p_category_data
     * @param int   $p_object_id
     * @param int   $p_status
     *
     * @return bool|mixed
     * @author   Van Quyen Hoang <qhoang@i-doit.com>
     */
    public function sync($p_category_data, $p_object_id, $p_status = 1 /* isys_import_handler_cmdb::C__CREATE */)
    {
        if (is_array($p_category_data) && isset($p_category_data['properties'])) {
            $l_dao = new isys_component_dao_logbook($this->m_db);
            switch ($p_status) {
                case isys_import_handler_cmdb::C__CREATE:
                case isys_import_handler_cmdb::C__UPDATE:
                    $l_dao->set_entry($p_category_data['properties']['event'][C__DATA__VALUE], $p_category_data['properties']['description'][C__DATA__VALUE],
                        $p_category_data['properties']['date'][C__DATA__VALUE], 2, $p_category_data['properties']['object'][C__DATA__VALUE], 'Test',
                        $p_category_data['properties']['object_type'][C__DATA__VALUE], $p_category_data['properties']['category'][C__DATA__VALUE], null, null, null);

                    return $p_category_data['data_id'];
                    break;
            }
        }

        return false;
    }

    /**
     * @return int|mixed
     */
    public function save_element()
    {

        $l_dao = new isys_component_dao_logbook($this->m_db);

        $l_message = $_POST["C__CATG__LOGBOOK__MESSAGE"];
        $l_description = $_POST["C__CATG__LOGBOOK__DESCRIPTION"];

        if ($_POST["C__CATG__LOGBOOK__ALERTLEVEL"] > 0) {
            $l_alert_level = $_POST["C__CATG__LOGBOOK__ALERTLEVEL"];
        } else {
            $l_alert_level = defined_or_default('C__LOGBOOK__ALERT_LEVEL__0');
        }

        if ($_GET[C__CMDB__GET__OBJECT]) {
            $l_object_id = $_GET[C__CMDB__GET__OBJECT];
        } else {
            $l_object_id = null;
        }

        $l_dao->set_entry($l_message, $l_description, null, $l_alert_level, $l_object_id, $this->get_obj_name_by_id_as_string($_GET[C__CMDB__GET__OBJECT]),
            $this->get_objtype_name_by_id_as_string($_GET[C__CMDB__GET__OBJECTTYPE]), null, defined_or_default('C__LOGBOOK_SOURCE__USER'), "", $_POST['LogbookCommentary'], $_POST['LogbookReason']);

        return 2;
    }
}
