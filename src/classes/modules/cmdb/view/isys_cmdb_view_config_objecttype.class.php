<?php

/**
 * CMDB Configuration view for object types.
 *
 * @package     i-doit
 * @subpackage  CMDB_Views
 * @author      i-doit-team
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_view_config_objecttype extends isys_cmdb_view_config
{
    /**
     * @var array
     */
    private static $m_already_selected_oview = [];

    /**
     * @var array
     */
    private static $m_selected_overview = [];

    /**
     * @var array
     */
    private static $m_unallowed_categories = [
        'C__CATG__VIRTUAL_TICKETS' => true,
        'C__CATG__PLANNING'        => true,
        'C__CATG__LOGBOOK'         => true
    ];

    /**
     * @var array
     */
    private static $m_unselected_overview = [];

    /**
     * @return bool|mixed
     */
    public function config_process()
    {
        global $g_dirs;

        // Enable ajax save.
        isys_cmdb_ui_category::enable_ajax_save();

        $l_tpl = $this->get_module_request()
            ->get_template();
        $l_gets = $this->get_module_request()
            ->get_gets();

        $l_typeres = $this->m_dao_cmdb->get_object_types($l_gets[C__CMDB__GET__OBJECTTYPE]);
        $l_arrRecord = $l_typeres->get_row();
        $l_arrYesNo = get_smarty_arr_YES_NO();

        $l_rules["C__OBJTYPE__ID"]["p_strValue"] = $l_arrRecord["isys_obj_type__id"];
        $l_rules["C__OBJTYPE__ID"]["p_bDisabled"] = "1";
        $l_rules["C__OBJTYPE__DESCRIPTION"]["p_strValue"] = $l_arrRecord["isys_obj_type__description"];
        $l_rules["C__OBJTYPE__TITLE"]["p_strValue"] = $l_arrRecord["isys_obj_type__title"];
        $l_rules["C__OBJTYPE__SYSID_PREFIX"]["p_strValue"] = $l_arrRecord["isys_obj_type__sysid_prefix"];
        $l_rules["C__OBJTYPE__TRANSLATED_TITLE"]["p_strValue"] = isys_application::instance()->container->get('language')
            ->get($l_arrRecord["isys_obj_type__title"]);
        $l_rules["C__OBJTYPE__TRANSLATED_TITLE"]["p_bDisabled"] = "1";
        $l_rules["C__OBJTYPE__GROUP_ID"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__isys_obj_type_group__id"];
        $l_rules["C__OBJTYPE__ICON"]["p_strValue"] = $l_arrRecord["isys_obj_type__icon"];

        $l_query = 'SELECT *
            FROM isysgui_cats
            WHERE TRUE
            AND isysgui_cats__status = ' . $this->m_dao_cmdb->convert_sql_int(C__RECORD_STATUS__NORMAL) . ';';

        $l_cat_res = $this->m_dao_cmdb->retrieve($l_query);

        while ($l_row = $l_cat_res->get_row()) {
            if (!class_exists($l_row['isysgui_cats__class_name'])) {
                continue;
            }

            $l_sql = 'SELECT isysgui_cats_2_subcategory__isysgui_cats__id__child
                FROM isysgui_cats_2_subcategory
                WHERE isysgui_cats_2_subcategory__isysgui_cats__id__parent = ' . $this->m_dao_cmdb->convert_sql_id($l_row["isysgui_cats__id"]) . ';';

            if ($this->m_dao_cmdb->retrieve($l_sql)
                    ->num_rows() == 0) {
                $l_sql = 'SELECT isysgui_cats_2_subcategory__isysgui_cats__id__parent
                    FROM isysgui_cats_2_subcategory
                    WHERE isysgui_cats_2_subcategory__isysgui_cats__id__child = ' . $this->m_dao_cmdb->convert_sql_id($l_row["isysgui_cats__id"]) . ';';

                if ($this->m_dao_cmdb->retrieve($l_sql)
                        ->num_rows() > 0) {
                    continue;
                }
            }

            $l_sql = 'SELECT * FROM isys_obj_type WHERE isys_obj_type__isysgui_cats__id = ' . $this->m_dao_cmdb->convert_sql_id($l_row["isysgui_cats__id"]) . ';';
            $l_obj_type_res = $this->m_dao_cmdb->retrieve($l_sql);
            $l_obj_type = "";
            if ($l_obj_type_res->num_rows() > 0) {
                while ($l_obj_type_row = $l_obj_type_res->get_row()) {
                    $l_obj_type .= ((strlen(isys_application::instance()->container->get('language')
                                ->get($l_obj_type_row["isys_obj_type__title"])) > 22) ? substr(isys_application::instance()->container->get('language')
                                ->get($l_obj_type_row["isys_obj_type__title"]), 0, 22) . ".." : isys_application::instance()->container->get('language')
                            ->get($l_obj_type_row["isys_obj_type__title"])) . ", ";
                }
                $l_obj_type = substr($l_obj_type, 0, -2);
            } else {
                $l_obj_type = isys_application::instance()->container->get('language')
                    ->get("LC__UNIVERSAL__NOT_ASSIGNED");
            }

            if ($this->m_dao_cmdb->get_isysgui("isysgui_cats", null, null, null, $l_row["isysgui_cats__id"])
                    ->num_rows() > 0) {
                $l_title = "(" . isys_application::instance()->container->get('language')
                        ->get("LC__UNIVERSAL__FOLDER") . ") ";
            } else {
                $l_title = "";
            }

            $l_cats_list[$l_row["isysgui_cats__id"]] = $l_title . isys_application::instance()->container->get('language')
                    ->get($l_row["isysgui_cats__title"]) . " " . "(" . $l_obj_type . ")";
        }

        asort($l_cats_list);

        $l_rules["C__OBJTYPE__CATS_ID"]["p_arData"] = $l_cats_list;
        $l_rules["C__OBJTYPE__CATS_ID"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__isysgui_cats__id"];
        $l_rules["C__OBJTYPE__SELF_DEFINED"]["p_arData"] = $l_arrYesNo;
        $l_rules["C__OBJTYPE__SELF_DEFINED"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__selfdefined"];
        $l_rules["C__OBJTYPE__IS_CONTAINER"]["p_arData"] = $l_arrYesNo;
        $l_rules["C__OBJTYPE__IS_CONTAINER"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__container"];
        $l_rules["C__OBJTYPE__RELATION_MASTER"]["p_arData"] = $l_arrYesNo;
        $l_rules["C__OBJTYPE__RELATION_MASTER"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__relation_master"];
        $l_rules["C__OBJTYPE__SHOW_IN_TREE"]["p_arData"] = $l_arrYesNo;
        $l_rules["C__OBJTYPE__SHOW_IN_TREE"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__show_in_tree"];
        $l_rules["C__OBJTYPE__INSERTION_OBJECT"]["p_arData"] = $l_arrYesNo;
        $l_rules["C__OBJTYPE__INSERTION_OBJECT"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__show_in_rack"];
        $l_rules["C__CMDB__OVERVIEW__ENTRY_POINT"]["p_arData"] = $l_arrYesNo;
        $l_rules["C__CMDB__OVERVIEW__ENTRY_POINT"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__overview"];
        $l_rules["C__CMDB__OBJTYPE__USE_TEMPLATE_TITLE"]["p_arData"] = $l_arrYesNo;
        $l_rules["C__CMDB__OBJTYPE__USE_TEMPLATE_TITLE"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__use_template_title"];
        $l_rules["C__OBJTYPE__TYPE_NUMBER"]["p_strValue"] = $l_arrRecord["isys_obj_type__idoit_obj_type_number"];
        $l_rules["C__OBJTYPE__CONST"]["p_strValue"] = $l_arrRecord["isys_obj_type__const"];
        $l_rules["C__OBJTYPE__POSITION_IN_TREE"]["p_strValue"] = $l_arrRecord["isys_obj_type__sort"];
        $l_rules["C__OBJTYPE__VISIBLE_CATG"]["p_bDisabled"] = ($l_gets[C__CMDB__GET__EDITMODE] == C__EDITMODE__ON ? "0" : "1"); // change this...
        $l_rules["C__OBJTYPE_2_OVERVIEW"]["p_bDisabled"] = ($l_gets[C__CMDB__GET__EDITMODE] == C__EDITMODE__ON ? "0" : "1"); // change this...
        $l_rules["C__OBJTYPE__AUTOMATED_INVENTORY_NO"]["p_strValue"] = isys_tenantsettings::get('cmdb.objtype.' . $l_arrRecord["isys_obj_type__id"] . '.auto-inventory-no',
            '');

        $l_placeholder_arr = isys_cmdb_dao_category_g_accounting::get_placeholders_info_with_data(true, '5947', '5', 'Objekt-Titel', 'SYSID_' . time());

        $l_typeres = $this->m_dao_cmdb->get_all_catg_2_objtype_id($l_gets[C__CMDB__GET__OBJECTTYPE], " AND isysgui_catg__parent IS NULL");

        // CMDB Explorer Color.
        $l_rules["C__OBJTYPE__COLOR"]["p_strValue"] = $l_arrRecord["isys_obj_type__color"];

        if ($l_gets[C__CMDB__GET__EDITMODE] != C__EDITMODE__ON) {
            $l_rules["C__OBJTYPE__COLOR"]["p_strStyle"] = "background:#" . $l_arrRecord["isys_obj_type__color"] .
                "; padding:2px 5px; border: 1px solid rgba(0,0,0,0.5); border-radius:3px;";
        } else {
            $l_tpl->assign("object_type_color", $l_arrRecord["isys_obj_type__color"]);
        }

        $l_cat_list = [];
        $l_assigned_cc = [];

        if (method_exists($this->m_dao_cmdb, "get_catg_by_obj_type")) {
            $l_oview = $this->m_dao_cmdb->get_catg_by_obj_type($l_gets[C__CMDB__GET__OBJECTTYPE], C__RECORD_STATUS__NORMAL, true);

            $l_ov_sort = null;

            if ($l_oview->num_rows()) {
                while ($l_selr = $l_oview->get_row()) {
                    if (is_null($l_ov_sort)) {
                        $l_ov_sort = $l_selr['isys_obj_type_2_isysgui_catg_overview__sort'];
                    } elseif (!is_null($l_ov_sort) && $l_selr['isys_obj_type_2_isysgui_catg_overview__sort'] == 0) {
                        $l_ov_sort++;
                    } else {
                        $l_ov_sort = $l_selr['isys_obj_type_2_isysgui_catg_overview__sort'];
                    }

                    self::$m_already_selected_oview[$l_selr['isysgui_catg__const']] = $l_ov_sort;
                }
            }
        }

        while ($l_typedata = $l_typeres->get_row()) {
            if ((defined("C__CATG__CUSTOM_FIELDS") && $l_typedata["isysgui_catg__id"] == C__CATG__CUSTOM_FIELDS) ||
                (defined("C__CATG__OVERVIEW") && $l_typedata["isysgui_catg__id"] == C__CATG__OVERVIEW)) {
                continue;
            }

            if (!class_exists($l_typedata['isysgui_catg__class_name'])) {
                continue;
            }

            // Is the category a standard one?
            $l_standard = ($l_typedata["isysgui_catg__standard"] != 0) ? 1 : 0;

            // Is the category active for this object type?
            $l_selected = ($l_typedata["selected"] != 0) ? 1 : 0;

            // If one of both previous conditions succeeds, $l_selected is true
            $l_selected |= $l_standard;

            // Standard entries are always sticky, so cannot be moved away
            $l_sticky = $l_standard;

            $l_directoryIDs = [];

            $l_overview_cat = ($l_typedata["isysgui_catg__overview"] == 1);

            $l_title = isys_application::instance()->container->get('language')
                ->get($l_typedata["isysgui_catg__title"]);

            $l_directoryRes = $this->m_dao_cmdb->get_all_catg_2_objtype_id($l_gets[C__CMDB__GET__OBJECTTYPE],
                "AND (isysgui_catg__parent = " . $l_typedata["isysgui_catg__id"] . ")");
            if (is_countable($l_directoryRes) && count($l_directoryRes) > 0) {
                $l_title .= " (" . isys_application::instance()->container->get('language')
                        ->get("LC__UNIVERSAL__FOLDER") . ")";
                $l_directoryRes = $l_directoryRes->__as_array();

                foreach ($l_directoryRes AS $l_directoryRow) {
                    if ($l_directoryRow['isysgui_catg__overview']) {
                        if (!class_exists($l_directoryRow['isysgui_catg__class_name'])) {
                            continue;
                        }

                        if ($l_selected) {
                            $this->overview_category_handling($l_directoryRow);
                        }

                        $l_directoryIDs[] = [
                            'id'    => $l_directoryRow['isysgui_catg__const'],
                            'title' => isys_application::instance()->container->get('language')
                                ->get($l_directoryRow['isysgui_catg__title'])
                        ];
                    }
                }
            }

            $l_cat_list[] = [
                "val"                  => $l_title,
                "sel"                  => !!$l_selected,
                "sticky"               => !!$l_sticky,
                "overview"             => $l_overview_cat,
                "id"                   => $l_typedata["isysgui_catg__const"],
                "directory_categories" => htmlspecialchars(json_encode($l_directoryIDs)),
            ];

            if ($l_selected && $l_overview_cat) {
                $this->overview_category_handling($l_typedata);
            }
        }

        if (count($l_cat_list)) {
            sort($l_cat_list);
        }

        /**
         * Handle custom categories
         */
        if (class_exists('isys_module_custom_fields')) {
            if (method_exists($this->m_dao_cmdb, "get_catg_custom_by_obj_type")) {
                $l_oview = $this->m_dao_cmdb->get_catg_custom_by_obj_type($l_gets[C__CMDB__GET__OBJECTTYPE], true);

                $l_ov_sort = (is_countable(self::$m_already_selected_oview) && count(self::$m_already_selected_oview)) ? max(self::$m_already_selected_oview) + 1 : 1;

                if ($l_oview->num_rows()) {
                    while ($l_selr = $l_oview->get_row()) {
                        if (is_null($l_ov_sort)) {
                            $l_ov_sort = $l_selr['isys_obj_type_2_isysgui_catg_custom_overview__sort'];
                        } elseif (!is_null($l_ov_sort) && $l_selr['isys_obj_type_2_isysgui_catg_custom_overview__sort'] == 0) {
                            $l_ov_sort++;
                        } else {
                            $l_ov_sort = $l_selr['isys_obj_type_2_isysgui_catg_custom_overview__sort'];
                        }

                        self::$m_already_selected_oview[$l_selr['isysgui_catg_custom__const']] = $l_ov_sort;
                    }
                }
            }

            // Custom categories
            $l_custom_categories_res = $this->m_dao_cmdb->get_all_catg_custom();
            $l_assigned_custom_categories_res = $this->m_dao_cmdb->get_catg_custom_by_obj_type($l_gets[C__CMDB__GET__OBJECTTYPE]);
            if ($l_assigned_custom_categories_res->num_rows() > 0) {
                while ($l_assigned_cc_row = $l_assigned_custom_categories_res->get_row()) {
                    $l_assigned_cc[$l_assigned_cc_row['isysgui_catg_custom__const']] = $l_assigned_cc_row['isysgui_catg_custom__id'];
                }
            }

            while ($l_row_cc = $l_custom_categories_res->get_row()) {
                $l_selected = isset($l_assigned_cc[$l_row_cc['isysgui_catg_custom__const']]);

                $l_show_in_overview = !$l_row_cc['isysgui_catg_custom__list_multi_value'];

                $l_cat_list[] = [
                    "val"      => isys_application::instance()->container->get('language')
                        ->get($l_row_cc['isysgui_catg_custom__title']),
                    "sel"      => $l_selected,
                    "sticky"   => false,
                    "overview" => $l_show_in_overview,
                    "id"       => $l_row_cc['isysgui_catg_custom__const']
                ];

                if ($l_show_in_overview && $l_selected) {
                    $this->overview_category_handling($l_row_cc);
                }
            }
        }

        if (count(self::$m_unselected_overview) > 0) {
            foreach (self::$m_unselected_overview AS $l_val) {
                self::$m_selected_overview[] = $l_val;
            }
        }

        if (count(self::$m_selected_overview)) {
            ksort(self::$m_selected_overview);
        }

        $l_tpl->assign("arDialogList", $l_cat_list)
            ->assign("arDialogList2", self::$m_selected_overview);

        if (defined("C__MODULE__TEMPLATES")) {
            $l_ar_templates = [];
            $l_templates = new isys_templates_dao(isys_application::instance()->database);

            $l_templates = $l_templates->get_templates();
            while ($l_row = $l_templates->get_row()) {
                $l_ar_templates[$l_row["isys_obj__id"]] = $l_row["isys_obj__title"];
            }

            $l_tpl->assign("templates", $l_ar_templates);
            $l_rules["C__CMDB__OBJTYPE__DEFAULT_TEMPLATE"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__default_template"];
        }

        // Assign objecttype images.
        global $g_absdir;

        $l_objTypeImages = [];
        if (file_exists($g_absdir . '/images/objecttypes') && is_dir($g_absdir . '/images/objecttypes')) {
            $l_directory = dir($g_absdir . '/images/objecttypes');

            while ($l_file = $l_directory->read()) {
                if (strpos($l_file, '.') !== 0) {
                    $l_objTypeImages[$l_file] = $l_file;
                }
            }

            $l_directory->close();
            $l_rules["C__OBJTYPE__IMG_NAME"]["p_strValue"] = $l_arrRecord["isys_obj_type__obj_img_name"];
            $l_rules["C__OBJTYPE__IMG_NAME"]["p_strSelectedID"] = $l_arrRecord["isys_obj_type__obj_img_name"];
            $l_rules["C__OBJTYPE__IMG_NAME"]["p_arData"] = $l_objTypeImages;
        }

        if (!empty($l_arrRecord["isys_obj_type__obj_img_name"]) && $l_arrRecord["isys_obj_type__obj_img_name"] != C__OBJTYPE_IMAGE__DEFAULT) {
            unset($l_objTypeImages[$l_arrRecord["isys_obj_type__obj_img_name"]]);
            array_unshift($l_objTypeImages, $l_arrRecord["isys_obj_type__obj_img_name"]);
        }

        $l_tpl->assign("editmode", (isys_glob_get_param(C__GET__NAVMODE) == C__NAVMODE__EDIT || isys_glob_get_param(C__GET__NAVMODE) == C__NAVMODE__NEW))
            ->assign('placeholders', ((isys_application::instance()->template->editmode() === false) ? false : $l_placeholder_arr))
            ->assign('objTypeImages', ((isys_application::instance()->template->editmode() === false) ? false : $l_objTypeImages))
            ->assign('objTypeImage', $l_arrRecord["isys_obj_type__obj_img_name"])
            ->assign("category_overview_is_active", !!$l_arrRecord["isys_obj_type__overview"])
            ->assign("dir_images", $g_dirs["images"])
            ->assign('content_title', isys_application::instance()->container->get('language')
                ->get('LC__CMDB__OBJTYPE__CONFIGURATION_MODUS'))
            ->smarty_tom_add_rules("tom.content.bottom.content", $l_rules);

        return true;
    }

    /**
     * @return  integer
     */
    public function get_id()
    {
        return C__CMDB__VIEW__CONFIG_OBJECTTYPE;
    }

    /**
     * @param  array &$l_gets
     */
    public function get_mandatory_parameters(&$l_gets)
    {
        parent::get_mandatory_parameters($l_gets);
    }

    /**
     * @return  string
     */
    public function get_name()
    {
        return "Objekttypkonfiguration";
    }

    /**
     * @param  array &$l_gets
     */
    public function get_optional_parameters(&$l_gets)
    {
        parent::get_optional_parameters($l_gets);

        $l_gets[C__CMDB__GET__OBJECTTYPE] = true;
    }

    /**
     * Retrieves the filepath of the "bottom" template.
     *
     * @return  string
     */
    public function get_template_bottom()
    {
        return "content/bottom/content/catg__2__obj_type.tpl";
    }

    /**
     * Retrieves the filepath of the "top" template.
     *
     * @return  string
     */
    public function get_template_top()
    {
        return "content/top/main_objecttype.tpl";
    }

    /**
     * Handle navigation mode.
     *
     * @param   integer $p_navmode
     *
     * @throws  isys_exception_auth
     * @throws  isys_exception_cmdb
     * @throws  Exception
     */
    public function handle_navmode($p_navmode)
    {
        $l_modreq = $this->get_module_request();
        $l_gets = $l_modreq->get_gets();
        $l_posts = $l_modreq->get_posts();
        $l_actionproc = $this->get_action_processor();
        $l_navbar = $l_modreq->get_navbar();

        // Retrieve the object-type constant and use it for the check, if the user is allowed to edit/create a new object-type.
        $l_obj_type = $this->m_dao_cmdb->get_object_type($l_gets[C__CMDB__GET__OBJECTTYPE]);
        $l_edit_right = isys_auth_cmdb::instance()
            ->is_allowed_to(isys_auth::EDIT, 'OBJ_TYPE/' . $l_obj_type['isys_obj_type__const']);

        switch ($p_navmode) {
            case C__NAVMODE__NEW:
            case C__NAVMODE__EDIT:
                isys_auth_cmdb::instance()
                    ->check(isys_auth::EDIT, 'OBJ_TYPE/' . $l_obj_type['isys_obj_type__const']);

                $l_gets[C__CMDB__GET__EDITMODE] = C__EDITMODE__ON;
                $l_navbar->set_active(true, C__NAVBAR_BUTTON__SAVE)
                    ->set_active(true, C__NAVBAR_BUTTON__CANCEL)
                    ->set_active(false, C__NAVBAR_BUTTON__EDIT)
                    ->set_visible(false, C__NAVBAR_BUTTON__EDIT)
                    ->set_active(false, C__NAVBAR_BUTTON__NEW)
                    ->set_visible(false, C__NAVBAR_BUTTON__NEW)
                    ->set_active(false, C__NAVBAR_BUTTON__DELETE)
                    ->set_visible(false, C__NAVBAR_BUTTON__DELETE);
                break;

            case C__NAVMODE__SAVE:
                isys_auth_cmdb::instance()
                    ->check(isys_auth::EDIT, 'OBJ_TYPE/' . $l_obj_type['isys_obj_type__const']);

                $l_actionproc->insert(C__CMDB__ACTION__CONFIG_OBJECTTYPE, [
                    $p_navmode,
                    $l_gets[C__CMDB__GET__OBJECTTYPE],
                    $l_posts
                ]);
                $l_actionproc->process();
                break;
            default:
            case C__NAVMODE__CANCEL:
                isys_auth_cmdb::instance()
                    ->check(isys_auth::VIEW, 'OBJ_TYPE/' . $l_obj_type['isys_obj_type__const']);

                // ID-2385: If object type with status birth was not saved, delete it and redirect to list
                $object = $this->m_dao_cmdb->get_object_type($l_gets[C__CMDB__GET__OBJECTTYPE]);
                if (is_array($object) && $object['isys_obj_type__status'] == C__RECORD_STATUS__BIRTH) {
                    $this->m_dao_cmdb->delete_object_type($l_gets[C__CMDB__GET__OBJECTTYPE]);

                    header("Status: 302 Found");
                    echo isys_helper_link::create_url([
                        C__CMDB__GET__VIEWMODE    => C__CMDB__VIEW__LIST_OBJECTTYPE,
                        C__CMDB__GET__OBJECTGROUP => $l_gets[C__CMDB__GET__OBJECTGROUP]
                    ]);
                    die();
                }

                $l_gets[C__CMDB__GET__EDITMODE] = C__EDITMODE__OFF;
                $l_navbar->set_active($l_edit_right, C__NAVBAR_BUTTON__EDIT)
                    ->set_visible(true, C__NAVBAR_BUTTON__EDIT);
                break;
        }

        $l_modreq->_internal_set_private("m_get", $l_gets);
    }

    /**
     * Save process
     */
    public function process_save()
    {
        $l_tpl = $this->get_module_request()
            ->get_template();

        try {
            $l_posts = $this->get_module_request()
                ->get_posts();

            $this->handle_navmode($l_posts[C__GET__NAVMODE]);
            isys_notify::success(isys_application::instance()->container->get('language')
                ->get('LC__INFOBOX__DATA_WAS_SAVED'));
        } catch (isys_exception_auth $e) {
            isys_notify::error(isys_application::instance()->container->get('language')
                ->get('LC__INFOBOX__DATA_WAS_NOT_SAVED'));
            $index_includes["contentbottomcontent"] = 'exception-auth.tpl';

            $l_tpl->assign('exception', $e->write_log());
        } catch (isys_exception_cmdb $e) {
            // @todo  We should try to not use "g_error".
            $l_tpl->assign('g_error', $e->getMessage());
        } catch (Exception $e) {
            // @todo  We should try to not use "g_error".
            $l_tpl->assign('g_error', $e->getMessage());
        }
    }

    /**
     * @param array $p_categoryData
     */
    private function overview_category_handling(array $p_categoryData)
    {
        if (isset($p_categoryData["isysgui_catg__id"])) {
            $l_const = $p_categoryData["isysgui_catg__const"];
            $l_title = isys_application::instance()->container->get('language')
                ->get($p_categoryData['isysgui_catg__title']);
        } elseif (isset($p_categoryData["isysgui_catg_custom__id"])) {
            $l_const = $p_categoryData["isysgui_catg_custom__const"];
            $l_title = isys_application::instance()->container->get('language')
                ->get($p_categoryData['isysgui_catg_custom__title']);
        } else {
            return;
        }

        if ($l_const === 'C__CATG__GLOBAL' && !is_value_in_constants($_GET[C__CMDB__GET__OBJECTTYPE], [
                'C__OBJTYPE__PERSON',
                'C__OBJTYPE__PERSON_GROUP',
                'C__OBJTYPE__ORGANIZATION'
            ])) {
            $l_sticky = true;
        } else {
            $l_sticky = false;
        }

        if (!isset(self::$m_unallowed_categories[$l_const])) {
            $l_selected = (isset(self::$m_already_selected_oview[$l_const]) || $l_sticky);

            if ($l_selected) {
                self::$m_selected_overview[self::$m_already_selected_oview[$l_const]] = [
                    "val"    => $l_title,
                    "sel"    => !!$l_selected,
                    "sticky" => !!$l_sticky,
                    "id"     => $l_const
                ];
            } else {
                self::$m_unselected_overview[] = [
                    "val"    => $l_title,
                    "sel"    => !!$l_selected,
                    "sticky" => !!$l_sticky,
                    "id"     => $l_const
                ];
            }
        }
    }

    /**
     * Public constructor, which overrides the protected one.
     *
     * @param  isys_module_request $p_modreq
     */
    public function __construct(isys_module_request $p_modreq)
    {
        parent::__construct($p_modreq);
    }
}
