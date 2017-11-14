<?php
class ModelRevolutionRevolution extends Model {

	// Revpbest START //

	public function getBestProducts($data) {
		
		if ($this->customer->isLogged()) {
          $customer_group_id = $this->customer->getGroupId();
        } else {
          $customer_group_id = $this->config->get('config_customer_group_id');
        }
		
		$cache = md5(http_build_query($data));
        $product_data = $this->cache->get('revpbest.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . (int)$customer_group_id . '.' . $cache);
		if (!$product_data) {
			$settings = $this->config->get('revtheme_catalog_best');
			$product_total = $settings['limit'];
			
			$product_data = array();

			$sql = "SELECT DISTINCT p.product_id FROM (SELECT p.product_id, p.sort_order, p.price, p.model, p.date_added, p.quantity > 0 as nalichie, p.price > 0 as nalichie2, 
			(SELECT price FROM `" . DB_PREFIX . "product_discount` pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = '" . (int)$customer_group_id . "' AND pd2.quantity = '1' AND ((pd2.date_start = '0000-00-00' OR pd2.date_start < NOW() ) AND (pd2.date_end = '0000-00-00' OR pd2.date_end > NOW() )) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, 
			(SELECT ps.price FROM `" . DB_PREFIX . "product_special` ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = '" . (int)$customer_group_id . "' AND ((ps.date_start = '0000-00-00' OR ps.date_start < NOW() ) AND (ps.date_end = '0000-00-00' OR ps.date_end > NOW() )) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special,  
			(SELECT AVG(rating) FROM `" . DB_PREFIX . "review` r1 WHERE r1.product_id = p.product_id AND r1.status = '1' GROUP BY r1.product_id) AS rating, 
			COUNT(op.product_id) AS total FROM " . DB_PREFIX . "order_product op LEFT JOIN `" . DB_PREFIX . "order` o ON (op.order_id = o.order_id) LEFT JOIN `" . DB_PREFIX . "product` p ON (op.product_id = p.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) WHERE o.order_status_id > '0' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "' GROUP BY op.product_id ORDER BY total DESC LIMIT 0, " . (int)$product_total . ") p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id AND pd.language_id = '".  (int)$this->config->get('config_language_id') ."')";

			if (!empty($data['filter_buy'])) {
				$sql .= " WHERE total > '" . (int)$data['filter_buy'] . "'";
			}
			
			$sort_data = array(
				'pd.name',
				'p.model',
				'p.quantity',
				'p.price',
				'rating',
				'p.sort_order',
				'p.date_added'
			);
			  
			  
			$product_settings = $this->config->get('revtheme_product_all');
			$zakaz = $product_settings['zakaz'];
			$zakaz_price_null = $product_settings['zakaz_price_null'];
			
			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				if ($data['sort'] == 'pd.name' || $data['sort'] == 'p.model') {
					if ($zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY LCASE(" . $data['sort'] . ")";
					} else if ($zakaz && !$zakaz_price_null) {
						$sql .= " ORDER BY nalichie2 DESC, LCASE(" . $data['sort'] . ")";
					} else if (!$zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY nalichie DESC, LCASE(" . $data['sort'] . ")";
					} else {
						$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, LCASE(" . $data['sort'] . ")";
					}
				} elseif ($data['sort'] == 'p.price') {
					if ($zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					} else if ($zakaz && !$zakaz_price_null) {
						$sql .= " ORDER BY nalichie2 DESC, (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					} else if (!$zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY nalichie DESC, (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					} else {
						$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					}
				} else {
					if ($zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY " . $data['sort'];
					} else if ($zakaz && !$zakaz_price_null) {
						$sql .= " ORDER BY nalichie2 DESC, " . $data['sort'];
					} else if (!$zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY nalichie DESC, " . $data['sort'];
					} else {
						$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, " . $data['sort'];
					}
				}
			} else {
				if ($zakaz && $zakaz_price_null) {
					$sql .= " ORDER BY p.sort_order";
				} else if ($zakaz && !$zakaz_price_null) {
					$sql .= " ORDER BY nalichie2 DESC, p.sort_order";
				} else if (!$zakaz && $zakaz_price_null) {
					$sql .= " ORDER BY nalichie DESC, p.sort_order";	
				} else {
					$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, p.sort_order";
				}
			}
			
			if (isset($data['order']) && ($data['order'] == 'DESC')) {
			  $sql .= " DESC, LCASE(name) DESC";
			} else {
			  $sql .= " ASC, LCASE(name) ASC";
			}

				
			if (isset($data['start']) || isset($data['limit'])) {
			  if ($data['start'] < 0) {
				$data['start'] = 0;
			  }       

			  if ($data['limit'] < 1) {
				$data['limit'] = 20;
			  }
			
			  $sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}
			
			$query = $this->db->query($sql);
			
			if ($query->rows) {
				$this->load->model('catalog/product');
			}
			
			foreach ($query->rows as $result) {
				$product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);
			}
			$setting_all_settings = $this->config->get('revtheme_all_settings');
			if ($setting_all_settings['cache_on']) {
				$this->cache->set('revpbest.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . (int)$customer_group_id . '.' . $cache, $product_data);
			}
		}
		return $product_data;
	}
	
	// Revplast START //
	
	public function getLastProducts($data) {
		if ($this->customer->isLogged()) {
          $customer_group_id = $this->customer->getGroupId();
        } else {
          $customer_group_id = $this->config->get('config_customer_group_id');
        }
		
		$cache = md5(http_build_query($data));
        $product_data = $this->cache->get('revplast.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . (int)$customer_group_id . '.' . $cache);
		if (!$product_data) {
			$settings = $this->config->get('revtheme_catalog_last');
			$product_total = $settings['limit'];
			
			$product_data = array();

			$sql = "SELECT * FROM (SELECT p.product_id, p.sort_order, p.model, pd.name, p.quantity, p.price, p.date_added, p.quantity > 0 as nalichie, p.price > 0 as nalichie2, (SELECT price FROM " . DB_PREFIX . "product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = '" . (int)$customer_group_id . "' AND pd2.quantity = '1' AND ((pd2.date_start = '0000-00-00' OR pd2.date_start < NOW() ) AND (pd2.date_end = '0000-00-00' OR pd2.date_end > NOW() )) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, (SELECT price FROM " . DB_PREFIX . "product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = '" . (int)$customer_group_id . "' AND ((ps.date_start = '0000-00-00' OR ps.date_start < NOW() ) AND (ps.date_end = '0000-00-00' OR ps.date_end > NOW() )) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special, (SELECT AVG(rating) AS total FROM " . DB_PREFIX . "review r1 WHERE r1.product_id = p.product_id AND r1.status = '1' GROUP BY r1.product_id) AS rating FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) WHERE p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') .  "' AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "'";
			
			if (!empty($data['filter_day'])) {
				$sql .= " AND p.date_added BETWEEN '" . $data['filter_day'] . "' AND NOW()";
			}

			$sql .= " ORDER BY p.date_added DESC LIMIT  0, " . (int)$product_total . ") p";
			

			$sort_data = array(
				'pd.name',
				'p.model',
				'p.quantity',
				'p.price',
				'rating',
				'p.sort_order',
				'p.date_added'
			);

			$product_settings = $this->config->get('revtheme_product_all');
			$zakaz = $product_settings['zakaz'];
			$zakaz_price_null = $product_settings['zakaz_price_null'];
			
			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				if ($data['sort'] == 'pd.name' || $data['sort'] == 'p.model') {
					if ($zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY LCASE(" . $data['sort'] . ")";
					} else if ($zakaz && !$zakaz_price_null) {
						$sql .= " ORDER BY nalichie2 DESC, LCASE(" . $data['sort'] . ")";
					} else if (!$zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY nalichie DESC, LCASE(" . $data['sort'] . ")";
					} else {
						$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, LCASE(" . $data['sort'] . ")";
					}
				} elseif ($data['sort'] == 'p.price') {
					if ($zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					} else if ($zakaz && !$zakaz_price_null) {
						$sql .= " ORDER BY nalichie2 DESC, (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					} else if (!$zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY nalichie DESC, (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					} else {
						$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					}
				} else {
					if ($zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY " . $data['sort'];
					} else if ($zakaz && !$zakaz_price_null) {
						$sql .= " ORDER BY nalichie2 DESC, " . $data['sort'];
					} else if (!$zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY nalichie DESC, " . $data['sort'];
					} else {
						$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, " . $data['sort'];
					}
				}
			} else {
				if ($zakaz && $zakaz_price_null) {
					$sql .= " ORDER BY p.sort_order";
				} else if ($zakaz && !$zakaz_price_null) {
					$sql .= " ORDER BY nalichie2 DESC, p.sort_order";
				} else if (!$zakaz && $zakaz_price_null) {
					$sql .= " ORDER BY nalichie DESC, p.sort_order";	
				} else {
					$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, p.sort_order";
				}
			}

			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC, LCASE(p.name) DESC";
			} else {
				$sql .= " ASC, LCASE(p.name) ASC";
			}
			
			if (isset($data['start']) || isset($data['limit'])) {
			  if ($data['start'] < 0) {
				$data['start'] = 0;
			  }       

			  if ($data['limit'] < 1) {
				$data['limit'] = 20;
			  } 
			
			  $sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}
			  
			$query = $this->db->query($sql);
			
			if ($query->rows) {
				$this->load->model('catalog/product');
			}
			   
			foreach ($query->rows as $result) {
				$product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);
			}
			$setting_all_settings = $this->config->get('revtheme_all_settings');
			if ($setting_all_settings['cache_on']) {
				$this->cache->set('revplast.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . (int)$customer_group_id . '.' . $cache, $product_data);
			}
		}
		return $product_data;
	}
	
	public function updateWishlistRegister($product_id, $customer_id) {
		$this->db->query("INSERT IGNORE INTO `" . DB_PREFIX . "customer_wishlist` SET `product_id` = " . (int)$product_id . ", `customer_id` = " . (int)$customer_id . ", `date_added` = NOW()");
	}
	
	// Revpopupphone START //
	
	public function SendMail($data) {
		
		$this->db->query("INSERT INTO " . DB_PREFIX . "revpopupphones SET name = '" . $this->db->escape($data['firstname']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', email = '" . $this->db->escape($data['email']) . "', comment = '" . $this->db->escape($data['comment']) . "', date_added = NOW()");
     	
		$this->language->load('revolution/revolution');

		$zagolovok = $this->language->get('text_mail_new_popupphone');		
		$message = $this->language->get('text_mail_firstname') . ' '  .  $this->db->escape($data['firstname']) . "\n";
		$message .= $this->language->get('text_mail_telephone') . ' '  .  $this->db->escape($data['telephone']) . "\n";
		$message .= $this->language->get('text_mail_email') . ' '  .  $this->db->escape($data['email']) . "\n";
		$message .= $this->language->get('text_mail_comment') . ' '  .  $this->db->escape($data['comment']) . "\n";
		
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
		$mail->setSender($this->config->get('config_name'));
		$mail->setSubject(html_entity_decode($zagolovok, ENT_QUOTES, 'UTF-8'));
		$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
		$mail->send();

		if (VERSION >= 2.2) {
			$emails = explode(',', $this->config->get('config_alert_email'));
		} else {
			$emails = explode(',', $this->config->get('config_mail_alert'));
		}

		foreach ($emails as $email) {
			if ($email && filter_var($email, FILTER_VALIDATE_EMAIL)) {
				$mail->setTo($email);
				$mail->send();
			}
		}
		
		// Send Admins SMS if configure
		/*
		if ($this->config->get('config_sms_alert')) {
			$options = array(
				'to'       => $this->config->get('config_sms_to'),
				'copy'     => $this->config->get('config_sms_copy'),
				'from'     => $this->config->get('config_sms_from'),
				'username' => $this->config->get('config_sms_gate_username'),
				'password' => $this->config->get('config_sms_gate_password'),
				'message'  => $data['firstname'], $data['telephone']
			);

			$this->load->library('sms');

			$sms = new Sms($this->config->get('config_sms_gatename'), $options);
			$sms->send();
		}
		*/

	}
	
	// Revproducttabs START //
	
	public function getproducttab($product_id){
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_tab pt LEFT JOIN ".DB_PREFIX. "product_tab_desc ptd ON(pt.product_tab_id = ptd.product_tab_id) WHERE pt.product_id = '".(int)$product_id."' AND ptd.language_id = '".(int)$this->config->get('config_language_id')."' AND pt.status = 1 ORDER BY sort_order ASC");
		return $query->rows;
	}

	public function getproductTabs($product_id){
		$tabs_data = array();
		$query = $this->db->query("SELECT * FROM ".DB_PREFIX."tabs t LEFT JOIN ".DB_PREFIX."tabs_description td ON(t.tab_id = td.tab_id) WHERE t.status = 1 AND td.language_id = '".(int)$this->config->get('config_language_id')."' AND t.stores LIKE '%".(int)$this->config->get('config_store')."%' ORDER BY t.sort_order ASC");
		$manufacturer_info = $this->getmanufacturertabs($product_id);
		if($query->rows){
			foreach($query->rows as $row){
				$status = false;
				$ingore_products = ($row['ingore_products'] ? json_decode($row['ingore_products']) : array());
				$categories = ($row['categories'] ? json_decode($row['categories']) : array());
				$manufactures = ($row['manufactures'] ? json_decode($row['manufactures']) : array());
				$products = ($row['products'] ? json_decode($row['products']) : array());
				if($categories){
					$cquery = $this->db->query("SELECT * FROM ".DB_PREFIX."product_to_category WHERE category_id IN( ". implode(',',$categories) ." ) AND product_id = '".(int)$product_id."'");
					if($cquery->row){
					  $status = true;
					}
				}
				if(!empty($manufacturer_info['manufacturer_id'])){
					if(in_array($manufacturer_info['manufacturer_id'], $manufactures)){
					  $status = true;
					}
				}
				if(in_array($product_id, $products)){
					$status = true;
				}
				if($row['allproducts']){
					$status = true;
				}
				if(in_array($product_id, $ingore_products)){
					$status = false;
				}
				if($status){
					$tabs_data[] = array(
					  'tab_id' 		=> $row['tab_id'],
					  'title'  		=> $row['title'],
					  'description' => html_entity_decode($row['description'], ENT_QUOTES, 'UTF-8'),
					);
				}
			}
		}
		return $tabs_data;
	}
	
	// Revproducttextblocks START //

	public function getproducttextblocks($product_id){
		$textblocks_data = array();
		$query = $this->db->query("SELECT * FROM ".DB_PREFIX."textblocks t LEFT JOIN ".DB_PREFIX."textblocks_description td ON(t.tb_id = td.tb_id) WHERE t.status = 1 AND td.language_id = '".(int)$this->config->get('config_language_id')."' AND t.stores LIKE '%".(int)$this->config->get('config_store')."%' ORDER BY t.sort_order ASC");
		$manufacturer_info = $this->getmanufacturertabs($product_id);
		if($query->rows){
			foreach($query->rows as $row){
				$status = false;
				$ingore_products = ($row['ingore_products'] ? json_decode($row['ingore_products']) : array());
				$categories = ($row['categories'] ? json_decode($row['categories']) : array());
				$manufactures = ($row['manufactures'] ? json_decode($row['manufactures']) : array());
				$products = ($row['products'] ? json_decode($row['products']) : array());
				if($categories){
					$cquery = $this->db->query("SELECT * FROM ".DB_PREFIX."product_to_category WHERE category_id IN( ". implode(',',$categories) ." ) AND product_id = '".(int)$product_id."'");
					if($cquery->row){
					  $status = true;
					}
				}
				if(!empty($manufacturer_info['manufacturer_id'])){
					if(in_array($manufacturer_info['manufacturer_id'], $manufactures)){
					  $status = true;
					}
				}
				if(in_array($product_id, $products)){
					$status = true;
				}
				if($row['allproducts']){
					$status = true;
				}
				if(in_array($product_id, $ingore_products)){
					$status = false;
				}
				if($status){
					$textblocks_data[] = array(
					  'tb_id' 		=> $row['tb_id'],
					  'title'  		=> $row['title'],
					  'description' => $row['description'],
					  'href' 		=> $row['href'],
					  'icontype' 	=> $row['icontype'],
					  'icon' 		=> $row['icon'],
					  'image' 		=> $row['image'],
					  'sort' 		=> $row['sort_order'],
					  'checkbox' 	=> $row['checkbox']
					);
				}
			}
		}
		return $textblocks_data;
	}
	
	public function getmanufacturertabs($product_id){
		return $this->db->query("SELECT manufacturer_id FROM ".DB_PREFIX."product WHERE product_id = '".(int)$product_id."'")->row;
	}
	
	// Revajaxlivesearch START //
	
	public function ajaxLiveSearch($data=array()) {
		if ($this->customer->isLogged()) {
			$customer_group_id = $this->customer->getGroupId();
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}	

		$sql = "SELECT p.product_id, p.quantity > 0 as nalichie, p.price > 0 as nalichie2, (SELECT AVG(rating) AS total FROM " . DB_PREFIX . "review r1 WHERE r1.product_id = p.product_id AND r1.status = '1' GROUP BY r1.product_id) AS rating, (SELECT price FROM " . DB_PREFIX . "product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = '" . (int)$customer_group_id . "' AND pd2.quantity = '1' AND ((pd2.date_start = '0000-00-00' OR pd2.date_start < NOW()) AND (pd2.date_end = '0000-00-00' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1) AS discount, (SELECT price FROM " . DB_PREFIX . "product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = '" . (int)$customer_group_id . "' AND ((ps.date_start = '0000-00-00' OR ps.date_start < NOW()) AND (ps.date_end = '0000-00-00' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special"; 

		if (!empty($data['filter_category_id'])) {
				$sql .= " FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "product_to_category p2c ON (cp.category_id = p2c.category_id)";			

			if (!empty($data['filter_filter'])) {
				$sql .= " LEFT JOIN " . DB_PREFIX . "product_filter pf ON (p2c.product_id = pf.product_id) LEFT JOIN " . DB_PREFIX . "product p ON (pf.product_id = p.product_id)";
			} else {
				$sql .= " LEFT JOIN " . DB_PREFIX . "product p ON (p2c.product_id = p.product_id)";
			}
		} else {
			$sql .= " FROM " . DB_PREFIX . "product p";
		}

		$sql .= " LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "'";

		if (!empty($data['filter_category_id'])) {
				$sql .= " AND cp.path_id = '" . (int)$data['filter_category_id'] . "'";	

			if (!empty($data['filter_filter'])) {
				$implode = array();

				$filters = explode(',', $data['filter_filter']);

				foreach ($filters as $filter_id) {
					$implode[] = (int)$filter_id;
				}

				$sql .= " AND pf.filter_id IN (" . implode(',', $implode) . ")";				
			}
		}	

		if (!empty($data['filter_name']) || !empty($data['filter_tag'])) {
			$sql .= " AND (";

			if (!empty($data['filter_name'])) {
				$implode = array();

				$words = explode(' ', trim(preg_replace('/\s\s+/', ' ', $data['filter_name'])));

				foreach ($words as $word) {
					$implode[] = "LCASE(pd.name) LIKE '%" . $this->db->escape($word) . "%'";
				}

				if ($implode) {
					$sql .= " " . implode(" AND ", $implode) . "";
				}

				if (!empty($data['filter_description'])) {
					$sql .= " OR pd.description LIKE '%" . $this->db->escape($data['filter_name']) . "%'";
				}
			}

			if (!empty($data['filter_name']) && !empty($data['filter_tag'])) {
				$sql .= " OR ";
			}

			if (!empty($data['filter_tag'])) {
				$sql .= "pd.tag LIKE '%" . $this->db->escape($data['filter_name']) . "%'";
			}

			if (!empty($data['filter_model'])) {
				$sql .= " OR LCASE(p.model) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
			}

			if (!empty($data['filter_sku'])) {
				$sql .= " OR LCASE(p.sku) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
			}	

			if (!empty($data['filter_upc'])) {
				$sql .= " OR LCASE(p.upc) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
			}		

			if (!empty($data['filter_ean'])) {
				$sql .= " OR LCASE(p.ean) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
			}

			if (!empty($data['filter_jan'])) {
				$sql .= " OR LCASE(p.jan) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
			}

			if (!empty($data['filter_isbn'])) {
				$sql .= " OR LCASE(p.isbn) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
			}		

			if (!empty($data['filter_mpn'])) {
				$sql .= " OR LCASE(p.mpn) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
			}
			
			if (!empty($data['filter_manufacturer'])) {
				$sql .= " OR p.manufacturer_id IN (SELECT manufacturer_id from ".DB_PREFIX."manufacturer WHERE `name` LIKE '%" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%')";
			}
			
			$sql .= ")";
		}

		if (!empty($data['filter_manufacturer_id'])) {
			$sql .= " AND p.manufacturer_id = '" . (int)$data['filter_manufacturer_id'] . "'";
		}

		$sql .= " GROUP BY p.product_id";

		$sort_data = array(
			'pd.name',
			'p.model',
			'p.quantity',
			'p.price',
			'rating',
			'p.sort_order',
			'p.date_added'
		);	

		$product_settings = $this->config->get('revtheme_product_all');
		$zakaz = $product_settings['zakaz'];
		$zakaz_price_null = $product_settings['zakaz_price_null'];
		
		if ($zakaz && $zakaz_price_null) {
			$sql .= " ORDER BY p.sort_order";
		} else if ($zakaz && !$zakaz_price_null) {
			$sql .= " ORDER BY nalichie2 DESC, p.sort_order";
		} else if (!$zakaz && $zakaz_price_null) {
			$sql .= " ORDER BY nalichie DESC, p.sort_order";	
		} else {
			$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, p.sort_order";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC, LCASE(pd.name) DESC";
		} else {
			$sql .= " ASC, LCASE(pd.name) ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}				

			if ($data['limit'] < 1) {
				$data['limit'] = 10;
			}	

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}
		$product_data = array();

		$query = $this->db->query($sql);

		if ($query->rows) {
			$this->load->model('catalog/product');
		}
		
		foreach ($query->rows as $result) {
			$product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);
		}
		
		return $product_data;
	}
	
	// Revblog START //
	
	public function getBlogCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "revblog_category c LEFT JOIN " . DB_PREFIX . "revblog_category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "revblog_category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row;
	}
	
	public function getBlogCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "revblog_category c LEFT JOIN " . DB_PREFIX . "revblog_category_description cd ON (c.category_id = cd.category_id)	LEFT JOIN " . DB_PREFIX . "revblog_category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "'	AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.title)");
		return $query->rows;
	}
	
