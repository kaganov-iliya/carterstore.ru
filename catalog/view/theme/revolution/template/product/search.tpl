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
<li><h1 class="inbreadcrumb"><?php echo $heading_title; ?></h1></li>
</ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <label class="control-label" for="input-search"><?php echo $entry_search; ?>:</label>
      <div class="row">
	    <div class="col-sm-12">
		<div class="row">
        <div class="col-sm-5 xs-margin-top">
          <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
        </div>
        <div class="col-sm-5 xs-margin-top">
          <select name="category_id" class="form-control">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
		<div class="col-sm-2 xs-margin-top">
		<input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary" />
		</div>
		</div>
		</div>
		<div class="col-sm-12">
		<div class="row">
		<div class="col-sm-5">
			<?php if (!$ajax_search_description) { ?>
				<label class="checkbox-inline" style="padding-top: 10px;">
				<?php if ($description) { ?>
				<input type="checkbox" name="description" value="1" id="description" checked="checked" style="margin-top: 2px;" />
				<?php } else { ?>
				<input type="checkbox" name="description" value="1" id="description" style="margin-top: 2px;" />
				<?php } ?>
				<?php echo $entry_description; ?></label>
			<?php } ?>
		</div>
        <div class="col-sm-5">
			<label class="checkbox-inline" style="padding-top: 10px;">
			<?php if ($sub_category) { ?>
			<input type="checkbox" name="sub_category" value="1" checked="checked" style="margin-top: 2px;" />
			<?php } else { ?>
			<input type="checkbox" name="sub_category" value="1" style="margin-top: 2px;" />
			<?php } ?>
			<?php echo $text_sub_category; ?></label>
        </div>
		</div>
		</div>
	  </div>
      <h2><?php echo $text_search; ?></h2>
      <?php if ($products) { ?>
	  <meta itemprop="numberOfItems" content="<?php echo count($products); ?>" />
		<div class="well well-sm">
			<div class="row">
				<?php if (!$vid_grid && !$vid_list && !$vid_price) { ?>
				<?php } else { ?>
				<div class="col-lg-3 col-md-4 col-sm-3 hidden-xs">
						<div class="btn-group btn-group-justified">
							<div class="btn-group" <?php if (!$vid_grid) { ?>style="display:none"<?php } ?>>
								<button type="button" id="grid-view" class="btn btn-default"><i class="fa fa-th"></i></button>
							</div>
							<div class="btn-group" <?php if (!$vid_list) { ?>style="display:none"<?php } ?>>
								<button type="button" id="list-view" class="btn btn-default"><i class="fa fa-th-list"></i></button>
							</div>
							<div class="btn-group" <?php if (!$vid_price) { ?>style="display:none"<?php } ?>>
								<button type="button" id="price-view" class="btn btn-default"><i class="fa fa-align-justify"></i></button>
							</div>
						</div>
				</div>
				<?php } ?>
				<br class="visible-xs">
				<?php if (!$vid_grid && !$vid_list && !$vid_price) { ?>
				<div class="col-lg-9 col-md-9 col-sm-8">
				<?php } else { ?>
				<div class="col-lg-6 col-md-5 col-sm-5">
				<?php } ?>
					<div class="input-group">
						<span class="input-group-addon" ><i class="fa fa-sort-amount-asc"></i><span class="hidden-xs hidden-sm hidden-md"> <?php echo $text_sort; ?></span></span>
						<select id="input-sort" class="form-control" onchange="location = this.value;">
							<?php foreach ($sorts as $sorts) { ?>
							<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
							<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					</div>
				</div>
				<br class="visible-xs">
				<div class="col-lg-3 col-md-3 col-sm-4">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-eye"></i><span class="hidden-xs hidden-sm hidden-md"> <?php echo $text_limit; ?></span></span>
						<select id="input-limit" class="form-control" onchange="location = this.value;">
							<?php foreach ($limits as $limits) { ?>
							<?php if ($limits['value'] == $limit) { ?>
							<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					</div>
				</div>
			</div>
        </div>
      <br />
      <div class="row products_category">
<?php foreach ($products as $product) { ?>
<div class="product-layout product-list col-xs-12">
	<div class="product-thumb product_<?php echo $product['product_id']; ?>" itemprop="itemListElement" itemscope itemtype="http://schema.org/Product">
		<div class="image">
			<?php if ($product['product_in_cart']) { ?>
				<div class="pr_in_cart_i"><i class="fa fa-check"></i></div>
			<?php } ?>
			<?php if ($img_slider) { ?>		
				<div class="image owl-carousel owlproduct">
					<div class="item text-center">
						<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive <?php if (($product['quantity'] < 1 && !$zakaz) || ($product['price_number'] == 0 && !$zakaz_price_null)) { ?>zatemnenie_img<?php } ?>" itemprop="image" /></a>
					</div>			
					<?php if ($product['images']) { ?>
						<?php foreach ($product['images'] as $image) { ?>
							<!--noindex-->
							<div class="item text-center">
								<a href="<?php echo $product['href']; ?>"><img src="<?php echo $image['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive <?php if (($product['quantity'] < 1 && !$zakaz) || ($product['price_number'] == 0 && !$zakaz_price_null)) { ?>zatemnenie_img<?php } ?>" rel="nofollow" /></a>
							</div>
							<!--/noindex-->
						<?php } ?>
					<?php } ?>
				</div>
			<?php } else { ?>
				<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive <?php if (($product['quantity'] < 1 && !$zakaz) || ($product['price_number'] == 0 && !$zakaz_price_null)) { ?>zatemnenie_img<?php } ?>" itemprop="image" /></a>
			<?php } ?>
			<?php if ($stikers_status) { ?>
				<div class="stiker_panel">
					<?php if ($product['quantity'] > 0 && $product['price_number'] != 0) { ?>
						<?php if ($product['stiker_spec']) { ?>
							<?php if ($product['special']) { ?>
								<span class="stiker stiker_spec"><span class="price-old special_no_format<?php echo $product['product_id']; ?>"><?php echo $product['price']; ?></span></span>
							<?php } else { ?>
								<span class="hidden special_no_format<?php echo $product['product_id']; ?>"></span>
							<?php } ?>
						<?php } else { ?>
							<span class="hidden special_no_format<?php echo $product['product_id']; ?>"></span>
						<?php } ?>
					<?php } else { ?>
						<span class="special_no_format<?php echo $product['product_id']; ?>" style="display:none"></span>
					<?php } ?>
					<?php if ($product['stiker_best']) { ?>
						<span class="stiker stiker_best"><?php echo $text_catalog_stiker_best; ?></span>
					<?php } ?>
					<?php if ($product['stiker_last']) { ?>
						<span class="stiker stiker_last"><?php echo $text_catalog_stiker_last; ?></span>
					<?php } ?>
					<?php if ($product['stiker_sklad_status']) { ?>
						<span class="stiker stiker_netu"><?php echo $product['stiker_sklad_status']; ?></span>
					<?php } else if ($product['stiker_stock']) { ?>
						<?php if ($product['price_number'] == 0 && !$zakaz_price_null) { ?>
							<span class="stiker stiker_netu"><?php echo $text_catalog_stiker_netu_2; ?></span>
						<?php } elseif ($product['quantity'] < 1 && $product['price_number'] > 0 && !$zakaz) { ?>
							<span class="stiker stiker_netu"><?php echo $product['text_catalog_stiker_netu']; ?></span>
						<?php } elseif ($product['quantity'] < 1 && !$zakaz && $zakaz_price_null) { ?>
							<span class="stiker stiker_netu"><?php echo $product['text_catalog_stiker_netu']; ?></span>
						<?php } elseif ($product['quantity'] < 1 && $zakaz && !$zakaz_price_null) { ?>
							<span class="stiker stiker_netu"><?php echo $product['text_catalog_stiker_netu']; ?></span>
						<?php } elseif ($product['quantity'] < 1 && $zakaz && $zakaz_price_null) { ?>
							<span class="stiker stiker_netu"><?php echo $product['text_catalog_stiker_netu']; ?></span>
						<?php } ?>
					<?php } ?>
					<?php if ($product['stiker_upc']) { ?>
						<span class="stiker stiker_user"><?php echo $product['stiker_upc']; ?></span>
					<?php } ?>
					<?php if ($product['stiker_ean']) { ?>
						<span class="stiker stiker_user"><?php echo $product['stiker_ean']; ?></span>
					<?php } ?>
					<?php if ($product['stiker_jan']) { ?>
						<span class="stiker stiker_user"><?php echo $product['stiker_jan']; ?></span>
					<?php } ?>
					<?php if ($product['stiker_isbn']) { ?>
						<span class="stiker stiker_user"><?php echo $product['stiker_isbn']; ?></span>
					<?php } ?>
					<?php if ($product['stiker_mpn']) { ?>
						<span class="stiker stiker_user"><?php echo $product['stiker_mpn']; ?></span>
					<?php } ?>
				</div>
			<?php } ?>
			<?php if ($revpopuporder || $popup_view || (($rev_srav_prod || $rev_wish_prod) && $setting_catalog_all['rev_wish_srav_prod'])) { ?>
				<div class="fapanel <?php if (!$setting_catalog_all['rev_wish_srav_prod']) { echo 'rev_wish_srav_prod'; } ?>">		
					<?php if (($rev_srav_prod || $rev_wish_prod) && $setting_catalog_all['rev_wish_srav_prod']) { ?>
						<?php if ($rev_wish_prod) { ?>
							<div class="wishlist">
								<a class="<?php echo $product['wishlist_class'] ?>" data-toggle="tooltip" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $product['button_wishlist']; ?>"><i class="fa fa-border fa-heart"></i></a>
							</div>
						<?php } ?>
						<?php if ($rev_srav_prod) { ?>
							<div class="compare">
								<a class="<?php echo $product['compare_class'] ?>" data-toggle="tooltip" onclick="compare.add('<?php echo $product['product_id']; ?>', '<?php echo $product['brand']; ?>');" title="<?php echo $product['button_compare']; ?>"><i class="fa fa-border fa-bar-chart-o"></i></a>
							</div>
						<?php } ?>
					<?php } ?>
					<?php if ($popup_view) { ?>
						<div class="lupa">
							<a onclick="get_revpopup_view('<?php echo $product['product_id']; ?>');"><i data-toggle="tooltip" <?php if (!$setting_catalog_all['rev_wish_srav_prod']) { echo 'data-placement="left"'; } ?> title="<?php echo $text_catalog_revpopup_view; ?>" class='fa fa-border fa-eye'></i></a>
						</div>
					<?php } ?>
					<?php if ($product['quantity'] > 0 || $zakaz) { ?>
						<?php if ($revpopuporder) { ?>
							<?php if ($product['price_number'] > 0 || $zakaz_price_null) { ?>
								<div class="zakaz">
									<a onclick="get_revpopup_purchase('<?php echo $product['product_id']; ?>');"><i data-toggle="tooltip" <?php if (!$setting_catalog_all['rev_wish_srav_prod']) { echo 'data-placement="left"'; } ?> title="<?php echo $text_catalog_revpopup_purchase; ?>" class='fa fa-border fa-gavel'></i></a>
								</div>
							<?php } ?>
						<?php } ?>
					<?php } ?>
				</div>
			<?php } ?>
		</div>
		<div class="caption product-info clearfix">
			<h4><a href="<?php echo $product['href']; ?>"><span itemprop="name"><?php echo $product['name']; ?></span></a></h4>
			<link itemprop="url" href="<?php echo $product['href']; ?>" />
			<?php if ($product['rating']) { ?>
			<div class="rating">
				<span itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
					<meta itemprop="worstRating" content = "1">
					<meta itemprop="bestRating" content = "5">
					<meta itemprop="ratingValue" content = "<?php echo $product['rating']; ?>">
					<meta itemprop="reviewCount" content = "<?php echo $product['reviews']; ?>">
					<?php for ($i = 1; $i <= 5; $i++) { ?>
					<?php if ($product['rating'] < $i) { ?>
					<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
					<?php } else { ?>
					<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
					<?php } ?>
					<?php } ?>
				</span>  
			</div>
			<?php } ?>
			<div class="description_options">
			<div class="description <?php echo (($product['options'] && $product['options_buy']) ? 'description_options_buy_price' : ''); ?>">
				<?php if ($description_options['short_desc'] && $product['short_description']) { ?>
					<div class="short_description"><?php echo $product['short_description']; ?></div>
				<?php } ?>
				<?php echo $product['description']; ?>
				<?php if (!$description_options['zamena_description']) { ?><span class="hidden pr_quantity_<?php echo $product['product_id']; ?>"></span><?php } ?>
			</div>
			<?php if ($revtheme_product_all['options_buy'] && $product['options'] && $product['options_buy']) { ?>
				<div class="well well-sm product-info options_buy">
					<div id="option_<?php echo $product['product_id']; ?>" class="options">
						<div class="form-group">
							<?php if ($revtheme_product_all['options_buy_optionname_one']) { ?>
								<label class="control-label options_buy_label"><?php foreach ($product['options'] as $option) { ?><?php echo $option['name']; ?>:<?php } ?></label>
							<?php } else { ?>
								<label class="control-label options_buy_label"><?php echo $text_option_option; ?>:</label>
							<?php } ?>
							<select class="form-control" onchange="get_product_option_id('<?php echo $product['product_id']; ?>')" name="" id="soption_<?php echo $product['product_id']; ?>">
									<?php foreach ($product['options'] as $option) { ?>
										<?php if ($revtheme_product_all['options_buy_optionname']) { ?>
											<optgroup label="<?php echo $option['name']; ?>:" >
										<?php } ?>
										<?php foreach ($option['product_option_value'] as $option_value) { ?>
											<?php if ($option_value['price'] > 0 && $option_value['quantity'] > 0) { ?>
												<option product_option_id="<?php echo $option['product_option_id']; ?>" value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
												<?php if ($opt_price) { ?>
													<?php if ($option_value['price']) { ?>
													<span class="option_price">(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)</span>
													<?php } ?>
												<?php } ?>
												</option>
											<?php } ?>
										<?php } ?>
										<?php if ($revtheme_product_all['options_buy_optionname']) { ?>
											</optgroup>
										<?php } ?>
									<?php } ?>
							</select>
						</div>
					</div>
				</div>
				<script type="text/javascript"><!--
				$('.options_buy select.form-control option:nth-child(1)').attr('selected', 'selected');
				$( document ).ready(function() {
					get_product_option_id (<?php echo $product['product_id']; ?>);
				});
				function get_product_option_id (product_id) {
					var sel_option_id = document.getElementById('soption_'+product_id);
					var option_id = sel_option_id.options[sel_option_id.selectedIndex].getAttribute('product_option_id');
					sel_option_id.setAttribute('name', 'option['+option_id+']');
					update_prices_product(product_id,1);
				}
				--></script>
			<?php } else if ($product['options']) { ?>
				<div class="well well-sm product-info">
					<div id="option_<?php echo $product['product_id']; ?>" class="options">
					<?php foreach ($product['options'] as $option) { ?>
						<?php if ($option['type'] == 'select') { ?>
							<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
								<label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?>:</label>
								<select onchange="update_prices_product(<?php echo $product['product_id']; ?>,<?php echo $product['minimum']; ?>);" name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
									<option value=""><?php echo $text_select; ?></option>
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
										<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
											<?php if ($opt_price) { ?>
												<?php if ($option_value['price']) { ?>
													<span class="option_price">(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)</span>
												<?php } ?>
											<?php } ?>
										</option>
									<?php } ?>
								</select>
							</div>
						<?php } ?>
						<?php if ($option['type'] == 'radio') { ?>
							<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
								<label class="control-label"><?php echo $option['name']; ?>:</label>
								<div id="input-option<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
										<div class="radio<?php if ($option['opt_image']) { ?> opt_with_img<?php } ?>">
											<input onchange="update_prices_product(<?php echo $product['product_id']; ?>,<?php echo $product['minimum']; ?>);" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>" />
											<label <?php if ($option['opt_image']) { ?>data-toggle="tooltip" title="<?php echo $option_value['name']; ?>"<?php } ?> class="btn btn-default <?php if ($option_value['image']) { ?>label-in-img<?php } ?>" for="<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>">
												<?php if ($option_value['image']) { ?>
													<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php if (!$option['opt_image']) { ?><?php echo $option_value['name']; ?><?php } ?>
												<?php } else { ?>
													<span><?php echo $option_value['name']; ?></span>
												<?php } ?>
												<?php if ($option_value['price']) { ?>
													<span class="option_price"><?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?></span>
												<?php } ?>
												<i class="fa fa-check"></i>	
											</label>
										</div>
									<?php } ?>
								</div>
							</div>
						<?php } ?>
						<?php if ($option['type'] == 'checkbox') { ?>
							<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
								<label class="control-label"><?php echo $option['name']; ?>:</label>
								<div id="input-option<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
										<div class="radio checkbox<?php if ($option['opt_image']) { ?> opt_with_img<?php } ?>">
											<input onchange="update_prices_product(<?php echo $product['product_id']; ?>,<?php echo $product['minimum']; ?>);" type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>" />
											<label <?php if ($option['opt_image']) { ?>data-toggle="tooltip" title="<?php echo $option_value['name']; ?>"<?php } ?> class="btn btn-default <?php if ($option_value['image']) { ?>label-in-img<?php } ?>" for="<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>">
												<?php if ($option_value['image']) { ?>
													<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php if (!$option['opt_image']) { ?><?php echo $option_value['name']; ?><?php } ?>
												<?php } else { ?>
													<span><?php echo $option_value['name']; ?></span>
												<?php } ?>
												<?php if ($option_value['price']) { ?>
													<span class="option_price"><?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?></span>
												<?php } ?>
												<i class="fa fa-check"></i>
											</label>
										</div>
									<?php } ?>
								</div>
							</div>
						<?php } ?>
						<?php if ($option['type'] == 'image') { ?>
							<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
								<label class="control-label"><?php echo $option['name']; ?>:</label>
								<div id="input-option<?php echo $option['product_option_id']; ?>">
									<?php foreach ($option['product_option_value'] as $option_value) { ?>
										<div class="radio<?php if ($option['opt_image']) { ?> opt_with_img<?php } ?>">
											<input onchange="update_prices_product(<?php echo $product['product_id']; ?>,<?php echo $product['minimum']; ?>);" type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>" />
											<label <?php if ($option['opt_image']) { ?>data-toggle="tooltip" title="<?php echo $option_value['name']; ?>"<?php } ?> class="btn btn-default <?php if ($option_value['image']) { ?>label-in-img<?php } ?>" for="<?php echo $option['product_option_id']; ?>_<?php echo $option_value['product_option_value_id']; ?>">
												<?php if ($option_value['image']) { ?>
													<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php if (!$option['opt_image']) { ?><?php echo $option_value['name']; ?><?php } ?>
												<?php } else { ?>
													<span><?php echo $option_value['name']; ?></span>
												<?php } ?>
												<?php if ($option_value['price']) { ?>
													<span class="option_price"><?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?></span>
												<?php } ?>
												<i class="fa fa-check"></i>	
											</label>
										</div>
									<?php } ?>
								</div>
							</div>
						<?php } ?>
						<?php if ($option['type'] == 'text') { ?>
							<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?>:</label>
							  <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
							</div>
						<?php } ?>
						<?php if ($option['type'] == 'textarea') { ?>
							<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?>:</label>
							  <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
							</div>
						<?php } ?>
						<?php if ($option['type'] == 'file') { ?>
							<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							  <label class="control-label"><?php echo $option['name']; ?>:</label>
							  <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
							  <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
							</div>
						<?php } ?>
						<?php if ($option['type'] == 'date') { ?>
							<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?>:</label>
							  <div class="input-group date">
								<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
								<span class="input-group-btn">
								<button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
								</span></div>
							</div>
						<?php } ?>
						<?php if ($option['type'] == 'datetime') { ?>
							<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?>:</label>
							  <div class="input-group datetime">
								<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
								<span class="input-group-btn">
								<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
								</span></div>
							</div>
						<?php } ?>
						<?php if ($option['type'] == 'time') { ?>
							<div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							  <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?>:</label>
							  <div class="input-group time">
								<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
								<span class="input-group-btn">
								<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
								</span></div>
							</div>
						<?php } ?>
					<?php } ?>
					</div>
				</div>
			<?php } ?>
			</div>
			<div class="product_buttons">
				<?php if ($revpopuporder || $popup_view || (($rev_srav_prod || $rev_wish_prod) && $setting_catalog_all['rev_wish_srav_prod'])) { ?>
					<div class="fapanel-price">
						<?php if ($product['quantity'] > 0 || $zakaz) { ?>
							<?php if ($revpopuporder) { ?>
								<?php if ($product['price_number'] > 0 || $zakaz_price_null) { ?>
									<div class="zakaz">
										<a onclick="get_revpopup_purchase('<?php echo $product['product_id']; ?>');"><i data-toggle="tooltip" data-placement="top" title="<?php echo $text_catalog_revpopup_purchase; ?>" class='fa fa-border fa-gavel'></i></a>
									</div>
								<?php } ?>
							<?php } ?>
						<?php } ?>
						<?php if ($popup_view) { ?>
							<div class="lupa">
								<a onclick="get_revpopup_view('<?php echo $product['product_id']; ?>');"><i data-toggle="tooltip" data-placement="top" title="<?php echo $text_catalog_revpopup_view; ?>" class='fa fa-border fa-eye'></i></a>
							</div>
						<?php } ?>
						<?php if (($rev_srav_prod || $rev_wish_prod) && $setting_catalog_all['rev_wish_srav_prod']) { ?>
						<?php if ($rev_srav_prod) { ?>
							<div class="compare">
								<a class="<?php echo $product['compare_class'] ?>" data-toggle="tooltip" onclick="compare.add('<?php echo $product['product_id']; ?>', '<?php echo $product['brand']; ?>');" title="<?php echo $product['button_compare']; ?>"><i class="fa fa-border fa-bar-chart-o"></i></a>
							</div>
						<?php } ?>
						<?php if ($rev_wish_prod) { ?>
							<div class="wishlist">
								<a class="<?php echo $product['wishlist_class'] ?>" data-toggle="tooltip" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $product['button_wishlist']; ?>"><i class="fa fa-border fa-heart"></i></a>
							</div>
						<?php } ?>
					<?php } ?>
					</div>
				<?php } ?>
				<?php if ($product['price']) { ?>
					<?php if ($product['price_number'] > 0) { ?>
						<?php if ($product['quantity'] > 0 || $zakaz) { ?>
							<div class="price" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
							<?php if ($product['price_number'] > 0 || $zakaz_price_null) { ?>
								<?php if (!$product['special']) { ?>
									<span class="price_no_format<?php echo $product['product_id']; ?>"><?php echo $product['price']; ?></span>
									<meta itemprop="price" content="<?php echo $product['price_number']; ?>">
								<?php } else { ?>
									<span class="price-new"><span class="price_no_format<?php echo $product['product_id']; ?>"><?php echo $product['special']; ?></span></span>
									<meta itemprop="price" content="<?php echo $product['special_number']; ?>">
								<?php } ?>
								<meta itemprop="priceCurrency" content="<?php echo $currency_code; ?>">
							<?php } ?>
							</div>
						<?php } else { ?>
							<?php if ($predzakaz_button) { ?>
								<div class="price" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
								<?php if ($product['price_number'] > 0 || $zakaz_price_null) { ?>
									<?php if (!$product['special']) { ?>
										<span class="price_no_format<?php echo $product['product_id']; ?>"><?php echo $product['price']; ?></span>
										<meta itemprop="price" content="<?php echo $product['price_number']; ?>">
									<?php } else { ?>
										<span class="price-new"><span class="price_no_format<?php echo $product['product_id']; ?>"><?php echo $product['special']; ?></span></span>
										<meta itemprop="price" content="<?php echo $product['special_number']; ?>">
									<?php } ?>
									<meta itemprop="priceCurrency" content="<?php echo $currency_code; ?>">
								<?php } ?>
								</div>
							<?php } else { ?>
								<div class="price"><span class="hidden price_no_format<?php echo $product['product_id']; ?>"></span></div>
							<?php } ?>
						<?php } ?>
						<?php if ($ch_quantity && ($product['price_number'] > 0 || $zakaz_price_null) && ($product['quantity'] > 0 || $zakaz)) { ?>
							<div class="number">
								<div class="frame-change-count">
									<div class="btn-plus">
										<button type="button" onclick="validate_pole(this,<?php echo $product['product_id']; ?>,'+',<?php echo $product['minimum']; ?>,<?php echo $product['quantity']; ?>);">+</button>
									</div>
									<div class="btn-minus">
										<button type="button" onclick="validate_pole(this,<?php echo $product['product_id']; ?>,'-',<?php echo $product['minimum']; ?>,<?php echo $product['quantity']; ?>);">-</button>
									</div>
								</div>
								<input type="text" name="quantity" class="plus-minus" value='<?php echo $product['minimum']; ?>' onchange="validate_pole(this);" onkeyup="validate_pole(this,<?php echo $product['product_id']; ?>,'=',<?php echo $product['minimum']; ?>,<?php echo $product['quantity']; ?>);">
							</div>
						<?php } else { ?>
							<div class="number bordnone"></div>
							<input type="hidden" name="quantity" class="plus-minus" value='<?php echo $product['minimum']; ?>'>
						<?php } ?>
						<div class="clearfix"></div>
					<?php } else { ?>
						<?php if ($zakaz || $zakaz_price_null) { ?>
							<div class="price"><span class="hidden price_no_format<?php echo $product['product_id']; ?>"></span></div>
							<?php if ($product['price_number'] == 0 && !$zakaz_price_null) { ?>
							<?php } else if ($product['quantity'] > 0 || $zakaz) { ?>
								<div class="price_na_zakaz"><?php echo $text_catalog_price_na_zakaz; ?></div>
							<?php } ?>
						<?php } else { ?>
							<div class="price"><span class="hidden price_no_format<?php echo $product['product_id']; ?>"></span></div>
						<?php } ?>
					<?php } ?>
				<?php } ?>
				<?php if (($rev_srav_prod || $rev_wish_prod) && !$setting_catalog_all['rev_wish_srav_prod']) { ?>
					<?php if ($rev_srav_prod) { ?>
						<div class="compare">
							<a class="<?php echo $product['compare_class'] ?>" data-toggle="tooltip" onclick="compare.add('<?php echo $product['product_id']; ?>', '<?php echo $product['brand']; ?>');" title="<?php echo $product['button_compare']; ?>"><i class="fa fa-border fa-bar-chart-o"></i></a>
						</div>
					<?php } ?>
					<?php if ($rev_wish_prod) { ?>
						<div class="wishlist">
							<a class="<?php echo $product['wishlist_class'] ?>" data-toggle="tooltip" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $product['button_wishlist']; ?>"><i class="fa fa-border fa-heart"></i></a>
						</div>
					<?php } ?>
				<?php $button_cart_class = 'prlistb'; } else { $button_cart_class = 'prlistb active'; }?>
				<?php if ($product['quantity'] > 0 || $zakaz || $predzakaz_button) { ?>
					<?php if ($product['price_number'] > 0 || $zakaz_price_null) { ?>
						<?php if ($product['quantity'] < 1 && $predzakaz_button) { ?>
							<div class="cart predzakaz_cart">
								<a onclick="get_revpopup_predzakaz(<?php echo $product['product_id']; ?>);" <?php if ($button_cart_class != 'prlistb active') { ?>data-toggle="tooltip" title="<?php echo $text_predzakaz; ?>"<?php } ?>><i class="fa fa-border fa-shopping-basket predzakaz"><span class="<?php echo $button_cart_class; ?>"><?php echo $text_predzakaz; ?></span></i></a>
							</div>
						<?php } else { ?>
							<div class="cart">
								<a onclick="get_revpopup_cart(<?php echo $product['product_id']; ?>,'catalog',get_revpopup_cart_quantity('<?php echo $product['product_id']; ?>'));" <?php if ($button_cart_class != 'prlistb active') { ?>data-toggle="tooltip" title="<?php echo $button_cart; ?>"<?php } ?>><i class="fa fa-border fa-shopping-basket"><span class="<?php echo $button_cart_class; ?>"><?php echo $button_cart; ?></span></i></a>
							</div>
							<?php if ($revpopuporder_settings['quick_btn']) { ?>
								<a class="quick_btn btn btn-default btn-xs pull-right" onclick="get_revpopup_purchase('<?php echo $product['product_id']; ?>');"><i class="fa fa-hand-pointer-o"></i><?php echo $text_catalog_revpopup_purchase; ?></a>
							<?php } ?>
						<?php } ?>
					<?php } ?>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<?php } ?>
      </div>
      <div class="row">
		<div class="pagpages clearfix">
			<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
			<div class="col-sm-6 text-right"><?php echo $results; ?></div>
		</div>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	var search = $('#content input[name=\'search\']').prop('value');
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}
	var category_id = $('#content select[name=\'category_id\']').prop('value');
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');
	if (sub_category) {
		url += '&sub_category=true';
	}
	var filter_description = $('#content input[name=\'description\']:checked').prop('value');
	if (filter_description) {
		url += '&description=true';
	}
	location = url;
});
$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});
$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});
$('select[name=\'category_id\']').trigger('change');

