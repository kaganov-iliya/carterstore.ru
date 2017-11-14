<?php
class ControllerRevolutionRevfilter extends Controller {

	public function index() {
		$this->load->language('revolution/revfilter');

		$this->document->setTitle($this->language->get('heading_title'));
		$data['heading_title'] = $this->language->get('heading_title');
		$data['heading_text'] = $this->language->get('heading_text');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		$data['action'] = $this->url->link('revolution/revfilter', 'token=' . $this->session->data['token'], 'SSL');
		
		if ($this->request->server['REQUEST_METHOD'] == 'POST' && $this->validate()) {
			$this->load->model('setting/setting');
			$this->model_setting_setting->editSetting('revtheme_filter', $this->request->post, 0);
			$this->session->data['success'] = $this->language->get('save_text');
			$this->response->redirect($this->url->link('revolution/revfilter', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('revolution/revfilter', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		$this->load->model('catalog/attribute');

		if (isset($this->request->post['revtheme_filter'])) {
			$data['revtheme_filter'] = $this->request->post['revtheme_filter'];
		} else if ($this->config->get('revtheme_filter')) {
			$data['revtheme_filter'] = $this->config->get('revtheme_filter');
		} else {
			$data['revtheme_filter'] = array(
				'status'						=> false,
				'filter_categories'				=> array(),
				'filter_gr'				        => array(),
				'filter_gr_vid'					=> true,
				'filter_subcategories'			=> array(),
				'filter_subcategories_vid'		=> true,
				'title'							=> '',
				'filter_price'					=> true,
				'filter_price_setka'			=> true,
				'filter_manufacturer'			=> 'checkbox',
				'filter_manufacturer_vid'		=> true,
				'filter_option'				    => array(),
				'filter_attribute'				=> array(),
				'filter_sposob'					=> true,
				'filter_count_products'			=> true,
				'filter_setka'					=> false,
				'filter_instock'				=> false,
				'filter_instock_vid'			=> true,
				'filter_a_grs'					=> array(),
				'filter_o_grs'					=> array(),
				'filter_m_grs'					=> true
			);
		}
		if (isset($this->config->get('revtheme_filter')['filter_a_grs'])) {
			$data['filter_a_grs'] = $this->config->get('revtheme_filter')['filter_a_grs'];
		} else {
			$data['filter_a_grs'] = '';
		}
		if (isset($this->config->get('revtheme_filter')['filter_o_grs'])) {
			$data['filter_o_grs'] = $this->config->get('revtheme_filter')['filter_o_grs'];
		} else {
			$data['filter_o_grs'] = '';
		}
				
		$this->load->model('catalog/category');
		$filter_data = array(
			'sort'        => 'name',
			'order'       => 'ASC'
		);
		$data['categories'] = $this->model_catalog_category->getCategories($filter_data);
		
		$this->load->model('catalog/attribute');
		$filter_data = array(
			'sort'        => 'ad.name',
			'order'       => 'ASC'
		);
		$data['attributes'] = $this->model_catalog_attribute->getAttributes($filter_data);
		
		$this->load->model('catalog/option');
		$filter_data = array(
			'sort'        => 'od.name',
			'order'       => 'ASC'
		);
		$data['options'] = $this->model_catalog_option->getOptions($filter_data);

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
				
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		if (VERSION >= 2.2) {
			$this->response->setOutput($this->load->view('revolution/revfilter', $data));
		} else {
			$this->response->setOutput($this->load->view('revolution/revfilter.tpl', $data));
		}

	}
	
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'revolution/revfilter')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}

}