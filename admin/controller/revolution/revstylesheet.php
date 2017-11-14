<?php
$tcss = '';
if (isset($this->request->post['revtheme_catalog_stiker'])) {
	$tcss .= '.image .stiker_last {color: #' . $this->request->post['revtheme_catalog_stiker']['last_color_text'] . '; background-color: #' . $this->request->post['revtheme_catalog_stiker']['last_color'] . ';}' . "\n";
	$tcss .= '.image .stiker_best {color: #' . $this->request->post['revtheme_catalog_stiker']['best_color_text'] . '; background-color: #' . $this->request->post['revtheme_catalog_stiker']['best_color'] . ';}' . "\n";
	$tcss .= '.image .stiker_spec {color: #' . $this->request->post['revtheme_catalog_stiker']['spec_color_text'] . '; background-color: #' . $this->request->post['revtheme_catalog_stiker']['spec_color'] . ';}' . "\n";
	$tcss .= '.image .stiker_netu {color: #' . $this->request->post['revtheme_catalog_stiker']['netu_color_text'] . '; background-color: #' . $this->request->post['revtheme_catalog_stiker']['netu_color'] . ';}' . "\n";
	$tcss .= '.image .stiker_user {color: #' . $this->request->post['revtheme_catalog_stiker']['user_color_text'] . '; background-color: #' . $this->request->post['revtheme_catalog_stiker']['user_color'] . ';}' . "\n";
}
if (isset($this->request->post['revtheme_home_blog'])) {
	$tcss .= '#top7 {background-color: #' . $this->request->post['revtheme_home_blog']['b_color'] . ';}' . "\n";
	$tcss .= '.rev_slider.rev_blog_mod .heading_h {background-color: #' . $this->request->post['revtheme_home_blog']['b_color'] . ';}' . "\n";
	$tcss .= '.rev_slider.rev_blog_mod .owl-pagination {background-color: #' . $this->request->post['revtheme_home_blog']['b_color'] . ';}' . "\n";
	if ($this->request->post['revtheme_home_blog']['b_color'] == 'FFFFFF') {
		$tcss .= '.rev_slider.rev_blog_mod {margin-top: 0;}' . "\n";
	} else {
		$tcss .= '.rev_slider.rev_blog_mod .vertical-sreview {border: none;}' . "\n";
		$tcss .= '#top7 {padding: 30px 0 15px 0; margin-bottom: 20px;}' . "\n";
	}
}
if (isset($this->request->post['revtheme_home_slideshow'])) {
	$tcss .= '#top4 {background-color: #' . $this->request->post['revtheme_home_slideshow']['b_color'] . ';}' . "\n";
	if ($this->request->post['revtheme_home_slideshow']['mobile']) {
		$tcss .= '@media (max-width: 767px) {#top4, #top5 {display: block;margin-bottom: -10px;min-height: initial !important;}}' . "\n";
	}
}
if (isset($this->request->post['revtheme_all_settings'])) {
	$revtheme_all_settings = $this->request->post['revtheme_all_settings'];
	$tcss .= '::selection {background-color: #' . $revtheme_all_settings['color_selecta'] . ';}' . "\n";
	$tcss .= 'body,#all_document,header,#top,#top2,.rev_slider .owl-pagination,.rev_slider .heading_h,#product_products .owl-pagination,#product_products h3,.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover,#top3_links,.vertical-sreview .caption {background-color: #' . $revtheme_all_settings['color_all_document'] . ';}' . "\n";
	if ($revtheme_all_settings['all_document_width'] && $revtheme_all_settings['all_content_width']) {
		$tcss .= '@media (min-width: 768px) {.container {width: 90%;}}' . "\n";
	}
	if (!$revtheme_all_settings['all_document_width']) {
		$tcss .= '@media (min-width: 768px) {#all_document {width: 750px;margin: 0 auto;box-shadow: 0 0 15px rgba(0,0,0,0.2);}}' . "\n";
		$tcss .= '@media (min-width: 992px) {#all_document {width: 970px;}}' . "\n";
		$tcss .= '@media (min-width: 1200px) {#all_document {width: 1170px;}}' . "\n";
	}
	if (!$revtheme_all_settings['all_document_width'] && $revtheme_all_settings['all_document_margin']) {
		$tcss .= '@media (min-width: 768px) {#all_document {margin-top: 20px;margin-bottom: 20px;border-radius: 4px;}}' . "\n";
	}
	if (!$revtheme_all_settings['all_document_width'] && $revtheme_all_settings['all_fon_image']) {
		if (isset($revtheme_all_settings['all_fon_image_css_1'])) { $style_1 = ' repeat'; } else { $style_1 = ' no-repeat'; }
		if (isset($revtheme_all_settings['all_fon_image_css_2'])) {	$style_2 = ' fixed'; } else { $style_2 = ''; }
		if (isset($revtheme_all_settings['all_fon_image_css_3'])) { $style_3 = ' center'; } else { $style_3 = ''; }
		if (isset($revtheme_all_settings['all_fon_image_css_4'])) { $style_4 = ' background-size: contain'; } else { $style_4 = '';	}
		$tcss .= 'body {background: url("../../../../../../image/' . $revtheme_all_settings['all_fon_image'] . '")' . $style_1 . $style_2 . $style_3 . ';}' . "\n";
		$tcss .= 'body {' . $style_4 . ';}' . "\n";
	}
	if ($revtheme_all_settings['all_document_width']) {
		$tcss .= '#top3,#top3.affix {width: 100%;}' . "\n";
		$tcss .= '#top .container {border-bottom: none;}' . "\n";
	}
	if (!$revtheme_all_settings['all_document_width']) {
		$tcss .= '.map-wrapper .contact-info {padding: 0 50px;}' . "\n";
	}
	if (!$revtheme_all_settings['all_document_width'] && $revtheme_all_settings['all_document_h_f_width']) {
		$tcss .= '#top3,#top3.affix {width: 100%;}' . "\n";
	}
	if ($revtheme_all_settings['color_href']) {
		$tcss .= 'a,.list-group a,.pagination>li>a, .pagination>li>span, .mobile_info button:hover, .mobilemenu .navbar-nav > li > .list-group-submenu li a > .chevrond:hover, .mobilemenu .navbar-nav > li a > .chevrond:hover {color: #' . $revtheme_all_settings['color_href'] . ';}' . "\n";
		$tcss .= '.btn-primary,.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover, #popup-view-wrapper .popup-footer a, .cd-products-comparison-table .filter_otlich_span.active {background-color: #' . $revtheme_all_settings['color_href'] . '; border-color: #' . $revtheme_all_settings['color_href'] . ';}' . "\n";
	}
	if ($revtheme_all_settings['color_href_hover']) {
		$tcss .= 'a:hover,.list-group a:hover,.list-group a.active:hover,.pagination>li>a:hover,.pagination>li>span:hover,.top-links.verh a:hover,.top-links.verh .span-a:hover:hover,.product-info .btn-plus button:hover, .product-info .btn-minus button:hover,.product-info .pop_ico:hover, .product-info .compare .fa:hover, .product-info .wishlist .fa:hover,.product-info input[type="radio"]:checked + label span.option_price, .product-info input[type="checkbox"]:checked + label span.option_price,.home_block a:hover, .home_block a:hover .image > .fa,#menu2 ul.lastul li a:hover,#menu2 a:hover,#menu2 li.glavli a:hover,#menu .nav > li .dropdown-menu li .dropdown-menu ul li a:hover,#menu .nav > li > div > .dropdown-menu > div > ul > li > a:hover,.display-products-cart .btn-plus button:hover, .display-products-cart .btn-minus button:hover,.dropdown-menu li > a:hover, .dropdown-menu li > a:hover i,.search .search_button:hover,.search .change_category_button:hover,.popup_notification .mfp-close:hover,#popup-order-okno .mfp-close:hover, #popup-okno .mfp-close:hover,#popup-view-wrapper .mfp-close:hover,.wwicons a:hover,.cd-products-comparison-table .in_wishlist .fa-border, .cd-products-comparison-table .in_compare .fa-border,.cd-products-comparison-table .fa-border:hover,.product-info .in_wishlist .fa, .product-info .in_compare .fa,.well.well-sm .btn-group-justified .btn-default:hover,.dropdown-menu li > a:hover, .dropdown-menu li > a:hover i,.search .dropdown-menu > li > a:hover .name,.table-revolution .btn-plus button:hover, .table-revolution .btn-minus button:hover,.owl-carousel .owl-buttons div i:hover,.product-thumb .fa-border:hover, .product-info .pokupka .preimushestva .home_block a:hover .fa, .ul_block_home_catwalls h4.home_catwalls_all_href a:hover, .product-thumb .caption a.home_catwalls_podcat:hover,.product-thumb .in_wishlist .fa-border,.product-thumb .in_compare .fa-border,#menu2 ul.lastul .show_categoryoff:hover,.options_buy .checkbox label:hover,.options_buy .radio label:hover,.display-products-cart tr td.remove button:hover,#revcheckout .delete button:hover {color: #' . $revtheme_all_settings['color_href_hover'] . ';}' . "\n";
		$tcss .= '.btn-primary:hover,#popup-view-wrapper .popup-footer a:hover,#popup-view-wrapper .popup-footer a:hover,.btn-primary.active.focus, .btn-primary.active:focus, .btn-primary.active:hover, .btn-primary:active.focus, .btn-primary:active:focus, .btn-primary:active:hover, .open>.dropdown-toggle.btn-primary.focus, .open>.dropdown-toggle.btn-primary:focus, .open>.dropdown-toggle.btn-primary:hover,#popup-view-wrapper .popup-footer a:hover {background-color: #' . $revtheme_all_settings['color_href_hover'] . '; border-color: #' . $revtheme_all_settings['color_href_hover'] . ';}' . "\n";
		$tcss .= '#menu2 ul.lastul .show_categoryoff:hover {border-color: #' . $revtheme_all_settings['color_href_hover'] . ';}' . "\n";
	}
	if ($revtheme_all_settings['color_cart']) {
		$tcss .= '#top2 .tel .s22,#top2 .tel .s22 a,#top2 .tel .s22:hover i,.rating .fa-star,.rat-star.active,.rat-star.checked,.rating .fa-star + .fa-star-o,.product-info input[type="radio"]:checked + label .fa, .product-info input[type="checkbox"]:checked + label .fa,.product-info .form-group .list-unstyled .update_price, .product-info .form-group .list-unstyled .update_special,.product-thumb .price-new {color: #' . $revtheme_all_settings['color_cart'] . ';}' . "\n";
		$tcss .= '.product-info #button-cart,#cart:hover button.cart,.popup_notification .popup-footer a, #popup-order-okno .popup-footer a, #popup-okno .popup-footer a,.btn-danger {background-color: #' . $revtheme_all_settings['color_cart'] . ';}' . "\n";
		$tcss .= '.product-thumb .fa-border.fa-shopping-basket,.options_buy .fa-border,.cd-products-comparison-table .fa-border.fa-shopping-basket,.wwicons .fa-border.fa-shopping-basket {background-color: #' . $revtheme_all_settings['color_cart'] . '; border-color: #' . $revtheme_all_settings['color_cart'] . ';}' . "\n";
		$tcss .= '.product-info input[type="radio"]:checked + label,.product-info input[type="checkbox"]:checked + label,.product-info input[type="radio"]:hover + label, .product-info input[type="checkbox"]:hover + label,#revfilter_box .image-filter input:checked + img {box-shadow: 0px 0px 1px 1px #' . $revtheme_all_settings['color_cart'] . ';}' . "\n";
		$tcss .= '.product-info .radio .btn-default:active {border-color: #' . $revtheme_all_settings['color_cart'] . ';}' . "\n";
	}
	if ($revtheme_all_settings['color_cart_hover']) {
		$tcss .= '.product-info #button-cart:hover,.popup-phone-wrapper,.popup_notification .popup-footer a:hover, #popup-order-okno .popup-footer a:hover, #popup-okno .popup-footer a:hover,.btn-danger:hover {background-color: #' . $revtheme_all_settings['color_cart_hover'] . ';}' . "\n";
		$tcss .= '.product-thumb .fa-border.fa-shopping-basket:hover, .options_buy .fa-border:hover,.cd-products-comparison-table .fa-border.fa-shopping-basket:hover,.wwicons .fa-border.fa-shopping-basket:hover {background-color: #' . $revtheme_all_settings['color_cart_hover'] . '; border-color: #' . $revtheme_all_settings['color_cart_hover'] . ';}' . "\n";
	}
	if ($revtheme_all_settings['color_amazon']) {
		$tcss .= '#menu2_button .box-heading {background-color: #' .$revtheme_all_settings['color_amazon'] . ';}' . "\n";
	}
	if ($revtheme_all_settings['color_top3']) {
		$tcss .= '#top3 {background-color: #' . $revtheme_all_settings['color_top3'] . ';}' . "\n";
	}
	if ($revtheme_all_settings['color_top3_cart']) {
		$tcss .= '#cart button.cart {background-color: #' . $revtheme_all_settings['color_top3_cart'] . ';}' . "\n";
	}
	if ($revtheme_all_settings['color_footer']) {
		$tcss .= 'footer .footer {background-color: #' . $revtheme_all_settings['color_footer'] . ';}' . "\n";
	}
	if (!$revtheme_all_settings['all_document_width']) {
		$tcss .= '#map-wrapper .contact-info {padding-left: 2% !important;}' . "\n";
	}
	if ($revtheme_all_settings['razmiv_cont']) {
		$tcss .= '.razmiv #revslideshow,.razmiv #top6,.razmiv #content,.razmiv .rev_slider,.razmiv .hcarousel,.razmiv #vk_groups,.razmiv .breadcrumb,.razmiv .razmivcont,.razmiv #top3_links .top-links,.razmiv .home_h1,.razmiv #column-left,.razmiv #column-right,.razmiv #top7,.razmiv footer {-webkit-filter: blur(1px);filter: blur(1px);-webkit-transition: all 50ms linear;-moz-transition: all 50ms linear;-ms-transition: all 50ms linear;-o-transition: all 50ms linear;transition: all 50ms linear;}' . "\n";
		$tcss .= '.razmiv2 #top,.razmiv2 #revslideshow,.razmiv2 #menu2_button,.razmiv2 #top6,.razmiv2 #content,.razmiv2 .rev_slider,.razmiv2 .hcarousel,.razmiv2 #vk_groups,.razmiv2 .breadcrumb,.razmiv2 #top3_links .top-links,.razmiv2 .home_h1,.razmiv2 #column-left,.razmiv2 #column-right,.razmiv2 #top7,.razmiv2 #top2,.razmiv2 #top3,.razmiv2 footer {-webkit-filter: blur(1px);filter: blur(1px);-webkit-transition: all 50ms linear;-moz-transition: all 50ms linear;-ms-transition: all 50ms linear;-o-transition: all 50ms linear;transition: all 50ms linear;}' . "\n";
		$tcss .= '.iexpl .razmiv #revslideshow,.iexpl .razmiv #top6,.iexpl .razmiv #content,.iexpl .razmiv .rev_slider,.iexpl .razmiv .hcarousel,.iexpl .razmiv #vk_groups,.iexpl .razmiv .breadcrumb,.iexpl .razmiv .razmivcont,.iexpl .razmiv #top3_links .top-links,.iexpl .razmiv .home_h1,.iexpl .razmiv #column-left,.iexpl .razmiv #column-right,.iexpl .razmiv #top7,.iexpl .razmiv footer {filter: none;-webkit-transition: all 50ms linear;-moz-transition: all 50ms linear;-ms-transition: all 50ms linear;-o-transition: all 50ms linear;transition: all 50ms linear;}' . "\n";
		$tcss .= '.iexpl .razmiv2 #top,.iexpl .razmiv2 #revslideshow,.iexpl .razmiv2 #menu2_button,.iexpl .razmiv2 #top6,.iexpl .razmiv2 #content,.iexpl .razmiv2 .rev_slider,.iexpl .razmiv2 .hcarousel,.iexpl .razmiv2 #vk_groups,.iexpl .razmiv2 .breadcrumb,.iexpl .razmiv2 #top3_links .top-links,.iexpl .razmiv2 .home_h1,.iexpl .razmiv2 #column-left,.iexpl .razmiv2 #column-right,.iexpl .razmiv2 #top7,.iexpl .razmiv2 #top2,.iexpl .razmiv2 #top3,.iexpl .razmiv2 footer {filter: none;-webkit-transition: all 50ms linear;-moz-transition: all 50ms linear;-ms-transition: all 50ms linear;-o-transition: all 50ms linear;transition: all 50ms linear;}' . "\n";
	}
	if ($revtheme_all_settings['preloader']) {
		$tcss .= '.masked_loading {background: url("../../../../../image/' . $revtheme_all_settings['preloader'] . '") no-repeat center center;}' . "\n";
	}
	if ($revtheme_all_settings['cat_opis_opt']) {
		$tcss .= '.product-grid .product-thumb .description, .rev_slider .product-thumb .description {line-height: 1.3;}' . "\n";
		$tcss .= '.product-layout.product-grid:hover, .rev_slider .product-layout.col-xs-12:hover {z-index: 8;}' . "\n";
		$tcss .= '.product-layout.product-grid .product-thumb, .rev_slider .product-layout.col-xs-12 .product-thumb {overflow: visible;}' . "\n";
		$tcss .= '.product-grid .product-thumb .caption, .rev_slider .col-xs-12 .product-thumb .caption {display: flex; flex-flow: column;}' . "\n";
		$tcss .= '.product-grid .product_buttons, .rev_slider .col-xs-12 .product_buttons {order: 1;}' . "\n";
		$tcss .= '.product-grid .description_options, .rev_slider .col-xs-12 .description_options {order: 2; margin: 15px 0 0 0; display: none;}' . "\n";
		$tcss .= '@media (min-width: 992px) {.product-grid .product-thumb:hover .description_options, .rev_slider .col-xs-12 .product-thumb:hover .description_options {display: block;}}' . "\n";
	}
	if ($revtheme_all_settings['cat_compact']) {
		$tcss .= '.rev_slider .row.product-layout {margin: 0; margin-right: -4px;}' . "\n";
		$tcss .= '.rev_slider .row.product-layout .product-layout.col-xs-12 {padding: 1px; margin: -1px 0px -1px -1px; border-radius: 0;}' . "\n";
		$tcss .= '#content .row.products_category {margin: 0 -4px 20px 0;}' . "\n";
		$tcss .= '#content .filter_gr, #content .row.products_category .product-price {padding: 0;}' . "\n";
		$tcss .= '.product-layout.product-grid {padding: 1px; margin: 0px 0px -1px -1px; border-radius: 0;}' . "\n";
		$tcss .= '.rev_slider .product-layout.col-xs-12 .product-thumb, .product-layout.product-grid .product-thumb {box-shadow: 0 0 0 1px #ededed; border: 0; border-radius: 0; margin-bottom: 0; z-index: 1;}' . "\n";
		$tcss .= '.rev_slider .product-layout.col-xs-12 .product-thumb .description + .well-sm.product-info, .product-layout.product-grid .product-thumb .description + .well-sm.product-info {padding: 10px; margin: 5px -15px -15px -15px; border-radius: 0; border: 0; background: transparent;}' . "\n";
		$tcss .= '.rev_slider .product-layout .product-thumb::before, .product-layout.product-grid .product-thumb::before {content: ""; position: absolute; top: 0; left: 0; right: 0; bottom: 0;}' . "\n";
		$tcss .= '.rev_slider .product-layout .product-thumb:hover::before, .product-layout.product-grid .product-thumb:hover::before {-webkit-transform: scale3d(1.05,1.02,1); transform: scale3d(1.05,1.02,1); box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.15); background: -moz-linear-gradient(top,#fff 65%,#f9fafc 100%); background: -webkit-gradient(linear,left top,left bottom,color-stop(65%,#fff),color-stop(100%,#f9fafc)); background: -webkit-linear-gradient(top,#fff 65%,#f9fafc 100%); background: -o-linear-gradient(top,#fff 65%,#f9fafc 100%); background: -ms-linear-gradient(top,#fff 65%,#f9fafc 100%); background: linear-gradient(to bottom,#fff 65%,#f9fafc 100%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr="#ffffff", endColorstr="#f9fafc",GradientType=0 ); -webkit-transition: box-shadow 0.2s ease-out; -moz-transition: box-shadow 0.2s ease-out; -o-transition: box-shadow 0.2s ease-out; transition: box-shadow 0.2s ease-out; border-radius: 2px;}' . "\n";
	}
}
if (isset($this->request->post['revtheme_cat_attributes'])) {
	$revtheme_cat_attributes = $this->request->post['revtheme_cat_attributes'];
	if ($revtheme_cat_attributes['description_in_grid']) {
		$tcss .= '.product-grid .product-thumb .description, .rev_slider .product-thumb .description {display: block;}' . "\n";
	}
	if ($revtheme_cat_attributes['options_in_grid']) {
		$tcss .= '.product-grid .product-thumb .well-sm.product-info, .rev_slider .product-thumb .well-sm.product-info {display: block;}' . "\n";
	}
}
if (isset($this->request->post['revtheme_product_all'])) {
	$revtheme_product_all = $this->request->post['revtheme_product_all'];
	if (!$revtheme_product_all['opt_price']) {
		$tcss .= 'span.option_price {display: none;}' . "\n";
	}
	if ($revtheme_product_all['desc_cols']) {
		$tcss .= '.tab-content #tab-description {-webkit-column-count: 2;-moz-column-count: 2;column-count: 2;-webkit-column-gap: 30px;-moz-column-gap: 30px;column-gap: 30px;-webkit-column-rule: 1px solid #eee;-moz-column-rule: 1px solid #eee;column-rule: 1px solid #eee;}' . "\n";
	}
	if ($revtheme_product_all['spec_cols']) {
		$tcss .= '.tab-content #tab-specification {-webkit-column-count: 2;-moz-column-count: 2;column-count: 2;-webkit-column-gap: 30px;-moz-column-gap: 30px;column-gap: 30px;-webkit-column-rule: 1px solid #eee;-moz-column-rule: 1px solid #eee;column-rule: 1px solid #eee;}' . "\n";
		$tcss .= '.tab-content #tab-specification .table.attrbutes tbody tr td {border: none;}' . "\n";
	}
	if ($revtheme_product_all['options_two_in_line']) {
		$tcss .= '.options_no_buy {display: inline-block;width: 100%;margin-bottom: -10px;} .options_no_buy .form-group {width: 50%;float: left;padding-right: 15px;} .options_no_buy .form-group + .form-group {border-left: 1px solid #eee;padding-left: 15px;}' . "\n";
	}
}
if (isset($this->request->post['revtheme_catalog_all'])) {
	$setting_catalog_all = $this->request->post['revtheme_catalog_all'];
	if (!$setting_catalog_all['ch_quantity']) {
		$tcss .= '.rev_slider .product-thumb .price, .product-grid .product-thumb .price {float: left; margin-bottom: 0;}' . "\n";
	}
	if (!$setting_catalog_all['chislo_ryad']) {
		$tcss .= '@media (min-width: 1200px) {.product-layout.col-lg-3 {width: 20%;}.product-layout.col-lg-4 {width: 25%;}}' . "\n";
	}
	if ($setting_catalog_all['podcategory_cols'] == '5') {
		$tcss .= '@media (min-width: 1200px) {#content .refine_categories a {width: 20%;}}' . "\n";
	}
	if ($setting_catalog_all['podcategory_cols'] == '4') {
		$tcss .= '@media (min-width: 1200px) {#content .refine_categories a {width: 25%;}}' . "\n";
	}
}
if (isset($this->request->post['revtheme_header_menu'])) {
	$revtheme_header_menu = $this->request->post['revtheme_header_menu'];
	if ($revtheme_header_menu['image_in_ico']) {
		$tcss .= '#menu .mmmenu .dropdown-menu:before {display: none;}' . "\n";
	}
	if ($revtheme_header_menu['inhome']) {
		$tcss .= '.common-home.opacity_minus_products #menu2.inhome, .common-home.opacity_minus_products .container #content:first-child {opacity: 0;-webkit-transition: all 100ms linear;-moz-transition: all 100ms linear;-ms-transition: all 100ms linear;-o-transition: all 100ms linear;transition: all 100ms linear;}' . "\n";
		$tcss .= '.common-home.opacity_plus_products #menu2.inhome, .common-home.opacity_plus_products .container #content:first-child {opacity: 1;-webkit-transition: all 100ms linear;-moz-transition: all 100ms linear;-ms-transition: all 100ms linear;-o-transition: all 100ms linear;transition: all 100ms linear;}' . "\n";
	}
	if ($revtheme_header_menu['zadergka']) {
		$tcss .= '.show-on-hover:hover > ul.dropdown-menu.dblock22 {display: block;}' . "\n";
	} else {
		$tcss .= '.show-on-hover:hover > ul.dropdown-menu {display: block;}' . "\n";
	}
}
if (isset($this->request->post['revtheme_footer_user_set'])) {
	$revtheme_footer_user_set = $this->request->post['revtheme_footer_user_set'];
	$user_styles = html_entity_decode($revtheme_footer_user_set['styles'], ENT_QUOTES, 'UTF-8');
	if ($user_styles) {
		$tcss .= $user_styles . "\n";
	}
}
if (isset($this->request->post['revtheme_blocks_home']) && $this->request->post['revtheme_blocks_home']['effect']) {
	$tcss .= '.home_block .image > .fa,.home_block .image > img {-webkit-transition-property: color, opacity, transform;transition-property: color, opacity, transform;}.home_block a:hover .image > .fa,.home_block a:hover .image > img {-webkit-transform: translateY(-3px);transform: translateY(-3px);}' . "\n";
}
if (isset($this->request->post['revtheme_header_cart'])) {
	$revtheme_header_cart = $this->request->post['revtheme_header_cart'];
	if ($revtheme_header_cart['cart_size'] == 'small') {
		$tcss .= '@media (min-width: 992px) and (max-width: 1200px) {.heading_ico_image>img {margin-left: -6px; margin-right: 2px;} #cart button.cart {font-size: 15px;}}' . "\n";
	}
}