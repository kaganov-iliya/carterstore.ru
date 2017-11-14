<?php
class ControllerExtensionCaptchaGoogleCaptchaTwo extends Controller {
    public function index($error = array()) {
        $this->load->language('extension/captcha/google_captcha');

		$data['text_captcha'] = $this->language->get('text_captcha');

		$data['entry_captcha'] = $this->language->get('entry_captcha');

        if (isset($error['captcha'])) {
			$data['error_captcha'] = $error['captcha'];
		} else {
			$data['error_captcha'] = '';
		}

		$data['site_key'] = $this->config->get('google_captcha_key');

		$data['lang'] = $this->config->get('config_language');

        $data['route'] = $this->request->get['route'];
		
		if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
			$data['recaptcha'] = true;
		} else {
			$data['recaptcha'] = false;
		}

		return $this->load->view('extension/captcha/google_captcha_two', $data);
    }

    public function validate() {
		if (empty($this->session->data['gcapcha'])) {
			$this->load->language('extension/captcha/google_captcha');

			$recaptcha = file_get_contents('https://www.google.com/recaptcha/api/siteverify?secret=' . urlencode($this->config->get('google_captcha_secret')) . '&response=' . $this->request->post['g-recaptcha-response'] . '&remoteip=' . $this->request->server['REMOTE_ADDR']);
	
			$recaptcha = json_decode($recaptcha, true);
	
			if ($recaptcha['success']) {
				$this->session->data['gcapcha']	= true;
			} else {
				return $this->language->get('error_captcha');
			}
		}
    }
}
