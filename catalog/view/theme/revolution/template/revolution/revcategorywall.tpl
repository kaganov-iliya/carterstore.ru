<?php if ($heading_title) { ?>
<div class="rev_slider <?php if (!$setting['mobi_status']) { echo 'hidden-sm'; } ?>">
<div class="heading_h"><h3><?php echo $heading_title; ?></h3></div>
<?php } else { ?>
<div class="rev_slider_2 <?php if (!$setting['mobi_status']) { echo 'hidden-sm'; } ?>">
<?php } ?>
	<div class="row home_catwalls">
		<?php if ($setting['group_manufs'] && $setting['categories'] != 0) { ?>
			<ul class="ul_block_home_catwalls">
				<?php foreach ($categories as $category) { ?>
					<li class="glavli">
						<div class="col-sm-12">
							<?php if ($setting['group_manufs_simbol']) { ?>
							<h3 id="<?php echo $category['name']; ?>"><?php echo $category['name']; ?></h3>
							<?php } ?>
							<div class="clearfix">
								<?php if ($category['manufacturer']) { ?>
									<?php foreach (array_chunk($category['manufacturer'], 4) as $manufacturers) { ?>
										<?php foreach ($manufacturers as $manufacturer) { ?>
										<h4><a style="text-decoration: none" href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></h4>
										<?php } ?>
									<?php } ?>
								<?php } ?>
							</div>
						</div>
					</li>
				<?php } ?>
				<?php if ($setting['group_manufs_link_href'] != '' && $setting['group_manufs_link'] != '') { ?>
					<li class="glavli">
						<h4 class="home_catwalls_all_href"><a style="text-decoration: none" href="<?php echo $setting['group_manufs_link_href']; ?>"><?php echo $group_manufs_link; ?> </a></h4>
					</li>
				<?php } ?>
			</ul>
		<?php } else if ($setting['group_manufs'] && $setting['categories'] == 0) { ?>
			<ul class="ul_block_home_catwalls">
				<?php foreach ($categories as $category) { ?>
					<li class="glavli">
						<div class="col-sm-12">
							<div class="clearfix">
								<h4 class="corencats"><a style="text-decoration: none" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h4>
								<?php if ($category['children']) { ?>	
									<?php foreach ($category['children'] as $child) { ?>
										<div>
											<a class="home_catwalls_podcat" href="<?php echo $child['href']; ?>">- <?php echo $child['name']; ?></a>
										</div>
									<?php } ?>
								<?php } ?>
							</div>
						</div>
					</li>
				<?php } ?>
				<?php if ($setting['group_manufs_link_href'] != '' && $setting['group_manufs_link'] != '') { ?>
					<li class="glavli">
						<h4 class="home_catwalls_all_href corencats"><a style="text-decoration: none" href="<?php echo $setting['group_manufs_link_href']; ?>"><?php echo $group_manufs_link; ?> </a></h4>
					</li>
				<?php } ?>
			</ul>
		<?php } else { ?>
			<?php foreach ($categories as $category) { ?>
				<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">
					<div class="product-thumb transition">
						<div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['image']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" /></a></div>
						<div class="caption clearfix">
							<h4><a style="text-decoration: none" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h4>
						</div> 
					</div>
				</div>
			<?php } ?>
		<?php } ?>
	</div>
</div>
<script type="text/javascript"><!--
var div = '.home_catwalls .caption';
var maxheight = 0;$(div).each(function(){$(this).removeAttr('style');if($(this).height() > maxheight) {maxheight = $(this).height();}});$(div).height(maxheight);

<?php if ($setting['group_manufs']) { ?>
	!function(n){var a={columns:4,classname:"column",min:1};n.fn.autocolumnlist=function(l){var s=n.extend({},a,l);return this.each(function(){var a=n(this).data();a&&n.each(a,function(n,a){s[n]=a});var l=n(this).find("> li"),c=l.length;if(c>0){var t=Math.ceil(c/s.columns);t<s.min&&(t=s.min);var e=0,u=t;for(i=0;i<s.columns;i++)i+1==s.columns?l.slice(e,u).wrapAll('<div class="'+s.classname+' last" />'):l.slice(e,u).wrapAll('<div class="'+s.classname+'" />'),e+=t,u+=t}})}}(jQuery);
	
var product_grid_width = $('.product-layout .product-thumb').outerWidth();
if ($(window).width() < 991) {
	$('.ul_block_home_catwalls').autocolumnlist({
		columns: 3,
		min: 1
	});
} else {
	$('.ul_block_home_catwalls').autocolumnlist({
		columns: 4,
		min: 1
	});
}	
<?php } ?>
//--></script>
<?php if ($setting['group_manufs'] && !$setting['group_manufs_simbol']) { ?>
<style>
.ul_block_home_catwalls h4 {
padding-left: 0;
}
.ul_block_home_catwalls h4.home_catwalls_all_href {
padding-left: 15px;
}
</style>
<?php } ?>