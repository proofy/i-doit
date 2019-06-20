<input type="hidden" name="catg_custom_id" value="[{$catg_custom_id}]" />

<table class="contentTable">
	[{foreach $fields as $key => $field}]
	[{if $field.type eq "hr"}]
	<tr>
		<td colspan="2">
			<hr class="mt5 mb5" />
			<input type="hidden" name="C__CATG__CUSTOM__[{$key}]" value="hr">
		</td>
	</tr>
	[{elseif $field.type eq "html"}]
</table>
<input type="hidden" name="C__CATG__CUSTOM__[{$key}]" value="[{$field.title|escape:'html'}]">
[{$field.title}]
<table class="contentTable">
	[{elseif $field.type eq "script"}]
	<script type="text/javascript">
		(function () {
			"use strict";

			try
			{
				[{$field.title}]
			}
			catch (e)
			{
				setTimeout(function () {
					var msg = "You have an error in your custom javascript code:<br />\n" + e;

					if (Object.isUndefined(idoit.Notify))
					{
						alert(msg);
					}
					else
					{
						idoit.Notify.error(msg, {sticky: true});
					}
				}, 100);
			}
		})();
	</script>
	[{elseif $field.popup eq "dialog_plus"}]
	<tr class="[{if ($field.visibility == 'hidden')}] hide [{/if}]">
		<td class="key">[{isys type='f_label' name="C__CATG__CUSTOM__`$key`" ident=$field.title}]</td>
		<td class="value">
			[{isys type=$field.type p_strPopupType=$field.popup p_strTable="isys_dialog_plus_custom" p_identifier=$field.identifier condition="isys_dialog_plus_custom__identifier = '`$field.identifier`'" name="C__CATG__CUSTOM__`$key`"}]
		</td>

		[{if $field.multiselection > 0}]
		<script type="text/javascript">
			(function () {
				"use strict";

				if ($('[{"C__CATG__CUSTOM__`$key`"}]'))
				{
					var [{"C__CATG__CUSTOM__`$key`"}]_chosen = null,
						[{"C__CATG__CUSTOM__`$key`"}]_selected = [];

					$('[{"C__CATG__CUSTOM__`$key`"}]').on('[{"C__CATG__CUSTOM__`$key`"}]:updated', function () {

						$$('select#[{"C__CATG__CUSTOM__`$key`"}] option').each(function (ele) {
							if (ele.selected && [{"C__CATG__CUSTOM__`$key`"}]_selected.indexOf(ele.value) < 0)
							{
								[{"C__CATG__CUSTOM__`$key`"}]_selected.push(ele.value);
							}
						});

						if ([{"C__CATG__CUSTOM__`$key`"}]_chosen !== null)
						{
                            // Update selection
                            $('[{"C__CATG__CUSTOM__`$key`"}]').setValue([{"C__CATG__CUSTOM__`$key`"}]_selected).fire('chosen:updated');
						}
						else
						{
							[{"C__CATG__CUSTOM__`$key`"}]_chosen = new Chosen($('[{"C__CATG__CUSTOM__`$key`"}]'), {
								default_multiple_text: '[{isys type="lang" ident="LC__UNIVERSAL__CHOOSEN_PLACEHOLDER" p_bHtmlEncode=false}]',
								placeholder_text_multiple: '[{isys type="lang" ident="LC__UNIVERSAL__CHOOSEN_PLACEHOLDER" p_bHtmlEncode=false}]',
								no_results_text: '[{isys type="lang" ident="LC__UNIVERSAL__CHOOSEN_EMPTY" p_bHtmlEncode=false}]',
								disable_search_threshold: 10,
								search_contains: true
							});
						}

					});
					$('[{"C__CATG__CUSTOM__`$key`"}]').fire('[{"C__CATG__CUSTOM__`$key`"}]:updated');
				}
			})();
		</script>
		[{/if}]
	</tr>
	[{elseif $field.popup eq "browser_object"}]
	<tr class="[{if ($field.visibility == 'hidden')}] hide [{/if}]">
		<td class="key">[{isys type='f_label' name="C__CATG__CUSTOM__`$key`" ident=$field.title}]</td>
		<td class="value">[{isys type=$field.type p_strPopupType="browser_object_ng" name="C__CATG__CUSTOM__`$key`"}]</td>
	</tr>
	[{elseif $field.popup eq "file"}]
	<tr class="[{if ($field.visibility == 'hidden')}] hide [{/if}]">
		<td class="key">[{isys type='f_label' name="C__CATG__CUSTOM__`$key`" ident=$field.title}]</td>
		<td class="value">[{isys type=$field.type p_strPopupType="browser_file" name="C__CATG__CUSTOM__`$key`"}]</td>
	</tr>
	[{elseif $field.popup == "calendar"}]
	<tr class="[{if ($field.visibility == 'hidden')}] hide [{/if}]">
		<td class="key">[{isys type='f_label' name="C__CATG__CUSTOM__`$key`" ident=$field.title}]</td>
		<td class="value">[{isys type=$field.type p_strPopupType=$field.popup name="C__CATG__CUSTOM__`$key`" editmode=true}]</td>
	</tr>
	[{elseif $field.popup eq "report_browser"}]
	[{if !$disableReportField}]
	<tr class="[{if ($field.visibility == 'hidden')}] hide [{/if}]">
		<td class="key vat">[{isys type='f_label' name="C__CATG__CUSTOM__`$key`" ident=$field.title}]</td>
		<td class="value">[{isys type='f_dialog' p_arData=$reports name="C__CATG__CUSTOM__`$key`"}]</td>
	</tr>
	[{/if}]
	[{elseif $field.type == 'f_wysiwyg'}]
	<tr class="[{if ($field.visibility == 'hidden')}] hide [{/if}]">
		<td class="key vat">[{isys type='f_label' name="C__CATG__CUSTOM__`$key`" ident=$field.title}]</td>
		<td>[{isys type=$field.type name="C__CATG__CUSTOM__`$key`"}]</td>
	</tr>
	[{else}]
	<tr class="[{if ($field.visibility == 'hidden')}] hide [{/if}]">
		<td class="key vat">[{isys type='f_label' name="C__CATG__CUSTOM__`$key`" ident=$field.title}]</td>
		<td class="value">[{isys type=$field.type p_strPopupType=$field.popup name="C__CATG__CUSTOM__`$key`"}]</td>
	</tr>
	[{/if}]
	[{/foreach}]
</table>

<div id="reportCategory">
[{if $listing}]
	[{include file="src/classes/modules/report/templates/report_execute.tpl"}]
[{/if}]
[{if isset($reportExecutionFailed)}]
    <p class="box-red m10 p10">
        [{isys type="lang" ident="LC__MODULE__CUSTOM_FIELDS__REPORT_EXECUTION_FAULTY"}]
    </p>
[{/if}]
</div>

<script>
	idoit.Require.require('fileUploader');
</script>
