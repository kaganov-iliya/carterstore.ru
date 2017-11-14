<?php
class ModelExtensionShippingRevship2 extends Model {
	function getQuote($address) {
		$this->load->language('extension/shipping/revship2');

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('revship2_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

		if (!$this->config->get('revship2_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true;
		} else {
			$status = false;
		}

		$method_data = array();

		if ($status) {
			$quote_data = array();

			$quote_data['revship2'] = array(
				'code'         => 'revship2.revship2',
				'title'        => $this->language->get('text_description'),
				'cost'         => $this->config->get('revship2_cost'),
				'tax_class_id' => $this->config->get('revship2_tax_class_id'),
				'text'         => $this->currency->format($this->tax->calculate($this->config->get('revship2_cost'), $this->config->get('revship2_tax_class_id'), $this->config->get('config_tax')), $this->session->data['currency'])
			);

			$method_data = array(
				'code'       => 'revship2',
				'title'      => $this->language->get('text_title'),
				'quote'      => $quote_data,
				'sort_order' => $this->config->get('revship2_sort_order'),
				'error'      => false
			);
		}

		return $method_data;
	}
}