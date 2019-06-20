<?php
/**
 * i-doit
 *
 * LDAP handler configuration file
 *
 * @package    i-doit
 * @subpackage General
 * @author     Dennis Stücken <dstuecken@synetics.de>
 * @version    1.0
 * @copyright  synetics GmbH
 * @license    http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */

define("C__HANDLER__LDAP", 1);

/**
 * Automated login configuration
 */
$g_userconf = [
    "user"        => "admin",
    "pass"        => "admin",
    "mandator_id" => 1
];

/**
 * Ldap configuration.
 *
 * Can be overriden via tenant setting "ldap.config" with the following json structure:
 * {"import_rooms":false,"defaultCompany":"","deletedUsersBehaviour":"archive","rooms":[],"attributes":{"department":"department","phone_company":"telephonenumber","phone_home":"homephone","phone_mobile":"mobile","fax":"facsimiletelephonenumber","description":"info","personnel_number":"employeeid","organization":"company","office":"physicaldeliveryofficename"},"autoReactivateUsers":false,"ignoreUsersWithAttributes":[],"ignoreFunction":{}}
 *
 * Use http://www.jsoneditoronline.org/ to edit.
 */
$g_ldapconf = [
    /* Import rooms from ldap */
    "import_rooms"              => false,

    /* Automatically assign this company to every ldap user */
    "defaultCompany"            => '',

    /**
     * What to do with deleted users in your Active Directory:
     *   Possible values: archive, delete
     *
     * archive = set user stastus to archived
     * delete  = set user status to deleted
     *
     * It is currently not possible to delete or archive users in NDS or OpenLDAP.
     */
    'deletedUsersBehaviour'     => 'archive',

    /*
     * Attach users to Rooms statically
     * Syntax: i-doit Room-Title => i-doit Username(s) php-array-separated
     *
     * Example:
     *  "rooms" => [
     *   	"RZ01" => ["admin", "editor", "author],
     *   	"RZ02" => ["admin"]
     *  ]
     *
     */
    "rooms"                     => [],

    /**
     * Additional LDAP Attributes which will be imported to the i-doit user
     *
     * [
     *     "i-doit-field" => "ldap-attribute"
     * ]
     *
     * Possible i-doit-field attributes:
     *
     *  'academic_degree' => 'text',
     *  'function' => 'text',
     *  'service_designation' => 'text',
     *  'street' => 'text',
     *  'city'       => 'text',
     *  'zip_code'   => 'text',
     *  'phone_company' => 'text',
     *  'phone_home' => 'text',
     *  'phone_mobile' => 'text',
     *  'fax'        => 'text',
     *  'pager'      => 'text',
     *  'personnel_number' => 'text',
     *  'department' => 'text',
     *  'company' => 'text',
     *  'office' => 'text',
     *  'ldap_id' => 'text',
     *  'ldap_dn'    => 'text',
     *  'description' => 'text_area'
     *
     * Custom fields:
     *
     * If you want to store custom information you can use
     * the category extension in administration. You can configure
     * 8 custom fields for your individual purpose. Finally map these
     * attributes to the desired fields:
     *
     *  'i-doit: Field-Key' => 'LDAP-Field'   >>  'custom_3' => 'my_custom_ldap_field'
     *
     *  'custom_1' => 'text',
     *  'custom_2' => 'text',
     *  'custom_3' => 'text',
     *  'custom_4' => 'text',
     *  'custom_5' => 'text',
     *  'custom_6' => 'text',
     *  'custom_7' => 'text',
     *  'custom_8' => 'text'
     *
     * LDAP Attributes are individual. This default configuration is prepared for Active Directory:
     *
     */
    "attributes"                => [
        "department"       => "department",
        "phone_company"    => "telephonenumber",
        "phone_home"       => "homephone",
        "phone_mobile"     => "mobile",
        "fax"              => "facsimiletelephonenumber",
        "description"      => "info",
        "personnel_number" => "employeeid",
        "organization"     => "company",
        "office"           => "physicaldeliveryofficename",
    ],

    /**
     * To have a clean start, this setting automatically sets all users to status normal before syncing.
     * This is helpfull in case users were accidentally archived or deleted beforehand.
     *
     * Note that this only works with NDS & OpenLDAP since it is always enabled in Active Directory!
     * You should be aware of when setting this to true, with NDS or OpenLDAP it is currently not possible to identify deleted users to archive them later. Users are always enabled then!
     *
     * With "controller -v -m ldap fixstatus" you can also call this as a "one time option".
     */
    'autoReactivateUsers'       => false,

    /**
     * Disable sync for users with Attributes checked against 'ignoreFunction'.
     * This function helps preventing a synchronization of unwanted directory objects.
     *
     * The user will not be synchronized when ignoreFunction fails for ALL selected attributes.
     *
     * Examples:
     *  'ignoreUsersWithAttributes' => ['samaccountname', 'sn'], // Ignore users with empty loginname and lastname
     *  'ignoreUsersWithAttributes' => ['givenName', 'sn'],      // Ignore all users who have an empty first- and lastname
     *
     * Default (don't ignore anything):
     *  'ignoreUsersWithAttributes' => [],
     */
    'ignoreUsersWithAttributes' => [],

    /**
     * The check function used for ignoring users (see 'ignoreUsersWithAttributes')
     *
     * This cann be any callable php varibale handling function (http://php.net/manual/ref.var.php)
     * or a custom anonymous function (http://php.net/manual/functions.anonymous.php).
     *
     * Default:
     *   'ignoreFunction' => function($value) {
     *       return empty($value);
     *   }
     */
    'ignoreFunction'            => function ($value) {
        return empty($value);
    }
];