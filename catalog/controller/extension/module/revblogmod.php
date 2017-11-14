<?php
class ControllerExtensionModuleRevblogmod extends Controller {
	public function index($setting) {
		static $module = 0;
		
		$this->load->model('revolution/revolution');
		$this->load->model('tool/image');

		if (!$setting['status']) {
			return false;
		}

		if ($setting['title']) {
			$data['heading_title'] = ('<i class="'.$setting['icon'].'"></i>' . $setting['title']);
		} else {
			$data['heading_title'] = false;
		}
		$data['slider'] = $setting['slider'];
		$data['image_status'] = $setting['image_status'];
		$data['data_status'] = $setting['data_status'];
		
		$data['blogs'] = array();
		
		if (!$setting['news_limit']) {
			$setting['news_limit'] = 5;
		}

		if ($setting['blog_category_id']) {
			$filter_category_id = $setting['blog_category_id'];
		} else {
			$filter_category_id = false;
		}
		
		$data_sort = array(
			'start' => 0,
			'limit' => (int)$setting['news_limit'],
			'order' => 'DESC',
			'filter_category_id' => $filter_category_id
		);

		$blogs = $this->model_revolution_revolution->getBlogs($data_sort);

		foreach ($blogs as $blog) {
			
			if ($blog['image']) {
				$image = $this->model_tool_image->resize($blog['image'], $setting['image_width'], $setting['image_height']);
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', $setting['image_width'], $setting['image_height']);
			}
			$description = utf8_substr(strip_tags(html_entity_decode($blog['description'], ENT_QUOTES, 'UTF-8')), 0, $setting['desc_limit']) . '..';
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
					if (strpos($blog['description'], $rev_geo['code'])) {
						$description = str_replace($rev_geo['code'], $rev_geo['text'], $blog['description']);
						$description = utf8_substr(strip_tags(html_entity_decode($description, ENT_QUOTES, 'UTF-8')), 0, $setting['desc_limit']) . '..';
					}
				}
			}

			$data['blogs'][] = array(
				'title'       => $blog['title'],
				'thumb'       => $image,
				'data_added'  => date($this->language->get('date_format_short'), strtotime($blog['date_available'])),
				'description' => $description,
				'href'        => $this->url->link('revolution/revblog_blog', 'revblog_id=' . $blog['revblog_id'])
			);
		}

		$data['module'] = $module++;
		
		if ($data['blogs']) {
			if (VERSION >= 2.2) {
				return $this->load->view('module/revblog_mod', $data);
			} else {
				return $this->load->view('revolution/template/module/revblog_mod.tpl', $data);
			}
		}
	}
}