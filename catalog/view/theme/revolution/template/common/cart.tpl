<div id="cart" class="btn-group show-on-hover w100 <?php echo $mini_header_cart_class; ?>">
	<?php if ($setting_header_cart['type'] == 'standart') { ?>
		<button type="button" class="cart dropdown-toggle hidden-xs hidden-sm" data-toggle="dropdown">
			<span id="cart-total"><?php echo $text_items; ?></span>
			<span class="icorightmenu"><i class="fa fa-chevron-down"></i></span>
		</button>
		<button class="cart hidden-md hidden-lg" onclick="get_revpopup_cart('', 'show_cart', '');">
			<span id="cart-total-popup"><?php echo $text_items; ?></span>
		</button>
	<?php } else if ($setting_header_cart['type'] == 'redirect') { ?>
		<button class="cart" onclick="get_revpopup_cart('', 'redirect_cart', '');">
			<span id="cart-total"><?php echo $text_items; ?></span>
		</button>
	<?php } else { ?>
		<button class="cart" onclick="get_revpopup_cart('', 'show_cart', '');">
			<span id="cart-total"><?php echo $text_items; ?></span>
		</button>
	<?php } ?>
	<?php if ($setting_header_cart['type'] == 'standart') { ?>
	<ul class="dropdown-menu pull-right hidden-xs hidden-sm dblock22">
    <?php if ($products || $vouchers) { ?>
    <li>
      <table class="table display-products-cart porder">
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?></td>
			<td class="qt">
				<div class="number">
					<div class="frame-change-count">
						<div class="btn-plus">
							<button type="button" onclick="validate_pole_cart(this,<?php echo $product['cart_id']; ?>,'+',<?php echo $product['minimum']; ?>,<?php echo $product['quantity_pr']; ?>);">+</button>
						</div>
						<div class="btn-minus">
							<button type="button" onclick="validate_pole_cart(this,<?php echo $product['cart_id']; ?>,'-',<?php echo $product['minimum']; ?>,<?php echo $product['quantity_pr']; ?>);">-</button>
						</div>
					</div>
					<input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" onchange="update_cart_manual(this, '<?php echo $product['cart_id']; ?>', '<?php echo $product['minimum']; ?>', '<?php echo $product['quantity_pr']; ?>');" onkeyup="update_cart_manual(this, '<?php echo $product['cart_id']; ?>', '<?php echo $product['minimum']; ?>', '<?php echo $product['quantity_pr']; ?>');" size="1" class="plus-minus" /> 
				</div>
			</td>
          <td class="totals"><?php echo $product['total']; ?></td>
          <td class="remove"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>', '<?php echo $product['product_id']; ?>');" title="<?php echo $button_remove; ?>"><i class="fa fa-trash-o"></i></button></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-right">x&nbsp;1</td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-center remove"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>"><i class="fa fa-trash-o"></i></button></td>
        </tr>
        <?php } ?>
      </table>
    </li>
    <li>
        <div class="all-total">
		  <?php foreach ($totals as $total) { ?>
			<div class="clear-total">
			<div class="totals-right"><?php echo $total['text']; ?></div>
			<div class="totals-left"><?php echo $total['title']; ?>:</div>     
			</div>
		  <?php } ?>
		</div>
		<div class="cartfooter">
			<?php if ($setting_header_cart['cart_carturl']) { ?>
				<a class="btn btn-default btn-sm" href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>
			<?php } ?>
			<?php if ($setting_header_cart['cart_quick']) { ?>
				<a class="btn btn-default btn-sm" href="javascript:void(0)" onclick="get_revpopup_cartquick();"><?php echo $text_rev_buy_quick; ?></a>
			<?php } ?>
			<a class="btn btn-danger" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
		</div>
    </li>
    <?php } else { ?>
    <li>
      <p class="text-center"><?php echo $text_empty; ?></p>
    </li>
    <?php } ?>
  </ul>
  <?php } ?>
</div>
<script type="text/javascript"><!--
<?php if ($setting_revtheme_header_menu['zadergka']) { ?>
	$('#top3 #cart .dropdown-menu').removeClass('dblock22');
	var global_cart_button;
	$("#top3 #cart").hover(function(){
		global_cart_button = setTimeout(function() {
		$('#top3 #cart .dropdown-menu').addClass('dblock');
		$('#top3 #cart .dropdown-menu').removeClass('dblock22');
	}, 250)
	},function(){
		$('#top3 #cart .dropdown-menu').removeClass('dblock');
		clearTimeout(global_cart_button);
		$('#top3 #cart .dropdown-menu').removeClass('dblock22');
	});
<?php } ?>
function masked(element, status) {
	if (status == true) {
		$('<div/>')
		.attr({ 'class':'masked' })
		.prependTo(element);
		$('<div class="masked_loading" />').insertAfter($('.masked'));
	} else {
		$('.masked').remove();
		$('.masked_loading').remove();
	}
}
function cart_update() {
return;
}
function update_cart_manual(val, product_id, minimumvalue, maximumvalue) {
	val.value = val.value.replace(/[^\d,]/g, '');
	input_val = $('#cart input.plus-minus');
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
function validate_pole_cart(val, product_id, znak, minimumvalue, maximumvalue) {
	val.value = val.value.replace(/[^\d,]/g, '');
	if (val.value == '') val.value = minimumvalue;
	input_val = $('#cart input.plus-minus');
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