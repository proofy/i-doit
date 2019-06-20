<?php

/**
 * i-doit - class autoloader
 *
 * @package     i-doit
 * @subpackage  General
 * @author      Dennis Stücken <dstuecken@i-doit.org>
 * @version     0.9
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */

/**
 * The autoloader for our classes.
 *
 * @param   string $p_classname
 *
 * @return  boolean
 */
function isys_autoload($p_classname)
{
    try {
        global $g_dirs;

        $l_base_dir = __DIR__ . '/../';

        $g_dirs['class'] = $l_base_dir . '/src/classes/';

        // Check for autoload-cache.
        include_once 'caching.inc.php';

        if (($l_path = isys_caching::factory('autoload')
                ->get($p_classname)) && is_readable($l_path)) {
            include_once $l_path;

            return true;
        }

        $l_path = false;

        if (strpos($p_classname, "isys_exception") === 0) {
            // Exceptions.
            $l_path = $g_dirs["class"] . "exceptions/";
        } else {
            if (strpos($p_classname, "isys_library") === 0) {
                // Libraries.
                $l_path = $g_dirs["class"] . "libraries/";
            } else {
                if (strpos($p_classname, "isys_protocol") === 0) {
                    // Protocol.
                    $l_path = $g_dirs["class"] . "protocol/";
                } else {
                    if (strpos($p_classname, "isys_connector") === 0) {
                        // Connector.
                        if (strpos($p_classname, "isys_connector_ticketing") === 0) {
                            $l_path = $g_dirs["class"] . "connector/ticketing/";
                        } else {
                            $l_path = $g_dirs["class"] . "connector/";
                        }
                    } else {
                        if (strpos($p_classname, "isys_smarty") === 0) {
                            // Smarty plugins.
                            $l_path = $g_dirs["class"] . "smarty/";
                        } else {
                            if ($p_classname === 'isys_module' || $p_classname === 'isys_module_dao' || $p_classname === 'isys_module_interface' ||
                                $p_classname === 'isys_module_installable' || $p_classname === 'isys_module_hookable' || $p_classname === 'isys_module_authable') {
                                $l_path = $g_dirs["class"] . "modules/";
                            } else {
                                if (strpos($p_classname, "isys_module") === 0) {
                                    $l_path = $g_dirs["class"] . 'modules/' . substr($p_classname, 12) . '/';
                                } else {
                                    if (strpos($p_classname, "isys_component") === 0) {
                                        // Components.
                                        $l_path = $g_dirs["class"] . "components/";
                                    } else {
                                        if (strpos($p_classname, 'isys_format') === 0) {
                                            // Format.
                                            $l_path = $g_dirs['class'] . 'format/';
                                        } else {
                                            if (strpos($p_classname, "isys_contact") === 0) {
                                                // Contact and identities.
                                                if (strpos($p_classname, "isys_contact_dao") === 0) {
                                                    $l_path = $g_dirs["class"] . "contact/dao/";
                                                }
                                            } else {
                                                if (strpos($p_classname, "isys_ajax") === 0) {
                                                    // Ajax.
                                                    if (strpos($p_classname, "isys_ajax_handler") === 0) {
                                                        $l_path = $g_dirs["class"] . "ajax/handler/";
                                                    } else {
                                                        $l_path = $g_dirs["class"] . "ajax/";
                                                    }
                                                } else {
                                                    if (strpos($p_classname, "isys_auth") === 0) {
                                                        // Rights.
                                                        if (strpos($p_classname, "isys_auth_dao_") === 0 || strpos($p_classname, "isys_auth_module_dao") === 0) {
                                                            $l_path = $g_dirs["class"] . "auth/dao/";
                                                        } else {
                                                            $l_path = $g_dirs["class"] . "auth/";
                                                        }
                                                    } else {
                                                        if (strpos($p_classname, "isys_import") === 0) {
                                                            // Import.
                                                            if (!isset($g_dirs["import"])) {
                                                                $g_dirs["import"] = $g_dirs["class"] . "import/";
                                                            }

                                                            if (strpos($p_classname, "isys_import_handler") === 0) {
                                                                $l_path = $g_dirs["import"] . "handler/";
                                                            } else {
                                                                $l_path = $g_dirs["import"];
                                                            }
                                                        } else {
                                                            if (strpos($p_classname, "isys_export") === 0) {
                                                                // Export.
                                                                if (strpos($p_classname, "isys_export_type") === 0) {
                                                                    $l_path = $g_dirs["class"] . "export/type/";
                                                                } else {
                                                                    if (strpos($p_classname, "isys_export_cmdb") === 0) {
                                                                        $l_path = $g_dirs["class"] . "export/cmdb/";
                                                                    } else {
                                                                        if (strpos($p_classname, "isys_export_csv") === 0) {
                                                                            $l_path = $g_dirs["class"] . "export/csv/";
                                                                        } else {
                                                                            $l_path = $g_dirs["class"] . "export/";
                                                                        }
                                                                    }
                                                                }
                                                            } else {
                                                                if (strpos($p_classname, 'isys_factory') === 0) {
                                                                    // Factory.
                                                                    $l_path = $g_dirs['class'] . 'factory/';
                                                                } else {
                                                                    if (strpos($p_classname, 'isys_log') === 0) {
                                                                        // Logging.
                                                                        $l_path = $g_dirs['class'] . 'log/';
                                                                    } else {
                                                                        if (strpos($p_classname, "isys_notification") === 0) {
                                                                            // Notifications.
                                                                            $l_path = $g_dirs['class'] . 'notification/';
                                                                        } else {
                                                                            if (strpos($p_classname, "isys_report") === 0) {
                                                                                // Reports.
                                                                                if (strpos($p_classname, "isys_report_view") === 0) {
                                                                                    $l_path = $g_dirs["class"] . "report/views/";
                                                                                } else {
                                                                                    $l_path = $g_dirs["class"] . "report/";
                                                                                }
                                                                            } else {
                                                                                if (strpos($p_classname, "isys_event_cmdb") === 0) {
                                                                                    // CMDB events.
                                                                                    $l_path = $g_dirs["class"] . "event/cmdb/";
                                                                                } else {
                                                                                    if (strpos($p_classname, "isys_event_task") === 0) {
                                                                                        // Task events.
                                                                                        $l_path = $g_dirs["class"] . "event/task/";
                                                                                    } else {
                                                                                        if (strpos($p_classname, "isys_event") === 0) {
                                                                                            // Events.
                                                                                            $l_path = $g_dirs["class"] . "event/";
                                                                                        } else {
                                                                                            if (strpos($p_classname, "isys_widget") === 0) {
                                                                                                // Widgets.
                                                                                                $l_path = $g_dirs["class"] . "widgets/";
                                                                                            } else {
                                                                                                if (strpos($p_classname, "isys_tree") === 0) {
                                                                                                    // Tree.
                                                                                                    $l_path = $g_dirs["class"] . "tree/";
                                                                                                } else {
                                                                                                    if (strpos($p_classname, "isys_graph") === 0) {
                                                                                                        // Graph.
                                                                                                        $l_path = $g_dirs["class"] . "graph/";
                                                                                                    } else {
                                                                                                        if (strpos($p_classname, "isys_handler") === 0) {
                                                                                                            // Handlers.
                                                                                                            $l_path = $g_dirs["handler"];
                                                                                                        } else {
                                                                                                            if (strpos($p_classname, "isys_workflow") === 0) {
                                                                                                                // Workflow.
                                                                                                                if (strpos($p_classname, "isys_workflow_dao_list") === 0) {
                                                                                                                    $l_path = $g_dirs["class"] . "workflow/dao/list/";
                                                                                                                } else {
                                                                                                                    if (strpos($p_classname, "isys_workflow_dao") === 0) {
                                                                                                                        $l_path = $g_dirs["class"] . "workflow/dao/";
                                                                                                                    } else {
                                                                                                                        if (strpos($p_classname, "isys_workflow_view") === 0) {
                                                                                                                            $l_path = $g_dirs["class"] . "workflow/view/";
                                                                                                                        } else {
                                                                                                                            if (strpos($p_classname,
                                                                                                                                    "isys_workflow_action") === 0) {
                                                                                                                                $l_path = $g_dirs["class"] .
                                                                                                                                    "workflow/action/";
                                                                                                                            } else {
                                                                                                                                $l_path = $g_dirs["class"] . "workflow/";
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            } else {
                                                                                                                if (0 === strpos($p_classname, "isys_popup")) {
                                                                                                                    // Popups.
                                                                                                                    $l_path = $g_dirs["class"] . "popups/";
                                                                                                                } else {
                                                                                                                    if (0 === strpos($p_classname, "isys_helper")) {
                                                                                                                        $l_path = $g_dirs["class"] . "helper/";
                                                                                                                    } else {
                                                                                                                        if (0 === strpos($p_classname, "isys_cache")) {
                                                                                                                            $l_path = $g_dirs["class"] . "cache/";
                                                                                                                        } else {
                                                                                                                            if (0 ===
                                                                                                                                strpos($p_classname, "isys_application") ||
                                                                                                                                0 === strpos($p_classname, "isys_callback") ||
                                                                                                                                0 === strpos($p_classname, "isys_request") ||
                                                                                                                                0 === strpos($p_classname, "isys_register") ||
                                                                                                                                0 === strpos($p_classname, "isys_notify") ||
                                                                                                                                0 === strpos($p_classname, "isys_settings") ||
                                                                                                                                0 === strpos($p_classname, "isys_array") ||
                                                                                                                                0 === strpos($p_classname, "isys_core") ||
                                                                                                                                0 === strpos($p_classname, "isys_tenant") ||
                                                                                                                                0 === strpos($p_classname, "isys_route") ||
                                                                                                                                0 === strpos($p_classname,
                                                                                                                                    "isys_request_controller") ||
                                                                                                                                0 === strpos($p_classname, "isys_string") ||
                                                                                                                                0 ===
                                                                                                                                strpos($p_classname, "isys_controller") ||
                                                                                                                                0 ===
                                                                                                                                strpos($p_classname, "isys_tenantsettings") ||
                                                                                                                                0 ===
                                                                                                                                strpos($p_classname, "isys_usersettings")) {
                                                                                                                                $l_path = $g_dirs["class"] . "core/";
                                                                                                                            } else {
                                                                                                                                if (0 ===
                                                                                                                                    strpos($p_classname, "isys_update")) {
                                                                                                                                    $l_path = $l_base_dir .
                                                                                                                                        "/updates/classes/";
                                                                                                                                } else {
                                                                                                                                    if (0 === strpos($p_classname, "isys_")) {
                                                                                                                                        $l_path = $g_dirs["class"] . "isys/";
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        // Check if the path is set.
        if ($l_path) {
            // Include the file or handle the error.
            if ((file_exists($l_path . $p_classname . ".class.php") && include_once($l_path . $p_classname . ".class.php"))) {
                // Add the new file to the autoloader.
                isys_caching::factory('autoload')
                    ->set($p_classname, $l_path . $p_classname . ".class.php");

                return true;
            }
        }

        return false;
    } catch (ErrorException $e) {
        die($e->getMessage());
    }
}

// Include composer's autoloader
$vendorDir = dirname(__DIR__) . '/vendor/';
if (file_exists($vendorDir . 'autoload.php')) {
    include_once($vendorDir . 'autoload.php');
} else {
    throw new Exception('Composer\'s autoloader not found in ' . $vendorDir .
        '. Composer may not initialized! Run "composer install" in root directory! (https://getcomposer.org)');
}
unset($vendorDir);

try {
    /* Use symfonys classmap loader, if a classmap is available */
    if (!file_exists(__DIR__ . '/classmap.inc.php')) {
        throw new \Exception('Classmap file does not exist.');
    }

    \idoit\Component\ClassLoader\MapClassLoader::factory(include_once(__DIR__ . '/classmap.inc.php'), dirname(__DIR__) . '/')
        ->register(true);

    // Register autoloader for isys_module classes
    spl_autoload_register(function ($classname) {
        $classname = str_replace('\\', '', $classname);
        if (strpos($classname, "isys_module") === 0) {
            $path = isys_application::instance()->app_path . '/src/classes/modules/' . substr($classname, 12) . '/';
            if ((file_exists($path . $classname . ".class.php") && include_once($path . $classname . ".class.php"))) {
                return true;
            }
        }

        return false;
    });
} catch (\Exception $e) {
    include_once('classes/modules/manager/isys_module_manager_autoload.class.php');
    include_once('autoload-psr4.inc.php');
}

// Fallback to legacy behaviour, if needed
spl_autoload_register('isys_autoload', false, false);

$loader = \idoit\Psr4AutoloaderClass::factory()
    ->register();