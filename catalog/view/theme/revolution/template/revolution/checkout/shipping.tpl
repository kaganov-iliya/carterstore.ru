<div class="col-sm-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			 <h3 class="panel-title"><?php echo $text_revcheckout_shipping_method;?></h3>
		</div>
		<div class="panel-body">
			<?php if ($error_warning) { ?>
				<div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
			<?php } ?>
			<?php if ($shipping_methods) { ?>
				<?php foreach ($shipping_methods as $shipping_method) { ?>
					<?php if (!$shipping_method['error']) { ?>
						<?php foreach ($shipping_method['quote'] as $quote) { ?>
							<div class="radio">
								<?php if ($quote['code'] == $code || !$code) { ?>
									<?php $code = $quote['code']; ?>
									<label class="input">
										<input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" title="<?php echo $quote['title']; ?>" checked="checked" />
										<span></span>
										<span><span class="method"><?php echo $quote['title']; ?></span><span class="method">
										<?php if (preg_replace('/[^0-9]/', '', $quote['text']) > 0) { ?>
											<?php echo $quote['text']; ?>
										<?php } ?>
										</span></span>
									</label>
								<?php } else { ?>
									<label class="input">
										<input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" title="<?php echo $quote['title']; ?>" />
										<span></span>
										<span><span class="method"><?php echo $quote['title']; ?></span><span class="method">
										<?php if (preg_replace('/[^0-9]/', '', $quote['text']) > 0) { ?>
											<?php echo $quote['text']; ?>
										<?php } ?>
										</span></span>
									</label>
								<?php } ?>
							</div>
						<?php } ?>
					<?php } else { ?>
						<div class="alert alert-danger"><?php echo $shipping_method['error']; ?></div>
					<?php } ?>
				<?php } ?>
			<?php } ?>
		</div>
	</div>
</div>