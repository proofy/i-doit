<?php

/**
 * i-doit
 *
 * CMDB Active Directory: Specific category
 *
 * @package    i-doit
 * @subpackage CMDB_Categories
 * @copyright  synetics GmbH
 * @license    http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_ui_category_s_emergency_plan_assigned_obj extends isys_cmdb_ui_category_s_emergency_plan
{
    /**
     * Returns the title of the specific category
     *
     * @param isys_cmdb_dao_category $p_cat
     *
     * @return string
     */
    public function gui_get_title(isys_cmdb_dao_category &$p_cat)
    {
        return isys_application::instance()->container->get('language')
            ->get("LC__CMDB__CATS__EMERGENCY_PLAN_LINKED_OBJECT_LIST");
    }

    /**
     * Process list method.
     *
     * @param   isys_cmdb_dao_category $p_cat
     *
     * @param null                     $p_get_param_override
     * @param null                     $p_strVarName
     * @param null                     $p_strTemplateName
     * @param bool                     $p_bCheckbox
     * @param bool                     $p_bOrderLink
     * @param null                     $p_db_field_name
     *
     * @return null
     * @throws Exception
     * @throws isys_exception_general
     */
    public function process_list(
        isys_cmdb_dao_category &$p_cat,
        $p_get_param_override = null,
        $p_strVarName = null,
        $p_strTemplateName = null,
        $p_bCheckbox = true,
        $p_bOrderLink = true,
        $p_db_field_name = null
    ) {
        global $index_includes;

        $l_listdao = new isys_cmdb_dao_list_generic_assigned__obj($this->get_database_component(), $p_cat);
        $l_listdao->set_rec_status_list(false);

        // set sourcetable (cause of using generic list...)
        $l_listdao->set_source_table("isys_catg_emergency_plan");

        $l_listres = $l_listdao->get_result(null, $_GET[C__CMDB__GET__OBJECT]);

        $l_arTableHeader = $l_listdao->get_fields();

        //1. step: construct list
        $l_objList = new isys_component_list(null, $l_listres, $l_listdao, $l_listdao->get_rec_status());

        //2. step: config list
        $l_objList->config($l_arTableHeader, $l_listdao->make_row_link(), "", true);

        //5. step: createTempTable() (optional)
        $l_objList->createTempTable();

        //6. step: getTempTableHtml()
        $l_strTempHtml = $l_objList->getTempTableHtml();

        //7. step: assign html to smarty
        $this->get_template_component()
            ->assign("objectTableList", $l_strTempHtml)
            ->smarty_tom_add_rule("tom.content.bottom.buttons.*.p_bInvisible=1");

        isys_component_template_navbar::getInstance()
            ->deactivate_all_buttons()
            ->hide_all_buttons();

        $index_includes['contentbottomcontent'] = $this->get_template();

        return null;
    }

    public function __construct(isys_component_template &$p_template)
    {
        parent::__construct($p_template);
        $this->set_template("object_table_list.tpl");
    }
}

?>
