<div id="popup-order-okno">
<div id="popup-order-okno-inner">
<?php if ($products) { ?>
  <div class="popup-heading"><?php echo $heading_cartpopupquick_title; ?></div>
  <div class="popup-center">
    <?php if ($attention) { ?>
    <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } else { ?>
    <div id="success-message"></div>
    <?php } ?>
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <table class="display-products-cart">
      <tbody>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image">
            <?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?>
          </td>
          <td class="name">
            <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if (!$product['stock']) { ?>
            <span class="text-danger">***</span>
            <?php } ?>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            <?php echo $option['name']; ?>: <?php echo $option['value']; ?>
            <?php } ?>
            <?php } ?>
            <?php if ($product['reward']) { ?>
            <br />
            <?php echo $product['reward']; ?>
            <?php } ?>
          </td>
          <td class="qt">
            <div class="number">
              <input name="product_id" value="<?php echo $product['key']; ?>" style="display: none;" type="hidden" />
              <div class="frame-change-count">
                <div class="btn-plus">
                  <button type="button" onclick="$(this).parent().parent().next().val(~~$(this).parent().parent().next().val()+1); update(this, 'update', '<?php echo $product['quantity_pr']; ?>');">+</button>
                </div>
                <div class="btn-minus">
                  <button type="button" onclick="$(this).parent().parent().next().val(~~$(this).parent().parent().next().val()-1); update(this, 'update', '<?php echo $product['quantity_pr']; ?>');">-</button>
                </div>
              </div>
              <input type="text" name="quantity" value="<?php echo $product['quantity']; ?>" class="plus-minus" onchange="update_manual(this, '<?php echo $product['key']; ?>', '<?php echo $product['quantity_pr']; ?>'); return validate(this);" onkeyup="update_manual(this, '<?php echo $product['key']; ?>', '<?php echo $product['quantity_pr']; ?>'); return validate(this);" />
            </div>
          </td>
          <td class="totals"><?php echo $product['total']; ?></td>
		  <td class="remove">
            <button type="button" onclick="update(this, 'remove');"><i class="fa fa-trash-o"></i></button>
            <input name="product_key" value="<?php echo $product['key']; ?>" style="display: none;" hidden />           
          </td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
    <div class="mobile-products-cart">
    <?php foreach ($products as $product) { ?>
      <div>
        <div class="image">
          <?php if ($product['thumb']) { ?>
          <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
          <?php } ?>
        </div>
        <div class="name">
          <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
          <?php if (!$product['stock']) { ?>
          <span class="text-danger">***</span>
          <?php } ?>
          <?php if ($product['option']) { ?>
          <?php foreach ($product['option'] as $option) { ?>
          <br />
          <?php echo $option['name']; ?>: <?php echo $option['value']; ?>
          <?php } ?>
          <?php } ?>
          <?php if ($product['reward']) { ?>
          <br />
          <?php echo $product['reward']; ?>
          <?php } ?>
        </div>
        <div class="qt">
          <div class="number">
              <input name="product_id" value="<?php echo $product['key']; ?>" style="display: none;" type="hidden" />
              <div class="frame-change-count">
                <div class="btn-plus">
                  <button type="button" onclick="$(this).parent().parent().next().val(~~$(this).parent().parent().next().val()+1); update(this, 'update', '<?php echo $product['quantity_pr']; ?>');">+</button>
                </div>
                <div class="btn-minus">
                  <button type="button" onclick="$(this).parent().parent().next().val(~~$(this).parent().parent().next().val()-1); update(this, 'update', '<?php echo $product['quantity_pr']; ?>');">-</button>
                </div>
              </div>
              <input type="text" name="quantity" value="<?php echo $product['quantity']; ?>" class="plus-minus" onchange="update_manual(this, '<?php echo $product['key']; ?>', '<?php echo $product['quantity_pr']; ?>'); return validate(this);" onkeyup="update_manual(this, '<?php echo $product['key']; ?>', '<?php echo $product['quantity_pr']; ?>'); return validate(this);" />
            </div>
			<span class="remove">
			  <button type="button" onclick="update(this, 'remove');"><i class="fa fa-trash-o"></i></button>
			  <input name="product_key" value="<?php echo $product['key']; ?>" style="display: none;" hidden />
			</span>
        </div>
        <div class="totals">
          <?php echo $product['total']; ?>
        </div>		
        </div>
      <?php } ?>
    </div>
	
    <div class="all-total">
      <?php foreach ($totals as $total) { ?>
		<div class="clear-total">
		<div class="totals-right"><?php echo $total['text']; ?></div>
        <div class="totals-left"><?php echo $total['title']; ?>:</div>     
        </div>
      <?php } ?>
    </div>
	<form method="post" enctype="multipart/form-data" id="purchase-form">
		<div class="payment-info" style="padding-top: 0;">
			<?php if ($revtheme_catalog_popuporder['firstname']) { ?>
			<div>
			  <label><?php if ($revtheme_catalog_popuporder['firstname'] == 2) { ?><span class="required">*</span><?php } ?><?php echo $enter_firstname; ?></label>
			  <input name="firstname" value="<?php echo $firstname;?>" />
			</div>
			<?php } ?>
			<?php if ($revtheme_catalog_popuporder['telephone']) { ?>
			<div>
			  <label><?php if ($revtheme_catalog_popuporder['telephone'] == 2) { ?><span class="required">*</span><?php } ?><?php echo $enter_telephone; ?></label>
			  <input name="telephone" value="<?php echo $telephone;?>" <?php if ($telephone_mask) { ?> data-mask="<?php echo $telephone_mask;?>" <?php } ?> />
			</div>
			<?php } ?>
			<?php if ($revtheme_catalog_popuporder['email']) { ?>
			<div>
			  <label><?php if ($revtheme_catalog_popuporder['email'] == 2) { ?><span class="required">*</span><?php } ?><?php echo $enter_email; ?></label>
			  <input name="email" value="<?php echo $email;?>" />
			</div>
			<?php } ?>
			<?php if ($revtheme_catalog_popuporder['comment']) { ?>
			<div>
			  <label><?php if ($revtheme_catalog_popuporder['comment'] == 2) { ?><span class="required">*</span><?php } ?><?php echo $enter_comment; ?></label>
			  <textarea name="comment"><?php echo $comment;?></textarea>
			</div>
			<?php } ?>
		</div>
		<?php if ($text_agree_pol_konf) { ?>
			<div class="rev_pol_konf pull-right text-right">
				<span><?php echo $text_agree_pol_konf; ?></span>
				<input type="checkbox" name="agree_pol_konf" checked="checked" />
			</div>
		<?php } ?>
	</form>
  </div>
  <div class="popup-footer">
    <button onclick="$.magnificPopup.close();"><?php echo $button_shopping; ?></button>
    <?php if ((!$error_warning || $zakaz) || !$q_zavisimost) { ?>
		<a id="popup-checkout-button"><?php echo $button_checkout; ?></a>
	<?php } ?>
  </div>
