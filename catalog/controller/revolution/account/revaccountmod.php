<?php
class ControllerRevolutionAccountRevAccountMod extends Controller {
	public function index() {
		
		$this->load->language('revolution/revolution');
		$this->load->language('account/account');
		
		$settings = $data['settings'] = $this->config->get('revtheme_all_settings');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_register'] = $this->language->get('text_rev_account_register');
		$data['text_login'] = $this->language->get('text_rev_account_login');
		$data['text_forgotten'] = $this->language->get('text_rev_account_forgotten');
		$data['text_logout'] = $this->language->get('text_rev_logout');
		
		$data['text_edit'] = $this->language->get('text_rev_text_edit');
		$data['text_wishlist'] = $this->language->get('text_rev_text_wishlist');
		$data['text_order'] = $this->language->get('text_rev_text_order');
		$data['text_download'] = $this->language->get('text_rev_text_download');
		$data['text_reward'] = $this->language->get('text_reward');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_recurring'] = $this->language->get('text_recurring');

		$data['logged'] = $this->customer->isLogged();
		$data['register'] = $this->url->link('account/register', '', true);
		$data['login'] = $this->url->link('account/login', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		$data['forgotten'] = $this->url->link('account/forgotten', '', true);
		$data['account'] = $this->url->link('account/account', '', true);
		$data['edit'] = $this->url->link('account/edit', '', true);
		$data['password'] = $this->url->link('account/password', '', true);
		$data['address'] = $this->url->link('account/address', '', true);
		$data['wishlist'] = $this->url->link('account/wishlist');
		$data['order'] = $this->url->link('account/order', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		$data['reward'] = $this->url->link('account/reward', '', true);
		$data['return'] = $this->url->link('account/return', '', true);
		$data['transaction'] = $this->url->link('account/transaction', '', true);
		$data['newsletter'] = $this->url->link('account/newsletter', '', true);
		$data['recurring'] = $this->url->link('account/recurring', '', true);

		return $data;
	}
}