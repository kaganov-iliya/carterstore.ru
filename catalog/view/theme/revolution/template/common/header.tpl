<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="iexpl"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="iexpl"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="<?php echo $class; ?> <?php echo $opacity_cont_class; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<meta property="og:image" content="<?php echo !empty($og_image) ? $og_image : $logo; ?>" />
<meta property="og:site_name" content="<?php echo $name; ?>" />
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/revolution/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/revolution/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/javascript/revolution/nprogress.css" rel="stylesheet">
<link href="catalog/view/javascript/revolution/jasny-bootstrap.min.css" rel="stylesheet">
<link href="catalog/view/javascript/revolution/magnific-popup.css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/revolution/owl-carousel/owl.carousel.css" type="text/css" rel="stylesheet" media="screen">
<link href="catalog/view/theme/revolution/stylesheet/stylesheet_change.css" rel="stylesheet">
<style>
<?php if ($revtheme_header_popupphone['under_phone'] && !$dop_contacts) { ?>
#top2 .tel .s22:hover {cursor: default !important;}
<?php if ($header_phone_text != '' && $header_phone_text2 == '') { ?>
#top2 .tel .header_phone_image {vertical-align: top; padding-top: 15px;}
<?php } else if ($header_phone_text != '' && $header_phone_text2 != '') { ?>
#top2 .tel .header_phone_image {vertical-align: top; padding-top: 30px;}
<?php } else { ?>
#top2 .tel .header_phone_image {vertical-align: top; padding-top: 0;}
<?php } ?>
<?php } ?>
<?php if ($header_phone_text != '' && $header_phone_text2 == '') { ?>
#top2 .search {margin-top: 22px;}
#top2 #logo {margin-top: 8px;}
<?php } else if ($header_phone_text != '' && $header_phone_text2 != '') { ?>
#top2 .search {margin-top: 35px;}
#top2 #logo {margin-top: 20px;}
<?php } ?>
<?php if ($config_customer_price) { ?>
.zatemnenie_img {-webkit-filter: initial; filter: initial; opacity: 1;}
<?php } ?>
</style>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<script type="text/javascript"><!--
function max_height_div(div){var maxheight = 0;$(div).each(function(){$(this).removeAttr('style');if($(this).height() > maxheight){maxheight = $(this).height();}});$(div).height(maxheight);}
//--></script>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body>
<?php if ($microdata_status) { ?>
	<div itemscope itemtype="http://schema.org/Organization" style="display:none;">
		<meta itemprop="name" content="<?php echo $name; ?>" />
		<link itemprop="url" href="<?php echo $og_url; ?>" />
		<link itemprop="logo" href="<?php echo $logo; ?>" />
		<?php if($description) { ?>
			<meta itemprop="description" content="<?php echo $description; ?>" />
		<?php } ?>
		<?php if ($microdata_postcode && $microdata_city && $microdata_adress) { ?>
			<div itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
				<meta itemprop="postalCode" content="<?php echo $microdata_postcode; ?>" />
				<meta itemprop="addressLocality" content="<?php echo $microdata_city; ?>" />
				<meta itemprop="streetAddress" content="<?php echo $microdata_adress; ?>" />
			</div>
		<?php } ?>
		<?php if ($microdata_phones){ ?>
			<?php foreach($microdata_phones as $microdata_phone){ ?>
				<meta itemprop="telephone" content="<?php echo $microdata_phone; ?>" />
			<?php } ?>
		<?php } ?>
		<meta itemprop="email" content="<?php echo $microdata_email; ?>" />	
		<?php if ($microdata_social){ ?>
		<?php foreach($microdata_social as $microdata_soc){ ?>
		<link itemprop="sameAs" href="<?php echo $microdata_soc; ?>" />
		<?php } ?>
		<?php } ?>
	</div>
<?php } ?>
<?php if ($setting_all_settings['zatemn_cont']) { ?>
<div id="pagefader"></div>
<?php } ?>
<div id="pagefader2"></div>
<!--noindex-->
<div class="hidden-md hidden-lg">
	<nav class="mobilemenu navmenu mobcats navmenu-default navmenu-fixed-left offcanvas">
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li><button data-toggle="offcanvas" data-target=".mobcats" data-canvas="body"><?php echo $text_header_back; ?><i class="fa fa-chevron-right"></i></button></li>
				<?php if ($revtheme_dop_menus) { ?>
					<?php foreach ($revtheme_dop_menus as $revtheme_dop_menu) { ?>
						<li>
							<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>" rel="nofollow"><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?><?php if (isset($revtheme_dop_menu['children'])) { ?><span class="chevrond" data-toggle="collapse"><i class="fa fa-plus on"></i><i class="fa fa-minus off"></i></span><?php } ?></a>
							<?php if (isset($revtheme_dop_menu['children'])) { ?>
								<div class="collapse list-group-submenu">
									<ul class="list-unstyled">
										<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
											<li>
												<a href="<?php echo $child['href'.$config_language_id]; ?>" rel="nofollow"><?php echo $child['name'.$config_language_id]; ?><?php if ($tri_level && isset($child['children'])) { ?><span class="chevrond" data-toggle="collapse"><i class="fa fa-plus on"></i><i class="fa fa-minus off"></i></span><?php } ?></a>
												<?php if ($tri_level && isset($child['children'])) { ?>
													<div class="collapse list-group-submenu">
														<ul class="list-unstyled">
															<?php foreach ($child['children'] as $child) { ?>
																<li><a href="<?php echo $child['href'.$config_language_id]; ?>" rel="nofollow">- <?php echo $child['name'.$config_language_id]; ?></a></li>
															<?php } ?>
														</ul>
													</div>
												<?php } ?>
											</li>
										<?php } ?>
									</ul>
								</div>
							<?php } ?>
						</li>
					<?php } ?>
				<?php } ?>
				<?php if ($cats_status) { ?>
					<?php foreach ($categories as $category) { ?>
						<li>
							<a href="<?php echo $category['href']; ?>" rel="nofollow"><?php echo $category['name']; ?><?php if ($category['children']) { ?><span class="chevrond" data-toggle="collapse"><i class="fa fa-plus on"></i><i class="fa fa-minus off"></i></span><?php } ?></a>
							<?php if ($category['children']) { ?>
								<div class="collapse list-group-submenu">
									<ul class="list-unstyled">
										<?php foreach ($category['children'] as $child) { ?>
											<li>
												<a href="<?php echo $child['href']; ?>" rel="nofollow"><?php echo $child['name']; ?><?php if ($tri_level && $child['children']) { ?><span class="chevrond" data-toggle="collapse"><i class="fa fa-plus on"></i><i class="fa fa-minus off"></i></span><?php } ?></a>
												<?php if ($tri_level && $child['children']) { ?>
													<div class="collapse list-group-submenu">
														<ul class="list-unstyled">
															<?php foreach ($child['children'] as $child) { ?>
																<li><a href="<?php echo $child['href']; ?>" rel="nofollow">- <?php echo $child['name']; ?></a></li>
															<?php } ?>
														</ul>
													</div>
												<?php } ?>
											</li>
										<?php } ?>
									</ul>
								</div>
							<?php } ?>
						</li>
					<?php } ?>
				<?php } ?>
				<?php if ($manuf_status) { ?>
					<?php if ($categories_m) { ?>
						<li>
							<a href="<?php echo $url_revmenu_manufs; ?>" rel="nofollow"><?php echo $text_revmenu_manufs; ?><span class="chevrond" data-toggle="collapse"><i class="fa fa-plus on"></i><i class="fa fa-minus off"></i></span></a>
							<div class="collapse list-group-submenu">
								<ul class="list-unstyled">
									<?php foreach ($categories_m as $category) { ?>
											<?php if ($category['manufacturer']) { ?>
												<?php foreach ($category['manufacturer'] as $manufacturers) { ?>
													<li><a href="<?php echo $manufacturers['href']; ?>" rel="nofollow"><?php echo $manufacturers['name']; ?></a></li>
												<?php } ?>
											<?php } ?>
									<?php } ?>
								</ul>
							</div>
						</li>
					<?php } ?>
				<?php } ?>
				<?php if ($revtheme_header_menu_links) { ?>
					<?php foreach ($revtheme_header_menu_links as $revtheme_header_menu_link) { ?>
						<li><a href="<?php echo $revtheme_header_menu_link['link']; ?>" rel="nofollow"><?php echo $revtheme_header_menu_link['title']; ?></a></li>
					<?php } ?>
				<?php } ?>
			</ul>
		</div>
	</nav>
	<nav class="mobilemenu navmenu moblinks navmenu-default navmenu-fixed-left offcanvas">
		<div class="collapse navbar-collapse navbar-ex1-collapse">
		  <ul class="nav navbar-nav">
			<li><button data-toggle="offcanvas" data-target=".moblinks" data-canvas="body"><?php echo $text_header_back; ?><i class="fa fa-chevron-right"></i></button></li>
			<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>" rel="nofollow"><?php echo $information['title']; ?></a></li>
			<?php } ?>
			<?php if ($revtheme_header_links) { ?>
				<?php foreach ($revtheme_header_links as $revtheme_header_link) { ?>
					<li><a href="<?php echo $revtheme_header_link['link']; ?>" rel="nofollow"><?php echo $revtheme_header_link['title']; ?></a></li>
				<?php } ?>
			<?php } ?>
			<?php if ($revtheme_dop_menus_2) { ?>
				<?php foreach ($revtheme_dop_menus_2 as $revtheme_dop_menu) { ?>
					<li>
						<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>" rel="nofollow"><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?><?php if (isset($revtheme_dop_menu['children'])) { ?><span class="chevrond" data-toggle="collapse"><i class="fa fa-plus on"></i><i class="fa fa-minus off"></i></span><?php } ?></a>
						<?php if (isset($revtheme_dop_menu['children'])) { ?>
							<div class="collapse list-group-submenu">
								<ul class="list-unstyled">
									<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
										<li><a href="<?php echo $child['href'.$config_language_id]; ?>" rel="nofollow"><?php echo $child['name'.$config_language_id]; ?></a></li>
									<?php } ?>
								</ul>
							</div>
						<?php } ?>
					</li>
				<?php } ?>
			<?php } ?>
			<?php if ($revtheme_dop_menus_3) { ?>
				<?php foreach ($revtheme_dop_menus_3 as $revtheme_dop_menu) { ?>
					<li>
						<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>" rel="nofollow"><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?><?php if (isset($revtheme_dop_menu['children'])) { ?><span class="chevrond" data-toggle="collapse"><i class="fa fa-plus on"></i><i class="fa fa-minus off"></i></span><?php } ?></a>
						<?php if (isset($revtheme_dop_menu['children'])) { ?>
							<div class="collapse list-group-submenu">
								<ul class="list-unstyled">
									<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
										<li><a href="<?php echo $child['href'.$config_language_id]; ?>" rel="nofollow"><?php echo $child['name'.$config_language_id]; ?></a></li>
									<?php } ?>
								</ul>
							</div>
						<?php } ?>
					</li>
				<?php } ?>
			<?php } ?>
			<li class="foroppro_mob" style="display:none;"></li>
		  </ul>
		</div>
	</nav>
	<script type="text/javascript"><!--
	$(".mobilemenu .chevrond").click(function () {
		$(this).siblings(".collapsible").toggle();
		$(this).toggleClass("hided");
		$(this).parent().next().toggleClass("in");
	});
	--></script>
