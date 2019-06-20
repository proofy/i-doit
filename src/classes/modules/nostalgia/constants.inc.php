<?php
/**
 * i-doit
 *
 * Static constant not registered by the dynamic constant manager.
 * Please empty this list every major release.
 *
 * @package     i-doit
 * @subpackage  General
 * @author      Leonard Fischer <lfischer@i-doit.com>
 * @version     1.0
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */

// @see ID-934 -- global categories
if (!defined('C__CMDB__SUBCAT__NETWORK_PORT') && defined('C__CATG__NETWORK_PORT')) {
    /**
     * @deprecated  Use "C__CATG__NETWORK_PORT" instead.
     */
    define('C__CMDB__SUBCAT__NETWORK_PORT', C__CATG__NETWORK_PORT);
}

if (!defined('C__CMDB__SUBCAT__NETWORK_INTERFACE_P') && defined('C__CATG__NETWORK_INTERFACE')) {
    /**
     * @deprecated  Use "C__CATG__NETWORK_INTERFACE" instead.
     */
    define('C__CMDB__SUBCAT__NETWORK_INTERFACE_P', C__CATG__NETWORK_INTERFACE);
}

if (!defined('C__CMDB__SUBCAT__NETWORK_INTERFACE_L') && defined('C__CATG__NETWORK_LOG_PORT')) {
    /**
     * @deprecated  Use "C__CATG__NETWORK_LOG_PORT" instead.
     */
    define('C__CMDB__SUBCAT__NETWORK_INTERFACE_L', C__CATG__NETWORK_LOG_PORT);
}

if (!defined('C__CMDB__SUBCAT__STORAGE__DEVICE') && defined('C__CATG__STORAGE_DEVICE')) {
    /**
     * @deprecated  Use "C__CATG__STORAGE_DEVICE" instead.
     */
    define('C__CMDB__SUBCAT__STORAGE__DEVICE', C__CATG__STORAGE_DEVICE);
}

if (!defined('C__CMDB__SUBCAT__NETWORK_PORT_OVERVIEW') && defined('C__CATG__NETWORK_PORT_OVERVIEW')) {
    /**
     * @deprecated  Use "C__CATG__NETWORK_PORT_OVERVIEW" instead.
     */
    define('C__CMDB__SUBCAT__NETWORK_PORT_OVERVIEW', C__CATG__NETWORK_PORT_OVERVIEW);
}

// @see ID-934 -- specific categories
if (!defined('C__CMDB__SUBCAT__LICENCE_LIST') && defined('C__CATS__LICENCE_LIST')) {
    /**
     * @deprecated  Use "C__CATS__LICENCE_LIST" instead.
     */
    define('C__CMDB__SUBCAT__LICENCE_LIST', C__CATS__LICENCE_LIST);
}

if (!defined('C__CMDB__SUBCAT__LICENCE_OVERVIEW') && defined('C__CATS__LICENCE_OVERVIEW')) {
    /**
     * @deprecated  Use "C__CATS__LICENCE_OVERVIEW" instead.
     */
    define('C__CMDB__SUBCAT__LICENCE_OVERVIEW', C__CATS__LICENCE_OVERVIEW);
}

if (!defined('C__CMDB__SUBCAT__EMERGENCY_PLAN_LINKED_OBJECT_LIST') && defined('C__CATS__EMERGENCY_PLAN_LINKED_OBJECTS')) {
    /**
     * @deprecated  Use "C__CATS__EMERGENCY_PLAN_LINKED_OBJECTS" instead.
     */
    define('C__CMDB__SUBCAT__EMERGENCY_PLAN_LINKED_OBJECT_LIST', C__CATS__EMERGENCY_PLAN_LINKED_OBJECTS);
}

if (!defined('C__CMDB__SUBCAT__EMERGENCY_PLAN') && defined('C__CATS__EMERGENCY_PLAN_ATTRIBUTE')) {
    /**
     * @deprecated  Use "C__CATS__EMERGENCY_PLAN_ATTRIBUTE" instead.
     */
    define('C__CMDB__SUBCAT__EMERGENCY_PLAN', C__CATS__EMERGENCY_PLAN_ATTRIBUTE);
}

if (!defined('C__CMDB__SUBCAT__WS_NET_TYPE') && defined('C__CATS__WS_NET_TYPE')) {
    /**
     * @deprecated  Use "C__CATS__EMERGENCY_PLAN_ATTRIBUTE" instead.
     */
    define('C__CMDB__SUBCAT__WS_NET_TYPE', C__CATS__WS_NET_TYPE);
}

