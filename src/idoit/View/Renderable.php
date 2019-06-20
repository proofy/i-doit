<?php

namespace idoit\View;

use idoit\Model\Dao\Base as DaoBase;

/**
 * i-doit View Base class
 *
 * @package     i-doit
 * @subpackage  Core
 * @author      Dennis Stücken <dstuecken@synetics.de>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
interface Renderable
{

    /**
     * Process view details, do smarty assignments, and so on..
     *
     * @return Renderable
     */
    public function process(\isys_module $p_module, \isys_component_template $p_template, DaoBase $p_model);

    /**
     * Get the evaluated contents of the object.
     *
     * @return Renderable
     */
    public function render();

}
