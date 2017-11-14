</section>
<?php if (!$setting_all_settings['all_document_width'] && $setting_all_settings['all_document_h_f_width']) { ?>
</div>
<?php } ?>
<footer>
<?php if ($f_map) { ?>
	<div id="map-wrapper" class="hidden-xs">
		<div class="contact-info">
			<div class="item">
				<div class="label_fconts"><?php echo $text_contact_ourcontacts; ?></div>
				<?php if ($settings_all_settings['m_conts']) { ?>
					<p class="hid_address"><i class="fa fa-map-marker" aria-hidden="true"></i><?php echo $address; ?></p>
					<p class="hid_telephone"><i class="fa fa fa-phone" aria-hidden="true"></i><?php echo $telephone; ?></p>
					<p class="hid_email"><i class="fa fa fa-envelope" aria-hidden="true"></i><?php echo $config_email; ?></p>
				<?php } ?>
				<?php if ($settings_all_settings['dop_conts']) { ?>
					<?php if ($header_phone_number != '') { ?>
						<p class="dop_contact_tel1"><i class="fa fa fa-phone" aria-hidden="true"></i><?php echo $header_phone_cod; ?> <?php echo $header_phone_number; ?></p>
					<?php } ?>
					<?php if ($header_phone_number2 != '') { ?>
						<p class="dop_contact_tel2"><i class="fa fa fa-phone" aria-hidden="true"></i><?php echo $header_phone_cod2; ?> <?php echo $header_phone_number2; ?><p>
					<?php } ?>
					<?php if ($dop_contacts) { $i_dc = 1; ?>
						<?php foreach ($dop_contacts as $dop_contact) { ?>
							<?php if ($dop_contact['href'] != '') { ?>
								<p class="dop_contact_<?php echo $i_dc; ?>"><?php echo $dop_contact['icon']; ?><a href="<?php echo $dop_contact['href']; ?>"><?php echo $dop_contact['number']; ?></a></p>
							<?php } else { ?>
								<p class="dop_contact_<?php echo $i_dc; ?>"><?php echo $dop_contact['icon']; ?><?php echo $dop_contact['number']; ?></p>
							<?php } ?>
						<?php $i_dc++; } ?>
					<?php } ?>
				<?php } ?>
				<?php if ($settings_all_settings['soc_conts']) { ?>
					<?php if ($revtheme_footer_socs_p) { ?>
						<?php foreach ($revtheme_footer_socs_p as $revtheme_footer_soc) { ?>
							<p><i class="<?php echo $revtheme_footer_soc['image']; ?>" aria-hidden="true"></i><a href="<?php echo $revtheme_footer_soc['link']; ?>"><?php echo $revtheme_footer_soc['link_t']; ?></a></p>
						<?php } ?>
					<?php } ?>
				<?php } ?>
			</div>
		</div>
		<div id="yamap">
			<?php if ($yamap) echo $yamap; ?>
		</div>
	</div>
<?php } ?>
	<?php echo $revsubscribe; ?>
	<div class="footer">
		<div class="container">
			<div class="row">
				<?php $dops_class = "not_dops_snot_dops_s"; if (!$revtheme_custom_footer['dops_pc_status']) { $dops_class = "not_dops_s hidden-md hidden-lg"; } ?>
				<div class="<?php echo $dops_class; ?>">
					<?php if ($informations || $revtheme_footer_links) { ?>
						<?php $class_informations = 'col-sm-12' ?>
						<?php if (($informations || $revtheme_footer_links) && $revtheme_footer_socs) { $class_informations = 'col-sm-8'; } ?>
						<div class="footer_links <?php echo $class_informations; ?> col-xs-12">
							<?php if ($informations) { ?>
								<?php foreach ($informations as $information) { ?>
									<a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
								<?php } ?>
							<?php } ?>
							<?php if ($revtheme_footer_links) { ?>
								<?php foreach ($revtheme_footer_links as $revtheme_footer_link) { ?>
									<a href="<?php echo $revtheme_footer_link['link']; ?>"><?php echo $revtheme_footer_link['title']; ?></a>
								<?php } ?>
							<?php } ?>
						</div>
					<?php } ?>
					<?php if ($revtheme_footer_socs) { ?>
						<?php $class_footer_socs = 'col-sm-12' ?>
						<?php if (($informations || $revtheme_footer_links) && $revtheme_footer_socs) { $class_footer_socs = 'col-sm-4'; } ?>
						<div class="soc_s <?php echo $class_footer_socs; ?> col-xs-12">
							<?php foreach ($revtheme_footer_socs as $revtheme_footer_soc) { ?>
								<a href="<?php echo $revtheme_footer_soc['link']; ?>" rel="nofollow" target="_blank"><i class="<?php echo $revtheme_footer_soc['image']; ?>" data-toggle="tooltip" title="<?php echo $revtheme_footer_soc['title']; ?>"></i></a>
							<?php } ?>
						</div>
					<?php } ?>
				</div>
				<?php if ($revtheme_custom_footer['status']) { ?>
					<div class="footer_cfs hidden-sm">
						<?php if ($revtheme_custom_footer['cf_1_status']) { ?>
							<?php if ($revtheme_dop_menus_cf || strlen($cf_1_description) > 15) { ?>
								<div <?php echo $cf_1_width; ?>>
									<?php if ($revtheme_dop_menus_cf) { ?>
										<ul class="list-unstyled">
											<?php foreach ($revtheme_dop_menus_cf as $revtheme_dop_menu) { ?>
												<li class="zag_dm_cf_li">
													<span class="zag_dm_cf">
													<?php if ($revtheme_dop_menu['href'.$config_language_id] != '') { ?>
														<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka_cf'] != '') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_cf'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_cf']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_cf'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?></a>
													<?php } else { ?>
														<?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka_cf'] != '') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_cf'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_cf']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_cf'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?>
													<?php } ?>
													</span>
													<?php if (isset($revtheme_dop_menu['children'])) { ?>
															<ul class="list-unstyled last_ul_cf">
																<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
																	<li>
																		<?php if ($child['href'.$config_language_id] != '') { ?>
																			<a href="<?php echo $child['href'.$config_language_id]; ?>"><?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka_cf'] != '') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_cf'].'"></i></span>'; } else { if ($child['dop_menu_image_cf']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_cf'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?></a>
																		<?php } else { ?>
																			<?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka_cf'] != '') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_cf'].'"></i></span>'; } else { if ($child['dop_menu_image_cf']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_cf'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?>
																		<?php } ?>
																	</li>
																<?php } ?>
															</ul>
													<?php } ?>
												</li>
											<?php } ?>
										</ul>
									<?php } ?>
									<?php if (strlen($cf_1_description) > 15) { echo $cf_1_description; } ?>
								</div>
							<?php } ?>
						<?php } ?>
						<?php if ($revtheme_custom_footer['cf_2_status']) { ?>
							<?php if ($revtheme_dop_menus_cf_2 || strlen($cf_2_description) > 15) { ?>
								<div <?php echo $cf_2_width; ?>>
									<?php if ($revtheme_dop_menus_cf_2) { ?>
										<ul class="list-unstyled">
											<?php foreach ($revtheme_dop_menus_cf_2 as $revtheme_dop_menu) { ?>
												<li class="zag_dm_cf_li">
													<span class="zag_dm_cf">
													<?php if ($revtheme_dop_menu['href'.$config_language_id] != '') { ?>
														<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka_cf_2'] != '') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_cf_2'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_cf_2']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_cf_2'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?></a>
													<?php } else { ?>
														<?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka_cf_2'] != '') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_cf_2'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_cf_2']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_cf_2'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?>
													<?php } ?>
													</span>
													<?php if (isset($revtheme_dop_menu['children'])) { ?>
															<ul class="list-unstyled last_ul_cf">
																<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
																	<li>
																		<?php if ($child['href'.$config_language_id] != '') { ?>
																			<a href="<?php echo $child['href'.$config_language_id]; ?>"><?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka_cf_2'] != '') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_cf_2'].'"></i></span>'; } else { if ($child['dop_menu_image_cf_2']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_cf_2'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?></a>
																		<?php } else { ?>
																			<?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka_cf_2'] != '') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_cf_2'].'"></i></span>'; } else { if ($child['dop_menu_image_cf_2']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_cf_2'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?>
																		<?php } ?>
																	</li>
																<?php } ?>
															</ul>
													<?php } ?>
												</li>
											<?php } ?>
										</ul>
									<?php } ?>
									<?php if (strlen($cf_2_description) > 15) { echo $cf_2_description; } ?>
								</div>
							<?php } ?>
						<?php } ?>
						<?php if ($revtheme_custom_footer['cf_3_status']) { ?>
							<?php if ($revtheme_dop_menus_cf_3 || strlen($cf_3_description) > 15) { ?>
								<div <?php echo $cf_3_width; ?>>
									<?php if ($revtheme_dop_menus_cf_3) { ?>
										<ul class="list-unstyled">
											<?php foreach ($revtheme_dop_menus_cf_3 as $revtheme_dop_menu) { ?>
												<li class="zag_dm_cf_li">
													<span class="zag_dm_cf">
													<?php if ($revtheme_dop_menu['href'.$config_language_id] != '') { ?>
														<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka_cf_3'] != '') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_cf_3'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_cf_3']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_cf_3'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?></a>
													<?php } else { ?>
														<?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka_cf_3'] != '') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_cf_3'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_cf_3']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_cf_3'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?>
													<?php } ?>
													</span>
													<?php if (isset($revtheme_dop_menu['children'])) { ?>
															<ul class="list-unstyled last_ul_cf">
																<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
																	<li>
																		<?php if ($child['href'.$config_language_id] != '') { ?>
																			<a href="<?php echo $child['href'.$config_language_id]; ?>"><?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka_cf_3'] != '') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_cf_3'].'"></i></span>'; } else { if ($child['dop_menu_image_cf_3']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_cf_3'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?></a>
																		<?php } else { ?>
																			<?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka_cf_3'] != '') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_cf_3'].'"></i></span>'; } else { if ($child['dop_menu_image_cf_3']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_cf_3'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?>
																		<?php } ?>
																	</li>
																<?php } ?>
															</ul>
													<?php } ?>
												</li>
											<?php } ?>
										</ul>
									<?php } ?>
									<?php if (strlen($cf_3_description) > 15) { echo $cf_3_description; } ?>
								</div>
							<?php } ?>
						<?php } ?>
						<?php if ($revtheme_custom_footer['cf_4_status']) { ?>
							<?php if ($revtheme_dop_menus_cf_4 || strlen($cf_4_description) > 15) { ?>
								<div <?php echo $cf_4_width; ?>>
									<?php if ($revtheme_dop_menus_cf_4) { ?>
										<ul class="list-unstyled">
											<?php foreach ($revtheme_dop_menus_cf_4 as $revtheme_dop_menu) { ?>
												<li class="zag_dm_cf_li">
													<span class="zag_dm_cf">
													<?php if ($revtheme_dop_menu['href'.$config_language_id] != '') { ?>
														<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka_cf_4'] != '') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_cf_4'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_cf_4']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_cf_4'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?></a>
													<?php } else { ?>
														<?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka_cf_4'] != '') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_cf_4'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_cf_4']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_cf_4'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?>
													<?php } ?>
													</span>
													<?php if (isset($revtheme_dop_menu['children'])) { ?>
															<ul class="list-unstyled last_ul_cf">
																<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
																	<li>
																		<?php if ($child['href'.$config_language_id] != '') { ?>
																			<a href="<?php echo $child['href'.$config_language_id]; ?>"><?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka_cf_4'] != '') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_cf_4'].'"></i></span>'; } else { if ($child['dop_menu_image_cf_4']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_cf_4'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?></a>
																		<?php } else { ?>
																			<?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka_cf_4'] != '') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_cf_4'].'"></i></span>'; } else { if ($child['dop_menu_image_cf_4']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_cf_4'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?>
																		<?php } ?>
																	</li>
																<?php } ?>
															</ul>
													<?php } ?>
												</li>
											<?php } ?>
										</ul>
									<?php } ?>
									<?php if (strlen($cf_4_description) > 15) { echo $cf_4_description; } ?>
								</div>
							<?php } ?>
						<?php } ?>
						<?php if ($revtheme_custom_footer['cf_5_status']) { ?>
							<?php if ($revtheme_dop_menus_cf_5 || strlen($cf_5_description) > 15) { ?>
								<div <?php echo $cf_5_width; ?>>
									<?php if ($revtheme_dop_menus_cf_5) { ?>
										<ul class="list-unstyled">
											<?php foreach ($revtheme_dop_menus_cf_5 as $revtheme_dop_menu) { ?>
												<li class="zag_dm_cf_li">
													<span class="zag_dm_cf">
													<?php if ($revtheme_dop_menu['href'.$config_language_id] != '') { ?>
														<a href="<?php echo $revtheme_dop_menu['href'.$config_language_id]; ?>"><?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka_cf_5'] != '') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_cf_5'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_cf_5']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_cf_5'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?></a>
													<?php } else { ?>
														<?php if ($revtheme_dop_menu['icontype'] == 'iconka' && $revtheme_dop_menu['dop_menu_iconka_cf_5'] != '') { echo '<span class="am_category_image"><i class="'.$revtheme_dop_menu['dop_menu_iconka_cf_5'].'"></i></span>'; } else { if ($revtheme_dop_menu['dop_menu_image_cf_5']) { echo '<span class="am_category_image"><img src="'.$revtheme_dop_menu['dop_menu_image_cf_5'].'" alt=""></span>'; } } ?><?php echo $revtheme_dop_menu['name'.$config_language_id]; ?>
													<?php } ?>
													</span>
													<?php if (isset($revtheme_dop_menu['children'])) { ?>
															<ul class="list-unstyled last_ul_cf">
																<?php foreach ($revtheme_dop_menu['children'] as $child) { ?>
																	<li>
																		<?php if ($child['href'.$config_language_id] != '') { ?>
																			<a href="<?php echo $child['href'.$config_language_id]; ?>"><?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka_cf_5'] != '') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_cf_5'].'"></i></span>'; } else { if ($child['dop_menu_image_cf_5']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_cf_5'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?></a>
																		<?php } else { ?>
																			<?php if ($child['icontype'] == 'iconka' && $child['dop_menu_iconka_cf_5'] != '') { echo '<span class="am_category_image"><i class="'.$child['dop_menu_iconka_cf_5'].'"></i></span>'; } else { if ($child['dop_menu_image_cf_5']) { echo '<span class="am_category_image"><img src="'.$child['dop_menu_image_cf_5'].'" alt=""></span>'; } } ?><?php echo $child['name'.$config_language_id]; ?>
																		<?php } ?>
																	</li>
																<?php } ?>
															</ul>
													<?php } ?>
												</li>
											<?php } ?>
										</ul>
									<?php } ?>
									<?php if (strlen($cf_5_description) > 15) { echo $cf_5_description; } ?>
								</div>
							<?php } ?>
						<?php } ?>
					</div>
				<?php } ?>
				<?php if ($revtheme_footer_icons) { ?>
					<?php $style_powered = 'text-align:right'; $class_powered = 'col-sm-6' ?>
					<div class="ficons col-sm-6 col-xs-12">
						<?php foreach ($revtheme_footer_icons as $revtheme_footer_icon) { ?>
							<span class="revtheme_footer_icon">
								<?php if (isset($revtheme_footer_icon['href']) && $revtheme_footer_icon['href'] != '') { ?>
									<a href="<?php echo $revtheme_footer_icon['href']; ?>">
										<img src="<?php echo $revtheme_footer_icon['image']; ?>" alt=""/>
									</a>
								<?php } else { ?>
									<img src="<?php echo $revtheme_footer_icon['image']; ?>" alt=""/>
								<?php } ?>
							</span>
						<?php } ?>
					</div>
				<?php } else { ?>
					<?php $style_powered = 'text-align:left'; $class_powered = 'col-sm-12' ?>
				<?php } ?>
				<div style="<?php echo $style_powered; ?>" class="powered <?php echo $class_powered; ?> col-xs-12"><?php echo $powered; ?></div>
			</div>
		</div>
	</div>	
