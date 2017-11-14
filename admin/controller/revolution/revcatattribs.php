<?php
class ControllerRevolutionRevcatattribs extends Controller {

	public function index() {
		$this->load->language('revolution/revcatattribs');

		$this->document->setTitle($this->language->get('heading_title'));
		$data['heading_title'] = $this->language->get('heading_title');
		$data['heading_text'] = $this->language->get('heading_text');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		
		$data['action'] = $this->url->link('revolution/revcatattribs', 'token=' . $this->session->data['token'], 'SSL');
		
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			$this->load->model('setting/setting');
			$this->model_setting_setting->editSetting('revtheme_catattribs', $this->request->post, 0 );
			$this->session->data['success'] = $this->language->get('save_text');
			$this->response->redirect($this->url->link('revolution/revcatattribs', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_revtheme'),
			'href' => $this->url->link('revolution/revtheme', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('revolution/revcatattribs', 'token=' . $this->session->data['token'], 'SSL')
		);
		
		$this->load->model('catalog/attribute');

		if (isset($this->request->post['revtheme_catattribs_settings'])) {
			$data['revtheme_catattribs_settings'] = $this->request->post['revtheme_catattribs_settings'];
		} else if ($this->config->get('revtheme_catattribs_settings')) {
			$data['revtheme_catattribs_settings'] = $this->config->get('revtheme_catattribs_settings');
		} else {
			$data['revtheme_catattribs_settings'] = array(
				'description_on'				=> true,
				'description_in_grid'			=> false,
				'options_in_cat'				=> true,
				'options_in_grid'				=> false,
				'zamena_description'			=> true,
				'attributes_status'				=> true,
				'model'							=> false,
				'sku'							=> true,
				'stock'							=> true,
				'length'						=> false,
				'weight'						=> false,
				'show_name' 					=> true,
				'show_tags' 					=> true,
				'count' 						=> 5,
				'separator' 					=> '<br>'
			);
		}
		
		$data['attributes'] = $this->model_catalog_attribute->getAttributes();
		
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
			$this->response->setOutput($this->load->view('revolution/revcatattribs', $data));
		} else {
			$this->response->setOutput($this->load->view('revolution/revcatattribs.tpl', $data));
		}

	}

}