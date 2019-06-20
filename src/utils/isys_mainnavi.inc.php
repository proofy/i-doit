<?php
/**
 * Main navigation
 *
 * @package     i-doit
 * @subpackage  Utilities
 * @author      Andre Woesten <awoesten@i-doit.de>
 * @author      Leonard Fischer <lfischer@i-doit.org>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */

define('C__MAINMENU__WORKFLOWS', 3);
define('C__MAINMENU__EXTRAS', 4);

// Create the menu component.
$g_menu = isys_component_menu::instance();
$l_mainMenu_object_type_groups = $g_menu->get_objecttype_group_menu();
$l_mainMenu = $g_menu->get_mainmenu();

$l_activeMainMenuItem = 0;
if (defined('C__MAINMENU__CMDB_EXPLORER') && $_GET[C__CMDB__GET__VIEWMODE] == C__CMDB__VIEW__EXPLORER) {
    $l_activeMainMenuItem = C__MAINMENU__CMDB_EXPLORER;
} elseif ($_GET['mNavID'] == C__MAINMENU__WORKFLOWS ||
    $_GET[C__CMDB__GET__TREEMODE] == C__CMDB__VIEW__TREE_RELATION) {
    $l_activeMainMenuItem = C__MAINMENU__EXTRAS;
} elseif ($_GET[C__CMDB__GET__TREEMODE] == C__CMDB__VIEW__TREE_OBJECT || $_GET[C__CMDB__GET__TREEMODE] == C__CMDB__VIEW__TREE_OBJECTTYPE ||
    $_GET[C__CMDB__GET__TREEMODE] == C__CMDB__VIEW__LIST_OBJECT || $_GET[C__CMDB__GET__VIEWMODE] == C__CMDB__VIEW__LIST_OBJECT) {
    if (isset($_GET[C__CMDB__GET__OBJECTTYPE])) {
        $l_activeMainMenuItem = $g_menu->get_active_menu_by_objtype_as_constant($_GET[C__CMDB__GET__OBJECTTYPE]);
    } else {
        $l_activeMainMenuItem = false;
    }

    if (!$l_activeMainMenuItem && (is_value_in_constants($_GET[C__CMDB__GET__OBJECTTYPE], ['C__OBJTYPE__RELATION', 'C__OBJTYPE__PARALLEL_RELATION']))) {
        $l_activeMainMenuItem = C__MAINMENU__EXTRAS;
    }
} elseif (defined('C__WF__VIEW__TREE') && $_GET[C__CMDB__GET__TREEMODE] == C__WF__VIEW__TREE) {
    $l_activeMainMenuItem = C__MAINMENU__EXTRAS;
} else {
    if (!isset($_GET[C__GET__MODULE_ID]) || $_GET[C__GET__MODULE_ID] == defined_or_default('C__MODULE__CMDB')) {
        if (isset($_GET[C__CMDB__GET__OBJECTGROUP])) {
            $l_activeMainMenuItem = (int)$_GET[C__CMDB__GET__OBJECTGROUP] . '0';
        } elseif (isset($_GET[C__CMDB__GET__OBJECTTYPE])) {
            $l_activeMainMenuItem = $g_menu->get_active_menu_by_objtype_as_constant((int)$_GET[C__CMDB__GET__OBJECTTYPE]);
        }
        /*else {
            $l_activeMainMenuItem = C__OBJTYPE_GROUP__INFRASTRUCTURE . '0';
        }*/
    } else {
        $l_activeMainMenuItem = C__MAINMENU__EXTRAS;
    }
}

if (!is_int($l_activeMainMenuItem) && defined('C__MAINMENU__' . $l_activeMainMenuItem)) {
    $l_activeMainMenuItem = constant('C__MAINMENU__' . $l_activeMainMenuItem);
} elseif (!$l_activeMainMenuItem) {
    $l_activeMainMenuItem = $g_menu->get_default_mainmenu();
}

if ($l_activeMainMenuItem === 0 && defined('C__MAINMENU__INFRASTRUCTURE')) {
    $l_activeMainMenuItem = C__MAINMENU__INFRASTRUCTURE;
}

