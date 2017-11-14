<?php
class ControllerInformationInformation extends Controller {
	public function index() {
		$this->load->language('information/information');

		$this->load->model('catalog/information');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {

			if ($information_info['meta_title']) {
				$this->document->setTitle($information_info['meta_title']);
			} else {
				$this->document->setTitle($information_info['title']);
			}

			$this->document->setDescription($information_info['meta_description']);
			$this->document->setKeywords($information_info['meta_keyword']);

			$data['breadcrumbs'][] = array(
				'text' => $information_info['title'],
				'href' => $this->url->link('information/information', 'information_id=' .  $information_id)
			);

			if ($information_info['meta_h1']) {
				$data['heading_title'] = $information_info['meta_h1'];
			} else {
				$data['heading_title'] = $information_info['title'];
			}

			$data['button_continue'] = $this->language->get('button_continue');

			$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');

			$data['continue'] = $this->url->link('common/home');


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
						if (strpos($information_info['description'], $rev_geo['code'])) {
							$data['description'] = html_entity_decode(str_replace($rev_geo['code'], $rev_geo['text'], $information_info['description']), ENT_QUOTES, 'UTF-8');
						}
					}
				}
				$data['logo'] = '';
				$data['logo_width'] = '120';
				$data['logo_height'] = '120';
				$data['microdata_author'] = $data['microdata_name'] = $this->config->get('config_name');
				$data['microdata_date_info'] = date('Y-m-d', filectime(DIR_APPLICATION . 'model/revolution/revolution.php'));
				$data['microdata_url_info'] = $this->url->link('information/information', 'information_id=' .  $information_id);
			
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('information/information', $data));
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_error'),
				'href' => $this->url->link('information/information', 'information_id=' . $information_id)
			);

			$this->document->setTitle($this->language->get('text_error'));

			$data['heading_title'] = $this->language->get('text_error');

			$data['text_error'] = $this->language->get('text_error');

			$data['button_continue'] = $this->language->get('button_continue');

			$data['continue'] = $this->url->link('common/home');

			$this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');


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
						if (strpos($information_info['description'], $rev_geo['code'])) {
							$data['description'] = html_entity_decode(str_replace($rev_geo['code'], $rev_geo['text'], $information_info['description']), ENT_QUOTES, 'UTF-8');
						}
					}
				}
				$data['logo'] = '';
				$data['logo_width'] = '120';
				$data['logo_height'] = '120';
				$data['microdata_author'] = $data['microdata_name'] = $this->config->get('config_name');
				$data['microdata_date_info'] = date('Y-m-d', filectime(DIR_APPLICATION . 'model/revolution/revolution.php'));
				$data['microdata_url_info'] = $this->url->link('information/information', 'information_id=' .  $information_id);
			
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			$this->response->setOutput($this->load->view('error/not_found', $data));
		}
	}

	public function agree() {
		$this->load->model('catalog/information');

		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		$output = '';

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {
			$output .= html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8') . "\n";
		}

		$this->response->setOutput($output);
	}
}