</footer>
<?php if (!$setting_all_settings['all_document_width'] && !$setting_all_settings['all_document_h_f_width']) { ?>
</div>
<?php } ?>
<?php if ($popup_phone) { ?>
	<div class="popup-phone-wrapper" data-toggle="tooltip" data-placement="left"  title="<?php echo $text_footer_popup_phone_tooltip; ?>">
		<span class="scroll-top-inner">
			<i class="fa fa-phone"></i>
		</span>
	</div>
<?php } ?>
<?php if ($in_top) { ?>
	<div class="scroll-top-wrapper ">
		<span class="scroll-top-inner">
			<i class="fa fa-arrow-circle-up"></i>
		</span>
	</div>
<?php } ?>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/revolution/common.js" type="text/javascript"></script>
<?php if ($f_map && !$yamap) { ?>
	<script src="//api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<?php } ?>
<script type="text/javascript"><!--
if (!localStorage.getItem('display')) {
<?php if ($setting_catalog_all['vid_default'] == 'vid_price') { ?>
	localStorage.setItem('display', 'price');
<?php } else if ($setting_catalog_all['vid_default'] == 'vid_list') { ?>
	localStorage.setItem('display', 'list');
<?php } else { ?>
	localStorage.setItem('display', 'grid');
<?php } ?>
}
<?php if ($zadergka) { ?>
	$("#top3 #menu .nav").removeClass('dblock_zadergkaoff').addClass('dblock_zadergka');
	var global_menu2_button;
	$("#top3 #menu .nav > li").hover(function(){
		var this_li = $(this);
		global_menu2_button = setTimeout(function() {
		this_li.find('.mmmenu .dropdown-menu').addClass('dblockdr');
	}, 250)
	},function(){
		$(this).find('.mmmenu .dropdown-menu').removeClass('dblockdr');
		clearTimeout(global_menu2_button);
	});
<?php } ?>
$(function () {
  $("#menu .nav > li .mmmenu").mouseenter(function(){
		$('#pagefader').fadeIn(70);
		$('body').addClass('razmiv');
   });
	$("#menu .nav > li .mmmenu").mouseleave(function(){
		$('#pagefader').fadeOut(70);
		$('body').removeClass('razmiv');
   });
});
<?php if (!$setting_catalog_all['category_desc']) { ?>
	$('.footer-category').append($('.category_description'));
	$('.category_description').removeClass('dnone');
<?php } ?>
<?php if ($setting_catalog_all['img_slider']) { ?>
	function podgon_img(){
		$('.owlproduct').each(function(indx, element){
			var data = $(element).data('owlCarousel');
			data && data.reinit({navigation: true})
		});
	}
<?php } ?>
<?php if ($setting_catalog_all['img_slider']) { ?>
	//$('.product-thumb > .image').css('width', <?php echo $catalog_img_width; ?>);
	$('.owlproduct').owlCarousel({
		beforeInit: true,
		items: 1,
		singleItem: true,
		mouseDrag: false,
		autoPlay: false,
		navigation: true,
		navigationText: ['<i class="fa fa-chevron-left fa-3x"></i>', '<i class="fa fa-chevron-right fa-3x"></i>'],
		pagination: false
	});
<?php } else { ?>
	$('.owl-carousel.owlproduct').remove();
<?php } ?>
function list_view(){
	$('#content .product-grid > .clearfix').remove();
	$('#content .product-grid, #content .product-price').attr('class', 'product-layout product-list col-xs-12');
	$('#content .product-list .cart > a').attr('data-toggle', 'none');
	$('#content .product-list .cart > a').attr('title', '');
	$(document).ready(function() {
		var w_list_img = $('.product-list .product-thumb .image').outerWidth();
		<?php if ($setting_catalog_all['img_slider']) { ?>
			$('.product-thumb > .image').css('width', <?php echo $catalog_img_width; ?>);
			podgon_img();
		<?php } ?>
	});
	$('.product-list .product-thumb h4').css('height', 'initial');
	$('.product-list .product-thumb .product_buttons').css('height', 'initial');
	$('.product-list .product-thumb .caption').css('margin-left', <?php echo $catalog_img_width; ?>);
	$('.product-list .product-thumb .description_options').addClass('view_list_options');
	$('.product-list .product-thumb .description_options').css('height', 'initial');
	$('.product-layout.product-list').css('height', 'initial');
	$('#grid-view, #price-view').removeClass('active');
	$('#list-view').addClass('active');
	localStorage.setItem('display', 'list');
}
function grid_view(){
	cols = $('#column-right, #column-left').length;
	if (cols == 2) {
		$('#content .product-list, #content .product-price').attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
	} else if (cols == 1) {
		$('#content .product-list, #content .product-price').attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12');
	} else {
		$('#content .product-list, #content .product-price').attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12');
	}
	$('.product-grid .product-thumb .caption').css('margin-left', 'initial');
	$('.product-grid .product-thumb .description_options').removeClass('view_list_options');
	var product_grid_width = $('.product-grid').outerWidth();
	if (product_grid_width < 268) {
		$('.product-grid').addClass('new_line');
	} else {
		$('.product-grid').removeClass('new_line');
	}
	<?php if ($setting_catalog_all['img_slider']) { ?>
		$('.product-layout .product-thumb > .image').css('width', '100%');
		var product_grid_width = $('.product-layout .product-thumb').outerWidth();
		if (localStorage.getItem('display') == 'price') {
			if (product_grid_width < 240) {window.setTimeout(function() {podgon_img();},150)} else {podgon_img();}
		} else {
			podgon_img();
		}
	<?php } ?>
	max_height_div('.product-grid .product-thumb h4');
	max_height_div('.product-grid .product-thumb .price');
	max_height_div('.product-grid .product-thumb .product_buttons');
	<?php if (!$setting_all_settings['cat_opis_opt']) { ?>
	max_height_div('.product-grid .product-thumb .description_options');
	<?php } else { ?>
	max_height_div('.product-layout.product-grid');
	<?php } ?>
	$('#list-view, #price-view').removeClass('active');
	$('#grid-view').addClass('active');
	localStorage.setItem('display', 'grid');
}
function price_view(){
	$('#content .product-grid > .clearfix').remove();
	$('#content .product-list, #content .product-grid').attr('class', 'product-layout product-price col-xs-12');
	$('#content .product-view .cart > a').attr('data-toggle', 'none');
	$('#content .product-view .cart > a').attr('title', '');
	$('.product-price .product-thumb h4').css('height', 'initial');
	$('.product-price .product-thumb .caption').css('margin-left', 'initial');
	$('.product-price .product-thumb .product_buttons').css('height', 'initial');
	$('.product-price .product-thumb .description_options').removeClass('view_list_options');
	$('.product-price .product-thumb .description_options').css('height', 'initial');
	$('.product-layout.product-price').css('height', 'initial');
	$('#list-view, #grid-view').removeClass('active');
	$('#price-view').addClass('active');
	localStorage.setItem('display', 'price');
}
$('#list-view').click(function() {
	list_view();
});
$('#grid-view').click(function() {
	grid_view();
});
$('#price-view').click(function() {
	price_view();
});
<?php if ($setting_all_settings['opacity_cont']) { ?>
	$('html').removeClass('opacity_minus').addClass('opacity_plus');
	<?php if (!$n_progres) { ?>
		$(window).load(function() {
			$('html').removeClass('opacity_plus');
		});
	<?php } ?>
<?php } else { ?>
	$('html').removeClass('opacity_minus_products').addClass('opacity_plus_products');
<?php } ?>
<?php if ($n_progres) { ?>
	NProgress.start();
	$(window).load(function() {
		NProgress.done();
		$('html').removeClass('opacity_plus');
	});
<?php } ?>
<?php if ($sticky) { ?>
	if($(window).width() > 768) {
		$('#top3').affix({
			offset: {
				<?php if (!$setting_all_settings['all_document_width'] && $setting_all_settings['all_document_margin'] && !$setting_all_settings['all_document_h_f_width']) { ?>
					top: $('#top').outerHeight()+$('#top2').outerHeight()+$('html.common-home #menu2.inhome').outerHeight()+20
				<?php } else { ?>
					top: $('#top').outerHeight()+$('#top2').outerHeight()+$('html.common-home #menu2.inhome').outerHeight()
				<?php } ?>
			}
		});
	}
	<?php if (!$setting_all_settings['all_document_width'] && $setting_all_settings['all_document_margin'] && $setting_all_settings['all_document_h_f_width']) { ?>
		if($(window).width() > 974) {
			$('#all_document').css('margin-top', 60);
		}
	<?php } ?>
	var win_shopcart = $(window).height();
	var win_shopcart2 = $('#top').outerHeight()+$('#top2').outerHeight()+$('#top3').outerHeight();
	$('#cart .dropdown-menu').css('max-height', win_shopcart-win_shopcart2).css('overflow-y', 'auto');
	$('#top3 #menu2 .child-box').css('max-height', win_shopcart-win_shopcart2).css('overflow-y', 'auto');
<?php } ?>
$(function() {
	if (localStorage.getItem('display') == 'list') {
		list_view();
	} else if (localStorage.getItem('display') == 'price') {
		price_view();
	} else if (localStorage.getItem('display') == 'grid') {
		grid_view();
	} else {
		<?php if ($setting_catalog_all['vid_default'] == 'vid_price') { ?>
			price_view();
		<?php } else if ($setting_catalog_all['vid_default'] == 'vid_list') { ?>
			list_view();
		<?php } else if ($setting_catalog_all['vid_default'] == 'vid_grid') { ?>
			grid_view();
		<?php } ?>
	}
	podgon_fona();
	$(window).resize(podgon_fona);
});
function podgon_fona() {
	<?php if ($revtheme_product_all['option_f_auto']) { ?>
		var pr_opts_pr = $('.product-info .options_no_buy .form-group');
		pr_opts_pr.find('input:first').each(function() {
			this.checked = true;
			this.onchange();
		});
		pr_opts_pr.find('select:first').each(function() {
			this.onchange();
		});
		var pr_opts_cat = $('.description_options .product-info .form-group');
		pr_opts_cat.find('input:first').each(function() {
			this.checked = true;
			this.onchange();
		});
		pr_opts_cat.find('select:first').each(function() {
			this.onchange();
		});
	<?php } ?>
	toggle_ellipses();
	var h_top5 = $('.inhome #menu2').outerHeight();
	if (h_top5) {
		$('#top5').css('min-height', h_top5+20);
	}
	<?php if ($up_menu_height) { ?>
		var h_top4 = $('#top4').outerHeight();
		$('html.common-home #menu2.inhome').css('min-height', h_top4+50);
	<?php } ?>
	var m2inh = $('html.common-home #menu2.inhome').outerHeight();
	$('html.common-home #menu2.inhome .podmenu2').css('height', m2inh);
	var m2inhw = $('html.common-home #menu2_button').outerWidth();
	$('html.common-home #menu2.inhome .podmenu2').css('min-width', m2inhw-0.5);
	<?php if ($sticky && $up_menu_height) { ?>
		$('html.common-home #top3.affix #menu2.inhome').css('min-height', 'initial');
		var m2inh = $('html.common-home #menu2.inhome').outerHeight();
		$('html.common-home #top3.affix #menu2.inhome .podmenu2').css('height', m2inh);
		$(document).on('scroll', function(){
			var home_amazon_height = $('#top').outerHeight()+$('#top2').outerHeight()+$('html.common-home #top3 #menu2.inhome').outerHeight();
			if ($(window).scrollTop() > home_amazon_height) {
				$('html.common-home #top3.affix #menu2.inhome').css('min-height', 'initial');
				$('html.common-home #top3.affix #menu2.inhome .podmenu2').css('min-height', 'initial');
			} else {
				var h_top4 = $('#top4').outerHeight();
				$('html.common-home #top3 #menu2.inhome').css('min-height', h_top4+50);
				$('html.common-home #top3 #menu2.inhome .podmenu2').css('min-height', h_top4+50);
			}
		});
	<?php } ?>
	<?php if ($sticky) { ?>
		var h_top3 = $('#top3').outerHeight();
		<?php if (!$setting_all_settings['all_document_width'] && $setting_all_settings['all_document_h_f_width'] && $setting_all_settings['all_document_margin']) { ?>
		<?php } else { ?>
		$('.main-content').css('padding-top', h_top3+25);
		<?php } ?>
	<?php } ?>
	<?php if (($setting_all_settings['all_document_width']) || (!$setting_all_settings['all_document_width'] && $setting_all_settings['all_document_h_f_width'])) { ?>
		$('#top3').addClass('absolutpo');
	<?php } ?>
	if($(window).width() < 767) {
		grid_view();
	}
	<?php if ($image_in_ico && !$header_menu_type) { ?>
		var menu_ico_width = $('.image_in_ico_row').outerWidth();
		$('#menu .nav > li .dropdown-menu').css('width', menu_ico_width-30);
	<?php } ?>

	var product_grid_width = $('.product-layout .product-thumb').outerWidth();
	if (product_grid_width < 240) {
		$('.product-layout').addClass('new_line');
	} else {
		$('.product-layout').removeClass('new_line');
	}
	max_height_div('.product-grid .product-thumb h4');
	max_height_div('.product-grid .product-thumb .price');
	max_height_div('.product-grid .product-thumb .product_buttons');
	<?php if (!$setting_all_settings['cat_opis_opt']) { ?>
	max_height_div('.product-grid .product-thumb .description_options');
	<?php } else { ?>
	max_height_div('.product-layout.product-grid');
	setTimeout(function() {
		max_height_div('.rev_slider .owl-carousel .product-layout.col-xs-12');
	}, 50);
	<?php } ?>
}

function toggle_ellipses() {
  var ellipses1 = $('.br_ellipses');
  var howlong = $('.breadcrumb li:hidden').length;
  if ($('.breadcrumb li:hidden').length > 1) {
    ellipses1.show().css('display', 'inline');
  } else {
    ellipses1.hide();
  }
}

$(document).on('scroll', function() {
	if ($(window).scrollTop() > 100) {
		$('.scroll-top-wrapper').addClass('show');
	} else {
		$('.scroll-top-wrapper').removeClass('show');
	}
});

$('.scroll-top-wrapper').on('click', scrollToTop);
$('.popup-phone-wrapper').on('click', get_revpopup_phone);
function scrollToTop() {
	verticalOffset = typeof(verticalOffset) != 'undefined' ? verticalOffset : 0;
	element = $('body');
	offset = element.offset();
	offsetTop = offset.top;
	$('html, body').animate({scrollTop: offsetTop}, 200, 'linear');
};
function get_revpopup_notification(m_class, m_header, message) {
	if (document.body.scrollHeight > document.body.offsetHeight) {
		$('#top3.absolutpo').css('right', '8.5px');
	}
	$('.tooltip').hide();
	$.magnificPopup.open({
		removalDelay: 170,
		callbacks: {
			beforeOpen: function() {
			   this.st.mainClass = 'mfp-zoom-in';
			},
			open: function() {
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			}, 
			close: function() {
				$('body').removeClass('razmiv2');
				$('#pagefader2').fadeOut(70);
				$('#top3.absolutpo').css('right', 'initial');
			}
		},
		tLoading: '',
		items: {
			src: $('<div class="popup_notification"><div class="popup_notification_heading '+m_class+'">'+m_header+'</div><div class="popup_notification_message">'+message+'</div></div>'),
			type: 'inline'
		}
	});
}
function get_revpopup_phone() {
	if (document.body.scrollHeight > document.body.offsetHeight) {
		$('#top3.absolutpo').css('right', '8.5px');
	}
	$('.tooltip').hide();
	$.magnificPopup.open({
		removalDelay: 170,
		callbacks: {
			beforeOpen: function() {
				this.st.mainClass = 'mfp-zoom-in';
				$('.dropdown-menu.dop_contss').fadeOut(70);
			},
			open: function() {
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			}, 
			close: function() {
				$('body').removeClass('razmiv2');
				$('#pagefader2').fadeOut(70);
				$('#top3.absolutpo').css('right', 'initial');
				$('.dropdown-menu.dop_contss').css('display', '');
			}
		},
		tLoading: '',
		items: {
			src: 'index.php?route=revolution/revpopupphone',
			type: 'ajax'
		}
	});
}
function get_revpopup_view(product_id) {
	if (document.body.scrollHeight > document.body.offsetHeight) {
		$('#top3.absolutpo').css('right', '8.5px');
	}
	$('.tooltip').hide();
	$.magnificPopup.open({
		removalDelay: 170,
		callbacks: {
			beforeOpen: function() {
			   this.st.mainClass = 'mfp-zoom-in';
			},
			open: function() {
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			},
			close: function() {
				$('body').removeClass('razmiv2');
				$('#pagefader2').fadeOut(70);
				$('#top3.absolutpo').css('right', 'initial');
			}
		},
		tLoading: '',
		items: {
			src: 'index.php?route=revolution/revpopupview&product_id='+product_id,
			type: 'ajax'
		}
	});
}
function get_revpopup_purchase(product_id) {
	if (document.body.scrollHeight > document.body.offsetHeight) {
		$('#top3.absolutpo').css('right', '8.5px');
	}
	$('.tooltip').hide();
	$.magnificPopup.open({
		removalDelay: 170,
		callbacks: {
			beforeOpen: function() {
			   this.st.mainClass = 'mfp-zoom-in';
			},
			open: function() {
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			}, 
			close: function() {
				$('body').removeClass('razmiv2');
				$('#pagefader2').fadeOut(70);
				$('#top3.absolutpo').css('right', 'initial');
			}
		},
		tLoading: '',
		items: {
			src: 'index.php?route=revolution/revpopuporder&product_id='+product_id,
			type: 'ajax'
		}
	});
}
function get_revpopup_cartquick() {
	$('#cart .dropdown-menu').css('display', 'none');
	if (document.body.scrollHeight > document.body.offsetHeight) {
		$('#top3.absolutpo').css('right', '8.5px');
	}
	$('.tooltip').hide();
	$.magnificPopup.open({
		removalDelay: 170,
		callbacks: {
			beforeOpen: function() {
			   this.st.mainClass = 'mfp-zoom-in';
			},
			open: function() {
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			}, 
			close: function() {
				$('body').removeClass('razmiv2');
				$('#pagefader2').fadeOut(70);
				$('#top3.absolutpo').css('right', 'initial');
				$('#cart .dropdown-menu').css('display', '');
			}
		},
		tLoading: '',
		items: {
			src: 'index.php?route=revolution/revpopupcartquick',
			type: 'ajax'
		}
	});
}
function get_revpopup_cart( product_id, action, quantity, block_id ) {
	$('.tooltip').hide();
	quantity = typeof(quantity) != 'undefined' ? quantity : 1;
	if ( action == "catalog" ) {
		data = $('.products_category .product_'+product_id+' .options input[type=\'text\'], .products_category .product_'+product_id+' .options input[type=\'hidden\'], .products_category .product_'+product_id+' .options input[type=\'radio\']:checked, .products_category .product_'+product_id+' .options input[type=\'checkbox\']:checked, .products_category .product_'+product_id+' .options select');
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: data.serialize() + '&product_id=' + product_id + '&quantity=' + quantity,
			dataType: 'json',
			success: function( json ) {
				$('.alert, .text-danger').remove();
				$('.form-group').removeClass('has-error');
				$('.success, .warning, .attention, information, .error').remove();
				<?php if (!$description_options['options_in_cat']) { ?>
				if ( json['redirect'] ) {
					location = json['redirect'];
				}
				<?php } else { ?>
				if (localStorage.getItem('display') == 'price' || block_id) {
					if ( json['redirect'] ) {
						location = json['redirect'];
					}
				<?php if (!$description_options['options_in_grid']) { ?>
				} else if (localStorage.getItem('display') == 'grid') {
					if ( json['redirect'] ) {
						location = json['redirect'];
					}
				<?php } ?>
				} else {
					$('.products_category .form-group.required').removeClass('opt_required');
					if (json['error']) {
						$('body').removeClass('razmiv2');
						$('#pagefader2').fadeOut(70);
						$('#top3.absolutpo').css('right', 'initial');
						if (json['error']['option']) {
							for (i in json['error']['option']) {
								$('.products_category #input-option' + i).parent().addClass('opt_required');
							}
						}
					}
				}
				<?php } ?>
				if ( json['success'] ) {
					<?php if ($revtheme_header_cart['cart_vspl']) { ?>
						if (document.body.scrollHeight > document.body.offsetHeight) {
							$('#top3.absolutpo').css('right', '8.5px');
						}
						$.magnificPopup.open({
						removalDelay: 170,
						callbacks: {
							beforeOpen: function() {
							   this.st.mainClass = 'mfp-zoom-in';
							},
							close: function() {
								$('body').removeClass('razmiv2');
								$('#pagefader2').fadeOut(70);
								$('#top3.absolutpo').css('right', 'initial');
							}
						},
						tLoading: '',
						items: {
							src: 'index.php?route=revolution/revpopupcart',
							type: 'ajax'
						}
						});
					<?php } else { ?>
						<?php if ($setting_catalog_all['img_slider']) { ?>
						tmp_img = $('.products_category .product_'+product_id+' .image .owl-item:first-child img');
						<?php } else { ?>
						tmp_img = $('.products_category .product_'+product_id+' .image img');
						<?php } ?>
						$(tmp_img)
							.clone()
							.css({width : $('.product-price .image').outerWidth(), 'position' : 'absolute', 'z-index' : '999', top: $('.products_category .product_'+product_id+' .image img').offset().top, left: $('.products_category .product_'+product_id+' .image img').offset().left})
							.appendTo("body")
							.animate({opacity: 0.3,
								left: $("#top3 #cart").offset()['left'],
								top: $("#top3 #cart").offset()['top']+15,
								width: 10}, 800, function() {
								$(this).remove();
							});
					<?php } ?>
					$('#cart-total' ).html(json['total']);
					$('#cart-total-popup').html(json['total']);
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
					<?php if ($setting_catalog_all['product_in_cart']) { ?>
						setTimeout(function() {
							$('.product-thumb.product_'+ product_id +' .image .pr_in_cart_i').remove();
							$('.product-thumb.product_'+ product_id +' .image').append('<div class="pr_in_cart_i"><i class="fa fa-check"></i></div>');
						}, 300);
					<?php } ?>
				}
			}
		});
	}
	if ( action == "catalog_mod" ) {
		data = $('.products_category .product_'+product_id+' .options input[type=\'text\'], .products_category .product_'+product_id+' .options input[type=\'hidden\'], .products_category .product_'+product_id+' .options input[type=\'radio\']:checked, .products_category .product_'+product_id+' .options input[type=\'checkbox\']:checked, .products_category .product_'+product_id+' .options select');
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: data.serialize() + '&product_id=' + product_id + '&quantity=' + quantity,
			dataType: 'json',
			success: function( json ) {
				$('.alert, .text-danger').remove();
				$('.form-group').removeClass('has-error');
				$('.success, .warning, .attention, information, .error').remove();

				if ( json['redirect'] ) {
					location = json['redirect'];
				}
				
				if ( json['success'] ) {
					<?php if ($revtheme_header_cart['cart_vspl']) { ?>
						if (document.body.scrollHeight > document.body.offsetHeight) {
							$('#top3.absolutpo').css('right', '8.5px');
						}
						$.magnificPopup.open({
						removalDelay: 170,
						callbacks: {
							beforeOpen: function() {
							   this.st.mainClass = 'mfp-zoom-in';
							},
							close: function() {
								$('body').removeClass('razmiv2');
								$('#pagefader2').fadeOut(70);
								$('#top3.absolutpo').css('right', 'initial');
							}
						},
						tLoading: '',
						items: {
							src: 'index.php?route=revolution/revpopupcart',
							type: 'ajax'
						}
						});
					<?php } else { ?>
						tmp_img = $('.products_category .product_'+product_id+' .image img');
						$(tmp_img)
							.clone()
							.css({width : $('.products_category .product_'+product_id+' .image img').outerWidth(), 'position' : 'absolute', 'z-index' : '999', top: $('.products_category .product_'+product_id+' .image img').offset().top, left: $('.products_category .product_'+product_id+' .image img').offset().left})
							.appendTo("body")
							.animate({opacity: 0.3,
								left: $("#top3 #cart").offset()['left'],
								top: $("#top3 #cart").offset()['top']+15,
								width: 10}, 800, function() {
								$(this).remove();
							});
					<?php } ?>
					$('#cart-total' ).html(json['total']);
					$('#cart-total-popup').html(json['total']);
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
					<?php if ($setting_catalog_all['product_in_cart']) { ?>
						setTimeout(function() {
							$('.product-thumb.product_'+ product_id +' .image .pr_in_cart_i').remove();
							$('.product-thumb.product_'+ product_id +' .image').append('<div class="pr_in_cart_i"><i class="fa fa-check"></i></div>');
						}, 300);
					<?php } ?>
				}
			}
		});
	}
	if ( action == "product" ) {
		data = $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: data.serialize() + '&product_id=' + product_id + '&quantity=' + quantity,
			dataType: 'json',
			<?php if ($revtheme_header_cart['cart_vspl']) { ?>
			beforeSend: function(){
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			},
			<?php } ?>
			success: function( json ) {
				$('.alert, .text-danger').remove();
				$('.form-group').removeClass('has-error');
				$('.success, .warning, .attention, information, .error').remove();
				if (json['error']) {
					$('body').removeClass('razmiv2');
					$('#pagefader2').fadeOut(70);
					$('#top3.absolutpo').css('right', 'initial');
					if (json['error']['option']) {
						for (i in json['error']['option']) {
							$('#input-option' + i).before('<span class="error bg-danger">' + json['error']['option'][i] + '</span>');
						}
					}
				}
				if ( json['success'] ) {
					<?php if ($revtheme_header_cart['cart_vspl']) { ?>
						if (document.body.scrollHeight > document.body.offsetHeight) {
							$('#top3.absolutpo').css('right', '8.5px');
						}
						$.magnificPopup.open({
							removalDelay: 170,
							callbacks: {
								beforeOpen: function() {
								   this.st.mainClass = 'mfp-zoom-in';
								},
								close: function() {
									$('body').removeClass('razmiv2');
									$('#pagefader2').fadeOut(70);
									$('#top3.absolutpo').css('right', 'initial');
								}
							},
							tLoading: '',
							items: {
								src: 'index.php?route=revolution/revpopupcart',
								type: 'ajax'
							}
						});
					<?php } else { ?>
						tmp_img = $('.main-image img')
						$(tmp_img)
							.clone()
							.css({'position' : 'absolute', 'z-index' : '999', top: $('.main-image img').offset().top, left: $('.main-image img').offset().left})
							.appendTo("body")
							.animate({opacity: 0.3,
								left: $("#top3 #cart").offset()['left'],
								top: $("#top3 #cart").offset()['top']+15,
								width: 10}, 800, function() {
								$(this).remove();
							});
					<?php } ?>
					$('#cart-total' ).html(json['total']);
					$('#cart-total-popup').html(json['total']);
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
					<?php if ($setting_catalog_all['product_in_cart']) { ?>
						setTimeout(function() {
							$('.product-thumb.product_'+ product_id +' .image .pr_in_cart_i').remove();
							$('.product-thumb.product_'+ product_id +' .image').append('<div class="pr_in_cart_i"><i class="fa fa-check"></i></div>');
						}, 300);
					<?php } ?>
				}
			}
		});
	}
	if ( action == "popup_product" ) {
		data = $('#popup-view-wrapper .product-info input[type=\'text\'], #popup-view-wrapper .product-info input[type=\'hidden\'], #popup-view-wrapper .product-info input[type=\'radio\']:checked, #popup-view-wrapper .product-info input[type=\'checkbox\']:checked, #popup-view-wrapper .product-info select, #popup-view-wrapper .product-info textarea');
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: data.serialize() + '&product_id=' + product_id + '&quantity=' + quantity,
			dataType: 'json',
			<?php if ($revtheme_header_cart['cart_vspl']) { ?>
			beforeSend: function(){
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			},
			<?php } ?>
			success: function( json ) {
				$('.alert, .text-danger').remove();
				$('.form-group').removeClass('has-error');
				$('.success, .warning, .attention, information, .error').remove();			
				if (json['error']) {
					$('body').removeClass('razmiv2');
					$('#pagefader2').fadeOut(70);
					$('#top3.absolutpo').css('right', 'initial');
					if (json['error']['option']) {
						for (i in json['error']['option']) {
							$('#input-option' + i).before('<span class="error bg-danger">' + json['error']['option'][i] + '</span>');
						}
					}
				}
				if ( json['success'] ) {
					<?php if ($revtheme_header_cart['cart_vspl']) { ?>
						if (document.body.scrollHeight > document.body.offsetHeight) {
							$('#top3.absolutpo').css('right', '8.5px');
						}
						$.magnificPopup.open({
							removalDelay: 170,
							callbacks: {
								beforeOpen: function() {
								   this.st.mainClass = 'mfp-zoom-in';
								},
								close: function() {
									$('body').removeClass('razmiv2');
									$('#pagefader2').fadeOut(70);
									$('#top3.absolutpo').css('right', 'initial');
								}
							},
							tLoading: '',
							items: {
								src: 'index.php?route=revolution/revpopupcart',
								type: 'ajax'
							}
						});
					<?php } else { ?>
						$.magnificPopup.close();
					<?php } ?>	
					$('#cart-total' ).html(json['total']);
					$('#cart-total-popup').html(json['total']);
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
					<?php if ($setting_catalog_all['product_in_cart']) { ?>
						setTimeout(function() {
							$('.product-thumb.product_'+ product_id +' .image .pr_in_cart_i').remove();
							$('.product-thumb.product_'+ product_id +' .image').append('<div class="pr_in_cart_i"><i class="fa fa-check"></i></div>');
						}, 300);
					<?php } ?>
				}
			}
		});
	}
	if ( action == "show_cart" ) {
		if (document.body.scrollHeight > document.body.offsetHeight) {
			$('#top3.absolutpo').css('right', '8.5px');
		}
		$.magnificPopup.open({
			removalDelay: 170,
			callbacks: {
				beforeOpen: function() {
				   this.st.mainClass = 'mfp-zoom-in';
				},
				open: function() {
					$('body').addClass('razmiv2');
					$('#pagefader2').fadeIn(70);
				}, 
				close: function() {
					$('body').removeClass('razmiv2');
					$('#pagefader2').fadeOut(70);
					$('#top3.absolutpo').css('right', 'initial');
				}
			},
			tLoading: '',
			items: {
				src: 'index.php?route=revolution/revpopupcart',
				type: 'ajax'
			}
		});
	}
	if ( action == "redirect_cart" ) {
		  window.location.href = "index.php?route=checkout/checkout"
	}
	if ( action == "module" ) {
		quantity = typeof(quantity) != 'undefined' ? quantity : 1;
		data = $('#'+block_id+' .product_'+product_id+' .options input[type=\'text\'], #'+block_id+' .product_'+product_id+' .options input[type=\'hidden\'], #'+block_id+' .product_'+product_id+' .options input[type=\'radio\']:checked, #'+block_id+' .product_'+product_id+' .options input[type=\'checkbox\']:checked, #'+block_id+' .product_'+product_id+' .options select');
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: data.serialize() + '&product_id=' + product_id + '&quantity=' + quantity,
			dataType: 'json',
			success: function( json ) {
				$('.alert, .text-danger').remove();
				$('.form-group').removeClass('has-error');
				$('.success, .warning, .attention, information, .error').remove();
				<?php if (!$description_options['options_in_cat'] || !$description_options['options_in_grid']) { ?>
				if ( json['redirect'] ) {
					location = json['redirect'];
				}
				<?php } else { ?>
				$('#'+block_id+' .form-group.required').removeClass('opt_required');
				if (json['error']) {
					$('body').removeClass('razmiv2');
					$('#pagefader2').fadeOut(70);
					$('#top3.absolutpo').css('right', 'initial');
					if (json['error']['option']) {
						for (i in json['error']['option']) {
							$('#'+block_id+' #input-option' + i).parent().addClass('opt_required');
						}
					}
				}
				<?php } ?>
				if ( json['success'] ) {
					<?php if ($revtheme_header_cart['cart_vspl']) { ?>
						if (document.body.scrollHeight > document.body.offsetHeight) {
							$('#top3.absolutpo').css('right', '8.5px');
						}
						$.magnificPopup.open({
						removalDelay: 170,
						callbacks: {
							beforeOpen: function() {
							   this.st.mainClass = 'mfp-zoom-in';
							},
							close: function() {
								$('body').removeClass('razmiv2');
								$('#pagefader2').fadeOut(70);
								$('#top3.absolutpo').css('right', 'initial');
							}
						},
						tLoading: '',
						items: {
							src: 'index.php?route=revolution/revpopupcart',
							type: 'ajax'
						}
						});
					<?php } else { ?>
						<?php if ($setting_catalog_all['img_slider']) { ?>
						tmp_img = $('#'+block_id+' .product_'+product_id+' .image .owl-item:first-child img');
						<?php } else { ?>
						tmp_img = $('#'+block_id+' .product_'+product_id+' .image img');
						<?php } ?>
						$(tmp_img)
							.clone()
							.css({'position' : 'absolute', 'z-index' : '999', top: $('#'+block_id+' .product_'+product_id+' .image img').offset().top, left: $('#'+block_id+' .product_'+product_id+' .image img').offset().left})
							.appendTo("body")
							.animate({opacity: 0.3,
								left: $("#top3 #cart").offset()['left'],
								top: $("#top3 #cart").offset()['top']+15,
								width: 10}, 800, function() {
								$(this).remove();
							});
					<?php } ?>
					$('#cart-total' ).html(json['total']);
					$('#cart-total-popup').html(json['total']);
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
					<?php if ($setting_catalog_all['product_in_cart']) { ?>
						setTimeout(function() {
							$('.product-thumb.product_'+ product_id +' .image .pr_in_cart_i').remove();
							$('.product-thumb.product_'+ product_id +' .image').append('<div class="pr_in_cart_i"><i class="fa fa-check"></i></div>');
						}, 300);
					<?php } ?>
				}
			}
		});
	}
	if ( action == "module_in_product" ) {
		quantity = typeof(quantity) != 'undefined' ? quantity : 1;
		data = $('#'+block_id+' .product_'+product_id+' .options input[type=\'text\'], #'+block_id+' .product_'+product_id+' .options input[type=\'hidden\'], #'+block_id+' .product_'+product_id+' .options input[type=\'radio\']:checked, #'+block_id+' .product_'+product_id+' .options input[type=\'checkbox\']:checked, #'+block_id+' .product_'+product_id+' .options select');
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: data.serialize() + '&product_id=' + product_id + '&quantity=' + quantity,
			dataType: 'json',
			<?php if ($revtheme_header_cart['cart_vspl']) { ?>
			beforeSend: function(){
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			},
			<?php } ?>
			success: function( json ) {
				$('.alert, .text-danger').remove();
				$('.form-group').removeClass('has-error');
				$('.success, .warning, .attention, information, .error').remove();
				<?php if (!$description_options['options_in_cat'] || !$description_options['options_in_grid']) { ?>
				if ( json['redirect'] ) {
					location = json['redirect'];
				}
				<?php } else { ?>
				$('#'+block_id+' .form-group.required').removeClass('opt_required');
				if (json['error']) {
					$('body').removeClass('razmiv2');
					$('#pagefader2').fadeOut(70);
					$('#top3.absolutpo').css('right', 'initial');
					if (json['error']['option']) {
						for (i in json['error']['option']) {
							$('#'+block_id+' #input-option' + i).parent().addClass('opt_required');
						}
					}
				}
				<?php } ?>
				if ( json['success'] ) {
					<?php if ($revtheme_header_cart['cart_vspl']) { ?>
						if (document.body.scrollHeight > document.body.offsetHeight) {
							$('#top3.absolutpo').css('right', '8.5px');
						}
						$.magnificPopup.open({
						removalDelay: 170,
						callbacks: {
							beforeOpen: function() {
							   this.st.mainClass = 'mfp-zoom-in';
							},
							close: function() {
								$('body').removeClass('razmiv2');
								$('#pagefader2').fadeOut(70);
								$('#top3.absolutpo').css('right', 'initial');
							}
						},
						tLoading: '',
						items: {
							src: 'index.php?route=revolution/revpopupcart',
							type: 'ajax'
						}
						});
					<?php } else { ?>
						<?php if ($setting_catalog_all['img_slider']) { ?>
						tmp_img = $('#'+block_id+' .product_'+product_id+' .image .owl-item:first-child img');
						<?php } else { ?>
						tmp_img = $('#'+block_id+' .product_'+product_id+' .image img');
						<?php } ?>
						$(tmp_img)
							.clone()
							.css({'position' : 'absolute', 'z-index' : '999', top: $('#'+block_id+' .product_'+product_id+' .image img').offset().top, left: $('#'+block_id+' .product_'+product_id+' .image img').offset().left})
							.appendTo("body")
							.animate({opacity: 0.3,
								left: $("#top3 #cart").offset()['left'],
								top: $("#top3 #cart").offset()['top']+15,
								width: 10}, 800, function() {
								$(this).remove();
							});
					<?php } ?>
					$('#cart-total' ).html(json['total']);
					$('#cart-total-popup').html(json['total']);
					$('#cart > ul').load('index.php?route=common/cart/info ul li');
					<?php if ($setting_catalog_all['product_in_cart']) { ?>
						setTimeout(function() {
							$('.product-thumb.product_'+ product_id +' .image .pr_in_cart_i').remove();
							$('.product-thumb.product_'+ product_id +' .image').append('<div class="pr_in_cart_i"><i class="fa fa-check"></i></div>');
						}, 300);
					<?php } ?>
				}
			}
		});
	}
}
function get_revpopup_cart_option (opt_id, option, quantity, product_id) {
	$('.tooltip').hide();
	$('.options_buy .pro_'+option+' input[name=\'option['+opt_id+']\']').val(option);
	data = $('.product-info .options_buy .pro_'+option+' input[type=\'text\'], .product-info .options_buy .pro_'+option+' input[type=\'hidden\'], .product-info .options_buy .pro_'+option+' input[type=\'radio\']:checked, .product-info .options_buy .pro_'+option+' input[type=\'checkbox\']:checked, .product-info .options_buy .pro_'+option+' select, .product-info .options_buy .pro_'+option+' textarea');
    $.ajax({
        url: 'index.php?route=checkout/cart/add',
        type: 'post',
		data: data.serialize() + '&product_id=' + product_id + '&quantity=' + quantity,
        dataType: 'json',
		<?php if ($revtheme_header_cart['cart_vspl']) { ?>
			beforeSend: function(){
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			},
		<?php } ?>
        success: function( json ) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');
			$('.success, .warning, .attention, information, .error').remove();
			if (json['error']) {
				$('body').removeClass('razmiv2');
				$('#pagefader2').fadeOut(70);
				$('#top3.absolutpo').css('right', 'initial');
			}
			if ( json['success'] ) {
				<?php if ($revtheme_header_cart['cart_vspl']) { ?>
					if (document.body.scrollHeight > document.body.offsetHeight) {
						$('#top3.absolutpo').css('right', '8.5px');
					}
					$.magnificPopup.open({
						removalDelay: 170,
						callbacks: {
							beforeOpen: function() {
							   this.st.mainClass = 'mfp-zoom-in';
							},
							close: function() {
								$('body').removeClass('razmiv2');
								$('#pagefader2').fadeOut(70);
								$('#top3.absolutpo').css('right', 'initial');
							}
						},
						tLoading: '',
						items: {
							src: 'index.php?route=revolution/revpopupcart',
							type: 'ajax'
						}
					});
				<?php } else { ?>
					tmp_img = $('.main-image img')
					$(tmp_img)
						.clone()
						.css({'position' : 'absolute', 'z-index' : '999', top: $('.main-image img').offset().top, left: $('.main-image img').offset().left})
						.appendTo("body")
						.animate({opacity: 0.3,
							left: $("#top3 #cart").offset()['left'],
							top: $("#top3 #cart").offset()['top']+15,
							width: 10}, 800, function() {
							$(this).remove();
						});
				<?php } ?>
				$('#cart-total' ).html(json['total']);
				$('#cart-total-popup').html(json['total']);
				$('#cart > ul').load('index.php?route=common/cart/info ul li');
				<?php if ($setting_catalog_all['product_in_cart']) { ?>
					setTimeout(function() {
						$('.product-thumb.product_'+ product_id +' .image .pr_in_cart_i').remove();
						$('.product-thumb.product_'+ product_id +' .image').append('<div class="pr_in_cart_i"><i class="fa fa-check"></i></div>');
					}, 300);
				<?php } ?>
			}
		}
    });
}
function get_revpopup_login() {
	if (document.body.scrollHeight > document.body.offsetHeight) {
		$('#top3.absolutpo').css('right', '8.5px');
	}
	$('.tooltip').hide();
	$.magnificPopup.open({
		removalDelay: 170,
		callbacks: {
			beforeOpen: function() {
			   this.st.mainClass = 'mfp-zoom-in';
			},
			open: function() {
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			}, 
			close: function() {
				$('body').removeClass('razmiv2');
				$('#pagefader2').fadeOut(70);
				$('#top3.absolutpo').css('right', 'initial');
			}
		},
		tLoading: '',
		items: {
			src: 'index.php?route=revolution/revpopuplogin',
			type: 'ajax'
		}
	});
}
$(document).on('click', '.tel .dropdown-menu', function (e) {
	$(this).hasClass('dropdown-menu-right') && e.stopPropagation();
});

