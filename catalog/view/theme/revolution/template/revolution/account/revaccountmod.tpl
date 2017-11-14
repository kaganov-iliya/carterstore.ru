<div class="list-group">
	<?php if (!$logged) { ?>
		<a href="<?php echo $login; ?>" class="list-group-item"><?php echo $text_login; ?></a>
		<a href="<?php echo $register; ?>" class="list-group-item"><?php echo $text_register; ?></a>
		<a href="<?php echo $forgotten; ?>" class="list-group-item"><?php echo $text_forgotten; ?></a>
	<?php } ?>
	<?php if ($logged) { ?>
		<a href="<?php echo $edit; ?>" class="list-group-item"><?php echo $text_edit; ?></a>
		<?php if ($settings['revaccount_wishlist']) { ?>
			<a href="<?php echo $wishlist; ?>" class="list-group-item"><?php echo $text_wishlist; ?></a>
		<?php } ?>
		<?php if ($settings['revaccount_orders']) { ?>
			<a href="<?php echo $order; ?>" class="list-group-item"><?php echo $text_order; ?></a>
		<?php } ?>
		<?php if ($settings['revaccount_files']) { ?>
			<a href="<?php echo $download; ?>" class="list-group-item"><?php echo $text_download; ?></a>
		<?php } ?>
		<?php if ($settings['revaccount_bonus']) { ?>
			<a href="<?php echo $reward; ?>" class="list-group-item"><?php echo $text_reward; ?></a>
		<?php } ?>
		<?php if ($settings['revaccount_returns']) { ?>
			<a href="<?php echo $return; ?>" class="list-group-item"><?php echo $text_return; ?></a>
		<?php } ?>
		<?php if ($settings['revaccount_pay_history']) { ?>
			<a href="<?php echo $transaction; ?>" class="list-group-item"><?php echo $text_transaction; ?></a>
		<?php } ?>
		<?php if ($settings['revaccount_pay_regular']) { ?>
			<a href="<?php echo $recurring; ?>" class="list-group-item"><?php echo $text_recurring; ?></a>
		<?php } ?>
		<a href="<?php echo $logout; ?>" class="list-group-item"><?php echo $text_logout; ?></a>
	<?php } ?>
</div>