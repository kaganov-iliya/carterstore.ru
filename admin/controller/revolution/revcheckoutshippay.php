<?php
class ControllerRevolutionRevcheckoutShipPay extends Controller {
	private $error = array();

	public function index() {
		
		$this->load->language('revolution/revcheckoutshippay');
		$this->document->setTitle($this->language->get('heading_title'));

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_select_all'] = $this->language->get('text_select_all');
		$data['text_unselect_all'] = $this->language->get('text_unselect_all');
		$data['button_save'] = $this->language->get('button_save');
		
		$data['action'] = $this->url->link('revolution/revcheckoutshippay', 'token=' . $this->session->data['token'], 'SSL');
		
		if ($this->request->server['REQUEST_METHOD'] == 'POST' && $this->validate()) {
			$this->load->model('setting/setting');
			$this->model_setting_setting->editSetting('revtheme_revcheckoutshippay', $this->request->post);
			$this->session->data['success'] = $this->language->get('save_text');
			$this->response->redirect($this->url->link('revolution/revcheckoutshippay', 'token=' . $this->session->data['token'], 'SSL'));
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
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
			'href' => $this->url->link('revolution/revcheckoutshippay', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['cancel'] = $this->url->link('revolution/revtheme', 'token=' . $this->session->data['token'], 'SSL');
		
		if (isset($this->request->post['revtheme_revcheckoutshippay'])) {
			$data['revtheme_revcheckoutshippay'] = $this->request->post['revtheme_revcheckoutshippay'];
		} elseif ($this->config->get('revtheme_revcheckoutshippay')) {
			$data['revtheme_revcheckoutshippay'] = $this->config->get('revtheme_revcheckoutshippay');
		}
		else {
			$data['revtheme_revcheckoutshippay'] = array();
		}

		$this->load->model('extension/extension');
		$shipping_extensions = $this->model_extension_extension->getInstalled('shipping');
        $tmp = array();
        foreach ($shipping_extensions as $extension) {
            if ($this->config->get($extension . '_status')) {
                $tmp[] = $extension;
            }
        }
        $shipping_extensions = $tmp;
        $data['shipping_extensions'] = array();
		if(VERSION >= 2.2) {
			$files = glob(DIR_CATALOG . 'model/extension/shipping/*.php');
		} else {
			$files = glob(DIR_CATALOG . 'model/shipping/*.php');
		}
        if ($files) {
            foreach ($files as $file) {
                $extension = basename($file, '.php');
                if (in_array($extension, $shipping_extensions)) {
					if(VERSION >= 2.2) {
						$this->load->language('extension/shipping/' . $extension);
					} else {
						$this->load->language('shipping/' . $extension);
					}
                    $data['shipping_extensions'][] = array(
						'name' => $this->language->get('heading_title'),
						'cod'  => $extension
					);
                }
            }
        }
		
		$payment_extensions = $this->model_extension_extension->getInstalled('payment');
        $tmp = array();
        foreach ($payment_extensions as $extension) {
            if ($this->config->get($extension . '_status')) {
                $tmp[] = $extension;
            }
        }
        $payment_extensions = $tmp;
        $data['payment_extensions'] = array();
		if(VERSION >= 2.2) {
			$files = glob(DIR_CATALOG . 'model/extension/payment/*.php');
		} else {
			$files = glob(DIR_CATALOG . 'model/payment/*.php');
		}
        if ($files) {
            foreach ($files as $file) {
                $extension = basename($file, '.php');
                if (in_array($extension, $payment_extensions)) {
					if(VERSION >= 2.2) {
						$this->load->language('extension/payment/' . $extension);
					} else {
						$this->load->language('payment/' . $extension);
					}
					$data['payment_extensions'][] = array(
						'name' => $this->language->get('heading_title'),
						'cod'  => $extension
					);
                }
            }
        }
		
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
			$this->response->setOutput($this->load->view('revolution/revcheckoutshippay', $data));
		} else {
			$this->response->setOutput($this->load->view('revolution/revcheckoutshippay.tpl', $data));
		}
		
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'revolution/revcheckoutshippay')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}