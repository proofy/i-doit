<?php

/**
 * Deprecated interface.
 *
 * @deprecated  This interface will be removed in i-doit 1.13
 * @todo        Remove in i-doit 1.13
 * @subpackage  Modules
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
interface isys_module_hookable
{
    /**
     * Returns all available hooks
     *
     * @return isys_array
     */
    public static function hooks();
}
