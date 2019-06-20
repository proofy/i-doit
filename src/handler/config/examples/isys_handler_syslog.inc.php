<?php
/**
 * i-doit
 *
 * Syslog handler configuration file
 *
 * @package    i-doit
 * @subpackage General
 * @author     Dennis Bluemer <dbluemer@synetics.de>
 * @version    1.0
 * @copyright  synetics GmbH
 * @license    http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */

global $g_strSplitSyslogLine;

/* splits syslog-line in several parts */
$g_strSplitSyslogLine = "/(^[a-zA-Z]{3}[ ]+[\d]+ [\d\:\d]+) " .   /* date / time */
    "(([.\-0-9a-zA-Z]+)*" .               /* hostname */
    "(\b(?:\d{1,3}\.){3}\d{1,3}\b)*)+ " . /* IP-Address */
    "([a-zA-Z0-9-_\/\[\]:]+) " .          /* Processname */
    "(.*)/";                              /* Syslog-Message */

define("C__HANDLER__SYSLOG", 1);

$g_userconf = [
    "user"        => "admin",
    "pass"        => "admin",
    "mandator_id" => 1,
    "priorities"  => [
        "Emergency",
        "Alert",
        "Critical",
        "Error",
        "Warning",
        "Notice",
        "Info",
        "Debug"
    ],
    "logfiles"    => [
        "syslog/log/emerg.log",
        "syslog/log/alert.log",
        "syslog/log/crit.log",
        "syslog/log/error.log",
        "syslog/log/warning.log",
        "syslog/log/notice.log",
        "syslog/log/info.log",
        "syslog/log/debug.log"
    ],
    "alertlevels" => [
        4,
        4,
        3,
        3,
        2,
        2,
        1,
        1
    ]
];
?>