</div>
<!--/noindex-->
<?php if (!$setting_all_settings['all_document_width'] && !$setting_all_settings['all_document_h_f_width']) { ?>
<div id="all_document">
<?php } ?>
<header>
	<?php if ($informations || $revtheme_header_links || $revtheme_dop_menus_2 || $revtheme_dop_menus_3 || $rev_lang || $rev_curr || $rev_srav || $rev_wish || $rev_acc) { ?>
	<div id="top">
		<div class="container">
			<?php if ($informations || $revtheme_header_links || $revtheme_dop_menus_2 || $revtheme_dop_menus_3) { ?>
			<div class="hidden-sm hidden-md hidden-lg mobile_info">
				<div class="navbar navbar-default pull-left">
					<button type="button" class="navbar-toggle" data-toggle="offcanvas"
					data-target=".navmenu.moblinks" data-canvas="body">
					<i class="fa fa-info" aria-hidden="true"></i>
					<span class="hidden-xs"><?php echo $text_header_information; ?></span>
					<i class="fa fa-chevron-left"></i>
					</button>
				</div>
			</div>
			<div class="top-links hidden-xs verh nav pull-left text-center">
				<?php foreach ($informations as $information) { ?>
					<a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
				<?php } ?>
				<?php if ($revtheme_header_links) { ?>
					<?php foreach ($revtheme_header_links as $revtheme_header_link) { ?>
						<a href="<?php echo $revtheme_header_link['link']; ?>"><?php echo $revtheme_header_link['title']; ?></a>
					<?php } ?>
				<?php } ?>
				<?php if ($revtheme_dop_menus_2) { ?>
					<ul class="list-inline ul_dop_menu">
						<?php foreach ($revtheme_dop_menus_2 as $revtheme_dop_menu) { ?>
							<?php if (isset($revtheme_dop_menu['children'])) { ?>
								<li class="dropdown"><a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?><i class="fa fa-chevron-down strdown"></i></a>
									<ul class="dropdown-menu dropdown-menu-right">
										<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
											<li><a href="<?php echo $child['href'.$config_language_id]; ?>"><?php echo $child['name'.$config_language_id]; ?></a></li>
										<?php } ?>
									</ul>
								</li>
							<?php } else { ?>
								<li><a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?></a></li>
							<?php } ?>
						<?php } ?>
					</ul>
				<?php } ?>
				<span class="foroppro" style="display:none;"></span>
			</div>
			<?php } ?>
			<?php if ($rev_lang || $rev_curr || $rev_srav || $rev_wish || $rev_acc) { ?>
			<div class="top-links verh nav pull-right <?php if ((count($informations) + count($revtheme_header_links)) > 4) { ?>text_ico_skrit<?php } ?>">
				<ul class="list-inline">
					<?php if ($rev_lang) { ?>
					<?php echo $language; ?>
					<?php } ?>
					<?php if ($rev_curr) { ?>
					<?php echo $currency; ?>
					<?php } ?>
					<?php if ($rev_srav) { ?>
					<li>
					<a href="<?php echo $compare; ?>" class="dropdown-toggle"><span id="compare-total"><?php echo $text_compare; ?></span></a>
					</li>
					<?php } ?>
					<?php if ($rev_wish) { ?>
					<li>
					<a href="<?php echo $wishlist; ?>" class="dropdown-toggle"><span id="wishlist-total"><?php echo $text_wishlist; ?></span></a>
					</li>
					<?php } ?>
					<?php if ($rev_acc) { ?>
					<li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_revlogged; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm"><?php echo $text_revlogged; ?></span><i class="fa fa-chevron-down strdown"></i></a>
						<ul class="dropdown-menu dropdown-menu-right">
						<?php if ($logged) { ?>
							<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
							<?php if (isset($setting_all_settings['revaccount_orders']) && $setting_all_settings['revaccount_orders']) { ?>
								<li><a href="<?php echo $order; ?>"><?php echo $text_rev_text_order; ?></a></li>
							<?php } ?>
							<?php if (isset($setting_all_settings['revaccount_files']) && $setting_all_settings['revaccount_files']) { ?>
								<li><a href="<?php echo $download; ?>"><?php echo $text_rev_text_download; ?></a></li>
							<?php } ?>
							<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
						<?php } else { ?>
							<?php if ($popup_login) { ?>
								<li><a onclick="get_revpopup_login();"><?php echo $text_login; ?></a></li>
							<?php } else { ?>
								<li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
							<?php } ?>
							<li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
						<?php } ?>
						</ul>
					</li>
					<?php } ?>
				</ul>
			</div>
			<?php } ?>
		</div>
	</div>
	<?php } ?>
	<div id="top2">
	  <div class="container">
		<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-3">
			<div id="logo">
			  <?php if ($logo) { ?>
				<?php if ($home == $og_url) { ?>
				  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" />
				<?php } else { ?>
				  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
				<?php } ?>
			  <?php } else { ?>
				<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
			  <?php } ?>
			</div>
		</div>
		<?php if ($header_phone_number != '' || $header_phone_text != '') { ?>
			<div class="hidden-xs hidden-sm bigsearch col-xs-12 col-sm-6 col-md-6">
			<?php if ($header_search_doptext) { ?>
				<div class="header_search_doptext">
					<?php echo $header_search_doptext; ?>
				</div>
			<?php } else { ?>
				<?php echo $search; ?>
			<?php } ?>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-3">
				<div class="header_conts t-ar">
					<div class="tel">
						<?php if ($header_phone_number != '' || $header_phone_number2 != '') { ?>
							<span class="header_phone_image"><?php echo $header_phone_image; ?></span>
						<?php } ?>
						<div class="header_phone_nomer">
							<?php if ($header_phone_text != '') { ?>
								<span class="s11"><?php echo $header_phone_text; ?></span>
								<?php if ($header_phone_text2) { ?>
									<span class="s12"><?php echo $header_phone_text2; ?></span>
								<?php } ?>
							<?php } ?>
							<?php if ($header_phone_number != '' || $header_phone_number2 != '') { ?>
								<?php if ($revtheme_header_popupphone['status'] && !$revtheme_header_popupphone['under_phone'] || $dop_contacts || strlen($phone_dop_text) > 30) { ?>
								<button type="button" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
								<?php } ?>
									<span class="s22">
										<a href="tel:<?php echo isset($header_phone_cod) ? preg_replace('/[^0-9]/', '', $header_phone_cod) : ''; ?><?php echo preg_replace('/[^0-9]/', '', $header_phone_number); ?>"><?php if ($header_phone_cod) { ?><span class="telefon"><?php echo $header_phone_cod; ?></span><?php } ?> <?php echo $header_phone_number; ?></a><?php if ($header_phone_number2) { ?><br>
											<a href="tel:<?php echo isset($header_phone_cod2) ? preg_replace('/[^0-9]/', '', $header_phone_cod2) : ''; ?><?php echo preg_replace('/[^0-9]/', '', $header_phone_number2); ?>"><?php if ($header_phone_cod2) { ?><span class="telefon"><?php echo $header_phone_cod2; ?></span><?php } ?> <?php echo $header_phone_number2; ?></a><?php } ?>
										<?php if ($revtheme_header_popupphone['status'] && !$revtheme_header_popupphone['under_phone'] || $dop_contacts || strlen($phone_dop_text) > 30) { ?>
										<i class="fa fa-chevron-down"></i>
										<?php } ?>
									</span>
								<?php if ($revtheme_header_popupphone['status'] && !$revtheme_header_popupphone['under_phone'] || $dop_contacts || strlen($phone_dop_text) > 30) { ?>
								</button>
								<?php } ?>
							<?php } ?>
							<?php if ($revtheme_header_popupphone['status'] && !$revtheme_header_popupphone['under_phone'] || $dop_contacts || strlen($phone_dop_text) > 30) { ?>
								<ul class="dropdown-menu dropdown-menu-right dop_contss">
									<?php if ($revtheme_header_popupphone['status'] && !$revtheme_header_popupphone['under_phone']) { ?>
									<li>
										<a onclick="get_revpopup_phone();"><i class="fa fa-reply-all" aria-hidden="true"></i><?php echo $text_header_revpopup_phone; ?></a>
									</li>
									<?php } ?>
									<?php if ($revtheme_header_popupphone['status'] && !$revtheme_header_popupphone['under_phone'] && $dop_contacts) { ?>
									<li class="divider"></li>
									<?php } ?>
									<?php if ($dop_contacts) { ?>
										<?php foreach ($dop_contacts as $dop_contact) { ?>
											<?php if ($dop_contact['href']) { ?>
												<li><a href="<?php echo $dop_contact['href']; ?>"><span><?php echo $dop_contact['icon']; ?><span><?php echo $dop_contact['number']; ?></span></span></a></li>
											<?php } else { ?>
												<li><span><?php echo $dop_contact['icon']; ?><span><?php echo $dop_contact['number']; ?></span></span></li>
											<?php } ?>
										<?php } ?>
									<?php } ?>
									<?php if (strlen($phone_dop_text) > 30) { ?>
										<div class="phone_dop_text">
											<?php echo html_entity_decode($phone_dop_text, ENT_QUOTES, 'UTF-8'); ?>
										</div>
									<?php } ?>
								</ul>	
							<?php } ?>
						</div>
					</div>
					<?php if ($revtheme_header_popupphone['status'] && $revtheme_header_popupphone['under_phone']) { ?>
						<span class="header_under_phone"><a onclick="get_revpopup_phone();"><i class="fa fa-reply-all" aria-hidden="true"></i><?php echo $text_header_revpopup_phone; ?></a></span>
					<?php } ?>
					<?php if (strlen($phone_dop_text2) > 30) { ?>
						<div class="phone_dop_text2">
							<?php echo html_entity_decode($phone_dop_text2, ENT_QUOTES, 'UTF-8'); ?>
						</div>
					<?php } ?>
				</div>
			</div>
		<?php } else { ?>
			<div class="hidden-xs hidden-sm bigsearch col-xs-12 col-sm-6 col-md-9">
				<?php if ($header_search_doptext) { ?>
					<div class="header_search_doptext">
						<?php echo $header_search_doptext; ?>
					</div>
				<?php } else { ?>
					<?php echo $search; ?>
				<?php } ?>
			</div>
		<?php } ?>
		<div class="hidden-md hidden-lg mobsearch col-xs-12 col-sm-12">
			<?php if ($header_search_doptext) { ?>
				<div class="header_search_doptext">
					<?php echo $header_search_doptext; ?>
				</div>
			<?php } else { ?>
				<?php echo $search; ?>
			<?php } ?>
		</div>
		</div>
	  </div>
	</div>  
	<!--noindex-->
	<div id="top3_links" class="clearfix hidden-md hidden-lg">
		<div class="container">
			<div class="row">
				<div class="top-links col-xs-12">
						<ul class="list-inline">
							<?php foreach ($informations2 as $information) { ?>
								<li><a href="<?php echo $information['href']; ?>" rel="nofollow"><?php echo $information['title']; ?></a></li>
							<?php } ?>
							<?php if ($revtheme_header_links2) { ?>
								<?php foreach ($revtheme_header_links2 as $revtheme_header_link2) { ?>
									<li><a href="<?php echo $revtheme_header_link2['link']; ?>" rel="nofollow"><?php echo $revtheme_header_link2['title']; ?></a></li>
								<?php } ?>
							<?php } ?>
						</ul>
				</div>
			</div>
		</div>
	</div>
	<!--/noindex-->
	<div id="top3" class="clearfix">
		<div class="container">
			<div class="row image_in_ico_row">
				<?php if ($amazon) { ?>
				<div class="col-xs-6 col-md-3">
					<?php echo $revmenu; ?>
				</div>
				<div class="top-links nav norazmivcont hidden-xs hidden-sm <?php echo $cart_size_class_1; ?>">
					<ul class="list-inline">
						<?php foreach ($informations2 as $information) { ?>
							<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
						<?php } ?>
						<?php if ($revtheme_header_links2) { ?>
							<?php foreach ($revtheme_header_links2 as $revtheme_header_link2) { ?>
								<li><a href="<?php echo $revtheme_header_link2['link']; ?>"><?php echo $revtheme_header_link2['title']; ?></a></li>
							<?php } ?>
						<?php } ?>
					</ul>
					<?php if ($revtheme_dop_menus_3) { ?>
						<nav id="menu">
							<div class="collapse navbar-collapse navbar-ex1-collapse">
								<ul class="nav dblock_zadergkaoff navbar-nav">
									<?php foreach ($revtheme_dop_menus_3 as $revtheme_dop_menu) { ?>
										<?php if (isset($revtheme_dop_menu['children'])) { ?>
											<li><a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_3'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_3']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_3'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?><span class="icorightmenu"><i class="fa fa-chevron-down"></i></span></a>
											<span class="dropdown-toggle visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
											  <div class="mmmenu" <?php if ($image_in_ico) { echo 'style="position: initial"';} ?>>
												  <div class="dropdown-menu">
													<div class="dropdown-inner">
													<?php //if ($image_in_ico) { ?>
														<!--
														<div class="image_in_ico_dop_<?php echo $revtheme_dop_menu['id']; ?> refine_categories clearfix">
															<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
																<a href="<?php echo $child['href'.$config_language_id]; ?>">
																	<img src="<?php echo $child['dop_menu_image_3']; ?>" alt="<?php echo $child['name'.$config_language_id]; ?>" /><span><?php echo $child['name'.$config_language_id]; ?></span>
																</a>
															<?php } ?>
														</div>
														-->
													<?php //} else { ?>
														<?php foreach (array_chunk($revtheme_dop_menu['children'], ceil(count($revtheme_dop_menu['children']) / $revtheme_dop_menu['column'])) as $children) { ?>
															<ul class="list-unstyled">
															<?php foreach ($children as $child) { ?>
															<li><a href="<?php echo $child['href'.$config_language_id]; ?>"><?php if ($child['icontype'] == 'iconka') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_3'].'"></i></span>'; } else { if ($child['dop_menu_image_3']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_3'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?></a>
																<?php if ($tri_level && isset($child['children'])) { ?>
																<span class="visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
																	<div class="dropdown-menu">
																	<div class="dropdown-inner">
																	<ul class="list-unstyled">
																	<?php foreach ($child['children'] as $child) { ?>
																		<li><a href="<?php echo $child['href'.$config_language_id]; ?>"><i class="fa fa-minus"></i><?php echo $child['name'.$config_language_id]; ?></a></li>
																	<?php } ?>
																	</ul>
																	</div>
																	</div>
																<?php } ?>
															</li>
															<?php } ?>
															</ul>
														<?php } ?>
													<?php //} ?>
													</div>
													</div>
												</div>
											</li>
										<?php } else { ?>
											<li><a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_3'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?></a></li>
										<?php } ?>
									<?php } ?>
								</ul>
							</div>
						</nav>
					<?php } ?>
				</div>
				<?php } else { ?>
					<div class="col-xs-6 hidden-md hidden-lg">
						<div id="menu2_button" class="page-fader inhome">
							<div class="box-heading" data-toggle="offcanvas" data-target=".navmenu.mobcats" data-canvas="body"><i class="fa fa-bars"></i><?php echo $text_header_menu2_heading; ?><span class="icorightmenu"><i class="fa fa-chevron-down"></i></span></div>
						</div>
					</div>
					<div class="hidden-xs hidden-sm <?php echo $cart_size_class_3; ?>">
						<nav id="menu">
							<div class="collapse navbar-collapse navbar-ex1-collapse">
							  <ul class="nav dblock_zadergkaoff navbar-nav">
								<?php if ($revtheme_dop_menus) { ?>
									<?php foreach ($revtheme_dop_menus as $revtheme_dop_menu) { ?>
										<?php if (isset($revtheme_dop_menu['children'])) { ?>
											<li><a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?><span class="icorightmenu"><i class="fa fa-chevron-down"></i></span></a>
											<span class="dropdown-toggle visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
											  <div class="mmmenu" <?php if ($image_in_ico) { echo 'style="position: initial"';} ?>>
												  <div class="dropdown-menu">
													<div class="dropdown-inner">
													<?php //if ($image_in_ico) { ?>
														<!--
														<div class="image_in_ico_dop_<?php echo $revtheme_dop_menu['id']; ?> refine_categories clearfix">
															<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
																<a href="<?php echo $child['href'.$config_language_id]; ?>">
																	<img src="<?php echo $child['dop_menu_image']; ?>" alt="<?php echo $child['name'.$config_language_id]; ?>" /><span><?php echo $child['name'.$config_language_id]; ?></span>
																</a>
															<?php } ?>
														</div>
														-->
													<?php //} else { ?>
														<?php foreach (array_chunk($revtheme_dop_menu['children'], ceil(count($revtheme_dop_menu['children']) / $revtheme_dop_menu['column'])) as $children) { ?>
															<ul class="list-unstyled">
															<?php foreach ($children as $child) { ?>
															<li><a href="<?php echo $child['href'.$config_language_id]; ?>"><?php if ($child['icontype'] == 'iconka') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka'].'"></i></span>'; } else { if ($child['dop_menu_image']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?></a>
																<?php if ($tri_level && isset($child['children'])) { ?>
																<span class="visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
																	<div class="dropdown-menu">
																	<div class="dropdown-inner">
																	<ul class="list-unstyled">
																	<?php foreach ($child['children'] as $child) { ?>
																		<li><a href="<?php echo $child['href'.$config_language_id]; ?>"><i class="fa fa-minus"></i><?php echo $child['name'.$config_language_id]; ?></a></li>
																	<?php } ?>
																	</ul>
																	</div>
																	</div>
																<?php } ?>
															</li>
															<?php } ?>
															</ul>
														<?php } ?>
													<?php //} ?>
													</div>
													</div>
												</div>
											</li>
										<?php } else { ?>
											<li><a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?></a></li>
										<?php } ?>
									<?php } ?>
								<?php } ?>
							    <?php if ($cats_status) { ?>
									<?php foreach ($categories as $category) { ?>
										<?php if ($category['children']) { ?>
											<li><a href="<?php echo $category['href']; ?>"><?php if ($category['category_image']) { echo $category['category_image']; } ?><?php echo $category['name']; ?><span class="icorightmenu"><i class="fa fa-chevron-down"></i></span></a>
											<span class="dropdown-toggle visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
											  <div class="mmmenu" <?php if ($image_in_ico) { echo 'style="position: initial"';} ?>>
												  <div class="dropdown-menu">
													<div class="dropdown-inner">
													<?php if ($image_in_ico) { ?>
														<div class="image_in_ico_<?php echo $category['category_id']; ?> refine_categories clearfix">
															<?php foreach ($category['children'] as $child) { ?>
																<a class="col-sm-2 col-lg-2" href="<?php echo $child['href']; ?>">
																	<img src="<?php echo $child['thumb']; ?>" title="<?php echo $child['name']; ?>" alt="<?php echo $child['name']; ?>" /><span><?php echo $child['name']; ?></span>
																</a>
															<?php } ?>
														</div>
													<?php } else { ?>
														<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
															<ul class="list-unstyled <?php if ($category['column']) { echo 'column';} ?>">
															<?php foreach ($children as $child) { ?>
															<li><a href="<?php echo $child['href']; ?>"><?php if ($child['category_image']) { echo $child['category_image']; } ?><?php echo $child['name']; ?></a>
																<?php if ($tri_level && $child['children']) { ?>
																<span class="visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
																	<div class="dropdown-menu">
																	<div class="dropdown-inner">
																	<ul class="list-unstyled">
																	<?php foreach ($child['children'] as $child) { ?>
																		<li><a href="<?php echo $child['href']; ?>"><i class="fa fa-minus"></i><?php echo $child['name']; ?></a></li>
																	<?php } ?>
																	</ul>
																	</div>
																	</div>
																<?php } ?>
															</li>
															<?php } ?>
															</ul>
														<?php } ?>
													<?php } ?>  
													<?php if ($category['thumb2']) { ?>
														<img class="img_sub" src="<?php echo $category['thumb2']; ?>" alt="<?php echo $category['name']; ?>" />	
													<?php } ?>
													</div>
													</div>
												</div>
											</li>
										<?php } else { ?>
											<li><a href="<?php echo $category['href']; ?>"><?php if ($category['category_image']) { echo $category['category_image']; } ?><?php echo $category['name']; ?></a></li>
										<?php } ?>
									<?php } ?>
								<?php } ?>
								<?php if ($manuf_status) { ?>
									<?php if ($categories_m) { ?>
										<?php if ($image_in_ico_m) { ?>
											<li><a href="<?php echo $url_revmenu_manufs; ?>"><?php echo $text_revmenu_manufs; ?><span class="icorightmenu"><i class="fa fa-chevron-down"></i></span></a>
											<span class="dropdown-toggle visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
											  <div class="mmmenu" style="position: initial">
													<div class="dropdown-menu">
														<div class="dropdown-inner">
															<div class="image_in_ico_manufacturers refine_categories clearfix">
																<?php foreach (array_chunk($categories_m, ceil(count($categories_m) / $n_column)) as $categorys) { ?>
																	<?php foreach ($categorys as $category) { ?>
																		<?php if ($category['manufacturer']) { ?>
																			<?php foreach ($category['manufacturer'] as $manufacturers) { ?>
																				<a class="col-sm-2 col-lg-2" href="<?php echo $manufacturers['href']; ?>">
																					<img src="<?php echo $manufacturers['thumb']; ?>" title="<?php echo $manufacturers['name']; ?>" alt="<?php echo $manufacturers['name']; ?>" /><span><?php echo $manufacturers['name']; ?></span>
																				</a>
																			<?php } ?>
																		<?php } ?>
																	<?php } ?>
																<?php } ?>
															</div>
														</div>
													</div>
												</div>
											</li>
										<?php } else { ?>
											<li><a href="<?php echo $url_revmenu_manufs; ?>"><?php echo $text_revmenu_manufs; ?><span class="icorightmenu"><i class="fa fa-chevron-down"></i></span></a>
											<span class="dropdown-toggle visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
											  <div class="mmmenu">
												  <div class="dropdown-menu">
													<div class="dropdown-inner">
														<?php foreach (array_chunk($categories_m, ceil(count($categories_m) / $n_column)) as $categorys) { ?>
															<ul class="list-unstyled">
																<?php foreach ($categorys as $category) { ?>
																	<li><span class="manuf_in_menu"><?php echo $category['name']; ?></span>
																		<?php if ($category['manufacturer']) { ?>
																			<span class="visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
																			<div class="dropdown-menu">
																				<div class="dropdown-inner">
																					<ul class="list-unstyled">
																					<?php foreach ($category['manufacturer'] as $manufacturers) { ?>
																						<li><a href="<?php echo $manufacturers['href']; ?>"><i class="fa fa-minus"></i><?php echo $manufacturers['name']; ?></a></li>
																					<?php } ?>
																					</ul>
																				</div>
																			</div>
																		<?php } ?>
																	</li>
																<?php } ?>
															</ul>
														<?php } ?>
													</div>
													</div>
												</div>
											</li>
										<?php } ?>
									<?php } ?>
								<?php } ?>
								<?php foreach ($informations2 as $information) { ?>
									<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
								<?php } ?>
								<?php if ($revtheme_header_links2) { ?>
									<?php foreach ($revtheme_header_links2 as $revtheme_header_link2) { ?>
										<li><a href="<?php echo $revtheme_header_link2['link']; ?>"><?php echo $revtheme_header_link2['title']; ?></a></li>
									<?php } ?>
								<?php } ?>
								<?php foreach ($revtheme_dop_menus_3 as $revtheme_dop_menu) { ?>
									<?php if (isset($revtheme_dop_menu['children'])) { ?>
										<li><a href="<?php echo ($revtheme_dop_menu['href'.$config_language_id] != '') ? $revtheme_dop_menu['href'.$config_language_id] : '#'; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka' && isset($revtheme_dop_menu['dop_menu_iconka_3'])) { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_3'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_3']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_3'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?><span class="icorightmenu"><i class="fa fa-chevron-down"></i></span></a>
										<span class="dropdown-toggle visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
										  <div class="mmmenu" <?php if ($image_in_ico) { echo 'style="position: initial"';} ?>>
											  <div class="dropdown-menu">
												<div class="dropdown-inner">
												<?php if ($image_in_ico) { ?>
													<div class="image_in_ico_dop_<?php echo $revtheme_dop_menu['id']; ?> refine_categories clearfix">
														<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
															<a href="<?php echo $child['href'.$config_language_id]; ?>">
																<img src="<?php echo $child['dop_menu_image_3']; ?>" alt="<?php echo $child['name'.$config_language_id]; ?>" /><span><?php echo $child['name'.$config_language_id]; ?></span>
															</a>
														<?php } ?>
													</div>
												<?php } else { ?>
													<?php foreach (array_chunk($revtheme_dop_menu['children'], ceil(count($revtheme_dop_menu['children']) / $revtheme_dop_menu['column'])) as $children) { ?>
														<ul class="list-unstyled">
														<?php foreach ($children as $child) { ?>
														<li><a href="<?php echo $child['href'.$config_language_id]; ?>"><?php if ($child['icontype'] == 'iconka' && isset($child['dop_menu_iconka_3'])) { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_3'].'"></i></span>'; } else { if ($child['dop_menu_image_3']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_3'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?></a>
															<?php if ($tri_level && isset($child['children'])) { ?>
															<span class="visible-xs visible-sm"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
																<div class="dropdown-menu">
																<div class="dropdown-inner">
																<ul class="list-unstyled">
																<?php foreach ($child['children'] as $child) { ?>
																	<li><a href="<?php echo $child['href'.$config_language_id]; ?>"><i class="fa fa-minus"></i><?php echo $child['name'.$config_language_id]; ?></a></li>
																<?php } ?>
																</ul>
																</div>
																</div>
															<?php } ?>
														</li>
														<?php } ?>
														</ul>
													<?php } ?>
												<?php } ?>
												</div>
												</div>
											</div>
										</li>
									<?php } else { ?>
										<li><a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka' && isset($revtheme_dop_menu['dop_menu_iconka_3'])) { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_3'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_3']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_3'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?></a></li>
									<?php } ?>
								<?php } ?>
							  </ul>
							</div>
						</nav>
						<script type="text/javascript"><!--
						<?php if ($image_in_ico) { ?>
							$('#menu .nav > li .dropdown-menu').css('display', 'block');
							<?php foreach ($categories as $category) { ?>
								var div = '#menu .image_in_ico_<?php echo $category['category_id']; ?>.refine_categories > a span';
								var maxheight = 0;
								$(div).each(function(){
									$(this).removeAttr('style');
									if($(this).height() > maxheight) {
										maxheight = $(this).height();
									}
								});
								$(div).height(maxheight-17);
							<?php } ?>
							<?php if ($manuf_status) { ?>
								var div = '.image_in_ico_manufacturers.refine_categories span';
								var maxheight = 0;
								$(div).each(function(){
									$(this).removeAttr('style');
									if($(this).height() > maxheight) {
										maxheight = $(this).height();
									}
								});
								$(div).height(maxheight);
							<?php } ?>
							$('#menu .nav > li .dropdown-menu').css('display', 'none');
						<?php } ?>
						//--></script>
					</div>
				<?php } ?>
				<div class="<?php echo $cart_size_class_2; ?>">
					<?php echo $cart; ?>
				</div>		
			</div>
		</div>
	</div>
</header>
<?php if (!$setting_all_settings['all_document_width'] && $setting_all_settings['all_document_h_f_width']) { ?>
<div id="all_document">
<?php } ?>
<section class="main-content">