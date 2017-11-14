<?php
class ControllerRevolutionRevcategorywall extends Controller {
    public function index() {

		$data['setting'] = $setting = $this->config->get('revtheme_home_categorywall');
		
		if (!$setting['status']) {
			return false;
		}
		
		$setting_all_settings = $this->config->get('revtheme_all_settings');
		if ($setting[$this->config->get('config_language_id')]['title']) {
			$style = '';
			if ($setting['icontype']) {
				if ($setting['icon'] == 'fa none') {
					$style = ' hidden';
				}
				$image = '<i class="'.$setting['icon'].$style.'"></i>';
			} else {
				if (!$setting['image'] || $setting['image'] == 'no_image.png') {
					$style = ' hidden';
				}
				$image = '<span class="heading_ico_image'.$style.'"><img src="'.$this->model_tool_image->resize($setting['image'], 21, 21).'" alt=""/></span>';
			}
			$data['heading_title'] = ($image . $setting[$this->config->get('config_language_id')]['title']);
		} else {
			$data['heading_title'] = '';
		}

        $this->load->model('catalog/category');
		$this->load->model('catalog/manufacturer');
		
		if (VERSION >= 2.2) {
			$config_image_product_width = $this->config->get($this->config->get('config_theme') . '_image_product_width');
			$config_image_product_height = $this->config->get($this->config->get('config_theme') . '_image_product_height');
		} else {
			$config_image_product_width = $this->config->get('config_image_product_width');
			$config_image_product_height = $this->config->get('config_image_product_height');
		}

        $data['categories'] = array();

		$cache_data = $this->cache->get('revcategorywall.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id'));
		if ($cache_data) {
			$data['categories'] = $cache_data;
		} else {
			$revtheme_home_categorywall_categories = $this->config->get('revtheme_home_categorywall_categories');
			$revtheme_home_categorywall_manufacturers = $this->config->get('revtheme_home_categorywall_manufacturers');
			
			$this->load->model('tool/image');

			if ($setting['categories'] == 1 && count($revtheme_home_categorywall_categories)>0) {
				foreach ($revtheme_home_categorywall_categories as $category_id) {
					$category_info = $this->model_catalog_category->getCategory($category_id);
					if ($category_info) {				
						if ($setting['group_manufs']) {
							$name = $category_info['name'];
							if (is_numeric(utf8_substr($name, 0, 1))) {
								$key = '0 - 9';
							} else {
								$key = utf8_substr(utf8_strtoupper($name), 0, 1);
							}
							if (!isset($data['categories'][$key])) {
								$data['categories'][$key]['name'] = $key;
							}
							$data['categories'][$key]['manufacturer'][] = array(
								'name' => $name,
								'href' => $this->url->link('product/category', 'path=' . $category_info['category_id']),
								'sort'  => $category_info['sort_order']
							);
						} else {
							if ($category_info['image']) {
								$image = $this->model_tool_image->resize($category_info['image'], $config_image_product_width, $config_image_product_height);
							} else {
								$image = $this->model_tool_image->resize('placeholder.png', $config_image_product_width, $config_image_product_height);
							}
							$data['categories'][] = array(
								'name' => $category_info['name'],
								'image' => $image,
								'href' => $this->url->link('product/category', 'path=' . $category_info['category_id']),
								'sort'  => $category_info['sort_order']
							);
						}
					} else {return false;}
				}
			} else if ($setting['categories'] == 2 && count($revtheme_home_categorywall_manufacturers)>0) {
				foreach ($revtheme_home_categorywall_manufacturers as $manufacturer_id) {
					$category_info = $this->model_catalog_manufacturer->getManufacturer($manufacturer_id);
					if ($category_info) {
						if ($setting['group_manufs']) {
							$name = $category_info['name'];
							if (is_numeric(utf8_substr($name, 0, 1))) {
								$key = '0 - 9';
							} else {
								$key = utf8_substr(utf8_strtoupper($name), 0, 1);
							}
							if (!isset($data['categories'][$key])) {
								$data['categories'][$key]['name'] = $key;
							}
							$data['categories'][$key]['manufacturer'][] = array(
								'name' => $name,
								'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $category_info['manufacturer_id']),
								'sort'  => $category_info['sort_order']
							);
						} else {
							if ($category_info['image']) {
								$image = $this->model_tool_image->resize($category_info['image'], $config_image_product_width, $config_image_product_height);
							} else {
								$image = $this->model_tool_image->resize('placeholder.png', $config_image_product_width, $config_image_product_height);
							}
							$data['categories'][] = array(
								'name' => $category_info['name'],
								'image' => $image,
								'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $category_info['manufacturer_id']),
								'sort'  => $category_info['sort_order']
							);
						}
					} else {return false;}
				}
			} else {
				$categories = $this->model_catalog_category->getCategories(0);
				foreach ($categories as $category) {
					if ($category['top']) {					
						$children_data = array();
						$children = $this->model_catalog_category->getCategories($category['category_id']);
						foreach ($children as $child) {
							$filter_data_1 = array(
								'filter_category_id'  => $child['category_id'],
								'filter_sub_category' => true
							);
							$this->load->model('catalog/product');
							$children_data[] = array(
								'name'        	 => $child['name'] . ($this->config->get('config_product_count') ? ' <sup>' . $this->model_catalog_product->getTotalProducts($filter_data_1) . '</sup>' : ''),
								'category_id' 	 => $child['category_id'],
								'href'        	 => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
							);
						}
						
						if ($setting['group_manufs']) {
							$data['categories'][] = array(
								'children' => $children_data,
								'name' => $category['name'],
								'href' => $this->url->link('product/category', 'path=' . $category['category_id']),
								'sort'  => $category['sort_order']
							);
						} else {
							if ($category['image']) {
								$image = $this->model_tool_image->resize($category['image'], $config_image_product_width, $config_image_product_height);
							} else {
								$image = $this->model_tool_image->resize('placeholder.png', $config_image_product_width, $config_image_product_height);
							}
							$data['categories'][] = array(
								'children' => $children_data,
								'name' => $category['name'],
								'image' => $image,
								'href' => $this->url->link('product/category', 'path=' . $category['category_id']),
								'sort'  => $category['sort_order']
							);
						}
					} else {return false;}
				}
			}
			foreach ($data['categories'] as $key => $value) {
				if ($setting['sort_order']) {
					if ($setting['categories'] == 2) {
						$sort[$key] = $value['name'];
					} else {
						$sort[$key] = $value['sort'];
					}
				} else {
					$sort[$key] = $value['name'];
				}
			}
			if (count($data['categories']) > 1) {
				array_multisort($sort, SORT_ASC, $data['categories']);
			}
			if ($setting_all_settings['cache_on']) {
				$this->cache->set('revcategorywall.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id'), $data['categories']);
			}
		}
		
		$data['group_manufs_link'] = html_entity_decode($setting['group_manufs_link'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		
		if (VERSION >= 2.2) {
			return $this->load->view('revolution/revcategorywall', $data);
		} else {
			return $this->load->view('revolution/template/revolution/revcategorywall.tpl', $data);
		}
    }
}