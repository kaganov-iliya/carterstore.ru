<fieldset>
  <div class="form-group required">
    <label class="col-sm-2 control-label"><?php echo $entry_captcha; ?></label>
    <div class="col-sm-10">
      <div id="recaptcha2"></div>
      <?php if ($error_captcha) { ?>
      <div class="text-danger"><?php echo $error_captcha; ?></div>
      <?php } ?>
    </div>
  </div>
</fieldset>
<script type="text/javascript">
	var onloadCallback = function() {
		<?php if ($recaptcha) { ?>
			grecaptcha.render('recaptcha1', {
			  'sitekey' : '<?php echo $site_key; ?>'
			});
		<?php } ?>
		grecaptcha.render('recaptcha2', {
		  'sitekey' : '<?php echo $site_key; ?>'
		});
	};
</script>