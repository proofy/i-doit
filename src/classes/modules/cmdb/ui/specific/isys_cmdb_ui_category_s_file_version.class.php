<?php

/**
 * i-doit
 *
 * CMDB Specific category - File Version.
 *
 * @package     i-doit
 * @subpackage  CMDB_Categories
 * @author      Dennis Stuecken <dstuecken@i-doit.org>
 * @author      Andre Woesten <awoesten@i-doit.org>
 * @author      Leonard Fischer <lfischer@i-doit.org>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_cmdb_ui_category_s_file_version extends isys_cmdb_ui_category_s_file
{
    /**
     * Process method.
     *
     * @param   isys_cmdb_dao_category $p_cat
     *
     * @return array|void
     */
    public function process(isys_cmdb_dao_category $p_cat)
    {
        global $g_dirs;

        if (!($p_cat instanceof isys_cmdb_dao_category_s_file_version)) {
            return;
        }

        $l_gets = isys_module_request::get_instance()
            ->get_gets();

        $l_rules = [];
        $l_new_file = true;
        $l_download_link = '';
        $l_catdata = $p_cat->get_general_data();
        $l_file_dao = $p_cat->get_file_by_version_id($l_gets[C__CMDB__GET__CATLEVEL]);
        $l_active_file = $l_file_dao->get_row();

        /*
         * Store upload path in a hidden field and
         *  -> activate the download link
         *  -> set the enctype
         */
        if (is_array($l_active_file)) {
            $l_new_file = false;
            $l_dao_person = new isys_cmdb_dao_category_s_person_master($p_cat->get_database_component());
            $l_rules["C__CATS__FILE_UPLOAD_FROM"]["p_strValue"] = $l_dao_person->get_username_by_id_as_string($l_active_file["isys_file_physical__user_id_uploaded"]);

            // Calculate the filesize
            $l_filepath = $g_dirs["fileman"]["target_dir"] . DS . $l_active_file["isys_file_physical__filename"];

            if (file_exists($l_filepath)) {
                $l_dlgets = isys_module_request::get_instance()
                    ->get_gets();
                $l_dlgets[C__GET__FILE_MANAGER] = "get";
                $l_dlgets[C__GET__FILE__ID] = $l_active_file["isys_file_version__isys_file_physical__id"];
                $l_dlgets[C__GET__MODULE_ID] = defined_or_default('C__MODULE__CMDB');

                $l_download_link = isys_glob_build_url(urldecode(isys_glob_http_build_query($l_dlgets)));

                $l_filesize = filesize($l_filepath);

                if ($l_filesize < 100000) {
                    $l_rules["C__CATS__FILE_SIZE"]["p_strValue"] = isys_convert::memory($l_filesize, 'C__MEMORY_UNIT__KB', C__CONVERT_DIRECTION__BACKWARD) . ' ' .
                        isys_application::instance()->container->get('language')
                            ->get('LC__CMDB__MEMORY_UNIT__KB');
                } else {
                    $l_rules["C__CATS__FILE_SIZE"]["p_strValue"] = isys_convert::memory($l_filesize, 'C__MEMORY_UNIT__MB', C__CONVERT_DIRECTION__BACKWARD) . ' ' .
                        isys_application::instance()->container->get('language')
                            ->get('LC__CMDB__MEMORY_UNIT__MB');
                }
            }

            // Assign some info variables.
            $l_rules["C__CATS__FILE_NAME_ORIGINAL"]["p_strValue"] = $l_active_file["isys_file_physical__filename_original"];
            $l_rules["C__CATS__FILE_VERSION_TITLE"]["p_strValue"] = $l_active_file["isys_file_version__title"];
            $l_rules["C__CATS__FILE_VERSION_DESCRIPTION"]["p_strValue"] = $l_active_file["isys_file_version__description"];
            $l_rules["C__CATS__FILE_MD5"]["p_strValue"] = $l_active_file["isys_file_physical__md5"];
            $l_rules["C__CATS__FILE_NAME"]["p_strValue"] = urlencode($l_catdata["isys_file_physical__filename_original"]);
            $l_rules["C__CATS__FILE_REVISION"]["p_strValue"] = $l_active_file["isys_file_version__revision"];
            $l_rules["C__CATS__FILE_UPLOAD_DATE"]["p_strValue"] = isys_application::instance()->container->locales->fmt_datetime($l_active_file["isys_file_physical__date_uploaded"],
                true, false);
        }

        $this->deactivate_commentary()
            ->get_template_component()
            ->smarty_tom_add_rules('tom.content.bottom.content', $l_rules)
            ->assign('new_file_upload', $l_new_file)
            ->assign('encType', 'multipart/form-data')
            ->assign('download_link', $l_download_link);

        // This is necessary for the file-upload.
        isys_component_template_navbar::getInstance()
            ->set_save_mode('formsubmit');
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
     * @throws isys_exception_general
     * @author  Dennis Stücken <dstuecken@synetics.de>
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
        $l_supervisor = isys_auth_cmdb::instance()
            ->has_rights_in_obj_and_category(isys_auth::DELETE, $_GET[C__CMDB__GET__OBJECT], $p_cat->get_category_const());

        isys_component_template_navbar::getInstance()
            ->set_visible(false, C__NAVBAR_BUTTON__ARCHIVE)
            ->set_active($l_supervisor, C__NAVBAR_BUTTON__PURGE)
            ->set_visible(true, C__NAVBAR_BUTTON__PURGE);

        return parent::process_list($p_cat, [C__CMDB__GET__CATS => defined_or_default('C__CATS__FILE_VERSIONS')], null, null, true, true, "isys_file_version__id");
    }
}
