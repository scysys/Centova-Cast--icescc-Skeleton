{check ($config.mountpoints.icesreencode==0) and ($modify_encoder_settings==0)}
{otherwise}
<table cellspacing="1" cellpadding="0" border="0">
<tr>
	<td width="140">{="Crossfade style"}:&nbsp;</td>
	<td>
		<select name="config[icescrossmix]" size="1">
		<option value="0"{if $config.icescrossmix==0} selected="selected"{/if}>{="Fade current track out, fade next in"}</option>
		<option value="1"{if $config.icescrossmix>0} selected="selected"{/if}>{="Mix only (full volume, no fading)"}</option>
		</select>
	</td>
</tr>
<tr>
	<td>{="Minimum track length"}:&nbsp;</td>
	<td><input type="text" name="config[icesmincrossfade]" size="5" value="{$config.icesmincrossfade|htmlentities}" /> {="second(s)"} ({="shorter tracks will not be crossfaded; min. 10 sec"}) {$errors.icesmincrossfade|checkerror}</td>
</tr>
</table>
{/check}
