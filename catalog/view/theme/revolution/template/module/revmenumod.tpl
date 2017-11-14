<div class="list-group hidden-md hidden-lg">
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>
  <?php } ?>
  <?php } ?>
</div>
<div id="menu2_button" class="ammodul hidden-xs hidden-sm">
<div class="box-heading"><?php echo $heading_title; ?></div>
<div class="box-content am">
<div id="menu2">
<div class="podmenu2"></div>
<div class="catalog_list catalog_list_popup catalog_as_popup">
<?php if ($revtheme_dop_menus) { ?>
	<?php foreach ($revtheme_dop_menus as $revtheme_dop_menu) { ?>
		<div class="revlevel_1 hasChildren closed menu2dopmenu">
			<?php if (isset($revtheme_dop_menu['children'])) { ?>
				<div class="title with-child">
				<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>">
				<?php if ($revtheme_dop_menu['icontype'] == 'iconka') { echo '<i class="am_category_icon '.$revtheme_dop_menu['dop_menu_iconka'].'"></i>'; } else { if ($revtheme_dop_menu['dop_menu_image']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image'].'" alt=""><span class="mask"></span></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?>
				<span class="arrow-btn"><i class="fa fa-angle-right"></i></span>
				</a>
				</div>
			<?php } else { ?>
				<div class="title">
				<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka') { echo '<i class="am_category_icon '.$revtheme_dop_menu['dop_menu_iconka'].'"></i>'; } else { if ($revtheme_dop_menu['dop_menu_image']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image'].'" alt=""><span class="mask"></span></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?></a>
				</div>
			<?php } ?>
			<?php if (isset($revtheme_dop_menu['children'])) { ?>
				<div class="childrenList">
					<?php if ($revtheme_dop_menu['column'] == 1) {
						$box_class = 'box-col-1'; $col_class = 'col-1'; $image_in_ico_class = 'col-sm-12 col-lg-6';
					} else if ($revtheme_dop_menu['column'] == 2) {
						$box_class = 'box-col-2'; $col_class = 'col-2'; $image_in_ico_class = 'col-sm-4 col-lg-3';
					} else if ($revtheme_dop_menu['column'] == 3) {
						$box_class = 'box-col-3'; $col_class = 'col-3'; $image_in_ico_class = 'col-sm-3 col-lg-2';
					} else {
						$box_class = 'box-col-4'; $col_class = 'col-4'; $image_in_ico_class = 'col-sm-12 col-lg-6';
					} ?>
					<div class="child-box <?php echo $box_class; ?>">
						<?php if ($image_in_ico) { ?>
							<div class="image_in_ico_dop_<?php echo $revtheme_dop_menu['id']; ?> refine_categories clearfix">
								<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
									<a class="<?php echo $image_in_ico_class; ?>" href="<?php echo $child['href'.$config_language_id]; ?>">
										<img src="<?php echo $child['dop_menu_image']; ?>" alt="<?php echo $child['name'.$config_language_id]; ?>" /><span><?php echo $child['name'.$config_language_id]; ?></span>
									</a>
								<?php } ?>
							</div>
						<?php } else { ?>
							<ul class="ul_block<?php echo $revtheme_dop_menu['id']; ?> cat_dop <?php echo $col_class; ?>">
							<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
								<li class="glavli"><a href="<?php echo $child['href'.$config_language_id]; ?>"><?php if ($child['icontype'] == 'iconka') { echo '<i class="am_category_icon '.$child['dop_menu_iconka'].'"></i>'; } else { if ($child['dop_menu_image']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image'].'" alt=""><span class="mask"></span></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?></a>
									<?php if ($tri_level && isset($child['children'])) { ?>
									<ul class="lastul">
										<?php $i_count = 0; foreach ($child['children'] as $child2) { ?>
											<?php  if ($setting_revtheme_header_menu['ogranich']) { if ($i_count++ == $setting_revtheme_header_menu['ogranich_count']) break; } if ($child2['id'] == $child2_id) { ?>
												<li class="category-<?php echo $child2['id']; ?> active"><a href="<?php echo $child2['href'.$config_language_id]; ?>" class="active"><i class="fa fa-minus"></i><?php echo $child2['name'.$config_language_id]; ?></a></li>
											<?php } else { ?>
												<li class="category-<?php echo $child2['id']; ?>"><a href="<?php echo $child2['href'.$config_language_id]; ?>"><i class="fa fa-minus"></i><?php echo $child2['name'.$config_language_id]; ?></a></li>
											<?php } ?>
										<?php } ?>
										<?php if ($setting_revtheme_header_menu['ogranich']) { ?>
											<?php $child_count = count($child['children']); array_splice($child['children'], 0, $setting_revtheme_header_menu['ogranich_count']); foreach ($child['children'] as $child2) { ?>
												<?php if ($child2['id'] == $child2_id) { ?>
													<li class="category-<?php echo $child2['id']; ?> active categoryoff"><a href="<?php echo $child2['href'.$config_language_id]; ?>" class="active"><i class="fa fa-minus"></i><?php echo $child2['name'.$config_language_id]; ?></a></li>
												<?php } else { ?>
													<li class="category-<?php echo $child2['id']; ?> categoryoff"><a href="<?php echo $child2['href'.$config_language_id]; ?>"><i class="fa fa-minus"></i><?php echo $child2['name'.$config_language_id]; ?></a></li>
												<?php } ?>
											<?php } ?>
											<?php if ($child_count > $setting_revtheme_header_menu['ogranich_count']) { ?>
												<span class="show_categoryoff show_coff"><?php echo $text_show_all; ?></span>
											<?php } ?>
										<?php } ?>
									</ul>
									<?php } ?>
								</li>
								<?php } ?>
							</ul>
						<?php } ?>
					</div>
				</div>
				<?php } ?>
		</div>
	<?php } ?>
<?php } ?>
<?php if ($cats_status) { ?>
	<?php foreach ($categories as $category) { ?>  
		<div class="revlevel_1 hasChildren closed menu2categories">
			<?php if ($category['children']) { ?>
				<div class="title with-child">
				<a href="<?php echo $category['href']; ?>">
				<?php if ($category['category_image']) { echo $category['category_image']; } ?><?php echo $category['name']; ?>
				<span class="arrow-btn"><i class="fa fa-angle-right"></i></span>
				</a>
				</div>
			<?php } else { ?>
				<div class="title">
				<a href="<?php echo $category['href']; ?>"><?php if ($category['category_image']) { echo $category['category_image']; } ?><?php echo $category['name']; ?></a>
				</div>
			<?php } ?>
			<?php if ($category['children']) { ?>	
			<div class="childrenList">
				<?php if ($category['column'] == 1) {
					$box_class = 'box-col-1'; $col_class = 'col-1'; $image_in_ico_class = 'col-sm-12 col-lg-6';
				} else if ($category['column'] == 2) {
					$box_class = 'box-col-2'; $col_class = 'col-2'; $image_in_ico_class = 'col-sm-4 col-lg-3';
				} else if ($category['column'] == 3) {
					$box_class = 'box-col-3'; $col_class = 'col-3'; $image_in_ico_class = 'col-sm-3 col-lg-2';
				} else {
					$box_class = 'box-col-4'; $col_class = 'col-4'; $image_in_ico_class = 'col-sm-12 col-lg-6';
				} ?>
				<div class="child-box <?php echo $box_class; ?>">
				<?php if ($image_in_ico) { ?>
					<div class="image_in_ico_<?php echo $category['category_id']; ?> refine_categories clearfix">
						<?php foreach ($category['children'] as $child) { ?>
							<a class="<?php echo $image_in_ico_class; ?>" href="<?php echo $child['href']; ?>">
								<img src="<?php echo $child['thumb']; ?>" alt="<?php echo $child['name']; ?>" /><span><?php echo $child['name']; ?></span>
							</a>
						<?php } ?>
					</div>
				<?php } else { ?>
					<ul class="ul_block<?php echo $category['category_id']; ?> <?php echo $col_class; ?>">
					<?php foreach ($category['children'] as $child) { ?>
						<li class="glavli"><a href="<?php echo $child['href']; ?>"><?php if ($child['category_image']) { echo $child['category_image']; } ?><?php echo $child['name']; ?></a>
							<?php if ($tri_level && $child['children']) { ?>
							<ul class="lastul">
								<?php $i_count = 0; foreach ($child['children'] as $child2) { ?>
									<?php  if ($setting_revtheme_header_menu['ogranich']) { if ($i_count++ == $setting_revtheme_header_menu['ogranich_count']) break; } if ($child2['category_id'] == $child2_id) { ?>
										<li class="category-<?php echo $child2['category_id']; ?> active"><a href="<?php echo $child2['href']; ?>" class="active"><i class="fa fa-minus"></i><?php echo $child2['name']; ?></a></li>
									<?php } else { ?>
										<li class="category-<?php echo $child2['category_id']; ?>"><a href="<?php echo $child2['href']; ?>"><i class="fa fa-minus"></i><?php echo $child2['name']; ?></a></li>
									<?php } ?>
								<?php } ?>
								<?php if ($setting_revtheme_header_menu['ogranich']) { ?>
									<?php $child_count = count($child['children']); array_splice($child['children'], 0, $setting_revtheme_header_menu['ogranich_count']); foreach ($child['children'] as $child2) { ?>
										<?php if ($child2['category_id'] == $child2_id) { ?>
											<li class="category-<?php echo $child2['category_id']; ?> active categoryoff"><a href="<?php echo $child2['href']; ?>" class="active"><i class="fa fa-minus"></i><?php echo $child2['name']; ?></a></li>
										<?php } else { ?>
											<li class="category-<?php echo $child2['category_id']; ?> categoryoff"><a href="<?php echo $child2['href']; ?>"><i class="fa fa-minus"></i><?php echo $child2['name']; ?></a></li>
										<?php } ?>
									<?php } ?>
									<?php if ($child_count > $setting_revtheme_header_menu['ogranich_count']) { ?>
										<span class="show_categoryoff show_coff"><?php echo $text_show_all; ?></span>
									<?php } ?>
								<?php } ?>
							</ul>
							<?php } ?>
						</li>
						<?php } ?>
					</ul>
				<?php } ?>
				<?php if ($category['thumb2']) { ?>
					<img class="img_sub" src="<?php echo $category['thumb2']; ?>" alt="<?php echo $category['name']; ?>" />	
				<?php } ?>
				</div>
			</div>
			<?php } ?>
		</div>		
	<?php } ?>
<?php } ?>
<?php if ($manuf_status) { ?>
	<?php if ($categories_m) { ?>
	<div class="revlevel_1 hasChildren closed i_rhml_manufs">
		<div class="title with-child">
		<a href="<?php echo $url_revmenu_manufs; ?>"><?php if ($manuf_image) { echo $manuf_image; } ?><?php echo $text_revmenu_manufs; ?><span class="arrow-btn"><i class="fa fa-angle-right"></i></span></a>
		</div>
		<div class="childrenList">
			<?php if ($n_column == 1) {
				$box_class_m = 'box-col-1'; $col_class_m = 'col-1'; $image_in_ico_class = 'col-sm-12 col-lg-6';
			} else if ($n_column == 2) {
				$box_class_m = 'box-col-2'; $col_class_m = 'col-2'; $image_in_ico_class = 'col-sm-4 col-lg-3';
			} else if ($n_column == 3) {
				$box_class_m = 'box-col-3'; $col_class_m = 'col-3'; $image_in_ico_class = 'col-sm-3 col-lg-2';
			} else {
				$box_class_m = 'box-col-4'; $col_class_m = 'col-4'; $image_in_ico_class = 'col-sm-12 col-lg-6';
			} ?>
			<div class="child-box <?php echo $box_class_m; ?>">
				<?php if ($image_in_ico_m) { ?>
					<div class="image_in_ico_manufacturers refine_categories clearfix">
						<?php foreach (array_chunk($categories_m, ceil(count($categories_m) / $n_column)) as $categorys) { ?>
							<?php foreach ($categorys as $category) { ?>
								<?php if ($category['manufacturer']) { ?>
									<?php foreach ($category['manufacturer'] as $manufacturers) { ?>
										<a class="<?php echo $image_in_ico_class; ?>" href="<?php echo $manufacturers['href']; ?>">
											<img src="<?php echo $manufacturers['thumb']; ?>" title="<?php echo $manufacturers['name']; ?>" alt="<?php echo $manufacturers['name']; ?>" /><span><?php echo $manufacturers['name']; ?></span>
										</a>
									<?php } ?>
								<?php } ?>
							<?php } ?>
						<?php } ?>
					</div>
				<?php } else { ?>	
					<ul class="ul_block cat_m <?php echo $col_class_m; ?>">
						<?php foreach ($categories_m as $category) { ?>
							<li class="glavli"><?php echo $category['name']; ?>
								<ul class="lastul">
									<?php foreach ($category['manufacturer'] as $manufacturers) { ?>
									  <li class="category"><a href="<?php echo $manufacturers['href']; ?>"><i class="fa fa-minus"></i><?php echo $manufacturers['name']; ?></a></li>
									<?php } ?>	
								</ul>
							</li>
						<?php } ?>
					</ul>
				<?php } ?>
			</div>		
		</div>
	</div>
	<?php } ?>
<?php } ?>
<?php if ($revtheme_header_menu_links) { ?>
	<?php $i_rhml = 1; foreach ($revtheme_header_menu_links as $revtheme_header_menu_link) { ?>
		<div class="revlevel_1 hasChildren closed i_rhml_<?php echo $i_rhml; ?>">
			<div class="title">
				<a href="<?php echo $revtheme_header_menu_link['link']; ?>"><?php if ($revtheme_header_menu_link['image']) { echo $revtheme_header_menu_link['image']; } ?><?php echo $revtheme_header_menu_link['title']; ?></a>
			</div>
		</div>	
	<?php $i_rhml++; } ?>
<?php } ?>
</div>
</div>
</div>
</div>
<script type="text/javascript"><!--
<?php if ($setting_revtheme_header_menu['ogranich']) { ?>
var container_lastul = $("#menu2");
container_lastul.find(".show_categoryoff").each(function () {
	$(this).on('click', function () {
		if ($(this).hasClass("show_coff")){
			$(this).removeClass("show_coff");
			$(this).parent(".lastul").find(".categoryoff").show();
			$(this).html('<?php echo $text_hide_all; ?>');
		} else {
			$(this).addClass("show_coff");
			$(this).parent(".lastul").find(".categoryoff").hide();
			$(this).html('<?php echo $text_show_all; ?>');
		}
		var m2inh = $('.revlevel_1.open .childrenList').outerHeight();
		$('#menu2 .podmenu2').css('height', m2inh);
	});
});
<?php } ?>
<?php if ($cats_status) { ?>
	function autocol_cats(cat_id, cat_col) {
		$('.ul_block'+cat_id).autocolumnlist({  
			columns: cat_col,
			min: 1
		});
	}
	<?php foreach ($categories as $category) { ?>
		autocol_cats(<?php echo $category['category_id']; ?>, <?php echo $category['column']; ?>);
	<?php } ?>
<?php } ?>
<?php if ($revtheme_dop_menus) { ?>
	function autocol_dop_menus(dop_menu_id, cat_col) {
		$('.ul_block'+dop_menu_id+'.cat_dop').autocolumnlist({  
			columns: cat_col,
			min: 1
		});
	}
	<?php foreach ($revtheme_dop_menus as $revtheme_dop_menu) { ?>
		autocol_dop_menus(<?php echo $revtheme_dop_menu['id']; ?>, <?php echo $revtheme_dop_menu['column']; ?>);
	<?php } ?>
<?php } ?>
<?php if ($manuf_status) { ?>
	<?php if ($categories_m) { ?>
		$('.ul_block.cat_m').autocolumnlist({  
			columns: <?php echo $n_column; ?>,
			min: 1
		});
	<?php } ?>
<?php } ?>		
<?php if ($image_in_ico) { ?>
	$('#menu2').css('display', 'block');
	<?php if ($cats_status) { ?>
		<?php foreach ($categories as $category) { ?>
			<?php if ($category['children']) { ?>	
				var div = '.childrenList .image_in_ico_<?php echo $category['category_id']; ?>.refine_categories span';
				var maxheight = 0;
				$(div).each(function(){
					$(this).removeAttr('style');
					if($(this).height() > maxheight) {
						maxheight = $(this).height();
					}
				});
				$(div).height(maxheight);
			<?php } ?>
		<?php } ?>
	<?php } ?>
	<?php if ($revtheme_dop_menus) { ?>
		<?php foreach ($revtheme_dop_menus as $revtheme_dop_menu) { ?>
			<?php if (isset($revtheme_dop_menu['children'])) { ?>
				var div1 = '.childrenList .image_in_ico_dop_<?php echo $revtheme_dop_menu['id']; ?>.refine_categories span';
				var maxheight = 0;
				$(div1).each(function(){
					$(this).removeAttr('style');
					if($(this).height() > maxheight) {
						maxheight = $(this).height();
					}
				});
				$(div1).height(maxheight);
			<?php } ?>
		<?php } ?>
	<?php } ?>
	<?php if ($manuf_status) { ?>
		var div2 = '.image_in_ico_manufacturers.refine_categories > a > span';
		var maxheight = 0;
		$(div2).each(function(){
			$(this).removeAttr('style');
			if($(this).height() > maxheight) {
				maxheight = $(this).height();
			}
		});
		$(div2).height(maxheight);
	<?php } ?>
	$('#menu2').css('display', '');
<?php } ?>
//--></script>