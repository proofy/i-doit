<div>
	<div class="p10">
		<table class="contentTable" style="width:695px;">
			<colgroup>
				<col style="width:120px;" />
			</colgroup>
			<tr>
				<td class="right"><label for="dialog_protocol">[{isys type="lang" ident="LC__CMDB__CATG__NET_LISTENER__PROTOCOL"}]:</label></td>
				<td class="value pl20">
					[{isys type='f_dialog' name='dialog_protocol' p_bDbFieldNN=0 chosen=1 p_strClass="input-small" p_bInfoIconSpacer=0}]
				</td>
			</tr>
			<tr>
				<td class="right"><label for="dialog_protocol_5">[{isys type="lang" ident="LC__CMDB__CATG__NET_LISTENER__LAYER_5_PROTOCOL"}]:</label></td>
				<td class="value pl20">
					[{isys type='f_dialog' name='dialog_protocol_5' p_bDbFieldNN=0 chosen=1 p_strClass="input-small" p_bInfoIconSpacer=0}]
				</td>
			</tr>
			<tr>
				<td class="right"><label for="dialog_net">[{isys type="lang" ident="LC__CMDB__CATG__NET_LISTENER__LISTENER_NETWORK"}]:</label></td>
				<td class="bold pl20">
					[{isys type='f_dialog' chosen=1 name='dialog_net' p_bDbFieldNN=0 p_strClass="input-small" p_bInfoIconSpacer=0}]
				</td>
			</tr>
			<tr>
				<td class="right"><label for="text_port">[{isys type="lang" ident="LC__CMDB__CATG__NET_LISTENER__LISTENER_PORT"}]:</label></td>
				<td class="bold">
					<button type="button" id="data-loader" class="fr btn">
						<img src="[{$dir_images}]icons/silk/database_table.png" class="mr5" /><span>[{isys type="lang" ident="LC__UNIVERSAL__LOAD"}]</span>
					</button>
					[{isys type='f_text' p_strStyle="width:40px;" name='text_port'}]
				</td>
			</tr>
		</table>
	</div>

	<fieldset class="cb overview">
		<legend>
			<span>
				[{isys type="lang" ident="LC__UNIVERSAL__RESULT"}]
			</span>
		</legend>

		<button type="button" id="csv-export" class="fr m10 btn" style="font-weight: normal;display:none;">
			<img src="[{$dir_images}]icons/silk/page_white_office.png" class="mr5" /><span>CSV-Export</span>
		</button>

		<div id="networkConnections" class="mt10 pt10"></div>

	</fieldset>
</div>

<script type="text/javascript">

	$('csv-export').on('click', function () {
		if ($('data-grid-networkConnections'))
		{
			$('data-grid-networkConnections').exportTableAsCSV();
		}
	});

	$('data-loader').on('click', function () {

		$('networkConnections').innerHTML = '';
		$('csv-export').appear();

		new Ajax.Request('[{$ajax_url}]',
		{
			method:"post",
			parameters: $('isys_form').serialize(true),
			onSuccess:function (transport) {
				if (transport.responseJSON)
				{
					var ajax_pager = false, ajax_pager_url = '', ajax_pager_preload = 0, max_pages = 0,
						name = 'networkConnections';

					window.currentReportView = new Lists.Objects(name, {
						max_pages: max_pages,
						ajax_pager: ajax_pager,
						ajax_pager_url: ajax_pager_url,
						ajax_pager_preload: ajax_pager_preload,
						data: transport.responseJSON,
						filter: "top",
						paginate: "top",
						pageCount: 150,
						draggable: false,
						checkboxes: false
					});
				}
			}
		});

	});
</script>