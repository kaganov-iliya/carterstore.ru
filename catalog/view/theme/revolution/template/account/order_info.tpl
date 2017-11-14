<?php echo $header; ?>
<div class="container">
<div itemscope itemtype="http://schema.org/BreadcrumbList" style="display:none;">
<?php $position = 1; foreach ($breadcrumbs as $breadcrumb) { ?>
<div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
<link itemprop="item" href="<?php echo $breadcrumb['href']; ?>">
<meta itemprop="name" content="<?php echo $breadcrumb['text']; ?>" />
<meta itemprop="position" content="<?php echo $position; ?>" />
</div>
<?php $position++; } ?>
</div>
<ul class="breadcrumb"><li class="br_ellipses" style="display: none;">...</li>
<?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
<?php if($i+1<count($breadcrumbs)) { ?><li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li><?php } else { ?><?php } ?>
<?php } ?>
<li><h1 class="inbreadcrumb"><?php echo $heading_title; ?> <?php echo $order_id; ?></h1></li>
</ul>
	<?php if ($success) { ?>
		<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } ?>
	<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } ?>
    <div class="row"><?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>">
			<?php echo $content_top; ?>
			<h3 style="margin-top: 0;"><?php echo $text_rev_order_detals; ?></h3>
			<table class="table table-revolution">
				<?php if ($invoice_no) { ?>
					<tr>
						<td class="text-left"><?php echo $text_invoice_no; ?></td>
						<td class="text-left"><?php echo $invoice_no; ?></td>
					</tr>
				<?php } ?>
				<tr>
					<td class="text-left"><?php echo $text_order_id; ?></td>
					<td class="text-left">#<?php echo $order_id; ?></td>
				</tr>
				<tr>
					<td class="text-left"><?php echo $text_date_added; ?></td>
					<td class="text-left"><?php echo $date_added; ?></td>
				</tr>
				<?php if ($payment_method) { ?>
					<tr>
						<td class="text-left"><?php echo $text_payment_method; ?></td>
						<td class="text-left"><?php echo $payment_method; ?></td>
					</tr>
				<?php } ?>
				<?php if ($shipping_method) { ?>
					<tr>
						<td class="text-left"><?php echo $text_shipping_method; ?></td>
						<td class="text-left"><?php echo $shipping_method; ?></td>
					</tr>
					<?php if ($shipping_address != '') { ?>
						<tr>
							<td class="text-left"><?php echo $text_shipping_address; ?>:</td>
							<td class="text-left"><?php echo $shipping_address; ?></td>
						</tr>
					<?php } ?>
				<?php } ?>
				<?php if ($comment) { ?>
					<tr>
						<td class="text-left"><?php echo $text_rev_order_comment; ?>:</td>
						<td class="text-left"><?php echo $comment; ?></td>
					</tr>
				<?php } ?>
			</table>
			<div class="clearfix"></div>
			<h3><?php echo $text_rev_order_prods; ?></h3>
			<div class="table-responsive">
				<table class="table table-revolution" style="margin-bottom: 0;">
					<thead>
						<tr>
							<td class="text-center"><?php echo $column_image; ?></td>
							<td class="text-left"><?php echo $column_name; ?></td>
							<?php if ($settings['revcheckout_model']) { ?>
								<td class="text-center hidden-xs"><?php echo $column_model; ?></td>
							<?php } ?>
							<?php if ($settings['revcheckout_sku']) { ?>
								<td class="text-center hidden-xs"><?php echo $column_sku; ?></td>
							<?php } ?>
							<td class="text-center"><?php echo $column_quantity; ?></td>
							<td class="text-right"><?php echo $column_price; ?></td>
							<td class="text-right hidden-xs"><?php echo $column_total; ?></td>
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
								<td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
								<?php foreach ($product['option'] as $option) { ?>
								<br />
								<small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
								<?php } ?></td>
								<?php if ($settings['revcheckout_model']) { ?>
									<td class="text-center hidden-xs"><?php if ($product['option'] && $option['model']) { ?><?php echo $option['model']; ?><?php } else { ?><?php echo $product['model']; ?><?php } ?></td>
								<?php } ?>
								<?php if ($settings['revcheckout_sku']) { ?>
									<td class="text-center hidden-xs"><?php echo $product['sku']; ?></td>
								<?php } ?>
								<td class="text-center"><?php echo $product['quantity']; ?></td>
								<td class="text-right"><?php echo $product['price']; ?></td>
								<td class="text-right hidden-xs"><?php echo $product['total']; ?></td>
							</tr>
						<?php } ?>
						<?php foreach ($vouchers as $voucher) { ?>
							<tr>
								<td class="text-left"><?php echo $voucher['description']; ?></td>
								<td class="text-left"></td>
								<td class="text-right">1</td>
								<td class="text-right"><?php echo $voucher['amount']; ?></td>
								<td class="text-right"><?php echo $voucher['amount']; ?></td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
				<table class="table table-revolution">
					<?php foreach ($totals as $total) { ?>
						<tr>
							<td class="text-right"><?php echo $total['title']; ?></td>
							<td class="text-right"><?php echo $total['text']; ?></td>
						</tr>
					<?php } ?>
				</table>
			</div>
			<?php if ($histories) { ?>
				<h3><?php echo $text_rev_order_history; ?></h3>
				<table class="table table-revolution">
					<thead>
						<tr>
							<td class="text-left"><?php echo $column_date_added; ?></td>
							<td class="text-left"><?php echo $column_status; ?></td>
							<td class="text-left"><?php echo $column_comment; ?></td>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($histories as $history) { ?>
							<tr>
								<td class="text-left"><?php echo $history['date_added']; ?></td>
								<td class="text-left"><?php echo $history['status']; ?></td>
								<td class="text-left"><?php echo $history['comment']; ?></td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			<?php } ?>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $column_right; ?>
	</div>
</div>
<?php echo $footer; ?>