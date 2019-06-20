<?php
/**
 * i-doit
 *
 * Static constant not registered by the dynamic constant manager:
 *
 * @package     i-doit
 * @subpackage  General
 * @author      Andre Woesten <awoesten@i-doit.de>
 * @author      Dennis Stücken <dstuecken@i-doit.de>
 * @version     0.9
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */

/*******************************************************************************
 * Config constants, can be edited
 *******************************************************************************/

global $g_absdir;

// Constant for deciding if we are currently in dev or prod mode.
define('ENVIRONMENT', 'production');

// The base directory of i-doit.
define('BASE_DIR', $g_absdir . DIRECTORY_SEPARATOR);

// PHP version requirements
define('PHP_VERSION_MINIMUM', '5.6.0');
define('PHP_VERSION_MAXIMUM', '7.2.99');
// Updated based on informations in KnowledgeBase
define('PHP_VERSION_MINIMUM_RECOMMENDED', '7.2.0');

// MariaDB version requirements
define('MARIADB_VERSION_MINIMUM', '10.0.0');
define('MARIADB_VERSION_MAXIMUM', '10.1.99');
define('MARIADB_VERSION_MINIMUM_RECOMMENDED', '10.1');

// MySQL version requirements
define('MYSQL_VERSION_MINIMUM', '5.6.0');
define('MYSQL_VERSION_MAXIMUM', '5.7.99');
define('MYSQL_VERSION_MINIMUM_RECOMMENDED', '5.7');

// Sysid unique? true/false possible here.
define('C__SYSID__UNIQUE', true);

/*******************************************************************************
 * Editing constants below this marker may crash your i-doit
 *******************************************************************************/

/*******************************************************************************
 * GENERALLY USED CONSTANTS
 *******************************************************************************/
define('DS', DIRECTORY_SEPARATOR);

define('C__POST__POPUP_RECEIVER', 'popupReceiver');

// Constant for default objecttype image
define('C__OBJTYPE_IMAGE__DEFAULT', 'empty.png');

/*******************************************************************************
 * IMPORT CONSTANTS
 *******************************************************************************/
define('C__IMPORT__UI__MOUSE', 1001);
define('C__IMPORT__UI__KEYBOARD', 1002);
define('C__IMPORT__UI__PRINTER', 1003);
define('C__IMPORT__UI__MONITOR', 1004);

/*******************************************************************************
 * CMDB CONSTANTS
 *******************************************************************************/

// Constants for category connector.
define('C__CONNECTOR__INPUT', 1);
define('C__CONNECTOR__OUTPUT', 2);

// Cable directions.
define('C__DIRECTION__LEFT', 0);
define('C__DIRECTION__RIGHT', 1);

// Rack options.
define('C__INSERTION__REAR', 0);
define('C__INSERTION__FRONT', 1);
define('C__INSERTION__BOTH', 2);
define('C__RACK_INSERTION__HORIZONTAL', 3);
define('C__RACK_INSERTION__VERTICAL', 4);
define('C__RACK_DETACH_SEGMENT_ACTION__NONE', 1);
define('C__RACK_DETACH_SEGMENT_ACTION__ARCHIVE', 2);
define('C__RACK_DETACH_SEGMENT_ACTION__PURGE', 3);

// Relation constants.
define('C__RELATION__IMPLICIT', 1);
define('C__RELATION__EXPLICIT', 2);
define('C__RELATION_DIRECTION__DEPENDS_ON_ME', 1);
define('C__RELATION_DIRECTION__I_DEPEND_ON', 2);
define('C__RELATION_DIRECTION__EQUAL', 3);
define('C__RELATION_OBJECT__MASTER', 0);
define('C__RELATION_OBJECT__SLAVE', 1);

// View constants for CMDB.
define('C__CMDB__VIEW__LIST_OBJECT', 1001);
define('C__CMDB__VIEW__LIST_OBJECT_OLD', 10010); // @todo remove in future
define('C__CMDB__VIEW__LIST_CATEGORY', 1002);
define('C__CMDB__VIEW__LIST_OBJECTTYPE', 1003);
define('C__CMDB__VIEW__CONFIG_OBJECTTYPE', 1004);
define('C__CMDB__VIEW__CONFIG_SYSTEMDATA', 1005);
define('C__CMDB__VIEW__TREE_OBJECT', 1006);
define('C__CMDB__VIEW__TREE_LOCATION', 1007);
define('C__CMDB__VIEW__TREE_OBJECTTYPE', 1008);
define('C__CMDB__VIEW__TREE_RELATION', 1009);

