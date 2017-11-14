<?php if ($error_warning) { ?>
	<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?><button type="button" class="close" data-dismiss="alert">&times;</button></div>
<?php } ?>
<?php if ($products || $vouchers) { ?>
	<div class="table_wrap">
		<table class="table table-responsive revcart_table">
			<thead>
				<tr>
					<?php if ($settings['revcheckout_foto']) { ?>
						<td class="revcart_image image hidden-xs"><?php echo $column_revcheckout_image; ?></td>
					<?php } ?>
					<td class="text-left"><?php echo $column_name; ?></td>
					<?php if ($settings['revcheckout_model']) { ?>
						<td class="revcart_model hidden-xs"><?php echo $column_model; ?></td>
					<?php } ?>
					<?php if ($settings['revcheckout_sku']) { ?>
						<td class="revcart_sku hidden-xs"><?php echo $column_sku; ?></td>
					<?php } ?>
					<?php if ($settings['revcheckout_kolvo']) { ?>
						<td class="revcart_kolvo quantity"><?php echo $column_quantity; ?></td>
					<?php } ?>
					<td class="revcart_price text-right"><?php echo $column_revcheckout_price; ?></td>
					<?php if ($settings['revcheckout_vsego']) { ?>
						<td class="revcart_vsego total hidden-xs"><?php echo $column_revcheckout_total; ?></td>
					<?php } ?>
					<td class="revcart_delete delete"></td>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($products as $product) { ?>
					<tr>
						<?php if ($settings['revcheckout_foto']) { ?>
							<td class="revcart_image image hidden-xs"><img src="<?php echo $product['thumb']; ?>" class="img-thumbnail" title="<?php echo $product['name']; ?>" /></td>
						<?php } ?>
						<td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
							<?php if (!$product['stock']) { ?><span class="text-danger">***</span><?php } ?>
						<?php foreach ($product['option'] as $option) { ?>
							<br /><small><?php echo $option['name']; ?>: <?php if (isset($option['option_value']) && !empty($option['option_value'])) echo $option['option_value'];else if (isset($option['value'])) echo $option['value']; ?></small>
						<?php } ?>
						</td>
						<?php if ($settings['revcheckout_model']) { ?>
							<td class="revcart_model hidden-xs"><?php if ($product['option'] && $option['model']) { ?><?php echo $option['model']; ?><?php } else { ?><?php echo $product['model']; ?><?php } ?></td>
						<?php } ?>
						<?php if ($settings['revcheckout_sku']) { ?>
							<td class="revcart_sku hidden-xs"><?php echo $product['sku']; ?></td>
						<?php } ?>
						<?php if ($settings['revcheckout_kolvo']) { ?>
							<td class="revcart_kolvo quantity">
								<div class="quantity number">
									<div class="frame-change-count">
										<div class="btn-plus">
											<button type="button" onclick="validate_pole_cart2(this,<?php echo $product['cart_id']; ?>,'+',<?php echo $product['minimum']; ?>,<?php echo $product['quantity_pr']; ?>);">+</button>
										</div>
										<div class="btn-minus">
											<button type="button" onclick="validate_pole_cart2(this,<?php echo $product['cart_id']; ?>,'-',<?php echo $product['minimum']; ?>,<?php echo $product['quantity_pr']; ?>);">-</button>
										</div>
									</div>
									<input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" onchange="update_cart_manual2(this, '<?php echo $product['cart_id']; ?>', '<?php echo $product['minimum']; ?>', '<?php echo $product['quantity_pr']; ?>');" onkeyup="update_cart_manual2(this, '<?php echo $product['cart_id']; ?>', '<?php echo $product['minimum']; ?>', '<?php echo $product['quantity_pr']; ?>');" size="1" class="plus-minus" /> 
								</div>
							</td>
						<?php } ?>
						<td class="revcart_price"><?php echo $product['price']; ?></td>
						<?php if ($settings['revcheckout_vsego']) { ?>
							<td class="revcart_vsego total text-right hidden-xs"><?php echo $product['total']; ?></td>
						<?php } ?>
						<td class="revcart_delete delete text-center"><button type="button" onclick="cart_update('<?php echo $product['cart_id']; ?>', 0);" title="<?php echo $button_remove; ?>" class=""><i class="fa fa-trash-o"></i></button></td>
					</tr>
				<?php } ?>
				<?php foreach ($vouchers as $voucher) { ?>
					<tr>
						<td class="image text-center"></td>
						<td class="text-left"><?php echo $voucher['description']; ?></td>
						<td class="text-left hidden-xs"></td>
						<td class="text-center hidden-xs">1</td>
						<td class="text-right hidden-xs"><?php echo $voucher['amount']; ?></td>
						<td class="text-right"><?php echo $voucher['amount']; ?></td>
						<td class="delete text-center"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class=""><i class="fa fa-times"></i></button></td>
					</tr>
				<?php } ?>
			<tbody>
		</table>
	</div>
	<?php if ($coupon_status || $voucher_status || $reward_status) { ?>
		<table class="coupon_table">
			<?php if ($coupon_status) { ?>
				<tr>
					<td>
						<div class="coupon input-group">
							<span class="revc_text"><?php echo $text_revcheckout_coupon; ?></span><input type="text" name="coupon" value="" id="input-coupon" class="form-control" />
							<span class="input-group-btn">
								<button id="button-coupon" class="btn btn-primary"><?php echo $text_revcheckout_apply; ?></button>
							</span>
						</div>
					</td>
				</tr>
			<?php } ?>
			<?php if ($reward_status) { ?>
				<tr>
					<td>
						<div class="coupon input-group">
							<span class="revc_text"><?php echo $text_revcheckout_reward; ?></span><input type="text" name="reward" value="" placeholder="<?php echo $entry_reward; ?>" id="input-reward" class="form-control" />
							<span class="input-group-btn">
								<button id="button-reward" class="btn btn-primary"><?php echo $text_revcheckout_apply; ?></button>
							</span>
						</div>
					</td>
				</tr>
			<?php } ?>
			<?php if ($voucher_status) { ?>
				<tr>
					<td>
						<div class="coupon input-group">
							<span class="revc_text"><?php echo $text_revcheckout_voucher; ?></span><input type="text" name="voucher" value="" id="input-voucher" class="form-control" />
							<span class="input-group-btn">
								<button id="button-voucher" class="btn btn-primary"><?php echo $text_revcheckout_apply; ?></button>
							</span>
						</div>
					</td>
				</tr>
			<?php } ?>
		</table>
	<?php } ?>
	<table class="total_table">
		<?php if ($weight) { ?>
			<tr>
				<td class="text-right hidden-xs"><?php echo $text_revcheckout_products_weight; ?>:</td>
				<td class="text-right visible-xs"><?php echo $text_revcheckout_products_weight; ?>:</td>
				<td><?php echo $weight; ?> <?php echo $weight_format; ?></td>
			</tr>
		<?php } ?>
		<?php foreach ($totals as $total) { ?>
			<tr>
			  <td class="text-right hidden-xs"><?php echo $total['title']; ?>:</td>
			  <td class="text-right visible-xs"><?php echo $total['title']; ?>:</td>
			  <td class="text-right"><?php echo $total['text']; ?></td>
			</tr>
		<?php } ?>
	</table>
	<script type="text/javascript"><!--
	function update_cart_manual2(val, product_id, minimumvalue, maximumvalue) {
		val.value = val.value.replace(/[^\d,]/g, '');
		input_val = $('.revcart_table input.plus-minus');
		quantity = parseInt(input_val.val());
		if (quantity <= minimumvalue) {
			input_val.val(minimumvalue);
			return;
		}
		<?php if ($q_zavisimost) { ?>
			if (quantity > maximumvalue) {
				input_val.val(maximumvalue);
				return;
			}
		<?php } ?>
		cart.update(product_id, input_val.val());
		cart_update();
	}
	function validate_pole_cart2(val, product_id, znak, minimumvalue, maximumvalue) {
		val.value = val.value.replace(/[^\d,]/g, '');
		if (val.value == '') val.value = minimumvalue;
		input_val = $(val).parent().parent().parent().children('.plus-minus');
		quantity = parseInt(input_val.val());
		<?php if ($q_zavisimost) { ?>
			if (znak=='+' && input_val.val() < maximumvalue) input_val.val(quantity+1);
			else if (znak=='-' && input_val.val() > minimumvalue) input_val.val(quantity-1);
			else if (znak=='=' && input_val.val() < maximumvalue && input_val.val() < maximumvalue) input_val.val(input_val.val());
			if (quantity < 1 || quantity < minimumvalue) {
				input_val.val(minimumvalue);
				val.value = minimumvalue;
			} else if (quantity > maximumvalue) {
				input_val.val(maximumvalue);
				val.value = maximumvalue;
			}
		<?php } else { ?>
			if (znak=='+') input_val.val(quantity+1);
			else if (znak=='-' && input_val.val() > minimumvalue) input_val.val(quantity-1);
			else if (znak=='=' && input_val.val() > minimumvalue) input_val.val(input_val.val());
			if (quantity < 1 || quantity < minimumvalue) {
				input_val.val(minimumvalue);
				val.value = minimumvalue;
			}
		<?php } ?>
		cart.update(product_id, input_val.val());
		cart_update();
	}
	//--></script>
<?php } else { ?>
	<script type="text/javascript"><!--
		window.location = 'index.php?route=checkout/cart';
	--></script>
<?php } ?>