<?php } else { ?>
  <div class="popup-heading"><?php echo $heading_cartpopup_title_empty; ?></div>
  <div class="popup-center empty-cart"><?php echo $text_cartpopup_empty; ?></div>
  <div class="popup-footer">
    <button onclick="$.magnificPopup.close();"><?php echo $button_shopping; ?></button>
  </div>
<?php } ?>
</div>
<script type="text/javascript"><!--
function validate(input) {
  input.value = input.value.replace( /[^\d,]/g, '' );
}

$('#popup-checkout-button').on('click', function() {
	masked('#popup-order-okno', true);
	$.ajax({
		type: 'post',
		url: 'index.php?route=revolution/revpopupcartquick/make_order',
		dataType: 'json',
		data: $('#purchase-form').serialize(),
		success: function(json) {
			if (json['error']) {
				if (json['error']['field']) {
					masked('#popup-order-okno', false);
					$('.text-danger').remove();
					$.each(json['error']['field'], function(i, val) {
						$('[name="' + i + '"]').addClass('error_style').after('<div class="text-danger">' + val + '</div>');
					});
				}
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						masked('#popup-order-okno', false);
						$('.required .text-danger').remove();
						var element = $('#input-option' + i.replace('_', '-'));
						element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
					}
				}
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
			} else {
				if (json['output']) {
					masked('#popup-order-okno', false);
					$('#popup-checkout-button').remove();
					$('#popup-order-okno .popup-center').html(json['output']);
				}
			}
		}
	});
});
		