if (!defined('C__CMDB__SUBCAT__WS_ASSIGNMENT') && defined('C__CATS__WS_ASSIGNMENT')) {
    /**
     * @deprecated  Use "C__CATS__EMERGENCY_PLAN_ATTRIBUTE" instead.
     */
    define('C__CMDB__SUBCAT__WS_ASSIGNMENT', C__CATS__WS_ASSIGNMENT);
}

if (!defined('C__CMDB__SUBCAT__FILE_OBJECTS') && defined('C__CATS__FILE_OBJECTS')) {
    /**
     * @deprecated  Use "C__CATS__EMERGENCY_PLAN_ATTRIBUTE" instead.
     */
    define('C__CMDB__SUBCAT__FILE_OBJECTS', C__CATS__FILE_OBJECTS);
}

if (!defined('C__CMDB__SUBCAT__FILE_VERSIONS') && defined('C__CATS__FILE_VERSIONS')) {
    /**
     * @deprecated  Use "C__CATS__EMERGENCY_PLAN_ATTRIBUTE" instead.
     */
    define('C__CMDB__SUBCAT__FILE_VERSIONS', C__CATS__FILE_VERSIONS);
}

if (!defined('C__CMDB__SUBCAT__FILE_ACTUAL') && defined('C__CATS__FILE_ACTUAL')) {
    /**
     * @deprecated  Use "C__CATS__EMERGENCY_PLAN_ATTRIBUTE" instead.
     */
    define('C__CMDB__SUBCAT__FILE_ACTUAL', C__CATS__FILE_ACTUAL);
}
// --- end of ID-934