// View constants for the left-side location navigation.
define('C__CMDB__VIEW__TREE_LOCATION__LOCATION', 1);
define('C__CMDB__VIEW__TREE_LOCATION__LOGICAL_UNITS', 2);
define('C__CMDB__VIEW__TREE_LOCATION__COMBINED', 3);

// View constants for objecttype sorting.
define('C__CMDB__VIEW__OBJECTTYPE_SORTING__AUTOMATIC', 1);
define('C__CMDB__VIEW__OBJECTTYPE_SORTING__MANUAL', 2);

// All category views have the same ID. We do all the category work automatically now.
define('C__CMDB__VIEW__CATEGORY_GLOBAL', 1100);
define('C__CMDB__VIEW__CATEGORY_SPECIFIC', 1100);
define('C__CMDB__VIEW__CATEGORY', 1100);

define('C__CMDB__VIEW__MISC_WELCOME', 1014);
define('C__CMDB__VIEW__MISC_BLANK', 1015);

// Error constants, can be replaced by LC.
define('C__CMDB__ERROR__NAVIGATION', 0x8001);
define('C__CMDB__ERROR__OBJECT_OVERVIEW', 0x8002);
define('C__CMDB__ERROR__ACTION_PROCESSOR', 0x8003);
define('C__CMDB__ERROR__CATEGORY_BUILDER', 0x8004);
define('C__CMDB__ERROR__DISTRIBUTOR', 0x8005);
define('C__CMDB__ERROR__CATEGORY_PROCESSOR', 0x8006);
define('C__CMDB__ERROR__ACTION_CATEGORY_UPDATE', 0x9001);

// Constants.
define('C__CMDB__CATEGORY__TYPE_GLOBAL', 0);
define('C__CMDB__CATEGORY__TYPE_SPECIFIC', 1);
define('C__CMDB__CATEGORY__TYPE_CUSTOM', 4);

// Object tree increments.
define('C__CMDB__TREE_OBJECT__INC_GLOBAL', 10000);
define('C__CMDB__TREE_OBJECT__INC_SPECIFIC', 20000);
define('C__CMDB__TREE_OBJECT__INC_MODULE', 40000);
define('C__CMDB__TREE_OBJECT__INC_GLOBAL_EXT', 100000);
define('C__CMDB__TREE_OBJECT__INC_SPECIFIC_EXT', 200000);
define('C__CMDB__TREE_OBJECT__INC_MODULE_EXT', 400000);

define('C__CMDB__TREE_NODE__BACK', 500001);
define('C__CMDB__TREE_NODE__PARENT', -1);

define('C__LINK__CATS', 1081);

// Other Tree constants.
define('C__CMDB__TREE_ICON', 'dtreeIcon');

// Parameter constants. Probably we need to exchange some.
define('C__GET__AJAX_CALL', 'call');
define('C__GET__AJAX', 'ajax');
define('C__GET__SCOPE', 'scoped');
define('C__CMDB__GET__VIEWMODE', 'viewMode');
define('C__CMDB__GET__TREEMODE', 'tvMode');
define('C__CMDB__GET__TREETYPE', 'tvType');
define('C__CMDB__GET__OBJECTGROUP', 'objGroupID');
define('C__CMDB__GET__OBJECTTYPE', 'objTypeID');
define('C__CMDB__GET__OBJECT', 'objID');
define('C__CMDB__GET__CATTYPE', 'catTypeID');
define('C__CMDB__GET__CATG', 'catgID');
define('C__CMDB__GET__CATS', 'catsID');
define('C__CMDB__GET__CATG_CUSTOM', 'customID');
define('C__CMDB__GET__CATD', 'catdID');
define('C__CMDB__GET__POPUP', 'popup');
define('C__CMDB__GET__CAT_MENU_SELECTION', 'catMenuSelection');
define('C__CMDB__GET__EDITMODE', 'editMode');
define('C__CMDB__GET__CAT_LIST_VIEW', 'catListView');
define('C__CMDB__GET__CATD_CHECK', 'catdCheck');
define('C__CMDB__GET__SUBCAT', 'subcatID');
define('C__CMDB__GET__SUBCAT_ENTRY', 'subcatEntryID');
define('C__CMDB__GET__CONNECTION_TYPE', 'connectionType');
define('C__CMDB__GET__LDEVSERVER', 'ldevserverID');

