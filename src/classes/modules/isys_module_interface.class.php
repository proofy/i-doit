<?php

/**
 * Interface isys_module_interface
 *
 * @package     i-doit
 * @subpackage  Modules
 * @author      Andre Woesten <awoesten@i-doit.de>
 * @author      Dennis Stücken <dstuecken@i-doit.de>
 * @author      Leonard Fischer <lfischer@i-doit.org>
 * @version     0.9
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
interface isys_module_interface
{
    /**
     * Signal Slot initialization
     *
     * @return void
     */
    public function initslots();

    /**
     * Method for initializing the module.
     *
     * @todo This needs to be re-enabled for version 1.8. Currently commented for compatibility issues with existing/outdated modules.
     *
     * @param isys_module_request $p_req
     *
     * @return void
     */
    //public function init(isys_module_request $p_req);

    /**
     * Method for starting the process of a module.
     *
     * @return $this
     */
    public function start();
}
