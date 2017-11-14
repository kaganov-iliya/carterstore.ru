<?php
class ControllerProductManufacturer extends Controller {
	public function index() {
		$this->load->language('product/manufacturer');

		$this->load->model('catalog/manufacturer');

		$this->load->model('tool/image');

				$this->load->model('account/wishlist');
				$this->load->language('revolution/revolution');
				$data['setting_all_settings'] = $this->config->get('revtheme_all_settings');
				$data['revpopuporder_settings'] = $revpopuporder_settings = $this->config->get('revtheme_catalog_popuporder');
				$data['revpopuporder'] = $revpopuporder_settings['status'];
				$setting_sort_default = $this->config->get('revtheme_catalog_sorts_category');
				$data['setting_catalog_all'] = $setting_catalog_all = $this->config->get('revtheme_catalog_all');
				$data['podcategory_status'] = $setting_catalog_all['podcategory_status'];
				$data['podcategory_imgs'] = $setting_catalog_all['podcategory_imgs'];
				$data['popup_view'] = $setting_catalog_all['popup_view'];
				$data['img_slider'] = $setting_catalog_all['img_slider'];
				$data['rev_srav_prod'] = $setting_catalog_all['rev_srav_prod'];
				$data['rev_wish_prod'] = $setting_catalog_all['rev_wish_prod'];
				$data['ch_quantity'] = $setting_catalog_all['ch_quantity'];
				if (isset($setting_catalog_all['vid_grid'])) { $data['vid_grid'] = true; } else { $data['vid_grid'] = false; }
				if (isset($setting_catalog_all['vid_list'])) { $data['vid_list'] = true; } else { $data['vid_list'] = false; }
				if (isset($setting_catalog_all['vid_price'])) { $data['vid_price'] = true; } else { $data['vid_price'] = false; }
				$product_settings = $this->config->get('revtheme_product_all');
				$data['zakaz'] = $product_settings['zakaz'];
				$data['zakaz_price_null'] = $product_settings['zakaz_price_null'];
				$data['text_catalog_stiker_netu_2'] = $this->language->get('text_catalog_stiker_netu');
				$data['recalc_price'] = $product_settings['recalc_price'];
				$data['q_zavisimost'] = $product_settings['q_zavisimost'];
				$data['opt_price'] = $product_settings['opt_price'];
				$data['text_catalog_stiker_last'] = $this->language->get('text_catalog_stiker_last');
				$data['text_catalog_stiker_best'] = $this->language->get('text_catalog_stiker_best');
				$data['text_catalog_revpopup_purchase'] = $this->language->get('text_catalog_revpopup_purchase');
				$data['text_catalog_revpopup_view'] = $this->language->get('text_catalog_revpopup_view');
				$data['text_catalog_price_na_zakaz'] = $this->language->get('text_catalog_price_na_zakaz');
				$description_options = $this->config->get('revtheme_cat_attributes');
				$data['description_options'] = $this->config->get('revtheme_cat_attributes');
				$data['text_select'] = $this->language->get('text_select');
				$data['revtheme_product_all'] = $this->config->get('revtheme_product_all');
				$data['text_option_option'] = $this->language->get('text_option_option');
				$revpopuppredzakaz_settings = $this->config->get('revtheme_predzakaz');
				$data['predzakaz_button'] = $revpopuppredzakaz_settings['status'];
				$data['text_predzakaz'] = $this->language->get('text_predzakaz');
				if ($setting_catalog_all['category_desc']) { $data['category_description_class'] = 'c_desc_top'; } else { $data['category_description_class'] = 'dnone'; }
				$data['chislo_ryad'] = $setting_catalog_all['chislo_ryad'];
				
				if (VERSION >= 2.2) {
					$config_image_product_width = $data['catalog_img_width'] = $this->config->get($this->config->get('config_theme') . '_image_product_width');
					$config_image_product_height = $this->config->get($this->config->get('config_theme') . '_image_product_height');
					$currency = $this->session->data['currency'];
					$config_product_description_length = $this->config->get($this->config->get('config_theme') . '_product_description_length');
					$config_product_limit = $this->config->get($this->config->get('config_theme') . '_product_limit');
				} else {
					$config_image_product_width = $data['catalog_img_width'] = $this->config->get('config_image_product_width');
					$config_image_product_height = $this->config->get('config_image_product_height');
					$currency = '';
					$config_product_description_length = $this->config->get('config_product_description_length');
					$config_product_limit = $this->config->get('config_product_limit');
				}
				$data['currency_code'] = $this->session->data['currency'];
				$var_currency = array();
				$var_currency['value'] = $this->currency->getValue($currency);
				$var_currency['symbol_left'] = $this->currency->getSymbolLeft($currency);
				$var_currency['symbol_right'] = $this->currency->getSymbolRight($currency);
				$var_currency['decimals'] = $this->currency->getDecimalPlace($currency);
				$var_currency['decimal_point'] = $this->language->get('decimal_point');
				$var_currency['thousand_point'] = $this->language->get('thousand_point');
				$data['currency'] = $var_currency;
			

		$this->document->setTitle($this->language->get('heading_title'));

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_index'] = $this->language->get('text_index');
		$data['text_empty'] = $this->language->get('text_empty');

		$data['button_continue'] = $this->language->get('button_continue');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_brand'),
			'href' => $this->url->link('product/manufacturer')
		);

