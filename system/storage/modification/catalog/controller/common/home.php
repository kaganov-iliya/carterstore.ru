<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');

				$data['slideshow'] = $this->load->controller('revolution/revslideshow');
				$data['revcategorywall'] = $this->load->controller('revolution/revcategorywall');
				$data['ptabs'] = $this->load->controller('revolution/revpmod/ptabs');
				$data['pbest'] = $this->load->controller('revolution/revpmod/pbest');
				$data['plast'] = $this->load->controller('revolution/revpmod/plast');
				$data['pspec'] = $this->load->controller('revolution/revpmod/pspec');
				$data['slider_1'] = $this->load->controller('revolution/revslider/slider1');
				$data['slider_2'] = $this->load->controller('revolution/revslider/slider2');
				$data['slider_3'] = $this->load->controller('revolution/revslider/slider3');
				$data['slider_4'] = $this->load->controller('revolution/revslider/slider4');
				$data['slider_5'] = $this->load->controller('revolution/revslider/slider5');
				$data['blog'] = $this->load->controller('revolution/revblogmod');
				$data['blocks'] = $this->load->controller('revolution/revblocks');
				$data['aboutstore'] = $this->load->controller('revolution/revaboutstore');
				$data['socv'] = $this->load->controller('revolution/revsocv');
				$data['socfb'] = $this->load->controller('revolution/revsocfb');
				$data['socok'] = $this->load->controller('revolution/revsocok');
				$data['socvinsta'] = $this->load->controller('revolution/revsocvinsta');
				$setting_socv = $this->config->get('revtheme_home_socv');
				$data['right_insta'] = $setting_socv['right_insta'];
				$data['storereview'] = $this->load->controller('revolution/revstorereviewmod');
				$data['viewed_products'] = $this->load->controller('revolution/revviewed_products');
				$setting_allwide = $this->config->get('revtheme_header_menu');
				if ($setting_allwide['inhome']) {
					$data['allwide'] = true;
				} else {
					$data['allwide'] = false;
				}
				$setting_header_menu = $this->config->get('revtheme_header_menu');
				if ($setting_header_menu['type']) {
					$data['amazon'] = true;
				} else {
					$data['amazon'] = false;
				}
				$setting_home_all = $this->config->get('revtheme_home_all');
				$data['h1_home'] = $setting_home_all[$this->config->get('config_language_id')]['h1_home'];
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
						if (strpos($data['h1_home'], $rev_geo['code'])) {
							$data['h1_home'] = html_entity_decode(str_replace($rev_geo['code'], $rev_geo['text'], $data['h1_home']), ENT_QUOTES, 'UTF-8');
						}
					}
				}
				$data['setting_home_slideshow'] = $this->config->get('revtheme_home_slideshow');
			
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
