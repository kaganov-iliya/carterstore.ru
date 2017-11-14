<?php if ($heading_title) { ?>
<div class="rev_slider rev_blog_mod">
<?php } else { ?>
<div class="rev_slider_2 rev_blog_mod">
<?php } ?>
	<div class="heading_h"><h3><?php echo $heading_title; ?></h3></div>
	<div class="row">
		<div id="blog_mod" class="inhomeblogmod">
			<?php foreach ($blogs as $blog) { ?>
			<div class="product-layout col-lg-12">
				<div class="blog-list vertical-sreview transition">
					<div class="caption review-caption">
						<?php if ($image_status) { ?>
							<div class="image">
								<a href="<?php echo $blog['href']; ?>"><img class="img-responsive" src="<?php echo $blog['thumb']; ?>" alt="<?php echo $blog['title']; ?>" title="<?php echo $blog['title']; ?>" /></a>
							</div>
						<?php } ?>
						<div class="opisb">
						<h4><a href="<?php echo $blog['href']; ?>"><?php echo $blog['title']; ?></a></h4>
						<p><i class="fa fa-clock-o"></i><?php echo $blog['data_added']; ?></p>
						</div>
						<?php if ($blog['description'] != '..') { ?>
						<div class="description"><?php echo $blog['description']; ?></div>
						<?php } ?>
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
	<script type="text/javascript"><!--
		$("#blog_mod.inhomeblogmod").owlCarousel({
			responsiveBaseWidth: '#blog_mod',
			<?php if ($revtheme_home_blog['count_r']) { ?>
			itemsCustom: [[0, 1], [750, 2], [970, 3], [1170, 3]],
			<?php } else { ?>
			itemsCustom: [[0, 2], [750, 2], [970, 4], [1170, 4]],
			<?php } ?>
			mouseDrag: true,
			touchDrag: true,
			navigation: true,
			navigationText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
			<?php if (!$heading_title) { ?>
			pagination: false
			<?php } ?>
		});
		max_height_div('#blog_mod.inhomeblogmod h4');
	//--></script>
</div>