<?php
class ControllerRevolutionRevmodal extends Controller {
	public function index() {

		$settings = $this->config->get('revtheme_all_settings');
		if (!$settings['modal_status']) {
			return false;
		}
		
		$data = array();
		$this->load->language('revolution/revolution');
		if ($settings[$this->config->get('config_language_id')]['text_yes'] && $settings[$this->config->get('config_language_id')]['text_no']) {
			$data['text_yes'] = $settings[$this->config->get('config_language_id')]['text_yes'];
			$data['text_no'] = $settings[$this->config->get('config_language_id')]['text_no'];
		} else {
			$data['text_yes'] = $this->language->get('text_yes');
			$data['text_no'] = $this->language->get('text_no');
		}
		$data['modal_heading_title'] = $settings[$this->config->get('config_language_id')]['modal_header'];
		$data['modal_message'] = html_entity_decode((str_replace("<img", "<img class='img-responsive'", $settings[$this->config->get('config_language_id')]['modal_text'])), ENT_QUOTES, 'UTF-8');
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
			foreach ($data['rev_geos'] as $rev_geo) {
				if (strpos($settings[$this->config->get('config_language_id')]['modal_text'], $rev_geo['code'])) {
					$modal_text = str_ireplace($rev_geo['code'], $rev_geo['text'], $settings[$this->config->get('config_language_id')]['modal_text']);
					$data['modal_message'] = html_entity_decode((str_replace("<img", "<img class='img-responsive'", $modal_text)), ENT_QUOTES, 'UTF-8');
				}
			}
		}
		
		$data['modal_time'] = $settings['modal_time'];
		$data['modal_buttons'] = $settings['modal_buttons'];
		
		if (VERSION >= 2.2) {
			$this->response->setOutput($this->load->view('revolution/revmodal', $data));
		} else {
			$this->response->setOutput($this->load->view('revolution/template/revolution/revmodal.tpl', $data));
		}

	}
}