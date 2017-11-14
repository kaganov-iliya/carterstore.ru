<?php if($heading_title) { ?>
<div class="rev_slider">
<?php } else { ?>
<div class="rev_slider_2">
<?php } ?>
  <?php if($heading_title) { ?>
	<div class="heading_h"><h3><?php echo $heading_title; ?></h3></div>
  <?php } ?>
  <?php echo $html; ?>
</div>
