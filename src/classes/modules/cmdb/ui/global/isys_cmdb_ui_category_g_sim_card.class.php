<?php

/**
 * i-doit
 *
 * UI: Specific cellphone category
 *
 * @package     i-doit
 * @subpackage  CMDB_Categories
 * @author      Dennis Stücken <dstuecken@synetics.de>
 * @version     1.0
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_ui_category_g_sim_card extends isys_cmdb_ui_category_global
{
    /**
     * Process method.
     *
     * @param   isys_cmdb_dao_category_g_sim_card $p_cat
     *
     * @author  Dennis Stücken <dstuecken@synetics.de>
     * @author  Niclas Potthast <npotthast@i-doit.org>
     */
    public function process(isys_cmdb_dao_category $p_cat)
    {
        $l_rules = [];
        $l_catdata = $p_cat->get_general_data();

        $l_catdata["isys_catg_sim_card_list__twincard"] = ($l_catdata["isys_catg_sim_card_list__twincard"] ?: 0);

        $this->fill_formfields($p_cat, $l_rules, $l_catdata);

        if ($l_catdata['isys_catg_assigned_cards_list__status'] == C__RECORD_STATUS__NORMAL) {
            $l_rules["C__CATS__SIM_CARD__ASSIGNED_MOBILE_PHONE"]["p_strValue"] = $l_catdata["isys_catg_assigned_cards_list__isys_obj__id"];
        } else {
            $l_rules["C__CATS__SIM_CARD__ASSIGNED_MOBILE_PHONE"]["p_strSelectedID"] = null;
        }

        $this->get_template_component()
            ->assign("g_twincard", $l_catdata["isys_catg_sim_card_list__twincard"])
            ->smarty_tom_add_rules("tom.content.bottom.content", $l_rules);
    }
}
