<?php
/**
 * i-doit
 *
 * Module initializer
 *
 * @package     i-doit
 * @subpackage  Modules
 * @author      Dennis Stücken <dstuecken@i-doit.com>
 * @version     1.1
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */

if (include_once('isys_module_report_autoload.class.php')) {
    spl_autoload_register('isys_module_report_autoload::init');
}

/* Register jdisc controller */
$GLOBALS['g_controller']['handler']['report'] = [
    'class' => 'isys_handler_report'
];

// Defining some constants.
define("C__REPORT__STANDARD", 0);
define("C__REPORT__CUSTOM", 1);

define("C__GET__REPORT_PAGE", "rpID");
define("C__GET__REPORT_REPORT_ID", "reportID");

define("C__REPORT_PAGE__REPORT_BROWSER", 1);
define("C__REPORT_PAGE__STANDARD_REPORTS", 2);
define("C__REPORT_PAGE__CUSTOM_REPORTS", 3);
define("C__REPORT_PAGE__QUERY_BUILDER", 4);
define("C__REPORT_PAGE__VIEWS", 5);

// Add a few widgets to the dashboard.
isys_register::factory('widget-register')
    ->set('reports', 'isys_dashboard_widgets_reports');

\idoit\Psr4AutoloaderClass::factory()
    ->addNamespace('idoit\Module\Report', __DIR__ . '/src/');