	public function getTotalBlogs($data = array()) {
		$sql = "SELECT COUNT(DISTINCT b.revblog_id) AS total";
		if (!empty($data['filter_category_id'])) {
			if (!empty($data['filter_sub_category'])) {
				$sql .= " FROM " . DB_PREFIX . "revblog_category_path bcp LEFT JOIN " . DB_PREFIX . "revblog_to_category b2c ON (bcp.category_id = b2c.category_id)";
			} else {
				$sql .= " FROM " . DB_PREFIX . "revblog_to_category b2c";
			}
			$sql .= " LEFT JOIN " . DB_PREFIX . "revblog b ON (b2c.revblog_id = b.revblog_id)";
		} else {
			$sql .= " FROM " . DB_PREFIX . "revblog b";
		}
		$sql .= " LEFT JOIN " . DB_PREFIX . "revblog_description bd ON (b.revblog_id = bd.revblog_id) LEFT JOIN " . DB_PREFIX . "revblog_to_store b2s ON (b.revblog_id = b2s.revblog_id) WHERE bd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND b.status = '1' AND b.date_available <= NOW() AND b2s.store_id = '" . (int)$this->config->get('config_store_id') . "'";
		if (!empty($data['filter_category_id'])) {
			if (!empty($data['filter_sub_category'])) {
				$sql .= " AND bcp.path_id = '" . (int)$data['filter_category_id'] . "'";
			} else {
				$sql .= " AND b2c.category_id = '" . (int)$data['filter_category_id'] . "'";
			}
		}
		$query = $this->db->query($sql);
		return $query->row['total'];
	}
	
