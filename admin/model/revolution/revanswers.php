<?php
class ModelRevolutionRevanswers extends Model {
	public function addReview($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "revanswers SET author = '" . $this->db->escape($data['author']) . "', product_id = '" . (int)$data['product_id'] . "', text = '" . $this->db->escape(strip_tags($data['text'])) . "', answer = '" . $this->db->escape(strip_tags($data['answer'])) . "', answer_from = '" . $this->db->escape($data['answer_from']) . "', status = '" . (int)$data['status'] . "', date_added = '" . $this->db->escape($data['date_added']) . "'");
		$answer_id = $this->db->getLastId();
		$this->cache->delete('product');
		return $answer_id;
	}

	public function editReview($answer_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "revanswers SET author = '" . $this->db->escape($data['author']) . "', product_id = '" . (int)$data['product_id'] . "', text = '" . $this->db->escape(strip_tags($data['text'])) . "', answer = '" . $this->db->escape(strip_tags($data['answer'])) . "', answer_from = '" . $this->db->escape($data['answer_from']) . "', status = '" . (int)$data['status'] . "', date_added = '" . $this->db->escape($data['date_added']) . "' WHERE answer_id = '" . (int)$answer_id . "'");
		$this->cache->delete('product');
	}

	public function deleteReview($answer_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "revanswers WHERE answer_id = '" . (int)$answer_id . "'");
		$this->cache->delete('product');
	}

	public function getReview($answer_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT pd.name FROM " . DB_PREFIX . "product_description pd WHERE pd.product_id = r.product_id AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "') AS product FROM " . DB_PREFIX . "revanswers r WHERE r.answer_id = '" . (int)$answer_id . "'");
		return $query->row;
	}

	public function getReviews($data = array()) {
		$sql = "SELECT r.answer_id, pd.name, r.author, r.status, r.date_added FROM " . DB_PREFIX . "revanswers r LEFT JOIN " . DB_PREFIX . "product_description pd ON (r.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		if (!empty($data['filter_product'])) {
			$sql .= " AND pd.name LIKE '" . $this->db->escape($data['filter_product']) . "%'";
		}
		if (!empty($data['filter_author'])) {
			$sql .= " AND r.author LIKE '" . $this->db->escape($data['filter_author']) . "%'";
		}
		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$sql .= " AND r.status = '" . (int)$data['filter_status'] . "'";
		}
		if (!empty($data['filter_date_added'])) {
			$sql .= " AND DATE(r.date_added) = DATE('" . $this->db->escape($data['filter_date_added']) . "')";
		}

		$sort_data = array(
			'pd.name',
			'r.author',
			'r.status',
			'r.date_added'
		);

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY r.date_added";
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

	public function getTotalReviews($data = array()) {
		$sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "revanswers r LEFT JOIN " . DB_PREFIX . "product_description pd ON (r.product_id = pd.product_id) WHERE pd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		if (!empty($data['filter_product'])) {
			$sql .= " AND pd.name LIKE '" . $this->db->escape($data['filter_product']) . "%'";
		}
		if (!empty($data['filter_author'])) {
			$sql .= " AND r.author LIKE '" . $this->db->escape($data['filter_author']) . "%'";
		}
		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$sql .= " AND r.status = '" . (int)$data['filter_status'] . "'";
		}
		if (!empty($data['filter_date_added'])) {
			$sql .= " AND DATE(r.date_added) = DATE('" . $this->db->escape($data['filter_date_added']) . "')";
		}

		$query = $this->db->query($sql);
		return $query->row['total'];
	}

	public function getTotalReviewsAwaitingApproval() {
		$this->db->query("CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "revanswers` (
		`answer_id` int(11) NOT NULL AUTO_INCREMENT,
		`product_id` int(11) NOT NULL,
		`customer_id` int(11) NOT NULL,
		`author` varchar(64) NOT NULL,
		`text` text NOT NULL,
		`answer` text NOT NULL,
		`answer_from` varchar(64) NOT NULL,
		`status` tinyint(1) NOT NULL DEFAULT '0',
		`date_added` datetime NOT NULL,
		PRIMARY KEY (`answer_id`),
		KEY `product_id` (`product_id`)
		) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
		");
		
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "revanswers WHERE status = '0'");
		return $query->row['total'];
	}
}