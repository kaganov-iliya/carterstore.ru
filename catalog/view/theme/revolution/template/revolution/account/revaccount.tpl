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
		<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
	<?php } ?>
    <div class="row"><?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
			<?php if ($settings['revaccount_allurls']) { ?>
				<div class="row">
					<ul class="list-unstyled revaccblocks">
						<li class="col-lg-2 col-md-3 col-sm-4 col-xs-6"><a href="<?php echo $edit; ?>"><i class="fa fa-user"></i><?php echo $text_edit; ?></a></li>
						<?php if ($settings['revaccount_wishlist']) { ?>
							<li class="col-lg-2 col-md-3 col-sm-4 col-xs-6"><a href="<?php echo $wishlist; ?>"><i class="fa fa-heart"></i><?php echo $text_wishlist; ?></a></li>
						<?php } ?>
						<?php if ($settings['revaccount_orders']) { ?>
							<li class="col-lg-2 col-md-3 col-sm-4 col-xs-6"><a href="<?php echo $order; ?>"><i class="fa fa-shopping-basket"></i><?php echo $text_order; ?></a></li>
						<?php } ?>
						<?php if ($settings['revaccount_files']) { ?>
							<li class="col-lg-2 col-md-3 col-sm-4 col-xs-6"><a href="<?php echo $download; ?>"><i class="fa fa-cloud-download"></i><?php echo $text_download; ?></a></li>
						<?php } ?>
						<?php if ($settings['revaccount_bonus']) { ?>
							<?php if ($reward) { ?>
								<li class="col-lg-2 col-md-3 col-sm-4 col-xs-6"><a href="<?php echo $reward; ?>"><i class="fa fa-star"></i><?php echo $text_reward; ?></a></li>
							<?php } ?>
						<?php } ?>
						<?php if ($settings['revaccount_returns']) { ?>
							<li class="col-lg-2 col-md-3 col-sm-4 col-xs-6"><a href="<?php echo $return; ?>"><i class="fa fa-refresh"></i><?php echo $text_return; ?></a></li>
						<?php } ?>
						<?php if ($settings['revaccount_pay_history']) { ?>
							<li class="col-lg-2 col-md-3 col-sm-4 col-xs-6"><a href="<?php echo $transaction; ?>"><i class="fa fa-history"></i><?php echo $text_transaction; ?></a></li>
						<?php } ?>
						<?php if ($settings['revaccount_pay_regular']) { ?>
							<li class="col-lg-2 col-md-3 col-sm-4 col-xs-6"><a href="<?php echo $recurring; ?>"><i class="fa fa-credit-card"></i><?php echo $text_recurring; ?></a></li>
						<?php } ?>
					</ul>
				</div>
			<?php } ?>
			<?php if (strlen($descript) > 30) { ?>
				<?php if ($settings['revaccount_allurls']) { ?><br><?php } ?>
				<?php echo html_entity_decode($descript, ENT_QUOTES, 'UTF-8'); ?>
			<?php } ?>
			<?php echo $content_bottom; ?>
		</div>
		<?php echo $column_right; ?>
	</div>
</div>
<script type="text/javascript"><!--
var div = '.revaccblocks a';
var maxheight = 0;$(div).each(function(){$(this).removeAttr('style');if($(this).height() > maxheight) {maxheight = $(this).height();}});$(div).height(maxheight);
//--></script>
<?php echo $footer; ?>