<?php
class ControllerRevolutionRevfilter extends Controller {

	public function index() {
		
		$data['settings'] = $setting = $this->config->get('revtheme_filter');
		if (!$setting['status'] || ($this->request->get['route'] != 'product/category')) {
			return false;
		}

		$this->load->language('revolution/revolution');
		$this->document->addStyle('/catalog/view/theme/revolution/stylesheet/revfilter.css');
		$this->document->addScript('/catalog/view/javascript/revolution/ion.rangeSlider.min.js');
		$data['title'] = $setting[$this->config->get('config_language_id')]['title'];
		$data['filter_instock_vid'] = $setting['filter_instock_vid'];
		$data['filter_instock'] = $setting['filter_instock'];
		$data['filter_subcategories'] = $setting['filter_subcategories'];
		$data['filter_subcategories_vid'] = $setting['filter_subcategories_vid'];
		$data['filter_gr'] = $setting['filter_gr'];
		$data['filter_gr_vid'] = $setting['filter_gr_vid'];
		$data['text_price'] = preg_replace('/:/', '', $this->language->get('text_price'));
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_none'] = $this->language->get('text_none');
		$data['text_find'] = $this->language->get('text_find');
		$data['text_loading'] = $this->language->get('text_loading');
		$data['text_instock'] = $this->language->get('text_instock');
		$data['text_instock_on'] = $this->language->get('text_instock_on');
		$data['text_subcategories'] = $this->language->get('text_subcategories');
		$data['text_revf_group'] = $this->language->get('text_revf_group');

		$parts = explode('_', (string)$this->request->get['path']);
		$category_id = (int)array_pop($parts);
		if (isset($setting['filter_categories']) && (in_array($category_id, $setting['filter_categories']))) {
			return false;
		}

		$filter_data = array(
			'filter_category_id' => $category_id,
			'init_filter' => true
		);
		$this->load->model('revolution/revolution');
		$this->load->model('catalog/product');
		$product_total = $this->model_catalog_product->getTotalProducts($filter_data);
		if ($product_total < 2) {
			return false;
		}
		list($data['allfilters'], $data['filter_price_min'], $data['filter_price_max']) = $this->model_revolution_revolution->initfilter($filter_data);
		list($data['allfilters_gr']) = $this->model_revolution_revolution->initfilter_gr($filter_data);
		$data['filter_price_status'] = $setting['filter_price'];
		if (VERSION >= 2.2) {
			$currency = $this->session->data['currency'];
		} else {
			$currency = '';
		}
		$data['prefix'] = $this->currency->getSymbolLeft($currency);
		$data['postfix'] = $this->currency->getSymbolRight($currency);
		$setting_sort_default = $this->config->get('revtheme_catalog_sorts_category');
		if (VERSION >= 2.2) {
			$config_product_limit = $this->config->get($this->config->get('config_theme') . '_product_limit');
		} else {
			$config_product_limit = $this->config->get('config_product_limit');
		}
		$data['sort'] = isset($this->request->get['sort']) ? $this->request->get['sort'] : $setting_sort_default['sort_default'];
		$data['order'] = isset($this->request->get['order']) ? $this->request->get['order'] : $setting_sort_default['sort_default_adesc'];
		$data['limit'] = isset($this->request->get['limit']) ? $this->request->get['limit'] : $config_product_limit;
		$data['path'] = isset($this->request->get['path']) ? $this->request->get['path'] : false;
		
		$data['filter_data'] = array();
		$filters = array();
		if (isset($data['allfilters']) && is_array($data['allfilters'])) {
			foreach ($data['allfilters'] as $key => $filter) {
				if (isset($filter['values']) && is_array($filter['values'])) {
					$values = array();
					foreach ($filter['values'] as $value) {
						$values[] = $value['id'];
					}
					$filters[$filter['id']] = $values;
				}
			}
		}
		$data['filter_data'] = json_encode($filters);
		$data['subcategories'] = $this->model_revolution_revolution->getSubCategoriesByCategoryId($category_id);
		
		if (VERSION >= 2.2) {
			return $this->load->view('revolution/revfilter', $data);
		} else {
			return $this->load->view('revolution/template/revolution/revfilter.tpl', $data);
		}
	}
}