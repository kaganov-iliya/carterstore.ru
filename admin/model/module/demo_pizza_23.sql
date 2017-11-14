DELETE FROM `oc_attribute`;
INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
	(15, 7, 4),
	(14, 7, 3),
	(13, 7, 2),
	(12, 7, 1);

DELETE FROM `oc_attribute_description`;
INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
	(15, 2, 'Углеводы'),
	(12, 2, 'Энерг. ценность'),
	(15, 1, 'Углеводы'),
	(14, 2, 'Жиры'),
	(14, 1, 'Жиры'),
	(13, 2, 'Белки'),
	(13, 1, 'Белки'),
	(12, 1, 'Энерг. ценность');

DELETE FROM `oc_attribute_group`;
INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
	(7, 1);

DELETE FROM `oc_attribute_group_description`;
INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
	(7, 2, 'Общие'),
	(7, 1, 'Общие');

DELETE FROM `oc_banner_image`;
INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
	(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
	(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
	(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
	(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
	(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
	(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
	(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
	(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
	(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
	(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
	(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
	(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
	(126, 7, 1, 'banner1', '', 'catalog/revolution/demo_tovars/pizza/banner1.png', 1),
	(100, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
	(101, 8, 2, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
	(102, 8, 2, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
	(103, 8, 2, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
	(104, 8, 2, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
	(105, 8, 2, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
	(106, 8, 2, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
	(107, 8, 2, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
	(108, 8, 2, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
	(109, 8, 2, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
	(125, 7, 1, 'banner2', '', 'catalog/revolution/demo_tovars/pizza/banner2.png', 2),
	(111, 8, 2, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
	(112, 8, 2, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

DELETE FROM `oc_category`;
DELETE FROM `oc_category_description`;
DELETE FROM `oc_category_filter`;
DELETE FROM `oc_category_path`;
DELETE FROM `oc_category_to_layout`;
DELETE FROM `oc_category_to_store`;

DELETE FROM `oc_currency`;
INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
	(1, 'Рубль', 'RUB', '', ' р.', '0', 1.00000000, 1, '2017-09-29 12:45:03'),
	(2, 'US Dollar', 'USD', '$', '', '2', 0.01720000, 1, '2017-09-28 19:43:32'),
	(3, 'Euro', 'EUR', '', '€', '2', 0.01460000, 1, '2017-09-28 19:43:32');

DELETE FROM `oc_extension`;
INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
	(1, 'payment', 'cod'),
	(2, 'total', 'shipping'),
	(3, 'total', 'sub_total'),
	(5, 'total', 'total'),
	(6, 'module', 'banner'),
	(7, 'module', 'carousel'),
	(8, 'total', 'credit'),
	(35, 'shipping', 'revship2'),
	(10, 'total', 'handling'),
	(11, 'total', 'low_order_fee'),
	(13, 'module', 'category'),
	(14, 'module', 'account'),
	(15, 'total', 'reward'),
	(16, 'total', 'voucher'),
	(17, 'payment', 'free_checkout'),
	(18, 'module', 'featured'),
	(19, 'module', 'slideshow'),
	(20, 'theme', 'theme_default'),
	(21, 'dashboard', 'activity'),
	(22, 'dashboard', 'sale'),
	(23, 'dashboard', 'recent'),
	(24, 'dashboard', 'order'),
	(25, 'dashboard', 'online'),
	(26, 'dashboard', 'map'),
	(27, 'dashboard', 'customer'),
	(28, 'dashboard', 'chart'),
	(34, 'theme', 'revolution');

DELETE FROM `oc_information`;
INSERT INTO `oc_information` (`information_id`, `bottom`, `top`, `top2`, `sort_order`, `status`) VALUES
	(3, 1, 0, 0, 3, 1),
	(4, 1, 0, 0, 1, 1),
	(5, 1, 0, 0, 4, 1),
	(6, 1, 0, 0, 2, 1),
	(7, 0, 0, 0, -1, 1);

DELETE FROM `oc_information_description`;
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', '', ''),
	(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', '', ''),
	(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', '', ''),
	(4, 1, 'Пиццерия', '&lt;p&gt;\r\n	О нас&lt;/p&gt;\r\n', 'Пиццерия', 'Пиццерия', 'Пиццерия', 'Пиццерия'),
	(5, 1, 'Оплата', '&lt;p&gt;\r\n	Оплата&lt;/p&gt;\r\n', 'Оплата', 'Оплата', 'Оплата', 'Оплата'),
	(3, 1, 'Доставка', '&lt;p&gt;\r\n	Доставка&lt;/p&gt;\r\n', 'Доставка', 'Доставка', 'Доставка', 'Доставка'),
	(6, 1, 'Бонусная программа', '&lt;p&gt;\r\n	Бонусная программа&lt;/p&gt;\r\n', 'Бонусная программа', 'Бонусная программа', 'Бонусная программа', 'Бонусная программа'),
	(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', '', ''),
	(7, 1, 'Политика конфиденциальности', '&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Helvetica, sans-serif; font-size: 14px;&quot;&gt;Настоящая Политика конфиденциальности персональных данных (далее – Политика конфиденциальности) действует в отношении всей информации, которую Интернет-магазин, расположенный на доменном имени, может получить о Пользователе во время использования сайта Интернет-магазина, программ и продуктов Интернет-магазина.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Helvetica, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Helvetica, sans-serif; font-size: 14px;&quot;&gt;1. ОБЩИЕ ПОЛОЖЕНИЯ&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Helvetica, sans-serif; font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Helvetica, sans-serif; font-size: 14px;&quot;&gt;1.1. Использование Пользователем сайта Интернет-магазина означает согласие с настоящей Политикой конфиденциальности и условиями обработки персональных данных Пользователя.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Helvetica, sans-serif; font-size: 14px;&quot;&gt;1.2. В случае несогласия с условиями Политики конфиденциальности Пользователь должен прекратить использование сайта Интернет-магазина.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Helvetica, sans-serif; font-size: 14px;&quot;&gt;1.3. Настоящая Политика конфиденциальности применяется только к сайту Интернет-магазина Название магазина. Интернет-магазин не контролирует и не несет ответственность за сайты третьих лиц, на которые Пользователь может перейти по ссылкам, доступным на сайте Интернет-магазина.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Helvetica, sans-serif; font-size: 14px;&quot;&gt;1.4. Администрация сайта не проверяет достоверность персональных данных, предоставляемых Пользователем сайта Интернет-магазина.&lt;/p&gt;', '', '', '', ''),
	(7, 2, 'Политика конфиденциальности', '&lt;p&gt;Политика конфиденциальности&lt;br&gt;&lt;/p&gt;', '', '', '', '');

DELETE FROM `oc_information_to_layout`;
INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
	(4, 0, 0),
	(6, 0, 0),
	(3, 0, 0),
	(5, 0, 0),
	(7, 0, 0);

DELETE FROM `oc_information_to_store`;
INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
	(3, 0),
	(4, 0),
	(5, 0),
	(6, 0),
	(7, 0);

DELETE FROM `oc_layout_module`;
INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
	(2, 4, '0', 'content_top', 0),
	(3, 4, '0', 'content_top', 1),
	(20, 5, '0', 'column_left', 2),
	(69, 10, 'affiliate', 'column_right', 1),
	(68, 6, 'account', 'column_right', 1),
	(72, 3, 'category', 'column_left', 1),
	(73, 3, 'banner.30', 'column_left', 2);

DELETE FROM `oc_manufacturer`;
INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
	(12, 'Магазин', '', 2),
	(11, 'Пиццерия', '', 1);

DELETE FROM `oc_manufacturer_description`;
INSERT INTO `oc_manufacturer_description` (`manufacturer_id`, `language_id`, `name`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(12, 2, 'Магазин', '', '', '', '', ''),
	(12, 1, 'Магазин', '', 'Магазин - купить в интернет-магазине.', 'Магазин', 'Выбор товаров из каталога Магазин.', 'Магазин, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(11, 2, 'Пиццерия', '', '', '', '', ''),
	(11, 1, 'Пиццерия', '', 'Пиццерия - купить в интернет-магазине.', 'Пиццерия', 'Выбор товаров из каталога Пиццерия.', 'Пиццерия, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.');

DELETE FROM `oc_manufacturer_to_store`;
INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
	(11, 0),
	(12, 0);


DELETE FROM `oc_module`;
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
	(30, 'Баннер на странице категорий', 'banner', '{"name":"Баннер на странице категорий","banner_id":"6","width":"182","height":"182","status":"1"}'),
	(29, 'Карусель на главной странице', 'carousel', '{"name":"Карусель на главной странице","banner_id":"8","width":"130","height":"100","status":"1"}'),
	(28, 'Рекомендуемые на главной странице', 'featured', '{"name":"Рекомендуемые на главной странице","product":["43","40","42","30"],"limit":"4","width":"200","height":"200","status":"1"}'),
	(27, 'Слайдшоу на главной странице', 'slideshow', '{"name":"Слайдшоу на главной странице","banner_id":"7","width":"1140","height":"380","status":"1"}'),
	(31, 'Баннер Продукция HP', 'banner', '{"name":"Баннер Продукция HP","banner_id":"6","width":"182","height":"182","status":"1"}');

DELETE FROM `oc_option`;
INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`, `opt_image`) VALUES
	(13, 'radio', 1, 0),
	(14, 'radio', 2, 0),
	(15, 'radio', 1, 0);

DELETE FROM `oc_option_description`;
INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
	(13, 2, 'Размер пиццы'),
	(14, 2, 'Тесто'),
	(15, 1, 'Объем'),
	(15, 2, 'Объем'),
	(13, 1, 'Размер пиццы'),
	(14, 1, 'Тесто');

DELETE FROM `oc_option_value`;
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
	(52, 14, '', 1),
	(51, 13, '', 3),
	(55, 15, '', 2),
	(54, 15, '', 1),
	(53, 14, '', 2),
	(50, 13, '', 2),
	(49, 13, '', 1);

DELETE FROM `oc_option_value_description`;
INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
	(52, 2, 14, 'Пышное'),
	(52, 1, 14, 'Пышное'),
	(55, 2, 15, '1 л.'),
	(55, 1, 15, '1 л.'),
	(54, 2, 15, '0.5 л.'),
	(54, 1, 15, '0.5 л.'),
	(51, 2, 13, 'L'),
	(51, 1, 13, 'L'),
	(50, 2, 13, 'M'),
	(50, 1, 13, 'M'),
	(53, 2, 14, 'Тонкое'),
	(53, 1, 14, 'Тонкое'),
	(49, 2, 13, 'S'),
	(49, 1, 13, 'S');

DELETE FROM `oc_product`;
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `options_buy`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
	(63, 'Тархун', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/n3_1.jpg', 12, 1, 0, 120.0000, 0, 0, '2017-09-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 5, '2017-09-27 20:07:16', '2017-09-27 20:08:09'),
	(64, 'Байкал Аква', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/n4_1.jpg', 12, 1, 0, 80.0000, 0, 0, '2017-09-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 4, '2017-09-27 20:09:19', '2017-09-27 20:39:56'),
	(65, 'Сок «Rich» (апельсиновый)', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/n5_1.jpg', 12, 1, 0, 170.0000, 0, 0, '2017-09-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 1, '2017-09-27 20:10:22', '2017-09-27 20:12:17'),
	(55, 'Пицца Чизбургер', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/p5_1.jpg', 11, 1, 0, 400.0000, 0, 0, '2017-09-26', 540.00, 2, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-27 18:00:22', '2017-09-27 18:03:50'),
	(56, 'Пицца Маргарита', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/p6_1.jpg', 11, 1, 0, 280.0000, 0, 0, '2017-09-26', 450.00, 2, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-27 18:13:27', '2017-09-27 18:21:59'),
	(57, 'Пицца Жульетта', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/p7_1.jpg', 11, 1, 0, 450.0000, 0, 0, '2017-09-26', 500.00, 2, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 14, '2017-09-27 18:21:44', '2017-09-27 18:24:21'),
	(58, 'Пицца Белорусская', '', 'Острая', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/p8_1.jpg', 11, 1, 0, 390.0000, 0, 0, '2017-09-26', 570.00, 2, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 37, '2017-09-27 18:28:02', '2017-09-29 15:44:36'),
	(59, 'Пицца Вкусная', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/p9_1.jpg', 11, 1, 0, 440.0000, 0, 0, '2017-09-26', 670.00, 2, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 1, '2017-09-27 18:29:57', '2017-09-27 18:32:01'),
	(60, 'Пицца Дьябло', '', 'Острая', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/p10_1.jpg', 11, 1, 0, 350.0000, 0, 0, '2017-09-26', 540.00, 2, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 1, '2017-09-27 18:32:19', '2017-09-29 15:42:11'),
	(61, 'Coca-Cola', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/n1_1.jpg', 12, 1, 0, 70.0000, 0, 0, '2017-09-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 5, '2017-09-27 19:59:50', '2017-09-27 20:39:51'),
	(62, 'Морс клюквенный', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/n2_1.jpg', 12, 1, 0, 140.0000, 0, 0, '2017-09-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 4, '2017-09-27 20:03:58', '2017-09-27 20:40:01'),
	(50, 'Жар-пицца', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/p1_1.jpg', 11, 1, 0, 420.0000, 0, 0, '2017-09-26', 520.00, 2, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 16, '2017-09-26 21:28:13', '2017-09-26 22:07:44'),
	(51, 'Пицца Мясное Ассорти', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/p2_1.jpg', 11, 1, 0, 470.0000, 0, 0, '2017-09-26', 560.00, 2, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 2, '2017-09-26 21:48:32', '2017-09-26 22:07:50'),
	(53, 'Пицца 4 вкуса', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/p3_1.jpg', 11, 1, 0, 360.0000, 0, 0, '2017-09-26', 420.00, 2, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 90, '2017-09-26 22:01:38', '2017-09-28 22:34:26'),
	(54, 'Пицца Пепперони', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/pizza/p4_1.jpg', 11, 1, 0, 350.0000, 0, 0, '2017-09-26', 430.00, 2, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-27 17:48:28', '2017-09-27 17:54:32');

DELETE FROM `oc_product_attribute`;
INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
	(51, 14, 2, '10.4 г'),
	(51, 14, 1, '10.4 г'),
	(51, 13, 1, '13 г'),
	(51, 13, 2, '13 г'),
	(51, 12, 2, '212 ккал'),
	(51, 12, 1, '212 ккал'),
	(50, 14, 2, '11.9 г'),
	(50, 14, 1, '11.9 г'),
	(50, 13, 2, '11.9 г'),
	(50, 13, 1, '11.9 г'),
	(50, 12, 2, '260 ккал'),
	(50, 12, 1, '260 ккал'),
	(60, 15, 1, '25.1 г'),
	(53, 12, 1, '237 ккал'),
	(53, 12, 2, '237 ккал'),
	(53, 13, 1, '10.3 г'),
	(53, 13, 2, '10.3 г'),
	(53, 14, 1, '14.4 г'),
	(53, 14, 2, '14.4 г'),
	(53, 15, 1, '19.9 г'),
	(53, 15, 2, '19.9 г'),
	(50, 15, 1, '26.4 г'),
	(50, 15, 2, '26.4 г'),
	(51, 15, 1, '16.5 г'),
	(51, 15, 2, '16.5 г'),
	(54, 14, 2, '12.8 г'),
	(54, 14, 1, '12.8 г'),
	(54, 13, 2, '10.4 г'),
	(54, 13, 1, '10.4 г'),
	(54, 12, 2, '241 ккал'),
	(54, 12, 1, '241 ккал'),
	(54, 15, 1, '21.2 г'),
	(54, 15, 2, '21.2 г'),
	(55, 14, 2, '15 г'),
	(55, 14, 1, '15 г'),
	(55, 13, 2, '11.9 г'),
	(55, 13, 1, '11.9 г'),
	(55, 12, 2, '246 ккал'),
	(55, 12, 1, '246 ккал'),
	(55, 15, 1, '19.2 г'),
	(55, 15, 2, '19.2 г'),
	(56, 12, 2, '238 ккал'),
	(56, 13, 1, '11.2 г'),
	(56, 13, 2, '11.2 г'),
	(56, 14, 1, '10.2 г'),
	(56, 14, 2, '10.2 г'),
	(56, 12, 1, '238 ккал'),
	(57, 14, 2, '13.6 г'),
	(57, 14, 1, '13.6 г'),
	(57, 13, 2, '9.2 г'),
	(57, 13, 1, '9.2 г'),
	(57, 12, 2, '237 ккал'),
	(57, 12, 1, '237 ккал'),
	(56, 15, 1, '25.4 г'),
	(56, 15, 2, '25.4 г'),
	(57, 15, 1, '19.5 г'),
	(57, 15, 2, '19.5 г'),
	(58, 12, 2, '286 ккал'),
	(58, 13, 1, '9.4 г'),
	(58, 13, 2, '9.4 г'),
	(58, 14, 1, '17.7 г'),
	(58, 14, 2, '17.7 г'),
	(58, 12, 1, '286 ккал'),
	(59, 14, 2, '13.6 г'),
	(59, 14, 1, '13.6 г'),
	(59, 13, 2, '9.3 г'),
	(59, 13, 1, '9.3 г'),
	(59, 12, 2, '278 ккал'),
	(59, 12, 1, '278 ккал'),
	(59, 15, 1, '29.5 г'),
	(59, 15, 2, '29.5 г'),
	(60, 12, 2, '240 ккал'),
	(60, 13, 1, '9.2 г'),
	(60, 13, 2, '9.2 г'),
	(60, 14, 1, '12.6 г'),
	(60, 14, 2, '12.6 г'),
	(60, 12, 1, '240 ккал'),
	(61, 12, 1, '42 ккал'),
	(61, 12, 2, '42 ккал'),
	(61, 13, 1, '0 г'),
	(61, 13, 2, '0 г'),
	(61, 14, 1, '0 г'),
	(61, 14, 2, '0 г'),
	(61, 15, 1, '10.6 г'),
	(61, 15, 2, '10.6 г'),
	(62, 12, 2, '45 ккал'),
	(62, 13, 1, '0 г'),
	(62, 13, 2, '0 г'),
	(62, 14, 1, '0 г'),
	(62, 14, 2, '0 г'),
	(62, 12, 1, '45 ккал'),
	(63, 14, 2, '0 г'),
	(63, 14, 1, '0 г'),
	(63, 13, 2, '0 г'),
	(63, 13, 1, '0 г'),
	(63, 12, 2, '40 ккал'),
	(63, 12, 1, '40 ккал'),
	(63, 15, 1, '10 г'),
	(63, 15, 2, '10 г'),
	(65, 12, 2, '45 ккал'),
	(65, 13, 1, '0 г'),
	(65, 13, 2, '0 г'),
	(65, 14, 1, '0 г'),
	(65, 14, 2, '0 г'),
	(65, 12, 1, '45 ккал'),
	(65, 15, 1, '11.2 г'),
	(65, 15, 2, '11.2 г'),
	(62, 15, 1, '11 г'),
	(62, 15, 2, '11 г'),
	(60, 15, 2, '25.1 г'),
	(58, 15, 1, '20.9 г'),
	(58, 15, 2, '20.9 г');

DELETE FROM `oc_product_description`;
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `short_description`, `tag`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(50, 2, 'Пицца Барбекю', '', '', '', '', '', '', ''),
	(50, 1, 'Пицца Барбекю', '', 'Соус &quot;техасский барбекю&quot;, сыр &quot;моцарелла&quot;, колбаса &quot;пепперони&quot;, ветчина, бекон, грудка куриная, зелень.', '', 'Пицца Барбекю - купить в интернет-магазине.', 'Пицца Барбекю', 'Купить Пицца Барбекю в интернет-магазине. Описание, характеристики, отзывы и цена Пицца Барбекю.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Пиццерия, Пицца Барбекю, Жар-пицца.'),
	(53, 2, 'Пицца 4 вкуса', '', '', '', '', '', '', ''),
	(53, 1, 'Пицца 4 вкуса', '', 'Пицца соус, сыр &quot;моцарелла&quot;, колбаса &quot;пепперони&quot;, бекон, перец &quot;халапеньо&quot;, грудка куриная, помидоры, шампиньоны, ветчина.', '', 'Пицца 4 вкуса - купить в интернет-магазине.', 'Пицца 4 вкуса', 'Купить Пицца 4 вкуса в интернет-магазине. Описание, характеристики, отзывы и цена Пицца 4 вкуса.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Пиццерия, Пицца 4 вкуса, Пицца 4 вкуса.'),
	(51, 1, 'Пицца Мясное Ассорти', '', 'Пицца соус, сыр &quot;моцарелла&quot;, помидоры, говядина, свинина, грудка куриная, бекон, зелень.', '', 'Пицца Мясное Ассорти - купить в интернет-магазине.', 'Пицца Мясное Ассорти', 'Купить Пицца Мясное Ассорти в интернет-магазине. Описание, характеристики, отзывы и цена Пицца Мясное Ассорти.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Пиццерия, Пицца Мясное Ассорти, Пицца Мясное Ассорти.'),
	(51, 2, 'Пицца Мясное Ассорти', '', '', '', '', '', '', ''),
	(54, 1, 'Пицца Пепперони', '', 'Пицца соус, сыр &quot;моцарелла&quot;, колбаса &quot;пепперони&quot;.', '', 'Пицца Пепперони - купить в интернет-магазине.', 'Пицца Пепперони', 'Купить Пицца Пепперони в интернет-магазине. Описание, характеристики, отзывы и цена Пицца Пепперони.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Пиццерия, Пицца Пепперони, Пицца Пепперони.'),
	(54, 2, 'Пицца Пепперони', '', '', '', '', '', '', ''),
	(55, 1, 'Пицца Чизбургер', '', 'Соус &quot;гриль&quot;, сыр &quot;моцарелла&quot;, огурцы маринованные, свинина, грудка куриная, бекон.', '', 'Пицца Чизбургер - купить в интернет-магазине.', 'Пицца Чизбургер', 'Купить Пицца Чизбургер в интернет-магазине. Описание, характеристики, отзывы и цена Пицца Чизбургер.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Пиццерия, Пицца Чизбургер, Пицца Чизбургер.'),
	(55, 2, 'Пицца Чизбургер', '', '', '', '', '', '', ''),
	(56, 2, 'Пицца Маргарита', '', '', '', '', '', '', ''),
	(56, 1, 'Пицца Маргарита', '', 'Пицца соус, сыр &quot;моцарелла&quot;.', '', 'Пицца Маргарита - купить в интернет-магазине.', 'Пицца Маргарита', 'Купить Пицца Маргарита в интернет-магазине. Описание, характеристики, отзывы и цена Пицца Маргарита.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Пиццерия, Пицца Маргарита, Пицца Маргарита.'),
	(57, 1, 'Пицца Жульетта', '', 'Грибы шампиньоны в сливочном соусе, сыр &quot;моцарелла&quot;, зелень.', '', 'Пицца Жульетта - купить в интернет-магазине.', 'Пицца Жульетта', 'Купить Пицца Жульетта в интернет-магазине. Описание, характеристики, отзывы и цена Пицца Жульетта.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Пиццерия, Пицца Жульетта, Пицца Жульетта.'),
	(57, 2, 'Пицца Жульетта', '', '', '', '', '', '', ''),
	(58, 2, 'Пицца Белорусская', '', '', '', '', '', '', ''),
	(58, 1, 'Пицца Белорусская', '', 'Соус &quot;горчичный&quot;, сыр &quot;моцарелла&quot;, лук красный, колбаса &quot;салями&quot;, бекон, огурцы маринованные, дольки картофеля, соус &quot;техасский барбекю&quot;.', '', 'Пицца Белорусская - купить в интернет-магазине.', 'Пицца Белорусская', 'Купить Пицца Белорусская в интернет-магазине. Описание, характеристики, отзывы и цена Пицца Белорусская.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Пиццерия, Пицца Белорусская, Пицца Белорусская.'),
	(59, 1, 'Пицца Вкусная', '', 'Соус &quot;горчичный&quot;, колбаса &quot;пепперони&quot;, ветчина, бекон, помидоры, сыр &quot;моцарелла&quot;.', '', 'Пицца Вкусная - купить в интернет-магазине.', 'Пицца Вкусная', 'Купить Пицца Вкусная в интернет-магазине. Описание, характеристики, отзывы и цена Пицца Вкусная.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Пиццерия, Пицца Вкусная, Пицца Вкусная.'),
	(59, 2, 'Пицца Вкусная', '', '', '', '', '', '', ''),
	(60, 2, 'Пицца Дьябло', '', '', '', '', '', '', ''),
	(60, 1, 'Пицца Дьябло', '', 'Соус &quot;техасский барбекю&quot;, сыр &quot;моцарелла&quot;, лук красный, колбаса &quot;салями&quot;, ветчина, перец &quot;халапеньо&quot;, помидоры, огурцы маринованные.', '', 'Пицца Дьябло - купить в интернет-магазине.', 'Пицца Дьябло', 'Купить Пицца Дьябло в интернет-магазине. Описание, характеристики, отзывы и цена Пицца Дьябло.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Пиццерия, Пицца Дьябло, Пицца Дьябло.'),
	(61, 2, 'Coca-Cola', '', '', '', '', '', '', ''),
	(61, 1, 'Coca-Cola', '', 'Безалкогольный напиток Coca-cola', '', 'Coca-Cola - купить в интернет-магазине.', 'Coca-Cola', 'Купить Coca-Cola в интернет-магазине. Описание, характеристики, отзывы и цена Coca-Cola.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Магазин, Coca-Cola, Coca-Cola.'),
	(62, 2, 'Морс клюквенный', '', '', '', '', '', '', ''),
	(62, 1, 'Морс клюквенный', '', 'Натуральный, фирменный клюквенный морс 0.5 л.', '', 'Морс клюквенный - купить в интернет-магазине.', 'Морс клюквенный', 'Купить Морс клюквенный в интернет-магазине. Описание, характеристики, отзывы и цена Морс клюквенный.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Магазин, Морс клюквенный, Морс клюквенный.'),
	(63, 1, 'Тархун', '', 'Напитки из Черноголовки.', '', 'Тархун - купить в интернет-магазине.', 'Тархун', 'Купить Тархун в интернет-магазине. Описание, характеристики, отзывы и цена Тархун.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Магазин, Тархун, Тархун.'),
	(63, 2, 'Тархун', '', '', '', '', '', '', ''),
	(64, 1, 'Байкал Аква', '', 'Негазированная вода 0.5 л.', '', 'Байкал Аква - купить в интернет-магазине.', 'Байкал Аква', 'Купить Байкал Аква в интернет-магазине. Описание, характеристики, отзывы и цена Байкал Аква.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Магазин, Байкал Аква, Байкал Аква.'),
	(64, 2, 'Байкал Аква', '', '', '', '', '', '', ''),
	(65, 1, 'Сок «Rich» (апельсиновый)', '', 'Сок «Rich» апельсиновый 1л.', '', 'Сок «Rich» (апельсиновый) - купить в интернет-магазине.', 'Сок «Rich» (апельсиновый)', 'Купить Сок «Rich» (апельсиновый) в интернет-магазине. Описание, характеристики, отзывы и цена Сок «Rich» (апельсиновый).', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Магазин, Сок «Rich» (апельсиновый), Сок «Rich» (апельсиновый).'),
	(65, 2, 'Сок «Rich» (апельсиновый)', '', '', '', '', '', '', '');

DELETE FROM `oc_product_discount`;
DELETE FROM `oc_product_image`;

DELETE FROM `oc_product_option`;
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
	(238, 55, 13, '', 0),
	(235, 54, 14, '', 0),
	(236, 54, 13, '', 0),
	(233, 53, 13, '', 0),
	(228, 50, 14, '', 0),
	(227, 50, 13, '', 0),
	(234, 53, 14, '', 0),
	(230, 51, 14, '', 0),
	(229, 51, 13, '', 0),
	(237, 55, 14, '', 0),
	(239, 56, 13, '', 0),
	(240, 56, 14, '', 0),
	(242, 57, 13, '', 0),
	(241, 57, 14, '', 0),
	(243, 58, 13, '', 0),
	(244, 58, 14, '', 0),
	(247, 60, 13, '', 0),
	(245, 59, 13, '', 0),
	(248, 60, 14, '', 0),
	(249, 61, 15, '', 0);

DELETE FROM `oc_product_option_value`;
INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`, `opt_image`, `model`) VALUES
	(33, 233, 53, 13, 50, 1, 0, 450.0000, '=', 0, '+', 600.00, '=', '', ''),
	(26, 230, 51, 14, 53, 1, 0, 70.0000, '-', 0, '+', 100.00, '-', 'catalog/revolution/demo_tovars/pizza/p2_2.jpg', ''),
	(23, 229, 51, 13, 50, 1, 0, 610.0000, '=', 0, '+', 780.00, '=', '', ''),
	(24, 229, 51, 13, 51, 1, 0, 820.0000, '=', 0, '+', 1170.00, '=', '', ''),
	(25, 230, 51, 14, 52, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(22, 229, 51, 13, 49, 1, 0, 470.0000, '=', 0, '+', 560.00, '=', '', ''),
	(34, 233, 53, 13, 51, 1, 0, 620.0000, '=', 0, '+', 830.00, '=', '', ''),
	(32, 233, 53, 13, 49, 1, 0, 360.0000, '=', 0, '+', 420.00, '=', '', ''),
	(17, 227, 50, 13, 49, 1, 0, 420.0000, '=', 0, '+', 530.00, '=', '', ''),
	(18, 227, 50, 13, 50, 1, 0, 520.0000, '=', 0, '+', 690.00, '=', '', ''),
	(19, 227, 50, 13, 51, 1, 0, 700.0000, '=', 0, '+', 1010.00, '=', '', ''),
	(20, 228, 50, 14, 52, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(21, 228, 50, 14, 53, 1, 0, 0.0000, '+', 0, '+', 130.00, '-', 'catalog/revolution/demo_tovars/pizza/p1_2.jpg', ''),
	(36, 234, 53, 14, 53, 1, 0, 50.0000, '-', 0, '+', 120.00, '-', 'catalog/revolution/demo_tovars/pizza/p3_2.jpg', ''),
	(35, 234, 53, 14, 52, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(37, 235, 54, 14, 52, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(38, 235, 54, 14, 53, 1, 0, 0.0000, '+', 0, '+', 100.00, '-', 'catalog/revolution/demo_tovars/pizza/p4_2.jpg', ''),
	(41, 236, 54, 13, 51, 1, 0, 600.0000, '=', 0, '+', 880.00, '=', '', ''),
	(40, 236, 54, 13, 50, 1, 0, 440.0000, '=', 0, '+', 575.00, '=', '', ''),
	(39, 236, 54, 13, 49, 1, 0, 350.0000, '=', 0, '+', 430.00, '=', '', ''),
	(45, 238, 55, 13, 50, 1, 0, 550.0000, '=', 0, '+', 755.00, '=', '', ''),
	(44, 238, 55, 13, 49, 1, 0, 400.0000, '=', 0, '+', 540.00, '=', '', ''),
	(43, 237, 55, 14, 53, 1, 0, 0.0000, '+', 0, '+', 100.00, '-', 'catalog/revolution/demo_tovars/pizza/p5_2.jpg', ''),
	(42, 237, 55, 14, 52, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(46, 238, 55, 13, 51, 1, 0, 750.0000, '=', 0, '+', 1115.00, '=', '', ''),
	(49, 239, 56, 13, 51, 1, 0, 470.0000, '=', 0, '+', 880.00, '=', '', ''),
	(48, 239, 56, 13, 50, 1, 0, 360.0000, '=', 0, '+', 590.00, '=', '', ''),
	(50, 240, 56, 14, 52, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(51, 240, 56, 14, 53, 1, 0, 0.0000, '+', 0, '+', 110.00, '-', 'catalog/revolution/demo_tovars/pizza/p6_2.jpg', ''),
	(47, 239, 56, 13, 49, 1, 0, 280.0000, '=', 0, '+', 450.00, '=', '', ''),
	(55, 242, 57, 13, 50, 1, 0, 650.0000, '=', 0, '+', 700.00, '=', '', ''),
	(54, 242, 57, 13, 49, 1, 0, 450.0000, '=', 0, '+', 500.00, '=', '', ''),
	(53, 241, 57, 14, 53, 1, 0, 0.0000, '+', 0, '+', 120.00, '-', 'catalog/revolution/demo_tovars/pizza/p7_2.jpg', ''),
	(52, 241, 57, 14, 52, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(56, 242, 57, 13, 51, 1, 0, 900.0000, '=', 0, '+', 1100.00, '=', '', ''),
	(59, 243, 58, 13, 51, 1, 0, 690.0000, '=', 0, '+', 1160.00, '=', '', ''),
	(60, 244, 58, 14, 52, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(61, 244, 58, 14, 53, 1, 0, 0.0000, '+', 0, '+', 100.00, '-', 'catalog/revolution/demo_tovars/pizza/p8_2.jpg', ''),
	(57, 243, 58, 13, 49, 1, 0, 390.0000, '=', 0, '+', 570.00, '=', '', ''),
	(58, 243, 58, 13, 50, 1, 0, 500.0000, '=', 0, '+', 770.00, '=', '', ''),
	(64, 245, 59, 13, 51, 1, 0, 710.0000, '=', 0, '+', 1320.00, '=', '', ''),
	(62, 245, 59, 13, 49, 1, 0, 440.0000, '=', 0, '+', 670.00, '=', '', ''),
	(63, 245, 59, 13, 50, 1, 0, 550.0000, '=', 0, '+', 900.00, '=', '', ''),
	(70, 248, 60, 14, 52, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(71, 248, 60, 14, 53, 1, 0, 0.0000, '+', 0, '+', 110.00, '-', 'catalog/revolution/demo_tovars/pizza/p10_2.jpg', ''),
	(67, 247, 60, 13, 49, 1, 0, 350.0000, '=', 0, '+', 540.00, '=', '', ''),
	(68, 247, 60, 13, 50, 1, 0, 450.0000, '=', 0, '+', 760.00, '=', '', ''),
	(69, 247, 60, 13, 51, 1, 0, 650.0000, '=', 0, '+', 1180.00, '=', '', ''),
	(72, 249, 61, 15, 54, 1, 0, 70.0000, '=', 0, '+', 0.00, '+', '', ''),
	(73, 249, 61, 15, 55, 1, 0, 100.0000, '=', 0, '+', 0.00, '+', 'catalog/revolution/demo_tovars/pizza/n1_2.jpg', '');

DELETE FROM `oc_product_related`;
INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
	(50, 61),
	(50, 62),
	(50, 63),
	(50, 64),
	(50, 65),
	(51, 61),
	(51, 62),
	(51, 63),
	(51, 64),
	(51, 65),
	(52, 61),
	(52, 62),
	(52, 63),
	(52, 64),
	(52, 65),
	(53, 61),
	(53, 62),
	(53, 63),
	(53, 64),
	(53, 65),
	(54, 61),
	(54, 62),
	(54, 63),
	(54, 64),
	(54, 65),
	(55, 61),
	(55, 62),
	(55, 63),
	(55, 64),
	(55, 65),
	(56, 61),
	(56, 62),
	(56, 63),
	(56, 64),
	(56, 65),
	(57, 61),
	(57, 62),
	(57, 63),
	(57, 64),
	(57, 65),
	(58, 61),
	(58, 62),
	(58, 63),
	(58, 64),
	(58, 65),
	(59, 61),
	(59, 62),
	(59, 63),
	(59, 64),
	(59, 65),
	(60, 61),
	(60, 62),
	(60, 63),
	(60, 64),
	(60, 65);

DELETE FROM `oc_product_to_category`;
DELETE FROM `oc_product_to_download`;

DELETE FROM `oc_product_to_layout`;
INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
	(50, 0, 0),
	(51, 0, 0),
	(53, 0, 0),
	(54, 0, 0),
	(55, 0, 0),
	(56, 0, 0),
	(57, 0, 0),
	(58, 0, 0),
	(59, 0, 0),
	(60, 0, 0),
	(61, 0, 0),
	(62, 0, 0),
	(63, 0, 0),
	(64, 0, 0),
	(65, 0, 0);

DELETE FROM `oc_product_to_store`;
INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
	(50, 0),
	(51, 0),
	(53, 0),
	(54, 0),
	(55, 0),
	(56, 0),
	(57, 0),
	(58, 0),
	(59, 0),
	(60, 0),
	(61, 0),
	(62, 0),
	(63, 0),
	(64, 0),
	(65, 0);

DELETE FROM `oc_review`;

UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'tax_status';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_product_count';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/cart.png' WHERE `key` = 'config_icon';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/logo.svg' WHERE `key` = 'config_logo';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_stock_display';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_tax';
UPDATE `oc_setting` SET `value` = '7-990-558-88-00' WHERE `key` = 'config_telephone';
UPDATE `oc_setting` SET `value` = 'mail@pizza.oc-mod.ru' WHERE `key` = 'config_email';
UPDATE `oc_setting` SET `value` = 'Казань, улица Набережная Казанки, 17' WHERE `key` = 'config_address';
UPDATE `oc_setting` SET `value` = 'Доставка пиццы' WHERE `key` = 'config_name';
UPDATE `oc_setting` SET `value` = 'Доставка пиццы' WHERE `key` = 'config_meta_title';
UPDATE `oc_setting` SET `value` = 'revolution' WHERE `key` = 'config_theme';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_stock_warning';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_cart_weight';
UPDATE `oc_setting` SET `value` = 'ru-ru' WHERE `key` = 'config_language';
UPDATE `oc_setting` SET `value` = 'ru-ru' WHERE `key` = 'config_admin_language';
UPDATE `oc_setting` SET `value` = 'RUB' WHERE `key` = 'config_currency';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_review_status';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_seo_url';
UPDATE `oc_setting` SET `value` = 'seo_pro' WHERE `key` = 'config_seo_url_type';

DELETE FROM `oc_url_alias`;
INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
	('', 'account/voucher', 'vouchers'),
	('', 'account/wishlist', 'wishlist'),
	('', 'account/account', 'my-account'),
	('', 'checkout/cart', 'cart'),
	('', 'checkout/checkout', 'checkout'),
	('', 'account/login', 'login'),
	('', 'account/logout', 'logout'),
	('', 'account/order', 'order-history'),
	('', 'account/newsletter', 'newsletter'),
	('', 'product/special', 'specials'),
	('', 'affiliate/account', 'affiliates'),
	('', 'checkout/voucher', 'gift-vouchers'),
	('', 'product/manufacturer', 'brands'),
	('', 'information/contact', 'contact-us'),
	('', 'account/return/insert', 'request-return'),
	('', 'information/sitemap', 'sitemap'),
	('', 'account/forgotten', 'forgot-password'),
	('', 'account/download', 'downloads'),
	('', 'account/return', 'returns'),
	('', 'account/transaction', 'transactions'),
	('', 'account/register', 'create-account'),
	('', 'product/compare', 'compare-products'),
	('', 'product/search', 'search'),
	('', 'account/edit', 'edit-account'),
	('', 'account/password', 'change-password'),
	('', 'account/address', 'address-book'),
	('', 'account/reward', 'reward-points'),
	('', 'affiliate/edit', 'edit-affiliate-account'),
	('', 'affiliate/password', 'change-affiliate-password'),
	('', 'affiliate/payment', 'affiliate-payment-options'),
	('', 'affiliate/tracking', 'affiliate-tracking-code'),
	('', 'affiliate/transaction', 'affiliate-transactions'),
	('', 'affiliate/logout', 'affiliate-logout'),
	('', 'affiliate/forgotten', 'affiliate-forgot-password'),
	('', 'affiliate/register', 'create-affiliate-account'),
	('', 'affiliate/login', 'affiliate-login'),
	('', 'account/return/add', 'add-return'),
	('', 'common/home', ''),
	('', 'product_id=51', 'picca_myasnoe_assorti'),
	('', 'revblog_id=3', 'prigotovlenie_piccy_doma'),
	('', 'information_id=5', 'oplata'),
	('', 'information_id=6', 'bonusnaya_programma'),
	('', 'information_id=7', ''),
	('', 'product_id=65', 'sok_rich_apelsinovyy'),
	('', 'product_id=64', 'baykal_akva'),
	('', 'product_id=63', 'tarhun'),
	('', 'product_id=62', 'mors_klyukvennyy'),
	('', 'product_id=61', 'coca_cola'),
	('', 'product_id=59', 'picca_vkusnaya'),
	('', 'product_id=60', 'picca_dyablo'),
	('', 'revblog_id=4', ''),
	('', 'information_id=3', 'dostavka'),
	('', 'information_id=4', 'picceriya_1'),
	('', 'manufacturer_id=11', 'picceriya'),
	('', 'product_id=58', 'picca_belorusskaya'),
	('', 'product_id=53', 'picca_4_vkusa'),
	('', 'product_id=54', 'picca_pepperoni'),
	('', 'product_id=55', 'picca_chizburger'),
	('', 'product_id=56', 'picca_margarita'),
	('', 'product_id=57', 'picca_zhuletta'),
	('', 'product_id=50', 'picca_barbekyu'),
	('', 'manufacturer_id=12', 'magazin'),
	('', 'revblog_category_id=2', 'informaciya'),
	('', 'revolution/account/revregister', 'register_account'),
	('', 'revolution/account/revedit', 'edit_account'),
	('', 'revolution/account/revaccount', 'my_account'),
	('', 'revolution/revcheckout', 'make_order'),
	('', 'revolution/revstorereview', 'otzivy'),
	('', 'revolution/revplast', 'latest'),
	('', 'revolution/revpbest', 'best');

DELETE FROM `oc_setting` WHERE `code` LIKE "rev%" AND `key` LIKE "rev%" AND `key` NOT LIKE "revtheme_license%" AND `key` NOT LIKE "revthemel_license";

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_2', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_3', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_4', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_5', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_subscribe', '{"status":"0","1":{"title":"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0430 \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","text":"\\u041f\\u043e\\u043b\\u0443\\u0447\\u0430\\u0439\\u0442\\u0435 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u043e\\u044c\\u043d\\u044b\\u0435 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438","text_uspeh":"\\u041f\\u043e\\u0437\\u0434\\u0440\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c! \\u0412\\u044b \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043b\\u0438\\u0441\\u044c \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443."},"2":{"title":"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0430 \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","text":"\\u041f\\u043e\\u043b\\u0443\\u0447\\u0430\\u0439\\u0442\\u0435 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u043e\\u044c\\u043d\\u044b\\u0435 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438","text_uspeh":"\\u041f\\u043e\\u0437\\u0434\\u0440\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c! \\u0412\\u044b \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043b\\u0438\\u0441\\u044c \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443."}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_directory', 'revolution', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_status', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_product_limit', '8', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_product_description_length', '100', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_category_width', '143', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_category_height', '143', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_thumb_width', '450', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_thumb_height', '450', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_popup_width', '800', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_popup_height', '800', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_product_width', '350', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_product_height', '350', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_additional_width', '74', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_additional_height', '74', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_related_width', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_related_height', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_compare_width', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_compare_height', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_cart_width', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_filter', 'revtheme_filter', '{"status":"1","1":{"title":""},"2":{"title":""},"razdelitel":";","filter_price":"1","filter_price_setka":"1","filter_instock":"0","filter_instock_vid":"1","filter_gr":"false","filter_gr_vid":"0","filter_subcategories":"false","filter_subcategories_vid":"1","filter_manufacturer":"false","filter_manufacturer_vid":"1","filter_sposob":"1","filter_count_products":"0","filter_setka":"0","filter_categories":["77"],"filter_option":{"13":{"option_type":"false","option_sort":"0","option_vid":"0"},"14":{"option_type":"false","option_sort":"0","option_vid":"0"}},"filter_attribute":{"15":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"19":{"attribute_type":"checkbox","attribute_sort":"0","attribute_vid":"1"},"13":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"18":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"14":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"17":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"16":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"12":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"}}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_mods', '{"viewed_products":"0","1":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"2":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"viewed_products_limit":"8"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_attributes', '{"description_on":"1","description_in_grid":"1","options_in_cat":"1","options_in_grid":"1","short_desc":"1","zamena_description":"1","manufacturer":"0","model":"0","sku":"0","stock":"0","length":"0","weight":"1","attributes_status":"0","show_name":"0","show_tags":"0","count":"5","separator":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_geo_set', '{"status":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_seo', '{"seogen_rewrite":"1","product_url":"{product_name}","product_meta_title":{"1":"{product_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":""},"product_meta_h1":{"1":"{product_name}","2":""},"product_meta_description":{"1":"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c {product_name} \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435. \\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b \\u0438 \\u0446\\u0435\\u043d\\u0430 {product_name}.","2":""},"product_meta_keyword":{"1":"\\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d, {product_manufacturer}, {product_name}, {product_model}.","2":""},"category_url":"{category_name}","category_meta_title":{"1":"{category_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":""},"category_meta_h1":{"1":"{category_name}","2":""},"category_meta_description":{"1":"{category_name} - \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0446\\u0435\\u043d\\u044b.","2":""},"category_meta_keyword":{"1":"{category_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":""},"manufacturer_url":"{manufacturer_name}","manufacturer_meta_title":{"1":"{manufacturer_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":""},"manufacturer_meta_h1":{"1":"{manufacturer_name}","2":""},"manufacturer_meta_description":{"1":"\\u0412\\u044b\\u0431\\u043e\\u0440 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438\\u0437 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430 {manufacturer_name}.","2":""},"manufacturer_meta_keyword":{"1":"{manufacturer_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":""},"information_url":"{information_name}","information_meta_title":{"1":"{information_name}","2":""},"information_meta_h1":{"1":"{information_name}","2":""},"information_meta_description":{"1":"{information_name}","2":""},"information_meta_keyword":{"1":"{information_name}","2":""},"revblog_category_url":"{revblog_category_name}","revblog_category_meta_title":{"1":"{revblog_category_name}","2":""},"revblog_category_meta_description":{"1":"{revblog_category_name}","2":""},"revblog_category_meta_keyword":{"1":"{revblog_category_name}","2":""},"revblog_url":"{revblog_name}","revblog_meta_title":{"1":"{revblog_name}","2":""},"revblog_meta_description":{"1":"{revblog_category_name} - {revblog_name}.","2":""},"revblog_meta_keyword":{"1":"{revblog_category_name}, {revblog_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_user_set', '{"styles":".refine_categories a {margin-bottom: 25px; font-size: 16px;}\r\n#menu a span img {opacity: 0.7;}\r\n#menu .nav &gt; li &gt; a {font-size: 17px;}\r\n#fb_groups {margin: 10px 0;}\r\n.mmmenu .img_sub {bottom: 4px; right: 0px; opacity: 0.1; width: 10%;}\r\n.product-info input[type=\'radio\'] + label, .product-info input[type=\'checkbox\'] + label {padding: 4px 10px 2px;}\r\n.product-thumb .fa-border.fa-shopping-basket:before {content: none;}.prlistb {padding-left: 0;}\r\n#top2 .header_conts {padding-right: 5px; margin-top: 0;}.search {margin-top: 20px;}\r\n.product-layout.new_line .product-thumb .product_buttons .clearfix {display: none;}\r\n.home_catwalls {margin-bottom: 35px;}\r\n.home_catwalls a {font-weight: bold; font-size: 14px;}\r\n.rev_slider .product-layout.col-xs-12 .product-thumb {margin-bottom: 25px;}\r\n.common-home .rev_slider {padding-top: 30px;}\r\nh3 {font-size: 21px;}\r\n#revcheckout .ship_metod .panel-default&gt;.panel-heading {display: none;}\r\n#revcheckout .ship_metod .panel {margin-top: -22px; margin-bottom: 0;}\r\n.header_search_doptext {text-align: center;}\r\n.header_search_doptext a {border-bottom: 1px solid #aaa; font-size: 15px;}\r\n.header_search_doptext a:hover {border-bottom: 0;}\r\n.header_search_doptext {display: none;}\r\n@media (min-width: 768px) {.header_search_doptext {display: block;}}\r\n@media (min-width: 1200px) {.header_search_doptext {padding-left: 40px;}}\r\n#menu .nav &gt; li:last-child i {font-size: 14px;}\r\n#menu .nav &gt; li a {color: #333;}\r\n#menu .nav &gt; li a:hover {color: #E3632D;}\r\n.image .stiker {box-shadow: none;}\r\n.price-new, .update_special {background: #FDE3A7; padding: 1px 5px; border-radius: 2px;}\r\n.product-info .form-group .list-unstyled .update_price.oldprice {padding-right: 5px;}\r\n.top-links.verh &gt; ul &gt; li&gt; a {padding: 0 8px;}\r\n.information-contact h3 {margin-top: 0;}\r\n.footer .zag_dm_cf {color: #ccc; border-bottom: 1px solid #888;}\r\n.cf_3_width {width: 55% !important; color: #ccc;}\r\nfooter .footer .footer_cfs {padding-bottom: 10px;}\r\nfooter .powered {color: #333; text-align: center !important;}\r\n.fa-heart:before {content: &quot;\\\\f08a&quot;;}\r\n.fa-user:before {content: &quot;\\\\f2c0&quot;;}\r\n.fa-legal:before, .fa-gavel:before {content: &quot;\\\\f1d9&quot;;}\r\n.header_search_doptext .hszag {font-size: 19px; margin-top: 20px; margin-bottom: 10px;}\r\nfooter .container .footer_cfs a:hover {color: #bbb; padding-left: 2px; transition: padding 80ms linear;}\r\n.product-layout.new_line .product_buttons .price {margin-bottom: 10px; text-align: center;}\r\n.product-thumb .price-new {font-size: 19px;}\r\n.product-grid .description_options, .rev_slider .col-xs-12 .description_options {margin: 0;}\r\n.product-grid .product-thumb .attr_i_8, .rev_slider .product-thumb .attr_i_8 {padding-top: 7px; padding-bottom: 5px; display: inline-block;}\r\n.common-home .rev_slider .owl-carousel {position: initial;}\r\n.product-thumb {border: none;}\r\n.rev_slider {border-top: 3px solid #dcdcdc;}\r\n.product-thumb h4 {font-size: 17px; text-align: center; padding-bottom: 0; font-weight: bold; margin-bottom: 15px;}\r\n#column-right #product_products h3 {display: none;}\r\n#column-right #product_products {padding: 0; margin: 0; border: none;}\r\n#column-right.columns_dd #product_products .product-thumb h4 {text-align: left; font-weight: normal;}\r\n#column-right.columns_dd #product_products .product-thumb {border-radius: 0; padding-top: 10px; padding-bottom: 10px; border-radius: 20px; box-shadow: 1px 1px 1px #eee;}\r\n#column-right.columns_dd #product_products .item:last-child .product-thumb {border-bottom: none;}\r\n#column-right.columns_dd #product_products .product-thumb:hover {box-shadow: none;}\r\n#column-right.columns_dd #product_products .product-thumb .price {float: left; margin-top: 3px; width: 65px; text-align: center; margin-right: 10px;}\r\n#column-right.columns_dd #product_products .product-thumb h4 {margin-bottom: 15px; padding: 0;}\r\n#column-right.columns_dd #product_products .product-thumb .fa-border {padding: 3px 5px; font-size: 15px; margin-top: 2px; border: 1px solid;}\r\n@media (min-width: 992px) and (max-width: 1200px) {\r\n#content.col-sm-9 .product-info #button-cart {margin-top: 0; margin-left: 10px; margin-right: 0; padding: 0px 8px;}\r\n}\r\n.product-thumb .price {color: #E3632D; font-size: 19px; background: #fafafa; padding: 2px 10px; border-radius: 6px; margin: 0; font-weight: bold;}\r\n.product-thumb .fa-border {border-radius: 6px; padding: 3px 10px; font-size: 17px;}\r\n.product-layout.new_line .product_buttons .cart {float: none; display: block;}\r\n.product-layout.new_line .product_buttons .cart a {width: 100%; text-align: center;}\r\n.product-layout.new_line .product_buttons .cart a i {width: 100%;}\r\n.product-layout.new_line .product-thumb h4 {margin-bottom: 10px;}\r\n.product-thumb .caption {padding-top: 0; border-top: none;}\r\n.product-thumb .fa-border.fa-shopping-basket, .options_buy .fa-border, .cd-products-comparison-table .fa-border.fa-shopping-basket, .wwicons .fa-border.fa-shopping-basket {background-color: #fff; color: #E3632D !important}\r\n.product-thumb .fa-border.fa-shopping-basket:hover, .options_buy .fa-border:hover, .cd-products-comparison-table .fa-border.fa-shopping-basket:hover, .wwicons .fa-border.fa-shopping-basket:hover {color: #fff !important;}\r\n.product-info #button-cart {border-radius: 6px;}\r\n.product-info .btn-minus, .product-info .btn-plus {font-weight: bold;}\r\n#top3 {box-shadow: none;}\r\n.common-home .rev_slider .heading_h h3 {font-size: 29px; display: inline-flex;}\r\n.common-home .rev_slider .heading_h {margin-top: -8px; padding-right: 20px;}\r\n.common-home .rev_slider + .rev_slider {margin-top: 50px;}\r\n.container {max-width: 1600px;}\r\n.description_options .short_description {padding-top: 12px;}\r\n#cart button.cart {border-radius: 6px;}\r\n#top2 .tel .s22 a {float: right; margin-top: 7px; text-shadow: 1px 1px 1px #fff;}\r\n#cart #cart-total-popup &gt; .fa, #cart #cart-total &gt; .fa {padding-right: 7px;}\r\n.image_in_ico_row {position: initial;}\r\n.header_search_doptext {display: none;}\r\n@media (min-width: 992px) {\r\n#cart {margin-top: -60px; z-index: 10;}\r\n.header_search_doptext {display: block;}\r\n}\r\n@media (min-width: 1600px) {\r\n#cart {margin-top: -95px; z-index: 10;}\r\n}\r\n#menu {display: none;}\r\n#menu2_button .box-heading {border-radius: 6px;}\r\n.header_search_doptext a {display: inline-block; padding-top: 5px;}\r\n#top4 {margin-top: 15px; margin-bottom: 15px;}\r\n.rev_slider .row.product-layout .product-layout.col-xs-12 {padding: 0 15px; margin: 0;}\r\n.mb20 {display: none;}\r\n.well-sm.product-info {border: none; background: transparent; padding: 0;}\r\n.product-info .pokupka {padding: 0; margin: 17px 0 0 0; background-color: transparent; border: none;}\r\n.product-info hr {display: none;}\r\n.options_no_buy {margin-bottom: 5px; margin-top: 10px;}\r\n.options_no_buy .form-group + .form-group {border-left: none; padding-left: 3px;}\r\n#top3, #top3 .container {background-color: transparent;}\r\n.rev_slider .product-layout.col-xs-12 .product-thumb, .product-layout.product-grid .product-thumb {box-shadow: 1px 1px 1px #eee; border-radius: 20px;}\r\n.rev_slider .product-layout .product-thumb:hover::before, .product-layout.product-grid .product-thumb:hover::before {border-radius: 20px;}\r\n.image .stiker {border-radius: 10px; padding: 1px 15px;}\r\n.btn-plus button, .btn-minus button {background: #fff !important;}\r\n.btn-minus button {border-radius: 10px 0 0 10px !important;}\r\n.btn-plus button {border-radius: 0 10px 10px 0 !important;}\r\ninput.plus-minus, .product-info .number {border: 0 !important;}\r\n.number {box-shadow: 1px 1px 1px #eee; border-radius: 10px !important; border: none !important;}\r\nlabel {font-size: 15px;}\r\n.options_no_buy label {margin-bottom: 12px;}\r\n.product-info input[type=\'radio\'] + label, .product-info input[type=\'checkbox\'] + label {font-size: 15px; box-shadow: 1px 1px 1px #eee; border-color: #fff; padding: 5px 15px;}\r\n.product-info input[type=&quot;radio&quot;]:checked + label, .product-info input[type=&quot;checkbox&quot;]:checked + label, .product-info input[type=&quot;radio&quot;]:hover + label, .product-info input[type=&quot;checkbox&quot;]:hover + label, #revfilter_box .image-filter input:checked + img {box-shadow: 0px 0px 0px 1px #F4894D; font-size: 15px;}\r\n.product-info .radio .btn-default:active {border-color: transparent;}\r\n.product_informationss &gt; .short_description {font-size: 15px;}\r\n.product-price .product-info input[type=\'radio\'] + label, .product-price .product-info input[type=\'checkbox\'] + label, .product-price .product-info select.form-control, .product-list .product-info input[type=\'radio\'] + label, .product-list .product-info input[type=\'checkbox\'] + label, .product-list .product-info select.form-control, .rev_slider .product-info input[type=\'radio\'] + label, .rev_slider .product-info input[type=\'checkbox\'] + label, .rev_slider .product-info select.form-control, .product-grid .product-info input[type=\'radio\'] + label, .product-grid .product-info input[type=\'checkbox\'] + label, .product-grid .product-info select.form-control {font-size: 15px; padding: 3px 10px;}\r\n.product-list .product-info .radio, .rev_slider .product-info .radio, .product-grid .product-info .radio {margin: 2px 5px 0 0;}\r\nspan.option_price {font-size: 14px;}\r\n#top2 {background: transparent;}\r\n.main_img_box img {box-shadow: 1px 1px 1px #eee;}\r\nheader {background: linear-gradient(to bottom,#FBE9E1 0%,#fcfcfc 100%);}\r\n.rev_slider .product-layout .product-thumb:hover::before, .product-layout.product-grid .product-thumb:hover::before {background: linear-gradient(to bottom,#fff 50%,#fcfcfc 100%);}\r\nfooter .container a, footer .container a:active, footer .container a:visited {color: #333; margin-right: 20px;}\r\nfooter .container a:hover {color: #E3632D;}\r\nfooter .container a i {color: #555;}\r\n.well {background-color: transparent;}\r\n.revblog-list .product-thumb h4 {text-align: left; font-weight: normal;}\r\n#blog_mod .blog-list .opisb p, .blog_time_bl, .product-thumb .caption .bl_time {display: none;}\r\n.rev_slider.rev_blog_mod {margin-bottom: 0; margin-top: 0;}\r\n.product-price .product-thumb {margin: 0 0 10px 0;; box-shadow: 1px 1px 1px #eee;}\r\n.btn-primary, .pagination&gt;.active&gt;a, .pagination&gt;.active&gt;a:focus, .pagination&gt;.active&gt;a:hover, .pagination&gt;.active&gt;span, .pagination&gt;.active&gt;span:focus, .pagination&gt;.active&gt;span:hover, #popup-view-wrapper .popup-footer a {background-color: #666; border-color: #666;}\r\n.shipping-method .panel-body, .shipping-method .panel.panel-default {display: none;}\r\n#revcheckout .ship_metod .panel {margin-bottom: 0;}\r\n#revcheckout .panel-default&gt;.panel-heading, #revcheckout .table&gt;thead {background: #FBE9E1;}\r\n#revcheckout .panel {box-shadow: 1px 1px 1px #eee;}\r\n#revcheckout .rev_cart {padding: 0;}","scripts":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_viewed_products', '{"status":"0","1":{"zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"2":{"zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"icontype":"1","icon":"fa none","image":"no_image.png","limit":"8"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_socv', '{"status_vk":"0","width_vk":"260","height_vk":"280","id_vk":"20003922","status_fb":"0","width_fb":"260","height_fb":"280","id_fb":"apple","status_ok":"0","width_ok":"260","height_ok":"280","id_ok":"50582132228315","status_insta":"1","right_insta":"0","width_insta":"260","id_insta":"pizza"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_storereview', '{"status":"0","1":{"title":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432","button_all_text":"\\u0427\\u0438\\u0442\\u0430\\u0442\\u044c \\u0432\\u0441\\u0435 \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b"},"2":{"title":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432","button_all_text":"\\u0427\\u0438\\u0442\\u0430\\u0442\\u044c \\u0432\\u0441\\u0435 \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b"},"icontype":"1","icon":"fa fa-comments-o","image":"no_image.png","button_all":"1","limit":"6","order":"0","limit_text":"200"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_sort_order', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_all_settings', '{"color_all_document":"FCFCFC","color_href":"333333","color_href_hover":"E3632D","color_cart":"E3632D","color_cart_hover":"F4894D","color_top3":"FFFFFF","color_footer":"FBE9E1","color_amazon":"494949","color_top3_cart":"F4894D","all_document_width":"1","all_document_h_f_width":"0","all_document_margin":"1","all_fon_image":"catalog\\/revolution\\/backgrounds\\/random_grey_variations.png","all_fon_image_css_1":"1","all_fon_image_css_2":"1","all_fon_image_css_3":"1","all_content_width":"1","color_selecta":"EAEAEA","preloader":"catalog\\/revolution\\/preloaders\\/revpreloader5.svg","cat_compact":"1","cat_opis_opt":"1","cache_on":"1","error404":"1","n_progres":"0","razmiv_cont":"0","zatemn_cont":"0","opacity_cont":"0","pol_konf":"7","pol_konf_tvivod":"0","revcheckout_status":"1","revcheckout_login":"1","revcheckout_register":"0","revcheckout_customer_group":"0","revcheckout_name":"1","revcheckout_family":"0","revcheckout_telephone":"2","revcheckout_telephone_mask":"+7 (999) 9999999","revcheckout_mail":"0","revcheckout_comment":"1","revcheckout_reg_adres":"0","revcheckout_country":"0","revcheckout_region":"0","revcheckout_index":"0","revcheckout_city":"0","revcheckout_adres":"0","revcheckout_foto":"1","revcheckout_model":"1","revcheckout_sku":"0","revcheckout_kolvo":"1","revcheckout_vsego":"1","1":{"revcheckout_description":"&lt;p style=&quot;text-align: right; &quot;&gt;&lt;font color=&quot;#424242&quot;&gt;\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0437\\u0430\\u043a\\u0430\\u0437\\u043e\\u0432 \\u0441 10:00 \\u0434\\u043e 19:00&lt;\\/font&gt;&lt;\\/p&gt;","revregister_description":"","revaccount_description":"","description":"&lt;p&gt;&lt;i style=&quot;font-size: 20px;&quot; class=&quot;fa fa-mobile&quot;&gt;&lt;\\/i&gt;+7 (495) 700-40-40&lt;\\/p&gt;&lt;p&gt;&lt;i style=&quot;font-size: 20px;&quot; class=&quot;fa fa-map-marker&quot;&gt;&lt;\\/i&gt;\\u041a\\u0430\\u0437\\u0430\\u043d\\u044c, \\u0443\\u043b\\u0438\\u0446\\u0430 \\u041d\\u0430\\u0431\\u0435\\u0440\\u0435\\u0436\\u043d\\u0430\\u044f \\u041a\\u0430\\u0437\\u0430\\u043d\\u043a\\u0438, 17&lt;\\/p&gt;&lt;p&gt;&lt;\\/p&gt;&lt;p&gt;&lt;i class=&quot;fa fa-vk&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;&lt;a href=&quot;https:\\/\\/vk.com&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;\\u041c\\u044b \\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435&lt;\\/a&gt;&lt;\\/p&gt;\r\n&lt;p&gt;&lt;i class=&quot;fa fa-odnoklassniki&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;&lt;a href=&quot;https:\\/\\/ok.ru&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;\\u041c\\u044b \\u043d\\u0430 \\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u043a\\u0430\\u0445&lt;\\/a&gt;&lt;\\/p&gt;\r\n&lt;p&gt;&lt;i class=&quot;fa fa-twitter&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;&lt;a href=&quot;https:\\/\\/twitter.com&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;\\u041c\\u044b \\u0432 \\u0442\\u0432\\u0438\\u0442\\u0442\\u0435\\u0440\\u0435&lt;\\/a&gt;&lt;\\/p&gt;\r\n&lt;p&gt;&lt;i class=&quot;fa fa-youtube-play&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;&lt;a href=&quot;https:\\/\\/www.youtube.com&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;\\u041d\\u0430\\u0448 \\u043a\\u0430\\u043d\\u0430\\u043b \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431\\u0435&lt;\\/a&gt;&lt;\\/p&gt;&lt;br&gt;&lt;p&gt;&lt;\\/p&gt;&lt;p&gt;\\u041f\\u0440\\u0438\\u0435\\u043c \\u0437\\u0430\\u044f\\u0432\\u043e\\u043a \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0435: \\u0441 8:00 \\u0434\\u043e 22:00&lt;\\/p&gt;&lt;p&gt;\\u0420\\u0435\\u0436\\u0438\\u043c \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438: \\u0441 10:00 \\u0434\\u043e 19:00&lt;\\/p&gt;","modal_header":"","text_no":"\\u041d\\u0435\\u0442","text_yes":"\\u0414\\u0430","modal_text":""},"2":{"revcheckout_description":"","revregister_description":"","revaccount_description":"","description":"","modal_header":"","text_no":"\\u041d\\u0435\\u0442","text_yes":"\\u0414\\u0430","modal_text":""},"revregister_status":"1","revregister_legends":"0","revregister_custom_fields":"0","revregister_customer_group":"0","revregister_name":"1","revregister_family":"0","revregister_telephone":"0","revregister_telephone_mask":"+7 (999) 9999999","revregister_mail":"1","revregister_newsletter":"0","revregister_country":"0","revregister_region":"0","revregister_index":"0","revregister_city":"0","revregister_adres":"0","revaccount_allurls":"1","revaccount_wishlist":"0","revaccount_orders":"1","revaccount_files":"0","revaccount_bonus":"0","revaccount_returns":"0","revaccount_pay_history":"0","revaccount_pay_regular":"0","m_conts":"0","dop_conts":"0","soc_conts":"0","soc_conts_url":"0","f_svazy":"0","yamap":"","otzivy_status":"1","modal_status":"0","modal_time":"0","modal_buttons":"0","microdata_status":"0","microdata_postcode":"","microdata_city":"","microdata_adress":"","microdata_phones":"","microdata_social":"","microdata_email":"","watermark_status_true":"1","watermark_status":"0","watermark_type":"text","watermark_text":"","watermark_image":"no_image.png","watermark_font_size":"10","watermark_color":"333333","watermark_position":"bottomleft","watermark_opacity":"70","watermark_angle":"0","watermark_offset":{"x":"21","y":"10"},"watermark_scaling":{"width":"500","height":"500"},"watermark_min":{"width":"228","height":"228"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_catattribs', 'revtheme_catattribs_settings', '{"attributes":{"15":{"show":"0","replace":""},"19":{"show":"0","replace":""},"13":{"show":"0","replace":""},"18":{"show":"0","replace":""},"14":{"show":"2","replace":"\\u0414\\u0430"},"17":{"show":"2","replace":"\\u0414\\u0430"},"16":{"show":"0","replace":""},"12":{"show":"0","replace":""}}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_status', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_blocks_home', '{"status":"0","effect":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_categorywall', '{"status":"0","mobi_status":"1","1":{"title":""},"2":{"title":""},"icontype":"1","icon":"fa none","image":"no_image.png","sort_order":"1","categories":"0","group_manufs":"0","group_manufs_simbol":"1","group_manufs_link":{"1":"","2":""},"group_manufs_link_href":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_all', '{"in_top":"0","popup_phone":"0","f_map":"0","copy":"0","1":{"copy_text":"\\u041c\\u044b - \\u0431\\u044b\\u0441\\u0442\\u0440\\u044b\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441\\u0432\\u0435\\u0436\\u0435\\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043f\\u0438\\u0446\\u0446\\u044b!"},"2":{"copy_text":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_custom_footer', '{"status":"0","dops_pc_status":"1","cf_1_status":"0","cf_1_width":"20","cf_2_status":"0","cf_2_width":"25","cf_3_status":"0","cf_3_width":"50","cf_4_status":"0","cf_4_width":"25","cf_5_status":"0","cf_5_width":"25","1":{"cf_1_description":"","cf_2_description":"","cf_3_description":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;","cf_4_description":"","cf_5_description":""},"2":{"cf_1_description":"","cf_2_description":"","cf_3_description":"","cf_4_description":"","cf_5_description":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revblog', 'revblog_settings', '{"category_image_status":"0","category_image_width":"228","category_image_height":"228","list_desc_limit":"400","list_image_width":"80","list_image_height":"80","main_image_status":"0","form_image_width":"400","form_image_height":"400","images_image_width":"365","images_image_height":"275","share_status":"0","not_view_null":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_location_height', '50', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_location_width', '268', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_link', '{"1":{"link":{"1":"contact-us","2":"contact-us"},"title":{"1":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","2":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b"},"sort":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_soc', '{"1":{"image":"fa fa-vk","link":{"1":"https:\\/\\/vk.com","2":""},"title":{"1":"\\u041c\\u044b \\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435","2":""},"sort":"1"},"2":{"image":"fa fa-odnoklassniki","link":{"1":"https:\\/\\/ok.ru","2":""},"title":{"1":"\\u041c\\u044b \\u043d\\u0430 \\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u043a\\u0430\\u0445","2":""},"sort":"2"},"3":{"image":"fa fa-twitter","link":{"1":"https:\\/\\/twitter.com","2":""},"title":{"1":"\\u041c\\u044b \\u0432 \\u0442\\u0432\\u0438\\u0442\\u0442\\u0435\\u0440\\u0435","2":""},"sort":"3"},"4":{"image":"fa fa-youtube-play","link":{"1":"https:\\/\\/www.youtube.com","2":""},"title":{"1":"\\u041d\\u0430\\u0448 \\u043a\\u0430\\u043d\\u0430\\u043b \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431\\u0435","2":""},"sort":"4"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_cart_height', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_all', '{"1":{"h1_home":""},"2":{"h1_home":""},"pr_opisanie":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_slideshow', '{"status":"1","banner_id":"7","allwide":"1","mobile":"0","slides":"1","autoscroll":"9","width":"1800","height":"320","b_color":"FCFCFC"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_tabs', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_last', '{"status":"0","1":{"title":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438"},"2":{"title":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438"},"url_all":"0","icontype":"1","icon":"fa none","image":"no_image.png","limit":"12","not_view_null":"0","slider":"0","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_best', '{"status":"0","1":{"title":"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436"},"2":{"title":"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436"},"url_all":"0","icontype":"1","icon":"fa none","image":"no_image.png","limit":"12","not_view_null":"0","slider":"0","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_spec', '{"status":"0","1":{"title":"\\u0410\\u043a\\u0446\\u0438\\u0438"},"2":{"title":"\\u0410\\u043a\\u0446\\u0438\\u0438"},"url_all":"0","icontype":"1","icon":"fa none","image":"no_image.png","limit":"12","not_view_null":"0","slider":"1","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_1', '{"status":"1","1":{"title":"\\u041f\\u0438\\u0446\\u0446\\u0430","url_all":""},"2":{"title":"\\u041f\\u0438\\u0446\\u0446\\u0430","url_all":""},"icontype":"0","icon":"fa none","image":"catalog\\/revolution\\/demo_tovars\\/pizza\\/icon-pizza.png","count":"10","not_view_null":"0","slider":"0","image_width":"350","image_height":"350","category_id":"0","featured":"","manufacturer_id":"11","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_3', '{"status":"1","1":{"title":"\\u041d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438","url_all":""},"2":{"title":"\\u041d\\u0430\\u043f\\u0438\\u0442\\u043a\\u0438","url_all":""},"icontype":"0","icon":"fa none","image":"catalog\\/revolution\\/demo_tovars\\/pizza\\/icon-drink.png","count":"5","not_view_null":"0","slider":"0","image_width":"350","image_height":"350","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_4', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"5","not_view_null":"0","slider":"0","image_width":"350","image_height":"350","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_5', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_blog', '{"status":"1","1":{"title":"\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f"},"2":{"title":"\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f"},"blog_category_id":"0","news_limit":"4","desc_limit":"200","count_r":"0","icontype":"0","icon":"fa fa-bullhorn","image":"catalog\\/revolution\\/demo_tovars\\/pizza\\/icon-news.png","image_status":"0","image_width":"400","image_height":"300","b_color":"FCFCFC"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_aboutstore_home', '{"status":"1","1":{"title":"","description":"&lt;p&gt;\\u041f\\u0438\\u0446\\u0446\\u0430 - \\u043a\\u0443\\u043b\\u0438\\u043d\\u0430\\u0440\\u043d\\u044b\\u0439 \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b \\u0418\\u0442\\u0430\\u043b\\u0438\\u0438. \\u0416\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c \\u0410\\u043f\\u0435\\u043d\\u043d\\u0438\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u043f\\u043e\\u043b\\u0443\\u043e\\u0441\\u0442\\u0440\\u043e\\u0432\\u0430 \\u0441\\u0432\\u043e\\u0439\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u0430 \\u0442\\u044f\\u0433\\u0430 \\u043a \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u043c\\u0443 \\u0431\\u043b\\u044e\\u0434\\u0443 \\u043d\\u0430 \\u0433\\u0435\\u043d\\u0435\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u043c \\u0443\\u0440\\u043e\\u0432\\u043d\\u0435. \\u0414\\u0440\\u0443\\u0433\\u0438\\u0435 \\u043d\\u0430\\u0440\\u043e\\u0434\\u044b \\u0441\\u0442\\u0430\\u0440\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0435 \\u043e\\u0442\\u0441\\u0442\\u0430\\u0432\\u0430\\u0442\\u044c, \\u043d\\u0435 \\u0441\\u0442\\u0435\\u0441\\u043d\\u044f\\u044f\\u0441\\u044c \\u0437\\u0430\\u044f\\u0432\\u043b\\u044f\\u0442\\u044c \\u043e \\u043b\\u044e\\u0431\\u0432\\u0438 \\u043a \\u043f\\u0438\\u0446\\u0446\\u0435.&lt;\\/p&gt;&lt;p&gt;\\u041f\\u0438\\u0446\\u0446\\u0430 \\u0441\\u0447\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u043d\\u0438\\u043c \\u0438\\u0437 \\u0441\\u0430\\u043c\\u044b\\u0445 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0445 \\u043a\\u0443\\u0448\\u0430\\u043d\\u0438\\u0439 \\u0432 \\u043c\\u0438\\u0440\\u0435. \\u041f\\u0440\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043f\\u0438\\u0446\\u0446\\u044b \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u0435\\u043d \\u0441\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d \\u0414\\u0440\\u0435\\u0432\\u043d\\u0435\\u0433\\u043e \\u0420\\u0438\\u043c\\u0430. \\u0420\\u0438\\u043c\\u043b\\u044f\\u043d\\u0435 \\u0438\\u043c\\u0435\\u043b\\u0438 \\u043f\\u0440\\u0438\\u0432\\u044b\\u0447\\u043a\\u0443 \\u043a\\u043b\\u0430\\u0441\\u0442\\u044c \\u043c\\u044f\\u0441\\u043e \\u0441 \\u043e\\u0432\\u043e\\u0449\\u0430\\u043c\\u0438 \\u043d\\u0430 \\u043b\\u0435\\u043f\\u0435\\u0448\\u043a\\u0438. \\u0421\\u043e \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0435\\u043c \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u0430\\u044f \\u043b\\u0435\\u043f\\u0435\\u0448\\u043a\\u0430 \\u0442\\u0440\\u0430\\u043d\\u0441\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b\\u0430\\u0441\\u044c, \\u043f\\u043e\\u044f\\u0432\\u043b\\u044f\\u043b\\u0438\\u0441\\u044c \\u0440\\u0435\\u0446\\u0435\\u043f\\u0442\\u044b \\u0438 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u044b \\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f. \\u041e\\u043a\\u043e\\u043d\\u0447\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0432\\u0438\\u0434 \\u043f\\u0438\\u0446\\u0446\\u0430 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u043b\\u0430 \\u0441 \\u043f\\u043e\\u044f\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c \\u0432 \\u0415\\u0432\\u0440\\u043e\\u043f\\u0435 \\u0442\\u043e\\u043c\\u0430\\u0442\\u043e\\u0432 - \\u043d\\u0430 \\u0441\\u0442\\u044b\\u043a\\u0435 \\u043f\\u044f\\u0442\\u043d\\u0430\\u0434\\u0446\\u0430\\u0442\\u043e\\u0433\\u043e \\u0438 \\u0448\\u0435\\u0441\\u0442\\u043d\\u0430\\u0434\\u0446\\u0430\\u0442\\u043e\\u0433\\u043e \\u0432\\u0435\\u043a\\u043e\\u0432.&lt;\\/p&gt;"},"2":{"title":"","description":""},"icontype":"1","icon":"fa fa-pencil-square-o","image":"no_image.png"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_all', '{"popup_purchase":"0","zakaz":"0","zakaz_price_null":"0","recalc_price":"1","recalc_price_animate":"1","q_zavisimost":"0","opt_price":"1","countdown":"0","recpr_rightc":"1","answers":"0","blogs":"0","share_status":"0","short_desc":"1","pr_tabs":"1","desc_cols":"0","spec_cols":"0","atributs":"1","atributs_group_name":"1","atributs_ssilka_all":"1","manufacturer_status":"0","model_status":"0","sku_status":"0","bonusbals_status":"0","sklad_status":"0","ostatok_status":"0","weight_status":"1","razmers":"0","options_two_in_line":"1","options_ravno_plus":"0","option_f_auto":"1","options_buy":"0","options_buy_optionname":"0","options_buy_optionname_one":"0","options_buy_foto":"0","options_buy_model":"1","options_buy_quantity":"1","options_buy_click":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_predzakaz', '{"status":"0","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1","order_status":"2"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_images', '{"zoom":"1","slider":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_mods', '{"viewed_products":"0","1":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438","text_block_zagolovok":""},"2":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438","text_block_zagolovok":""},"viewed_products_limit":"8","text_block":"0","text_block_cols":"col-sm-12","text_block_cols_2":"col-sm-6"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_cart', '{"icontype":"1","icon":"fa fa-shopping-basket","image":"catalog\\/revolution\\/demo_tovars\\/apple\\/icon-cart.png","type":"standart","cart_vspl":"0","cart_size":"small","cart_carturl":"0","cart_quick":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_all', '{"category_desc":"0","podcategory_status":"1","podcategory_imgs":"1","podcategory_cols":"4","manuf_desc":"1","product_in_cart":"0","ch_quantity":"0","rev_srav_prod":"0","rev_wish_prod":"0","rev_wish_srav_prod":"1","popup_view":"0","img_slider":"0","chislo_ryad":"0","vid_grid":"1","vid_price":"1","vid_default":"vid_grid","pagination":"auto"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_last', '{"last_products":"","limit":"20","filter_day":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_best', '{"best_products":"","limit":"20","filter_buy":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_sorts_category', '{"group_default":"0","sort_default":"p.price","sort_default_adesc":"ASC","order_ASC":"1","1":{"order_ASC_text":"","name_ASC_text":"","name_DESC_text":"","price_ASC_text":"","price_DESC_text":"","rating_DESC_text":"","rating_ASC_text":"","model_ASC_text":"","model_DESC_text":"","date_added_ASC_text":"","date_added_DESC_text":""},"2":{"order_ASC_text":"","name_ASC_text":"","name_DESC_text":"","price_ASC_text":"","price_DESC_text":"","rating_DESC_text":"","rating_ASC_text":"","model_ASC_text":"","model_DESC_text":"","date_added_ASC_text":"","date_added_DESC_text":""},"name_ASC":"1","name_DESC":"0","price_ASC":"1","price_DESC":"1","rating_DESC":"1","rating_ASC":"0","model_ASC":"0","model_DESC":"0","date_added_ASC":"0","date_added_DESC":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_revcheckoutshippay', 'revtheme_revcheckoutshippay', '{"pickup":["adres_on","cod"],"revship2":["adres_on","cod"]}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_cost', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_tax_class_id', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_menu', '{"sticky":"0","image_in_ico":"1","tri_level":"1","manuf":"0","n_column":"2","manuf_icontype":"1","manuf_icon":"fa none","manuf_image":"no_image.png","image_in_ico_m":"0","type":"0","cats_status":"1","zadergka":"1","icontype":"1","icon":"fa fa-bars","image":"no_image.png","on_line_cat":"0","inhome":"1","up_menu_height":"1","ogranich":"0","ogranich_count":"5"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu', '[{&quot;id&quot;:1,&quot;name1&quot;:&quot;Пиццерия&quot;,&quot;name2&quot;:&quot;Пиццерия&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka&quot;:&quot;&quot;,&quot;dop_menu_image&quot;:&quot;&quot;,&quot;&quot;:{},&quot;column&quot;:&quot;&quot;},{&quot;id&quot;:4,&quot;name1&quot;:&quot;Бонусная программа&quot;,&quot;name2&quot;:&quot;Бонусная программа&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka&quot;:&quot;&quot;,&quot;dop_menu_image&quot;:&quot;&quot;,&quot;&quot;:{},&quot;column&quot;:&quot;&quot;},{&quot;id&quot;:2,&quot;name1&quot;:&quot;Доставка&quot;,&quot;name2&quot;:&quot;Доставка&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka&quot;:&quot;&quot;,&quot;dop_menu_image&quot;:&quot;&quot;,&quot;&quot;:{},&quot;column&quot;:&quot;&quot;},{&quot;id&quot;:3,&quot;name1&quot;:&quot;Оплата&quot;,&quot;name2&quot;:&quot;Оплата&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka&quot;:&quot;&quot;,&quot;dop_menu_image&quot;:&quot;&quot;,&quot;&quot;:{},&quot;column&quot;:&quot;&quot;},{&quot;id&quot;:5,&quot;name1&quot;:&quot;Наши контакты&quot;,&quot;name2&quot;:&quot;Наши контакты&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka&quot;:&quot;&quot;,&quot;dop_menu_image&quot;:&quot;&quot;,&quot;&quot;:{},&quot;column&quot;:&quot;&quot;}]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_3', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_phone', '{"1":{"text":"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 10:00 \\u0434\\u043e 19:00","text2":"","cod":"","number":"+7 (495) 700-40-40","cod2":"","number2":"","doptext2":"","doptext":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"},"2":{"text":"","text2":"","cod":"","number":"","cod2":"","number2":"","doptext2":"","doptext":""},"icontype":"1","icon":"fa none","image":"catalog\\/revolution\\/telefon_header.png"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_dop_contacts_status', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_popupphone', '{"status":"0","under_phone":"0","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_search', '{"ch_text":"1","1":{"doptext":"&lt;p&gt;&lt;\\/p&gt;&lt;p&gt;&lt;\\/p&gt;&lt;span class=&quot;hszag&quot;&gt;\\u0411\\u044b\\u0441\\u0442\\u0440\\u044b\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441\\u0432\\u0435\\u0436\\u0435\\u043f\\u0440\\u0438\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043f\\u0438\\u0446\\u0446\\u044b!&lt;\\/span&gt;&lt;p style=&quot;margin-bottom: 0;\'&gt;&lt;span style=&quot; font-size:=&quot;&quot; 13px;&quot;=&quot;&quot;&gt;\\u041c\\u044b \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u043c \\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0442\\u044c \\u043f\\u0438\\u0446\\u0446\\u0443 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u0432\\u0430\\u0448\\u0435\\u0433\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430, \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u043b\\u0443\\u0447\\u0448\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u044b \\u0438 \\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u043c \\u043e\\u0442 \\u0434\\u0443\\u0448\\u0438 - \\u0438\\u043c\\u0435\\u043d\\u043d\\u043e \\u043f\\u043e\\u044d\\u0442\\u043e\\u043c\\u0443 \\u043d\\u0430\\u0448\\u0430 \\u043f\\u0438\\u0446\\u0446\\u0430 \\u0442\\u0430\\u043a\\u0430\\u044f \\u0432\\u043a\\u0443\\u0441\\u043d\\u0430\\u044f! \\u0421\\u0440\\u0435\\u0434\\u043d\\u0435\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u043e\\u0436\\u0438\\u0434\\u0430\\u043d\\u0438\\u044f \\u043f\\u0438\\u0446\\u0446\\u044b 45 \\u043c\\u0438\\u043d\\u0443\\u0442!&lt;br&gt;&lt;\\/p&gt;&lt;p&gt;&lt;a href=&quot;picceriya_1&quot;&gt;\\u041f\\u0438\\u0446\\u0446\\u0435\\u0440\\u0438\\u044f&lt;\\/a&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;a href=&quot;bonusnaya_programma&quot;&gt;\\u0411\\u043e\\u043d\\u0443\\u0441\\u043d\\u0430\\u044f \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0430&lt;\\/a&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;a href=&quot;dostavka&quot;&gt;\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430&lt;\\/a&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;a href=&quot;oplata&quot;&gt;\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430&lt;\\/a&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;a href=&quot;contact-us&quot;&gt;\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b&lt;\\/a&gt;&lt;\\/p&gt;"},"2":{"doptext":""},"in_category":"1","ajax_search_status":"1","ajax_search_limit":"10","ajax_search_model":"1","ajax_search_manufacturer":"0","ajax_search_tag":"1","ajax_search_sku":"1","ajax_search_upc":"0","ajax_search_mpn":"1","ajax_search_isbn":"0","ajax_search_jan":"0","ajax_search_ean":"0","ajax_search_description":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_popuporder', '{"status":"0","quick_btn":"0","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1","order_status":"2"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_compare', '{"cat_sort":"1","main_cat":"0","compare_price":"1","compare_model":"1","compare_sku":"1","compare_manuf":"1","compare_stock":"1","compare_rate":"1","compare_srtdesc":"1","compare_weight":"1","compare_razmer":"1","compare_atrib":"1","compare_atribgr":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_stiker', '{"status":"1","new_status":"0","best_status":"0","spec_status":"0","sklad_status":"0","stock_status":"0","stiker_netu_stock":"0","upc":"1","ean":"0","jan":"0","isbn":"0","mpn":"0","last_color":"E4F1FE","last_color_text":"333333","best_color":"DCC6E0","best_color_text":"333333","spec_color":"FDE3A7","spec_color_text":"333333","netu_color":"6C7A89","netu_color_text":"FFFFFF","user_color":"E08283","user_color_text":"FFFFFF"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_2', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_standart_links', '{"rev_lang":"0","rev_curr":"0","rev_srav":"0","rev_wish":"0","rev_acc":"0","rev_acc_zagolovok":"kabinet","popup_login":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_version', '4.0', '0');

TRUNCATE TABLE `oc_product_tab`;


TRUNCATE TABLE `oc_product_tab_desc`;


TRUNCATE TABLE `oc_revblog`;

INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('1', '', '2017-09-23 19:48:13', '2017-09-28 22:02:18', '2017-09-23', '1', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('4', '', '2017-09-28 22:04:51', '0000-00-00 00:00:00', '2017-09-28', '4', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('2', '', '2017-09-23 20:03:32', '2017-09-28 21:59:57', '2017-09-20', '2', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('3', 'catalog/revolution/demo_tovars/apple/news_2.jpg', '2017-09-23 20:09:20', '2017-09-28 21:55:22', '2017-09-21', '0', '1');

TRUNCATE TABLE `oc_revblog_category`;

INSERT INTO `oc_revblog_category` (`category_id`, `image`, `parent_id`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES ('2', '', '0', '1', '1', '2017-09-28 21:55:12', '2017-09-28 21:55:55');

TRUNCATE TABLE `oc_revblog_category_description`;

INSERT INTO `oc_revblog_category_description` (`category_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('2', '1', 'Информация', '', 'Информация', 'Информация', 'Информация');
INSERT INTO `oc_revblog_category_description` (`category_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('2', '2', 'Информация', '', '', '', '');

TRUNCATE TABLE `oc_revblog_category_path`;

INSERT INTO `oc_revblog_category_path` (`category_id`, `path_id`, `level`) VALUES ('2', '2', '0');

TRUNCATE TABLE `oc_revblog_category_to_layout`;

INSERT INTO `oc_revblog_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES ('2', '0', '0');

TRUNCATE TABLE `oc_revblog_category_to_store`;

INSERT INTO `oc_revblog_category_to_store` (`category_id`, `store_id`) VALUES ('2', '0');

TRUNCATE TABLE `oc_revblog_description`;

INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('4', '2', 'Польза вегетарианской пиццы со шпинатом', '', '', '&lt;p&gt;Польза вегетарианской пиццы со шпинатом&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('1', '1', 'Пицца – самое знаменитое блюдо', '', '', '&lt;p&gt;&lt;b&gt;Пицца&amp;nbsp;&lt;/b&gt;– это такое потрясающе вкусное блюдо, которое любят все: и маленькие, и большие. К тому же она имеет несколько весомых плюсов: во-первых, помимо того, что она вкусная, она также имеет много полезных свойств, т.к. готовится из таких ингредиентов как оливковое масло, томаты, сыр, и прочее. Во-вторых, ее совсем не сложно приготовить дома, плюс пицца дает возможность импровизировать с начинкой. И, наконец, в-третьих, пицца не отнимет у вас много времени и средств: ее, как говорилось ранее, можно приготовить дома, покушать в кафе, ресторане, баре, пиццерии или же произвести заказ пиццы на дом. Все это будет стоить в пределах пятисот рублей, а времени вы потратите не более часа-полтора.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Пицца появилась несколько сотен лет назад, в года правления королевы Италии Маргариты (кстати, именно в честь нее была названа традиционная пицца «Маргарита»), а слава о ней мигом разлетелась по всему земному шару. Именно по-этому у нас появилась пицца с морепродуктами (спасибо Японии), пицца с курицей карри (спасибо Индии), пицца с фаршем и колбасой (спасибо матушке России) и т.д.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Это потрясающе аппетитное и нежное блюдо имеет большое количество интересных историй. Давайте познакомимся с самыми знаменитыми из них.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Пицца как признание в любви&amp;nbsp;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Как то раз, в одном из самых крупных ресторанов Рима, в праздник всех влюбленных – День Святого Валентина на стол была подана уникальная пицца, стоимостью практически в четыре тысячи долларов. Ее заказал верный, любящий супруг своей жене. Оригинальный рецепт пиццы удивил даже самых искушенных любителей этого знаменитого и любимого миллмионами людей блюда. Начинкой этой пиццы служили лобстеры, нарезка из оленины, икра, пропитанная шампанским, шотландская копченая семга, и даже съедобное золото. Удивительное блюдо было названо в честь Джеймса Бонда – «Пицца Рояль 007», однако ее вкусовые качества так и остаются загадкой.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Борьба с преступностью, или «PowerPizza»&amp;nbsp;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Изобретатели устали ждать доблестных сотрудников полиции и решили сами вступить на тропу войны с преступностью. Ими была создана необычная коробка для ноутбука: внешне коробка для пиццы, внутри оборудованная всеми необходимыми креплениями для ноутбука, проводов и мышки. Стоимость этого чуда составляет тридцать долларов, а размеры 38 на 38 на 5.7 сантиметров.&lt;/p&gt;', 'Обзор Apple iPhone 8 и iPhone 8 Plus', 'Новости и Обзоры - Обзор Apple iPhone 8 и iPhone 8 Plus.', 'Новости и Обзоры, Обзор Apple iPhone 8 и iPhone 8 Plus, интернет магазин.');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('1', '2', 'Пицца – самое знаменитое блюдо', '', '', '&lt;p&gt;Пицца – самое знаменитое блюдо&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('4', '1', 'Польза вегетарианской пиццы со шпинатом', '', '', '&lt;p&gt;Каждый мясоед абсолютно уверен, что пища для вегетарианцев безумно скучна, пресна и невкусна. Спешу развеять этот миф! Начнем с того, что вегетарианство – это отказ от продуктов животного происхождения. Но с другой стороны - это полное разнообразие в выборе спелых, сладких плодов фруктов, сочных плодов овощей, вторых блюд, таких как паста, рис с овощами, и самое любимое как мясоедов, так и вегетарианцев – пицца. Кстати, последнее блюдо даже можно не готовить, а просто сделать заказ пиццы на дом.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Вот в вегетарианской пицце размах большой – это и пицца с грибами, овощная пицца, пицца со шпинатом и другие. Как вы думаете, какая из вышеперечисленных является самой полезной? Несомненно, пицца со шпинатом! Давайте разберемся, почему! Для меня стало открытием, что существует, оказывается, очень много сортов шпината, отличающихся нотками вкуса, но имеющих одинаковые полезные свойства.&lt;/p&gt;&lt;p&gt;По словам ученых, шпинат был «открыт» в Персии, именно там его впервые стали культивировать. После этого шпинат начал свое великое путешествие по миру: сперва он попал в Индию, потом в Китай, далее — в Европу. Шпинат стали не только использовать при приготовлении блюд, но и лечиться им от многих недугов (например, запоров). Впервые попав на французский царский стол, шпинат не произвел особого впечатления. Зато после, сама королева Екатерина Медичи открыла потрясающий вкус бутербродов со шпинатом и ветчиной или печеночным паштетом.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Шпинат содержит большое количество растительного белка, препятствующего возникновению раковой опухоли, а также йод (дефицитное вещество в российских продуктах питания). Употребление шпината в пищу оказывает общеукрепляющее действие на организм, в частности на кровеносные сосуды, органы зрения. Помимо этого, шпинат обладает мягким слабительным эффектом, продлевает молодость клеток. Польза шпината велика при росте ребенка: растение препятствует развитию различного рода патологий и укрепляет иммунитет.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Все это лишь малая часть всех полезных свойств этого уникального растения, чтобы ощутить его полное воздействие на организм, просто включите шпинат в свой повседневный рацион. Набирайтесь здоровья, не болейте!&lt;/p&gt;', '', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('2', '1', 'Рецепт пиццы', '', '', '&lt;p&gt;&lt;b&gt;Вкусная домашняя пицца! &lt;/b&gt;Кто ее не любит?! Рецептов пиццы столько, сколько разных вкусов и мнений.&lt;/p&gt;&lt;p&gt;Одни любят пиццу с тонким тестом, другие - предпочитают, чтобы всего было побольше; кто-то обожает сырную, куриную, мясную, салями, с ананасами, с креветками, с оливками и т.д.&lt;/p&gt;&lt;p&gt;Существует множество пиццерий, пиццу продают в супермаркетах, но что делать, их качество оставляет желать лучшего. Сплошь и рядом экономия, ориентированная больше на количество, из-за которой существенно страдает качество.&lt;/p&gt;&lt;p&gt;А частенько так хочется побаловать себя любимого, своих родных, друзей, сотрудников настоящей домашней пиццей! Скажу сразу, подходить к этому процессу нужно вооружившись фантазией, собственными предпочтениями, и, конечно же, хорошим рецептом теста.&lt;/p&gt;&lt;p&gt;Последнее играет немаловажную роль. Ведь если корж будет сухим и по вкусовым качествам больше напоминать кирпич, сомневаюсь, что вы сможете в полной мере насладиться своим шедевром.&lt;/p&gt;&lt;p&gt;Также испортит вкус сладковатый привкус теста. Не знаю, как вы, но я лично, противник того, чтобы делать пиццу из остатков теста, подготовленного для булочек или сладких пирожков.&lt;/p&gt;&lt;p&gt;Перепробовав море рецептов, путем проб и ошибок, я остановилась, на рецепте, который и хочу предложить вам. Этот рецепт очень прост и удобен, и подойдет даже тем, кто ранее не сталкивался с приготовлением теста.&lt;/p&gt;&lt;p&gt;Если вы не любите «марать» руки, для вымешивания теста можно использовать кухонный комбайн. Готовы? Тогда приступим!&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Для приготовления пиццы в домашних условиях нам понадобится:&lt;/p&gt;&lt;p&gt;1 стакан молока&lt;/p&gt;&lt;p&gt;1 яйцо&lt;/p&gt;&lt;p&gt;столовая ложка растительного масла&amp;nbsp;&lt;/p&gt;&lt;p&gt;15 г. дрожжей&amp;nbsp;&lt;/p&gt;&lt;p&gt;соль и сахар.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;В стакане теплого молока растворите дрожжи, добавьте столовую ложку без горки сахара, полчайной ложки соли, столовую ложку растительного масла, вбейте яйцо, размешав все до однородной массы.&lt;/p&gt;&lt;p&gt;Затем добавляем постепенно муку, предварительно ее, просеяв, до тех пор, пока тесто не будет липнуть к рукам. При всем этом тесто не должно быть слишком крутым, а скорее мягким и пластичным как мягкая глина.&lt;/p&gt;&lt;p&gt;Выкладываем тесто в обыкновенный пакет или кулечек и оставляем в холодильнике на пару часов. Можно заколотить тесто на ночь, а утром выпекать, кому как удобней.&lt;/p&gt;&lt;p&gt;Тем временем приготовим соус, смешав пополам майонез и кетчуп. А так же нарежем все необходимые составляющие нашей начинки: мясо, грибы, оливки, томаты и все-все-все, чего душа пожелает.&lt;/p&gt;&lt;p&gt;Не забудьте также прикупить хорошего жирного твердого сыра и натереть его на терке. После того, как наше тесто для пиццы подойдет, будем раскатывать его, а правильнее сказать растягивать, по форме (это может быть и сковорода).&lt;/p&gt;&lt;p&gt;То есть делать это нужно не с помощью скалки, а руками. Не забудьте смазать форму растительным маслом. Затем тесто смазываем, приготовленным за ранее, соусом; выкладываем нарезанные вкусности, а сверху посыпаем тертым сыром.&lt;/p&gt;&lt;p&gt;Ставим в горячую духовку и выпекаем 15-25 минут, пока не расплавиться сыр, а тесто приобретет приятный золотой оттенок.&lt;/p&gt;', 'Рецепт пиццы', 'Рецепт пиццы', 'Рецепт пиццы');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('3', '1', 'Приготовление пиццы дома', '', '', '&lt;div&gt;Возможно ли приготовить настоящую итальянскую пиццу в домашних условиях и что для этого необходимо.&lt;/div&gt;&lt;div&gt;Приготовление начинки для пиццы. &lt;b&gt;Итальянская пицца&lt;/b&gt; – это не просто блюдо, это искусство, даже своего рода религия. Пицца для итальянцев – это символ, национальное блюдо, и умение её готовить любой итальянец впитывает с молоком матери. На такую всенародную любовь итальянская пицца отвечает взаимностью и получается удивительно вкусной.&lt;/div&gt;&lt;div&gt;Можно ли приготовить дома такую же пиццу, как готовят в Италии и что для этого нужно?..&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Тесто для итальянской пиццы&lt;/b&gt;&lt;/div&gt;&lt;div&gt;Основа настоящей итальянской пиццы – это тесто. Никаких готовых «основ для пиццы», никакого готового теста – оно должно быть любовно приготовлено собственноручно, это альфа и омега в приготовлении пиццы, её основа. Рецепты теста для пиццы отличаются в зависимости от того, какую пиццу вы любите – тонкую и нежную или же пышную.&lt;/div&gt;&lt;div&gt;И тонкая, и пышная пицца приготовляется на одних и тех ингредиентах.&lt;/div&gt;&lt;div&gt;Это мука, вода, соль, дрожжи и оливковое масло. Подробнее вы можете узнать в разделе рецепты пиццы, а общие закономерности таковы.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;· Рецепт тонкого теста для пиццы&lt;/b&gt;&lt;/div&gt;&lt;div&gt;Сюда кладется почти в два раза меньше муки, чем для пышного теста, дрожжей нужно совсем чуть-чуть, а оливкового масла – всего одну столовую ложку&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;· Рецепт пышное тесто для пиццы&lt;/b&gt;&lt;/div&gt;&lt;div&gt;Добавьте больше муки, в 2 раза больше соли и оливкового масла.&lt;/div&gt;&lt;div&gt;Можно добавить в тесто ? - 1 чайную ложку коньяка, это придаст вкусу интересный оттенок.&lt;/div&gt;&lt;div&gt;Соус для итальянской пиццы.&lt;/div&gt;&lt;div&gt;Для домашней пиццы в русской адаптации главным соусом служит кетчуп. Это в корне неверно. Если вы хотите приготовить настоящую итальянскую пиццу, то соус станет основной нотой симфонии вкуса и халтурить с ним не стоит.&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Основные рецепты соусов для итальянской пиццы, это:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;· Томатные соусы для пиццы&lt;/b&gt;&lt;/div&gt;&lt;div&gt;Это основной вид соусов. Рецептов томатных соусов существует множество – классический итальянский томатный соус, острый томатный соус, соус из только что собранных томатов с мягким сыром или маслинами… Такой соус подойдет практически к любой пицце, но особенно хорош будет в сочетании с мясом.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;· Грибные соусы для пиццы&lt;/b&gt;&lt;/div&gt;&lt;div&gt;Хорош для любой соленой пиццы, особенно если этот соус приготовлен на основе сметаны или сливок.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;· Сырный соус для пиццы&lt;/b&gt;&lt;/div&gt;&lt;div&gt;Может использоваться и для пасты.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;· Яичный соус для пиццы&lt;/b&gt;&lt;/div&gt;&lt;div&gt;Подойдет к пицце с морепродуктами&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;· Соус для пиццы с хреном&lt;/b&gt;&lt;/div&gt;&lt;div&gt;Для любителей острых вкусов и оригинальных сочетаний.&lt;/div&gt;&lt;div&gt;Как видите, вариантов значительно больше, чем ограничиться обычным кетчупом или томатной пастой – творите! И пусть ваша пицца будет удивительным полетом фантазии.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Начинки для итальянской пиццы&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Вот тут – совершеннейшая свобода фантазии. Добавляйте в качестве начинки всё, что душе угодно. Обратите внимание только на несколько пунктов:&lt;/div&gt;&lt;div&gt;· Не стоит устраивать ералаш в начинке – больше пяти-шести ингредиентов класть не нужно&lt;/div&gt;&lt;div&gt;· Обратите внимание, чтобы продукты были свежими. Продукты «второй свежести» способны испортить даже самый лучший рецепт.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Классическими итальянскими сочетаниями считаются:&lt;/b&gt;&lt;/div&gt;&lt;div&gt;1. Сыр, грибы, бекон, орехи.&lt;/div&gt;&lt;div&gt;2. Перец, мясо, маслины.&lt;/div&gt;&lt;div&gt;3. Морепродукты с сыром.&lt;/div&gt;&lt;div&gt;4. Овощи с мясом или беконом.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Самыми частыми ингредиентами итальянской пиццы являются сыр, грибы и морепродукты.&lt;/div&gt;&lt;div&gt;Приготовление итальянской пиццы&lt;/div&gt;&lt;div&gt;Но вот у вас готово тесто, на основа уже полита специальным соусом, подобранным к начинке, а сама начинка уже равномерно выложена на пласт теста и посыпана сыром…&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;b&gt;Время выпекать!&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Настоящая итальянская пицца традиционно запекается в каменной печи. Температура в ней значительно выше, чем в духовке и пицца получается такой, как мы её особенно любим – с тонким тестом, хрустящими краями и нежной начинкой. Как воссоздать условия каменной печи дома?&lt;/div&gt;&lt;div&gt;Очень просто - с помощью печи или мини-печи для пиццы. Они разработаны специально для того, чтобы выпекать там вкусную пиццу, и условия приготовления в таких печах максимально приближены к условиям в каменных печах. Температура в таких печах может достигать 450 градусов, что позволяет вашей пицце приготовиться в считанные минуты и сделать пиццу именно такой, как едят итальянцы.&lt;/div&gt;&lt;div&gt;Да, конечно, ее можно заказать, просто подняв трубку и произнеся: «Алло пицца»? Но возвращаясь к вопросу, затронутому в начале: «Можно ли приготовить настоящую итальянскую пиццу дома?» отвечаем: «Можно!».&lt;/div&gt;', 'Приготовление пиццы дома', 'Информация - Приготовление пиццы дома.', 'Информация, Приготовление пиццы дома, интернет магазин.');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('3', '2', 'Приготовление пиццы дома', '', '', '&lt;p&gt;Приготовление пиццы дома&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('2', '2', 'Рецепт пиццы', '', '', '&lt;p&gt;Рецепт пиццы&lt;br&gt;&lt;/p&gt;', '', '', '');

TRUNCATE TABLE `oc_revblog_images`;


TRUNCATE TABLE `oc_revblog_product`;


TRUNCATE TABLE `oc_revblog_to_category`;

INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('1', '2', '1');
INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('2', '2', '1');
INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('3', '2', '1');
INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('4', '2', '1');

TRUNCATE TABLE `oc_revblog_to_layout`;

INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('1', '0', '0');
INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('2', '0', '0');
INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('3', '0', '0');
INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('4', '0', '0');

TRUNCATE TABLE `oc_revblog_to_store`;

INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('1', '0');
INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('2', '0');
INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('3', '0');
INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('4', '0');

TRUNCATE TABLE `oc_revpopupphones`;


TRUNCATE TABLE `oc_revsubscribe`;


TRUNCATE TABLE `oc_tabs`;


TRUNCATE TABLE `oc_tabs_description`;


TRUNCATE TABLE `oc_textblocks`;


TRUNCATE TABLE `oc_textblocks_description`;


TRUNCATE TABLE `oc_revanswers`;


TRUNCATE TABLE `oc_revcheckoutcustomfield`;

INSERT INTO `oc_revcheckoutcustomfield` (`custom_field_id`, `type`, `value`, `mask`, `location`, `status`, `sort_order`) VALUES ('3', 'textarea', '', '', 'address', '1', '1');
INSERT INTO `oc_revcheckoutcustomfield` (`custom_field_id`, `type`, `value`, `mask`, `location`, `status`, `sort_order`) VALUES ('4', 'select', '', '', 'address', '1', '2');

TRUNCATE TABLE `oc_revcheckoutcustomfield_customer_group`;

INSERT INTO `oc_revcheckoutcustomfield_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES ('3', '1', '1');
INSERT INTO `oc_revcheckoutcustomfield_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES ('4', '1', '0');

TRUNCATE TABLE `oc_revcheckoutcustomfield_description`;

INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES ('3', '2', 'Адрес доставки');
INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES ('3', '1', 'Адрес доставки');
INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES ('4', '2', 'Время доставки');
INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES ('4', '1', 'Время доставки');

TRUNCATE TABLE `oc_revcheckoutcustomfield_value`;

INSERT INTO `oc_revcheckoutcustomfield_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES ('6', '4', '1');
INSERT INTO `oc_revcheckoutcustomfield_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES ('7', '4', '2');

TRUNCATE TABLE `oc_revcheckoutcustomfield_value_description`;

INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('7', '1', '4', 'с 15:00 до 19:00');
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('7', '2', '4', 'с 15:00 до 19:00');
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('6', '1', '4', 'с 10:00 до 14:00');
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('6', '2', '4', 'с 10:00 до 14:00');

TRUNCATE TABLE `oc_revcheckoutcustomfield_shipping_code`;

INSERT INTO `oc_revcheckoutcustomfield_shipping_code` (`custom_field_id`, `shipping_code`) VALUES ('3', 'revship2.revship2');
INSERT INTO `oc_revcheckoutcustomfield_shipping_code` (`custom_field_id`, `shipping_code`) VALUES ('4', 'revship2.revship2');