<?php if ($modal_status) { ?>
	function getModalButtons() {
		<?php if ($modal_buttons) { ?>
			return modal = true;
		<?php } else { ?>
			return modal = false;
		<?php } ?>
	}
	function getCookie(name) {
	var matches = document.cookie.match(new RegExp(
		"(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
	));
	return matches ? decodeURIComponent(matches[1]) : undefined;
	}
	if (!getCookie('revmodal')) {
		$(document).ready(setTimeout(function() {
			if (document.body.scrollHeight > document.body.offsetHeight) {
				$('#top3.absolutpo').css('right', '8.5px');
			}
			$.magnificPopup.open({
				removalDelay: 170,
				modal: getModalButtons(),
				callbacks: {
					beforeOpen: function() {
						this.st.mainClass = 'mfp-zoom-in';
						$('.dropdown-menu.dop_contss').fadeOut(70);
					},
					open: function() {
						$('body').addClass('razmiv2');
						$('#pagefader2').fadeIn(70);
					}, 
					close: function() {
						$('body').removeClass('razmiv2');
						$('#pagefader2').fadeOut(70);
						$('#top3.absolutpo').css('right', 'initial');
						$('.dropdown-menu.dop_contss').css('display', '');
					}
				},
				tLoading: '',
				items: {
					src: 'index.php?route=revolution/revmodal',
					type: 'ajax'
				}
			});
			$(document).on('click', '.popup-modal-dismiss', function (e) {
				e.preventDefault();
				$.magnificPopup.close();
			});
		}, 1000));
	}
<?php } ?>

