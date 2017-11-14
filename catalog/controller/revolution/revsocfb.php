<?php
class ControllerRevolutionRevsocfb extends Controller {
	public function index() {

		$setting = $this->config->get('revtheme_home_socv');

		if (!$setting['status_fb']) {
			return false;
		}

		$data['width'] = $setting['width_fb'];
		$data['height'] = $setting['height_fb'];
		$data['id'] = $setting['id_fb'];

		if (VERSION >= 2.2) {
			return $this->load->view('revolution/revsocfb', $data);
		} else {
			return $this->load->view('revolution/template/revolution/revsocfb.tpl', $data);
		}

	}
}