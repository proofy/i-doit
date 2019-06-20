<?php

use idoit\Module\Cmdb\Model\Ci\Table\Property;

/**
 * i-doit
 *
 * @package     i-doit
 * @subpackage  Smarty_Plugins
 * @author      Pavel Abduramanov <pabduramanov@i-doit.org>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_smarty_plugin_f_property extends isys_smarty_plugin_f implements isys_smarty_plugin
{
    /**
     * Navigation view.
     *
     * @param   isys_component_template &$p_tplclass
     * @param   array                   $p_params
     *
     * @return  string
     */
    public function navigation_view(isys_component_template $p_tplclass, $p_params = null)
    {
        return $this->navigation_edit($p_tplclass, $p_params);
    }

    /**
     * Edit view.
     *
     * @param   isys_component_template &$p_tplclass
     * @param   array                   $p_params
     *
     * @return  string
     */
    public function navigation_edit(isys_component_template $p_tplclass, $p_params = null)
    {
        $property = $p_params['property'];
        if (!$property || !$property instanceof Property) {
            return '';
        }
        /**
         * @var $propertyData array|\ArrayAccess
         */
        $propertyData = $property->getPropertyData();
        if (is_array($propertyData) || $propertyData instanceof ArrayAccess) {
            $type = $propertyData[C__PROPERTY__INFO][C__PROPERTY__INFO__TYPE];
            if (in_array($type, [C__PROPERTY__INFO__TYPE__DIALOG, C__PROPERTY__INFO__TYPE__DIALOG_PLUS, C__PROPERTY__INFO__TYPE__DIALOG_LIST])) {
                $uiType = $propertyData[C__PROPERTY__UI][C__PROPERTY__UI__TYPE];
                $class = 'isys_smarty_plugin_f_' . $uiType;
                if (class_exists($class) && is_subclass_of($class, 'isys_smarty_plugin_f')) {
                    $plugin = new $class();
                    $plugin->set_edit_mode(true);
                    if (is_array($propertyData[C__PROPERTY__UI][C__PROPERTY__UI__PARAMS])) {
                        $params = array_merge($propertyData[C__PROPERTY__UI][C__PROPERTY__UI__PARAMS], $p_params);
                    } else {
                        $params = $p_params;
                    }

                    return $plugin->navigation_edit($p_tplclass, $params);
                }
            }
        }

        $plugin = new isys_smarty_plugin_f_text();
        $plugin->set_edit_mode(true);
        return $plugin->navigation_edit($p_tplclass, $p_params);
    }
}
