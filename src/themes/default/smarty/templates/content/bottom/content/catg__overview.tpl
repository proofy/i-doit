<div>

<input type="hidden" name="navmode_ref" value="[{if $g_navmode}][{$g_navmode}][{else}][{$smarty.const.C__NAVMODE__EDIT}][{/if}]" />

[{if is_array($g_categories) && count($g_categories) > 0}]
    [{assign var="displayed_catgs" value=0}]
	[{foreach from=$g_categories item='l_cat' name="overview_loop"}]
        [{assign var="cat_const" value=$l_cat.const}]
		[{if !empty($l_cat.id) && $l_cat.id != $smarty.const.C__CATG__OVERVIEW}]

            [{assign var="displayed_catgs" value=$displayed_cats+1}]
			[{if is_object($l_cat.dao)}]
				[{if method_exists($l_cat.dao, "get_ui")}]
					[{assign var="l_cat_id" value=$l_cat.id}]
					[{assign var="l_cat_type" value=$l_cat.dao->get_category_type()}]

					[{if (isset($cat_validation.$cat_const))}]
						<!--[{$l_cat.dao->set_validation($cat_validation.$cat_const)}]-->

						[{if !isset($show_detail) && !$cat_validation.$cat_const}]
							[{assign var='show_detail' value=true}]
						[{/if}]
					[{/if}]

                    [{assign var=l_template value=$l_cat.template}]
					<fieldset id="[{$l_cat.dao|get_class}]" data-list-id="[{$l_cat.dao->get_list_id()}]" class="overview[{if !$l_cat.dao->get_validation()}] box-red[{/if}]" style="[{if !$l_cat.dao->get_validation()}]border:1px solid #ff0000;[{/if}]">
						<legend><span[{if $smarty.foreach.overview_loop.first}] style="border-top:0;"[{/if}]>[{$l_cat.title}]</span></legend>

							[{if ($l_cat.multivalued == 0) || ($g_navmode == $smarty.const.C__NAVMODE__NEW || $g_navmode == $smarty.const.C__NAVMODE__SAVE) || $show_detail || ($smarty.const.C__CATG__IP == $l_cat_id)}]

								[{if $l_cat_type == $smarty.const.C__CMDB__CATEGORY__TYPE_SPECIFIC}]
									<input type="hidden" name="g_cats_id[]" value="[{$l_cat_id}]" />

									[{if $g_navmode == $smarty.const.C__NAVMODE__NEW || $l_cat.multivalued == 0}]
                                        [{assign var=l_additional_template_before value=$l_cat.template_before}]
                                        [{if ($l_additional_template_before != "")}]
                                            [{include file=$l_additional_template_before}]
                                        [{/if}]

										[{include file=$l_template}]

                                        [{assign var=l_additional_template_after value=$l_cat.template_after}]
                                        [{if ($l_additional_template_after != "")}]
                                            [{include file=$l_additional_template_after}]
                                        [{/if}]

									[{/if}]

									[{if ($l_cat.multivalued == 0 || $g_navmode == $smarty.const.C__NAVMODE__NEW)}]
                                        <table class="contentTable commentaryTable">
                                            <tr>
                                                <td class="key" style="vertical-align: top;">[{isys type="f_label" name="C__CMDB__CAT__COMMENTARY_$l_cat_type$l_cat_id" ident="LC__CMDB__CAT__COMMENTARY"}]</td>
												<td class="">[{isys type="f_wysiwyg" name="C__CMDB__CAT__COMMENTARY_$l_cat_type$l_cat_id"}]</td>
                                            </tr>
                                        </table>
									[{/if}]

								[{elseif $l_cat_type == $smarty.const.C__CMDB__CATEGORY__TYPE_GLOBAL}]
                                    [{if method_exists($l_cat.dao, 'get_catg_custom_id')}]
                                        [{assign var=commentary_field value="C__CMDB__CAT__COMMENTARY_"|cat:$smarty.const.C__CMDB__CATEGORY__TYPE_CUSTOM|cat:$l_cat_id}]
                                        <input type="hidden" name="g_cat_custom_id[]" value="[{$l_cat_id}]"/>
                                    [{else}]
                                        [{assign var=commentary_field value="C__CMDB__CAT__COMMENTARY_$l_cat_type$l_cat_id"}]
                                        <input type="hidden" name="g_cat_id[]" value="[{$l_cat_id}]"/>
                                    [{/if}]

									[{if $g_navmode == $smarty.const.C__NAVMODE__NEW || $l_cat.multivalued == 0 ||
                                        ($smarty.const.C__CATG__IP == $l_cat_id && $smarty.const.C__CMDB__CATEGORY__TYPE_GLOBAL == $l_cat_type)}]
                                        [{assign var=l_additional_template_before value=$l_cat.template_before}]
                                        [{if ($l_additional_template_before != "")}]
                                            [{include file=$l_additional_template_before}]
                                        [{/if}]

                                        [{if isset($l_cat.fields)}]
                                            [{assign var="fields" value=$l_cat.fields}]
                                        [{/if}]

										[{include file=$l_template}]

                                        [{assign var=l_additional_template_after value=$l_cat.template_after}]
                                        [{if ($l_additional_template_after != "")}]
                                            [{include file=$l_additional_template_after}]
                                        [{/if}]
									[{/if}]

									[{if $l_cat.multivalued == 0 || $g_navmode == $smarty.const.C__NAVMODE__NEW}]
                                        <table class="contentTable">
                                            <tr>
                                                <td colspan="2">
                                                    <hr class="partingLine">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="key" style="vertical-align: top;">[{isys type="f_label" name="$commentary_field" ident="LC__CMDB__CAT__COMMENTARY"}]</td>
                                                <td class="">[{isys type="f_wysiwyg" name="$commentary_field"}]</td>
                                            </tr>
                                        </table>
									[{/if}]
								[{/if}]
							[{/if}]

                            [{if ($smarty.const.C__CATG__IP != $l_cat_id || $smarty.const.C__CMDB__CATEGORY__TYPE_SPECIFIC == $l_cat_type)}]
                                [{if ($l_cat.multivalued == 1 && $g_navmode != $smarty.const.C__NAVMODE__NEW)}]
                                    <div class="list">
                                        [{if $l_cat_id == $smarty.const.C__CATG__CONTACT}]
                                            <input type="hidden" name="g_cat_id[]" value="[{$l_cat_id}]" />
                                        [{/if}]
									<div class="list">
										[{if $LogbookList}]
											[{$LogbookList}]
										[{else}]
											[{$l_cat.dao->get_ui()->get_template_component()->getVariable($l_cat.const)}]
										[{/if}]
									</div>
                                [{/if}]
							[{/if}]

					</fieldset>

				[{else}]
					<p>get_ui() not found for [{$l_cat.title}]</p>
				[{/if}]
			[{/if}]

			[{assign var=LogbookList value=false}]
			[{assign var=objectTableList value=false}]
		[{/if}]
	[{/foreach}]

    [{* If there are no categories available to display, we will highlight that by an message to prevent an empty page *}]
    [{if ($displayed_catgs == 0)}]
        <h2 class="mb10"><img src="[{$dir_images}]icons/silk/lock.png" /> [{isys type="lang" ident="LC__AUTH__EXCEPTION_TITLE"}]</h2>

        <p class="box-red p5">[{isys type="lang" ident="LC__AUTH__CMDB_EXCEPTION__EMPTY_OVERVIEW_PAGE"}]</p>
    [{/if}]
[{else}]
	<p class="p10">
		[{isys type="lang" ident="LC__CMDB__CATG__OVERVIEW__EMPTY"}]
		<br /><br />
		Quicklink:<br />
		<a href="?objGroupID=[{$smarty.get.objGroupID|escape|default:2}]&viewMode=[{$smarty.const.C__CMDB__VIEW__CONFIG_OBJECTTYPE}]&tvMode=[{$smarty.const.C__CMDB__VIEW__TREE_OBJECTTYPE}]&objTypeID=[{$smarty.get.objTypeID}]">[{isys type="lang" ident="LC__CMDB__OBJTYPE__CONFIGURATION_MODUS"}]</a>
	</p>
[{/if}]

</div>