<?php foreach ($products as $product) { if ($product['minimum'] > 1 && $recalc_price) { ?>
	update_quantity(<?php echo $product['product_id']; ?>, <?php echo $product['minimum']; ?>);
<?php } } ?>
function get_revpopup_cart_quantity(product_id) {
	input_val = $('.product_'+product_id+' .plus-minus').val();
	quantity  = parseInt(input_val);
	return quantity;
}
function validate_pole(val, product_id, znak, minimumvalue, maximumvalue) {
	val.value = val.value.replace(/[^\d,]/g, '');
	if (val.value == '') val.value = minimumvalue;
	maximumvalue = Number($('.pr_quantity_'+product_id).text());
	if (maximumvalue < 1) maximumvalue = 9999;
	input_val = $('.product_'+product_id+' .plus-minus');	
	quantity = parseInt(input_val.val());
	<?php if ($q_zavisimost) { ?>
	if(znak=='+' && input_val.val() < maximumvalue) input_val.val(quantity+1);
	else if(znak=='-' && input_val.val() > minimumvalue) input_val.val(quantity-1);
	else if(znak=='=' && input_val.val() < maximumvalue && input_val.val() < maximumvalue) input_val.val(input_val.val());
	if (quantity < 1 || quantity < minimumvalue) {
		input_val.val(minimumvalue);
		val.value = minimumvalue;
	} else if (quantity > maximumvalue) {
		input_val.val(maximumvalue);
		val.value = maximumvalue;
	}
	<?php } else { ?>
	if(znak=='+') input_val.val(quantity+1);
	else if(znak=='-' && input_val.val() > minimumvalue) input_val.val(quantity-1);
	else if(znak=='=' && input_val.val() > minimumvalue) input_val.val(input_val.val());
	if (quantity < 1 || quantity < minimumvalue) {
		input_val.val(minimumvalue);
		val.value = minimumvalue;
	}
	<?php } ?>
	update_quantity(product_id, input_val.val());
}
function update_quantity(product_id, quantity) {
	<?php if ($recalc_price) { ?>
		quantity = quantity;
	<?php } else { ?>
		quantity = 1;
	<?php } ?>
	
	data = $('.product_'+product_id+' .options input[type=\'text\'], .product_'+product_id+' .options input[type=\'hidden\'], .product_'+product_id+' .options input[type=\'radio\']:checked, .product_'+product_id+' .options input[type=\'checkbox\']:checked, .product_'+product_id+' .options select');
	$.ajax({
	  url: 'index.php?route=product/product/update_prices',
	  type: 'post',
	  dataType: 'json',
	  data: data.serialize() + '&product_id=' + product_id + '&quantity=' + quantity,
	  success: function(json) {
		<?php if ($recalc_price) { ?>
		
			<?php if ($description_options['zamena_description'] && $description_options['weight']) { ?>
				var weight = json['weight'];
				<?php if ($revtheme_product_all['recalc_price_animate']) { ?>
					var start_weight = parseFloat($('.pr_weight_'+product_id).attr('data-weight'));
					$({val:start_weight}).animate({val:weight}, {
						duration: 500,
						easing: 'swing',
						step: function(val) {
							$('.pr_weight_'+product_id).html(weight_format(val, product_id));
						}
					});
					$('.pr_weight_'+product_id).attr('data-weight', json['weight']);
				<?php } else { ?>
					$('.pr_weight_'+product_id).html(weight_format(weight, product_id));
				<?php } ?>
			<?php } ?>

			<?php if ($stikers_status) { ?>
				var price = json['price_n'];
				<?php if ($revtheme_product_all['recalc_price_animate']) { ?>
					var start_price = parseFloat($('.special_no_format'+product_id).html().replace(/\s*/g,''));
					$({val:start_price}).animate({val:price}, {
						duration: 500,
						easing: 'swing',
						step: function(val) {
							$('.special_no_format'+product_id).html(price_format(val));
						}
					});
				<?php } else { ?>
					$('.special_no_format'+product_id).html(price_format(price));
				<?php } ?>
			<?php } ?>
			
			var special = json['special_n'];
			<?php if ($revtheme_product_all['recalc_price_animate']) { ?>
				var start_special = parseFloat($('.price_no_format'+product_id).html().replace(/\s*/g,''));
				$({val:start_special}).animate({val:special}, {
					duration: 500,
					easing: 'swing',
					step: function(val) {
						$('.price_no_format'+product_id).html(price_format(val));
					}
				});
			<?php } else { ?>
				$('.price_no_format'+product_id).html(price_format(special));
			<?php } ?>
		<?php } ?>
	  }
	});
}
function update_prices_product(product_id, minimumvalue) {
	input_val = $('.product_'+product_id+' .plus-minus').val();
	if (input_val > minimumvalue) {
		input_val = minimumvalue;
		$('.product_'+product_id+' .plus-minus').val(minimumvalue);
	}
	<?php if ($recalc_price) { ?>
	quantity = parseInt(input_val);
	<?php } else { ?>
	quantity = 1;
	<?php } ?>
	data = $('.product_'+product_id+' .options input[type=\'text\'], .product_'+product_id+' .options input[type=\'hidden\'], .product_'+product_id+' .options input[type=\'radio\']:checked, .product_'+product_id+' .options input[type=\'checkbox\']:checked, .product_'+product_id+' .options select');
	$.ajax({
	  type: 'post',
	  url:  'index.php?route=product/product/update_prices',
	  data: data.serialize() + '&product_id=' + product_id + '&quantity=' + quantity,
	  dataType: 'json',
	  success: function(json) {
		  
		<?php if ($img_slider) { ?>
		$('.product_'+product_id+' .image .owl-item:first-child img').attr('src', json['opt_image']);
		<?php } else { ?>
		$('.product_'+product_id+' .image img').attr('src', json['opt_image']);
		<?php } ?>
		
		<?php if ($description_options['zamena_description'] && $description_options['model']) { ?>
		$('.product_'+product_id+' .pr_model_'+product_id).html(json['opt_model']);
		<?php } ?>
	  
		var end_quantity = json['option_quantity'];
		<?php if ($revtheme_product_all['recalc_price_animate']) { ?>
			var start_quantity = parseFloat($('.pr_quantity_'+product_id).html().replace(/\s*/g,''));
			$({val:start_quantity}).animate({val:end_quantity}, {
				duration: 500,
				easing: 'swing',
				step: function(val) {
					$('.pr_quantity_'+product_id).html(number_format(val, product_id));
				}
			});
		<?php } else { ?>
			$('.pr_quantity_'+product_id).html(number_format(end_quantity, product_id));
		<?php } ?>

		<?php if ($description_options['zamena_description'] && $description_options['weight']) { ?>
			var weight = json['weight'];
			<?php if ($revtheme_product_all['recalc_price_animate']) { ?>
				var start_weight = parseFloat($('.pr_weight_'+product_id).attr('data-weight'));
				$({val:start_weight}).animate({val:weight}, {
					duration: 500,
					easing: 'swing',
					step: function(val) {
						$('.pr_weight_'+product_id).html(weight_format(val, product_id));
					}
				});
				$('.pr_weight_'+product_id).attr('data-weight', json['weight']);
			<?php } else { ?>
				$('.pr_weight_'+product_id).html(weight_format(weight, product_id));
			<?php } ?>
		<?php } ?>
	  
		<?php if ($stikers_status) { ?>
			var price = json['price_n'];
			<?php if ($revtheme_product_all['recalc_price_animate']) { ?>
				var start_price = parseFloat($('.special_no_format'+product_id).html().replace(/\s*/g,''));
				$({val:start_price}).animate({val:price}, {
					duration: 500,
					easing: 'swing',
					step: function(val) {
						$('.special_no_format'+product_id).html(price_format(val));
					}
				});
			<?php } else { ?>
				$('.special_no_format'+product_id).html(price_format(price));
			<?php } ?>
		<?php } ?>
		
		var special = json['special_n'];
		<?php if ($revtheme_product_all['recalc_price_animate']) { ?>
			var start_special = parseFloat($('.price_no_format'+product_id).html().replace(/\s*/g,''));
			$({val:start_special}).animate({val:special}, {
				duration: 500,
				easing: 'swing',
				step: function(val) {
					$('.price_no_format'+product_id).html(price_format(val));
				}
			});
		<?php } else { ?>
			$('.price_no_format'+product_id).html(price_format(special));
		<?php } ?>
	  }
	});
}
function price_format(n) {
	c = <?php echo (empty($currency['decimals']) ? "0" : $currency['decimals'] ); ?>;
    d = '<?php echo $currency['decimal_point']; ?>';
    t = '<?php echo $currency['thousand_point']; ?>';
    s_left = '<?php echo $currency['symbol_left']; ?>';
    s_right = '<?php echo $currency['symbol_right']; ?>';
    n = n * <?php echo $currency['value']; ?>;
    i = parseInt(n = Math.abs(n).toFixed(c)) + ''; 
    j = ((j = i.length) > 3) ? j % 3 : 0; 
    return s_left + (j ? i.substr(0, j) + t : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : '') + s_right; 
}
function weight_format(n, product_id) {
    c = 2;
    d = '.';
    t = ',';
    i = parseInt(n = Math.abs(n).toFixed(c)) + ''; 
    j = ((j = i.length) > 3) ? j % 3 : 0; 
    return (j ? i.substr(0, j) + t : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : '');
}
function number_format(n, product_id) {
    i = parseInt(n = Math.abs(n).toFixed(0)) + ''; 
    return i;
}
--></script>
<?php echo $footer; ?>