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
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
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
    <div id="content" class="<?php echo $class; ?> tab-content"><?php echo $content_top; ?>
	<div id="pusto" class="content" style="display:none"></div>
	
<?php if ($products) { ?>
	<?php if ($cat_sort) { ?>
	<ul id="tabs_compare" class="nav nav-tabs" role="tablist">
		<?php $numer = 1; ?>
		<?php foreach( $products as $brand=>$items ){ ?>
		<li id="tab2-<?php echo str_replace(' ','',$brand); ?>">
			<a href="#tab-<?php echo str_replace(' ','',$brand); ?>" data-toggle="tab" numer="<?php echo $numer; ?>" ><?php echo $brand; ?></a>
		</li>
		<?php $numer++; ?>
		<?php } ?>
	</ul>
		<?php $numer = 1; ?>
		<?php foreach( $products as $brand=>$items ){ ?>
			<div id="tab-<?php echo str_replace(' ','',$brand); ?>" class="tab-pane numer<?php echo $numer; ?>">
				<div class="cd-products-comparison-table compare-info">
					<div class="cd-header">
						<div style="float: left;">
							<label class="filter_otlich_span"><input type="checkbox" class="filter_otlich numer<?php echo $numer; ?>" hidden><?php echo $text_compare_onlyrazn; ?></label></label>
						</div>
						<div class="actions">
							<a href="#" class="reset numer<?php echo $numer; ?>"><?php echo $text_compare_otmena; ?></a>
							<a href="#" class="filter numer<?php echo $numer; ?>"><?php echo $text_compare_filter; ?></a>
						</div>
						<?php $numer++; ?>
					</div>
					<div class="cd-products-table">
						<div class="features">
							<div class="top-info"><?php echo $text_compare_tovar; ?></div>
							<ul class="cd-features-list">
								<?php if ($compare_price) { ?>					
								<li class="tr1"><?php echo $text_price; ?></li>
								<?php } ?>
								<?php if ($compare_model) { ?>
								<li class="osnovtr tr2"><?php echo $text_model; ?></li>
								<?php } ?>
								<?php if ($compare_sku) { ?>
								<li class="osnovtr tr3"><?php echo $text_sku; ?></li>
								<?php } ?>
								<?php if ($compare_manuf) { ?>
								<li class="osnovtr tr4"><?php echo $text_manufacturer; ?></li>
								<?php } ?>
								<?php if ($compare_stock) { ?>
								<li class="osnovtr tr5"><?php echo $text_availability; ?></li>
								<?php } ?>
								<?php if ($compare_rate) { ?>
								<?php if ($review_status) { ?>
								<li class="osnovtr tr6"><?php echo $text_rating; ?></li>
								<?php } ?>
								<?php } ?>
								<?php if ($compare_srtdesc) { ?>
								<li class="osnovtr tr7"><?php echo $text_summary; ?></li>
								<?php } ?>
								<?php if ($compare_weight) { ?>
								<li class="osnovtr tr8"><?php echo $text_weight; ?></li>
								<?php } ?>
								<?php if ($compare_razmer) { ?>
								<li class="osnovtr tr9"><?php echo $text_dimension; ?></li>
								<?php } ?>
								<?php if ($compare_atrib) { ?>
									<?php $trnumber = 10; ?>
									<?php foreach ($attribute_groups as $attribute_group) { ?>
										<?php if ($compare_atribgr) { ?>
											<li class="compare-attribute"><?php echo $attribute_group['name']; ?></li>
										<?php } ?>
										<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
										<li class="osnovtr tr<?php echo $trnumber; ?>"><?php echo $attribute['name']; ?></li>
											<?php $trnumber++; ?>
										<?php } ?>
									<?php } ?>
								<?php } ?>
								<li></li>
							</ul>
						</div>
						<div class="cd-products-wrapper">
							<ul class="cd-products-columns products_category">
								<?php foreach ($items['products'] as $product) { ?>
								<li class="product">
									<div class="top-info product_<?php echo $product['product_id']; ?>">
										<div class="image">
										<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt=""></a>
										<?php if ($stikers_status) { ?>
											<div class="stiker_panel">
												<?php if ($product['quantity'] > 0 && $product['price_number'] != 0) { ?>
													<?php if ($product['stiker_spec']) { ?>
														<?php if ($product['special']) { ?>
															<span class="stiker stiker_spec"><span class="price-old"><?php echo $product['price']; ?></span></span>
														<?php } ?>
													<?php } ?>
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
										</div>
										<h3><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
									</div>
									<ul class="cd-features-list">
										<?php if ($compare_price) { ?>
										<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr1"><?php if ($product['price'] != 0) { ?>
										<?php if (!$product['special']) { ?>
										<?php echo $product['price']; ?>
										<?php } else { ?>
										<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
										<?php } ?>
										<?php } ?>
										</li>
										<?php } ?>
										<?php if ($compare_model) { ?>
										<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr2"><?php echo $product['model']; ?></li>
										<?php } ?>
										<?php if ($compare_sku) { ?>
										<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr3"><?php echo $product['sku']; ?></li>
										<?php } ?>
										<?php if ($compare_manuf) { ?>
										<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr4"><?php echo $product['manufacturer']; ?></li>
										<?php } ?>
										<?php if ($compare_stock) { ?>
										<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr5"><?php echo $product['availability']; ?></li>
										<?php } ?>
										<?php if ($compare_rate) { ?>
										<?php if ($review_status) { ?>
										<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd rating tr6">
										<?php for ($i = 1; $i <= 5; $i++) { ?>
										<?php if ($product['rating'] < $i) { ?>
										<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
										<?php } else { ?>
										<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
										<?php } ?>
										<?php } ?>
										<sup>
										<?php echo $product['reviews']; ?></sup></li>
										<?php } ?>
										<?php } ?>
										<?php if ($compare_srtdesc) { ?>
										<li id="td_<?php echo $product['product_id']; ?>" class="description osnovtd tr7"><?php echo $product['description']; ?></li>
										<?php } ?>
										<?php if ($compare_weight) { ?>
										<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr8"><?php echo $product['weight']; ?></li>
										<?php } ?>
										<?php if ($compare_razmer) { ?>
										<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr9"><?php echo $product['length']; ?> x <?php echo $product['width']; ?> x <?php echo $product['height']; ?></li>
										<?php } ?>
										<?php if ($compare_atrib) { ?>
											<?php $trnumber = 10; ?>
											<?php foreach ($attribute_groups as $attribute_group) { ?>
												<?php if ($compare_atribgr) { ?>
													<li class="compare-attribute"></li>
												<?php } ?>
												<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
													<?php if (isset($product['attribute'][$key])) { ?>
														<li class="osnovtd tr<?php echo $trnumber; ?>"><?php echo $product['attribute'][$key]; ?></li>
													<?php } else { ?>
														<li class="osnovtd tr<?php echo $trnumber; ?>"></li>
													<?php } ?>
													<?php $trnumber++; ?>
												<?php } ?>
											<?php } ?>
										<?php } ?>
										<li>
										<div class="cart_wish">
											<?php if ($product['quantity'] > 0) { ?>
											<div class="cart">
												<a onclick="get_revpopup_cart('<?php echo $product['product_id']; ?>', 'catalog_mod', '<?php echo $product['minimum']; ?>');"><i class="fa fa-border fa-shopping-basket"><span class="prlistb"><?php echo $button_cart; ?></span></i></a>
											</div>
											<?php } else if ($predzakaz_button) { ?>
												<div class="cart">
													<a onclick="get_revpopup_predzakaz('<?php echo $product['product_id']; ?>');"><i class="fa fa-border fa-shopping-basket predzakaz"><span class="prlistb"><?php echo $text_predzakaz; ?></span></i></a>
												</div>
											<?php } ?>
											<?php if ($rev_wish_prod) { ?>
												<div class="wishlist">
													<a class="wishlist <?php echo $product['wishlist_class'] ?>" data-toggle="tooltip" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $product['button_wishlist']; ?>"><i class="fa fa-border fa-heart"></i></a>
												</div>
											<?php } ?>
											<div class="trash" data-toggle="tooltip" title="<?php echo $text_compare_trash_tooltip; ?>">
												<a href="<?php echo $product['remove']; ?>"><i class="fa fa-border fa-trash-o"></i></a>
											</div>
										</div>
										</li>
									</ul>
								</li>
								<?php } ?>				
							</ul>
						</div>
						<ul class="cd-table-navigation">
							<li><a href="#0" class="prev inactive"><i class="fa fa-chevron-left" aria-hidden="true"></i></a></li>
							<li><a href="#0" class="next"><i class="fa fa-chevron-right" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		<?php } ?>		  
	<?php } else { ?>
		<section class="cd-products-comparison-table compare-info">
			<div class="cd-header">
				<div style="float: left;">
					<label class="filter_otlich_span"><input type="checkbox" class="filter_otlich" hidden><?php echo $text_compare_onlyrazn; ?></label></label>
				</div>
				<div class="actions">
					<a href="#" class="reset"><?php echo $text_compare_otmena; ?></a>
					<a href="#" class="filter"><?php echo $text_compare_filter; ?></a>
				</div>		
			</div>
			<div class="cd-products-table">
				<div class="features">
					<div class="top-info"><?php echo $text_compare_tovar; ?></div>
					<ul class="cd-features-list">
						<?php if ($compare_price) { ?>					
						<li class="tr1"><?php echo $text_price; ?></li>
						<?php } ?>
						<?php if ($compare_model) { ?>
						<li class="osnovtr tr2"><?php echo $text_model; ?></li>
						<?php } ?>
						<?php if ($compare_sku) { ?>
						<li class="osnovtr tr3"><?php echo $text_sku; ?></li>
						<?php } ?>
						<?php if ($compare_manuf) { ?>
						<li class="osnovtr tr4"><?php echo $text_manufacturer; ?></li>
						<?php } ?>
						<?php if ($compare_stock) { ?>
						<li class="osnovtr tr5"><?php echo $text_availability; ?></li>
						<?php } ?>
						<?php if ($compare_rate) { ?>
						<?php if ($review_status) { ?>
						<li class="osnovtr tr6"><?php echo $text_rating; ?></li>
						<?php } ?>
						<?php } ?>
						<?php if ($compare_srtdesc) { ?>
						<li class="osnovtr tr7"><?php echo $text_summary; ?></li>
						<?php } ?>
						<?php if ($compare_weight) { ?>
						<li class="osnovtr tr8"><?php echo $text_weight; ?></li>
						<?php } ?>
						<?php if ($compare_razmer) { ?>
						<li class="osnovtr tr9"><?php echo $text_dimension; ?></li>
						<?php } ?>
						<?php if ($compare_atrib) { ?>
						<?php $trnumber = 10; ?>
						<?php foreach ($attribute_groups as $attribute_group) { ?>
						<?php if ($compare_atribgr) { ?>
							<li class="compare-attribute"><?php echo $attribute_group['name']; ?></li>
						<?php } ?>
						<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
						<li class="osnovtr tr<?php echo $trnumber; ?>"><?php echo $attribute['name']; ?></li>
						<?php $trnumber++; ?>
						<?php } ?>
						<?php } ?>
						<?php } ?>
						<li></li>
					</ul>
				</div>
				<div class="cd-products-wrapper">
					<ul class="cd-products-columns products_category">
						<?php foreach ($products as $product) { ?>
						<li class="product">
							<div class="top-info product_<?php echo $product['product_id']; ?>">
								<div class="image">
								<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt=""></a>
								<?php if ($stikers_status) { ?>
									<div class="stiker_panel">
										<?php if ($product['quantity'] > 0 && $product['price_number'] != 0) { ?>
											<?php if ($product['stiker_spec']) { ?>
												<?php if ($product['special']) { ?>
													<span class="stiker stiker_spec"><span class="price-old"><?php echo $product['price']; ?></span></span>
												<?php } ?>
											<?php } ?>
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
								</div>
								<h3><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
							</div>
							<ul class="cd-features-list">
								<?php if ($compare_price) { ?>
								<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr1"><?php if ($product['price'] != 0) { ?>
								<?php if (!$product['special']) { ?>
								<?php echo $product['price']; ?>
								<?php } else { ?>
								<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
								<?php } ?>
								<?php } ?>
								</li>
								<?php } ?>
								<?php if ($compare_model) { ?>
								<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr2"><?php echo $product['model']; ?></li>
								<?php } ?>
								<?php if ($compare_sku) { ?>
								<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr3"><?php echo $product['sku']; ?></li>
								<?php } ?>
								<?php if ($compare_manuf) { ?>
								<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr4"><?php echo $product['manufacturer']; ?></li>
								<?php } ?>
								<?php if ($compare_stock) { ?>
								<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr5"><?php echo $product['availability']; ?></li>
								<?php } ?>
								<?php if ($compare_rate) { ?>
								<?php if ($review_status) { ?>
								<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd rating tr6">
								<?php for ($i = 1; $i <= 5; $i++) { ?>
								<?php if ($product['rating'] < $i) { ?>
								<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
								<?php } else { ?>
								<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
								<?php } ?>
								<?php } ?>
								<sup>
								<?php echo $product['reviews']; ?></sup></li>
								<?php } ?>
								<?php } ?>
								<?php if ($compare_srtdesc) { ?>
								<li id="td_<?php echo $product['product_id']; ?>" class="description osnovtd tr7"><?php echo $product['description']; ?></li>
								<?php } ?>
								<?php if ($compare_weight) { ?>
								<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr8"><?php echo $product['weight']; ?></li>
								<?php } ?>
								<?php if ($compare_razmer) { ?>
								<li id="td_<?php echo $product['product_id']; ?>" class="osnovtd tr9"><?php echo $product['length']; ?> x <?php echo $product['width']; ?> x <?php echo $product['height']; ?></li>
								<?php } ?>
								<?php if ($compare_atrib) { ?>
									<?php $trnumber = 10; ?>
									<?php foreach ($attribute_groups as $attribute_group) { ?>
										<?php if ($compare_atribgr) { ?>
											<li class="compare-attribute"></li>
										<?php } ?>
										<?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
											<?php if (isset($product['attribute'][$key])) { ?>
												<li class="osnovtd tr<?php echo $trnumber; ?>"><?php echo $product['attribute'][$key]; ?></li>
											<?php } else { ?>
												<li class="osnovtd tr<?php echo $trnumber; ?>"></li>
											<?php } ?>
											<?php $trnumber++; ?>
										<?php } ?>
									<?php } ?>
								<?php } ?>
								<li>
								<div class="cart_wish">
									<?php if ($product['quantity'] > 0) { ?>
									<div class="cart">
										<a onclick="get_revpopup_cart('<?php echo $product['product_id']; ?>', 'catalog_mod', '<?php echo $product['minimum']; ?>');"><i class="fa fa-border fa-shopping-basket"><span class="prlistb"><?php echo $button_cart; ?></span></i></a>
									</div>
									<?php } else if ($predzakaz_button) { ?>
										<div class="cart predz">
											<a onclick="get_revpopup_predzakaz('<?php echo $product['product_id']; ?>');"><i class="fa fa-border fa-shopping-basket predzakaz"><span class="prlistb"><?php echo $text_predzakaz; ?></span></i></a>
										</div>
									<?php } ?>
									<?php if ($rev_wish_prod) { ?>
										<div class="wishlist">
											<a class="wishlist <?php echo $product['wishlist_class'] ?>" data-toggle="tooltip" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $product['button_wishlist']; ?>"><i class="fa fa-border fa-heart"></i></a>
										</div>
									<?php } ?>
									<div class="trash" data-toggle="tooltip" title="<?php echo $text_compare_trash_tooltip; ?>">
										<a href="<?php echo $product['remove']; ?>"><i class="fa fa-border fa-trash-o"></i></a>
									</div>
								</div>
								</li>
							</ul>
						</li>
						<?php } ?>				
					</ul>
				</div>
				<ul class="cd-table-navigation">
					<li><a href="#0" class="prev inactive"><i class="fa fa-chevron-left" aria-hidden="true"></i></a></li>
					<li><a href="#0" class="next"><i class="fa fa-chevron-right" aria-hidden="true"></i></a></li>
				</ul>
			</div>
		</section>
	<?php } ?>