	public function getBlog($revblog_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "revblog b LEFT JOIN " . DB_PREFIX . "revblog_description bd ON (b.revblog_id = bd.revblog_id) LEFT JOIN " . DB_PREFIX . "revblog_to_store b2s ON (b.revblog_id = b2s.revblog_id) WHERE b.revblog_id = '" . (int)$revblog_id . "' AND bd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND b2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND b.status = '1' AND b.date_available <= NOW()");
		return $query->row;
	}
	
	public function getBlogs($data = array()) {	
		$sql = "SELECT b.revblog_id";
		if (!empty($data['filter_category_id'])) {
			if (!empty($data['filter_sub_category'])) {
				$sql .= " FROM " . DB_PREFIX . "revblog_category_path cp LEFT JOIN " . DB_PREFIX . "revblog_to_category b2c ON (cp.category_id = b2c.category_id)";
			} else {
				$sql .= " FROM " . DB_PREFIX . "revblog_to_category b2c";
			}
				$sql .= " LEFT JOIN " . DB_PREFIX . "revblog b ON (b2c.revblog_id = b.revblog_id)";
		} else {
			$sql .= " FROM " . DB_PREFIX . "revblog b";
		}
		$sql .= " LEFT JOIN " . DB_PREFIX . "revblog_description bd ON (b.revblog_id = bd.revblog_id)	LEFT JOIN " . DB_PREFIX . "revblog_to_store b2s ON (b.revblog_id = b2s.revblog_id) WHERE bd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND	b.status = '1' AND b.date_available <= NOW() AND b2s.store_id = '" . (int)$this->config->get('config_store_id') . "'";
		if (!empty($data['filter_category_id'])) {
			if (!empty($data['filter_sub_category'])) {
				$sql .= " AND cp.path_id = '" . (int)$data['filter_category_id'] . "'";
			} else {
				$sql .= " AND b2c.category_id = '" . (int)$data['filter_category_id'] . "'";
			}
		}
		$sql .= " GROUP BY b.revblog_id";		
		$sort_data = array(
			'bd.title',
			'b.sort_order',
			'b.date_available',
			'b.date_added'
		);
		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			if ($data['sort'] == 'bd.title' || $data['sort'] == 'b.date_added' || $data['sort'] == 'b.date_available') {
				$sql .= " ORDER BY LCASE(" . $data['sort'] . ")";
			} else {
				$sql .= " ORDER BY " . $data['sort'];
			}
		} else {
			$sql .= " ORDER BY b.date_available";
		}
		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC, LCASE(bd.title) DESC";
		} else {
			$sql .= " ASC, LCASE(bd.title) ASC";
		}
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}
			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}
		$query = $this->db->query($sql);
		$blog_data = array();
		foreach ($query->rows as $result) {
			$blog_data[$result['revblog_id']] = $this->getBlog($result['revblog_id']);
		}
		return $blog_data;
	}

	public function getBlogProducts($revblog_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "revblog_product bp LEFT JOIN " . DB_PREFIX . "product p ON (bp.product_id = p.product_id) LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) WHERE bp.revblog_id = '" . (int)$revblog_id . "' AND p.date_available <= NOW() AND p.status = '1' AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "'");
		if ($query->rows) {
			$this->load->model('catalog/product');
		}
		$product_data = array();
		foreach ($query->rows as $result) { 
			$product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);
		}
		return $product_data;
	}

	public function getBlogsRelated($product_id) {
		$blog_data = array();
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "revblog_product bp LEFT JOIN " . DB_PREFIX . "revblog b ON (bp.revblog_id = b.revblog_id) WHERE bp.product_id = '" . (int)$product_id . "'");
		foreach ($query->rows as $result) { 
			$blog_data[$result['revblog_id']] = $this->getInfo($result['revblog_id']);
		}
		return $blog_data;
	}
	
	public function getInfo($id) {	
		$sql = "SELECT b.image, bd.revblog_id, bd.title, bd.description FROM " . DB_PREFIX . "revblog b LEFT JOIN " . DB_PREFIX . "revblog_description bd ON (b.revblog_id = bd.revblog_id) WHERE bd.language_id = " . (int)$this->config->get('config_language_id') . " AND bd.revblog_id = " .(int)$id;
		$query = $this->db->query($sql);
		$blog = $query->row;
		return $blog;
	}
	
	public function getBlogImages($revblog_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "revblog_images WHERE revblog_id = '" . (int)$revblog_id . "' ORDER BY sort_order ASC");

		return $query->rows;
	}

	// Revreview START //
	
	public function addReview($data) {
        $this->db->query("INSERT INTO " . DB_PREFIX . "review SET author = '" . $this->db->escape($data['name']) . "', customer_id = '" . (int)$this->customer->getId() . "', product_id = '0', text = '" . $this->db->escape($data['text']) . "', rating = '" . (int)$data['rating'] . "', date_added = NOW()");

        $review_id = $this->db->getLastId();
		
		$send_mail = false;
		if (VERSION >= 2.2) {
			if (in_array('review', (array)$this->config->get('config_mail_alert'))) {
				$send_mail = true;
			}
		} else {
			if ($this->config->get('config_review_mail')) {
				$send_mail = true;
			}
		}
		
        if ($send_mail) {
            $this->load->language('revolution/revreview_mail');

            $subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'));

            $message = $this->language->get('text_waiting') . "\n";
            $message .= sprintf($this->language->get('text_reviewer'), $this->db->escape(strip_tags($data['name']))) . "\n";
            if ($data['rating']) {
                $message .= sprintf($this->language->get('text_rating'), $this->db->escape(strip_tags($data['rating']))) . "\n";
            }
            $message .= $this->language->get('text_review') . "\n";
            $message .= $this->db->escape(strip_tags($data['text'])) . "\n\n";

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
            $mail->setSender($this->config->get('config_name'));
            $mail->setSubject($subject);
            $mail->setText($message);
            $mail->send();

			if (VERSION >= 2.2) {
				$emails = explode(',', $this->config->get('config_alert_email'));
			} else {
				$emails = explode(',', $this->config->get('config_mail_alert'));
			}

			foreach ($emails as $email) {
				if ($email && filter_var($email, FILTER_VALIDATE_EMAIL)) {
					$mail->setTo($email);
					$mail->send();
				}
			}
        }
    }

    public function getReviews($start = 0, $limit = 20) {
        if ($start < 0) {
            $start = 0;
        }

        if ($limit < 1) {
            $limit = 20;
        }

        $query = $this->db->query("SELECT r.review_id, r.customer_id, r.author, r.rating, r.text, r.answer, r.answer_from, r.date_added FROM " . DB_PREFIX . "review r WHERE r.product_id = '0'  AND r.status = '1'  ORDER BY r.date_added DESC LIMIT " . (int)$start . "," . (int)$limit);

        return $query->rows;
    }

    public function getModuleReviews($start = 0, $limit = 20, $order = 0) {
        if ($start < 0) {
            $start = 0;
        }

        if ($limit < 1) {
            $limit = 20;
        }
        switch ($order) {
            case 0: {
                $sql = "ORDER BY date_added  DESC LIMIT " . (int)$start . "," . (int)$limit;
                break;
            }
            case 1: {
                $sql = "ORDER BY RAND() DESC LIMIT " . (int)$start . "," . (int)$limit;
                break;
            }
            default: {
                $sql = "ORDER BY date_added DESC LIMIT " . (int)$start . "," . (int)$limit;
            }
        }

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "review WHERE product_id = '0'  AND status = '1'  " . $sql);

        return $query->rows;
    }

    public function getTotalReviews() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "review r WHERE r.product_id = '0' AND r.status = '1'");

        return $query->row['total'];
    }
	
	// Revslider START //
	
	public function getProducts($data = array()) {
        $customer_group_id = $this->config->get('config_customer_group_id');
        $cache = md5(http_build_query($data));

        $product_data = $this->cache->get('revslider_catproducts.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . (int)$customer_group_id . '.' . $cache);

        if (!$product_data) {
            $sql = "SELECT p.product_id, p.quantity > 0 as nalichie, p.price > 0 as nalichie2, (SELECT AVG(rating) AS total FROM " . DB_PREFIX . "review r1 WHERE r1.product_id = p.product_id AND r1.status = '1' GROUP BY r1.product_id) AS rating, (SELECT price FROM " . DB_PREFIX . "product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = '" . (int)$customer_group_id . "' AND ((ps.date_start = '0000-00-00' OR ps.date_start < NOW()) AND (ps.date_end = '0000-00-00' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS special, (SELECT COUNT(*) AS total FROM " . DB_PREFIX . "order_product op LEFT JOIN `" . DB_PREFIX . "order` o ON (op.order_id = o.order_id) WHERE o.order_status_id > '0' AND op.product_id = p.product_id GROUP BY op.product_id) as topsellers FROM " . DB_PREFIX . "product p LEFT JOIN " . DB_PREFIX . "product_description pd ON (p.product_id = pd.product_id) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id)";

            if (!empty($data['filter_category_id'])) {
                $sql .= " LEFT JOIN " . DB_PREFIX . "product_to_category p2c ON (p.product_id = p2c.product_id)";
            }
            
            $sql .= " WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "'";     
            
            if (!empty($data['filter_category_id'])) {
                if (!empty($data['filter_sub_category'])) {
                    $implode_data = array();
                    $implode_data[] = "p2c.category_id = '" . (int)$data['filter_category_id'] . "'";
                    
                    $this->load->model('catalog/category');
                    
                    $categories = $this->getCategoriesByParentId($data['filter_category_id']);            
                    foreach ($categories as $category_id) {
                        $implode_data[] = "p2c.category_id = '" . (int)$category_id . "'";
                    }
                                
                    $sql .= " AND (" . implode(' OR ', $implode_data) . ")";            
                } else {
                    $sql .= " AND p2c.category_id = '" . (int)$data['filter_category_id'] . "'";
                }
            }
            
            if (!empty($data['filter_manufacturer_id'])) {
                $sql .= " AND p.manufacturer_id = '" . (int)$data['filter_manufacturer_id'] . "'";
            }
            
            $sql .= " GROUP BY p.product_id";
            
            if ($data['sort'] == 'special') {
                $sql .= " HAVING special IS NOT NULL";
            }

            if ($data['sort'] == 'topsellers') {
                $sql .= " HAVING topsellers IS NOT NULL";
            }

            $sort_data = array(
                'p.date_added',
                'special',
                'topsellers',
                'rating',
                'p.price',
                'p.viewed',
                'p.sort_order'
            );
            
            $product_settings = $this->config->get('revtheme_product_all');
			$zakaz = $product_settings['zakaz'];
			$zakaz_price_null = $product_settings['zakaz_price_null'];
			
			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				if ($data['sort'] == 'pd.name' || $data['sort'] == 'p.model') {
					if ($zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY LCASE(" . $data['sort'] . ")";
					} else if ($zakaz && !$zakaz_price_null) {
						$sql .= " ORDER BY nalichie2 DESC, LCASE(" . $data['sort'] . ")";
					} else if (!$zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY nalichie DESC, LCASE(" . $data['sort'] . ")";
					} else {
						$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, LCASE(" . $data['sort'] . ")";
					}
				} elseif ($data['sort'] == 'p.price') {
					if ($zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					} else if ($zakaz && !$zakaz_price_null) {
						$sql .= " ORDER BY nalichie2 DESC, (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					} else if (!$zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY nalichie DESC, (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					} else {
						$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, (CASE WHEN special IS NOT NULL THEN special WHEN discount IS NOT NULL THEN discount ELSE p.price END)";
					}
				} else {
					if ($zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY " . $data['sort'];
					} else if ($zakaz && !$zakaz_price_null) {
						$sql .= " ORDER BY nalichie2 DESC, " . $data['sort'];
					} else if (!$zakaz && $zakaz_price_null) {
						$sql .= " ORDER BY nalichie DESC, " . $data['sort'];
					} else {
						$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, " . $data['sort'];
					}
				}
			} else {
				if ($zakaz && $zakaz_price_null) {
					$sql .= " ORDER BY p.sort_order";
				} else if ($zakaz && !$zakaz_price_null) {
					$sql .= " ORDER BY nalichie2 DESC, p.sort_order";
				} else if (!$zakaz && $zakaz_price_null) {
					$sql .= " ORDER BY nalichie DESC, p.sort_order";	
				} else {
					$sql .= " ORDER BY nalichie2 DESC, nalichie DESC, p.sort_order";
				}
			}
                
            if ($data['order'] == 'ASC') {
                $sql .= " ASC";
            } else {
                $sql .= " DESC";
            }
            
            if ($data['start'] < 0) {
                $data['start'] = 0;
            }
                    
            
            $sql .= " LIMIT " . (int)$data['limit'];

            $product_data = array();
            $query = $this->db->query($sql);

			if ($query->rows) {
				$this->load->model('catalog/product');
			}
            foreach ($query->rows as $result) {
                $product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);
            }
            $setting_all_settings = $this->config->get('revtheme_all_settings');
			if ($setting_all_settings['cache_on']) {
				$this->cache->set('revslider_catproducts.' . (int)$this->config->get('config_language_id') . '.' . (int)$this->config->get('config_store_id') . '.' . (int)$customer_group_id . '.' . $cache, $product_data);
			}
        }
        return $product_data;    
    }
    
    public function getCategoriesByParentId($category_id) {
        $category_data = array();
        $category_query = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "category WHERE parent_id = '" . (int)$category_id . "'");

        foreach ($category_query->rows as $category) {
            $category_data[] = $category['category_id'];
            $children = $this->getCategoriesByParentId($category['category_id']);

            if ($children) {
                $category_data = array_merge($children, $category_data);
            }            
        }

        return $category_data;
    }
	
	public function getAttrText($product_id) {
		$options = $this->config->get('revtheme_cat_attributes');
		$options_catattribs = $this->config->get('revtheme_catattribs_settings');
		$text = '';
		$attr_i = 1;
		$this->load->model('catalog/product');
		$this->load->language('revolution/revolution');
		$attribute_groups = $this->model_catalog_product->getProductAttributes($product_id);
		$show_attributes_name  = isset($options['show_name']) ? $options['show_name'] : 0; 
		$show_attributes_tags = isset($options['show_tags']) ? $options['show_tags'] : 0;
		$attributes_count = isset($options['count']) ? $options['count'] : 0;
		$product_info = $this->model_catalog_product->getProduct($product_id);
		if ($product_info) {
			$separator = isset($options['separator']) ? $options['separator'] : '/';
			$separator = html_entity_decode($separator, ENT_QUOTES, 'UTF-8');
			if ($options['manufacturer']) {
				if ($product_info['manufacturer']) {
					if ($show_attributes_tags) {
						$text .= '<span class="dotted-line_left"><span class="dotted-line_title">' . $this->language->get('text_product_manufacturer') . '</span><span class="dotted-line_line"></span></span><span class="dotted-line_right">' . $product_info['manufacturer'] . '</span><br>';
					} else {
						$text .= '<span class="attr_i_1"><span class="span_attr_name">'.$this->language->get('text_product_manufacturer') . '</span> ' . $product_info['manufacturer'] . '</span>' . $separator;
					}	
				}
			}	
			if ($options['model']) {
				if ($product_info['model']) {
					if ($show_attributes_tags) {
						$text .= '<span class="dotted-line_left"><span class="dotted-line_title">' . $this->language->get('text_model') . '</span><span class="dotted-line_line"></span></span><span class="dotted-line_right pr_model_' . $product_info['product_id'] . '">' . $product_info['model'] . '</span><br>';
					} else {
						$text .= '<span class="attr_i_2"><span class="span_attr_name">'.$this->language->get('text_model') . '</span> <span class="pr_model_' . $product_info['product_id'] . '">' . $product_info['model'] . '</span></span>' . $separator;
					}
				} else {
					$text .= '<span class="hidden pr_model_' . $product_info['product_id'] . '">' . $product_info['model'] . '</span>';
				}
			}
			if ($options['sku']) {
				if ($product_info['sku']) {
					if ($show_attributes_tags) {
						$text .= '<span class="dotted-line_left"><span class="dotted-line_title">' . $this->language->get('text_product_artikul') . '</span><span class="dotted-line_line"></span></span><span class="dotted-line_right">' . $product_info['sku'] . '</span><br>';
					} else {
						$text .= '<span class="attr_i_3"><span class="span_attr_name">'.$this->language->get('text_product_artikul') . '</span> ' . $product_info['sku'] . '</span>' . $separator;
					}	
				}
			}
			if ($options['stock']) {
				if ($product_info['quantity'] <= 0) {
					if ($show_attributes_tags) {
						$text .= '<span class="dotted-line_left"><span class="dotted-line_title">' . $this->language->get('text_stock') . '</span><span class="dotted-line_line"></span></span><span class="dotted-line_right">' . $product_info['stock_status'] . '</span><br>';
					} else {
						$text .= '<span class="attr_i_4"><span class="span_attr_name">'.$this->language->get('text_stock') . '</span> ' . $product_info['stock_status'] . '</span>' . $separator;
					}
					$text .= '<span class="hidden pr_quantity_' . $product_info['product_id'] . '">' . $product_info['quantity'] . '</span>';					
				} elseif ($this->config->get('config_stock_display')) {
					if ($show_attributes_tags) {
						$text .= '<span class="dotted-line_left"><span class="dotted-line_title">' . $this->language->get('text_stock') . '</span><span class="dotted-line_line"></span></span><span class="dotted-line_right">' . '<span class="pr_quantity_' . $product_info['product_id'] . '">' . $product_info['quantity'] . '</span> ' . $this->language->get('text_shtuki') . '</span><br>';
					} else {
						$text .= '<span class="attr_i_5"><span class="span_attr_name">'.$this->language->get('text_stock') . '</span> <span class="pr_quantity_' . $product_info['product_id'] . '">' . $product_info['quantity'] . '</span> ' . $this->language->get('text_shtuki') . '</span>' . $separator;
					}	
				} else {
					if ($show_attributes_tags) {
						$text .= '<span class="dotted-line_left"><span class="dotted-line_title">' . $this->language->get('text_stock') . '</span><span class="dotted-line_line"></span></span><span class="dotted-line_right">' . $product_info['stock_status'] . '</span><br>';
					} else {
						$text .= '<span class="attr_i_6"><span class="span_attr_name">'.$this->language->get('text_stock') . '</span> ' . $product_info['stock_status'] . '</span>' . $separator;
					}
					$text .= '<span class="hidden pr_quantity_' . $product_info['product_id'] . '">' . $product_info['quantity'] . '</span>';
				}
			} else {
				$text .= '<span class="hidden pr_quantity_' . $product_info['product_id'] . '">' . $product_info['quantity'] . '</span>';
			}
			if ($options['length']) {
				if ($product_info['length'] > 0) {
					if ($show_attributes_tags) {
						$text .= '<span class="dotted-line_left"><span class="dotted-line_title">' . $this->language->get('text_product_razmers2') . '</span><span class="dotted-line_line"></span></span><span class="dotted-line_right">' . number_format($product_info['length'], 2) . ' х ' . number_format($product_info['width'], 2) . ' х ' . number_format($product_info['height'], 2) . ' ' . $this->length->getUnit($product_info['length_class_id']) . '</span><br>';
					} else {
						$text .= '<span class="attr_i_7"><span class="span_attr_name">'.$this->language->get('text_product_razmers2') . '</span> ' . number_format($product_info['length'], 2) . ' х ' . number_format($product_info['width'], 2) . ' х ' . number_format($product_info['height'], 2) . ' ' . $this->length->getUnit($product_info['length_class_id']) . '</span>' . $separator;
					}
				}
			}
			if ($options['weight']) {
				if ($product_info['weight'] > 0) {
					if ($show_attributes_tags) {
						$text .= '<span class="dotted-line_left"><span class="dotted-line_title">' . $this->language->get('text_product_ves') . '</span><span class="dotted-line_line"></span></span><span class="dotted-line_right"><span class=pr_weight_' . $product_info['product_id'] . ' data-weight=' . number_format($product_info['weight'], 2) . '>' . number_format($product_info['weight'], 2) . '</span> ' . $this->weight->getUnit($product_info['weight_class_id']) . '</span><br>';
					} else {
						$text .= '<span class="attr_i_8"><span class="span_attr_name">'.$this->language->get('text_product_ves') . '</span> <span class=pr_weight_' . $product_info['product_id'] . ' data-weight=' . number_format($product_info['weight'], 2) . '>' . number_format($product_info['weight'], 2) . '</span> ' . $this->weight->getUnit($product_info['weight_class_id']) . '</span>' . $separator;
					}
				}
			}
		}
		$attr_arr = array();
		$attr_i = 9;
		$attributes_text_length = '';
		foreach ($attribute_groups as $group) {
			foreach ($group['attribute'] as $attribute) {
				if (isset($options_catattribs['attributes'][$attribute['attribute_id']])) {
					$attribute_text = '';
					$attribute_text_length = 0;
					if ($options_catattribs['attributes'][$attribute['attribute_id']]['show'] == 1) {
						$attribute_text = $attribute['text'];
					} else if ($options_catattribs['attributes'][$attribute['attribute_id']]['show'] == 2 && !$show_attributes_name && in_array($attribute['text'], explode(',', $options_catattribs['attributes'][$attribute['attribute_id']]['replace']))) {
						$attribute_text = $attribute['name'];
					} else {
						$attribute_text = '';
					}
					if ($attribute_text) {					
						$attribute_text_length = strlen($attribute_text);
						if ($show_attributes_name) {
							$attribute_text_length += strlen($attribute['name']) + 2; // 2 - ': '
							if ($show_attributes_tags) {
								$attribute_text = '<span class="dotted-line_left"><span class="dotted-line_title">' . $attribute['name'] . ':</span><span class="dotted-line_line"></span></span><span class="dotted-line_right">' . $attribute_text . '</span>';
							} else {
								$attribute_text = '<span class="attr_i_'.$attr_i.'"><span class="span_attr_name">'.$attribute['name'] . ':</span> ' . $attribute_text . '</span>';
							}
						}                 
						$attr_arr[] = $attribute_text;
						if ($attributes_count) {
							if (count($attr_arr) >= $attributes_count) {
								break 2;
							}
						}
					}
				}
				$attr_i++;
			}
		}
		if ($attr_arr) {
			$separator = isset($options['separator']) ? $options['separator'] : "/";
			$separator = html_entity_decode($separator, ENT_QUOTES, 'UTF-8');
			$text .= implode($attr_arr, $separator);
		}		
		return $text;    
	}
	
	public function getProductSpecialData($product_id) {
		if ($this->customer->isLogged()) {
			$customer_group_id = $this->customer->getGroupId();
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}
		$query = $this->db->query("SELECT `price`, `date_end` FROM " . DB_PREFIX . "product_special WHERE product_id = '" . (int)$product_id . "' AND customer_group_id = '" . (int)$customer_group_id . "' AND ((date_start = '0000-00-00' OR date_start < NOW()) AND (date_end = '0000-00-00' OR date_end > NOW())) ORDER BY priority ASC, price ASC LIMIT 1");
		if ($query->num_rows) {
			return $query->row;
		} else {
			return FALSE;
		}
	}
	
	static $disabled = false;
	public function revwatermark($image_old, $image_new) {
		if (self::$disabled || false !== strpos($image_old, 'no_image')) {
			return false;
		}
		$settings = $this->config->get('revtheme_all_settings');
		if (!empty($settings) && $settings['watermark_status']) {
			$pathinfo = pathinfo($image_old);
			$dir = trim($pathinfo['dirname'], '/');
			if (array_key_exists('watermark_folders', $settings)) {
				$add = false;
				if (in_array('all', $settings['watermark_folders'])) {
					$add = true;
				} else {
					foreach ($settings['watermark_folders'] as $folder) {
						if (0 === mb_strpos($dir, $folder)) {
							$add = true;
							break;
						}
					}
				}
				if ($add) {
					$this->addwatermark(DIR_IMAGE . $image_new, $settings);
				}
			}
		}
	}
	private function addwatermark($filename, $options) {
		if (file_exists($filename)) {
			$file_info = getimagesize($filename);
			$info = array(
				'width' => $file_info[0],
				'height' => $file_info[1],
				'bits' => $file_info['bits'],
				'mime' => $file_info['mime']
			);
			if ($info['mime'] == 'image/gif') {
				$image = imagecreatefromgif($filename);
			} elseif ($info['mime'] == 'image/png') {
				$image = imagecreatefrompng($filename);
			} elseif ($info['mime'] == 'image/jpeg') {
				$image = imagecreatefromjpeg($filename);
			} elseif ($info['mime'] == 'image/svg+xml') {
				$image = $filename;
			} else {
				return false;
			}
		} else {
			return false;
		}
		if ((is_numeric($options['watermark_min']['width']) && $info['width'] < (float)trim($options['watermark_min']['width']))) {
			return false;
		}
		if ((is_numeric($options['watermark_min']['height']) && (float)$info['height'] < (float)trim($options['watermark_min']['height']))) {
			return false;
		}
		$scale = 1;
		if (is_numeric($options['watermark_scaling']['width']) && is_numeric($options['watermark_scaling']['height'])) {
			if ($info['width'] != $options['watermark_scaling']['width'] || $options['watermark_scaling']['height'] != $options['watermark_scaling']['height']) {
				$scale = max($info['width'] / $options['watermark_scaling']['width'], $info['height'] / $options['watermark_scaling']['height']);
			}
		} elseif (is_numeric($options['watermark_scaling']['width'])) {
			if ($info['width'] != $options['watermark_scaling']['width']) {
				$scale = $info['width'] / $options['watermark_scaling']['width'];
			}
		} elseif (is_numeric($options['watermark_scaling']['height'])) {
			if ($info['height'] != $options['watermark_scaling']['height']) {
				$scale = $info['height'] / $options['watermark_scaling']['height'];
			}
		}
		switch ($options['watermark_type']) {
			case 'img':
				if (file_exists(DIR_IMAGE . $options['watermark_image']) && is_file(DIR_IMAGE . $options['watermark_image'])) {
					$watermark_image = DIR_IMAGE . $options['watermark_image'];
					if ($scale !== 1) {
						$watermark_info = getimagesize($watermark_image);
						self::$disabled = true;
						$this->load->model('tool/image');
						$watermark_image = $this->model_tool_image->resize($options['watermark_image'], $watermark_info[0] * $scale, $watermark_info[1] * $scale);
						if ($watermark_image) {
							$image_path = explode('/', trim(DIR_IMAGE, '/'));
							$image_folder = end($image_path);
							if ($this->request->server['HTTPS']) {
							$watermark_image = str_replace($this->config->get('config_ssl') . $image_folder . '/', DIR_IMAGE, $watermark_image);
							} else {
							$watermark_image = str_replace($this->config->get('config_url') . $image_folder . '/', DIR_IMAGE, $watermark_image);
							}
						} else {
							return false;
						}
						self::$disabled = false;
					}
					$watermark_info = getimagesize($watermark_image);
					switch ($watermark_info['mime']) {
						case 'image/gif':
							$watermark = imagecreatefromgif($watermark_image);
							break;
						case 'image/png':
							$watermark = imagecreatefrompng($watermark_image);
							break;
						case 'image/jpeg':
							$watermark = imagecreatefromjpeg($watermark_image);
							break;
						case 'image/svg+xml':
							$watermark = $watermark_image;
							break;
						default:
							return false;
					}
					if ((float)$options['watermark_angle'] > 0) {
						imagealphablending($watermark, false);
						imagesavealpha($watermark, true);
						$transparent = imagecolorallocatealpha($watermark, 0, 0, 0, 127);
						imagefill($watermark, 0, 0, $transparent);
						$watermark = imagerotate($watermark, (float)$options['watermark_angle'], $transparent);
						imagealphablending($watermark, false);
						imagesavealpha($watermark, true);
					}
					$watermark_width = imagesx($watermark);
					$watermark_height = imagesy($watermark);
				} else {
					return false;
				}
				break;
			default:
				$angle = (float)$options['watermark_angle'];
				$text = trim($options['watermark_text']);
				if (empty($text) || $text == '') {
					return false;
				}
				$font = DIR_TEMPLATE . 'revolution/stylesheet/Roboto/Roboto-Regular.ttf';
				$fontsize = (float)$options['watermark_font_size'];
				$box = $this->calculateTextBox($text, $font, $fontsize, $angle);
				$watermark = imagecreatetruecolor($box['width'], $box['height']);
				imagealphablending($watermark, false);
				$transparency = imagecolorallocatealpha($watermark, 0, 0, 0, 127);
				imagefill($watermark, 0, 0, $transparency);
				imagesavealpha($watermark, true);
				list($red, $green, $blue) = $this->html2rgb($options['watermark_color']);
				$color = imagecolorallocate($watermark, $red, $green, $blue);
				$x = $box['left'];
				$y = $box['top'];
				imagettftext($watermark, $fontsize, $angle, $x, $y, $color, $font, $text);
				$width = imagesx($watermark);
				$height = imagesy($watermark);
				$watermark_width = $width * $scale;
				$watermark_height = $height * $scale;
				$result = imagecreatetruecolor($watermark_width, $watermark_height);
				imagecolorallocate($result, $red, $green, $blue);
				imagealphablending($result, false);
				imagesavealpha($result, true);
				imagecopyresampled($result, $watermark, 0, 0, 0, 0, $watermark_width, $watermark_height, $width, $height);
				$watermark = $result;
				break;
		}
		$offset_x = (float)$options['watermark_offset']['x'] * $scale;
		$offset_y = (float)$options['watermark_offset']['y'] * $scale;
		switch ($options['watermark_position']) {
			case 'topleft':
				$watermark_pos_x = $offset_x;
				$watermark_pos_y = $offset_y;
				break;
			case 'topcenter':
				$watermark_pos_x = (($info['width'] - $watermark_width) / 2);
				$watermark_pos_y = 0 + $offset_y;
				break;
			case 'topright':
				$watermark_pos_x = ($info['width'] - $watermark_width) - $offset_x;
				$watermark_pos_y = 0 + $offset_y;
				break;
			case 'middleleft':
				$watermark_pos_x = $offset_x;
				$watermark_pos_y = (($info['height'] - $watermark_height) / 2) + $offset_y;
				break;
			case 'middle':
				$watermark_pos_x = (($info['width'] - $watermark_width) / 2) + $offset_x;
				$watermark_pos_y = (($info['height'] - $watermark_height) / 2) + $offset_y;
				break;
			case 'middleright':
				$watermark_pos_x = ($info['width'] - $watermark_width) - $offset_x;
				$watermark_pos_y = (($info['height'] - $watermark_height) / 2) - $offset_y;
				break;
			case 'bottomleft':
				$watermark_pos_x = 0 + $offset_x;
				$watermark_pos_y = ($info['height'] - $watermark_height) - $offset_y;
				break;
			case 'bottomcenter':
				$watermark_pos_x = (($info['width'] - $watermark_width) / 2) + $offset_x;
				$watermark_pos_y = ($info['height'] - $watermark_height) - $offset_y;
				break;
			case 'bottomright':
				$watermark_pos_x = ($info['width'] - $watermark_width) - $offset_x;
				$watermark_pos_y = ($info['height'] - $watermark_height) - $offset_y;
				break;
		}
		$this->imageCopymergeAlpha($image, $watermark, $watermark_pos_x, $watermark_pos_y, 0, 0, $watermark_width, $watermark_height, $options['watermark_opacity']);
		imagedestroy($watermark);
		if ($info['mime'] == 'image/png') {
			imagealphablending($image, false);
			imagesavealpha($image, true);
		}
		$info = pathinfo($filename);
		$extension = strtolower($info['extension']);
		if ($extension == 'jpeg' || $extension == 'jpg') {
			imagejpeg($image, $filename, 90);
		} elseif ($extension == 'png') {
			imagepng($image, $filename, 0);
		} elseif ($extension == 'gif') {
			imagegif($image, $filename);
		}
		imagedestroy($image);
	}
	public function calculateTextBox($text, $font_file, $font_size, $font_angle) {
		$box = imagettfbbox($font_size, $font_angle, $font_file, $text);
		if (!$box) {
			return false;
		}
		$min_x = min(array($box[0], $box[2], $box[4], $box[6]));
		$max_x = max(array($box[0], $box[2], $box[4], $box[6]));
		$min_y = min(array($box[1], $box[3], $box[5], $box[7]));
		$max_y = max(array($box[1], $box[3], $box[5], $box[7]));
		$width = ($max_x - $min_x);
		$height = ($max_y - $min_y);
		$left = abs($min_x) + $width;
		$top = abs($min_y) + $height;
		$img = @imagecreatetruecolor($width << 2, $height << 2);
		$white = imagecolorallocate($img, 255, 255, 255);
		$black = imagecolorallocate($img, 0, 0, 0);
		imagefilledrectangle($img, 0, 0, imagesx($img), imagesy($img), $black);
		imagettftext($img, $font_size,
			$font_angle, $left, $top,
			$white, $font_file, $text);
		$rleft = $w4 = $width << 2;
		$rright = 0;
		$rbottom = 0;
		$rtop = $h4 = $height << 2;
		for ($x = 0; $x < $w4; $x++)
			for ($y = 0; $y < $h4; $y++)
				if (imagecolorat($img, $x, $y)) {
					$rleft = min($rleft, $x);
					$rright = max($rright, $x);
					$rtop = min($rtop, $y);
					$rbottom = max($rbottom, $y);
				}
		imagedestroy($img);
		return array(
			"left" => ($left - $rleft),
			"top" => $top - $rtop,
			"width" => $rright - $rleft + 1,
			"height" => $rbottom - $rtop + 1
		);
	}
	function imageCopymergeAlpha($dst_im, $src_im, $dst_x, $dst_y, $src_x, $src_y, $src_w, $src_h, $pct) {
		$cut = imagecreatetruecolor($src_w, $src_h);
		imagecopy($cut, $dst_im, 0, 0, $dst_x, $dst_y, $src_w, $src_h);
		imagecopy($cut, $src_im, 0, 0, $src_x, $src_y, $src_w, $src_h);
		imagecopymerge($dst_im, $cut, $dst_x, $dst_y, 0, 0, $src_w, $src_h, $pct);
	}
	private function html2rgb($color) {
		if ($color[0] == '#') {
			$color = substr($color, 1);
		}
		if (strlen($color) == 6) {
			list($r, $g, $b) = array($color[0] . $color[1], $color[2] . $color[3], $color[4] . $color[5]);
		} elseif (strlen($color) == 3) {
			list($r, $g, $b) = array($color[0] . $color[0], $color[1] . $color[1], $color[2] . $color[2]);
		} else {
			return false;
		}
		$r = hexdec($r);
		$g = hexdec($g);
		$b = hexdec($b);
		return array($r, $g, $b);
	}
	
	// Revfilter
	public function getrevAttributes_gr($product_id, $attribute_id)	{
		$query = $this->db->query("SELECT a.attribute_id, ad.name, pa.text FROM " . DB_PREFIX . "product_attribute pa LEFT JOIN " . DB_PREFIX . "attribute a ON (pa.attribute_id = a.attribute_id) LEFT JOIN " . DB_PREFIX . "attribute_description ad ON (a.attribute_id = ad.attribute_id) WHERE pa.product_id = '" . (int)$product_id . "' AND ad.language_id = '" . (int)$this->config->get('config_language_id') . "' AND pa.language_id = '" . (int)$this->config->get('config_language_id') . "' AND a.attribute_id = '" . (int)$attribute_id . "' ORDER BY a.sort_order, ad.name");
		return $query->rows;
	}
	public function getrevAttributes($product_id, $attribute_ids = 0)	{
		$sql = "SELECT a.attribute_id, ad.name, pa.text FROM " . DB_PREFIX . "product_attribute pa LEFT JOIN " . DB_PREFIX . "attribute a ON (pa.attribute_id = a.attribute_id) LEFT JOIN " . DB_PREFIX . "attribute_description ad ON (a.attribute_id = ad.attribute_id) WHERE pa.product_id = '" . (int)$product_id . "' AND ad.language_id = '" . (int)$this->config->get('config_language_id') . "' AND pa.language_id = '" . (int)$this->config->get('config_language_id') . "'";
		if ($attribute_ids) {
			$sql .= " AND a.attribute_id IN ( ". implode(',',$attribute_ids) ." )";
		}
		$sql .= " ORDER BY a.sort_order, ad.name";
		$query = $this->db->query($sql);
		return $query->rows;
	}
	public function getrevOptions($product_id) {
		$product_option_data = array();
		$sql = "SELECT * FROM " . DB_PREFIX . "product_option po LEFT JOIN " . DB_PREFIX . "option o ON (po.option_id = o.option_id) LEFT JOIN " . DB_PREFIX . "option_description od ON (o.option_id = od.option_id)";
		$sql .= " WHERE po.product_id = '" . (int)$product_id . "'";
		$sql .= " AND od.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY o.sort_order, od.name";
		$product_option_query = $this->db->query($sql);
		foreach ($product_option_query->rows as $product_option) {
			$product_option_value_data = array();
			$product_option_value_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_option_value pov LEFT JOIN " . DB_PREFIX . "option_value ov ON (pov.option_value_id = ov.option_value_id) LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) WHERE pov.product_id = '" . (int)$product_id . "' AND pov.product_option_id = '" . (int)$product_option['product_option_id'] . "' AND ovd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY ov.sort_order");
			foreach ($product_option_value_query->rows as $product_option_value) {
				$product_option_value_data[] = array(
					'option_value_id' => $product_option_value['option_value_id'],
					'name'            => $product_option_value['name'],
					'image'           => $product_option_value['image'],
					'sort'            => $product_option_value['sort_order']
				);
			}
			$product_option_data[] = array(
				'product_option_value' => $product_option_value_data,
				'option_id'            => $product_option['option_id'],
				'name'                 => $product_option['name'],
				'type'                 => $product_option['type'],
				'value'                => $product_option['value']
			);
		}
		return $product_option_data;
	}
	public function getrevOptions_gr($product_id, $option_ids = 0) {
		$product_option_data = array();
		$sql = "SELECT * FROM " . DB_PREFIX . "product_option po LEFT JOIN " . DB_PREFIX . "option o ON (po.option_id = o.option_id) LEFT JOIN " . DB_PREFIX . "option_description od ON (o.option_id = od.option_id)";
		$sql .= " WHERE po.product_id = '" . (int)$product_id . "'";
		if ($option_ids) {
			$sql .= " AND o.option_id IN ( ". implode(',',$option_ids) ." )";
		} else {
			$sql .= " AND o.option_id = 0";
		} 
		$sql .= " AND od.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY o.sort_order";
		$product_option_query = $this->db->query($sql);
		foreach ($product_option_query->rows as $product_option) {
			$product_option_value_data = array();
			$product_option_value_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_option_value pov LEFT JOIN " . DB_PREFIX . "option_value ov ON (pov.option_value_id = ov.option_value_id) LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) WHERE pov.product_id = '" . (int)$product_id . "' AND pov.product_option_id = '" . (int)$product_option['product_option_id'] . "' AND ovd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY ov.sort_order");
			foreach ($product_option_value_query->rows as $product_option_value) {
				$product_option_value_data[] = array(
					'option_value_id' => $product_option_value['option_value_id'],
					'name'            => $product_option_value['name'],
					'image'           => $product_option_value['image'],
					'sort'            => $product_option_value['sort_order']
				);
			}
			$product_option_data[] = array(
				'product_option_value' => $product_option_value_data,
				'option_id'            => $product_option['option_id'],
				'name'                 => $product_option['name'],
				'type'                 => $product_option['type'],
				'value'                => $product_option['value']
			);
		}
		return $product_option_data;
	}
	public function getrevman ($filter_manufactures) {
		$revfilter_manufactures = array();
		if (!(empty($filter_manufactures))) {
			if (is_array($filter_manufactures)) {
				foreach ($filter_manufactures as $key => $value) {
					$revfilter_manufactures[$key] = addslashes($value);
				}
			} else {
				$revfilter_manufactures = explode(';', $filter_manufactures);
			}
		}
		return $revfilter_manufactures;
	}
	public function getrevatr ($filter_attributes) {
		$revfilter_attributes = array();
		if (isset($filter_attributes) && is_array($filter_attributes)) {
			foreach ($filter_attributes as $attribute_id => $attribute) {
				if ($attribute) {
					if (is_array($attribute)) {
						foreach ($attribute as $key => $value) {
							$attribute[$key] = addslashes($value);
						}
					} else {
						$attribute = explode(';', $attribute);
					}
					$revfilter_attributes[] = array(
						'attribute_id'    => $attribute_id,
						'attribute_value' => $attribute
					);
				}
			}
		}
		return $revfilter_attributes;
	}
	public function getrevopt ($filter_options) {
		$revfilter_options = array();
		if (!(empty($filter_options)) && is_array($filter_options)) {
			foreach ($filter_options as $option_id => $option) {
				if ($option) {
					if (is_array($option)) {
						foreach ($option as $key => $value) {
							$option[$key] = addslashes($value);
						}
					} else {
						$option = explode(';', $option);
					}
					$revfilter_options[] = array(
						'option_id'    => $option_id,
						'option_value' => $option
					);
				}
			}
		}
		return $revfilter_options;
	}
	public function initfilter($filter_data) {
		$setting = $this->config->get('revtheme_filter');
		$filters = array();
		if (isset($setting['filter_manufacturer']) && ($setting['filter_manufacturer'] !== 'false')) {
			$filters['manufs'] = array(
				'id'     => 'fman',
				'values' => array(),
				'title'  => preg_replace('/:/', '', $this->language->get('text_manufacturer')),
				'name'   => 'filter_manufactures',
				'type'   => $setting['filter_manufacturer'],
				'sort'   => 0,
				'vid'    => $setting['filter_manufacturer_vid']	
			);
		}
		if (VERSION >= 2.2) {
			$currency = $this->session->data['currency'];
		} else {
			$currency = '';
		}
		$category_id = ((isset($filter_data['filter_category_id']) ? $filter_data['filter_category_id'] : 0));
		$price_status = ((isset($setting['filter_price']) ? $setting['filter_price'] : true));
		$price_min = 0;
		$price_max = 0;
		$filter_count_products = ((isset($setting['filter_count_products']) ? $setting['filter_count_products'] : true));
		$this->load->model('revolution/revolution');
		$results = $this->model_catalog_product->getProducts($filter_data);
		foreach ($results as $result) {
			if ($price_status) {
				if ((float)$result['special']) {
					$price = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $currency, '', false);
				} else {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $currency, '', false);
				}
				if (($price_min == 0) || ($price < $price_min)) {
					$price_min = floor($price);
					if ($price_min == 0) {
						$price_min = '0.00';
					}
				}
				if ($price_max < $price) {
					$price_max = ceil($price);
				}
				if ($price_min == $price_max) {
					$price_max = 0;
				}
			}
			if (isset($filters['manufs']) && $result['manufacturer'] && !(isset($filters['manufs']['values'][$result['manufacturer_id']]))) {
				$filters['manufs']['values'][$result['manufacturer_id']] = array(
					'id'    => $filters['manufs']['id'] . $result['manufacturer_id'],
					'val'   => $result['manufacturer_id'],
					'name'  => $result['manufacturer'],
					'sort'  => 0,
					'count' => 0
				);
			}
			if ($filter_count_products && isset( $filters['manufs']['values'][$result['manufacturer_id']] )) {
				++$filters['manufs']['values'][$result['manufacturer_id']]['count'];
			}
			if (isset($setting['filter_option'])) {
				$options = $this->getrevOptions($result['product_id']);
				foreach ($options as $option) {
					if (isset($setting['filter_option'][$option['option_id']]) && ($setting['filter_option'][$option['option_id']]['option_type'] !== 'false')) {
						if (!isset($setting['filter_option'][$option['option_id']]['option_categories']) || (!in_array($category_id, $setting['filter_option'][$option['option_id']]['option_categories']))) {
							if (!(isset($filters['option' . $option['option_id']]))) {
								$filters['option' . $option['option_id']] = array(
									'id'     => 'fo_' . $option['option_id'],
									'values' => array(),
									'title'  => $option['name'],
									 'name' => 'filter_options[' . $option['option_id'] . ']',
									'type'   => $setting['filter_option'][$option['option_id']]['option_type'],
									'sort'   => $setting['filter_option'][$option['option_id']]['option_sort'],
									'vid'    => $setting['filter_option'][$option['option_id']]['option_vid']
								);
							}
							foreach ($option['product_option_value'] as $val) {
								if (!(isset( $filters['option' . $option['option_id']]['values']['option' . $option['option_id'] . '-' . $val['option_value_id']] ))) {
									$filters['option' . $option['option_id']]['values']['option' . $option['option_id'] . '-' . $val['option_value_id']] = array(
										'id'    => $filters['option' . $option['option_id']]['id'] . '-' . $val['option_value_id'],
										'val'   => $val['option_value_id'],
										'name'  => $val['name'],
										'sort'  => $val['sort'],
										'count' => 0,
										'image' => $this->model_tool_image->resize($val['image'], 50, 50)
									);
								}
								if (isset($filters['option' . $option['option_id']]['values']['option' . $option['option_id'] . '-' . $val['option_value_id']]) && $filter_count_products) {
									++$filters['option' . $option['option_id']]['values']['option' . $option['option_id'] . '-' . $val['option_value_id']]['count'];
								}
							}
						}
					}
				}
			}
			if (isset($setting['filter_attribute'])) {
				$attributes = $this->getrevAttributes($result['product_id']);
				foreach ($attributes as $attribute) {
					if (isset($setting['filter_attribute'][$attribute['attribute_id']]) && ($setting['filter_attribute'][$attribute['attribute_id']]['attribute_type'] !== 'false')) {
						if (!isset($setting['filter_attribute'][$attribute['attribute_id']]['attribute_categories']) || (!in_array($category_id, $setting['filter_attribute'][$attribute['attribute_id']]['attribute_categories']))) {
							if (!(isset($filters['fa' . $attribute['attribute_id']]))) {
								$filters['fa' . $attribute['attribute_id']] = array(
									'id'     => 'fa_' . $attribute['attribute_id'],
									'values' => array(),
									'title'  => $attribute['name'],
									'name'   => 'filter_attributes[' . $attribute['attribute_id'] . ']',
									'type'   => $setting['filter_attribute'][$attribute['attribute_id']]['attribute_type'],
									'sort'   => $setting['filter_attribute'][$attribute['attribute_id']]['attribute_sort'],
									'vid'    => $setting['filter_attribute'][$attribute['attribute_id']]['attribute_vid']
								);
							}
							if (!(isset($filters['fa' . $attribute['attribute_id']]['values'][crc32($attribute['text'])]))) {
								if ($attribute['text'] != '') {
									$filters['fa' . $attribute['attribute_id']]['values'][crc32($attribute['text'])] = array(
										'id'    => $filters['fa' . $attribute['attribute_id']]['id'] . '-' . crc32($attribute['text']),
										'val'   => $attribute['text'],
										'name'  => $attribute['text'],
										'sort'  => 0,
										'count' => 0
									);
									foreach(explode($setting['razdelitel'], $attribute['text']) as $text) {
										$filters['fa' . $attribute['attribute_id']]['values'][crc32($attribute['text'])]['val'] = $text;
										$filters['fa' . $attribute['attribute_id']]['values'][crc32($attribute['text'])]['name'] = $text;
									}
								}
							}
							if (isset($filters['fa' . $attribute['attribute_id']]['values'][crc32($attribute['text'])]) && $filter_count_products) {
								++$filters['fa' . $attribute['attribute_id']]['values'][crc32($attribute['text'])]['count'];
							}
						}
					}
				}
			}
		}
		if (isset($filters['manufs'])) {
			if (!(isset($filters['manufs']['values'])) || empty($filters['manufs']['values'])) {
				unset($filters['manufs']);
			}
		}
		$f_sort = array();
		$f_title = array();
		foreach ($filters as $fkey => $filter) {
			$filter_s = array();
			$filter_n = array();
			foreach ($filter['values'] as $vkey => $value) {
				$filter_s[$vkey] = $value['sort'];
				$filter_n[$vkey] = $value['name'];
			}
			array_multisort($filter_s, SORT_ASC, $filter_n, SORT_NATURAL, $filters[$fkey]['values']);
			$f_sort[$fkey] = $filter['sort'];
			$f_title[$fkey] = $filter['title'];
		}
		array_multisort($f_sort, SORT_ASC, $f_title, SORT_NATURAL, $filters);
		return array($filters, $price_min, $price_max);
	}
	public function initfilter_gr($filter_data) {
		$setting = $this->config->get('revtheme_filter');
		$filters = array();
		if (isset($setting['filter_m_grs']) && $setting['filter_m_grs']) {
			$filters['manufs'] = array(
				'id'     => 'fman',
				'values' => array(),
				'title'  => preg_replace('/:/', '', $this->language->get('text_manufacturer')),
				'name'   => 'filter_manufactures',
				'sort'   => 0
			);
		}
		if (VERSION >= 2.2) {
			$currency = $this->session->data['currency'];
		} else {
			$currency = '';
		}
		$this->load->model('revolution/revolution');
		$results = $this->model_catalog_product->getProducts($filter_data);
		foreach ($results as $result) {
			if (isset($setting['filter_m_grs']) && $setting['filter_m_grs'] && $result['manufacturer']) {
				$filters['manufs']['values'][$result['manufacturer_id']] = array(
					'id'    => $filters['manufs']['id'] . $result['manufacturer_id'],
					'val'   => $result['manufacturer_id'],
					'name'  => $result['manufacturer'],
					'sort'  => 0
				);
			}
			if (isset($setting['filter_option'])) {
				$filter_o_grs = false;
				if (isset($setting['filter_o_grs'])) {
					$filter_o_grs = $setting['filter_o_grs'];
				}
				$options = $this->getrevOptions_gr($result['product_id'], $filter_o_grs);
				foreach ($options as $option) {
					$option['option_id'] = $option['option_id'];
					if (!(isset($filters['option' . $option['option_id']]))) {
						$filters['option' . $option['option_id']] = array(
							'id'     => 'fo_' . $option['option_id'],
							'values' => array(),
							'title'  => $option['name'],
							'name'   => 'filter_options[' . $option['option_id'] . ']',
							'sort'   => 1
						);
					}
				}
			}
			$filter_a_grs = false;
			if (isset($setting['filter_a_grs'])) {
				$filter_a_grs = $setting['filter_a_grs'];
				$attributes = $this->getrevAttributes($result['product_id'], $filter_a_grs);
				foreach ($attributes as $attribute) {
					$attribute['attribute_id'] = $attribute['attribute_id'];
					if (!(isset($filters['fa' . $attribute['attribute_id']]))) {
						$filters['fa' . $attribute['attribute_id']] = array(
							'id'     => 'fa_' . $attribute['attribute_id'],
							'values' => array(),
							'title'  => $attribute['name'],
							'name'   => 'filter_attributes[' . $attribute['attribute_id'] . ']',
							'sort'   => 2
						);
					}
				}
			}
		}
		if (isset($filters['manufs'])) {
			if (!(isset($filters['manufs']['values'])) || empty($filters['manufs']['values'])) {
				unset($filters['manufs']);
			}
		}
		$f_sort = array();
		$f_title = array();
		foreach ($filters as $fkey => $filter) {
			$filter_s = array();
			$filter_n = array();
			foreach ($filter['values'] as $vkey => $value) {
				$filter_s[$vkey] = $value['sort'];
				$filter_n[$vkey] = $value['name'];
			}
			array_multisort($filter_s, SORT_ASC, $filter_n, SORT_NATURAL, $filters[$fkey]['values']);
			$f_sort[$fkey] = $filter['sort'];
			$f_title[$fkey] = $filter['title'];
		}
		array_multisort($f_sort, SORT_ASC, $f_title, SORT_NATURAL, $filters);
		return array($filters);
	}
	public function getSubCategoriesByCategoryId($category_id) {
		$query = $this->db->query("SELECT DISTINCT cd.category_id, cd.name AS 'name', COUNT(*) AS 'count' FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (cd.category_id = c.category_id) LEFT JOIN " . DB_PREFIX . "product_to_category p2c ON (c.category_id = p2c.category_id) LEFT JOIN " . DB_PREFIX . "product p ON (p.product_id = p2c.`product_id`) LEFT JOIN " . DB_PREFIX . "product_to_store p2s ON (p.product_id = p2s.product_id) WHERE c.status = 1 AND c.parent_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND p.status = '1' AND p.date_available <= NOW() AND p2s.store_id = '" . (int)$this->config->get('config_store_id') . "' GROUP BY cd.category_id ORDER BY c.sort_order, cd.name");
		return $query->rows;
	}
	
	public function geRevcheckoutCustomFields($customer_group_id = 0, $shipping_code = 0) {
		$custom_field_data = array();
		if (!$customer_group_id) {
			$sql = "SELECT * FROM `" . DB_PREFIX . "revcheckoutcustomfield` cf LEFT JOIN `" . DB_PREFIX . "revcheckoutcustomfield_description` cfd ON (cf.custom_field_id = cfd.custom_field_id) ";
			if ($shipping_code) {
				$sql .= "LEFT JOIN `" . DB_PREFIX . "revcheckoutcustomfield_shipping_code` rsc ON (rsc.custom_field_id = cf.custom_field_id) ";
			}
			$sql .= "WHERE cf.status = '1' AND cfd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND cf.status = '1'";
			if ($shipping_code) {
				$sql .= " AND rsc.shipping_code = '" . $shipping_code . "'";
			}
		} else {
			$sql = "SELECT * FROM `" . DB_PREFIX . "revcheckoutcustomfield_customer_group` cfcg LEFT JOIN `" . DB_PREFIX . "revcheckoutcustomfield` cf ON (cfcg.custom_field_id = cf.custom_field_id) LEFT JOIN `" . DB_PREFIX . "revcheckoutcustomfield_description` cfd ON (cf.custom_field_id = cfd.custom_field_id) ";
			if ($shipping_code) {
				$sql .= "LEFT JOIN `" . DB_PREFIX . "revcheckoutcustomfield_shipping_code` rsc ON (rsc.custom_field_id = cf.custom_field_id) ";
			}
			$sql .= "WHERE cf.status = '1' AND cfd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND cfcg.customer_group_id = '" . (int)$customer_group_id . "'";
			if ($shipping_code) {
				$sql .= " AND rsc.shipping_code = '" . $shipping_code . "'";
			}
		}
		$sql .= " ORDER BY cf.sort_order ASC";
		$custom_field_query = $this->db->query($sql);
		foreach ($custom_field_query->rows as $custom_field) {
			$custom_field_value_data = array();
			if ($custom_field['type'] == 'select' || $custom_field['type'] == 'radio' || $custom_field['type'] == 'checkbox') {
				$custom_field_value_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "revcheckoutcustomfield_value cfv LEFT JOIN " . DB_PREFIX . "revcheckoutcustomfield_value_description cfvd ON (cfv.custom_field_value_id = cfvd.custom_field_value_id) WHERE cfv.custom_field_id = '" . (int)$custom_field['custom_field_id'] . "' AND cfvd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY cfv.sort_order ASC");

				foreach ($custom_field_value_query->rows as $custom_field_value) {
					$custom_field_value_data[] = array(
						'custom_field_value_id' => $custom_field_value['custom_field_value_id'],
						'name'                  => $custom_field_value['name']
					);
				}
			}
			$custom_field_data[] = array(
				'custom_field_id'    => $custom_field['custom_field_id'],
				'custom_field_value' => $custom_field_value_data,
				'name'               => $custom_field['name'],
				'type'               => $custom_field['type'],
				'value'              => $custom_field['value'],
				'mask'               => $custom_field['mask'],
				'location'           => $custom_field['location'],
				'required'           => empty($custom_field['required']) || $custom_field['required'] == 0 ? false : true,
				'sort_order'         => $custom_field['sort_order']
			);
		}
		return $custom_field_data;
	}
	public function addanswer($product_id, $data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "revanswers SET author = '" . $this->db->escape(strip_tags($data['name_answer'])) . "', customer_id = '" . (int)$this->customer->getId() . "', product_id = '" . (int)$product_id . "', text = '" . $this->db->escape(strip_tags($data['text_answer'])) . "', date_added = NOW()");
		$answer_id = $this->db->getLastId();
	}
	public function getanswers($product_id, $start = 0, $limit = 20) {
        if ($start < 0) {
            $start = 0;
        }
        if ($limit < 1) {
            $limit = 20;
        }
        $query = $this->db->query("SELECT r.answer_id, r.customer_id, r.author, r.text, r.answer, r.answer_from, r.date_added FROM " . DB_PREFIX . "revanswers r WHERE r.product_id = '" . (int)$product_id . "'  AND r.status = '1'  ORDER BY r.date_added DESC LIMIT " . (int)$start . "," . (int)$limit);
        return $query->rows;
    }
    public function gettotalanswers($product_id) {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "revanswers r WHERE r.product_id = '" . (int)$product_id . "' AND r.status = '1'");
        return $query->row['total'];
    }
	public function get_pr_brand($product_id) {
		$this->load->language('revolution/revolution');
		$brand = $this->language->get('all_products_compare');
		$settings = $this->config->get('revtheme_cat_compare');
		if ($settings['main_cat']) {
			$query_brand_main_cat_true = $this->db->query("SELECT category_id FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . (int)$product_id . "' AND main_category = 1");
			if ($query_brand_main_cat_true->num_rows) {
				$query_brand = $this->db->query("SELECT cd.name FROM " . DB_PREFIX . "product_to_category ptc LEFT JOIN " . DB_PREFIX . "category_description cd ON (cd.category_id = ptc.category_id) WHERE ptc.product_id = '" . (int)$product_id . "' AND main_category = 1");
				$brand = $query_brand->row['name'];
			}
		} else {
			$query_brand = $this->db->query("SELECT cd.name FROM " . DB_PREFIX . "product_to_category ptc LEFT JOIN " . DB_PREFIX . "category_description cd ON (cd.category_id = ptc.category_id) WHERE ptc.product_id = '" . (int)$product_id . "'");
			if ($query_brand->num_rows) {
				$brand = $query_brand->row['name'];
			}
		}
        return $brand;
    }
}