<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');

		$data['scripts'] = $this->document->getScripts('footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');

		$this->load->model('catalog/information');


				if (VERSION >= 2.2) {
					$data['catalog_img_width'] = $this->config->get($this->config->get('config_theme') . '_image_product_width');
				} else {
					$data['catalog_img_width'] = $this->config->get('config_image_product_width');
				}
				$data['revfilter_route'] = false;
				if (isset($this->request->get['route']) && $this->request->get['route'] != 'product/category') {
					$data['revfilter_route'] = true;
				}
				if ($this->config->get('revtheme_geo_set')['status']) {
					require_once(DIR_SYSTEM . 'library/revolution/SxGeo.php');
					$SxGeo = new SxGeo();
					if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
						$ip = $_SERVER['HTTP_CLIENT_IP'];
					} else if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
						$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
					} else {
						$ip = $_SERVER['REMOTE_ADDR'];
					}
					$ip_city = $SxGeo->getCity($ip)['city']['name_ru'];
					$ip_region = $SxGeo->getCityFull($ip)['region']['name_ru'];
					$rev_geo_data = $this->config->get('revtheme_geo');
					$data['rev_geos'] = array();
					if (!empty($rev_geo_data)){
						foreach ($rev_geo_data as $rev_geo) {
							if ($ip_city == $rev_geo['city'] || $ip_region == $rev_geo['city']) {
								$data['rev_geos'][] = array(
									'code' => $rev_geo['code'],
									'text' => $rev_geo['text'][$this->config->get('config_language_id')]
								);
							}
						}
					}
				}
				$data['config_email'] = $this->config->get('config_email');
				$header_phone = $this->config->get('revtheme_header_phone');
				$data['header_phone_cod'] = $header_phone[$this->config->get('config_language_id')]['cod'];
				$data['header_phone_number'] = $header_phone[$this->config->get('config_language_id')]['number'];
				if ($this->config->get('revtheme_geo_set')['status']) {
					foreach ($data['rev_geos'] as $rev_geo) {
						if ($data['header_phone_number'] == $rev_geo['code']) {
							$data['header_phone_number'] = $rev_geo['text'];
						}
					}
				}
				$data['header_phone_cod2'] = $header_phone[$this->config->get('config_language_id')]['cod2'];
				$data['header_phone_number2'] = $header_phone[$this->config->get('config_language_id')]['number2'];
				if ($this->config->get('revtheme_geo_set')['status']) {
					foreach ($data['rev_geos'] as $rev_geo) {
						if ($data['header_phone_number2'] == $rev_geo['code']) {
							$data['header_phone_number2'] = $rev_geo['text'];
						}
					}
				}
				$results = $this->config->get('revtheme_footer_icon');
				if (!empty($results)){
					$this->load->model('tool/image');
					foreach ($results as $result) {
						$image = $this->model_tool_image->resize($result['image'], 50, 30);
						$data['revtheme_footer_icons'][] = array(
							'image' => $image,
							'href'  => $result['href'],
							'sort'  => $result['sort']
						);
					}
				} else {			
					$data['revtheme_footer_icons'] = false;
				}
				if (!empty($data['revtheme_footer_icons'])){
					foreach ($data['revtheme_footer_icons'] as $key => $value) {
						$sort[$key] = $value['sort'];
					}
					array_multisort($sort, SORT_ASC, $data['revtheme_footer_icons']);
				}				
				$results2 = $this->config->get('revtheme_footer_soc');
				if (!empty($results2)){
					foreach ($results2 as $result) {
						$data['revtheme_footer_socs'][] = array(
							'image' => $result['image'],
							'link'  => $result['link'][$this->config->get('config_language_id')],
							'title' => $result['title'][$this->config->get('config_language_id')],
							'sort'  => $result['sort']
						);
					}
				} else {
					$data['revtheme_footer_socs'] = false;
				}
				if (!empty($data['revtheme_footer_socs'])){
					foreach ($data['revtheme_footer_socs'] as $key => $value) {
						$sort2[$key] = $value['sort'];
					}
					array_multisort($sort2, SORT_ASC, $data['revtheme_footer_socs']);
				}
				$results_f_links = $this->config->get('revtheme_footer_link');
				if (!empty($results_f_links)){
					foreach ($results_f_links as $result) {
						$data['revtheme_footer_links'][] = array(
							'link'  => $result['link'][$this->config->get('config_language_id')],
							'title' => $result['title'][$this->config->get('config_language_id')],
							'sort'  => $result['sort']
						);
					}
				} else {
					$data['revtheme_footer_links'] = false;
				}
				if (!empty($data['revtheme_footer_links'])){
					foreach ($data['revtheme_footer_links'] as $key => $value) {
						$sort3[$key] = $value['sort'];
					}
					if (count($data['revtheme_footer_links']) > 1) {
					array_multisort($sort3, SORT_ASC, $data['revtheme_footer_links']);
					}
				}
				$setting_menu = $this->config->get('revtheme_header_menu');
				$data['up_menu_height'] = $setting_menu['up_menu_height'];
				$data['sticky'] = $setting_menu['sticky'];
				$data['image_in_ico'] = $setting_menu['image_in_ico'];
				$data['header_menu_type'] = $setting_menu['type'];
				$data['zadergka'] = false;
				if ($setting_menu['zadergka']) {
					$data['zadergka'] = true;
				}
				$setting_footer_all = $this->config->get('revtheme_footer_all');
				$data['in_top'] = $setting_footer_all['in_top'];
				$data['popup_phone'] = $setting_footer_all['popup_phone'];
				$data['f_map'] = $setting_footer_all['f_map'];
				$setting_footer_user_set = $this->config->get('revtheme_footer_user_set');
				$data['user_scripts'] = html_entity_decode($setting_footer_user_set['scripts'], ENT_QUOTES, 'UTF-8');
				$settings_all_settings = $this->config->get('revtheme_all_settings');
				$data['modal_status'] = $settings_all_settings['modal_status'];
				$data['modal_buttons'] = $settings_all_settings['modal_buttons'];
				$data['n_progres'] = $settings_all_settings['n_progres'];
				$this->load->language('revolution/revolution');
				$data['text_footer_popup_phone_tooltip'] = $this->language->get('text_footer_popup_phone_tooltip');
				$data['text_loadmore'] = $this->language->get('text_loadmore');
				$data['description_options'] = $this->config->get('revtheme_cat_attributes');
				$data['setting_catalog_all'] = $this->config->get('revtheme_catalog_all');
				$data['revtheme_header_cart'] = $this->config->get('revtheme_header_cart');
				$data['setting_all_settings'] = $this->config->get('revtheme_all_settings');
				$data['revsubscribe'] = $this->load->controller('revolution/revsubscribe');
				$data['revtheme_filter'] = $this->config->get('revtheme_filter');
				if ($setting_footer_all['f_map']) {
					$data['yamap'] = html_entity_decode($settings_all_settings['yamap'], ENT_QUOTES, 'UTF-8');
					$data['telephone'] = $this->config->get('config_telephone');
					$data['store'] = $this->config->get('config_name');
					$data['address'] = nl2br($this->config->get('config_address'));
					$data['text_contact_ourcontacts'] = $this->language->get('text_contact_ourcontacts');
					$data['settings_all_settings'] = $this->config->get('revtheme_all_settings');
					$results3 = $this->config->get('revtheme_footer_soc');
					if (!empty($results3)){
						$http_s = array("http://", "https://");
						foreach ($results3 as $result) {
							if ($settings_all_settings['soc_conts_url']) {
								$link_t = explode('/', str_replace($http_s,'',$result['link'][$this->config->get('config_language_id')]));
								$link_t = $link_t[0];
							} else {
								$link_t = $result['title'][$this->config->get('config_language_id')];
							}
							$data['revtheme_footer_socs_p'][] = array(
								'image'  => $result['image'],
								'link'   => $result['link'][$this->config->get('config_language_id')],
								'link_t' => $link_t,
								'title'  => $result['title'][$this->config->get('config_language_id')],
								'sort'   => $result['sort']
							);
						}
					} else {
						$data['revtheme_footer_socs_p'] = false;
					}
					if (!empty($data['revtheme_footer_socs_p'])){
						foreach ($data['revtheme_footer_socs_p'] as $key => $value) {
							$sort3[$key] = $value['sort'];
						}
						array_multisort($sort3, SORT_ASC, $data['revtheme_footer_socs_p']);
					}
					$dop_contact_status = $this->config->get('revtheme_header_dop_contacts_status');
					if ($dop_contact_status){
						$dop_contact = $this->config->get('revtheme_header_dop_contact');
						if (!empty($dop_contact)){
							foreach ($dop_contact as $result) {
								
								$style = '';
								$this->load->model('tool/image');
								if ($result['icontype']) {
									if ($result['icon'] == 'fa none') {
										$style = ' hidden';
									}
									$result_icon = '<i class="'.$result['icon'].$style.'"></i>';
								} else {
									if (!$result['image'] || $result['image'] == 'no_image.png') {
										$style = ' hidden';
									}
									$result_icon = '<img class="'.$style.'" src="'.$this->model_tool_image->resize($result['image'], 21, 21).'" alt=""/>';
								}
								$number = $result['number'][$this->config->get('config_language_id')];
								if ($this->config->get('revtheme_geo_set')['status']) {
									foreach ($data['rev_geos'] as $rev_geo) {
										if ($number == $rev_geo['code']) {
											$number = $rev_geo['text'];
										}
									}
								}
								
								$data['dop_contacts'][] = array(
									'icon' 		=> $result_icon,
									'number' 	=> $number,
									'href' 		=> $result['href'][$this->config->get('config_language_id')],
									'sort'  	=> $result['sort']
								);
							}
							
							foreach ($data['dop_contacts'] as $key => $value) {
								$sort_dop_contacts3[$key] = $value['sort'];
							}
							if (count($data['dop_contacts']) > 1) {
								array_multisort($sort_dop_contacts3, SORT_ASC, $data['dop_contacts']);
							}

						} else {
							$data['dop_contacts'] = false;
						}
					} else {
							$data['dop_contacts'] = false;
					}
				}
				$data['revtheme_product_all'] = $this->config->get('revtheme_product_all');
				
				$data['revtheme_custom_footer'] = $revtheme_custom_footer = $this->config->get('revtheme_custom_footer');
				$img_cf_wh = 18;
				$data['config_language_id'] = $this->config->get('config_language_id');
				$revtheme_dop_menu_cf = $this->config->get('revtheme_dop_menu_cf');
				if (!empty($revtheme_dop_menu_cf)){
					$data['revtheme_dop_menus_cf'] = json_decode(htmlspecialchars_decode($revtheme_dop_menu_cf), true);
					foreach($data['revtheme_dop_menus_cf'] as $key => $val){
						if (!empty($data['revtheme_dop_menus_cf'][$key]['dop_menu_image_cf'])){
							$data['revtheme_dop_menus_cf'][$key]['dop_menu_image_cf'] = $this->model_tool_image->resize($data['revtheme_dop_menus_cf'][$key]['dop_menu_image_cf'], $img_cf_wh, $img_cf_wh);
						} else {
							$data['revtheme_dop_menus_cf'][$key]['dop_menu_image_cf'] = false;
						}
						if (isset($data['revtheme_dop_menus_cf'][$key]['children'])){
							$children = $data['revtheme_dop_menus_cf'][$key]['children'];
							foreach($children as $key2 => $val2){
								if (!empty($data['revtheme_dop_menus_cf'][$key]['children'][$key2]['dop_menu_image_cf'])){
									$data['revtheme_dop_menus_cf'][$key]['children'][$key2]['dop_menu_image_cf'] = $this->model_tool_image->resize($data['revtheme_dop_menus_cf'][$key]['children'][$key2]['dop_menu_image_cf'], $img_cf_wh, $img_cf_wh);
								} else {
									$data['revtheme_dop_menus_cf'][$key]['children'][$key2]['dop_menu_image_cf'] = false;
								}
							}
						}
					}
				} else {
					$data['revtheme_dop_menus_cf'] = false;
				}
				$data['cf_1_width'] = 'class="hidden-xs hidden-sm col-sm-12 cf_1_width" style="width:'.$revtheme_custom_footer['cf_1_width'].'%"';
				$data['cf_1_description'] = html_entity_decode($revtheme_custom_footer[$this->config->get('config_language_id')]['cf_1_description'], ENT_QUOTES, 'UTF-8');
				
				$revtheme_dop_menu_cf_2 = $this->config->get('revtheme_dop_menu_cf_2');
				if (!empty($revtheme_dop_menu_cf_2)){
					$data['revtheme_dop_menus_cf_2'] = json_decode(htmlspecialchars_decode($revtheme_dop_menu_cf_2), true);
					foreach($data['revtheme_dop_menus_cf_2'] as $key => $val){
						if (!empty($data['revtheme_dop_menus_cf_2'][$key]['dop_menu_image_cf'])){
							$data['revtheme_dop_menus_cf_2'][$key]['dop_menu_image_cf'] = $this->model_tool_image->resize($data['revtheme_dop_menus_cf_2'][$key]['dop_menu_image_cf'], $img_cf_wh, $img_cf_wh);
						} else {
							$data['revtheme_dop_menus_cf_2'][$key]['dop_menu_image_cf'] = false;
						}
						if (isset($data['revtheme_dop_menus_cf_2'][$key]['children'])){
							$children = $data['revtheme_dop_menus_cf_2'][$key]['children'];
							foreach($children as $key2 => $val2){
								if (!empty($data['revtheme_dop_menus_cf_2'][$key]['children'][$key2]['dop_menu_image_cf'])){
									$data['revtheme_dop_menus_cf_2'][$key]['children'][$key2]['dop_menu_image_cf'] = $this->model_tool_image->resize($data['revtheme_dop_menus_cf_2'][$key]['children'][$key2]['dop_menu_image_cf'], $img_cf_wh, $img_cf_wh);
								} else {
									$data['revtheme_dop_menus_cf_2'][$key]['children'][$key2]['dop_menu_image_cf'] = false;
								}
							}
						}
					}
				} else {
					$data['revtheme_dop_menus_cf_2'] = false;
				}
				$data['cf_2_width'] = 'class="hidden-xs hidden-sm col-sm-12 cf_2_width" style="width:'.$revtheme_custom_footer['cf_2_width'].'%"';
				$data['cf_2_description'] = html_entity_decode($revtheme_custom_footer[$this->config->get('config_language_id')]['cf_2_description'], ENT_QUOTES, 'UTF-8');
				
				$revtheme_dop_menu_cf_3 = $this->config->get('revtheme_dop_menu_cf_3');
				if (!empty($revtheme_dop_menu_cf_3)){
					$data['revtheme_dop_menus_cf_3'] = json_decode(htmlspecialchars_decode($revtheme_dop_menu_cf_3), true);
					foreach($data['revtheme_dop_menus_cf_3'] as $key => $val){
						if (!empty($data['revtheme_dop_menus_cf_3'][$key]['dop_menu_image_cf'])){
							$data['revtheme_dop_menus_cf_3'][$key]['dop_menu_image_cf'] = $this->model_tool_image->resize($data['revtheme_dop_menus_cf_3'][$key]['dop_menu_image_cf'], $img_cf_wh, $img_cf_wh);
						} else {
							$data['revtheme_dop_menus_cf_3'][$key]['dop_menu_image_cf'] = false;
						}
						if (isset($data['revtheme_dop_menus_cf_3'][$key]['children'])){
							$children = $data['revtheme_dop_menus_cf_3'][$key]['children'];
							foreach($children as $key2 => $val2){
								if (!empty($data['revtheme_dop_menus_cf_3'][$key]['children'][$key2]['dop_menu_image_cf'])){
									$data['revtheme_dop_menus_cf_3'][$key]['children'][$key2]['dop_menu_image_cf'] = $this->model_tool_image->resize($data['revtheme_dop_menus_cf_3'][$key]['children'][$key2]['dop_menu_image_cf'], $img_cf_wh, $img_cf_wh);
								} else {
									$data['revtheme_dop_menus_cf_3'][$key]['children'][$key2]['dop_menu_image_cf'] = false;
								}
							}
						}
					}
				} else {
					$data['revtheme_dop_menus_cf_3'] = false;
				}
				$data['cf_3_width'] = 'class="hidden-xs hidden-sm col-sm-12 cf_3_width" style="width:'.$revtheme_custom_footer['cf_3_width'].'%"';
				$data['cf_3_description'] = html_entity_decode($revtheme_custom_footer[$this->config->get('config_language_id')]['cf_3_description'], ENT_QUOTES, 'UTF-8');
				
				$revtheme_dop_menu_cf_4 = $this->config->get('revtheme_dop_menu_cf_4');
				if (!empty($revtheme_dop_menu_cf_4)){
					$data['revtheme_dop_menus_cf_4'] = json_decode(htmlspecialchars_decode($revtheme_dop_menu_cf_4), true);
					foreach($data['revtheme_dop_menus_cf_4'] as $key => $val){
						if (!empty($data['revtheme_dop_menus_cf_4'][$key]['dop_menu_image_cf'])){
							$data['revtheme_dop_menus_cf_4'][$key]['dop_menu_image_cf'] = $this->model_tool_image->resize($data['revtheme_dop_menus_cf_4'][$key]['dop_menu_image_cf'], $img_cf_wh, $img_cf_wh);
						} else {
							$data['revtheme_dop_menus_cf_4'][$key]['dop_menu_image_cf'] = false;
						}
						if (isset($data['revtheme_dop_menus_cf_4'][$key]['children'])){
							$children = $data['revtheme_dop_menus_cf_4'][$key]['children'];
							foreach($children as $key2 => $val2){
								if (!empty($data['revtheme_dop_menus_cf_4'][$key]['children'][$key2]['dop_menu_image_cf'])){
									$data['revtheme_dop_menus_cf_4'][$key]['children'][$key2]['dop_menu_image_cf'] = $this->model_tool_image->resize($data['revtheme_dop_menus_cf_4'][$key]['children'][$key2]['dop_menu_image_cf'], $img_cf_wh, $img_cf_wh);
								} else {
									$data['revtheme_dop_menus_cf_4'][$key]['children'][$key2]['dop_menu_image_cf'] = false;
								}
							}
						}
					}
				} else {
					$data['revtheme_dop_menus_cf_4'] = false;
				}
				$data['cf_4_width'] = 'class="hidden-xs hidden-sm col-sm-12 cf_4_width" style="width:'.$revtheme_custom_footer['cf_4_width'].'%"';
				$data['cf_4_description'] = html_entity_decode($revtheme_custom_footer[$this->config->get('config_language_id')]['cf_4_description'], ENT_QUOTES, 'UTF-8');
				
				$revtheme_dop_menu_cf_5 = $this->config->get('revtheme_dop_menu_cf_5');
				if (!empty($revtheme_dop_menu_cf_5)){
					$data['revtheme_dop_menus_cf_5'] = json_decode(htmlspecialchars_decode($revtheme_dop_menu_cf_5), true);
					foreach($data['revtheme_dop_menus_cf_5'] as $key => $val){
						if (!empty($data['revtheme_dop_menus_cf_5'][$key]['dop_menu_image_cf'])){
							$data['revtheme_dop_menus_cf_5'][$key]['dop_menu_image_cf'] = $this->model_tool_image->resize($data['revtheme_dop_menus_cf_5'][$key]['dop_menu_image_cf'], $img_cf_wh, $img_cf_wh);
						} else {
							$data['revtheme_dop_menus_cf_5'][$key]['dop_menu_image_cf'] = false;
						}
						if (isset($data['revtheme_dop_menus_cf_5'][$key]['children'])){
							$children = $data['revtheme_dop_menus_cf_5'][$key]['children'];
							foreach($children as $key2 => $val2){
								if (!empty($data['revtheme_dop_menus_cf_5'][$key]['children'][$key2]['dop_menu_image_cf'])){
									$data['revtheme_dop_menus_cf_5'][$key]['children'][$key2]['dop_menu_image_cf'] = $this->model_tool_image->resize($data['revtheme_dop_menus_cf_5'][$key]['children'][$key2]['dop_menu_image_cf'], $img_cf_wh, $img_cf_wh);
								} else {
									$data['revtheme_dop_menus_cf_5'][$key]['children'][$key2]['dop_menu_image_cf'] = false;
								}
							}
						}
					}
				} else {
					$data['revtheme_dop_menus_cf_5'] = false;
				}
				$data['cf_5_width'] = 'class="hidden-xs hidden-sm col-sm-12 cf_5_width" style="width:'.$revtheme_custom_footer['cf_5_width'].'%"';
				$data['cf_5_description'] = html_entity_decode($revtheme_custom_footer[$this->config->get('config_language_id')]['cf_5_description'], ENT_QUOTES, 'UTF-8');
			
		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', true);
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', true);
		$data['affiliate'] = $this->url->link('affiliate/account', '', true);
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['newsletter'] = $this->url->link('account/newsletter', '', true);

		
				if ($setting_footer_all['copy']) {
					$domen = $_SERVER['HTTP_HOST'];
					if(stristr($domen, 'xn--')) {
						require_once('catalog/controller/revolution/idna_convert.class.php');
						$idn = new idna_convert(array('idn_version'=>2008));
						$domen = (stripos($domen, 'xn--')!==false) ? $idn->decode($domen) : $idn->encode($domen);
					} else {					
						$domen = $_SERVER['HTTP_HOST'];
					}
					$data['powered'] = sprintf($this->language->get('text_powered_rev'), $domen, $this->config->get('config_name'), date('Y', time()));
				} else {
					$data['powered'] = $setting_footer_all[$this->config->get('config_language_id')]['copy_text'];
				}
			

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		return $this->load->view('common/footer', $data);
	}
}