// Prepare needed variables.
if (!isset($_GET['mNavID'])) {
    if ($_GET['objGroupID'] == defined_or_default('C__OBJTYPE_GROUP__SOFTWARE')) {
        $l_gets['mNavID'] = 1;
    } elseif ($_GET['objGroupID'] == defined_or_default('C__OBJTYPE_GROUP__OTHER')) {
        $l_gets['mNavID'] = 3;
    } else {
        $l_gets['mNavID'] = 2;
    }

    $_GET['mNavID'] = $l_gets['mNavID'];
}

// .. and activate menu object. Show activ menu by Get-Parameter mNavID.
$g_menu->activate_menuobj($l_activeMainMenuItem);

$l_user_image_url = isys_cmdb_dao_category_g_image::instance(isys_application::instance()->database)
    ->get_image_name_by_object_id(isys_component_session::instance()
        ->get_user_id());

$l_person_row = isys_cmdb_dao_category_s_person_master::instance(isys_application::instance()->database)
    ->get_data(null, isys_component_session::instance()
        ->get_user_id())
    ->get_row();

$l_name_data = [
    'obj_title'  => $l_person_row['isys_obj__title'],
    'username'   => $l_person_row['isys_cats_person_list__title'],
    'title'      => $l_person_row['isys_cats_person_list__academic_degree'],
    'first_name' => $l_person_row['isys_cats_person_list__first_name'],
    'last_name'  => $l_person_row['isys_cats_person_list__last_name'],
];

switch (isys_usersettings::get('gui.login.display', 'user-name')) {
    default:
    case 'user-name':
        $l_user_name = $l_name_data['username'];
        break;

    case 'full-name':
        $l_user_name = implode(' ', array_filter([$l_name_data['title'], $l_name_data['first_name'], $l_name_data['last_name']]));
        break;

    case 'full-name-plus':
        $l_user_name = implode(' ', array_filter([$l_name_data['title'], $l_name_data['first_name'], $l_name_data['last_name']])) . ' (' . $l_name_data['username'] . ')';
        break;

    case 'first-last-name':
        $l_user_name = $l_name_data['first_name'] . ' ' . $l_name_data['last_name'];
        break;

    case 'first-last-name-abbreviation':
        $l_user_name = substr($l_name_data['first_name'], 0, 1) . '. ' . $l_name_data['last_name'];
        break;
}

if (empty($l_user_image_url)) {
    $l_user_image_url = 'images/user.png';
} else {
    $l_user_image_url = isys_helper_link::create_url([
        C__GET__MODULE_ID    => defined_or_default('C__MODULE__CMDB'),
        C__GET__FILE_MANAGER => 'image',
        'file'               => $l_user_image_url
    ]);
}

global $g_dirs;

isys_application::instance()->template->assign('g_link__user', isys_helper_link::create_url([
    C__GET__MODULE_ID     => defined_or_default('C__MODULE__SYSTEM'),
    C__GET__MODULE_SUB_ID => defined_or_default('C__MODULE__USER_SETTINGS'),
    C__GET__TREE_NODE     => 93,
    C__GET__SETTINGS_PAGE => 'login'
], true))
    ->assign('g_link__settings', isys_helper_link::create_url([C__GET__MODULE_ID => defined_or_default('C__MODULE__SYSTEM'), 'what' => 'system_settings'], true))
    ->assign('g_link__logout', isys_helper_link::create_url(['logout' => 1], true))
    ->assign('mainMenu', $l_mainMenu)
    ->assign('activeMainMenuItem', $l_activeMainMenuItem)
    ->assign('mainLogo', isys_tenantsettings::get('gui.logo.src', $g_dirs['images'] . 'logo16.png'))
    ->assign('full_user_name', implode(' ', array_filter([$l_name_data['title'], $l_name_data['first_name'], $l_name_data['last_name']])))
    ->assign('user_image_url', isys_application::instance()->www_path . $l_user_image_url)
    ->assign('user_name', trim($l_user_name));

if (defined('C__MODULE__PRO')) {
    if (defined('ISYS_LANGUAGE_GERMAN')) {
        isys_application::instance()->template->assign('flag_de', isys_glob_add_to_query('lang', 'de'));
    }

    if (defined('ISYS_LANGUAGE_ENGLISH')) {
        isys_application::instance()->template->assign('flag_en', isys_glob_add_to_query('lang', 'en'));
    }
}
