<?php
class ControllerRevolutionRevsocok extends Controller {
	public function index() {

		$setting = $this->config->get('revtheme_home_socv');

		if (!$setting['status_ok']) {
			return false;
		}

		$data['width'] = $setting['width_ok'];
		$data['height'] = $setting['height_ok'];
		$data['id'] = $setting['id_ok'];

		if (VERSION >= 2.2) {
			return $this->load->view('revolution/revsocok', $data);
		} else {
			return $this->load->view('revolution/template/revolution/revsocok.tpl', $data);
		}

	}
}