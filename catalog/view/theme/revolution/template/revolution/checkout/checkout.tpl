<?php echo $header; ?>
<div class="container">
	<ul class="breadcrumb"><li class="br_ellipses" style="display: none;">...</li>
		<?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
		<?php if($i+1<count($breadcrumbs)) { ?><li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li><?php } else { ?><?php } ?>
		<?php } ?>
		<li><h1 class="inbreadcrumb" itemprop="name"><?php echo $heading_title; ?></h1></li>
	</ul>
	<div class="error"></div>
	<div class="row">
		<?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>">
			<div id="revcheckout" class="row">
				<div class="revcart_column_left col-sm-12">
					<div class="row">
						<div class="col-md-12 register_block">
							<div class="row">
								<div class="col-sm-12 user_block">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h3 style="display: inline-block;" class="panel-title"><?php echo $text_revcheckout_user_details; ?></h3>
											<?php if (!$logged && $settings['revcheckout_login']) { ?><a style="float: right;" onclick="get_revpopup_login();"><?php echo $text_revcheckout_returning_customer; ?></a><?php } ?>
										</div>
										<div class="panel-body">
											<?php echo $user; ?>
										</div>
									</div>
								</div>

								<div class="shipping-method">
									<?php echo $shipping_method; ?>
								</div>
								
								<div class="address_metod">
									<?php echo $address; ?>
								</div>
								
								<div class="col-sm-12">
									<div class="panel panel-default">
										<div class="panel-heading">
											 <h3 class="panel-title"><?php echo $text_revcheckout_payment_method;?></h3>
										</div>
										<div class="panel-body">
											<?php echo $payment_method; ?>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="revcart_column_right col-sm-12">
					<div class="row">
						<div class="col-sm-12">
							<div class="panel panel-default rev_cart">
								<div id="revcart_upd">
									<?php echo $cart; ?>
								</div>
								<div id="confirm">
									<div class="total_checkout col-md-12 text-right"><span><?php echo $text_total_revcheckout; ?></span> <span class="total_html"></span></div>
									<?php if ($text_agree) { ?>
										<div class="rev_pol_konf clearfix">
										   <div class="pull-right"><?php echo $text_agree; ?>
												<?php if ($agree) { ?>
													<input type="checkbox" name="agree" value="1" checked="checked" />
												<?php } else { ?>
													<input type="checkbox" name="agree" value="1" />
												<?php } ?>
												&nbsp;
											</div>
										</div>
									<?php } ?>
									<div class="pull-right payment clearfix">
										<input type="button" class="btn btn-danger" id="button_checkout" value="<?php echo $text_revcheckout_order; ?>">
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<div class="col-sm-12">
							<?php if (strlen($descript) > 30) { ?>
								<div class="panel-body">
									<?php echo html_entity_decode($descript, ENT_QUOTES, 'UTF-8'); ?>
								</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>			
		<?php echo $content_bottom; ?>
		<?php echo $column_right; ?>
	</div>
</div>
<script type="text/javascript"><!--
	$('.show-register-form input').on('change', function() {
		$('.register-form').toggle();
	});
	update_checkout();
	var error = true;
	$('body').on('change', 'input[name=\'shipping_method\'], input[name=\'payment_method\'], .payment_address input[name=\'city\'], .payment_address input[name=\'postcode\'], input[name=\'address\'], select[name=\'address_id\']', function() {
		update_checkout();
	});
	$('body').on('click', '.add_to_cart', function() {
		option = $(this).parent().parent().find('.option').children().size();
		option_checked = $(this).parent().parent().find('.option input:checked, .option select').size();
		if(!option || option_checked) {
			update_checkout();
		}
	});
	$('body').on('click', '#button_checkout', function() {
		<?php if (isset($custom_fields)) foreach ($custom_fields as $custom_field) { ?>
			<?php if ($custom_field['type'] == 'text' || $custom_field['type'] == 'textarea') { ?>
				customval = $('#input-custom-field<?php echo $custom_field['custom_field_id']; ?>').val();
				if (customval != '') {
					customval2 = '<?php echo $custom_field['name']; ?>: '+customval;
					$('#input-custom-field<?php echo $custom_field['custom_field_id']; ?>').val(customval2);
				}
			<?php } ?>
		<?php } ?>
		var data = $('#revcheckout input[type=\'text\'], #revcheckout input[type=\'tel\'], #revcheckout input[type=\'email\'], #revcheckout input[type=\'date\'], #revcheckout input[type=\'datetime-local\'], #revcheckout input[type=\'time\'], #revcheckout input[type=\'password\'], #revcheckout input[type=\'hidden\'], #revcheckout input[type=\'checkbox\']:checked, #revcheckout input[type=\'radio\']:checked, #revcheckout textarea, #revcheckout select, #confirm input[type=\'checkbox\']:checked').serialize();
		data += '&_shipping_method='+ jQuery('#revcheckout input[name=\'shipping_method\']:checked').prop('title') + '&_payment_method=' + jQuery('#revcheckout input[name=\'payment_method\']:checked').prop('title');
		
		$.ajax({
			url: 'index.php?route=revolution/revcheckout/validate',
			type: 'post',
			data: data,
			dataType: 'json',
			beforeSend: function() {
				//$('#button_checkout').button('loading');
			},  
			complete: function() {
				//$('#button_checkout').button('reset');
			},          
			success: function(json) {
				$('.error > .alert').remove();
				$('#revcheckout .text-danger').remove();
				$('#confirm .text-danger').remove();
				if (json['error']) {
					
					<?php if (isset($custom_fields)) foreach ($custom_fields as $custom_field) { ?>
						<?php if ($custom_field['type'] == 'text' || $custom_field['type'] == 'textarea') { ?>
							customstr = $('#input-custom-field<?php echo $custom_field['custom_field_id']; ?>').val();
							if (typeof(customstr) != 'undefined') {
								newcustomstr = customstr.replace('<?php echo $custom_field['name']; ?>: ', '');
								$('#input-custom-field<?php echo $custom_field['custom_field_id']; ?>').val(newcustomstr);
							}
						<?php } ?>
					<?php } ?>
					error = true;
					if (json['error']['warning']) {
						$('.error').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
						$('html, body').animate({ scrollTop: $('.error')}, 250);
					}
					for (i in json['error']) {
						 $('.error').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'][i] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
					}
					$('html, body').animate({ scrollTop: $('.error')}, 250);
				}
				if (json['success']) {
					$('.payment').html(json['success']);
						if (!$('.payment h2, .payment p, .payment input[type=\'radio\'], .payment input[type=\'checkbox\'], .payment select').length) {
							$('.payment').css('display', 'none');
							$('.payment #button-confirm, .payment input[type=\'button\'], .payment input[type=\'submit\'], .payment button, .payment a, .payment .btn-primary').click();
							if($('.payment a').length) {
								$('.payment a')[0].click();
							}
						}
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		}); 
	});  
	$('body').on('click', '#button-coupon', function() {
		$.ajax({
			url: 'index.php?route=<?php echo (VERSION >= 2.2) ? 'extension/total' : 'total' ?>/coupon/coupon',
			type: 'post',
			data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
			dataType: 'json',
			beforeSend: function() {
				//$('#button-coupon').button('loading');
			},
			complete: function() {
				//$('#button-coupon').button('reset');
			},
			success: function(json) {
				$('.alert').remove();
				if (json['error']) {
					$('.error').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				}
				if (json['redirect']) {
					update_checkout();
				}
			}
		});
	});
	$('body').on('click', '#button-reward', function() {
		$.ajax({
			url: 'index.php?route=<?php echo (VERSION >= 2.2) ? 'extension/total' : 'total' ?>/reward/reward',
			type: 'post',
			data: 'reward=' + encodeURIComponent($('input[name=\'reward\']').val()),
			dataType: 'json',
			beforeSend: function() {
				//$('#button-reward').button('loading');
			},
			complete: function() {
				//$('#button-reward').button('reset');
			},
			success: function(json) {
				$('.alert').remove();
				if (json['error']) {
					$('.error').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				}
				if (json['redirect']) {
					update_checkout();
				}
			}
		});
	});
	$('body').on('click', '#button-voucher', function() {
	  $.ajax({
		url: 'index.php?route=<?php echo (VERSION >= 2.2) ? 'extension/total' : 'total' ?>/voucher/voucher',
		type: 'post',
		data: 'voucher=' + encodeURIComponent($('input[name=\'voucher\']').val()),
		dataType: 'json',
		beforeSend: function() {
			//$('#button-voucher').button('loading');
		},
		complete: function() {
			//$('#button-voucher').button('reset');
		},
		success: function(json) {
			$('.alert').remove();
			if (json['error']) {
				$('.error').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
			}
			if (json['redirect']) {
				update_checkout();
			}
		}
	  });
	});
	function cart_update(key, quantity) {
		$.ajax({
			url: 'index.php?route=revolution/revcheckout/cart_edit',
			type: 'post',
			data: 'quantity['+key+']='+quantity,
			dataType: 'json',
			success: function(json) {
				$('#cart').load('index.php?route=common/cart/info #cart > *');
				update_checkout();
			}
		});
	}
	function update_user() {
		var data = $('#revcheckout input[type=\'radio\']:checked, #revcheckout input[type=\'checkbox\']:checked, #revcheckout select, #revcheckout input[type=\'text\'], #revcheckout input[type=\'email\'], #revcheckout input[type=\'tel\']').serialize();
		$.ajax({
			url: 'index.php?route=revolution/revcheckout/user&ajax=1',
			type: 'post',
			data: data,
			dataType: 'html',
			beforeSend: function() {
				masked('#revcart_upd', false);
			},
			success: function(html) {
				$('.user_block .panel-body').html(html);
				masked('#revcart_upd', false);
				update_checkout();
			}
		});
	}
	function update_checkout() {
		var data = $('#revcheckout input[type=\'radio\']:checked, #revcheckout input[type=\'checkbox\']:checked, #revcheckout select, #revcheckout input[type=\'text\'], #revcheckout input[type=\'email\'], #revcheckout input[type=\'tel\']').serialize();
		$.ajax({
			url: 'index.php?route=revolution/revcheckout/address&ajax=1',
			type: 'post',
			data: data,
			dataType: 'html',
			beforeSend: function() {
				masked('#revcart_upd', true);
				$('.error > .alert').remove();
				$('#revcheckout .text-danger').remove();
				$('#confirm .text-danger').remove();
			},
			success: function(html) {
				$('.address_metod').html(html);
				update_shipping();
			}
		});
	}
	function update_shipping() {
		$.ajax({
			url: 'index.php?route=revolution/revcheckout/shipping_method&ajax=1',
			dataType: 'html',
			success: function(html) {
				$('.shipping-method').html(html);
				if(!$('.shipping-method input:checked').length) {
					$('.shipping-method input:first').attr('checked', true).prop('checked', true);
				}
				/*
				if ($('.shipping-method input:checked').val() == 'pickup.pickup') {
					$('.address_metod').hide();
				} else {
					$('.address_metod').show();
				}
				*/
				update_payment();
			}
		});
	}
	function update_payment() {
		var data = $('#revcheckout input[name=\'shipping_method\']:checked').serialize();
		$.ajax({
			url: 'index.php?route=revolution/revcheckout/payment_method&ajax=1',
			type: 'post',
			data: data,
			dataType: 'html',
			success: function(html) {
				$('.payment_method').html(html);
				if(!$('.payment_method input:checked').length) {
					$('.payment_method input:first').attr('checked', true).prop('checked', true);
				}
				update_cart();
			}
		});
	}
	function update_cart() {
		$.ajax({
			url: 'index.php?route=revolution/revcheckout/cart&ajax=1',
			dataType: 'html',
			success: function(html) {
				$('#revcart_upd').html(html);
				$('.total_checkout span.total_html').html($('.total_table td:last').html());
				masked('#revcart_upd', false);
			}
		});
	}
	(function(){
		var a = document.querySelector('.revcart_column_right'), b = null, P = 0;
		window.addEventListener('scroll', Ascroll, false);
		document.body.addEventListener('scroll', Ascroll, false);
		function Ascroll() {
		  if (b == null) {
			var Sa = getComputedStyle(a, ''), s = '';
			for (var i = 0; i < Sa.length; i++) {
			  if (Sa[i].indexOf('overflow') == 0 || Sa[i].indexOf('padding') == 0 || Sa[i].indexOf('border') == 0 || Sa[i].indexOf('outline') == 0 || Sa[i].indexOf('box-shadow') == 0 || Sa[i].indexOf('background') == 0) {
				s += Sa[i] + ': ' +Sa.getPropertyValue(Sa[i]) + '; '
			  }
			}
			b = document.createElement('div');
			b.style.cssText = s + ' box-sizing: border-box; width: ' + a.offsetWidth + 'px;';
			a.insertBefore(b, a.firstChild);
			var l = a.childNodes.length;
			for (var i = 1; i < l; i++) {
			  b.appendChild(a.childNodes[1]);
			}
			a.style.height = b.getBoundingClientRect().height + 'px';
			a.style.padding = '0';
			a.style.border = '0';
		  }
		  top3 = 0;
		  <?php if ($sticky) { ?>
			if ($(window).width() > 768) {
				top3 = $('#top3').outerHeight();
			}
		  <?php } ?>
		  var Ra = a.getBoundingClientRect(),
			  R = Math.round(Ra.top + b.getBoundingClientRect().height - document.querySelector('.main-content').getBoundingClientRect().bottom);
		  if ((Ra.top - P) <= top3 + 20) {
			if ((Ra.top - P) <= R + top3 + 40) {
			  b.className = 'stop';
			  b.style.top = - R - 20 +'px';
			} else {
			  b.className = 'sticky';
			  b.style.top = P + top3 + 20 + 'px';
			}
		  } else {
			b.className = '';
			b.style.top = '';
		  }
		  window.addEventListener('resize', function() {
			a.children[0].style.width = getComputedStyle(a, '').width
		  }, false);
		}
	})()
--></script>
<?php echo $footer;?>