function update(target, status, pr_quantity) {
  masked('#popup-order-okno-inner', true);
  var input_val    = $( target ).parent().parent().parent().children('input[name=quantity]').val(),
      quantity     = parseInt(input_val),
      product_id   = $(target).parent().parent().parent().children('input[name=product_id]').val(),
      product_key  = $(target).next().val(),
      urls         = null;

  if (quantity <= 0) {
    masked('#popup-order-okno-inner', false);
    quantity = $(target).parent().parent().parent().children('input[name=quantity]').val(1);
    return;
  }
  <?php if ($q_zavisimost) { ?>
  if (quantity > pr_quantity) {
    masked('#popup-order-okno-inner', false);
	quantity = $(target).parent().parent().parent().children('input[name=quantity]').val(pr_quantity);
    return;
  }
  <?php } ?>

  if (status == 'update') {
    urls = 'index.php?route=revolution/revpopupcartquick&update=' + product_id + '&quantity=' + quantity;
  } else if (status == 'add') {
    urls = 'index.php?route=revolution/revpopupcartquick&add=' + target + '&quantity=1';
  } else {
    urls = 'index.php?route=revolution/revpopupcartquick&remove=' + product_key;
  }
      
  $.ajax({
    url: urls,
    type: 'get',
    dataType: 'html',
    success: function(data) {
      $.ajax({
        url: 'index.php?route=revolution/revpopupcartquick/status_cart',
        type: 'get',
        dataType: 'json',
        success: function( json ) {
          masked('#popup-order-okno-inner', false);
          if (json['total']) {
            $('#cart-total' ).html(json['total']);
			$('#cart-total-popup').html(json['total']);
			$('#cart > ul').load('index.php?route=common/cart/info ul li');
          }
          $('#popup-order-okno-inner').html($(data).find('#popup-order-okno-inner > *'));
        } 
      });
    } 
  });
}
function update_manual(target, product_id, pr_quantity) {
  masked('#popup-order-okno-inner', true);
  var input_val = $(target).val(),
      quantity  = parseInt(input_val);
    
  if (quantity <= 0) {
    masked('#popup-order-okno-inner', false);
    quantity = $(target).val(1);
    return;
  }
  <?php if ($q_zavisimost) { ?>
	  if (quantity > pr_quantity) {
		masked('#popup-order-okno-inner', false);
		quantity = $(target).val(pr_quantity);
		return;
	  }
  <?php } ?>
  
  $.ajax({
    url: 'index.php?route=revolution/revpopupcartquick&update=' + product_id + '&quantity=' + quantity,
    type: 'get',
    dataType: 'html',
    success: function(data) {
      $.ajax({
        url: 'index.php?route=revolution/revpopupcartquick/status_cart',
        type: 'get',
        dataType: 'json',
        success: function(json) {
          masked('#popup-order-okno-inner', false);
          if (json['total']) {
            $('#cart-total').html(json['total']);
			$('#cart-total-popup').html(json['total']);
            $('#cart > ul').load('index.php?route=common/cart/info ul li');
          }
          $('#popup-order-okno-inner').html($(data).find('#popup-order-okno-inner > *'));
        } 
      });
    } 
  });
}
//--></script>
</div>