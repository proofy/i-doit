<table class="mainTable w100">
	<thead>
		<tr style="padding-bottom:5px;" class="">
			<th class="pl5">
				[{isys type='lang' ident='LC__CMDB__OBJTYPE__LAYER3_NET'}]
			</th>
			<th class="pl5">
				[{isys type='lang' ident='LC__UNIVERSAL__OBJECT_TITLE'}]
			</th>
			<th class="pl5">
				[{isys type='lang' ident='LC__REPORT__VIEW__LAYER2_NETS__IP_ADDRESSES'}]
			</th>
			<th class="pl5">
			[{isys type='lang' ident='LC__CATD__PORT'}]
			</th>
			<th class="pl5">
				[{isys type='lang' ident='LC__CMDB__OBJTYPE__LAYER2_NET'}]
			</th>
		</tr>
	</thead>
	<tbody id="view_object_list">
		[{* The content will be added via Javascript. *}]
	</tbody>
</table>

<script type="text/javascript">
var data_json = [{$data}];

var counter = 1;

data_json.each(function(e) {
	var tr_class = (counter % 2 == 0)? 'CMDBListElementsOdd': 'CMDBListElementsEven';
	var tr = new Element('tr', {'class':tr_class})
		.insert(new Element('td').update(e[0]))
		.insert(new Element('td').update(e[1]))
		.insert(new Element('td').update(e[2]))
		.insert(new Element('td').update(e[3]))
		.insert(new Element('td').update(e[4]));

	$('view_object_list').insert(tr);
	counter++;
}.bind(this));
</script>