<script type="text/javascript">
	'use strict';

	var updateMinimumMatch = function(){
		var minimumMatch = $('C__MODULE__SYSTEM__OBJECT_MATCHING__MATCHINGS__selected_values').value, minimumMatchLength, i, newOption,
			selectedMinMatch = $('C__MODULE__SYSTEM__OBJECT_MATCHING__MINIMUM_MATCH').selectedIndex;

		if(minimumMatch.length == 0)
		{

		}
		else
		{
			minimumMatchLength = minimumMatch.split(',').length;

			$('C__MODULE__SYSTEM__OBJECT_MATCHING__MINIMUM_MATCH').update('');
			for (i = 0; i < minimumMatchLength; i++)
			{
				newOption = new Option(i + 1, i + 1);
				if (i == selectedMinMatch)
				{
					newOption.selected = true;
				}
				$('C__MODULE__SYSTEM__OBJECT_MATCHING__MINIMUM_MATCH').insert(newOption);
			}
		}
	};

</script>
<h3 class="p5 gradient">[{isys type="lang" ident="LC__MODULE__JDISC__PROFILES__OBJECT_MATCHING_PROFILE"}]</h3>

<input type="hidden" name="profileID" value="[{$profileID}]">

<table class="contentTable">
	<tr>
		<td class="key">[{isys type="f_label" name="C__MODULE__SYSTEM__OBJECT_MATCHING__TITLE" ident="LC__MODULE__SYSTEM__OBJECT_MATCHING__TITLE"}]</td>
		<td class="value">[{isys type="f_text" name="C__MODULE__SYSTEM__OBJECT_MATCHING__TITLE"}]</td>
	</tr>
	<tr>
		<td class="key">[{isys type="f_label" name="C__MODULE__SYSTEM__OBJECT_MATCHING__MATCHINGS" ident="LC__MODULE__SYSTEM__OBJECT_MATCHING__MATCHINGS"}]</td>
		<td class="value">[{isys type="f_dialog_list"  name="C__MODULE__SYSTEM__OBJECT_MATCHING__MATCHINGS" p_bits=true add_callback="updateMinimumMatch();"}]</td>
	</tr>
	<tr>
		<td class="key">[{isys type="f_label" name="C__MODULE__SYSTEM__OBJECT_MATCHING__MINIMUM_MATCH" ident="LC__MODULE__SYSTEM__OBJECT_MATCHING__MINIMUM_MATCH"}]</td>
		<td class="value">[{isys type="f_dialog" name="C__MODULE__SYSTEM__OBJECT_MATCHING__MINIMUM_MATCH" p_strStyle="width:80px;" p_bDbFieldNN="1"}]</td>
	</tr>
</table>