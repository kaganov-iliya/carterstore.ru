<div class="payment_method">	
	<?php if ($error_warning) { ?>
		<div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
	<?php } ?>
	<?php if ($payment_methods) { ?>
		<?php foreach ($payment_methods as $payment_method) { ?>
			<div class="radio">
				<?php $lock = ((isset($payment_method['error']) and empty($payment_method['error'])) or !isset($payment_method['error'])) ? false : true; ?>
				<?php if (($payment_method['code'] == $code or !$code) and $lock == false) { ?>
					<?php $code = $payment_method['code']; ?>
					<label class="input"><input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" title="<?php echo $payment_method['title']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" <?php if ($lock == true) { echo 'disabled';} ?> /><span></span><?php echo $payment_method['title']; ?></label>
				<?php } else { ?>
					<label class="input"><input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" title="<?php echo $payment_method['title']; ?>" id="<?php echo $payment_method['code']; ?>" <?php if ($lock == true) { echo 'disabled';} ?> /><span></span><?php echo $payment_method['title']; ?></label>
				<?php } ?>
			</div>
		<?php } ?>
	<?php } ?>
</div>