// CMDB: Category levels while browsing IN a category.
define('C__CMDB__GET__CATLEVEL_1', 'cat1ID');
define('C__CMDB__GET__CATLEVEL_2', 'cat2ID');
define('C__CMDB__GET__CATLEVEL_3', 'cat3ID');
define('C__CMDB__GET__CATLEVEL_4', 'cat4ID');
define('C__CMDB__GET__CATLEVEL_5', 'cat5ID');
define('C__CMDB__GET__CATLEVEL', 'cateID');
define('C__CMDB__GET__CATLEVEL_MAX', 5);

// CMDB: Ranking levels - used in Low-Level API for deletion
define('C__CMDB__RANK__DIRECTION_DELETE', 1);
define('C__CMDB__RANK__DIRECTION_RECYCLE', 2);
define('C__CMDB__RANK__PURGE', 3);

// CMDB: DAO-inner constants for direction and type of network-type elements.
define('C__CMDB__DAO_NET_PORT__AHEAD', 0); // Connectionspecific
define('C__CMDB__DAO_NET_PORT__REAR', 1); // Connectionspecific
define('C__CMDB__DAO_NET_PORT__PHYSICAL', 1); // Portspecific
define('C__CMDB__DAO_NET_PORT__VIRTUAL', 2); // Portspecific
define('C__CMDB__DAO_NET_INTERFACE__PHYSICAL', 1); // Interfacespecific
define('C__CMDB__DAO_NET_INTERFACE__VIRTUAL', 2); // Interfacespecific

// CMDB: DAO-inner constants for endpoint selection of an universal interface.
define('C__CMDB__DAO_UI_ENDPOINT__AHEAD', 1);
define('C__CMDB__DAO_UI_ENDPOINT__REAR', 2);

// CMDB: DAO-inner constants for endpoint selection of a FC storage connection.
define('C__CMDB__DAO_STOR_FC__AHEAD', 1);
define('C__CMDB__DAO_STOR_FC__REAR', 2);

// CMDB ACTIONS.
define('C__CMDB__ACTION__CATEGORY_CREATE', 0x0001);
define('C__CMDB__ACTION__CATEGORY_RANK', 0x0002);
define('C__CMDB__ACTION__CATEGORY_UPDATE', 0x0003);
define('C__CMDB__ACTION__CONFIG_OBJECT', 0x0101);
define('C__CMDB__ACTION__CONFIG_OBJECTTYPE', 0x0102);
define('C__CMDB__ACTION__OBJECT_CREATE', 0x0201);
define('C__CMDB__ACTION__OBJECT_RANK', 0x0202);

/*******************************************************************************
 * DATABASE SPECIFIC CONSTANTS
 *******************************************************************************/
define('C__DB_GENERAL__INSERT', 1);
define('C__DB_GENERAL__UPDATE', 2);
define('C__DB_GENERAL__REPLACE', 3);

/*******************************************************************************
 * GLOBALLY USED GET PARAMETER CONSTANTS
 *******************************************************************************/
define('C__GET__AJAX_REQUEST', 'aj_request');
define('C__GET__FILE__ID', 'f_id');
define('C__GET__FILE_MANAGER', 'file_manager');
define('C__GET__FILE_NAME', 'file_name');
define('C__GET__MODULE', 'mod');
define('C__GET__MODULE_ID', 'moduleID');
define('C__GET__PARAM', 'param');
define('C__GET__MODULE_SUB_ID', 'moduleSubID');
define('C__GET__MAIN_MENU__NAVIGATION_ID', 'mNavID');
define('C__GET__NAVMODE', 'navMode');
define('C__GET__SETTINGS_PAGE', 'pID');
define('C__GET__TREE_NODE', 'treeNode');
define('C__GET__ID', 'id');

/*******************************************************************************
 * USER SETTINGS PAGES
 *******************************************************************************/
define('C__SETTINGS_PAGE__USER', 1);
define('C__SETTINGS_PAGE__THEME', 2);
define('C__SETTINGS_PAGE__CMDB_STATUS', 3);
define('C__SETTINGS_PAGE__SYSTEM', 4);

