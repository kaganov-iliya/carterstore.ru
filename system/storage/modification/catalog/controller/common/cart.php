<?php
class ControllerCommonCart extends Controller {
	public function index() {
		$this->load->language('common/cart');

				$data['setting_header_cart'] = $revtheme_header_cart = $this->config->get('revtheme_header_cart');
				$data['setting_revtheme_header_menu'] = $this->config->get('revtheme_header_menu');
				$revtheme_all_settings = $this->config->get('revtheme_all_settings');
				$this->load->language('revolution/revolution');
				$data['text_rev_buy_quick'] = $this->language->get('text_rev_buy_quick');

				$style = '';
				$this->load->model('tool/image');
				if ($data['setting_header_cart']['icontype']) {
					if ($data['setting_header_cart']['icon'] == 'fa none') {
						$style = ' hidden';
					}
					$image = '<i class="'.$data['setting_header_cart']['icon'].$style.'"></i>';
				} else {
					if (!$data['setting_header_cart']['image'] || $data['setting_header_cart']['image'] == 'no_image.png') {
						$style = ' hidden';
					}
					$image = '<span class="heading_ico_image'.$style.'"><img src="'.$this->model_tool_image->resize($data['setting_header_cart']['image'], 21, 21).'" alt=""/></span>';
				}
				$data['mini_header_cart_class'] = '';
				if ($revtheme_header_cart['cart_size'] == 'small') {
					$heading_title = ($image . $this->language->get('text_rev_items_small'));
				} else if ($revtheme_header_cart['cart_size'] == 'mini') {
					$heading_title = ($image . $this->language->get('text_rev_items_mini'));
					$data['mini_header_cart_class'] = 'mini_header_cart';
				} else {
					$heading_title = ($image . $this->language->get('text_rev_items'));
				}
				if (VERSION >= 2.2) {
					$config_image_cart_width = $this->config->get($this->config->get('config_theme') . '_image_cart_width');
					$config_image_cart_height = $this->config->get($this->config->get('config_theme') . '_image_cart_height');
				} else {
					$config_image_cart_width = $this->config->get('config_image_cart_width');
					$config_image_cart_height = $this->config->get('config_image_cart_height');
				}
				$product_settings = $this->config->get('revtheme_product_all');
				$data['q_zavisimost'] = $product_settings['q_zavisimost'];
				$this->load->model('catalog/product');
			

		// Totals
		$this->load->model('extension/extension');

		$totals = array();
		$taxes = $this->cart->getTaxes();
		$total = 0;

		// Because __call can not keep var references so we put them into an array.
		$total_data = array(
			'totals' => &$totals,
			'taxes'  => &$taxes,
			'total'  => &$total
		);
			
		// Display prices
		if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
			$sort_order = array();

			$results = $this->model_extension_extension->getExtensions('total');

			foreach ($results as $key => $value) {
				$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
			}

			array_multisort($sort_order, SORT_ASC, $results);

			foreach ($results as $result) {
				if ($this->config->get($result['code'] . '_status')) {
					$this->load->model('extension/total/' . $result['code']);

					// We have to put the totals in an array so that they pass by reference.
					$this->{'model_extension_total_' . $result['code']}->getTotal($total_data);
				}
			}

			$sort_order = array();

			foreach ($totals as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			}

			array_multisort($sort_order, SORT_ASC, $totals);
		}

		$data['text_empty'] = $this->language->get('text_empty');
		$data['text_cart'] = $this->language->get('text_cart');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_recurring'] = $this->language->get('text_recurring');
		$data['text_items'] = sprintf($heading_title, $this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0), $this->currency->format($total, $this->session->data['currency']));
		$data['text_loading'] = $this->language->get('text_loading');

		$data['button_remove'] = $this->language->get('button_remove');

		$this->load->model('tool/image');
		$this->load->model('tool/upload');

		$data['products'] = array();

		foreach ($this->cart->getProducts() as $product) {
			if ($product['image']) {
				$image = $this->model_tool_image->resize($product['image'], $this->config->get($this->config->get('config_theme') . '_image_cart_width'), $this->config->get($this->config->get('config_theme') . '_image_cart_height'));
			} else {
				$image = $this->model_tool_image->resize('no_image.png', $config_image_cart_width, $config_image_cart_height);
			}

$quantity_pr = $this->model_catalog_product->getProduct($product['product_id'])['quantity'];
			$option_data = array();

			foreach ($product['option'] as $option) {
				if ($option['type'] != 'file') {
					$value = $option['value'];
				} else {
					$upload_info = $this->model_tool_upload->getUploadByCode($option['value']);

					if ($upload_info) {
						$value = $upload_info['name'];
					} else {
						$value = '';
					}
				}


				if (isset($option['opt_image'])) {
					if ($option['opt_image']) {
						$image = $option['opt_image'] ? $this->model_tool_image->resize($option['opt_image'], $config_image_cart_width, $config_image_cart_height) : '';
					} else {
						$image = $image;
					}
				}
			
				$option_data[] = array(
					'name'  => $option['name'],
					'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value),
					'type'  => $option['type']
				);
			}

			// Display prices
			if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
				$unit_price = $this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax'));
				
				$price = $this->currency->format($unit_price, $this->session->data['currency']);
				$total = $this->currency->format($unit_price * $product['quantity'], $this->session->data['currency']);
			} else {
				$price = false;
				$total = false;
			}

			$data['products'][] = array(
				'cart_id'   => $product['cart_id'],
				'thumb'     => $image,
				'name'      => $product['name'],
				'model'     => $product['model'], 'minimum'  => $product['minimum'], 'quantity_pr'  => $quantity_pr, 'product_id' => $product['product_id'],
				'option'    => $option_data,
				'recurring' => ($product['recurring'] ? $product['recurring']['name'] : ''),
				'quantity'  => $product['quantity'],
				'price'     => $price,
				'total'     => $total,
				'href'      => $this->url->link('product/product', 'product_id=' . $product['product_id'])
			);
		}

		// Gift Voucher
		$data['vouchers'] = array();

		if (!empty($this->session->data['vouchers'])) {
			foreach ($this->session->data['vouchers'] as $key => $voucher) {
				$data['vouchers'][] = array(
					'key'         => $key,
					'description' => $voucher['description'],
					'amount'      => $this->currency->format($voucher['amount'], $this->session->data['currency'])
				);
			}
		}

		$data['totals'] = array();

		foreach ($totals as $total) {
			$data['totals'][] = array(
				'title' => $total['title'],
				'text'  => $this->currency->format($total['value'], $this->session->data['currency']),
			);
		}

		$data['cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link(isset($this->config->get('revtheme_all_settings')['revcheckout_status']) && $this->config->get('revtheme_all_settings')['revcheckout_status'] ? 'revolution/revcheckout' : 'checkout/checkout'
			, '', true);

		return $this->load->view('common/cart', $data);
	}

	public function info() {
		$this->response->setOutput($this->index());
	}
}
