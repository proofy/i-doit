<?php

/**
 * Interface isys_module_installable
 *
 * @package     i-doit
 * @subpackage  Modules
 * @author      Dennis Stücken <dstuecken@i-doit.de>
 * @version     1.5
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
interface isys_module_installable
{
    /**
     * Checks wheather a module is installed or not, should return the module id.
     *
     * @param string $p_identifier
     * @param bool   $p_and_active
     *
     * @return int]false
     */
    public function is_installed($p_identifier = null, $p_and_active = false);
}