/*******************************************************************************
 * CONSTANTS FOR SEARCH  MODULE
 *******************************************************************************/
define('C__SEARCH__GET__WHAT', 's');
define('C__SEARCH__GET__HIGHLIGHT', 'highlight');

// Virtual machine.
define('C__VM__GUEST', 2);
define('C__VM__NO', 3);

/*******************************************************************************
 * CATEGORY PROPERTIES
 *******************************************************************************/
define('C__PROPERTY_TYPE__STATIC', 1);
define('C__PROPERTY_TYPE__DYNAMIC', 2);

define('C__PROPERTY__INFO', 'info');
define('C__PROPERTY__INFO__TITLE', 'title');
define('C__PROPERTY__INFO__DESCRIPTION', 'description');
define('C__PROPERTY__INFO__PRIMARY', 'primary_field');
define('C__PROPERTY__INFO__TYPE', 'type');
define('C__PROPERTY__INFO__BACKWARD', 'backward');

define('C__PROPERTY__INFO__TYPE__TEXT', 'text');
define('C__PROPERTY__INFO__TYPE__TEXTAREA', 'textarea');
define('C__PROPERTY__INFO__TYPE__DOUBLE', 'double');
define('C__PROPERTY__INFO__TYPE__FLOAT', 'float');
define('C__PROPERTY__INFO__TYPE__INT', 'int');
define('C__PROPERTY__INFO__TYPE__N2M', 'n2m');
define('C__PROPERTY__INFO__TYPE__DIALOG', 'dialog');
define('C__PROPERTY__INFO__TYPE__DIALOG_PLUS', 'dialog_plus');
define('C__PROPERTY__INFO__TYPE__DIALOG_LIST', 'dialog_list');
define('C__PROPERTY__INFO__TYPE__DATE', 'date');
define('C__PROPERTY__INFO__TYPE__DATETIME', 'datetime');
define('C__PROPERTY__INFO__TYPE__OBJECT_BROWSER', 'object_browser');
define('C__PROPERTY__INFO__TYPE__MULTISELECT', 'multiselect');
define('C__PROPERTY__INFO__TYPE__MONEY', 'money');
define('C__PROPERTY__INFO__TYPE__AUTOTEXT', 'autotext');
define('C__PROPERTY__INFO__TYPE__UPLOAD', 'upload');
define('C__PROPERTY__INFO__TYPE__COMMENTARY', 'commentary');
define('C__PROPERTY__INFO__TYPE__PASSWORD', 'password');
define('C__PROPERTY__INFO__TYPE__TIMEPERIOD', 'timeperiod');

define('C__PROPERTY__DATA', 'data');
define('C__PROPERTY__DATA__TYPE', 'type');
define('C__PROPERTY__DATA__FIELD', 'field');
define('C__PROPERTY__DATA__RELATION_TYPE', 'relation_type');
define('C__PROPERTY__DATA__RELATION_HANDLER', 'relation_handler');
define('C__PROPERTY__DATA__FIELD_ALIAS', 'field_alias');
define('C__PROPERTY__DATA__TABLE_ALIAS', 'table_alias');
define('C__PROPERTY__DATA__SOURCE_TABLE', 'source_table');
define('C__PROPERTY__DATA__REFERENCES', 'references');
define('C__PROPERTY__DATA__READONLY', 'readonly');
define('C__PROPERTY__DATA__JOIN', 'join');
define('C__PROPERTY__DATA__JOIN_LIST', 'join_list');
define('C__PROPERTY__DATA__INDEX', 'index');
define('C__PROPERTY__DATA__SELECT', 'select');
define('C__PROPERTY__DATA__FIELD_FUNCTION', 'field_function');
define('C__PROPERTY__DATA__SORT', 'sort');
define('C__PROPERTY__DATA__SORT_ALIAS', 'sort_alias');
define('C__PROPERTY__DATA__ENCRYPT', 'encrypt');

define('C__PROPERTY__UI', 'ui');
define('C__PROPERTY__UI__ID', 'id');
define('C__PROPERTY__UI__TYPE', 'type');
define('C__PROPERTY__UI__PARAMS', 'params');
define('C__PROPERTY__UI__DEFAULT', 'default');
define('C__PROPERTY__UI__PLACEHOLDER', 'placeholder');
define('C__PROPERTY__UI__EMPTYMESSAGE', 'emptyMessage');

