<?php

use idoit\AddOn\ExtensionProviderInterface;
use idoit\Module\Search\SearchExtension;

/**
 * i-doit
 *
 * Search module
 *
 * @package     i-doit
 * @subpackage  Modules
 * @author      Dennis Stücken <dstuecken@i-doit.com>
 * @version     1.7
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_module_search extends isys_module implements isys_module_interface, isys_module_authable, ExtensionProviderInterface
{
    // Define, if this module shall be displayed in the named menus.
    const DISPLAY_IN_MAIN_MENU   = true;
    const DISPLAY_IN_SYSTEM_MENU = false;

    // Define, that this module uses a "pretty" URL.
    const MAIN_MENU_REWRITE_LINK = true;

    const AUTOMATIC_DEEP_SEARCH_ACTIVE              = 2;
    const AUTOMATIC_DEEP_SEARCH_ACTIVE_EMPTY_RESULT = 1;
    const AUTOMATIC_DEEP_SEARCH_NONACTIVE           = 0;

    /**
     * @var bool
     */
    protected static $m_licenced = true;

    /**
     * Get related auth class for module
     *
     * @return isys_auth
     */
    public static function get_auth()
    {
        return isys_auth_search::instance();
    }

    /**
     * @param isys_module_request $p_req
     *
     * @return boolean
     */
    public function init(isys_module_request $p_req)
    {
        return is_object($p_req);
    }

    /**
     * Retrieves a bookmark string for mydoit.
     *
     * @param   string $p_text
     * @param   string $p_link
     *
     * @author  Kevin Mauel <kmauel@i-doit.org>
     *
     * @return  bool    true
     */
    public function mydoit_get(&$p_text, &$p_link)
    {
        $p_text[] = str_replace('{0}', $_GET['q'], isys_application::instance()->container->get('language')
            ->get('LC__MODULE__SEARCH__FOR'));
        $p_link = 'moduleID=' . defined_or_default('C__MODULE__SEARCH') . '&q=' . urlencode($_GET['q']);

        return true;
    }

    /**
     * Return template directory based on the module's path.
     *
     * @deprecated Use static "getPath()" method instead. Will be removed in i-doit 1.12.
     * @return string
     */
    public function getTemplateDirectory()
    {
        return self::getPath() . 'templates/';
    }

    /**
     * Returns the module's container extension.
     *
     * @return \Symfony\Component\DependencyInjection\Extension\ExtensionInterface
     */
    public function getContainerExtension()
    {
        return new SearchExtension();
    }

    /**
     * Method for retrieving the path to the module directory (needed for includes).
     *
     * @static
     * @return  string
     */
    public static function get_dir()
    {
        return __DIR__;
    }
}
