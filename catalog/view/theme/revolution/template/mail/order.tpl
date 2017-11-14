<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php echo $title; ?></title>
<style type="text/css">
@media (max-width: 767px) {
.hidden-xs {display: none;}
}
</style>
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: #333333; background: #fafafa;">
<div style="max-width: 750px; font-size: 14px; margin: 10px auto; border: 3px solid #ddd; padding: 10px; background: #fff; box-shadow: 0px 0px 5px #ccc;"><a href="<?php echo $store_url; ?>" title="<?php echo $store_name; ?>"><img src="<?php echo $logo; ?>" alt="<?php echo $store_name; ?>" style="max-width: 300px; margin-bottom: 20px; border: none;" /></a>
	<p style="margin-top: 0px; margin-bottom: 10px;"><?php echo $text_greeting; ?></p>
	<?php if ($customer_id && $text_link != '') { ?>
		<p style="margin-top: 0px; margin-bottom: 10px;"><?php echo $text_link; ?></p>
	<?php } ?>
	<?php if ($download && $text_download != '') { ?>
		<p style="margin-top: 0px; margin-bottom: 10px;"><?php echo $text_download; ?></p>
	<?php } ?>
  
    <h3 style="font-size: 15px;"><?php echo $text_rev_order_detals; ?></h3>
	<table class="table table-revolution" style="width: 100%; max-width: 100%; margin-bottom: 20px; font-size: 14px; border-collapse: collapse;">
		<tr>
			<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $text_order_id; ?></td>
			<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;">#<?php echo $order_id; ?></td>
		</tr>
		<tr>
			<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $text_date_added; ?></td>
			<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $date_added; ?></td>
		</tr>
		<tr>
			<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $text_order_status; ?></td>
			<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $order_status; ?></td>
		</tr>
		<?php if ($payment_method) { ?>
			<tr>
				<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $text_payment_method; ?></td>
				<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $payment_method; ?></td>
			</tr>
		<?php } ?>
		<?php if ($shipping_method) { ?>
			<tr>
				<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $text_shipping_method; ?></td>
				<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $shipping_method; ?></td>
			</tr>
			<?php if ($shipping_address != '') { ?>
				<tr>
					<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $text_shipping_address; ?>:</td>
					<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $shipping_address; ?></td>
				</tr>
			<?php } ?>
		<?php } ?>
		<?php if ($telephone != '') { ?>
			<tr>
				<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $text_telephone; ?></td>
				<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $telephone; ?></td>
			</tr>
		<?php } ?>
		<?php if ($email != '') { ?>
			<tr>
				<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $text_email; ?></td>
				<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $email; ?></td>
			</tr>
		<?php } ?>
		<?php if ($comment) { ?>
			<tr>
				<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $text_rev_order_comment; ?>:</td>
				<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $comment; ?></td>
			</tr>
		<?php } ?>
	</table>
	<div class="clearfix"></div>
	<h3 style="font-size: 15px;"><?php echo $text_rev_order_prods; ?></h3>
	<div class="table-responsive">
		<table class="table table-revolution" style="width: 100%; max-width: 100%; margin-bottom: 0; font-size: 14px; border-collapse: collapse;">
			<thead>
				<tr style="background-color: #eee;">
					<td class="text-center" style="padding: 5px; line-height: 1.4; vertical-align: middle; text-align: center;"><?php echo $text_image; ?></td>
					<td class="text-left" style="padding: 5px; line-height: 1.4; vertical-align: middle; text-align: left;"><?php echo $text_product; ?></td>
					<?php if ($settings['revcheckout_model']) { ?>
						<td class="text-center hidden-xs" style="padding: 5px; line-height: 1.4; vertical-align: middle; text-align: center;"><?php echo $text_model; ?></td>
					<?php } ?>
					<?php if ($settings['revcheckout_sku']) { ?>
						<td class="text-center hidden-xs" style="padding: 5px; line-height: 1.4; vertical-align: middle; text-align: center;"><?php echo $text_sku; ?></td>
					<?php } ?>
					<td class="text-center" style="padding: 5px; line-height: 1.4; vertical-align: middle; text-align: center;"><?php echo $text_quantity; ?></td>
					<td class="text-right" style="padding: 5px; line-height: 1.4; vertical-align: middle; text-align: right;"><?php echo $text_price; ?></td>
					<td class="text-right hidden-xs" style="padding: 5px; line-height: 1.4; vertical-align: middle; text-align: right;"><?php echo $text_total; ?></td>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($products as $product) { ?>
					<tr>
						<td class="text-center" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: center;">
							<?php if ($product['image']) { ?>
								<a href="<?php echo $product['href']; ?>">
									<img src="<?php echo $product['image']; ?>" style="width: 50px;">
								</a>
							<?php } ?>
						</td>
						<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
						<?php foreach ($product['option'] as $option) { ?>
						<br />
						<small style="font-size: 12px;"><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
						<?php } ?></td>
						<?php if ($settings['revcheckout_model']) { ?>
							<td class="text-center hidden-xs" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: center;"><?php if ($product['option'] && $option['model']) { ?><?php echo $option['model']; ?><?php } else { ?><?php echo $product['model']; ?><?php } ?></td>
						<?php } ?>
						<?php if ($settings['revcheckout_sku']) { ?>
							<td class="text-center hidden-xs" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: center;"><?php echo $product['sku']; ?></td>
						<?php } ?>
						<td class="text-center" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: center;"><?php echo $product['quantity']; ?></td>
						<td class="text-right" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: right;"><?php echo $product['price']; ?></td>
						<td class="text-right hidden-xs" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: right;"><?php echo $product['total']; ?></td>
					</tr>
				<?php } ?>
				<?php foreach ($vouchers as $voucher) { ?>
					<tr>
						<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"><?php echo $voucher['description']; ?></td>
						<td class="text-left" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: left;"></td>
						<td class="text-right" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: right;">1</td>
						<td class="text-right" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: right;"><?php echo $voucher['amount']; ?></td>
						<td class="text-right" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: right;"><?php echo $voucher['amount']; ?></td>
					</tr>
				<?php } ?>
			</tbody>
		</table>
		<table class="table table-revolution" style="width: 100%; max-width: 100%; margin-bottom: 20px; font-size: 14px; border-collapse: collapse;">
			<?php foreach ($totals as $total) { ?>
				<tr>
					<td class="text-right" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: right;"><?php echo $total['title']; ?>:</td>
					<td class="text-right" style="border-bottom: 1px solid #ddd; vertical-align: middle; padding: 5px; line-height: 1.4; text-align: right;"><?php echo $total['text']; ?></td>
				</tr>
			<?php } ?>
		</table>
	</div>
	<p style="margin-top: 0px; margin-bottom: 20px;"><?php echo $text_footer; ?></p>
</div>
</body>
</html>