<?php if (!$revtheme_filter['status'] || $revfilter_route) { ?>
	<?php if ($setting_catalog_all['pagination'] != 'standart') { ?>
		<?php if ($setting_catalog_all['pagination'] == 'standart_knopka') { ?>
		var button_more = true; var pagination_exist = true; var autoscroll = false;
		<?php } else if ($setting_catalog_all['pagination'] == 'auto') { ?>
		var button_more = false; var pagination_exist = true; var autoscroll = true;
		<?php } else { ?>
		var button_more = true; var pagination_exist = false; var autoscroll = false;
		<?php } ?>
		var window_height = 0; var product_block_offset = 0; var product_block = '.row > .product-layout'; var pages_count = 0; var pages = [];
		function gettNextProductPage(pages, pages_count) {
			if (pages_count >= pages.length) return;
			masked('.row > .product-layout > .product-thumb', true);
			$.ajax({
				url:pages[pages_count], 
				type:"GET", 
				data:'',
				beforeSend: function(){
					$('.load_more .fa-refresh').addClass('fa-spin');
				},
				success:function (data) {
					$data = $(data);
					masked('.row > .product-layout > .product-thumb', false);
					$data.find('.row > .product-layout > .product-thumb').addClass('op_dblock1');
					if ($data) {
						if (localStorage.getItem('display') == 'list') {
							$(product_block).parent().append($data.find('.product-layout').parent().html());
							list_view();
							if (product_block == '.product-grid') {grid_view();};
						} else if (localStorage.getItem('display') == 'price') {
							$(product_block).parent().append($data.find('.product-layout').parent().html());
							price_view();
						} else {
							$(product_block).parent().append($data.find('.product-layout').parent().html());
							grid_view();
						}
						if (pagination_exist) {
							$('.pagination').html($data.find('.pagination'));
						}
						$('.load_more .fa-refresh').removeClass('fa-spin').css('hover');
						if (pages_count+1 >= pages.length) {$('.load_more').hide();};
						setTimeout(function() {
							$('.row > .product-layout > .product-thumb').removeClass('op_dblock1').addClass('op_dblock2');
						}, 220)
					}
				}
			});
		}
		$(document).ready(function(){
			window_height = $(window).height();
			var button_more_block = $('#load_more').html();
			if ($(product_block).length > 0) {
				product_block_offset = $(product_block).offset().top;
				var href = $('.pagination').find('li:last a').attr('href');
				$('.pagination').each(function(){
					if (href) {
						TotalPages = href.substring(href.indexOf("page=")+5);
						First_index = $(this).find('li.active span').html();
						i = parseInt(First_index) + 1;
						while (i <= TotalPages) {
							pages.push(href.substring(0,href.indexOf("page=")+5) + i);
							i++;
						}
					}		
				});	
				if (button_more && href) {
					$('.pagination').parent().parent().before(button_more_block);
					if (!pagination_exist) {
						$('.pagpages').addClass('dnone');
					}
					$(".load_more").click(function(event) {
						event.preventDefault();
						gettNextProductPage(pages, pages_count);
						pages_count++;
						if (pages_count > 0) {
							var $next = $(".pagpages .pagination li.active").next("li").children("a");
							if ($next.length == 0) return;
							$.get($next.attr("href"), function(data) {
								$data = $(data);
								var pag = $data.find(".pagpages > *");
								var pag2 = pag.filter(".text-right").html();
								var pag_ch =  pag2.substr(0,pag2.indexOf(" по")).replace(/[^\d.]/ig, '');
								pag2 = pag2.replace(pag_ch, "1");
								$(".pagpages").html(pag);
								$(".pagpages .text-right").html(pag2);
								$(".owlproduct").not(".owl-theme").owlCarousel({
									beforeInit: true,
									items: 1,
									singleItem: true,
									mouseDrag: false,
									autoPlay: false,
									navigation: true,
									navigationText: ['<i class="fa fa-chevron-left fa-3x"></i>', '<i class="fa fa-chevron-right fa-3x"></i>'],
									pagination: false
								});
							}, "html")
						}
					});
				} else if (autoscroll) {
					$('.pagpages .pagination').hide();
					autoscroll_loading = false;
					$(window).scroll(function() {
						if(inZone('.pagpages') && !autoscroll_loading) {
							autoscroll_loading = true;
							setTimeout(function() {
								gettNextProductPage(pages, pages_count);
								pages_count++;
								if (pages_count > 0) {
									var $next = $(".pagpages .pagination li.active").next("li").children("a");
									if ($next.length == 0) return;
									$.get($next.attr("href"), function(data) {
										$data = $(data);
										var pag = $data.find(".pagpages > *");
										var pag2 = pag.filter(".text-right").html();
										var pag_ch =  pag2.substr(0,pag2.indexOf(" по")).replace(/[^\d.]/ig, '');
										pag2 = pag2.replace(pag_ch, "1");
										$(".pagpages .text-right").html(pag2);
										$(".owlproduct").not(".owl-theme").owlCarousel({
											beforeInit: true,
											items: 1,
											singleItem: true,
											mouseDrag: false,
											autoPlay: false,
											navigation: true,
											navigationText: ['<i class="fa fa-chevron-left fa-3x"></i>', '<i class="fa fa-chevron-right fa-3x"></i>'],
											pagination: false
										});
										autoscroll_loading = false;
									}, "html")
								}
							}, 250);
						}
					});
				}
			}
		});
		function inZone(el){
			if($(el).length) {
				var scrollTop = $(window).scrollTop();
				var windowHeight = $(window).height();
				var offset = $(el).offset();
				if(scrollTop <= offset.top && ($(el).height() + offset.top) < (scrollTop + windowHeight))
				return true;
			};
			return false;
		}
	<?php } ?>
<?php } ?>
<?php if ($f_map) { ?>
	<?php if (!$yamap) { ?>
		ymaps.ready(init_map);
		function init_map(){
			var address = '<?php echo $address; ?>';
			var geocoder = ymaps.geocode(address);
			geocoder.then(
				function (res) {
					var coordinates = res.geoObjects.get(0).geometry.getCoordinates();
					var map = new ymaps.Map("yamap", {
						center: coordinates,
						zoom: 15,
						controls: [
							'typeSelector',
							'fullscreenControl'
						]
					});			
					map.geoObjects.add(new ymaps.Placemark(
						coordinates,
						{
							'hintContent': address,
							'balloonContent': '<?php echo $store; ?>'
						},
						{
							'preset': 'islands#redDotIcon'
						}
					));
				}
			);
		}
	<?php } ?>
	$(document).ready(function(){
		var height_f_conts = $('#map-wrapper .contact-info').outerHeight();
		$('#map-wrapper #yamap').css('height', height_f_conts);
		$('#map-wrapper #yamap ymaps').css('height', height_f_conts);
		$('#map-wrapper .contact-info').css('position', 'absolute');
	});
<?php } ?>
function get_revpopup_predzakaz(product_id) {
	if (document.body.scrollHeight > document.body.offsetHeight) {
		$('#top3.absolutpo').css('right', '8.5px');
	}
	$.magnificPopup.open({
		removalDelay: 170,
		callbacks: {
			beforeOpen: function() {
			   this.st.mainClass = 'mfp-zoom-in';
			},
			open: function() {
				$('body').addClass('razmiv2');
				$('#pagefader2').fadeIn(70);
			}, 
			close: function() {
				$('body').removeClass('razmiv2');
				$('#pagefader2').fadeOut(70);
				$('#top3.absolutpo').css('right', 'initial');
			}
		},
		tLoading: '',
		items: {
			src: 'index.php?route=revolution/revpopuppredzakaz&product_id='+product_id,
			type: 'ajax'
		}
	});
}
<?php if ($revtheme_filter['status']) { ?>
	(function($){
		$.fn.revFilter = function(f) {
			var g = this.selector;
			var h = $(g).attr('action');
			$(document).ready(function() {
				init_revfilter();
			});
			$(document).on('submit', g, function(e) {
				e.preventDefault();
				var a = $(this).serialize();
				loadProds(h,a,f.revload);
			});
			$(document).on('click', '#'+f.reset_id, function(e) {
				$(g+' input, '+g+' select').not('[type=hidden]').each(function(a) {
					if ($(this).hasClass('irs-hidden-input')) {
						var b = $(this).data('ionRangeSlider');
						b.reset();
						}
					if ($(this).is(':checkbox') || $(this).is(':radio')) {
						$(this).removeAttr("checked");
					} else {
						$(this).val('');
					}
				});
				var c = $(g).serialize();
				loadProds(h,c,f.revload);
			});
			if (f.mode == 'auto') {
				$(document).on('change', g+' input:not([type=hidden]):not(.irs-hidden-input), '+g+' select', function() {
					$(g).submit();
				})
			}
			function init_revfilter() {
				<?php if ($setting_catalog_all['pagination'] == 'standart_knopka' || $setting_catalog_all['pagination'] == 'knopka') { ?>
					var a = $('#load_more').html();
					$('.pagination').parent().parent().before(a);
				<?php } ?>
				<?php if ($setting_catalog_all['pagination'] == 'knopka') { ?>
					$('.pagpages').addClass('dnone');
				<?php } ?>
				$('#input-sort').removeAttr('onchange');
				$('#input-limit').removeAttr('onchange');
				$(f.selector).addClass('revcontainer');
				if (localStorage.getItem('display') == 'list') {
					list_view();
				} else if (localStorage.getItem('display') == 'price') {
					price_view();
				} else if (localStorage.getItem('display') == 'grid') {
					grid_view();
				} else {
					<?php if ($setting_catalog_all['vid_default'] == 'vid_price') { ?>
						price_view();
					<?php } else if ($setting_catalog_all['vid_default'] == 'vid_list') { ?>
						list_view();
					<?php } else if ($setting_catalog_all['vid_default'] == 'vid_grid') { ?>
						grid_view();
					<?php } ?>
				}
				<?php if ($setting_catalog_all['img_slider']) { ?>
				$('.owlproduct').owlCarousel( {
					beforeInit: true,
					items: 1,
					singleItem: true,
					mouseDrag: false,
					autoPlay: false,
					navigation: true,
					navigationText: ['<i class="fa fa-chevron-left fa-3x"></i>','<i class="fa fa-chevron-right fa-3x"></i>'],
					pagination: false
				});
				<?php if (!$setting_catalog_all['chislo_ryad']) { ?>
					if (localStorage.getItem('display')=='grid') {
						$('.product-thumb > .image').css('width','initial');
						podgon_img();
					}
				<?php } ?>
				<?php } else { ?>
					$('.owl-carousel.owlproduct').remove();
				<?php } ?>
				podgon_fona();
				$(window).resize(podgon_fona);
			}
			function loadProds(c,d,e) {
				d = d || '';
				e = e || false;
				$.ajax({
					url: c,
					type: 'get',
					data: d,
					processData: false,
					dataType: e ? 'json' : 'html',
					beforeSend: function() {
						$(g+' button').button('loading');
						masked('.products_category > .product-layout > .product-thumb',true);
					},
					success: function(a) {
						var b = $.parseHTML((e && (typeof a.html != 'undefined')) ? a.html : a);
						$(f.selector).children().remove();
						$(f.selector).append($(b).find(f.selector).children());
						init_revfilter();
					},
					complete: function() {
						setTimeout(function() {
							masked('.products_category > .product-layout > .product-thumb',false);
							autoscroll_loading = false;
							$(g+' button').button('reset');
						},250);
						if (f.mode == 'manual') {
							element = $('.breadcrumb');
							offset = element.offset();
							offsetTop = offset.top;
							$('html, body').animate({scrollTop:offsetTop}, 250, 'linear');
						}
					}
				})
			}
			$(document).on('click', '.pagination a', function(e) {
				loadProds($(this).attr('href'));
				element = $('.breadcrumb');
				offset = element.offset();
				offsetTop = offset.top;
				$('html, body').animate({scrollTop:offsetTop}, 250, 'linear');
				return false;
			});
			$(document).on('change', '#input-sort', function(e) {
				var a = $(this).val();
				sort = a.match('sort=([A-Za-z.]+)');
				$('input[name="sort"]').val(sort[1]);
				order = a.match('order=([A-Z]+)');
				$('input[name="order"]').val(order[1]);
				loadProds(a);
			});
			$(document).on('change', '#input-limit', function(e) {
				var a = $(this).val();
				if (a) {
					limit = a.match('limit=([0-9]+)');
					$('input[name="limit"]').val(limit[1]);
				}
				loadProds(a);
			});
			<?php if ($setting_catalog_all['pagination'] == 'standart_knopka' || $setting_catalog_all['pagination'] == 'knopka') { ?>
				var i = $('#input-limit').val();
				if (i) {
					limit = i.match('limit=([0-9]+)');
					$i = limit[1];
				}
				$(document).on('click', '.load_more', function(e) {
					e.preventDefault();
					var a = $('#input-limit').val();
					if (a) {
						limit = a.match('limit=([0-9]+)');
					}
					limit3 = $('#revfilter input[name="limit"]').val();
					if (limit3) {
						limit21 = limit3;
					} else {
						limit21 = limit[1];
						$('#revfilter input[name="limit"]').val(limit21);
					}
					limit2 = Number(limit21)+Number($i);
					limitnumber = 'limit='+limit21;
					a = a.replace('limit='+$i,'');
					a = a.replace(limitnumber,'');
					var b = a+'limit='+limit2;
					$('#revfilter input[name="limit"]').val(limit2);
					loadProds(b);
				});
			<?php } ?>
			<?php if ($setting_catalog_all['pagination'] == 'auto') { ?>
				var i = $('#input-limit').val();
				limit = i.match('limit=([0-9]+)');
				$i = limit[1];
				autoscroll_loading = false;
				$('.pagpages .pagination').hide();
				$(window).scroll(function() {
					if (inZone('.pagpages') && !autoscroll_loading) {
						autoscroll_loading = true;
						var c = $(".pagpages .pagination li.active").next("li").children("a");
						if (c.length==0) return;
						setTimeout(function() {
							var a = $('#input-limit').val();
							limit = a.match('limit=([0-9]+)');
							limit3 = $('#revfilter input[name="limit"]').val();
							if (limit3) {
								limit21 = limit3;
							} else {
								limit21 = limit[1];
								$('#revfilter input[name="limit"]').val(limit21);
							}
							limit2 = Number(limit21)+Number($i);
							limitnumber = 'limit='+limit21;
							a = a.replace('limit='+$i,'');
							a = a.replace(limitnumber,'');
							var b = a+'limit='+limit2;
							$('#revfilter input[name="limit"]').val(limit2);
							loadProds(b);
						}, 250);
					}
				});
			<?php } ?>
			function inZone(a) {
				if ($(a).length) {
				var b = $(window).scrollTop();
				var c = $(window).height();
				var d = $(a).offset();
				if (b<=d.top&&($(a).height()+d.top)<(b+c)) return true
				};
				return false;
			}
			$(document).on('click','#list-view',function() {
				list_view();
			});
			$(document).on('click', '#grid-view', function() {
				grid_view();
			});
			$(document).on('click', '#price-view', function() {
				price_view();
			});
		}
	})(jQuery);
<?php } ?>
//--></script>
<?php if ($user_scripts) { ?>
	<?php echo $user_scripts; ?>
<?php } ?>
<?php if ($setting_catalog_all['pagination'] != 'standart') { ?>
	<div id="load_more" style="display:none;"><div class="col-sm-12 text-center"><a href="#" class="load_more btn btn-primary" rel="nofollow"><i class="fa fa-refresh"></i><?php echo $text_loadmore; ?></a></div></div>
<?php } ?>
</body></html>