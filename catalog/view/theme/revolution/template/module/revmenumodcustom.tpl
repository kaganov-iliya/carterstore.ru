<?php if ($revtheme_dop_menus) { ?>
	<!--noindex-->
	<div class = "panel panel-default revmenumodcustom">
		<?php if ($revtheme_dop_menu_title != '') { ?>
			<div class ="panel-heading"><?php echo $revtheme_dop_menu_title; ?></div>
		<?php } ?>
		<div class="list-group">
			<?php foreach ($revtheme_dop_menus as $revtheme_dop_menu) { ?>
				<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>" rel="nofollow" class="list-group-item"><?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka']) { echo '<i class="'.$revtheme_dop_menu['dop_menu_iconka'].'"></i>'; } else { if ($revtheme_dop_menu['dop_menu_image']) { echo '<span><img src="'.$revtheme_dop_menu['dop_menu_image'].'" alt=""><span class="mask"></span></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?><?php if (isset($revtheme_dop_menu['children'])) { ?><span class="chevrond" data-toggle="collapse"><i class="fa fa-plus on"></i><i class="fa fa-minus off"></i></span><?php } ?></a>
				<?php if (isset($revtheme_dop_menu['children'])) { ?>
					<div class="collapse list-group-submenu">
						<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
							<a href="<?php echo $child['href'.$config_language_id]; ?>" rel="nofollow" class="list-group-item">&nbsp;&nbsp;&nbsp;<?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka']) { echo '<i class="'.$child['dop_menu_iconka'].'"></i>'; } else { if ($child['dop_menu_image']) { echo '<span><img src="'.$child['dop_menu_image'].'" alt=""><span class="mask"></span></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?><?php if (isset($revtheme_dop_menu['children'])) { ?><span class="chevrond" data-toggle="collapse"><i class="fa fa-plus on"></i><i class="fa fa-minus off"></i></span><?php } ?></a>
							<?php if (isset($child['children'])) { ?>
								<div class="collapse list-group-submenu">
									<?php foreach ($child['children'] as $child2) { ?>
										<a href="<?php echo $child2['href'.$config_language_id]; ?>" rel="nofollow" class="list-group-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php if ($child2['icontype'] == 'iconka' && $child2['dop_menu_iconka']) { echo '<i class="'.$child2['dop_menu_iconka'].'"></i>'; } else { if ($child2['dop_menu_image']) { echo '<span><img src="'.$child2['dop_menu_image'].'" alt=""><span class="mask"></span></span>'; } } ?><?php echo $child2['name'.$config_language_id]; ?></a>
									<?php } ?>
								</div>
							<?php } ?>
						<?php } ?>
					</div>
				<?php } ?>
			<?php } ?>
		</div>
	</div>
	<!--/noindex-->
	<script type="text/javascript"><!--
	$(".revmenumodcustom .chevrond").click(function () {
		$(this).siblings(".collapsible").toggle();
		$(this).toggleClass("hided");
		$(this).parent().next().toggleClass("in");
	});
	$(function() {
		var url_w = window.location.href.substr(window.location.href.lastIndexOf( '/' ) + 1);
		$('.revmenumodcustom a').each(function() {
			if($(this).attr('href') === url_w && $(this).attr('href') != '') {
				$(this).addClass('active');
			}
		});
	});
	--></script>
<?php } ?>
