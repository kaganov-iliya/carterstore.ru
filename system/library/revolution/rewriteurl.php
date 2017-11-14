<?php
namespace revolution;
class rewriteurl {
    private $config;
    public function __construct($config) {
        $this->config = $config;
    }
    public function rewrite($url) {
        $get_route = isset($_GET['route']) ? $_GET['route'] : (isset($_GET['_route_']) ? $_GET['_route_'] : '');
        if (!empty($this->config) && isset($this->config->get('revtheme_all_settings')['revcheckout_status']) && $this->config->get('revtheme_all_settings')['revcheckout_status']) {
            if (strpos($url, 'checkout/checkout') && $get_route != 'checkout/checkout') {
                $url = str_replace('checkout/checkout', 'revolution/revcheckout', $url);
            }

        }
		if (!empty($this->config) && isset($this->config->get('revtheme_header_cart')['cart_carturl']) && !$this->config->get('revtheme_header_cart')['cart_carturl'] && strpos($url, 'checkout/cart') && $get_route != 'checkout/cart') {
			$url = str_replace('checkout/cart', 'revolution/revcheckout', $url);
		}
		if (!empty($this->config) && isset($this->config->get('revtheme_all_settings')['revregister_status']) && $this->config->get('revtheme_all_settings')['revregister_status']) {
            if (strpos($url, 'account/register') && $get_route != 'account/register') {
                $url = str_replace('account/register', 'revolution/account/revregister', $url);
            }
			if (strpos($url, 'account/account') && $get_route != 'account/account') {
                $url = str_replace('account/account', 'revolution/account/revaccount', $url);
            }
			if (strpos($url, 'account/edit') && $get_route != 'account/edit') {
                $url = str_replace('account/edit', 'revolution/account/revedit', $url);
            }
			if (strpos($url, 'account/address/update')) {
                $url = str_replace('account/address/update', 'revolution/account/revedit', $url);
            }
            if (strpos($url, 'account/address/edit')) {
                $url = str_replace('account/address/edit', 'revolution/account/revedit', $url);
            }
            if (strpos($url, 'account/address/insert')) {
                $url = str_replace('account/address/insert', 'revolution/account/revedit', $url);
            }
            if (strpos($url, 'account/address/add')) {
                $url = str_replace('account/address/add', 'revolution/account/revedit', $url);
            }
        }
        return $url;
    }
}