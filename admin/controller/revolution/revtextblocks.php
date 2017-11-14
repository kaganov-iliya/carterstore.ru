<?php
class ControllerRevolutionRevtextblocks extends Controller {
	private $error = array();

	public function index(){
		$this->load->language('revolution/revtextblocks');

		$this->document->setTitle($this->language->get('revtextblocks_heading_title'));

		$this->load->model('revolution/revtextblocks');

		$this->getList();
	}

	public function add(){
		$this->load->language('revolution/revtextblocks');

		$this->document->setTitle($this->language->get('revtextblocks_heading_title'));

		$this->load->model('revolution/revtextblocks');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_revolution_revtextblocks->addtextblocks($this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['filter_name'])) {
				$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_status'])) {
				$url .= '&filter_status=' . $this->request->get['filter_status'];
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

			$this->response->redirect($this->url->link('revolution/revtextblocks', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	public function edit() {
		$this->load->language('revolution/revtextblocks');

		$this->document->setTitle($this->language->get('revtextblocks_heading_title'));

		$this->load->model('revolution/revtextblocks');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_revolution_revtextblocks->edittextblocks($this->request->get['tb_id'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['filter_name'])) {
				$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_status'])) {
				$url .= '&filter_status=' . $this->request->get['filter_status'];
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

			$this->response->redirect($this->url->link('revolution/revtextblocks', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	public function delete() {
		$this->load->language('revolution/revtextblocks');

		$this->document->setTitle($this->language->get('revtextblocks_heading_title'));

		$this->load->model('revolution/revtextblocks');

		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $tb_id) {
				$this->model_revolution_revtextblocks->deletetextblocks($tb_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['filter_name'])) {
				$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
			}
			
			if (isset($this->request->get['filter_status'])) {
				$url .= '&filter_status=' . $this->request->get['filter_status'];
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

			$this->response->redirect($this->url->link('revolution/revtextblocks', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getList();
	}

	protected function getList() {
		if (isset($this->request->get['filter_name'])) {
			$filter_name = $this->request->get['filter_name'];
		} else {
			$filter_name = null;
		}
		
		if (isset($this->request->get['filter_status'])) {
			$filter_status = $this->request->get['filter_status'];
		} else {
			$filter_status = null;
		}
	
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'name';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$url = '';
		
		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}
			
		if (isset($this->request->get['filter_status'])) {
			$url .= '&filter_status=' . $this->request->get['filter_status'];
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

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('revtextblocks_heading_title'),
			'href' => $this->url->link('revolution/revtextblocks', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);

		$data['add'] = $this->url->link('revolution/revtextblocks/add', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$data['delete'] = $this->url->link('revolution/revtextblocks/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');

		$data['textblockss'] = array();

		$filter_data = array(
			'filter_name'  => $filter_name,
			'filter_status'  => $filter_status,
			'sort'  	   => $sort,
			'order' 	   => $order,
			'start' 	   => ($page - 1) * $this->config->get('config_limit_admin'),
			'limit'		   => $this->config->get('config_limit_admin')
		);

		$textblocks_total = $this->model_revolution_revtextblocks->getTotaltextblockss();

		$results = $this->model_revolution_revtextblocks->gettextblockss($filter_data);

		foreach ($results as $result) {
			$data['textblockss'][] = array(
				'tb_id' => $result['tb_id'],
				'name'            => $result['title'],
				'sort_order'      => $result['sort_order'],
				'edit'            => $this->url->link('revolution/revtextblocks/edit', 'token=' . $this->session->data['token'] . '&tb_id=' . $result['tb_id'] . $url, 'SSL')
			);
		}

		$data['revtextblocks_heading_title'] = $this->language->get('revtextblocks_heading_title');

		$data['text_list'] = $this->language->get('text_list');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_confirm'] = $this->language->get('text_confirm');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');

		$data['column_name'] = $this->language->get('column_name');
		$data['column_sort_order'] = $this->language->get('column_sort_order');
		$data['column_action'] = $this->language->get('column_action');
		
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_status'] = $this->language->get('entry_status');
		
		$data['button_filter'] = $this->language->get('button_filter');
		$data['button_add'] = $this->language->get('button_add');
		$data['button_edit'] = $this->language->get('button_edit');
		$data['button_delete'] = $this->language->get('button_delete');
		$data['token'] = $this->session->data['token'];

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['sort_name'] = $this->url->link('revolution/revtextblocks', 'token=' . $this->session->data['token'] . '&sort=name' . $url, 'SSL');
		$data['sort_sort_order'] = $this->url->link('revolution/revtextblocks', 'token=' . $this->session->data['token'] . '&sort=sort_order' . $url, 'SSL');

		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $textblocks_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('revolution/revtextblocks', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($textblocks_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($textblocks_total - $this->config->get('config_limit_admin'))) ? $textblocks_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $textblocks_total, ceil($textblocks_total / $this->config->get('config_limit_admin')));

		$data['sort'] = $sort;
		$data['order'] = $order;
		$data['filter_status'] = $filter_status;
		$data['filter_name'] = $filter_name;

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		if (VERSION >= 2.2) {
			$this->response->setOutput($this->load->view('revolution/revtextblocks_list', $data));
		} else {
			$this->response->setOutput($this->load->view('revolution/revtextblocks_list.tpl', $data));
		}
		
	}

	protected function getForm() {
		$data['revtextblocks_heading_title'] = $this->language->get('revtextblocks_heading_title');

		$data['text_form'] = !isset($this->request->get['tb_id']) ? $this->language->get('text_add') : $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_default'] = $this->language->get('text_default');
		$data['text_percent'] = $this->language->get('text_percent');
		$data['text_amount'] = $this->language->get('text_amount');

		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_store'] = $this->language->get('entry_store');
		$data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$data['entry_customer_group'] = $this->language->get('entry_customer_group');
		$data['entry_category'] = $this->language->get('entry_category');
		$data['entry_product'] = $this->language->get('entry_product');
		$data['entry_manufacturer'] = $this->language->get('entry_manufacturer');
		$data['entry_ingore_product'] = $this->language->get('entry_ingore_product');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_description'] = $this->language->get('entry_description');
		$data['entry_assign'] = $this->language->get('entry_assign');

		$data['help_category'] = $this->language->get('help_category');
		$data['help_assign_product'] = $this->language->get('help_assign_product');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		
		$data['tab_general'] = $this->language->get('tab_general');
		$data['tab_data'] = $this->language->get('tab_data');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		$url = '';
		
		if (isset($this->request->get['filter_name'])) {
			$url .= '&filter_name=' . urlencode(html_entity_decode($this->request->get['filter_name'], ENT_QUOTES, 'UTF-8'));
		}
			
		if (isset($this->request->get['filter_status'])) {
			$url .= '&filter_status=' . $this->request->get['filter_status'];
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

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('revtextblocks_heading_title'),
			'href' => $this->url->link('revolution/revtextblocks', 'token=' . $this->session->data['token'] . $url, 'SSL')
		);

		if (!isset($this->request->get['tb_id'])) {
			$data['action'] = $this->url->link('revolution/revtextblocks/add', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$data['action'] = $this->url->link('revolution/revtextblocks/edit', 'token=' . $this->session->data['token'] . '&tb_id=' . $this->request->get['tb_id'] . $url, 'SSL');
		}

		$data['cancel'] = $this->url->link('revolution/revtextblocks', 'token=' . $this->session->data['token'] . $url, 'SSL');

		if (isset($this->request->get['tb_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$textblocks_info = $this->model_revolution_revtextblocks->gettextblocks($this->request->get['tb_id']);
		}
		
		$data['token'] = $this->session->data['token'];

		if (isset($this->request->post['textblocks_description'])) {
			$data['textblocks_description'] = $this->request->post['textblocks_description'];
		}elseif(isset($this->request->get['tb_id'])){
			$data['textblocks_description'] = $this->model_revolution_revtextblocks->gettextblocksDescriptions($this->request->get['tb_id']);
		} else {
			$data['textblocks_description'] = array();
		}
		
		if (isset($this->request->post['icontype'])) {
			$data['icontype'] = $this->request->post['icontype'];
		} elseif (!empty($textblocks_info)) {
			$data['icontype'] = $textblocks_info['icontype'];
		} else {
			$data['icontype'] = '0';
		}
		
		if (isset($this->request->post['icon'])) {
			$data['icon'] = $this->request->post['icon'];
		} elseif (!empty($textblocks_info)) {
			$data['icon'] = $textblocks_info['icon'];
		} else {
			$data['icon'] = 'fa none';
		}
		
		if (isset($this->request->post['image'])) {
			$data['image'] = $this->request->post['image'];
		} elseif (!empty($textblocks_info)) {
			$data['image'] = $textblocks_info['image'];
		} else {
			$data['image'] = '';
		}
		
		$this->load->model('tool/image');
		if (isset($this->request->post['image']) && is_file(DIR_IMAGE . $this->request->post['image'])) {
			$data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 25, 25);
		} elseif (!empty($textblocks_info) && is_file(DIR_IMAGE . $textblocks_info['image'])) {
			$data['thumb'] = $this->model_tool_image->resize($textblocks_info['image'], 25, 25);
		} else {
			$data['thumb'] = $this->model_tool_image->resize('no_image.png', 25, 25);
		}
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 25, 25);
		
		$this->load->model('catalog/category');
		
		if(isset($this->request->post['textblocks_category'])){
			$categories = $this->request->post['textblocks_category'];
		} elseif (!empty($textblocks_info)) {
			$categories = ($textblocks_info['categories'] ? json_decode($textblocks_info['categories']) : array());
		} else {
			$categories = array();
		}

		$data['textblocks_categories'] = array();

		foreach ($categories as $category_id) {
			$category_info = $this->model_catalog_category->getCategory($category_id);

			if ($category_info) {
				$data['textblocks_categories'][] = array(
					'category_id' => $category_info['category_id'],
					'name' => ($category_info['path']) ? $category_info['path'] . ' &gt; ' . $category_info['name'] : $category_info['name']
				);
			}
		}
		
		$this->load->model('catalog/product');
		
		if(isset($this->request->post['textblocks_product'])){
			$products = $this->request->post['textblocks_product'];
		} elseif (!empty($textblocks_info)) {
			$products = ($textblocks_info['products'] ? json_decode($textblocks_info['products']) : array());
		} else {
			$products = array();
		}

		$data['textblocks_products'] = array();

		foreach($products as $product_id){
			$product_info = $this->model_catalog_product->getProduct($product_id);

			if ($product_info) {
				$data['textblocks_products'][] = array(
					'product_id' => $product_info['product_id'],
					'name' => $product_info['name']
				);
			}
		}
		
		$this->load->model('catalog/product');
		
		if(isset($this->request->post['textblocks_ingore_product'])){
			$ingore_products = $this->request->post['textblocks_ingore_product'];
		} elseif (!empty($textblocks_info)) {
			$ingore_products = ($textblocks_info['ingore_products'] ? json_decode($textblocks_info['ingore_products']) : array());
		} else {
			$ingore_products = array();
		}

		$data['textblocks_ingore_products'] = array();

		foreach($ingore_products as $product_id){
			$product_info = $this->model_catalog_product->getProduct($product_id);

			if ($product_info) {
				$data['textblocks_ingore_products'][] = array(
					'product_id' => $product_info['product_id'],
					'name' => $product_info['name']
				);
			}
		}
		
		$this->load->model('catalog/manufacturer');
		
		if(isset($this->request->post['textblocks_manufacturer'])){
			$manufacturers = $this->request->post['textblocks_manufacturer'];
		} elseif (!empty($textblocks_info)) {
			$manufacturers = ($textblocks_info['manufactures'] ? json_decode($textblocks_info['manufactures']) : array());
		} else {
			$manufacturers = array();
		}
		

		$data['textblocks_manufacturers'] = array();

		foreach($manufacturers as $manufacturer_id){
			if (VERSION >= 2.2) {
				$manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($manufacturer_id);
			} else {
				$manufacturer_info = $this->model_catalog_manufacturer->getmanufacturer($manufacturer_id);
			}

			if ($manufacturer_info) {
				$data['textblocks_manufacturers'][] = array(
					'manufacturer_id' => $manufacturer_info['manufacturer_id'],
					'name' => $manufacturer_info['name']
				);
			}
		}

		$this->load->model('setting/store');

		$data['stores'] = $this->model_setting_store->getStores();

		if (isset($this->request->post['textblocks_store'])) {
			$data['textblocks_store'] = $this->request->post['textblocks_store'];
		} elseif (isset($this->request->get['tb_id'])) {
			$data['textblocks_store'] = ($textblocks_info['stores'] ? json_decode($textblocks_info['stores']) : array());
		} else {
			$data['textblocks_store'] = array(0);
		}
		
		if (isset($this->request->post['allproducts'])) {
			$data['allproducts'] = $this->request->post['allproducts'];
		} elseif (!empty($textblocks_info)) {
			$data['allproducts'] = $textblocks_info['allproducts'];
		} else {
			$data['allproducts'] = false;
		}
		
		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($textblocks_info)) {
			$data['status'] = $textblocks_info['status'];
		} else {
			$data['status'] = true;
		}
		
		if (isset($this->request->post['checkbox'])) {
			$data['checkbox'] = $this->request->post['checkbox'];
		} elseif (!empty($textblocks_info)) {
			$data['checkbox'] = $textblocks_info['checkbox'];
		} else {
			$data['checkbox'] = true;
		}

		if (isset($this->request->post['sort_order'])) {
			$data['sort_order'] = $this->request->post['sort_order'];
		} elseif (!empty($textblocks_info)) {
			$data['sort_order'] = $textblocks_info['sort_order'];
		} else {
			$data['sort_order'] = '';
		}
		
		$this->load->model('localisation/language');
		$data['languages'] = $this->model_localisation_language->getLanguages();

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		if (VERSION >= 2.2) {
			$this->response->setOutput($this->load->view('revolution/revtextblocks_form', $data));
		} else {
			$this->response->setOutput($this->load->view('revolution/revtextblocks_form.tpl', $data));
		}
		
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'revolution/revtextblocks')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}

		return !$this->error;
	}

	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'revolution/revtextblocks')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		return !$this->error;
	}

	public function autocomplete() {
		$json = array();

		if (isset($this->request->get['filter_name'])) {
			$this->load->model('revolution/revtextblocks');

			$filter_data = array(
				'filter_name' => $this->request->get['filter_name'],
				'start'       => 0,
				'limit'       => 5
			);

			$results = $this->model_revolution_revtextblocks->gettextblockss($filter_data);

			foreach ($results as $result) {
				$json[] = array(
					'tb_id' => $result['tb_id'],
					'name'            => strip_tags(html_entity_decode($result['title'], ENT_QUOTES, 'UTF-8'))
				);
			}
		}

		$sort_order = array();

		foreach ($json as $key => $value) {
			$sort_order[$key] = $value['name'];
		}

		array_multisort($sort_order, SORT_ASC, $json);

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}