define('C__PROPERTY__CHECK', 'check');
define('C__PROPERTY__CHECK__MANDATORY', 'mandatory');
define('C__PROPERTY__CHECK__VALIDATION', 'validation');
define('C__PROPERTY__CHECK__SANITIZATION', 'sanitization');
define('C__PROPERTY__CHECK__UNIQUE_OBJ', 'unique_obj');
define('C__PROPERTY__CHECK__UNIQUE_OBJTYPE', 'unique_objtype');
define('C__PROPERTY__CHECK__UNIQUE_GLOBAL', 'unique_global');

define('C__PROPERTY__PROVIDES', 'provides');
define('C__PROPERTY__PROVIDES__SEARCH', 1);
define('C__PROPERTY__PROVIDES__IMPORT', 2);
define('C__PROPERTY__PROVIDES__EXPORT', 4);
define('C__PROPERTY__PROVIDES__REPORT', 8);
define('C__PROPERTY__PROVIDES__LIST', 16);
define('C__PROPERTY__PROVIDES__MULTIEDIT', 32);
define('C__PROPERTY__PROVIDES__VALIDATION', 64);
define('C__PROPERTY__PROVIDES__VIRTUAL', 128);
define('C__PROPERTY__PROVIDES__SEARCH_INDEX', 256);

define('C__PROPERTY__FORMAT', 'format');
define('C__PROPERTY__FORMAT__CALLBACK', 'callback');
define('C__PROPERTY__FORMAT__UNIT', 'unit');
define('C__PROPERTY__FORMAT__REQUIRES', 'requires');

define('C__PROPERTY__DEPENDENCY', 'dependency');
define('C__PROPERTY__DEPENDENCY__PROPKEY', 'propkey');
define('C__PROPERTY__DEPENDENCY__SMARTYPARAMS', 'smartyParams');
define('C__PROPERTY__DEPENDENCY__CONDITION', 'condition');
define('C__PROPERTY__DEPENDENCY__CONDITION_VALUE', 'conditionValue');
define('C__PROPERTY__DEPENDENCY__SELECT', 'select');

define('C__PROPERTY__UI__TYPE__POPUP', 'popup');
define('C__PROPERTY__UI__TYPE__MULTISELECT', 'multiselect');
define('C__PROPERTY__UI__TYPE__TEXT', 'text');
define('C__PROPERTY__UI__TYPE__LINK', 'link');
define('C__PROPERTY__UI__TYPE__TEXTAREA', 'textarea');
define('C__PROPERTY__UI__TYPE__DIALOG', 'dialog');
define('C__PROPERTY__UI__TYPE__DIALOG_LIST', 'f_dialog_list');
define('C__PROPERTY__UI__TYPE__DATE', 'date');
define('C__PROPERTY__UI__TYPE__DATETIME', 'datetime');
define('C__PROPERTY__UI__TYPE__CHECKBOX', 'checkbox');
define('C__PROPERTY__UI__TYPE__PROPERTY_SELECTOR', 'f_property_selector');
define('C__PROPERTY__UI__TYPE__AUTOTEXT', 'autotext');
define('C__PROPERTY__UI__TYPE__UPLOAD', 'upload');
define('C__PROPERTY__UI__TYPE__WYSIWYG', 'wysiwyg');

// We use these constants for the "get_properties()" method.
define('C__PROPERTY__WITH__VALIDATION', 1);
define('C__PROPERTY__WITH__DEFAULTS', 2);
// define('C__PROPERTY__WITH__', 4); // We use these constants "bitwise"!

// Defining a global "wildcard" symbol.
define('C__WILDCARD', '*');

// We define some "day" and "month" constants.
define('C__DAY__MONDAY', 'monday');
define('C__DAY__TUESDAY', 'tuesday');
define('C__DAY__WEDNESDAY', 'wednesday');
define('C__DAY__THURSDAY', 'thursday');
define('C__DAY__FRIDAY', 'friday');
define('C__DAY__SATURDAY', 'saturday');
define('C__DAY__SUNDAY', 'sunday');

