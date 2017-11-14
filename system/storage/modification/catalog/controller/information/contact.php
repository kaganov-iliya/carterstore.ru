<?php
class ControllerInformationContact extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('information/contact');

		$this->document->setTitle($this->language->get('heading_title'));

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->config->get('config_email'));
            $mail->setReplyTo($this->request->post['email']);
			$mail->setSender(html_entity_decode($this->request->post['name'], ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode(sprintf($this->language->get('email_subject'), $this->request->post['name']), ENT_QUOTES, 'UTF-8'));
			$mail->setText($this->request->post['enquiry']);
			$mail->send();

			$this->response->redirect($this->url->link('information/contact/success'));
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/contact')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_location'] = $this->language->get('text_location');
		$data['text_store'] = $this->language->get('text_store');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_telephone'] = $this->language->get('text_telephone');
		$data['text_fax'] = $this->language->get('text_fax');
		$data['text_open'] = $this->language->get('text_open');
		$data['text_comment'] = $this->language->get('text_comment');

		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_enquiry'] = $this->language->get('entry_enquiry');

		$data['button_map'] = $this->language->get('button_map');

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		if (isset($this->error['email'])) {
			$data['error_email'] = $this->error['email'];
		} else {
			$data['error_email'] = '';
		}

		if (isset($this->error['enquiry'])) {
			$data['error_enquiry'] = $this->error['enquiry'];
		} else {
			$data['error_enquiry'] = '';
		}

		$data['button_submit'] = $this->language->get('button_submit');

		$data['action'] = $this->url->link('information/contact', '', true);

		$this->load->model('tool/image');

		if ($this->config->get('config_image')) {
			$data['image'] = $this->model_tool_image->resize($this->config->get('config_image'), $this->config->get($this->config->get('config_theme') . '_image_location_width'), $this->config->get($this->config->get('config_theme') . '_image_location_height'));
		} else {
			$data['image'] = false;
		}

		$data['store'] = $this->config->get('config_name');
		$data['address'] = nl2br($this->config->get('config_address'));
		$data['geocode'] = $this->config->get('config_geocode');
		$data['geocode_hl'] = $this->config->get('config_language');
		$data['telephone'] = $this->config->get('config_telephone');
		$data['fax'] = $this->config->get('config_fax');
		$data['open'] = nl2br($this->config->get('config_open'));
		$data['comment'] = $this->config->get('config_comment');


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
				}
				$data['config_email'] = $this->config->get('config_email');
				$header_phone = $this->config->get('revtheme_header_phone');
				$data['header_phone_cod'] = $header_phone[$this->config->get('config_language_id')]['cod'];
				$data['header_phone_number'] = $header_phone[$this->config->get('config_language_id')]['number'];
				if ($this->config->get('revtheme_geo_set')['status']) {
					foreach ($data['rev_geos'] as $rev_geo) {
						if ($data['header_phone_number'] == $rev_geo['code']) {
							$data['header_phone_number'] = $rev_geo['text'];
						}
					}
				}
				$data['header_phone_cod2'] = $header_phone[$this->config->get('config_language_id')]['cod2'];
				$data['header_phone_number2'] = $header_phone[$this->config->get('config_language_id')]['number2'];
				if ($this->config->get('revtheme_geo_set')['status']) {
					foreach ($data['rev_geos'] as $rev_geo) {
						if ($data['header_phone_number2'] == $rev_geo['code']) {
							$data['header_phone_number2'] = $rev_geo['text'];
						}
					}
				}
				$settings_all_settings = $this->config->get('revtheme_all_settings');
				$setting_footer_all = $this->config->get('revtheme_footer_all');
				$data['f_map'] = $setting_footer_all['f_map'];
				$results2 = $this->config->get('revtheme_footer_soc');
				if (!empty($results2)){
					$http_s = array("http://", "https://");
					foreach ($results2 as $result) {
						if ($settings_all_settings['soc_conts_url']) {
							$link_t = explode('/', str_replace($http_s,'',$result['link'][$this->config->get('config_language_id')]));
							$link_t = $link_t[0];
						} else {
							$link_t = $result['title'][$this->config->get('config_language_id')];
						}
						$data['revtheme_footer_socs'][] = array(
							'image'  => $result['image'],
							'link'   => $result['link'][$this->config->get('config_language_id')],
							'link_t' => $link_t,
							'title'  => $result['title'][$this->config->get('config_language_id')],
							'sort'   => $result['sort']
						);
					}
				} else {
					$data['revtheme_footer_socs'] = false;
				}
				if (!empty($data['revtheme_footer_socs'])){
					foreach ($data['revtheme_footer_socs'] as $key => $value) {
						$sort[$key] = $value['sort'];
					}
					array_multisort($sort, SORT_ASC, $data['revtheme_footer_socs']);
				}
				
				$dop_contact_status = $this->config->get('revtheme_header_dop_contacts_status');
				if ($dop_contact_status){
					$dop_contact = $this->config->get('revtheme_header_dop_contact');
					if (!empty($dop_contact)){
						foreach ($dop_contact as $result) {
							
							$style = '';
							$this->load->model('tool/image');
							if ($result['icontype']) {
								if ($result['icon'] == 'fa none') {
									$style = ' hidden';
								}
								$result_icon = '<i class="'.$result['icon'].$style.'"></i>';
							} else {
								if (!$result['image'] || $result['image'] == 'no_image.png') {
									$style = ' hidden';
								}
								$result_icon = '<img class="'.$style.'" src="'.$this->model_tool_image->resize($result['image'], 21, 21).'" alt=""/>';
							}
							$number = $result['number'][$this->config->get('config_language_id')];
							if ($this->config->get('revtheme_geo_set')['status']) {
								foreach ($data['rev_geos'] as $rev_geo) {
									if ($number == $rev_geo['code']) {
										$number = $rev_geo['text'];
									}
								}
							}
							
							$data['dop_contacts'][] = array(
								'icon' 		=> $result_icon,
								'number' 	=> $number,
								'href' 		=> $result['href'][$this->config->get('config_language_id')],
								'sort'  	=> $result['sort']
							);
						}
						
						foreach ($data['dop_contacts'] as $key => $value) {
							$sort_dop_contacts2[$key] = $value['sort'];
						}
						if (count($data['dop_contacts']) > 1) {
							array_multisort($sort_dop_contacts2, SORT_ASC, $data['dop_contacts']);
						}

					} else {
						$data['dop_contacts'] = false;
					}
				} else {
						$data['dop_contacts'] = false;
				}
				$data['settings_all_settings'] = $this->config->get('revtheme_all_settings');
				$data['yamap'] = html_entity_decode($settings_all_settings['yamap'], ENT_QUOTES, 'UTF-8');
				$this->load->language('revolution/revolution');
				$data['text_contact_ourcontacts'] = $this->language->get('text_contact_ourcontacts');
				$data['descript'] = $settings_all_settings[$this->config->get('config_language_id')]['description'];
				if ($this->config->get('revtheme_all_settings')['pol_konf']) {
					$this->load->model('catalog/information');
					$information_info = $this->model_catalog_information->getInformation($this->config->get('revtheme_all_settings')['pol_konf']);
					if ($information_info) {
						if ($this->config->get('revtheme_all_settings')['pol_konf_tvivod']) {
							$data['text_agree_pol_konf'] = sprintf($this->language->get('text_agree_pol_konf_st'), $this->url->link('information/information', 'information_id=' . $this->config->get('revtheme_all_settings')['pol_konf'], true), $information_info['title'], $information_info['title']);
						} else {
							$data['text_agree_pol_konf'] = sprintf($this->language->get('text_agree_pol_konf'), $this->url->link('information/information', 'information_id=' . $this->config->get('revtheme_all_settings')['pol_konf'], true), $information_info['title']);
						}
					} else {
						$data['text_agree_pol_konf'] = '';
					}
				} else {
					$data['text_agree_pol_konf'] = '';
				}
				if (isset($this->error['agree_pol_konf'])) {
					$data['agree_pol_konf'] = $this->error['agree_pol_konf'];
				} else {
					$data['agree_pol_konf'] = '';
				}
			
		$data['locations'] = array();

		$this->load->model('localisation/location');

		foreach((array)$this->config->get('config_location') as $location_id) {
			$location_info = $this->model_localisation_location->getLocation($location_id);

			if ($location_info) {
				if ($location_info['image']) {
					$image = $this->model_tool_image->resize($location_info['image'], $this->config->get($this->config->get('config_theme') . '_image_location_width'), $this->config->get($this->config->get('config_theme') . '_image_location_height'));
				} else {
					$image = false;
				}

				$data['locations'][] = array(
					'location_id' => $location_info['location_id'],
					'name'        => $location_info['name'],
					'address'     => nl2br($location_info['address']),
					'geocode'     => $location_info['geocode'],
					'telephone'   => $location_info['telephone'],
					'fax'         => $location_info['fax'],
					'image'       => $image,
					'open'        => nl2br($location_info['open']),
					'comment'     => $location_info['comment']
				);
			}
		}

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} else {
			$data['name'] = $this->customer->getFirstName();
		}

		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} else {
			$data['email'] = $this->customer->getEmail();
		}

		if (isset($this->request->post['enquiry'])) {
			$data['enquiry'] = $this->request->post['enquiry'];
		} else {
			$data['enquiry'] = '';
		}

		// Captcha
		if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
			$data['captcha'] = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha'), $this->error);
		} else {
			$data['captcha'] = '';
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('information/contact', $data));
	}

	protected function validate() {

				if ($this->config->get('revtheme_all_settings')['pol_konf']) {
					$this->load->language('revolution/revolution');
					$this->load->model('catalog/information');
					$information_info = $this->model_catalog_information->getInformation($this->config->get('revtheme_all_settings')['pol_konf']);
					if ($information_info && !isset($this->request->post['agree_pol_konf'])) {
						if ($this->config->get('revtheme_all_settings')['pol_konf_tvivod']) {
							$this->error['agree_pol_konf'] = sprintf($this->language->get('error_agree_pol_konf_st'), $information_info['title']);
						} else {
							$this->error['agree_pol_konf'] = $this->language->get('error_agree_pol_konf');
						}
					}
				}
			
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		if (!preg_match($this->config->get('config_mail_regexp'), $this->request->post['email'])) {
			$this->error['email'] = $this->language->get('error_email');
		}

		if ((utf8_strlen($this->request->post['enquiry']) < 10) || (utf8_strlen($this->request->post['enquiry']) > 3000)) {
			$this->error['enquiry'] = $this->language->get('error_enquiry');
		}

		// Captcha
		if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
			$captcha = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');

			if ($captcha) {
				$this->error['captcha'] = $captcha;
			}
		}

		return !$this->error;
	}

	public function success() {
		$this->load->language('information/contact');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/contact')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_message'] = $this->language->get('text_success');

		$data['button_continue'] = $this->language->get('button_continue');

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/success', $data));
	}
}
