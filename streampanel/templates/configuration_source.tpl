{check ($config.mountpoints.icesreencode==0) and ($modify_encoder_settings==0)}
{otherwise}

<div class="m-portlet m-portlet--mobile m-portlet--rounded m-portlet--head-solid-bg">
<div class="m-portlet__head sp-box-table">
<div class="m-portlet__head-caption">
<div class="m-portlet__head-title">
<h3 class="m-portlet__head-text sp-box-table"> {="AutoDJ: Extra"} </h3>
</div>
</div>
</div>
<div class="m-portlet__body">

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Crossfade style"}</span>
</div>
<select name="config[icescrossmix]" class="form-control">
<option value="0"{if $config.icescrossmix==0} selected="selected"{/if}>{="Fade current track out, fade next in"}</option>
<option value="1"{if $config.icescrossmix>0} selected="selected"{/if}>{="Mix only (full volume, no fading)"}</option>
</select>
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Minimum track length"}</span>
</div>
<input type="text" name="config[icesmincrossfade]" class="form-control" value="{$config.icesmincrossfade|htmlentities}" /> {$errors.icesmincrossfade|checkerror}
<div class="input-group-append">
<span class="input-group-text">{="second(s)"} ({="shorter tracks will not be crossfaded; min. 10 sec"})</span>
</div>
</div>

</div>
</div>
{/check}