<?php } else { ?>
	<div class="content"><?php echo $text_empty; ?></div>
	<div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
<?php } ?>
		

<?php if ($products) { ?>
<?php 
$numbercolumns = 0;
if ($cat_sort) {
	foreach ($items['products'] as $product) {
		$numbercolumns++;
	}
} else {
	foreach ($products as $product) {
		$numbercolumns++;
	}
}
?>
<script type="text/javascript"><!--
var cdcolumns = $('li.product').outerWidth();
$('ul.cd-products-columns').css('width', cdcolumns*<?php echo $numbercolumns ?>);
$(function() {
	podgon_table();
	$(window).resize(podgon_table);
	tabcompare(1);
});
function podgon_table() {
	<?php if (!$compare_atrib) { $trnumber = 10; } ?>
	var trnumber = 0;
	while (trnumber < <?php echo $trnumber ?>) {
		max_height_div('.tr'+trnumber);
		trnumber++;
	}
}
function tabcompare(numer) {
	function productsTable( element ) {
		<?php if ($cat_sort) { ?>
		this.element = element;
		this.table = this.element.children('.numer'+numer+' .cd-products-table');
		this.tableHeight = this.table.height();
		this.productsWrapper = this.table.children('.numer'+numer+' .cd-products-wrapper');
		this.tableColumns = this.productsWrapper.children('.numer'+numer+' .cd-products-columns');
		this.products = this.tableColumns.children('.numer'+numer+' .product');
		this.productsNumber = this.products.length;
		this.productWidth = this.products.eq(0).width();
		this.productsTopInfo = this.table.find('.numer'+numer+' .top-info');
		this.featuresTopInfo = this.table.children('.numer'+numer+' .features').children('.top-info');
		this.topInfoHeight = this.featuresTopInfo.innerHeight() + 30;
		this.leftScrolling = false;
		this.odinakBtn = this.element.find('.filter_otlich.numer'+numer);
		this.filtering = false,
		this.selectedproductsNumber = 0;
		this.filterActive = false;
		this.navigation = this.table.children('.numer'+numer+' .cd-table-navigation');
		<?php } else { ?>
		this.element = element;
		this.table = this.element.children('.cd-products-table');
		this.tableHeight = this.table.height();
		this.productsWrapper = this.table.children('.cd-products-wrapper');
		this.tableColumns = this.productsWrapper.children('.cd-products-columns');
		this.products = this.tableColumns.children('.product');
		this.productsNumber = this.products.length;
		this.productWidth = this.products.eq(0).width();
		this.productsTopInfo = this.table.find('.top-info');
		this.featuresTopInfo = this.table.children('.features').children('.top-info');
		this.topInfoHeight = this.featuresTopInfo.innerHeight() + 30;
		this.leftScrolling = false;
		this.odinakBtn = this.element.find('.filter_otlich');
		this.filtering = false,
		this.selectedproductsNumber = 0;
		this.filterActive = false;
		this.navigation = this.table.children('.cd-table-navigation');
		<?php } ?>
		this.tableColumns.css('width', this.productWidth*this.productsNumber + 'px');
		if (this.productsNumber < 2) {
			this.odinakBtn.parent().addClass('hide');
		}
		if (this.productsNumber <= 3) {
			this.navigation.find('.next').addClass('inactive');
		}
		this.bindEvents();
	}
	productsTable.prototype.bindEvents = function() {
		var self = this;
		self.productsWrapper.on('scroll', function(){
			if(!self.leftScrolling) {
				self.leftScrolling = true;
				(!window.requestAnimationFrame) ? setTimeout(function(){self.updateLeftScrolling();}, 250) : window.requestAnimationFrame(function(){self.updateLeftScrolling();});
			}
		});
		<?php if ($cat_sort) { ?>
		self.odinakBtn.on('click', function(event){
			var chboxfilter = document.querySelector('.filter_otlich.numer'+numer);
			if (chboxfilter.checked) {
				self.odinakBtn.parent().addClass('active');
			} else {
				self.odinakBtn.parent().removeClass('active');
			}
			[].forEach.call(document.querySelectorAll('.numer'+numer+' .features li'),function(newtrnumber, knumber) {
				newtrnumber = document.querySelectorAll('.numer'+numer+' .cd-features-list li:nth-child('+(knumber+1)+')');
				var cfilter = newtrnumber[1].innerHTML,
					cfilter = chboxfilter.checked && [].every.call(newtrnumber, function(newtrnumber, chboxfilter) {
						return !chboxfilter || newtrnumber.innerHTML == cfilter
					}) ? 'add' : 'remove';
				[].forEach.call(newtrnumber, function(newtrnumber) {
					newtrnumber.classList[cfilter]('hide')
				})
			})
		});
		<?php } else { ?>
		self.odinakBtn.on('click', function(event){
			var chboxfilter = document.querySelector('.filter_otlich');
			if (chboxfilter.checked) {
				self.odinakBtn.parent().addClass('active');
			} else {
				self.odinakBtn.parent().removeClass('active');
			}
			[].forEach.call(document.querySelectorAll('.features li'),function(newtrnumber, knumber) {
				newtrnumber = document.querySelectorAll('.cd-features-list li:nth-child('+(knumber+1)+')');
				var cfilter = newtrnumber[1].innerHTML,
					cfilter = chboxfilter.checked && [].every.call(newtrnumber, function(newtrnumber, chboxfilter) {
						return !chboxfilter || newtrnumber.innerHTML == cfilter
					}) ? 'add' : 'remove';
				[].forEach.call(newtrnumber, function(newtrnumber) {
					newtrnumber.classList[cfilter]('hide')
				})
			})
		});
		<?php } ?>
		this.navigation.on('click', 'a', function(event){
			event.preventDefault();
			self.updateSlider( $(event.target).hasClass('next') );
		});
	}
	productsTable.prototype.updateLeftScrolling = function() {
		var totalTableWidth = parseInt(this.tableColumns.eq(0).outerWidth(true)),
			tableViewport = parseInt(this.element.width()),
			scrollLeft = this.productsWrapper.scrollLeft();
		( scrollLeft > 0 ) ? this.table.addClass('scrolling') : this.table.removeClass('scrolling');
		this.leftScrolling =  false;
		this.updateNavigationVisibility(scrollLeft);
	}
	productsTable.prototype.updateNavigationVisibility = function(scrollLeft) {
		( scrollLeft > 0 ) ? this.navigation.find('.prev').removeClass('inactive') : this.navigation.find('.prev').addClass('inactive');
		( scrollLeft < this.tableColumns.outerWidth(true) - this.productsWrapper.width() && this.tableColumns.outerWidth(true) > this.productsWrapper.width() ) ? this.navigation.find('.next').removeClass('inactive') : this.navigation.find('.next').addClass('inactive');
	}
	productsTable.prototype.updateTopScrolling = function(scrollTop) {
		this.updateLeftScrolling();
	}
	productsTable.prototype.updateProperties = function() {
		this.tableHeight = this.table.height();
		this.productWidth = this.products.eq(0).width();
		this.topInfoHeight = this.featuresTopInfo.innerHeight() + 30;
		this.tableColumns.css('width', this.productWidth*this.productsNumber + 'px');
	}
	productsTable.prototype.updateSlider = function(bool) {
		var scrollLeft = this.productsWrapper.scrollLeft();
		scrollLeft = ( bool ) ? scrollLeft + this.productWidth : scrollLeft - this.productWidth;
		if( scrollLeft < 0 ) scrollLeft = 0;
		if( scrollLeft > this.tableColumns.outerWidth(true) - this.productsWrapper.width() ) scrollLeft = this.tableColumns.outerWidth(true) - this.productsWrapper.width();
		this.productsWrapper.animate( {scrollLeft: scrollLeft}, 200 );
	}
	var comparisonTables = [];
	$('.cd-products-comparison-table').each(function(){
		comparisonTables.push(new productsTable($(this)));
	});
	var windowScrolling = false;
	$(window).on('scroll', function(){
		if(!windowScrolling) {
			windowScrolling = true;
			(!window.requestAnimationFrame) ? setTimeout(checkScrolling, 250) : window.requestAnimationFrame(checkScrolling);
		}
	});
	var windowResize = false;
	$(window).on('resize', function(){
		if(!windowResize) {
			windowResize = true;
			(!window.requestAnimationFrame) ? setTimeout(checkResize, 250) : window.requestAnimationFrame(checkResize);
		}
	});
	function checkScrolling(){
		var scrollTop = $(window).scrollTop();
		comparisonTables.forEach(function(element){
			element.updateTopScrolling(scrollTop);
		});
		windowScrolling = false;
	}
	function checkResize(){
		comparisonTables.forEach(function(element){
			element.updateProperties();
		});
		windowResize = false;
	}
	function checkMQ() {
		return window.getComputedStyle(comparisonTables[0].element.get(0), '::after').getPropertyValue('content').replace(/'/g, "").replace(/"/g, "");
	}
	function setTranformX(element, value) {
		element.css({
		    '-moz-transform': 'translateX(' + value + 'px)',
		    '-webkit-transform': 'translateX(' + value + 'px)',
			'-ms-transform': 'translateX(' + value + 'px)',
			'-o-transform': 'translateX(' + value + 'px)',
			'transform': 'translateX(' + value + 'px)'
		});
	}
}
$("#tabs_compare li a").click(function() {
	var numer = ($(this).attr('numer'));
	tabcompare(numer);
	window.setTimeout(podgon_table,0);
})
//--></script> 
<?php } ?>
<?php echo $content_bottom; ?></div>
<?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('#tabs_compare li').first().addClass('active');
$('.tab-pane').first().addClass('active');
var tr3 = jQuery(".compare-info tr.attribtr");
tr3.each(function() {
	var td3 = jQuery("td.attribtd", this),
		len = td3.length,
		text = td3.eq(0).text();
	td3 = td3.filter(function() {
		return jQuery(this).text() == ""
	}).length;
	jQuery(this).toggleClass("deletetr", len == td3)
})
function max_height_div(div) {
	var maxheight = 0;
	$(div).each(function(){
		$(this).removeAttr('style');
		if($(this).height() > maxheight) {
			maxheight = $(this).height();
		}
	});
	$(div).height(maxheight);
}
//--></script> 
<?php echo $footer; ?>