$constsants = [
    'C__CATEGORY_DATA__EXPORT_PARAM'                     => 'param', // Refactor to 'export_param'.
    'C__CATEGORY_DATA__IMPORT_PARAM'                     => 'param', // Refactor to 'import_param'.
    'ISYS_EMPTY'                                         => '',
    'C__CMDB__LOCATION_SEPARATOR'                        => ' > ',
    'C__CMDB__CONNECTOR_SEPARATOR'                       => ' > ',
    'C__CMDB__GET__NETPORT'                              => 'NetportID',
    'C__RACK_INSERTION__BACK'                            => 0,
    'C__RACK_INSERTION__FRONT'                           => 1,
    'C__RACK_INSERTION__BOTH'                            => 2,
    'C__CATEGORY_DATA__TAG'                              => 'tag',
    'C__CATEGORY_DATA__TITLE'                            => 'title',
    'C__CATEGORY_DATA__FORMTAG'                          => 'formtag',
    'C__CATEGORY_DATA__EXPORT'                           => 'export',
    'C__CATEGORY_DATA__EXPORT_HELPER'                    => 'helper',
    'C__CATEGORY_DATA__PARAM'                            => 'param',
    'C__CATEGORY_DATA__IMPORT_HELPER'                    => 'helper',
    'C__CATEGORY_DATA__VALIDATE'                         => 'validate',
    'C__CATEGORY_DATA__TYPE'                             => 'type',
    'C__CRYPT_KEY'                                       => '',
    'C__WRITE_EXCEPTION_LOGS'                            => true,
    'C__CATEGORY_DATA__FIELD'                            => 'field',
    'C__CATEGORY_DATA__REF'                              => 'ref',
    'C__CATEGORY_DATA__TABLE'                            => 'table',
    'C__CATEGORY_DATA__FILTER'                           => 'filter',
    'C__CATEGORY_DATA__IMPORT'                           => 'import',
    'C__CATEGORY_DATA__OPTIONAL'                         => 'optional',
    'C__CATEGORY_DATA__DEFAULT'                          => 'default',
    'C__CATEGORY_DATA__VALUE'                            => 'value',
    'C__CATEGORY_DATA__REPORT'                           => 'report',
    'ISYS_NULL'                                          => null,
    'CRLF'                                               => "\r\n",
    'C__CATEGORY_DATA__ARG'                              => 'arg',
    'C__TASK__OCCURRENCE__ONCE'                          => 1,
    'C__TASK__OCCURRENCE__HOURLY'                        => 2,
    'C__TASK__OCCURRENCE__DAILY'                         => 3,
    'C__TASK__OCCURRENCE__WEEKLY'                        => 4,
    'C__TASK__OCCURRENCE__EVERY_TWO_WEEKS'               => 5,
    'C__TASK__OCCURRENCE__MONTHLY'                       => 6,
    'C__TASK__OCCURRENCE__YEARLY'                        => 7,
    'C__EMAIL_TEMPLATE__TASK__BEFORE_ENDDATE'            => 1,
    'C__EMAIL_TEMPLATE__TASK__NOTIFICATION'              => 2,
    'C__EMAIL_TEMPLATE__TASK__ACCEPT'                    => 3,
    'C__EMAIL_TEMPLATE__TASK__STATUS_OPEN'               => 4,
    'C__EMAIL_TEMPLATE__TASK__STATUS_DUE'                => 5,
    'C__EMAIL_TEMPLATE__TASK__STATUS_CLOSED'             => 6,
    'C__EMAIL_TEMPLATE__TASK__COMPLETION_ACCEPTED'       => 7,
    'C__JCS__OS_UNIX'                                    => 1,
    'C__JCS__OS_WINDOWS'                                 => 2,
    'C__SESSION__REC_STATUS__LIST_VIEW'                  => 'cRecStatusListView',
    'C__TASK__VIEW__LIST_ALL'                            => 3001,
    'C__TASK__VIEW__LIST_WORKORDER'                      => 3002,
    'C__TASK__VIEW__LIST_CHECKLIST'                      => 3003,
    'C__TASK__VIEW__DETAIL_WORKORDER'                    => 3050,
    'C__TASK__VIEW__DETAIL_CHECKLIST'                    => 3051,
    'C__TASK__VIEW__TREE'                                => 3101,
    'C__TASK__GET__ID'                                   => 'tID',
    'C__TASK__GET__STATUS'                               => 'tS',
    'C__TASK__GET__ACCEPT'                               => 'tA',
    'C__TASK__GET__COMPLETED'                            => 'tC',
    'C__CONTACT__GET__MENU_SELECTION'                    => 'contactMenuSelection',
    'C__CONTACT_PERSON_ID'                               => 'cpID',
    'C__CONTACT_ORGANISATION_ID'                         => 'coID',
    'C__CONTACT_GROUP_ID'                                => 'cgID',
    'C__CONTACT_BROWSER_FILTER__ORGANSATION'             => 1 << 0,
    'C__CONTACT_BROWSER_FILTER__PERSON'                  => 1 << 1,
    'C__CONTACT_BROWSER_FILTER__GROUP'                   => 1 << 2,
    'C__CONTACT_TREE__ORGANSIATION_MAIN'                 => 1,
    'C__CONTACT_TREE__ORGANSIATION_MASTER_DATA'          => 2,
    'C__CONTACT_TREE__ORGANSIATION_PERSON'               => 3,
    'C__CONTACT_TREE__PERSON_MAIN'                       => 4,
    'C__CONTACT_TREE__PERSON_MASTER_DATA'                => 5,
    'C__CONTACT_TREE__PERSON_GROUP'                      => 6,
    'C__CONTACT_TREE__GROUP_MAIN'                        => 7,
    'C__CONTACT_TREE__GROUP_MASTER_DATA'                 => 8,
    'C__CONTACT_TREE__GROUP_PERSON'                      => 9,
    'C__CONTACT_TREE__STARTPAGE'                         => 10,
    'C__CONTACT_TREE__PERSON_WITHOUT_ORGANISATION'       => 11,
    'C__CONTACT_TREE__PERSON_NAGIOS'                     => 12,
    'C__CONTACT_TREE__LDAP'                              => 13,
    'C__CONTACT_TREE__GROUP_NAGIOS'                      => 14,
    'C__CONTACT__VIEW__TREE'                             => 2001,
    'C__CONTACT__VIEW__LIST'                             => 2002,
    'C__CONTACT__VIEW__LIST_PERSON'                      => 2003,
    'C__CONTACT__VIEW__LIST_GROUP'                       => 2004,
    'C__CONTACT__VIEW__LIST_ORGANISATION'                => 2005,
    'C__CONTACT__VIEW__DETAIL_PERSON'                    => 2006,
    'C__CONTACT__VIEW__DETAIL_GROUP'                     => 2007,
    'C__CONTACT__VIEW__DETAIL_ORGANISATION'              => 2008,
    'C__CONTACT__VIEW__DETAIL_STARTPAGE'                 => 2009,
    'C__CONTACT__VIEW__LIST_PERSON_WITHOUT_ORGANISATION' => 2010,
    'C__CONTACT__VIEW__NAGIOS_PERSON'                    => 2011,
    'C__CONTACT__VIEW__LIST_LDAP'                        => 2012,
    'C__CONTACT__VIEW__NAGIOS_GROUP'                     => 2013,
    'C__CMDB__CATEGORY__TYPE_DYNAMIC'                    => 2,
    'C__CMDB__CATEGORY__TYPE_PORT'                       => 3,
];

foreach ($constsants as $constantName => $constantValue) {
    if (!defined($constantName)) {
        define($constantName, $constantValue);
    }
}