define('C__MONTH__JANUARY', 'january');
define('C__MONTH__FEBRUARY', 'february');
define('C__MONTH__MARCH', 'march');
define('C__MONTH__APRIL', 'april');
define('C__MONTH__MAY', 'may');
define('C__MONTH__JUNE', 'june');
define('C__MONTH__JULY', 'july');
define('C__MONTH__AUGUST', 'august');
define('C__MONTH__SEPTEMBER', 'september');
define('C__MONTH__OCTOBER', 'october');
define('C__MONTH__NOVEMBER', 'november');
define('C__MONTH__DECEMBER', 'december');

/*******************************************************************************
 * Categories' properties (deprecated)
 *******************************************************************************/

/**
 * @deprecated
 */
define('C__CATEGORY_DATA__HELPER', 'helper');

/**
 * @deprecated
 */
define('C__CATEGORY_DATA__METHOD', 'method');

/**
 * A constant for the "value" string.
 * Will be used quite often - especially inside the import and export classes and helper.
 */
define('C__DATA__VALUE', 'value');

/**
 * A constant for the "title" string.
 * Will be used quite often - especially inside the import and export classes and helper.
 */
define('C__DATA__TITLE', 'title');

/**
 * A constant for the "tag" string.
 * Will be used quite often - especially inside the import and export classes and helper.
 */
define('C__DATA__TAG', 'tag');

// Property type 'text' means type VARCHAR(255) in SQL.
define('C__TYPE__TEXT', 'text');
// Property type 'text_area', 'json' and 'image' means type TEXT in SQL.
define('C__TYPE__TEXT_AREA', 'text_area');
define('C__TYPE__JSON', 'json');
// Property type 'int' means type INT(10) in SQL.
define('C__TYPE__INT', 'int');
define('C__TYPE__FLOAT', 'float');
define('C__TYPE__DOUBLE', 'double');
define('C__TYPE__DATE', 'date');
define('C__TYPE__DATE_TIME', 'date_time');

// Category property's value type. Defaults to 'text'.
define('C__CATEGORY_DATA__FORMAT', 'format');

// Defines whether migration is active or inactive. Defaults to true.
define('C__UPDATE_MIGRATION', true);

/**
 * License related constants
 */
define('C__LICENCE__OBJECT_COUNT', 0x001);
define('C__LICENCE__DB_NAME', 0x002);
define('C__LICENCE__CUSTOMER_NAME', 0x003);
define('C__LICENCE__REG_DATE', 0x004);
define('C__LICENCE__RUNTIME', 0x005);
define('C__LICENCE__EMAIL', 0x006);
define('C__LICENCE__KEY', 0x007);
define('C__LICENCE__TYPE', 0x008);
define('C__LICENCE__DATA', 0x009);
define('C__LICENCE__CONTRACT', 0x010);
define('C__LICENCE__MAX_CLIENTS', 0x011);

define('LICENCE_ERROR_OBJECT_COUNT', -1);
define('LICENCE_ERROR_DB', -2);
define('LICENCE_ERROR_REG_DATE', -3);
define('LICENCE_ERROR_OVERTIME', -4);
define('LICENCE_ERROR_KEY', -5);
define('LICENCE_ERROR_EXISTS', -6);
define('LICENCE_ERROR_TYPE', -7);
define('LICENCE_ERROR_INVALID', -8);
define('LICENCE_ERROR_UNREADABLE', -9);
define('LICENCE_ERROR_INVALID_TYPE', -10);
define('LICENCE_ERROR_NO_DB', -11);
define('LICENCE_ERROR_SYSTEM', -100);

define('C__LICENCE_TYPE__SINGLE', 0);
define('C__LICENCE_TYPE__HOSTING', 1);
define('C__LICENCE_TYPE__HOSTING_SINGLE', 2);
define('C__LICENCE_TYPE__BUYERS_LICENCE', 3);
define('C__LICENCE_TYPE__BUYERS_LICENCE_HOSTING', 4);

define("C__LICENCE_TYPE__NEW__IDOIT", 5);
define("C__LICENCE_TYPE__NEW__ADDON", 6);

/**
 * Define the default TCPDF font directory. This is necessary, because we copy all TCPDF fonts in our own "<i-doit>/upload/fonts" dir.
 */
if (!defined('K_PATH_FONTS')) {
    define('K_PATH_FONTS', dirname(__DIR__) . '/upload/fonts/');
}
