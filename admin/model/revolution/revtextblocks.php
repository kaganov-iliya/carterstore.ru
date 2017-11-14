<?php
class ModelRevolutionRevtextblocks extends Model {
	public function addtextblocks($data){
		
		if(!empty($data['textblocks_product'])){
			$data['textblocks_product'] = json_encode($data['textblocks_product']);
		}else{
			$data['textblocks_product'] = '';
		}
		
		if(!empty($data['textblocks_category'])){
			$data['textblocks_category'] = json_encode($data['textblocks_category']);
		}else{
			$data['textblocks_category'] = '';
		}
		
		if(!empty($data['textblocks_manufacturer'])){
			$data['textblocks_manufacturer'] = json_encode($data['textblocks_manufacturer']);
		}else{
			$data['textblocks_manufacturer'] = '';
		}
		
		if(!empty($data['textblocks_ingore_product'])){
			$data['textblocks_ingore_product'] = json_encode($data['textblocks_ingore_product']);
		}else{
			$data['textblocks_ingore_product'] = '';
		}
		
		if(!empty($data['textblocks_store'])){
			$data['textblocks_store'] = json_encode($data['textblocks_store']);
		}else{
			$data['textblocks_store'] = '';
		}
		
		if(!isset($data['allproducts'])){
			$data['allproducts'] = 0;
		}
		
		if(!isset($data['checkbox'])){
			$data['checkbox'] = 0;
		}
		
		$this->db->query("INSERT INTO " . DB_PREFIX . "textblocks SET sort_order = '" . (int)$data['sort_order'] . "', status = '".(int)$data['status']."', checkbox = '".(int)$data['checkbox']."', products = '".$data['textblocks_product']."', categories = '".$data['textblocks_category']."', manufactures = '".$data['textblocks_manufacturer']."', ingore_products = '".$data['textblocks_ingore_product']."',stores = '".$data['textblocks_store']."', allproducts = '".(int)$data['allproducts']."', icontype = '".(int)$data['icontype']."', image = '".$data['image']."', icon = '".$data['icon']."'");
		
		$tb_id = $this->db->getLastId();
		
		foreach($data['textblocks_description'] as $language_id => $value){
			$this->db->query("INSERT INTO " . DB_PREFIX . "textblocks_description SET tb_id = '" . (int)$tb_id . "', language_id = '" . (int)$language_id . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "', href = '" . $this->db->escape($value['href']) . "'");
		}

		return $tb_id;
	}
	
	public function edittextblocks($tb_id, $data){
		
		if(!empty($data['textblocks_product'])){
			$data['textblocks_product'] = json_encode($data['textblocks_product']);
		}else{
			$data['textblocks_product'] = '';
		}
		
		if(!empty($data['textblocks_category'])){
			$data['textblocks_category'] = json_encode($data['textblocks_category']);
		}else{
			$data['textblocks_category'] = '';
		}
		
		if(!empty($data['textblocks_manufacturer'])){
			$data['textblocks_manufacturer'] = json_encode($data['textblocks_manufacturer']);
		}else{
			$data['textblocks_manufacturer'] = '';
		}
		
		if(!empty($data['textblocks_ingore_product'])){
			$data['textblocks_ingore_product'] = json_encode($data['textblocks_ingore_product']);
		}else{
			$data['textblocks_ingore_product'] = '';
		}
		
		if(!empty($data['textblocks_store'])){
			$data['textblocks_store'] = json_encode($data['textblocks_store']);
		}else{
			$data['textblocks_store'] = '';
		}
		
		if(!isset($data['allproducts'])){
			$data['allproducts'] = 0;
		}
		
		if(!isset($data['checkbox'])){
			$data['checkbox'] = 0;
		}
		
		$this->db->query("UPDATE " . DB_PREFIX . "textblocks SET sort_order = '" . (int)$data['sort_order'] . "', status = '".(int)$data['status']."', checkbox = '".(int)$data['checkbox']."', products = '".$data['textblocks_product']."', categories = '".$data['textblocks_category']."', manufactures = '".$data['textblocks_manufacturer']."', ingore_products = '".$data['textblocks_ingore_product']."',stores = '".$data['textblocks_store']."',allproducts = '".(int)$data['allproducts']."', icontype = '".(int)$data['icontype']."', image = '".$data['image']."', icon = '".$data['icon']."' WHERE tb_id = '".(int)$tb_id."'");
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "textblocks_description WHERE tb_id = '" . (int)$tb_id . "'");
		
		foreach($data['textblocks_description'] as $language_id => $value){
			$this->db->query("INSERT INTO " . DB_PREFIX . "textblocks_description SET tb_id = '" . (int)$tb_id . "', language_id = '" . (int)$language_id . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "', href = '" . $this->db->escape($value['href']) . "'");
		}

	}
	
	public function deletetextblocks($tb_id) {

	$this->db->query("DELETE FROM " . DB_PREFIX . "textblocks WHERE tb_id = '" . (int)$tb_id . "'");
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "textblocks_description WHERE tb_id = '" . (int)$tb_id . "'");
		
	}
	
	public function gettextblocks($tb_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "textblocks WHERE tb_id = '" . (int)$tb_id . "'");

		return $query->row;
	}
	
	public function gettextblockss($data = array()){

		$sql = "SELECT * FROM " . DB_PREFIX . "textblocks t LEFT JOIN ".DB_PREFIX."textblocks_description td ON(t.tb_id = td.tb_id) WHERE td.language_id = '".$this->config->get('config_language_id')."'";

		if (!empty($data['filter_name'])) {
			$sql .= " AND td.title LIKE '" . $this->db->escape($data['filter_name']) . "%'";
		}
		
		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$sql .= " AND t.status = '" . (int)$data['filter_status'] . "'";
		}

		$sort_data = array(
			'td.title',
			'sort_order'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY td.title";
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
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

		return $query->rows;
	}
	
	public function gettextblocksDescriptions($tb_id) {
		$category_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "textblocks_description WHERE tb_id = '" . (int)$tb_id . "'");

		foreach ($query->rows as $result) {
			$category_description_data[$result['language_id']] = array(
				'title'            => $result['title'],
				'description'      => $result['description'],
				'href'         	   => $result['href']
			);
		}

		return $category_description_data;
	}
	
	public function getTotaltextblockss() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "textblocks");

		return $query->row['total'];
	}
}