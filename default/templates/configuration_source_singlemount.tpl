{resource type="js" src="/system/jquery.centova.tabset.js" depends="common"}
<div class="adjtabset">
	<fieldset>
		<legend>{="General"}</legend>
<!-- insert[scautodj] -->
	</fieldset>
<!-- insert[scmpcfg] -->
</div>

{onready}
	$('.adjtabset').centovaTabSet({ tabclass: 'smalltabs' });
{/onready}