		$data['categories'] = array();

		$results = $this->model_catalog_manufacturer->getManufacturers();

				$data['revtheme_header_menu_images'] = $this->config->get('revtheme_header_menu')['image_in_ico_m'];
				if (VERSION >= 2.2) {
					$config_image_product_width = $this->config->get($this->config->get('config_theme') . '_image_product_width');
					$config_image_product_height = $this->config->get($this->config->get('config_theme') . '_image_product_height');
				} else {
					$config_image_product_width = $this->config->get('config_image_product_width');
					$config_image_product_height = $this->config->get('config_image_product_height');
				}
			

		foreach ($results as $result) {
			$name = $result['name'];

			if (is_numeric(utf8_substr($name, 0, 1))) {
				$key = '0 - 9';
			} else {
				$key = utf8_substr(utf8_strtoupper($name), 0, 1);
			}

			if (!isset($data['categories'][$key])) {
				$data['categories'][$key]['name'] = $key;
			}


				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $config_image_product_width, $config_image_product_height);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $config_image_product_width, $config_image_product_height);
				}
			
			$data['categories'][$key]['manufacturer'][] = array(
'image' => $image,
				'name' => $name,
				'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $result['manufacturer_id'])
			);
		}

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('product/manufacturer_list', $data));
	}

	public function info() {
		$this->load->language('product/manufacturer');

		$this->load->model('catalog/manufacturer');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

				$this->load->model('account/wishlist');
				$this->load->language('revolution/revolution');
				$data['setting_all_settings'] = $this->config->get('revtheme_all_settings');
				$data['revpopuporder_settings'] = $revpopuporder_settings = $this->config->get('revtheme_catalog_popuporder');
				$data['revpopuporder'] = $revpopuporder_settings['status'];
				$setting_sort_default = $this->config->get('revtheme_catalog_sorts_category');
				$data['setting_catalog_all'] = $setting_catalog_all = $this->config->get('revtheme_catalog_all');
				$data['podcategory_status'] = $setting_catalog_all['podcategory_status'];
				$data['podcategory_imgs'] = $setting_catalog_all['podcategory_imgs'];
				$data['popup_view'] = $setting_catalog_all['popup_view'];
				$data['img_slider'] = $setting_catalog_all['img_slider'];
				$data['rev_srav_prod'] = $setting_catalog_all['rev_srav_prod'];
				$data['rev_wish_prod'] = $setting_catalog_all['rev_wish_prod'];
				$data['ch_quantity'] = $setting_catalog_all['ch_quantity'];
				if (isset($setting_catalog_all['vid_grid'])) { $data['vid_grid'] = true; } else { $data['vid_grid'] = false; }
				if (isset($setting_catalog_all['vid_list'])) { $data['vid_list'] = true; } else { $data['vid_list'] = false; }
				if (isset($setting_catalog_all['vid_price'])) { $data['vid_price'] = true; } else { $data['vid_price'] = false; }
				$product_settings = $this->config->get('revtheme_product_all');
				$data['zakaz'] = $product_settings['zakaz'];
				$data['zakaz_price_null'] = $product_settings['zakaz_price_null'];
				$data['text_catalog_stiker_netu_2'] = $this->language->get('text_catalog_stiker_netu');
				$data['recalc_price'] = $product_settings['recalc_price'];
				$data['q_zavisimost'] = $product_settings['q_zavisimost'];
				$data['opt_price'] = $product_settings['opt_price'];
				$data['text_catalog_stiker_last'] = $this->language->get('text_catalog_stiker_last');
				$data['text_catalog_stiker_best'] = $this->language->get('text_catalog_stiker_best');
				$data['text_catalog_revpopup_purchase'] = $this->language->get('text_catalog_revpopup_purchase');
				$data['text_catalog_revpopup_view'] = $this->language->get('text_catalog_revpopup_view');
				$data['text_catalog_price_na_zakaz'] = $this->language->get('text_catalog_price_na_zakaz');
				$description_options = $this->config->get('revtheme_cat_attributes');
				$data['description_options'] = $this->config->get('revtheme_cat_attributes');
				$data['text_select'] = $this->language->get('text_select');
				$data['revtheme_product_all'] = $this->config->get('revtheme_product_all');
				$data['text_option_option'] = $this->language->get('text_option_option');
				$revpopuppredzakaz_settings = $this->config->get('revtheme_predzakaz');
				$data['predzakaz_button'] = $revpopuppredzakaz_settings['status'];
				$data['text_predzakaz'] = $this->language->get('text_predzakaz');
				if ($setting_catalog_all['category_desc']) { $data['category_description_class'] = 'c_desc_top'; } else { $data['category_description_class'] = 'dnone'; }
				$data['chislo_ryad'] = $setting_catalog_all['chislo_ryad'];
				
				if (VERSION >= 2.2) {
					$config_image_product_width = $data['catalog_img_width'] = $this->config->get($this->config->get('config_theme') . '_image_product_width');
					$config_image_product_height = $this->config->get($this->config->get('config_theme') . '_image_product_height');
					$currency = $this->session->data['currency'];
					$config_product_description_length = $this->config->get($this->config->get('config_theme') . '_product_description_length');
					$config_product_limit = $this->config->get($this->config->get('config_theme') . '_product_limit');
				} else {
					$config_image_product_width = $data['catalog_img_width'] = $this->config->get('config_image_product_width');
					$config_image_product_height = $this->config->get('config_image_product_height');
					$currency = '';
					$config_product_description_length = $this->config->get('config_product_description_length');
					$config_product_limit = $this->config->get('config_product_limit');
				}
				$data['currency_code'] = $this->session->data['currency'];
				$var_currency = array();
				$var_currency['value'] = $this->currency->getValue($currency);
				$var_currency['symbol_left'] = $this->currency->getSymbolLeft($currency);
				$var_currency['symbol_right'] = $this->currency->getSymbolRight($currency);
				$var_currency['decimals'] = $this->currency->getDecimalPlace($currency);
				$var_currency['decimal_point'] = $this->language->get('decimal_point');
				$var_currency['thousand_point'] = $this->language->get('thousand_point');
				$data['currency'] = $var_currency;
			

		if (isset($this->request->get['manufacturer_id'])) {
			$manufacturer_id = (int)$this->request->get['manufacturer_id'];
		} else {
			$manufacturer_id = 0;
		}

		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = $setting_sort_default['sort_default'];
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = $setting_sort_default['sort_default_adesc'];
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		if (isset($this->request->get['limit'])) {
			$limit = (int)$this->request->get['limit'];
		} else {
			$limit = (int)$this->config->get($this->config->get('config_theme') . '_product_limit');
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_brand'),
			'href' => $this->url->link('product/manufacturer')
		);

		$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($manufacturer_id);


				if (!$setting_catalog_all['manuf_desc']) {
					$data['description'] = false;
				}
			
		if ($manufacturer_info) {
			$this->document->setTitle($manufacturer_info['name']);

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $manufacturer_info['name'],
				'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url)
			);

			if ($manufacturer_info['meta_title']) {
				$this->document->setTitle($manufacturer_info['meta_title']);
			} else {
				$this->document->setTitle($manufacturer_info['name']);
			}

			$this->document->setDescription($manufacturer_info['meta_description']);
			$this->document->setKeywords($manufacturer_info['meta_keyword']);

			if ($manufacturer_info['meta_h1']) {
				$data['heading_title'] = $manufacturer_info['meta_h1'];
			} else {
				$data['heading_title'] = $manufacturer_info['name'];
			}

			if ($manufacturer_info['image']) {
				$data['thumb'] = $this->model_tool_image->resize($manufacturer_info['image'], $this->config->get($this->config->get('config_theme') . '_image_category_width'), $this->config->get($this->config->get('config_theme') . '_image_category_height'));
				$this->document->setOgImage($data['thumb']);
			} else {
				$data['thumb'] = '';
			}

			$data['description'] = html_entity_decode($manufacturer_info['description'], ENT_QUOTES, 'UTF-8');

			$data['text_empty'] = $this->language->get('text_empty');
			$data['text_quantity'] = $this->language->get('text_quantity');
			$data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$data['text_model'] = $this->language->get('text_model');
			$data['text_price'] = $this->language->get('text_price');
			$data['text_tax'] = $this->language->get('text_tax');
			$data['text_points'] = $this->language->get('text_points');
			$data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$data['text_sort'] = $this->language->get('text_sort');
			$data['text_limit'] = $this->language->get('text_limit');

			$data['button_cart'] = $this->language->get('button_cart');
			$data['button_wishlist'] = $this->language->get('button_wishlist');
			$data['button_compare'] = $this->language->get('button_compare');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['button_list'] = $this->language->get('button_list');
			$data['button_grid'] = $this->language->get('button_grid');

			$data['compare'] = $this->url->link('product/compare');


				$this->load->model('revolution/revolution');
				$settings_stikers = $this->config->get('revtheme_catalog_stiker');
				if ($settings_stikers['status']) {
					$data['stikers_status'] = true;

					if ($settings_stikers['new_status']) {
						$settings_last = $this->config->get('revtheme_catalog_last');
						if ($settings_last['last_products'] != '') {
							$date_added = array_flip(explode(',', $settings_last['last_products']));
						} else {
							if ($settings_last['filter_day']) {
								$filter_day = date('Y-m-d H:i:s', strtotime('now - ' . $settings_last['filter_day'] . ' days'));
							} else {
								$filter_day = false;
							}
							$data_last = array(
								'sort'  => 'p.date_added',
								'order' => 'DESC',
								'start' => 0,
								'limit' => $settings_last['limit'],
								'filter_day' => $filter_day
								);
							$date_added = $this->model_revolution_revolution->getLastProducts($data_last);
						}
					}

					if ($settings_stikers['best_status']) {
						$settings_best = $this->config->get('revtheme_catalog_best');
						if ($settings_best['best_products'] != '') {
							$best_seller = array_flip(explode(',', $settings_best['best_products']));
						} else {
							$data_best = array(
								'sort'  => 'p.sales',
								'order' => 'DESC',
								'start' => 0,
								'limit' => $settings_best['limit'],
								'filter_buy' => $settings_best['filter_buy']
							);
							$best_seller = $this->model_revolution_revolution->getBestProducts($data_best);
						}
					}
				} else {
					$data['stikers_status'] = false;
				}
			
			$data['products'] = array();

			$filter_data = array(
				'filter_manufacturer_id' => $manufacturer_id,
				'sort'                   => $sort,
				'order'                  => $order,
				'start'                  => ($page - 1) * $limit,
				'limit'                  => $limit
			);

			$product_total = $this->model_catalog_product->getTotalProducts($filter_data);

			$results = $this->model_catalog_product->getProducts($filter_data);

			foreach ($results as $result) {

				if (isset($this->session->data['compare'])) {
					if (in_array($result['product_id'], $this->session->data['compare'])) {
						$compare_class = 'in_compare';
						$button_compare = $this->language->get('button_compare_out');
					} else {
						$compare_class = '';
						$button_compare = $this->language->get('button_compare');
					}
				} else {
					$compare_class = '';
					$button_compare = $this->language->get('button_compare');
				}
				
				if (isset($this->session->data['wishlist'])) {
					if (in_array($result['product_id'], $this->session->data['wishlist'])) {
						$wishlist_class = 'in_wishlist';
						$button_wishlist = $this->language->get('button_wishlist_out');
					} else {
						$wishlist_class = '';
						$button_wishlist = $this->language->get('button_wishlist');
					}
				} else {
					$wishlist_class = '';
					$button_wishlist = $this->language->get('button_wishlist');
				}
				
				if ($this->customer->isLogged()) {
					$this->load->model('account/wishlist');
					$wishlist_register = $this->model_account_wishlist->getWishlist();
					if ($wishlist_register) {
						$wishlist_register2 = array();
						foreach ($wishlist_register as $result_wishlist_register_id) {
							$wishlist_register_id[] = $result_wishlist_register_id['product_id'];
						}
						if (in_array($result['product_id'], $wishlist_register_id)) {
							$wishlist_class = 'in_wishlist';
							$button_wishlist = $this->language->get('button_wishlist_out');
						} else {
							$wishlist_class = '';
							$button_wishlist = $this->language->get('button_wishlist');
						}
					}
				}
				
				if ($settings_stikers['new_status']) {
					if (isset($date_added[$result['product_id']])) {
						$stiker_last = true;
					} else {
						$stiker_last = false;
					}
				} else {
					$stiker_last = false;
				}
				
				if ($settings_stikers['best_status']) {
					if (isset($best_seller[$result['product_id']])) {
						$stiker_best = true;	
					} else {
						$stiker_best = false;
					}
				} else {
					$stiker_best = false;
				}
				
				if ($settings_stikers['spec_status']) {
					$stiker_spec = true;
				} else {
					$stiker_spec = false;
				}
				
				if ($settings_stikers['stock_status']) {
					$stiker_stock = true;
				} else {
					$stiker_stock = false;
				}
				
				if ($settings_stikers['upc']) {
					$stiker_upc = $result['upc'];
				} else {
					$stiker_upc = false;
				}
				if ($settings_stikers['ean']) {
					$stiker_ean = $result['ean'];
				} else {
					$stiker_ean = false;
				}
				if ($settings_stikers['jan']) {
					$stiker_jan = $result['jan'];
				} else {
					$stiker_jan = false;
				}
				if ($settings_stikers['isbn']) {
					$stiker_isbn = $result['isbn'];
				} else {
					$stiker_isbn = false;
				}
				if ($settings_stikers['mpn']) {
					$stiker_mpn = $result['mpn'];
				} else {
					$stiker_mpn = false;
				}
				if ($settings_stikers['stiker_netu_stock']) {
					$text_catalog_stiker_netu = $result['stock_status'];
				} else {
					$text_catalog_stiker_netu = $this->language->get('text_catalog_stiker_netu');
				}
				if ($settings_stikers['sklad_status']) {
					$stiker_sklad_status = $result['stock_status'];
				} else {
					$stiker_sklad_status = false;
				}
			
				if ($result['image']) {

				$images = array();
				$this->load->model('catalog/product');
				$add_images = $this->model_catalog_product->getProductImages($result['product_id']);
				foreach ($add_images as $add_image) {
					$images[] = array(
						'thumb' => $this->model_tool_image->resize($add_image['image'], $config_image_product_width, $config_image_product_height)
					);
				}
			
					$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				} else {
$images = false;
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
$price_number = round($result['price'], 2);
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
$price_number = false;
				}

				if ((float)$result['special']) {
$special_number = $result['special'];
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
$special_number = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}


				$brand = $this->model_revolution_revolution->get_pr_brand($result['product_id']);
				
				if ($this->config->get('config_review_status')) {
					$reviews = (int)$result['reviews'];
				} else {
					$reviews = false;
				}
				
				$description = '';
				$options = false;
				if ($description_options['description_on']) {
					if ($description_options['zamena_description']) {
						$description = $this->model_revolution_revolution->getAttrText($result['product_id']);
					} else {
						$description = utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $config_product_description_length) . '...';
					}
				}
				if ($description_options['options_in_cat']) {
					$options = array();
					$pr_options = $this->model_catalog_product->getProductOptions($result['product_id']);
				
					foreach ($pr_options as $option) {
						$product_option_value_data = array();

						foreach ($option['product_option_value'] as $option_value) {
							if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
								if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
									$option_price = $this->currency->format($this->tax->calculate($option_value['price'], $result['tax_class_id'], $this->config->get('config_tax') ? 'P' : false), $currency);
								} else {
									$option_price = false;
								}

								if ($option_value['price_prefix'] == '=') {
									$price_prefix = '';
								} else {
									$price_prefix = $option_value['price_prefix'];
								}
								
								$product_option_value_data[] = array(
									'product_option_value_id' => $option_value['product_option_value_id'],
									'quantity'            	  => $option_value['quantity'],
									'model'            	  	  => $option_value['model'],
									'option_value_id'         => $option_value['option_value_id'],
									'name'                    => $option_value['name'],
									'image'                   => $option_value['image'] ? $this->model_tool_image->resize($option_value['image'], 50, 50) : '',
									'price'                   => $option_price,
									'price_prefix'            => $price_prefix
								);
							}
						}

						$options[] = array(
							'product_option_id'    => $option['product_option_id'],
							'product_option_value' => $product_option_value_data,
							'option_id'            => $option['option_id'],
							'name'                 => $option['name'],
							'type'                 => $option['type'],
							'value'                => $option['value'],
							'required'             => $option['required'],
							'opt_image'            => $option['opt_image']
						);
					}
				}
				$product_in_cart = false;
				if ($setting_catalog_all['product_in_cart']) {
					$products_in_cart = $this->cart->getProducts();
					foreach ($products_in_cart as $product_cart) {
						if ($product_cart['product_id'] == $result['product_id']) {
							$product_in_cart = true;
						}
					}
				}
			
				$data['products'][] = array(

				'options' => $options,
				'price_number' => $price_number,
				'special_number' => $special_number,
				'stiker_last' => $stiker_last,
				'stiker_best' => $stiker_best,
				'stiker_spec' => $stiker_spec,
				'stiker_stock' => $stiker_stock,
				'stiker_sklad_status' => $stiker_sklad_status,
				'stiker_upc' => $stiker_upc,
				'stiker_ean' => $stiker_ean,
				'stiker_jan' => $stiker_jan,
				'stiker_isbn' => $stiker_isbn,
				'stiker_mpn' => $stiker_mpn,
				'quantity' => $result['quantity'],
				'compare_class' => $compare_class,
				'wishlist_class' => $wishlist_class,
				'button_compare' => $button_compare,
				'button_wishlist' => $button_wishlist,
				'text_catalog_stiker_netu' => $text_catalog_stiker_netu,
				'brand' => $brand,
				'images' => $images,
				'reviews' => $reviews,
				'options_buy' => $result['options_buy'],
				'model' => $result['model'],
				'short_description' => nl2br($result['short_description']),
				'product_in_cart' => $product_in_cart,
			
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
'description' => $description,
					'minimum'     => ($result['minimum'] > 0) ? $result['minimum'] : 1,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'manufacturer_id=' . $result['manufacturer_id'] . '&product_id=' . $result['product_id'] . $url)
				);
			}

			$url = '';

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['sorts'] = array();

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . '&sort=p.sort_order&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . '&sort=pd.name&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . '&sort=pd.name&order=DESC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . '&sort=p.price&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . '&sort=p.price&order=DESC' . $url)
			);

			if ($this->config->get('config_review_status')) {
				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . '&sort=rating&order=DESC' . $url)
				);

				$data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . '&sort=rating&order=ASC' . $url)
				);
			}

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . '&sort=p.model&order=ASC' . $url)
			);

			$data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . '&sort=p.model&order=DESC' . $url)
			);


				require(DIR_APPLICATION.'controller/product/sorts_manufacturer.php');
			
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			$data['limits'] = array();

			$limits = array_unique(array($this->config->get($this->config->get('config_theme') . '_product_limit'), $config_product_limit*2, $config_product_limit*3, $config_product_limit*5, $config_product_limit*10));

			sort($limits);

			foreach($limits as $value) {
				$data['limits'][] = array(
					'text'  => $value,
					'value' => $value,
					'href'  => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url . '&limit=' . $value)
				);
			}

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->url = $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] .  $url . '&page={page}');

			$data['pagination'] = $pagination->render();

			$data['results'] = sprintf($this->language->get('text_pagination'), ($product_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($product_total - $limit)) ? $product_total : ((($page - 1) * $limit) + $limit), $product_total, ceil($product_total / $limit));

			// http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
			if ($page == 1) {
			    $this->document->addLink($this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'], true), 'canonical');
			} elseif ($page == 2) {
			    $this->document->addLink($this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'], true), 'prev');
			} else {
			    $this->document->addLink($this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url . '&page='. ($page - 1), true), 'prev');
			}

			if ($limit && ceil($product_total / $limit) > $page) {
			    $this->document->addLink($this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url . '&page='. ($page + 1), true), 'next');
			}

			$data['sort'] = $sort;
			$data['order'] = $order;
			$data['limit'] = $limit;

			$data['continue'] = $this->url->link('common/home');

			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('product/manufacturer_info', $data));
		} else {
			$url = '';

			if (isset($this->request->get['manufacturer_id'])) {
				$url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('product/manufacturer/info', $url)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

			$data['header'] = $this->load->controller('common/header');
			$data['footer'] = $this->load->controller('common/footer');
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}
}
