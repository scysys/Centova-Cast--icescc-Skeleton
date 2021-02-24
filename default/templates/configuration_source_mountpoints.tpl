	{include "autodj_mountpoint_lang.tpl"}

	<fieldset id="autodj_tab">
		<legend>{$mptabcaption}</legend>
		<table cellspacing="1" cellpadding="0" border="0">
		{if $mpsinglemount==0}
		<tr>
			<td width="130">{="Use autoDJ"}:</td>
			<td colspan="3"><select name="{$mpfieldname}[useautodj]" class="list_editor_field" size="1" id="useautodj"><option value="0">{="No"}</option><option value="1">{="Yes"}</option></select></td>
		</tr>
		{/if}
		<tr>
			<td>{if $mpsinglemount}{="Stream name"}{else}{="Mount point name"}{/if}:&nbsp;</td>
			<td colspan="3"><input type="text" name="{$mpfieldname}[icesname]" class="list_editor_field" size="32" maxlength="64" value="{$config.mountpoints.icesname|htmlentities}" /></td>
		</tr>
		<tr>
			<td>{="Description"}:&nbsp;</td>
			<td colspan="3"><input type="text" name="{$mpfieldname}[icesdescription]" class="list_editor_field" size="32" maxlength="64" value="{$config.mountpoints.icesdescription|htmlentities}" /></td>
		</tr>
		<tr>
			<td>{="Genre"}:&nbsp;</td>
			<td colspan="3"><input type="text" name="{$mpfieldname}[icesgenre]" class="list_editor_field" size="32" maxlength="64" value="{$config.mountpoints.icesgenre|htmlentities}" /></td>
		</tr>
		<tr>
			<td>{="Public"}:&nbsp;</td>
			<td colspan="3">
				<select name="{$mpfieldname}[icespublic]" class="list_editor_field" size="1">
				<option value="0"{if $config.mountpoints.icespublic==0} selected="selected"{/if}>{="No"}</option>
				<option value="1"{if $config.mountpoints.icespublic>0} selected="selected"{/if}>{="Yes"}</option>
				</select>
			</td>
		</tr>
		{check ($mpsinglemount==0) or ($modify_encoder_settings>0)}
		<tr>
			<td>{="Re-encoding"}:&nbsp;</td>
			<td>
				<select name="{$mpfieldname}[icesreencode]" class="list_editor_field" id="reencode" size="1">
				<option value="1"{if $config.mountpoints.icesreencode>0} selected="selected"{/if}>{="Enabled"}</option>
				<option value="0"{if $config.mountpoints.icesreencode==0} selected="selected"{/if}>{="Disabled"}</option>
				</select>
			</td>
			<td></td>
		</tr>
		<tr>
			<td>{="Channels"}:&nbsp;</td>
			<td>
				<select name="{$mpfieldname}[iceschannels]" class="list_editor_field encoder_option" size="1">
				<option value="2"{if $config.mountpoints.iceschannels!=1} selected="selected"{/if}>{="Stereo"}</option>
				<option value="1"{if $config.mountpoints.iceschannels==1} selected="selected"{/if}>{="Mono"}</option>
				</select>
			</td>

			<td width="130" align="right">{="Sample rate"}:&nbsp;</td>
			<td>
				{* Note: You can add custom sample rates by simply appending them to *}
				{* this list, separated by commas as shown. *}
				{set $samplerates}8000,11025,22050,32000,44100,48000,88200,96000{/set}

				<select name="{$mpfieldname}[icessamplerate]" class="list_editor_field encoder_option" size="1">
				{loop $samplerate=$samplerates|explode:",":1000}
				<option value="{$samplerate}"{if $config.mountpoints.icessamplerate==$samplerate} selected="selected"{/if}>{="%s Hz",$samplerate}</option>
				{/loop}
				</select>
			</td>
		</tr>
		{/check}
		{check ($mpsinglemount==0) or ($modify_bitrate>0)}
		<tr>
			<td>{="Bit rate"}:&nbsp;</td>
			<td>{bitrate_field name="{$mpfieldname}[icesbitrate]" class="list_editor_field mpbitrate encoder_option" value=$config.mountpoints.icesbitrate} {$errors.maxbitrate|checkerror}</td></td>
			<td></td><td></td>
		</tr>
		{/check}
		</table>
	</fieldset>
