<?php
class ControllerModuleRevmenumodcustom extends Controller {
	public function index($setting) {
		$this->load->language('revolution/revolution');		
		
		if (!$setting['status']) {
			return false;
		}
		
		$data['revtheme_dop_menu_title'] = $setting['title'][$this->config->get('config_language_id')];
		
		$this->load->model('tool/image');
		if (VERSION >= 2.2) {
			$config_image_category_width = $this->config->get($this->config->get('config_theme') . '_image_category_width');
			$config_image_category_height = $this->config->get($this->config->get('config_theme') . '_image_category_height');
		} else {
			$config_image_category_width = $this->config->get('config_image_category_width');
			$config_image_category_height = $this->config->get('config_image_category_height');
		}
		
		$revtheme_dop_menu = $setting['links'];
		if (!empty($revtheme_dop_menu)){
			$data['revtheme_dop_menus'] = json_decode(htmlspecialchars_decode($revtheme_dop_menu), true);
			$data['config_language_id'] = $this->config->get('config_language_id');
			foreach($data['revtheme_dop_menus'] as $key => $val){
				if (!empty($data['revtheme_dop_menus'][$key]['dop_menu_image'])){
					$data['revtheme_dop_menus'][$key]['dop_menu_image'] = $this->model_tool_image->resize($data['revtheme_dop_menus'][$key]['dop_menu_image'], $config_image_category_width, $config_image_category_height);
				} else {
					$data['revtheme_dop_menus'][$key]['dop_menu_image'] = false;
				}
				if (isset($data['revtheme_dop_menus'][$key]['children'])){
					$children = $data['revtheme_dop_menus'][$key]['children'];
					foreach($children as $key2 => $val2){
						if (!empty($data['revtheme_dop_menus'][$key]['children'][$key2]['dop_menu_image'])){
							$data['revtheme_dop_menus'][$key]['children'][$key2]['dop_menu_image'] = $this->model_tool_image->resize($data['revtheme_dop_menus'][$key]['children'][$key2]['dop_menu_image'], $config_image_category_width, $config_image_category_height);
						} else {
							$data['revtheme_dop_menus'][$key]['children'][$key2]['dop_menu_image'] = false;
						}
					}
				}
				if (!empty($data['revtheme_dop_menus'][$key]['column'])){
					$data['revtheme_dop_menus'][$key]['column'] = $data['revtheme_dop_menus'][$key]['column'];
				} else {
					$data['revtheme_dop_menus'][$key]['column'] = 1;
				}
			}
		} else {
			return false;
		}

		if (VERSION >= 2.2) {
			return $this->load->view('module/revmenumodcustom', $data);
		} else {
			return $this->load->view('revolution/template/module/revmenumodcustom.tpl', $data);
		}
		
	}
}