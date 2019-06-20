<?php

/**
 * i-doit
 *
 * CMDB Global category.
 *
 * @package     i-doit
 * @subpackage  CMDB_Categories
 * @author      Andre Wösten <awoesten@i-doit.de>
 * @version     Dennis Blümer <dbluemer@i-doit.org>
 * @version     0.9
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 *
 * Notice: This category is special.
 * After creating an object the object gets the status NORMAL only if the data for catg global is saved.
 * Otherwise the object gets BIRTH status.
 */
class isys_cmdb_ui_category_g_global extends isys_cmdb_ui_category_global
{
    /**
     * Process method.
     *
     * @param   isys_cmdb_dao_category_g_global &$p_cat
     *
     * @return  array|void
     */
    public function process(isys_cmdb_dao_category $p_cat)
    {
        $l_tag_selection = $l_rules = [];

        $l_gets = isys_module_request::get_instance()
            ->get_gets();
        $l_posts = isys_module_request::get_instance()
            ->get_posts();

        $l_object_id = (isset($l_gets[C__CMDB__GET__OBJECT])) ? $l_gets[C__CMDB__GET__OBJECT] : $_GET[C__CMDB__GET__OBJECT];

        // Fetch data.
        $l_catdata = $p_cat->get_general_data();

        if (is_null($l_catdata)) {
            $p_cat->create($l_object_id);
            $l_catdata = $p_cat->get_data(null, $l_object_id)
                ->get_row();
        }

        if (isys_tenantsettings::get('barcode.enabled', 1) == 1) {
            $this->get_template_component()
                ->assign("g_sysid", $l_catdata["isys_obj__sysid"]);
        }

        $l_rules["C__CATG__GLOBAL_CREATED"]["p_strValue"] = isys_application::instance()->container->locales->fmt_datetime($l_catdata["isys_obj__created"], true, false) .
            ' (' . $l_catdata["isys_obj__created_by"] . ')';

        $l_rules["C__CATG__GLOBAL_UPDATED"]["p_strValue"] = isys_application::instance()->container->locales->fmt_datetime($l_catdata["isys_obj__updated"], true, false) .
            ' (' . $l_catdata["isys_obj__updated_by"] . ')';

        $l_rules["C__OBJ__ID"]["p_strValue"] = $l_catdata['isys_obj__id'];
        $l_rules["C__OBJ__TYPE"]["p_strSelectedID"] = $l_catdata["isys_obj_type__id"];
        $l_rules["C__OBJ__STATUS"]["p_strValue"] = $p_cat->get_record_status_as_string($l_catdata["isys_obj__status"]);
        $l_rules["C__CATG__GLOBAL_TITLE"]["p_strValue"] = $l_catdata["isys_obj__title"];
        $l_rules["C__CATG__GLOBAL_SYSID"]["p_strValue"] = $l_catdata["isys_obj__sysid"];
        $l_rules["C__CATG__GLOBAL_PURPOSE"]["p_strSelectedID"] = $l_catdata["isys_catg_global_list__isys_purpose__id"];
        $l_rules["C__CATG__GLOBAL_CATEGORY"]["p_strSelectedID"] = $l_catdata["isys_catg_global_list__isys_catg_global_category__id"];
        $l_rules["C__CMDB__CAT__COMMENTARY_" . $p_cat->get_category_type() . $p_cat->get_category_id()]["p_strValue"] = $l_catdata["isys_obj__description"];

        if ($l_catdata["isys_obj__status"] == C__RECORD_STATUS__ARCHIVED && $l_catdata["isys_obj__status"] == C__RECORD_STATUS__DELETED) {
            $l_rules["C__OBJ__STATUS"]["p_bDisabled"] = "1";
        }

        // Because "Birth" is no option, the user might get confused by an awkward status.
        if ($l_catdata["isys_obj__status"] == 1) {
            $l_catdata["isys_obj__status"] = 2;
        }

        if (isset($_POST["template"]) && $_POST["template"] != "") {
            $_POST["template"] = (int)$_POST["template"];
            $l_catdata["isys_obj__status"] = ($_POST["template"] === 1) ? C__RECORD_STATUS__TEMPLATE : ($_POST["template"] ===
            C__RECORD_STATUS__MASS_CHANGES_TEMPLATE ? C__RECORD_STATUS__MASS_CHANGES_TEMPLATE : C__RECORD_STATUS__NORMAL);
        }

        $l_rules["C__OBJ__STATUS"]["p_strSelectedID"] = $l_catdata["isys_obj__status"];

        $l_rules["C__OBJ__STATUS"]["p_arData"] = [
            C__RECORD_STATUS__NORMAL                => isys_application::instance()->container->get('language')
                ->get("LC__CMDB__RECORD_STATUS__NORMAL"),
            C__RECORD_STATUS__TEMPLATE              => "Template",
            C__RECORD_STATUS__ARCHIVED              => isys_application::instance()->container->get('language')
                ->get("LC__CMDB__RECORD_STATUS__ARCHIVED"),
            C__RECORD_STATUS__DELETED               => isys_application::instance()->container->get('language')
                ->get("LC__CMDB__RECORD_STATUS__DELETED"),
            C__RECORD_STATUS__MASS_CHANGES_TEMPLATE => isys_application::instance()->container->get('language')
                ->get("LC__MASS_CHANGE__CHANGE_TEMPLATE")
        ];

        $l_rules["C__OBJ__STATUS"]["p_arDisabled"] = [
            C__RECORD_STATUS__DELETED  => true,
            C__RECORD_STATUS__BIRTH    => true,
            C__RECORD_STATUS__ARCHIVED => true
        ];

        // CMDB STATUS.
        $l_rules['C__OBJ__CMDB_STATUS'] = [
            'p_strTable' => 'isys_cmdb_status',
            'condition' => "isys_cmdb_status__id NOT IN ('" . defined_or_default('C__CMDB_STATUS__IDOIT_STATUS_TEMPLATE') . "')",
            'p_arDisabled' => [],
            'p_bDbFieldNN' => 1
        ];

        if (defined('C__CMDB_STATUS__IDOIT_STATUS')) {
            $l_rules["C__OBJ__CMDB_STATUS"]['p_arDisabled'][constant('C__CMDB_STATUS__IDOIT_STATUS')] = 'LC__CMDB_STATUS__IDOIT_STATUS';
        }

        $l_cmdb_status_colors = [];
        $l_cmdb_statuses = isys_factory_cmdb_dialog_dao::get_instance('isys_cmdb_status', $this->get_database_component())
            ->get_data();

        foreach ($l_cmdb_statuses as $l_cmdb_status) {
            $l_cmdb_status_colors[$l_cmdb_status['isys_cmdb_status__id']] = '#' . $l_cmdb_status['isys_cmdb_status__color'];
        }

        if ($l_catdata["isys_obj__isys_cmdb_status__id"] > 0) {
            $l_rules["C__OBJ__CMDB_STATUS"]["p_strSelectedID"] = $l_catdata["isys_obj__isys_cmdb_status__id"];
        } else {
            $l_rules["C__OBJ__CMDB_STATUS"]["p_strSelectedID"] = defined_or_default('C__CMDB_STATUS__IN_OPERATION');
        }

        $l_rules["C__CATG__GLOBAL_PURPOSE"]["p_strTable"] = "isys_purpose";
        $l_rules["C__CATG__GLOBAL_CATEGORY"]["p_strTable"] = "isys_catg_global_category";
        $l_rules["C__CATG__GLOBAL_SYSID"]["p_bDisabled"] = C__SYSID__READONLY;
        $l_show_in_tree = true;

        // See isys_quick_configuration_wizard_dao $m_skipped_objecttypes
        $l_blacklisted_object_types = filter_defined_constants([
            'C__OBJTYPE__GENERIC_TEMPLATE',
            'C__OBJTYPE__LOCATION_GENERIC',
            'C__OBJTYPE__RELATION',
            'C__OBJTYPE__CONTAINER',
            'C__OBJTYPE__PARALLEL_RELATION',
            'C__OBJTYPE__SOA_STACK'
        ]);

        // Check if object is a template
        if ($l_posts['template'] !== '' || (int)$l_catdata['isys_obj__status'] === C__RECORD_STATUS__MASS_CHANGES_TEMPLATE ||
            (int)$l_catdata['isys_obj__status'] === C__RECORD_STATUS__TEMPLATE || in_array((int)$l_catdata['isys_obj__isys_obj_type__id'], $l_blacklisted_object_types)) {
            $l_show_in_tree = null;
            $l_rules["C__OBJ__CMDB_STATUS"]['p_arDisabled'] = [];
        }

        $l_res = $p_cat->get_object_types(null, $l_show_in_tree);

        while ($l_row = $l_res->get_row()) {
            $l_rules["C__OBJ__TYPE"]["p_arData"][$l_row['isys_obj_type__id']] = isys_application::instance()->container->get('language')
                ->get($l_row['isys_obj_type__title']);
        }

        if ($l_catdata['isys_obj__id']) {
            $l_tag_selection = $p_cat->get_assigned_tag($l_catdata['isys_obj__id'], true);
        }

        $l_rules['C__CATG__GLOBAL_TAG'] = [
            'p_strTable'      => 'isys_tag',
            'emptyMessage'    => isys_application::instance()->container->get('language')
                ->get('LC__CMDB__CATG__GLOBAL__NO_TAGS_FOUND'),
            'p_onComplete'    => "idoit.callbackManager.triggerCallback('cmdb-catg-global-tag-update', selected);",
            'p_strSelectedID' => implode(',', $l_tag_selection),
            'multiselect'     => true
        ];

        $editmode = (bool) $this->get_template_component()->editmode();
        $placeholderData = false;

        if ($editmode) {
            $sql = 'SELECT isys_obj__id AS id, isys_obj__isys_obj_type__id AS typeId, isys_obj__title as title, isys_obj__sysid AS sysid 
                FROM isys_obj 
                WHERE isys_obj__id = ' . $p_cat->convert_sql_id($l_catdata['isys_obj__id']) . '
                LIMIT 1;';

            if ($l_catdata['isys_obj__status'] == C__RECORD_STATUS__BIRTH) {
                $sql = 'SELECT isys_obj__id AS id, isys_obj__isys_obj_type__id AS typeId, isys_obj__title as title, isys_obj__sysid AS sysid 
                        FROM isys_obj 
                        WHERE isys_obj__isys_obj_type__id ' . $p_cat->prepare_in_condition(filter_defined_constants(['C__OBJTYPE__CABLE', 'C__OBJTYPE__RELATION']), true) . ' 
                        ORDER BY RAND() 
                        LIMIT 1;';
            }

            $objectData = $p_cat->retrieve($sql)->get_row();

            $placeholderData = isys_cmdb_dao_category_g_accounting::get_placeholders_info_with_data(
                true,
                $objectData['id'],
                $objectData['typeId'],
                $objectData['title'],
                $objectData['sysid']
            );
        }

        // Apply rules.
        $this->get_template_component()
            ->assign("placeholders_g_global", $placeholderData)
            ->assign("created_by", $l_catdata["isys_obj__created_by"])
            ->assign("changed_by", $l_catdata["isys_obj__updated_by"])
            ->assign("status_color", $l_catdata["isys_cmdb_status__color"])
            ->assign("status_colors", isys_format_json::encode($l_cmdb_status_colors))
            ->smarty_tom_add_rules("tom.content.bottom.content", $l_rules);
    }
}
