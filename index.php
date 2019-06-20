<?php
/**
 * i-doit
 *
 * Index / Front Controller
 *
 * @package     i-doit
 * @subpackage  General
 * @version     1.0.1
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 *
 * - http://i-doit.org
 * - http://i-doit.org/forum
 */

/**
 * index.php/Front controller - program sequence:
 * ---------------------------------------------------------------------------
 * 1. Determine current directory (for absolute path references)
 * 2. Load Configuration
 * (3. Check directories (we have to make this UNIX-compatible at first))
 * 4. Load globals and surrounding function libraries
 * 5. If external request is wanted, do it.
 * 6. If i-doit internal request, forward to hypergate.inc.php
 * ---------------------------------------------------------------------------
 */
// Set the current start time for detecting the php processing time.
$g_start_time = microtime(true);

// Determine our directory.
$g_absdir = dirname(__FILE__);
define('WEB_CONTEXT', true);

/**
 * @return mixed
 */
function gettime()
{
    global $g_start_time;

    return (microtime(true) - $g_start_time);
}

// Set error reporting.
error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED & ~E_STRICT & ~E_WARNING);

/* Set default charset to utf-8 */
ini_set('default_charset', 'utf-8');

// Set maximal execution time.
if (ini_get("max_execution_time") < 600) {
    set_time_limit(600);
}

/**
 * Dies with a message.
 *
 * @param string $p_message
 */
function startup_die($p_message)
{
    echo '<style>body {background-color:transparent;} .error {background-color:#ffdddd; border:1px solid #ff4343; color: #701719; overflow:auto; padding:10px;}</style>' .
        '<div><img style="float:right; margin-left: 15px; margin-right:5px;" width="100" src="images/logo.png" /><p class="error">' . $p_message . '</p></div>';
    die();
}

if ((int)ini_get("memory_limit") < 128) {
    ini_set("memory_limit", "128M");
}

if ((int)ini_get("upload_max_filesize") < 8) {
    ini_set("upload_max_filesize", "8M");
}

// Check configuration parameters of php.ini

// Allow FOPEN Wrapper for URLs.
ini_set("allow_url_fopen", "1");

if (!@include_once($g_absdir . "/src/constants.inc.php")) {
    startup_die("Error loading file: " . $g_absdir . "/src/constants.inc.php");
}

/**
 * Check for PHP Version and if it is compatible
 */
$l_php_version = phpversion();
if ($l_php_version == false) {
    startup_die("phpversion() failed. Your system isn't supported!");
}
if (!function_exists("version_compare") || version_compare($l_php_version, PHP_VERSION_MINIMUM, "<") == -1) {
    startup_die("You have PHP " . $l_php_version . ". You need at least PHP " . PHP_VERSION_MINIMUM . ".");
}

try {
    // Initialize framework.
    if (file_exists("src/config.inc.php") && include_once("src/config.inc.php")) {

        // Bootstrap.
        if (!include_once "src/bootstrap.inc.php") {
            startup_die("Could not find bootstrap.inc.php");
        }

        // Include caching implementation.
        if (!include_once "src/caching.inc.php") {
            startup_die("Could not find caching.inc.php");
        }

        \idoit\Context\Context::instance()->setOrigin(idoit\Context\Context::ORIGIN_GUI);

        global $g_dirs;

        // Temp cleanup.
        if (isset($_GET["IDOIT_DELETE_TEMPLATES_C"])) {
            $g_clear_temp = true;
            $l_directory = $g_dirs["temp"] . "smarty/";
        }

        if (isset($_GET["IDOIT_DELETE_TEMP"])) {
            $g_clear_temp = true;
            $l_directory = $g_dirs["temp"];
        } else {
            if (isset($_POST["IDOIT_DELETE_TEMP"])) {
                isys_glob_delete_recursive($g_dirs["temp"], $l_deleted, $l_undeleted);
            }
        }

        if ($g_clear_temp && isset($l_directory)) {
            echo "Deleting temporary files ...<br>\n";

            $l_deleted = 0;
            $l_undeleted = 0;
            isys_glob_delete_recursive($l_directory, $l_deleted, $l_undeleted, (ENVIRONMENT === 'development'));
            echo "Success: $l_deleted files - Failure: $l_undeleted files!<br />\n";

            unset($l_directory);

            if (isset($_GET["ajax"])) {
                die();
            }
        }
    } else {
        if (!require_once "setup/install.inc.php") {
            startup_die("Could not start installer. Setup files not found.");
        }
        die();
    }
} catch (Exception $e) {
    if (isset($_SERVER)) {
        isys_glob_display_error(stripslashes(nl2br($e->getMessage())));
    } else {
        printf($e->getMessage());
    }
    die();

}

try {
    // Process ajax requests.
    if (isset($_GET["ajax"])) {
        if (isys_application::instance()->session->is_logged_in()) {
            require_once("src/ajax.inc.php");
        }
    }
} catch (Exception $e) {
    if (isset($g_error) && $g_error) {
        isys_notify::error($g_error);
    }
    isys_notify::error($e->getMessage() . ' (' . $e->getFile() . ':' . $e->getLine() . ')');
    http_response_code(500);
    die;
}

if (isset($_GET["ajax"]) && isset($g_error) && $g_error) {
    http_response_code(500);
}

try {

    // Process api requests.
    if (isset($_GET['api'])) {
        try {
            switch ($_GET['api']) {
                case 'jsonrpc':
                    include_once('src/jsonrpc.php');
                    break;
            }
        } catch (Exception $e) {
            echo $e->getMessage();
        }

        die;
    }

    // Main request handler.
    switch ($_GET["load"]) {
        /*
        case "test":
            if (isset($_GET['type']))
            {
                $_GET['type'] = str_replace(chr(0), '', addslashes($_GET['type']));

                if (file_exists("src/tests/i-doit/" . strtolower($_GET['type']) . ".php"))
                {
                    global $g_comp_session;
                    $g_comp_session->include_mandator_cache();
                    include_once("src/tests/i-doit/" . strtolower($_GET['type']) . ".php");
                }
            }
            break;
        */
        case "api_properties":
            include_once("src/tools/php/properties.inc.php");
            break;

        case "property_infos":
            include_once("src/tools/php/property_infos.inc.php");
            break;

        case "css":
            include_once("src/tools/css/css.php");
            break;
        case "mod-css":
            include_once("src/tools/css/mod-css.php");
            break;

        case "update":
        default:
            // The hypergate is the i-doit-internal entrypoint, in which all i-doit internal requests are running.
            include_once "src/hypergate.inc.php";
            break;
    }

    // Get PHP processing time.
    if (isset($g_config["show_proc_time"])) {
        if ($g_config["show_proc_time"] == true) {
            echo "\n<!-- i-doit processing time: " . gettime() . " -->";
        }
    }
} catch (SmartyException $e) {
    try {
        \idoit\View\ExceptionView::factory()
            ->setDi(isys_application::instance()->container)
            ->draw($e);
    } catch (Exception $e) {
        isys_glob_display_error($e->getMessage());
        die();
    }
} catch (Exception $e) {
    isys_glob_display_error($e->getMessage());
    die();
}
