<style type="text/css">
    #report_view__layer2_nets div.box {
        width: 100%;
    }

    #report_view__layer2_nets span {
        color: #aaa;
    }
</style>

<div id="report_view__layer2_nets">
	<table class="mainTable">
		<thead>
			<tr style="padding-bottom:5px;">
				<th>[{isys type='lang' ident='LC__CMDB__OBJTYPE__LAYER2_NET'}]</th>
				<th>[{isys type='lang' ident='LC__CATD__PORT'}]</th>
				<th>[{isys type='lang' ident='LC__UNIVERSAL__OBJECT_TITLE'}]</th>
				<th>[{isys type='lang' ident='LC__REPORT__VIEW__LAYER2_NETS__IP_ADDRESSES'}]</th>
				<th>[{isys type='lang' ident='LC__CMDB__OBJTYPE__LAYER3_NET'}]</th>
			</tr>
		</thead>
		<tbody id="view_object_list">
			[{* The content will be added via Javascript. *}]
		</tbody>
	</table>
</div>


<script type="text/javascript">
var data_json = [{$data}],
	data_row,
	table = $('view_object_list'),
	cycle = ['CMDBListElementsOdd', 'CMDBListElementsEven'];

for (data_row in data_json) {
	if (data_json.hasOwnProperty(data_row)) {
        table.insert(new Element('tr', {className: cycle[(data_row % 2)]})
            .insert(new Element('td').update(data_json[data_row][0]))
            .insert(new Element('td').update(data_json[data_row][1]))
            .insert(new Element('td').update(data_json[data_row][2]))
            .insert(new Element('td').update(data_json[data_row][3]))
            .insert(new Element('td').update(data_json[data_row][4])));
    }
}
</script>