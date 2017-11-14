<?php
class ControllerRevolutionRevaboutstore extends Controller {
	public function index() {
		
		$setting = $this->config->get('revtheme_aboutstore_home');
		
		if ($setting['status']) {
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
			
			$data['html'] = html_entity_decode($setting[$this->config->get('config_language_id')]['description'], ENT_QUOTES, 'UTF-8');
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
					if (strpos($setting[$this->config->get('config_language_id')]['description'], $rev_geo['code'])) {
						$data['html'] = html_entity_decode(str_replace($rev_geo['code'], $rev_geo['text'], $setting[$this->config->get('config_language_id')]['description']), ENT_QUOTES, 'UTF-8');
					}
				}
			}

			if (VERSION >= 2.2) {
				return $this->load->view('revolution/revaboutstore', $data);
			} else {
				return $this->load->view('revolution/template/revolution/revaboutstore.tpl', $data);
			}
		}
	}
}