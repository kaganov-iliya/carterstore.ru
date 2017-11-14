DELETE FROM `oc_attribute`;
INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
	(19, 4, 0),
	(18, 4, 5),
	(17, 4, 7),
	(16, 4, 2),
	(15, 4, 4),
	(14, 4, 6),
	(13, 4, 3),
	(12, 4, 1);

DELETE FROM `oc_attribute_description`;
INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
	(15, 2, 'Емкость аккумулятора'),
	(14, 2, 'Поддержка 4G'),
	(13, 1, 'Камера'),
	(12, 2, 'Экран'),
	(15, 1, 'Емкость аккумулятора'),
	(14, 1, 'Поддержка 4G'),
	(13, 2, 'Камера'),
	(12, 1, 'Экран'),
	(16, 1, 'Разрешение экрана'),
	(16, 2, 'Разрешение экрана'),
	(17, 2, 'Поддержка Wi-Fi'),
	(17, 1, 'Поддержка Wi-Fi'),
	(18, 1, 'Поддержка 3G'),
	(18, 2, 'Поддержка 3G'),
	(19, 1, 'Емкость памяти'),
	(19, 2, 'Емкость памяти');

DELETE FROM `oc_attribute_group`;
INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
	(4, 1);

DELETE FROM `oc_attribute_group_description`;
INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
	(4, 2, 'Общие'),
	(4, 1, 'Общие');

DELETE FROM `oc_banner_image`;
INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
	(127, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
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
	(125, 7, 1, 'iWatch 3', 'watch', 'catalog/revolution/demo_tovars/apple/banner2.png', 2),
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
	(126, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
	(111, 8, 2, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
	(112, 8, 2, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
	(124, 7, 1, 'iPhone X', 'iphone/iphone_8', 'catalog/revolution/demo_tovars/apple/banner1.png', 1);

DELETE FROM `oc_category`;
INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `image2`, `category_icontype`, `category_icon`, `category_image`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
	(82, 'catalog/revolution/demo_tovars/apple/cats/watch_series_3.jpg', 61, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 3, 1, '2017-09-22 19:48:36', '2017-09-22 23:15:13'),
	(83, 'catalog/revolution/demo_tovars/apple/cats/iPad_mini_4.jpg', 62, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 1, 1, '2017-09-22 19:49:57', '2017-09-22 23:15:25'),
	(75, 'catalog/revolution/demo_tovars/apple/cats/7.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 7, 1, '2017-09-22 19:46:21', '2017-09-22 20:24:26'),
	(76, 'catalog/revolution/demo_tovars/apple/cats/7plus.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 8, 1, '2017-09-22 19:46:34', '2017-09-22 20:24:32'),
	(77, 'catalog/revolution/demo_tovars/apple/cats/8.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 9, 1, '2017-09-22 19:46:49', '2017-09-22 20:26:09'),
	(78, 'catalog/revolution/demo_tovars/apple/cats/8plus.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 10, 1, '2017-09-22 19:47:02', '2017-09-22 20:26:16'),
	(79, 'catalog/revolution/demo_tovars/apple/cats/x.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 11, 1, '2017-09-22 19:47:15', '2017-09-22 20:26:24'),
	(80, 'catalog/revolution/demo_tovars/apple/cats/watch_series_1.jpg', 61, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 1, 1, '2017-09-22 19:48:07', '2017-09-22 23:15:00'),
	(81, 'catalog/revolution/demo_tovars/apple/cats/watch_series_2.jpg', 61, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 2, 1, '2017-09-22 19:48:24', '2017-09-22 23:15:07'),
	(74, 'catalog/revolution/demo_tovars/apple/cats/6splus.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 6, 1, '2017-09-22 19:46:04', '2017-09-22 20:24:20'),
	(59, 'catalog/revolution/demo_tovars/apple/cats/imac.jpg', 0, 'catalog/revolution/demo_tovars/apple/apple.png', 0, 'fa none', 'catalog/revolution/demo_tovars/apple/cats/icon-iMac.png', 1, 1, 1, 1, '2017-09-22 19:40:14', '2017-09-22 23:17:52'),
	(60, 'catalog/revolution/demo_tovars/apple/cats/x.jpg', 0, 'catalog/revolution/demo_tovars/apple/apple.png', 0, 'fa none', 'catalog/revolution/demo_tovars/apple/cats/icon_iPhone.png', 1, 1, 2, 1, '2017-09-22 19:40:31', '2017-09-22 23:19:16'),
	(61, 'catalog/revolution/demo_tovars/apple/cats/iwatch.jpg', 0, 'catalog/revolution/demo_tovars/apple/apple.png', 0, 'fa none', 'catalog/revolution/demo_tovars/apple/cats/icon-watch.png', 1, 1, 3, 1, '2017-09-22 19:41:10', '2017-09-22 23:19:24'),
	(62, 'catalog/revolution/demo_tovars/apple/cats/ipad.jpg', 0, 'catalog/revolution/demo_tovars/apple/apple.png', 0, 'fa none', 'catalog/revolution/demo_tovars/apple/cats/icon-IPad.png', 1, 1, 4, 1, '2017-09-22 19:41:27', '2017-09-22 23:19:32'),
	(73, 'catalog/revolution/demo_tovars/apple/cats/6s.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 5, 1, '2017-09-22 19:45:46', '2017-09-22 20:24:14'),
	(72, 'catalog/revolution/demo_tovars/apple/cats/6plus.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 4, 1, '2017-09-22 19:45:28', '2017-09-22 20:24:06'),
	(70, 'catalog/revolution/demo_tovars/apple/cats/5se.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 2, 1, '2017-09-22 19:45:00', '2017-09-23 00:15:38'),
	(71, 'catalog/revolution/demo_tovars/apple/cats/6.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 3, 1, '2017-09-22 19:45:13', '2017-09-22 20:24:00'),
	(69, 'catalog/revolution/demo_tovars/apple/cats/5s.jpg', 60, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 1, 1, '2017-09-22 19:44:44', '2017-09-22 21:48:12'),
	(68, 'catalog/revolution/demo_tovars/apple/cats/macpro.jpg', 59, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 4, 1, '2017-09-22 19:43:53', '2017-09-22 23:14:52'),
	(67, 'catalog/revolution/demo_tovars/apple/cats/macmini.jpg', 59, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 3, 1, '2017-09-22 19:43:34', '2017-09-22 23:14:45'),
	(66, 'catalog/revolution/demo_tovars/apple/cats/imac.jpg', 59, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 2, 1, '2017-09-22 19:43:10', '2017-09-22 22:55:10'),
	(65, 'catalog/revolution/demo_tovars/apple/cats/macbook.jpg', 59, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 1, 1, '2017-09-22 19:42:57', '2017-09-22 23:14:32'),
	(63, 'catalog/revolution/demo_tovars/apple/cats/ipod.jpg', 0, 'catalog/revolution/demo_tovars/apple/apple.png', 0, 'fa none', 'catalog/revolution/demo_tovars/apple/cats/icon-iPod.png', 1, 1, 5, 1, '2017-09-22 19:41:44', '2017-09-22 23:19:38'),
	(64, 'catalog/revolution/demo_tovars/apple/cats/accessory.jpg', 0, '', 0, 'fa none', 'catalog/revolution/demo_tovars/apple/cats/icon-accessory.png', 1, 1, 6, 1, '2017-09-22 19:42:09', '2017-09-22 22:02:27'),
	(84, 'catalog/revolution/demo_tovars/apple/cats/ipad.jpg', 62, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 2, 1, '2017-09-22 19:52:07', '2017-09-22 23:15:43'),
	(85, 'catalog/revolution/demo_tovars/apple/cats/iPad_Pro.jpg', 62, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 3, 1, '2017-09-22 19:52:23', '2017-09-22 23:15:52'),
	(86, 'catalog/revolution/demo_tovars/apple/cats/iPod_shuffle.jpg', 63, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 1, 1, '2017-09-22 19:53:08', '2017-09-22 23:16:01'),
	(87, 'catalog/revolution/demo_tovars/apple/cats/iPod_nano.jpg', 63, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 2, 1, '2017-09-22 19:53:25', '2017-09-22 23:16:08'),
	(88, 'catalog/revolution/demo_tovars/apple/cats/iPod_touch.jpg', 63, '', 1, 'fa fa-caret-right', 'no_image.png', 0, 1, 3, 1, '2017-09-22 19:53:41', '2017-09-22 23:16:15');

DELETE FROM `oc_category_description`;
INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(77, 2, 'iPhone 8', '', '', '', '', ''),
	(78, 2, 'iPhone 8 Plus', '', '', '', '', ''),
	(78, 1, 'iPhone 8 Plus', '', 'iPhone 8 Plus - купить в интернет-магазине.', 'iPhone 8 Plus', 'iPhone 8 Plus - каталог, характеристики, отзывы, цены.', 'iPhone 8 Plus, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(79, 2, 'iPhone X', '', '', '', '', ''),
	(79, 1, 'iPhone X', '', 'iPhone X - купить в интернет-магазине.', 'iPhone X', 'iPhone X - каталог, характеристики, отзывы, цены.', 'iPhone X, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(80, 2, 'Watch Series 1', '', '', '', '', ''),
	(80, 1, 'Watch Series 1', '', 'Watch Series 1 - купить в интернет-магазине.', 'Watch Series 1', 'Watch Series 1 - каталог, характеристики, отзывы, цены.', 'Watch Series 1, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(81, 2, 'Watch Series 2', '', '', '', '', ''),
	(81, 1, 'Watch Series 2', '', 'Watch Series 2 - купить в интернет-магазине.', 'Watch Series 2', 'Watch Series 2 - каталог, характеристики, отзывы, цены.', 'Watch Series 2, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(82, 1, 'Watch Series 3', '', 'Watch Series 3 - купить в интернет-магазине.', 'Watch Series 3', 'Watch Series 3 - каталог, характеристики, отзывы, цены.', 'Watch Series 3, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(82, 2, 'Watch Series 3', '', '', '', '', ''),
	(83, 2, 'iPad mini 4', '', '', '', '', ''),
	(83, 1, 'iPad mini 4', '', 'iPad mini 4 - купить в интернет-магазине.', 'iPad mini 4', 'iPad mini 4 - каталог, характеристики, отзывы, цены.', 'iPad mini 4, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(84, 2, 'iPad', '', '', '', '', ''),
	(84, 1, 'iPad', '', 'iPad - купить в интернет-магазине.', 'iPad', 'iPad - каталог, характеристики, отзывы, цены.', 'iPad, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(85, 2, 'iPad Pro', '', '', '', '', ''),
	(85, 1, 'iPad Pro', '', 'iPad Pro - купить в интернет-магазине.', 'iPad Pro', 'iPad Pro - каталог, характеристики, отзывы, цены.', 'iPad Pro, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(86, 2, 'iPod shuffle', '', '', '', '', ''),
	(86, 1, 'iPod shuffle', '', 'iPod shuffle - купить в интернет-магазине.', 'iPod shuffle', 'iPod shuffle - каталог, характеристики, отзывы, цены.', 'iPod shuffle, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(87, 2, 'iPod nano', '', '', '', '', ''),
	(87, 1, 'iPod nano', '', 'iPod nano - купить в интернет-магазине.', 'iPod nano', 'iPod nano - каталог, характеристики, отзывы, цены.', 'iPod nano, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(88, 1, 'iPod touch', '', 'iPod touch - купить в интернет-магазине.', 'iPod touch', 'iPod touch - каталог, характеристики, отзывы, цены.', 'iPod touch, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(88, 2, 'iPod touch', '', '', '', '', ''),
	(59, 1, 'Mac', '', 'Mac - купить в интернет-магазине.', 'Mac', 'Mac - каталог, характеристики, отзывы, цены.', 'Mac, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(59, 2, 'Mac', '', '', '', '', ''),
	(77, 1, 'iPhone 8', '', 'iPhone 8 - купить в интернет-магазине.', 'iPhone 8', 'iPhone 8 - каталог, характеристики, отзывы, цены.', 'iPhone 8, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(60, 2, 'iPhone', '', '', '', '', ''),
	(60, 1, 'iPhone', '', 'iPhone - купить в интернет-магазине.', 'iPhone', 'iPhone - каталог, характеристики, отзывы, цены.', 'iPhone, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(61, 2, 'Watch', '', '', '', '', ''),
	(61, 1, 'Watch', '', 'Watch - купить в интернет-магазине.', 'Watch', 'Watch - каталог, характеристики, отзывы, цены.', 'Watch, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(62, 2, 'iPad', '', '', '', '', ''),
	(62, 1, 'iPad', '', 'iPad - купить в интернет-магазине.', 'iPad', 'iPad - каталог, характеристики, отзывы, цены.', 'iPad, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(76, 1, 'iPhone 7 Plus', '', 'iPhone 7 Plus - купить в интернет-магазине.', 'iPhone 7 Plus', 'iPhone 7 Plus - каталог, характеристики, отзывы, цены.', 'iPhone 7 Plus, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(63, 2, 'iPod', '', '', '', '', ''),
	(63, 1, 'iPod', '', 'iPod - купить в интернет-магазине.', 'iPod', 'iPod - каталог, характеристики, отзывы, цены.', 'iPod, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(64, 1, 'Аксессуары', '', 'Аксессуары - купить в интернет-магазине.', 'Аксессуары', 'Аксессуары - каталог, характеристики, отзывы, цены.', 'Аксессуары, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(64, 2, 'Аксессуары', '', '', '', '', ''),
	(65, 2, 'MacBook', '', '', '', '', ''),
	(65, 1, 'MacBook', '', 'MacBook - купить в интернет-магазине.', 'MacBook', 'MacBook - каталог, характеристики, отзывы, цены.', 'MacBook, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(66, 2, 'iMac', '', '', '', '', ''),
	(66, 1, 'iMac', '', 'iMac - купить в интернет-магазине.', 'iMac', 'iMac - каталог, характеристики, отзывы, цены.', 'iMac, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(67, 2, 'Mac mini', '', '', '', '', ''),
	(67, 1, 'Mac mini', '', 'Mac mini - купить в интернет-магазине.', 'Mac mini', 'Mac mini - каталог, характеристики, отзывы, цены.', 'Mac mini, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(68, 2, 'Mac Pro', '', '', '', '', ''),
	(68, 1, 'Mac Pro', '', 'Mac Pro - купить в интернет-магазине.', 'Mac Pro', 'Mac Pro - каталог, характеристики, отзывы, цены.', 'Mac Pro, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(69, 2, 'iPhone 5S', '', '', '', '', ''),
	(69, 1, 'iPhone 5S', '', 'iPhone 5S - купить в интернет-магазине.', 'iPhone 5S', 'iPhone 5S - каталог, характеристики, отзывы, цены.', 'iPhone 5S, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(70, 2, 'iPhone SE', '', '', '', '', ''),
	(70, 1, 'iPhone SE', '', 'iPhone SE - купить в интернет-магазине.', 'iPhone SE', 'iPhone SE - каталог, характеристики, отзывы, цены.', 'iPhone SE, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(71, 2, 'iPhone 6', '', '', '', '', ''),
	(71, 1, 'iPhone 6', '', 'iPhone 6 - купить в интернет-магазине.', 'iPhone 6', 'iPhone 6 - каталог, характеристики, отзывы, цены.', 'iPhone 6, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(72, 2, 'iPhone 6 Plus', '', '', '', '', ''),
	(72, 1, 'iPhone 6 Plus', '', 'iPhone 6 Plus - купить в интернет-магазине.', 'iPhone 6 Plus', 'iPhone 6 Plus - каталог, характеристики, отзывы, цены.', 'iPhone 6 Plus, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(73, 2, 'iPhone 6S', '', '', '', '', ''),
	(73, 1, 'iPhone 6S', '', 'iPhone 6S - купить в интернет-магазине.', 'iPhone 6S', 'iPhone 6S - каталог, характеристики, отзывы, цены.', 'iPhone 6S, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(74, 2, 'iPhone 6S Plus', '', '', '', '', ''),
	(74, 1, 'iPhone 6S Plus', '', 'iPhone 6S Plus - купить в интернет-магазине.', 'iPhone 6S Plus', 'iPhone 6S Plus - каталог, характеристики, отзывы, цены.', 'iPhone 6S Plus, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(75, 2, 'iPhone 7', '', '', '', '', ''),
	(75, 1, 'iPhone 7', '', 'iPhone 7 - купить в интернет-магазине.', 'iPhone 7', 'iPhone 7 - каталог, характеристики, отзывы, цены.', 'iPhone 7, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(76, 2, 'iPhone 7 Plus', '', '', '', '', '');

DELETE FROM `oc_category_path`;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
	(88, 88, 1),
	(88, 63, 0),
	(87, 87, 1),
	(87, 63, 0),
	(86, 86, 1),
	(86, 63, 0),
	(85, 85, 1),
	(85, 62, 0),
	(84, 84, 1),
	(84, 62, 0),
	(82, 82, 1),
	(83, 62, 0),
	(82, 61, 0),
	(81, 81, 1),
	(81, 61, 0),
	(80, 80, 1),
	(80, 61, 0),
	(79, 79, 1),
	(79, 60, 0),
	(78, 78, 1),
	(78, 60, 0),
	(77, 77, 1),
	(77, 60, 0),
	(76, 76, 1),
	(76, 60, 0),
	(75, 75, 1),
	(75, 60, 0),
	(74, 74, 1),
	(74, 60, 0),
	(73, 73, 1),
	(73, 60, 0),
	(72, 72, 1),
	(72, 60, 0),
	(71, 71, 1),
	(71, 60, 0),
	(70, 70, 1),
	(70, 60, 0),
	(69, 69, 1),
	(69, 60, 0),
	(68, 68, 1),
	(68, 59, 0),
	(67, 67, 1),
	(67, 59, 0),
	(66, 66, 1),
	(66, 59, 0),
	(65, 65, 1),
	(65, 59, 0),
	(64, 64, 0),
	(63, 63, 0),
	(62, 62, 0),
	(61, 61, 0),
	(60, 60, 0),
	(59, 59, 0),
	(83, 83, 1);

DELETE FROM `oc_category_to_layout`;
INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
	(59, 0, 0),
	(60, 0, 0),
	(61, 0, 0),
	(62, 0, 0),
	(63, 0, 0),
	(64, 0, 0),
	(65, 0, 0),
	(66, 0, 0),
	(67, 0, 0),
	(68, 0, 0),
	(69, 0, 0),
	(70, 0, 0),
	(71, 0, 0),
	(72, 0, 0),
	(73, 0, 0),
	(74, 0, 0),
	(75, 0, 0),
	(76, 0, 0),
	(77, 0, 0),
	(78, 0, 0),
	(79, 0, 0),
	(80, 0, 0),
	(81, 0, 0),
	(82, 0, 0),
	(83, 0, 0),
	(84, 0, 0),
	(85, 0, 0),
	(86, 0, 0),
	(87, 0, 0),
	(88, 0, 0);

DELETE FROM `oc_category_to_store`;
INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
	(59, 0),
	(60, 0),
	(61, 0),
	(62, 0),
	(63, 0),
	(64, 0),
	(65, 0),
	(66, 0),
	(67, 0),
	(68, 0),
	(69, 0),
	(70, 0),
	(71, 0),
	(72, 0),
	(73, 0),
	(74, 0),
	(75, 0),
	(76, 0),
	(77, 0),
	(78, 0),
	(79, 0),
	(80, 0),
	(81, 0),
	(82, 0),
	(83, 0),
	(84, 0),
	(85, 0),
	(86, 0),
	(87, 0),
	(88, 0);

DELETE FROM `oc_currency`;
INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
	(1, 'Рубль', 'RUB', '', ' р.', '0', 1.00000000, 1, '2017-10-02 09:23:13'),
	(2, 'US Dollar', 'USD', '$', '', '2', 0.01730000, 1, '2017-10-02 09:23:13'),
	(3, 'Euro', 'EUR', '', '€', '2', 0.01470000, 1, '2017-10-02 09:23:13');

DELETE FROM `oc_extension`;
INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
	(1, 'payment', 'cod'),
	(2, 'total', 'shipping'),
	(3, 'total', 'sub_total'),
	(34, 'shipping', 'pickup'),
	(5, 'total', 'total'),
	(6, 'module', 'banner'),
	(7, 'module', 'carousel'),
	(35, 'shipping', 'revship2'),
	(10, 'total', 'handling'),
	(11, 'total', 'low_order_fee'),
	(13, 'module', 'category'),
	(14, 'module', 'account'),
	(15, 'total', 'reward'),
	(37, 'payment', 'ocstore_w1'),
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
	(33, 'theme', 'revolution');

DELETE FROM `oc_information`;
INSERT INTO `oc_information` (`information_id`, `bottom`, `top`, `top2`, `sort_order`, `status`) VALUES
	(3, 1, 0, 0, 4, 1),
	(4, 1, 0, 0, 1, 1),
	(5, 1, 0, 0, 3, 1),
	(6, 1, 0, 0, 2, 1);

DELETE FROM `oc_information_description`;
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', '', ''),
	(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', '', ''),
	(4, 1, 'О компании', '&lt;p&gt;\r\n	О компании&lt;/p&gt;\r\n', 'О компании', 'О компании', 'О компании', 'О компании'),
	(5, 1, 'Гарантия', '&lt;p&gt;\r\n	Гарантия&lt;/p&gt;\r\n', 'Гарантия', 'Гарантия', 'Гарантия', 'Гарантия'),
	(6, 1, 'Доставка и Оплата', '&lt;p&gt;\r\n	Доставка и Оплата&lt;/p&gt;\r\n', 'Доставка и Оплата', 'Доставка и Оплата', 'Доставка и Оплата', 'Доставка и Оплата'),
	(5, 2, 'Гарантия', '&lt;p&gt;\r\n	Гарантия&lt;/p&gt;\r\n', '', '', '', ''),
	(3, 1, 'Политика конфиденциальности', '&lt;p&gt;\r\n	Политика конфиденциальности&lt;/p&gt;\r\n', 'Политика конфиденциальности', 'Политика конфиденциальности', 'Политика конфиденциальности', 'Политика конфиденциальности'),
	(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', '', '');

DELETE FROM `oc_information_to_layout`;
INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
	(6, 0, 0),
	(4, 0, 0),
	(5, 0, 0),
	(3, 0, 0);

DELETE FROM `oc_information_to_store`;
INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
	(3, 0),
	(4, 0),
	(5, 0),
	(6, 0);

DELETE FROM `oc_layout_module`;
INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
	(2, 4, '0', 'content_top', 0),
	(3, 4, '0', 'content_top', 1),
	(20, 5, '0', 'column_left', 2),
	(69, 10, 'affiliate', 'column_right', 1),
	(68, 6, 'account', 'column_right', 1),
	(74, 3, 'category', 'column_left', 1);

DELETE FROM `oc_manufacturer`;
INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
	(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0);

DELETE FROM `oc_manufacturer_description`;
INSERT INTO `oc_manufacturer_description` (`manufacturer_id`, `language_id`, `name`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(8, 1, 'Apple', '', 'Apple - купить в интернет-магазине.', 'Apple', 'Выбор товаров из каталога Apple.', 'Apple, купить, продажа, выбор, цена, стоимость, описание, характеристики, отзывы, интернет магазин.'),
	(8, 2, 'Apple', '', '', '', '', '');

DELETE FROM `oc_manufacturer_to_store`;
INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
	(8, 0);

DELETE FROM `oc_module`;
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
	(30, 'Баннер на странице категорий', 'banner', '{"name":"Баннер на странице категорий","banner_id":"6","width":"182","height":"182","status":"1"}'),
	(29, 'Карусель на главной странице', 'carousel', '{"name":"Карусель на главной странице","banner_id":"8","width":"130","height":"100","status":"1"}'),
	(28, 'Рекомендуемые на главной странице', 'featured', '{"name":"Рекомендуемые на главной странице","product":["43","40","42","30"],"limit":"4","width":"200","height":"200","status":"1"}'),
	(27, 'Слайдшоу на главной странице', 'slideshow', '{"name":"Слайдшоу на главной странице","banner_id":"7","width":"1140","height":"380","status":"1"}'),
	(31, 'Баннер Продукция HP', 'banner', '{"name":"Баннер Продукция HP","banner_id":"6","width":"182","height":"182","status":"1"}');

DELETE FROM `oc_option`;
INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`, `opt_image`) VALUES
	(13, 'radio', 1, 0);

DELETE FROM `oc_option_description`;
INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
	(13, 2, 'Объем памяти'),
	(13, 1, 'Объем памяти');

DELETE FROM `oc_option_value`;
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
	(52, 13, '', 4),
	(51, 13, '', 3),
	(54, 13, '', 6),
	(53, 13, '', 5),
	(50, 13, '', 2),
	(49, 13, '', 1);

DELETE FROM `oc_option_value_description`;
INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
	(52, 2, 13, '128 Гб'),
	(52, 1, 13, '128 Гб'),
	(54, 2, 13, '512 Гб'),
	(54, 1, 13, '512 Гб'),
	(51, 2, 13, '64 Гб'),
	(51, 1, 13, '64 Гб'),
	(50, 2, 13, '32 Гб'),
	(50, 1, 13, '32 Гб'),
	(53, 2, 13, '256 Гб'),
	(53, 1, 13, '256 Гб'),
	(49, 2, 13, '16 Гб'),
	(49, 1, 13, '16 Гб');

DELETE FROM `oc_product`;
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `options_buy`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
	(67, 'MN9A2RU/A', '', '', '', '', '', '', '', 8, 7, 'catalog/revolution/demo_tovars/apple/prods/7-3_1.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:27:08', '0000-00-00 00:00:00'),
	(62, 'Серебристый', '', '', '', '', '', '', '', 0, 8, 'catalog/revolution/demo_tovars/apple/prods/8-2_1.jpg', 8, 1, 0, 69190.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-23 01:23:59', '2017-09-23 21:12:26'),
	(63, 'MN942RU/A', '', '', '', '', '', '', '', 23, 7, 'catalog/revolution/demo_tovars/apple/prods/7.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-23 21:16:41', '2017-09-23 21:17:08'),
	(64, 'MPRM2RU/A', '', '', '', '', '', '', '', 3, 7, 'catalog/revolution/demo_tovars/apple/prods/7-4_1.jpg', 8, 1, 0, 54990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-23 21:17:26', '2017-09-23 21:17:36'),
	(66, 'MN9A2RU/A', '', '', '', '', '', '', '', 8, 7, 'catalog/revolution/demo_tovars/apple/prods/7-3_1.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-23 21:20:29', '2017-09-23 21:20:52'),
	(54, 'MN942RU/A', '', '', '', '', '', '', '', 1, 7, 'catalog/revolution/demo_tovars/apple/prods/7.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 32, '2017-09-23 00:40:58', '2017-09-29 17:52:19'),
	(55, 'MN9A2RU/A', '', '', '', '', '', '', '', 2, 7, 'catalog/revolution/demo_tovars/apple/prods/7-3_1.jpg', 8, 1, 0, 54990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-23 00:45:00', '2017-09-23 21:12:04'),
	(56, 'MN912RU/A', '', '', '', '', '', '', '', 4, 7, 'catalog/revolution/demo_tovars/apple/prods/7-3_1.jpg', 8, 1, 0, 43990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-23 00:46:29', '2017-09-23 21:12:20'),
	(57, 'MPRL2RU/A', '', '', '', '', '', '', '', 7, 7, 'catalog/revolution/demo_tovars/apple/prods/7-4_1.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 5, '2017-09-23 00:49:52', '2017-09-23 21:11:53'),
	(65, 'MN912RU/A', '', '', '', '', '', '', '', 15, 7, 'catalog/revolution/demo_tovars/apple/prods/7-3_1.jpg', 8, 1, 0, 45990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 1, '2017-09-23 21:19:50', '2017-09-29 16:57:59'),
	(59, 'Серый Космос', '', '', '', '', '', '', '', 0, 8, 'catalog/revolution/demo_tovars/apple/prods/8_1.jpg', 8, 1, 0, 56890.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 1, '2017-09-23 01:19:17', '2017-09-23 21:12:44'),
	(60, 'Серый Космос', '', '', '', '', '', '', '', 0, 8, 'catalog/revolution/demo_tovars/apple/prods/8_1.jpg', 8, 1, 0, 69190.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-23 01:20:05', '2017-09-23 21:12:31'),
	(61, 'Серебристый', '', '', '', '', '', '', '', 0, 8, 'catalog/revolution/demo_tovars/apple/prods/8-2_1.jpg', 8, 1, 0, 56890.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 5, '2017-09-23 01:21:21', '2017-09-23 21:12:36'),
	(50, '16 Гб', '', '', '', '', '', '', '', 7, 7, 'catalog/revolution/demo_tovars/apple/prods/5se1.jpg', 8, 1, 0, 19990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 22, '2017-09-22 23:46:15', '2017-09-23 21:12:55'),
	(51, '16 Гб', '', '', '', '', '', '', '', 3, 7, 'catalog/revolution/demo_tovars/apple/prods/5se2.jpg', 8, 1, 0, 19990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 5, '2017-09-23 00:19:46', '2017-09-23 21:12:51'),
	(52, 'MN8X2RU/A', '', '', '', '', '', '', '', 9, 7, 'catalog/revolution/demo_tovars/apple/prods/7.jpg', 8, 1, 0, 43990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 4, '2017-09-23 00:34:59', '2017-09-23 21:12:09'),
	(53, 'MN942RU/A', '', '', '', '', '', '', '', 2, 7, 'catalog/revolution/demo_tovars/apple/prods/7-2_1.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-09-23 00:36:51', '2017-09-23 21:11:47'),
	(68, 'MN9A2RU/A', '', '', '', '', '', '', '', 8, 7, 'catalog/revolution/demo_tovars/apple/prods/7-3_1.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:27:24', '0000-00-00 00:00:00'),
	(69, 'MN9A2RU/A', '', '', '', '', '', '', '', 8, 7, 'catalog/revolution/demo_tovars/apple/prods/7-3_1.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:27:36', '0000-00-00 00:00:00'),
	(70, 'MN9A2RU/A', '', '', '', '', '', '', '', 8, 7, 'catalog/revolution/demo_tovars/apple/prods/7-3_1.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:27:36', '0000-00-00 00:00:00'),
	(71, 'MN9A2RU/A', '', '', '', '', '', '', '', 8, 7, 'catalog/revolution/demo_tovars/apple/prods/7-3_1.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:27:36', '0000-00-00 00:00:00'),
	(72, 'MN942RU/A', '', '', '', '', '', '', '', 23, 7, 'catalog/revolution/demo_tovars/apple/prods/7.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:27:59', '0000-00-00 00:00:00'),
	(73, 'MN942RU/A', '', '', '', '', '', '', '', 23, 7, 'catalog/revolution/demo_tovars/apple/prods/7.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:28:04', '0000-00-00 00:00:00'),
	(74, 'MN942RU/A', '', '', '', '', '', '', '', 23, 7, 'catalog/revolution/demo_tovars/apple/prods/7.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:28:04', '0000-00-00 00:00:00'),
	(75, 'MN942RU/A', '', '', '', '', '', '', '', 23, 7, 'catalog/revolution/demo_tovars/apple/prods/7.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:28:12', '0000-00-00 00:00:00'),
	(76, 'MN942RU/A', '', '', '', '', '', '', '', 23, 7, 'catalog/revolution/demo_tovars/apple/prods/7.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:28:12', '0000-00-00 00:00:00'),
	(77, 'MN942RU/A', '', '', '', '', '', '', '', 23, 7, 'catalog/revolution/demo_tovars/apple/prods/7.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:28:12', '0000-00-00 00:00:00'),
	(78, 'MN942RU/A', '', '', '', '', '', '', '', 23, 7, 'catalog/revolution/demo_tovars/apple/prods/7.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:28:12', '0000-00-00 00:00:00'),
	(79, 'MPRL2RU/A', '', '', '', '', '', '', '', 7, 7, 'catalog/revolution/demo_tovars/apple/prods/7-4_1.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:28:12', '0000-00-00 00:00:00'),
	(80, 'MN9A2RU/A', '', '', '', '', '', '', '', 8, 7, 'catalog/revolution/demo_tovars/apple/prods/7-3_1.jpg', 8, 1, 0, 51990.0000, 0, 0, '2017-09-22', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2017-10-02 12:28:12', '0000-00-00 00:00:00');

DELETE FROM `oc_product_attribute`;
INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
	(50, 12, 1, '4&quot;'),
	(50, 12, 2, '4&quot;'),
	(50, 13, 1, '12 Мп'),
	(50, 13, 2, '12 Мп'),
	(50, 14, 1, 'Да'),
	(50, 14, 2, 'Да'),
	(50, 15, 1, '1642 mAh'),
	(50, 15, 2, '1642 mAh'),
	(50, 16, 1, '1136 x 640'),
	(50, 16, 2, '1136 x 640'),
	(50, 17, 1, 'Да'),
	(50, 17, 2, 'Да'),
	(50, 18, 1, 'Да'),
	(50, 18, 2, 'Да'),
	(63, 13, 2, '12 Мп'),
	(52, 19, 2, '32 Гб'),
	(52, 19, 1, '32 Гб'),
	(52, 16, 1, '1334 x 750'),
	(52, 16, 2, '1334 x 750'),
	(52, 17, 1, 'Да'),
	(52, 17, 2, 'Да'),
	(52, 18, 1, 'Да'),
	(52, 18, 2, 'Да'),
	(53, 19, 1, '128 Гб'),
	(53, 18, 2, 'Да'),
	(53, 18, 1, 'Да'),
	(53, 17, 2, 'Да'),
	(53, 17, 1, 'Да'),
	(53, 16, 2, '1334 x 750'),
	(53, 16, 1, '1334 x 750'),
	(53, 14, 2, 'Да'),
	(53, 13, 2, '12 Мп'),
	(53, 14, 1, 'Да'),
	(54, 12, 1, '4.7&quot;'),
	(54, 12, 2, '4.7&quot;'),
	(54, 13, 1, '12 Мп'),
	(54, 13, 2, '12 Мп'),
	(54, 14, 1, 'Да'),
	(54, 14, 2, 'Да'),
	(54, 16, 1, '1334 x 750'),
	(54, 16, 2, '1334 x 750'),
	(54, 17, 1, 'Да'),
	(54, 17, 2, 'Да'),
	(54, 18, 1, 'Да'),
	(55, 19, 1, '256 Гб'),
	(55, 18, 2, 'Да'),
	(55, 18, 1, 'Да'),
	(55, 17, 2, 'Да'),
	(55, 17, 1, 'Да'),
	(55, 16, 2, '1334 x 750'),
	(55, 14, 1, 'Да'),
	(55, 14, 2, 'Да'),
	(55, 16, 1, '1334 x 750'),
	(56, 19, 1, '32 Гб'),
	(56, 18, 2, 'Да'),
	(56, 18, 1, 'Да'),
	(56, 17, 2, 'Да'),
	(56, 17, 1, 'Да'),
	(56, 16, 2, '1334 x 750'),
	(56, 14, 1, 'Да'),
	(56, 14, 2, 'Да'),
	(56, 16, 1, '1334 x 750'),
	(57, 19, 1, '128 Гб'),
	(57, 18, 2, 'Да'),
	(57, 18, 1, 'Да'),
	(57, 17, 2, 'Да'),
	(57, 17, 1, 'Да'),
	(57, 16, 2, '1334 x 750'),
	(57, 14, 1, 'Да'),
	(57, 14, 2, 'Да'),
	(57, 16, 1, '1334 x 750'),
	(65, 12, 1, '4.7&quot;'),
	(65, 12, 2, '4.7&quot;'),
	(65, 13, 1, '12 Мп'),
	(65, 13, 2, '12 Мп'),
	(65, 14, 1, 'Да'),
	(65, 14, 2, 'Да'),
	(65, 16, 1, '1334 x 750'),
	(65, 16, 2, '1334 x 750'),
	(65, 17, 1, 'Да'),
	(54, 18, 2, 'Да'),
	(54, 19, 1, '128 Гб'),
	(53, 13, 1, '12 Мп'),
	(53, 12, 2, '4.7&quot;'),
	(53, 12, 1, '4.7&quot;'),
	(57, 13, 2, '12 Мп'),
	(57, 13, 1, '12 Мп'),
	(57, 12, 2, '4.7&quot;'),
	(57, 12, 1, '4.7&quot;'),
	(65, 17, 2, 'Да'),
	(65, 18, 1, 'Да'),
	(65, 18, 2, 'Да'),
	(65, 19, 1, '64 Гб'),
	(52, 14, 2, 'Да'),
	(52, 14, 1, 'Да'),
	(52, 13, 2, '12 Мп'),
	(52, 13, 1, '12 Мп'),
	(52, 12, 2, '4.7&quot;'),
	(52, 12, 1, '4.7&quot;'),
	(56, 13, 2, '12 Мп'),
	(56, 13, 1, '12 Мп'),
	(56, 12, 2, '4.7&quot;'),
	(56, 12, 1, '4.7&quot;'),
	(55, 13, 2, '12 Мп'),
	(55, 13, 1, '12 Мп'),
	(55, 12, 2, '4.7&quot;'),
	(55, 12, 1, '4.7&quot;'),
	(51, 18, 1, 'Да'),
	(51, 12, 2, '4&quot;'),
	(51, 12, 1, '4&quot;'),
	(59, 17, 1, 'Да'),
	(59, 16, 2, '1334 x 750'),
	(59, 18, 1, 'Да'),
	(59, 14, 2, 'Да'),
	(59, 14, 1, 'Да'),
	(59, 17, 2, 'Да'),
	(59, 16, 1, '1334 x 750'),
	(59, 13, 2, '12 Мп'),
	(59, 13, 1, '12 Мп'),
	(60, 13, 1, '12 Мп'),
	(60, 13, 2, '12 Мп'),
	(60, 14, 1, 'Да'),
	(60, 14, 2, 'Да'),
	(60, 16, 1, '1334 x 750'),
	(60, 16, 2, '1334 x 750'),
	(60, 17, 1, 'Да'),
	(60, 17, 2, 'Да'),
	(60, 18, 1, 'Да'),
	(60, 18, 2, 'Да'),
	(60, 19, 1, '256 Гб'),
	(61, 13, 2, '12 Мп'),
	(61, 14, 1, 'Да'),
	(61, 14, 2, 'Да'),
	(61, 16, 1, '1334 x 750'),
	(61, 16, 2, '1334 x 750'),
	(61, 17, 1, 'Да'),
	(61, 17, 2, 'Да'),
	(61, 18, 1, 'Да'),
	(61, 13, 1, '12 Мп'),
	(62, 13, 2, '12 Мп'),
	(62, 14, 1, 'Да'),
	(62, 14, 2, 'Да'),
	(62, 16, 1, '1334 x 750'),
	(62, 16, 2, '1334 x 750'),
	(62, 17, 1, 'Да'),
	(62, 17, 2, 'Да'),
	(62, 18, 1, 'Да'),
	(62, 13, 1, '12 Мп'),
	(53, 19, 2, '128 Гб'),
	(57, 19, 2, '128 Гб'),
	(65, 19, 2, '64 Гб'),
	(55, 19, 2, '256 Гб'),
	(56, 19, 2, '32 Гб'),
	(62, 18, 2, 'Да'),
	(62, 19, 1, '64 Гб'),
	(62, 19, 2, '64 Гб'),
	(60, 19, 2, '256 Гб'),
	(61, 18, 2, 'Да'),
	(61, 19, 1, '64 Гб'),
	(61, 19, 2, '64 Гб'),
	(59, 18, 2, 'Да'),
	(59, 19, 1, '64 Гб'),
	(59, 19, 2, '64 Гб'),
	(51, 18, 2, 'Да'),
	(63, 14, 1, 'Да'),
	(63, 14, 2, 'Да'),
	(63, 16, 1, '1334 x 750'),
	(63, 16, 2, '1334 x 750'),
	(63, 17, 1, 'Да'),
	(63, 17, 2, 'Да'),
	(63, 18, 1, 'Да'),
	(63, 18, 2, 'Да'),
	(63, 13, 1, '12 Мп'),
	(63, 12, 2, '4.7&quot;'),
	(63, 12, 1, '4.7&quot;'),
	(63, 19, 1, '128 Гб'),
	(63, 19, 2, '128 Гб'),
	(64, 18, 1, 'Да'),
	(64, 17, 2, 'Да'),
	(64, 17, 1, 'Да'),
	(64, 16, 2, '1334 x 750'),
	(64, 16, 1, '1334 x 750'),
	(64, 14, 2, 'Да'),
	(64, 14, 1, 'Да'),
	(64, 13, 2, '12 Мп'),
	(64, 13, 1, '12 Мп'),
	(64, 12, 2, '4.7&quot;'),
	(64, 12, 1, '4.7&quot;'),
	(64, 18, 2, 'Да'),
	(64, 19, 1, '256 Гб'),
	(64, 19, 2, '256 Гб'),
	(66, 18, 1, 'Да'),
	(66, 17, 2, 'Да'),
	(66, 17, 1, 'Да'),
	(66, 16, 2, '1334 x 750'),
	(66, 16, 1, '1334 x 750'),
	(66, 14, 2, 'Да'),
	(66, 14, 1, 'Да'),
	(66, 13, 2, '12 Мп'),
	(66, 13, 1, '12 Мп'),
	(66, 12, 2, '4.7&quot;'),
	(66, 12, 1, '4.7&quot;'),
	(66, 18, 2, 'Да'),
	(66, 19, 1, '256 Гб'),
	(66, 19, 2, '256 Гб'),
	(54, 19, 2, '128 Гб'),
	(67, 12, 1, '4.7&quot;'),
	(67, 12, 2, '4.7&quot;'),
	(67, 13, 1, '12 Мп'),
	(67, 13, 2, '12 Мп'),
	(67, 14, 1, 'Да'),
	(67, 14, 2, 'Да'),
	(67, 16, 1, '1334 x 750'),
	(67, 16, 2, '1334 x 750'),
	(67, 17, 1, 'Да'),
	(67, 17, 2, 'Да'),
	(67, 18, 1, 'Да'),
	(67, 18, 2, 'Да'),
	(67, 19, 1, '256 Гб'),
	(67, 19, 2, '256 Гб'),
	(68, 12, 1, '4.7&quot;'),
	(68, 12, 2, '4.7&quot;'),
	(68, 13, 1, '12 Мп'),
	(68, 13, 2, '12 Мп'),
	(68, 14, 1, 'Да'),
	(68, 14, 2, 'Да'),
	(68, 16, 1, '1334 x 750'),
	(68, 16, 2, '1334 x 750'),
	(68, 17, 1, 'Да'),
	(68, 17, 2, 'Да'),
	(68, 18, 1, 'Да'),
	(68, 18, 2, 'Да'),
	(68, 19, 1, '256 Гб'),
	(68, 19, 2, '256 Гб'),
	(69, 12, 1, '4.7&quot;'),
	(69, 12, 2, '4.7&quot;'),
	(69, 13, 1, '12 Мп'),
	(69, 13, 2, '12 Мп'),
	(69, 14, 1, 'Да'),
	(69, 14, 2, 'Да'),
	(69, 16, 1, '1334 x 750'),
	(69, 16, 2, '1334 x 750'),
	(69, 17, 1, 'Да'),
	(69, 17, 2, 'Да'),
	(69, 18, 1, 'Да'),
	(69, 18, 2, 'Да'),
	(69, 19, 1, '256 Гб'),
	(69, 19, 2, '256 Гб'),
	(70, 12, 1, '4.7&quot;'),
	(70, 12, 2, '4.7&quot;'),
	(70, 13, 1, '12 Мп'),
	(70, 13, 2, '12 Мп'),
	(70, 14, 1, 'Да'),
	(70, 14, 2, 'Да'),
	(70, 16, 1, '1334 x 750'),
	(70, 16, 2, '1334 x 750'),
	(70, 17, 1, 'Да'),
	(70, 17, 2, 'Да'),
	(70, 18, 1, 'Да'),
	(70, 18, 2, 'Да'),
	(70, 19, 1, '256 Гб'),
	(70, 19, 2, '256 Гб'),
	(71, 12, 1, '4.7&quot;'),
	(71, 12, 2, '4.7&quot;'),
	(71, 13, 1, '12 Мп'),
	(71, 13, 2, '12 Мп'),
	(71, 14, 1, 'Да'),
	(71, 14, 2, 'Да'),
	(71, 16, 1, '1334 x 750'),
	(71, 16, 2, '1334 x 750'),
	(71, 17, 1, 'Да'),
	(71, 17, 2, 'Да'),
	(71, 18, 1, 'Да'),
	(71, 18, 2, 'Да'),
	(71, 19, 1, '256 Гб'),
	(71, 19, 2, '256 Гб'),
	(72, 12, 1, '4.7&quot;'),
	(72, 12, 2, '4.7&quot;'),
	(72, 13, 1, '12 Мп'),
	(72, 13, 2, '12 Мп'),
	(72, 14, 1, 'Да'),
	(72, 14, 2, 'Да'),
	(72, 16, 1, '1334 x 750'),
	(72, 16, 2, '1334 x 750'),
	(72, 17, 1, 'Да'),
	(72, 17, 2, 'Да'),
	(72, 18, 1, 'Да'),
	(72, 18, 2, 'Да'),
	(72, 19, 1, '128 Гб'),
	(72, 19, 2, '128 Гб'),
	(73, 12, 1, '4.7&quot;'),
	(73, 12, 2, '4.7&quot;'),
	(73, 13, 1, '12 Мп'),
	(73, 13, 2, '12 Мп'),
	(73, 14, 1, 'Да'),
	(73, 14, 2, 'Да'),
	(73, 16, 1, '1334 x 750'),
	(73, 16, 2, '1334 x 750'),
	(73, 17, 1, 'Да'),
	(73, 17, 2, 'Да'),
	(73, 18, 1, 'Да'),
	(73, 18, 2, 'Да'),
	(73, 19, 1, '128 Гб'),
	(73, 19, 2, '128 Гб'),
	(74, 12, 1, '4.7&quot;'),
	(74, 12, 2, '4.7&quot;'),
	(74, 13, 1, '12 Мп'),
	(74, 13, 2, '12 Мп'),
	(74, 14, 1, 'Да'),
	(74, 14, 2, 'Да'),
	(74, 16, 1, '1334 x 750'),
	(74, 16, 2, '1334 x 750'),
	(74, 17, 1, 'Да'),
	(74, 17, 2, 'Да'),
	(74, 18, 1, 'Да'),
	(74, 18, 2, 'Да'),
	(74, 19, 1, '128 Гб'),
	(74, 19, 2, '128 Гб'),
	(75, 12, 1, '4.7&quot;'),
	(75, 12, 2, '4.7&quot;'),
	(75, 13, 1, '12 Мп'),
	(75, 13, 2, '12 Мп'),
	(75, 14, 1, 'Да'),
	(75, 14, 2, 'Да'),
	(75, 16, 1, '1334 x 750'),
	(75, 16, 2, '1334 x 750'),
	(75, 17, 1, 'Да'),
	(75, 17, 2, 'Да'),
	(75, 18, 1, 'Да'),
	(75, 18, 2, 'Да'),
	(75, 19, 1, '128 Гб'),
	(75, 19, 2, '128 Гб'),
	(76, 12, 1, '4.7&quot;'),
	(76, 12, 2, '4.7&quot;'),
	(76, 13, 1, '12 Мп'),
	(76, 13, 2, '12 Мп'),
	(76, 14, 1, 'Да'),
	(76, 14, 2, 'Да'),
	(76, 16, 1, '1334 x 750'),
	(76, 16, 2, '1334 x 750'),
	(76, 17, 1, 'Да'),
	(76, 17, 2, 'Да'),
	(76, 18, 1, 'Да'),
	(76, 18, 2, 'Да'),
	(76, 19, 1, '128 Гб'),
	(76, 19, 2, '128 Гб'),
	(77, 12, 1, '4.7&quot;'),
	(77, 12, 2, '4.7&quot;'),
	(77, 13, 1, '12 Мп'),
	(77, 13, 2, '12 Мп'),
	(77, 14, 1, 'Да'),
	(77, 14, 2, 'Да'),
	(77, 16, 1, '1334 x 750'),
	(77, 16, 2, '1334 x 750'),
	(77, 17, 1, 'Да'),
	(77, 17, 2, 'Да'),
	(77, 18, 1, 'Да'),
	(77, 18, 2, 'Да'),
	(77, 19, 1, '128 Гб'),
	(77, 19, 2, '128 Гб'),
	(78, 12, 1, '4.7&quot;'),
	(78, 12, 2, '4.7&quot;'),
	(78, 13, 1, '12 Мп'),
	(78, 13, 2, '12 Мп'),
	(78, 14, 1, 'Да'),
	(78, 14, 2, 'Да'),
	(78, 16, 1, '1334 x 750'),
	(78, 16, 2, '1334 x 750'),
	(78, 17, 1, 'Да'),
	(78, 17, 2, 'Да'),
	(78, 18, 1, 'Да'),
	(78, 18, 2, 'Да'),
	(78, 19, 1, '128 Гб'),
	(78, 19, 2, '128 Гб'),
	(79, 12, 1, '4.7&quot;'),
	(79, 12, 2, '4.7&quot;'),
	(79, 13, 1, '12 Мп'),
	(79, 13, 2, '12 Мп'),
	(79, 14, 1, 'Да'),
	(79, 14, 2, 'Да'),
	(79, 16, 1, '1334 x 750'),
	(79, 16, 2, '1334 x 750'),
	(79, 17, 1, 'Да'),
	(79, 17, 2, 'Да'),
	(79, 18, 1, 'Да'),
	(79, 18, 2, 'Да'),
	(79, 19, 1, '128 Гб'),
	(79, 19, 2, '128 Гб'),
	(80, 12, 1, '4.7&quot;'),
	(80, 12, 2, '4.7&quot;'),
	(80, 13, 1, '12 Мп'),
	(80, 13, 2, '12 Мп'),
	(80, 14, 1, 'Да'),
	(80, 14, 2, 'Да'),
	(80, 16, 1, '1334 x 750'),
	(80, 16, 2, '1334 x 750'),
	(80, 17, 1, 'Да'),
	(80, 17, 2, 'Да'),
	(80, 18, 1, 'Да'),
	(80, 18, 2, 'Да'),
	(80, 19, 1, '256 Гб'),
	(80, 19, 2, '256 Гб');

DELETE FROM `oc_product_description`;
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `short_description`, `tag`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(64, 1, 'Apple iPhone 7 256GB Red', '', '', '', 'Apple iPhone 7 256GB Red - купить в интернет-магазине.', 'Apple iPhone 7 256GB Red', 'Купить Apple iPhone 7 256GB Red в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 256GB Red.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 256GB Red, MPRM2RU/A.'),
	(64, 2, 'Apple iPhone 7 256GB Red', '', '', '', '', '', '', ''),
	(67, 1, 'Apple iPhone 7 128GB Rose Gold', '', '', '', 'Apple iPhone 7 128GB Rose Gold - купить в интернет-магазине.', 'Apple iPhone 7 128GB Rose Gold', 'Купить Apple iPhone 7 128GB Rose Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Rose Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Rose Gold, MN9A2RU/A.'),
	(65, 1, 'Apple iPhone 7 64GB Rose Gold', '', '', '', 'Apple iPhone 7 64GB Rose Gold - купить в интернет-магазине.', 'Apple iPhone 7 64GB Rose Gold', 'Купить Apple iPhone 7 64GB Rose Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 64GB Rose Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 64GB Rose Gold, MN912RU/A.'),
	(65, 2, 'Apple iPhone 7 64GB Rose Gold', '', '', '', '', '', '', ''),
	(66, 1, 'Apple iPhone 7 128GB Rose Gold', '', '', '', 'Apple iPhone 7 128GB Rose Gold - купить в интернет-магазине.', 'Apple iPhone 7 128GB Rose Gold', 'Купить Apple iPhone 7 128GB Rose Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Rose Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Rose Gold, MN9A2RU/A.'),
	(66, 2, 'Apple iPhone 7 128GB Rose Gold', '', '', '', '', '', '', ''),
	(68, 2, 'Apple iPhone 7 128GB Rose Gold', '', '', '', '', '', '', ''),
	(69, 1, 'Apple iPhone 7 128GB Rose Gold', '', '', '', 'Apple iPhone 7 128GB Rose Gold - купить в интернет-магазине.', 'Apple iPhone 7 128GB Rose Gold', 'Купить Apple iPhone 7 128GB Rose Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Rose Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Rose Gold, MN9A2RU/A.'),
	(69, 2, 'Apple iPhone 7 128GB Rose Gold', '', '', '', '', '', '', ''),
	(70, 1, 'Apple iPhone 7 128GB Rose Gold', '', '', '', 'Apple iPhone 7 128GB Rose Gold - купить в интернет-магазине.', 'Apple iPhone 7 128GB Rose Gold', 'Купить Apple iPhone 7 128GB Rose Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Rose Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Rose Gold, MN9A2RU/A.'),
	(70, 2, 'Apple iPhone 7 128GB Rose Gold', '', '', '', '', '', '', ''),
	(71, 1, 'Apple iPhone 7 128GB Rose Gold', '', '', '', 'Apple iPhone 7 128GB Rose Gold - купить в интернет-магазине.', 'Apple iPhone 7 128GB Rose Gold', 'Купить Apple iPhone 7 128GB Rose Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Rose Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Rose Gold, MN9A2RU/A.'),
	(71, 2, 'Apple iPhone 7 128GB Rose Gold', '', '', '', '', '', '', ''),
	(72, 1, 'Apple iPhone 7 128GB Jat Black', '', '', '', 'Apple iPhone 7 128GB Jat Black - купить в интернет-магазине.', 'Apple iPhone 7 128GB Jat Black', 'Купить Apple iPhone 7 128GB Jat Black в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Jat Black.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Jat Black, MN942RU/A.'),
	(72, 2, 'Apple iPhone 7 128GB Jat Black', '', '', '', '', '', '', ''),
	(73, 1, 'Apple iPhone 7 128GB Jat Black', '', '', '', 'Apple iPhone 7 128GB Jat Black - купить в интернет-магазине.', 'Apple iPhone 7 128GB Jat Black', 'Купить Apple iPhone 7 128GB Jat Black в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Jat Black.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Jat Black, MN942RU/A.'),
	(73, 2, 'Apple iPhone 7 128GB Jat Black', '', '', '', '', '', '', ''),
	(74, 1, 'Apple iPhone 7 128GB Jat Black', '', '', '', 'Apple iPhone 7 128GB Jat Black - купить в интернет-магазине.', 'Apple iPhone 7 128GB Jat Black', 'Купить Apple iPhone 7 128GB Jat Black в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Jat Black.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Jat Black, MN942RU/A.'),
	(74, 2, 'Apple iPhone 7 128GB Jat Black', '', '', '', '', '', '', ''),
	(75, 1, 'Apple iPhone 7 128GB Jat Black', '', '', '', 'Apple iPhone 7 128GB Jat Black - купить в интернет-магазине.', 'Apple iPhone 7 128GB Jat Black', 'Купить Apple iPhone 7 128GB Jat Black в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Jat Black.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Jat Black, MN942RU/A.'),
	(75, 2, 'Apple iPhone 7 128GB Jat Black', '', '', '', '', '', '', ''),
	(76, 1, 'Apple iPhone 7 128GB Jat Black', '', '', '', 'Apple iPhone 7 128GB Jat Black - купить в интернет-магазине.', 'Apple iPhone 7 128GB Jat Black', 'Купить Apple iPhone 7 128GB Jat Black в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Jat Black.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Jat Black, MN942RU/A.'),
	(76, 2, 'Apple iPhone 7 128GB Jat Black', '', '', '', '', '', '', ''),
	(77, 1, 'Apple iPhone 7 128GB Jat Black', '', '', '', 'Apple iPhone 7 128GB Jat Black - купить в интернет-магазине.', 'Apple iPhone 7 128GB Jat Black', 'Купить Apple iPhone 7 128GB Jat Black в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Jat Black.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Jat Black, MN942RU/A.'),
	(77, 2, 'Apple iPhone 7 128GB Jat Black', '', '', '', '', '', '', ''),
	(78, 1, 'Apple iPhone 7 128GB Jat Black', '', '', '', 'Apple iPhone 7 128GB Jat Black - купить в интернет-магазине.', 'Apple iPhone 7 128GB Jat Black', 'Купить Apple iPhone 7 128GB Jat Black в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Jat Black.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Jat Black, MN942RU/A.'),
	(78, 2, 'Apple iPhone 7 128GB Jat Black', '', '', '', '', '', '', ''),
	(79, 1, 'Apple iPhone 7 128GB Red', '', '', '', 'Apple iPhone 7 128GB Red - купить в интернет-магазине.', 'Apple iPhone 7 128GB Red', 'Купить Apple iPhone 7 128GB Red в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Red.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Red, MPRL2RU/A.'),
	(79, 2, 'Apple iPhone 7 128GB Red', '', '', '', '', '', '', ''),
	(80, 1, 'Apple iPhone 7 128GB Rose Gold', '', '', '', 'Apple iPhone 7 128GB Rose Gold - купить в интернет-магазине.', 'Apple iPhone 7 128GB Rose Gold', 'Купить Apple iPhone 7 128GB Rose Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Rose Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Rose Gold, MN9A2RU/A.'),
	(80, 2, 'Apple iPhone 7 128GB Rose Gold', '', '', '', '', '', '', ''),
	(63, 1, 'Apple iPhone 7 128GB Jat Black', '', '', '', 'Apple iPhone 7 128GB Jat Black - купить в интернет-магазине.', 'Apple iPhone 7 128GB Jat Black', 'Купить Apple iPhone 7 128GB Jat Black в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Jat Black.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Jat Black, MN942RU/A.'),
	(50, 1, 'iPhone SE Space Gray', '', '', '', 'iPhone SE Space Gray - купить в интернет-магазине.', 'iPhone SE Space Gray', 'Купить iPhone SE Space Gray в интернет-магазине. Описание, характеристики, отзывы и цена iPhone SE Space Gray.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, iPhone SE Space Gray, 16 Гб.'),
	(63, 2, 'Apple iPhone 7 128GB Jat Black', '', '', '', '', '', '', ''),
	(59, 1, 'Apple iPhone 8 64GB Space Gray', '', '', '', 'Apple iPhone 8 64GB Space Gray - купить в интернет-магазине.', 'Apple iPhone 8 64GB Space Gray', 'Купить Apple iPhone 8 64GB Space Gray в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 8 64GB Space Gray.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 8 64GB Space Gray, Серый Космос.'),
	(51, 2, 'iPhone SE Silver', '', '', '', '', '', '', ''),
	(51, 1, 'iPhone SE Silver', '', '', '', 'iPhone SE Silver - купить в интернет-магазине.', 'iPhone SE Silver', 'Купить iPhone SE Silver в интернет-магазине. Описание, характеристики, отзывы и цена iPhone SE Silver.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, iPhone SE Silver, 16 Гб.'),
	(59, 2, 'Apple iPhone 8 64GB Space Gray', '', '', '', '', '', '', ''),
	(52, 2, 'Apple iPhone 7 32GB Black', '', '', '', '', '', '', ''),
	(52, 1, 'Apple iPhone 7 32GB Black', '', '', '', 'Apple iPhone 7 32GB Black - купить в интернет-магазине.', 'Apple iPhone 7 32GB Black', 'Купить Apple iPhone 7 32GB Black в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 32GB Black.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 32GB Black, MN8X2RU/A.'),
	(61, 1, 'Apple iPhone 8 64GB Silver', '', '', '', 'Apple iPhone 8 64GB Silver - купить в интернет-магазине.', 'Apple iPhone 8 64GB Silver', 'Купить Apple iPhone 8 64GB Silver в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 8 64GB Silver.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 8 64GB Silver, Серебристый.'),
	(53, 1, 'Apple iPhone 7 128GB Gold', '', '', '', 'Apple iPhone 7 128GB Gold - купить в интернет-магазине.', 'Apple iPhone 7 128GB Gold', 'Купить Apple iPhone 7 128GB Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Gold, MN942RU/A.'),
	(67, 2, 'Apple iPhone 7 128GB Rose Gold', '', '', '', '', '', '', ''),
	(54, 1, 'Apple iPhone 7 128GB Black', '', '', '', 'Apple iPhone 7 128GB Black - купить в интернет-магазине.', 'Apple iPhone 7 128GB Black', 'Купить Apple iPhone 7 128GB Black в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Black.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Black, MN942RU/A.'),
	(55, 2, 'Apple iPhone 7 256GB Rose Gold', '', '', '', '', '', '', ''),
	(55, 1, 'Apple iPhone 7 256GB Rose Gold', '', '', '', 'Apple iPhone 7 256GB Rose Gold - купить в интернет-магазине.', 'Apple iPhone 7 256GB Rose Gold', 'Купить Apple iPhone 7 256GB Rose Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 256GB Rose Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 256GB Rose Gold, MN9A2RU/A.'),
	(60, 1, 'Apple iPhone 8 256GB Space Gray', '', '', '', 'Apple iPhone 8 256GB Space Gray - купить в интернет-магазине.', 'Apple iPhone 8 256GB Space Gray', 'Купить Apple iPhone 8 256GB Space Gray в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 8 256GB Space Gray.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 8 256GB Space Gray, Серый Космос.'),
	(56, 1, 'Apple iPhone 7 32GB Rose Gold', '', '', '', 'Apple iPhone 7 32GB Rose Gold - купить в интернет-магазине.', 'Apple iPhone 7 32GB Rose Gold', 'Купить Apple iPhone 7 32GB Rose Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 32GB Rose Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 32GB Rose Gold, MN912RU/A.'),
	(68, 1, 'Apple iPhone 7 128GB Rose Gold', '', '', '', 'Apple iPhone 7 128GB Rose Gold - купить в интернет-магазине.', 'Apple iPhone 7 128GB Rose Gold', 'Купить Apple iPhone 7 128GB Rose Gold в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Rose Gold.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Rose Gold, MN9A2RU/A.'),
	(57, 1, 'Apple iPhone 7 128GB Red', '', '', '', 'Apple iPhone 7 128GB Red - купить в интернет-магазине.', 'Apple iPhone 7 128GB Red', 'Купить Apple iPhone 7 128GB Red в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 7 128GB Red.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 7 128GB Red, MPRL2RU/A.'),
	(62, 1, 'Apple iPhone 8 256GB Silver', '', '', '', 'Apple iPhone 8 256GB Silver - купить в интернет-магазине.', 'Apple iPhone 8 256GB Silver', 'Купить Apple iPhone 8 256GB Silver в интернет-магазине. Описание, характеристики, отзывы и цена Apple iPhone 8 256GB Silver.', 'купить, продажа, цена, стоимость, описание, характеристики, отзывы, интернет магазин, Apple, Apple iPhone 8 256GB Silver, Серебристый.'),
	(50, 2, 'iPhone SE Space Gray', '', '', '', '', '', '', ''),
	(53, 2, 'Apple iPhone 7 128GB Gold', '', '', '', '', '', '', ''),
	(54, 2, 'Apple iPhone 7 128GB Black', '', '', '', '', '', '', ''),
	(56, 2, 'Apple iPhone 7 32GB Rose Gold', '', '', '', '', '', '', ''),
	(57, 2, 'Apple iPhone 7 128GB Red', '', '', '', '', '', '', ''),
	(60, 2, 'Apple iPhone 8 256GB Space Gray', '', '', '', '', '', '', ''),
	(61, 2, 'Apple iPhone 8 64GB Silver', '', '', '', '', '', '', ''),
	(62, 2, 'Apple iPhone 8 256GB Silver', '', '', '', '', '', '', '');

DELETE FROM `oc_product_discount`;

DELETE FROM `oc_product_image`;
INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`, `video`) VALUES
	(2489, 61, 'catalog/revolution/demo_tovars/apple/prods/8-2_3.jpg', 2, ''),
	(2490, 61, 'catalog/revolution/demo_tovars/apple/prods/8-2_4.jpg', 3, ''),
	(2505, 63, 'catalog/revolution/demo_tovars/apple/prods/7_3.jpg', 2, ''),
	(2488, 61, 'catalog/revolution/demo_tovars/apple/prods/8-2_2.jpg', 1, ''),
	(2487, 60, 'catalog/revolution/demo_tovars/apple/prods/8_4.jpg', 3, ''),
	(2486, 60, 'catalog/revolution/demo_tovars/apple/prods/8_3.jpg', 2, ''),
	(2485, 60, 'catalog/revolution/demo_tovars/apple/prods/8_2.jpg', 1, ''),
	(2493, 59, 'catalog/revolution/demo_tovars/apple/prods/8_4.jpg', 3, ''),
	(2492, 59, 'catalog/revolution/demo_tovars/apple/prods/8_3.jpg', 2, ''),
	(2491, 59, 'catalog/revolution/demo_tovars/apple/prods/8_2.jpg', 1, ''),
	(2521, 66, 'catalog/revolution/demo_tovars/apple/prods/7-3_3.jpg', 2, ''),
	(2479, 52, 'catalog/revolution/demo_tovars/apple/prods/7_3.jpg', 2, ''),
	(2478, 52, 'catalog/revolution/demo_tovars/apple/prods/7_2.jpg', 1, ''),
	(2472, 57, 'catalog/revolution/demo_tovars/apple/prods/7-4_3.jpg', 2, ''),
	(2471, 57, 'catalog/revolution/demo_tovars/apple/prods/7-4_2.jpg', 1, ''),
	(2469, 53, 'catalog/revolution/demo_tovars/apple/prods/7-2_3.jpg', 2, ''),
	(2468, 53, 'catalog/revolution/demo_tovars/apple/prods/7-2_2.jpg', 1, ''),
	(2470, 57, 'catalog/revolution/demo_tovars/apple/prods/7-4_4.jpg', 0, ''),
	(2481, 56, 'catalog/revolution/demo_tovars/apple/prods/7-3_3.jpg', 2, ''),
	(2480, 56, 'catalog/revolution/demo_tovars/apple/prods/7-3_2.jpg', 1, ''),
	(2529, 54, 'catalog/revolution/demo_tovars/apple/prods/7_3.jpg', 2, ''),
	(2528, 54, 'catalog/revolution/demo_tovars/apple/prods/7_2.jpg', 1, ''),
	(2477, 55, 'catalog/revolution/demo_tovars/apple/prods/7-3_3.jpg', 2, ''),
	(2476, 55, 'catalog/revolution/demo_tovars/apple/prods/7-3_2.jpg', 1, ''),
	(2527, 65, 'catalog/revolution/demo_tovars/apple/prods/7-3_3.jpg', 2, ''),
	(2526, 65, 'catalog/revolution/demo_tovars/apple/prods/7-3_2.jpg', 1, ''),
	(2496, 51, 'catalog/revolution/demo_tovars/apple/prods/5se2_4.jpg', 3, ''),
	(2495, 51, 'catalog/revolution/demo_tovars/apple/prods/5se2_3.jpg', 2, ''),
	(2494, 51, 'catalog/revolution/demo_tovars/apple/prods/5se2_2.jpg', 1, ''),
	(2499, 50, 'catalog/revolution/demo_tovars/apple/prods/5se1_2.jpg', 0, ''),
	(2498, 50, 'catalog/revolution/demo_tovars/apple/prods/5se1_3.jpg', 0, ''),
	(2497, 50, 'catalog/revolution/demo_tovars/apple/prods/5se1_4.jpg', 0, ''),
	(2484, 62, 'catalog/revolution/demo_tovars/apple/prods/8-2_4.jpg', 3, ''),
	(2483, 62, 'catalog/revolution/demo_tovars/apple/prods/8-2_3.jpg', 2, ''),
	(2482, 62, 'catalog/revolution/demo_tovars/apple/prods/8-2_2.jpg', 1, ''),
	(2504, 63, 'catalog/revolution/demo_tovars/apple/prods/7_2.jpg', 1, ''),
	(2511, 64, 'catalog/revolution/demo_tovars/apple/prods/7-4_3.jpg', 2, ''),
	(2510, 64, 'catalog/revolution/demo_tovars/apple/prods/7-4_2.jpg', 1, ''),
	(2509, 64, 'catalog/revolution/demo_tovars/apple/prods/7-4_4.jpg', 0, ''),
	(2520, 66, 'catalog/revolution/demo_tovars/apple/prods/7-3_2.jpg', 1, ''),
	(2530, 67, 'catalog/revolution/demo_tovars/apple/prods/7-3_2.jpg', 1, ''),
	(2531, 67, 'catalog/revolution/demo_tovars/apple/prods/7-3_3.jpg', 2, ''),
	(2532, 68, 'catalog/revolution/demo_tovars/apple/prods/7-3_2.jpg', 1, ''),
	(2533, 68, 'catalog/revolution/demo_tovars/apple/prods/7-3_3.jpg', 2, ''),
	(2534, 69, 'catalog/revolution/demo_tovars/apple/prods/7-3_2.jpg', 1, ''),
	(2535, 69, 'catalog/revolution/demo_tovars/apple/prods/7-3_3.jpg', 2, ''),
	(2536, 70, 'catalog/revolution/demo_tovars/apple/prods/7-3_2.jpg', 1, ''),
	(2537, 70, 'catalog/revolution/demo_tovars/apple/prods/7-3_3.jpg', 2, ''),
	(2538, 71, 'catalog/revolution/demo_tovars/apple/prods/7-3_2.jpg', 1, ''),
	(2539, 71, 'catalog/revolution/demo_tovars/apple/prods/7-3_3.jpg', 2, ''),
	(2540, 72, 'catalog/revolution/demo_tovars/apple/prods/7_2.jpg', 1, ''),
	(2541, 72, 'catalog/revolution/demo_tovars/apple/prods/7_3.jpg', 2, ''),
	(2542, 73, 'catalog/revolution/demo_tovars/apple/prods/7_2.jpg', 1, ''),
	(2543, 73, 'catalog/revolution/demo_tovars/apple/prods/7_3.jpg', 2, ''),
	(2544, 74, 'catalog/revolution/demo_tovars/apple/prods/7_2.jpg', 1, ''),
	(2545, 74, 'catalog/revolution/demo_tovars/apple/prods/7_3.jpg', 2, ''),
	(2546, 75, 'catalog/revolution/demo_tovars/apple/prods/7_2.jpg', 1, ''),
	(2547, 75, 'catalog/revolution/demo_tovars/apple/prods/7_3.jpg', 2, ''),
	(2548, 76, 'catalog/revolution/demo_tovars/apple/prods/7_2.jpg', 1, ''),
	(2549, 76, 'catalog/revolution/demo_tovars/apple/prods/7_3.jpg', 2, ''),
	(2550, 77, 'catalog/revolution/demo_tovars/apple/prods/7_2.jpg', 1, ''),
	(2551, 77, 'catalog/revolution/demo_tovars/apple/prods/7_3.jpg', 2, ''),
	(2552, 78, 'catalog/revolution/demo_tovars/apple/prods/7_2.jpg', 1, ''),
	(2553, 78, 'catalog/revolution/demo_tovars/apple/prods/7_3.jpg', 2, ''),
	(2554, 79, 'catalog/revolution/demo_tovars/apple/prods/7-4_4.jpg', 0, ''),
	(2555, 79, 'catalog/revolution/demo_tovars/apple/prods/7-4_2.jpg', 1, ''),
	(2556, 79, 'catalog/revolution/demo_tovars/apple/prods/7-4_3.jpg', 2, ''),
	(2557, 80, 'catalog/revolution/demo_tovars/apple/prods/7-3_2.jpg', 1, ''),
	(2558, 80, 'catalog/revolution/demo_tovars/apple/prods/7-3_3.jpg', 2, '');

DELETE FROM `oc_product_option`;
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
	(227, 50, 13, '', 1),
	(229, 51, 13, '', 1);

DELETE FROM `oc_product_option_value`;
INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`, `opt_image`, `model`) VALUES
	(23, 227, 50, 13, 52, 1, 0, 26990.0000, '=', 0, '+', 0.00, '+', '', '128 Гб'),
	(25, 229, 51, 13, 52, 1, 0, 26990.0000, '=', 0, '+', 0.00, '+', '', ''),
	(24, 229, 51, 13, 49, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(18, 227, 50, 13, 51, 2, 0, 23990.0000, '=', 0, '+', 0.00, '+', '', '64 Гб'),
	(17, 227, 50, 13, 49, 4, 0, 0.0000, '+', 0, '+', 0.00, '+', '', '16 Гб');

DELETE FROM `oc_product_related`;

DELETE FROM `oc_product_reward`;

DELETE FROM `oc_product_special`;
INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
	(442, 54, 1, 0, 49990.0000, '2017-09-01', '2022-09-01');

DELETE FROM `oc_product_to_category`;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`, `main_category`) VALUES
	(79, 75, 1),
	(76, 75, 1),
	(78, 75, 1),
	(75, 75, 1),
	(77, 75, 1),
	(74, 75, 1),
	(73, 75, 1),
	(72, 75, 1),
	(50, 70, 1),
	(71, 75, 1),
	(70, 75, 1),
	(51, 70, 1),
	(69, 75, 1),
	(59, 77, 1),
	(68, 75, 1),
	(80, 75, 1),
	(61, 77, 1),
	(67, 75, 1),
	(65, 75, 1),
	(60, 77, 1),
	(57, 75, 1),
	(62, 77, 1),
	(53, 75, 1),
	(54, 75, 1),
	(56, 75, 1),
	(66, 75, 1),
	(52, 75, 1),
	(55, 75, 1),
	(64, 75, 1),
	(63, 75, 1);

DELETE FROM `oc_product_to_download`;

DELETE FROM `oc_product_to_layout`;
INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
	(50, 0, 0),
	(51, 0, 0),
	(52, 0, 0),
	(53, 0, 0),
	(54, 0, 0),
	(55, 0, 0),
	(56, 0, 0),
	(57, 0, 0),
	(65, 0, 0),
	(59, 0, 0),
	(60, 0, 0),
	(61, 0, 0),
	(62, 0, 0),
	(63, 0, 0),
	(64, 0, 0),
	(66, 0, 0),
	(67, 0, 0),
	(68, 0, 0),
	(69, 0, 0),
	(70, 0, 0),
	(71, 0, 0),
	(72, 0, 0),
	(73, 0, 0),
	(74, 0, 0),
	(75, 0, 0),
	(76, 0, 0),
	(77, 0, 0),
	(78, 0, 0),
	(79, 0, 0),
	(80, 0, 0);

DELETE FROM `oc_product_to_store`;
INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
	(50, 0),
	(51, 0),
	(52, 0),
	(53, 0),
	(54, 0),
	(55, 0),
	(56, 0),
	(57, 0),
	(59, 0),
	(60, 0),
	(61, 0),
	(62, 0),
	(63, 0),
	(64, 0),
	(65, 0),
	(66, 0),
	(67, 0),
	(68, 0),
	(69, 0),
	(70, 0),
	(71, 0),
	(72, 0),
	(73, 0),
	(74, 0),
	(75, 0),
	(76, 0),
	(77, 0),
	(78, 0),
	(79, 0),
	(80, 0);

DELETE FROM `oc_review`;
INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `answer`, `answer_from`, `rating`, `status`, `date_added`, `date_modified`) VALUES
	(1, 54, 0, 'Василий', 'Уже много лет пользуюсь яблочной продукцией, и семья на это подсела тоже (Iphone 3, 4, 4s, 5s, 6, 7, Apple TV, Ipad 2, Air2 и еще чего не помню). Но с каждым новым Iphone понимаю, что меня заставляют покупать за 50т.р. совсем не флагманский телефон в котором часто выдают за прорыв то, что у других уже давно стало нормой.\r\n\r\nИ вот заменив свой Iphone 5s, купленный года 3 назад (не помню точно) на Iphone 7, почувствовал что меня надули. Сам не играю в игры, фотографией не увлекаюсь, телефон использую в рабочих целях + иногда послушать музыку. Пятерка по скорости меня устраивала, все необходимое в ней было, включая противоударность (за 3 года ношения без чехлов и пленок, экран без заметных царапин, задняя часть тоже, рамка местами помята от падений, но выглядит вполне прилично). Боюсь даже подумать, что будет с новым после первого же падения. ', 'Спасибо за отзыв, Василий.', 'Менеджер Виктор', 4, 1, '2017-10-02 12:16:15', '2017-10-02 12:18:12'),
	(2, 54, 0, 'Маша', 'По факту отличия от 6s минимальны. На 7 переходить с неё не стоит.\r\nПамяти столько, что не думаешь о занятом месте.', '', 'Администратор', 5, 1, '2017-09-20 12:19:02', '2017-10-02 12:19:26');

UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'tax_status';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_product_count';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/cart.png' WHERE `key` = 'config_icon';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/logo.svg' WHERE `key` = 'config_logo';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_stock_display';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_tax';
UPDATE `oc_setting` SET `value` = '' WHERE `key` = 'config_telephone';
UPDATE `oc_setting` SET `value` = 'mail@apple.oc-mod.ru' WHERE `key` = 'config_email';
UPDATE `oc_setting` SET `value` = 'г. Москва, ул. Никольская, д. 25' WHERE `key` = 'config_address';
UPDATE `oc_setting` SET `value` = 'Интернет-магазин техники Apple' WHERE `key` = 'config_name';
UPDATE `oc_setting` SET `value` = 'Интернет-магазин техники Apple' WHERE `key` = 'config_meta_title';
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
	('', 'category_id=88', 'ipod_touch'),
	('', 'category_id=87', 'ipod_nano'),
	('', 'manufacturer_id=8', 'apple'),
	('', 'information_id=4', 'o_kompanii'),
	('', 'category_id=86', 'ipod_shuffle'),
	('', 'category_id=85', 'ipad_pro'),
	('', 'category_id=84', 'ipad_1'),
	('', 'category_id=83', 'ipad_mini_4'),
	('', 'product_id=64', 'apple_iphone_7_256gb_red'),
	('', 'product_id=63', 'apple_iphone_7_128gb_jat_black'),
	('', 'product_id=62', 'apple_iphone_8_256gb_silver'),
	('', 'product_id=61', 'apple_iphone_8_64gb_silver'),
	('', 'product_id=60', 'apple_iphone_8_256gb_space_gray'),
	('', 'product_id=59', 'apple_iphone_8_64gb_space_gray'),
	('', 'product_id=57', 'apple_iphone_7_128gb_red'),
	('', 'product_id=56', 'apple_iphone_7_32gb_rose_gold'),
	('', 'product_id=55', 'apple_iphone_7_256gb_rose_gold'),
	('', 'product_id=54', 'apple_iphone_7_128gb_black'),
	('', 'product_id=53', 'apple_iphone_7_128gb_gold'),
	('', 'category_id=82', 'watch_series_3'),
	('', 'category_id=81', 'watch_series_2'),
	('', 'category_id=80', 'watch_series_1'),
	('', 'category_id=79', 'iphone_x'),
	('', 'category_id=78', 'iphone_8_plus'),
	('', 'category_id=77', 'iphone_8'),
	('', 'category_id=76', 'iphone_7_plus'),
	('', 'category_id=75', 'iphone_7'),
	('', 'category_id=74', 'iphone_6s_plus'),
	('', 'category_id=73', 'iphone_6s'),
	('', 'category_id=72', 'iphone_6_plus'),
	('', 'category_id=71', 'iphone_6'),
	('', 'category_id=70', 'iphone_se'),
	('', 'category_id=66', 'imac'),
	('', 'category_id=67', 'mac_mini'),
	('', 'category_id=68', 'mac_pro'),
	('', 'product_id=52', 'apple_iphone_7_32gb_black'),
	('', 'product_id=51', 'iphone_se_silver'),
	('', 'revblog_id=3', 'internet_5g_poyavitsya_i_v_rossii'),
	('', 'information_id=3', 'politika_konfidencialnosti'),
	('', 'revolution/revplast', 'latest'),
	('', 'revolution/revstorereview', 'otzivy'),
	('', 'revolution/revcheckout', 'make_order'),
	('', 'revolution/account/revaccount', 'my_account'),
	('', 'revolution/account/revedit', 'edit_account'),
	('', 'revolution/account/revregister', 'register_account'),
	('', 'revolution/revpbest', 'best'),
	('', 'category_id=69', 'iphone_5s'),
	('', 'category_id=64', 'aksessuary'),
	('', 'category_id=65', 'macbook'),
	('', 'category_id=63', 'ipod'),
	('', 'category_id=62', 'ipad'),
	('', 'category_id=61', 'watch'),
	('', 'information_id=6', 'dostavka_i_oplata'),
	('', 'information_id=5', 'garantiya'),
	('', 'revblog_id=2', 'obnovite_iphone_ipad_i_ipod_touch_do_ios_11_final'),
	('', 'revblog_category_id=1', 'novosti_i_obzory'),
	('', 'product_id=65', 'apple_iphone_7_64gb_rose_gold'),
	('', 'product_id=66', 'apple_iphone_7_128gb_rose_gold'),
	('', 'category_id=60', 'iphone'),
	('', 'product_id=67', 'apple_iphone_7_128gb_rose_gold_1'),
	('', 'product_id=50', 'iphone_se_space_gray'),
	('', 'revblog_id=1', 'obzor_apple_iphone_8_i_iphone_8_plus'),
	('', 'category_id=59', 'mac'),
	('', 'product_id=68', 'apple_iphone_7_128gb_rose_gold_2'),
	('', 'product_id=69', 'apple_iphone_7_128gb_rose_gold_3'),
	('', 'product_id=70', 'apple_iphone_7_128gb_rose_gold_4'),
	('', 'product_id=71', 'apple_iphone_7_128gb_rose_gold_5'),
	('', 'product_id=72', 'apple_iphone_7_128gb_jat_black_1'),
	('', 'product_id=73', 'apple_iphone_7_128gb_jat_black_2'),
	('', 'product_id=74', 'apple_iphone_7_128gb_jat_black_3'),
	('', 'product_id=75', 'apple_iphone_7_128gb_jat_black_4'),
	('', 'product_id=76', 'apple_iphone_7_128gb_jat_black_5'),
	('', 'product_id=77', 'apple_iphone_7_128gb_jat_black_6'),
	('', 'product_id=78', 'apple_iphone_7_128gb_jat_black_7'),
	('', 'product_id=79', 'apple_iphone_7_128gb_red_1'),
	('', 'product_id=80', 'apple_iphone_7_128gb_rose_gold_6');

DELETE FROM `oc_setting` WHERE `code` LIKE "rev%" AND `key` LIKE "rev%" AND `key` NOT LIKE "revtheme_license%" AND `key` NOT LIKE "revthemel_license";

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_geo_set', '{"status":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_all_settings', '{"color_all_document":"FFFFFF","color_href":"1970C9","color_href_hover":"215690","color_cart":"2A6FBA","color_cart_hover":"3498DB","color_top3":"333333","color_footer":"333333","color_amazon":"888888","color_top3_cart":"494949","all_document_width":"1","all_document_h_f_width":"0","all_document_margin":"1","all_fon_image":"catalog\\/revolution\\/backgrounds\\/random_grey_variations.png","all_fon_image_css_1":"1","all_fon_image_css_2":"1","all_fon_image_css_3":"1","all_content_width":"0","color_selecta":"EAEAEA","preloader":"catalog\\/revolution\\/preloaders\\/revpreloader1.svg","cat_compact":"1","cat_opis_opt":"0","cache_on":"1","error404":"1","n_progres":"1","razmiv_cont":"0","zatemn_cont":"1","opacity_cont":"1","pol_konf":"3","pol_konf_tvivod":"0","revcheckout_status":"1","revcheckout_login":"1","revcheckout_register":"0","revcheckout_customer_group":"0","revcheckout_name":"1","revcheckout_family":"0","revcheckout_telephone":"2","revcheckout_telephone_mask":"+7 (999) 9999999","revcheckout_mail":"0","revcheckout_comment":"0","revcheckout_reg_adres":"0","revcheckout_country":"0","revcheckout_region":"0","revcheckout_index":"0","revcheckout_city":"0","revcheckout_adres":"0","revcheckout_foto":"1","revcheckout_model":"1","revcheckout_sku":"0","revcheckout_kolvo":"1","revcheckout_vsego":"1","1":{"revcheckout_description":"&lt;p style=&quot;text-align: right; &quot;&gt;\\u0417\\u0434\\u0435\\u0441\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u043d\\u0430\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0442\\u0435\\u043a\\u0441\\u0442.&lt;\\/p&gt;&lt;p style=&quot;text-align: right; &quot;&gt;\\u041d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440: \\u0412\\u044b \\u0443\\u0447\\u0430\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442\\u0435 \\u0432 \\u0430\\u043a\\u0446\\u0438\\u0438 &quot;&lt;a href=&quot;novosti_i_obzory\\/internet_5g_poyavitsya_i_v_rossii&quot; class=&quot;popup_html_content&quot;&gt;&lt;b&gt;\\u0421\\u043a\\u0438\\u0434\\u043a\\u0430 3 000 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439 \\u043d\\u0430 iPhone&lt;\\/b&gt;&lt;\\/a&gt;&quot;.&lt;\\/p&gt;","revregister_description":"","revaccount_description":"","description":"&lt;p&gt;&lt;i style=&quot;font-size: 20px;&quot; class=&quot;fa fa-mobile&quot;&gt;&lt;\\/i&gt;8 (800) 700-40-40&lt;\\/p&gt;&lt;p&gt;\r\n&lt;i style=&quot;font-size: 20px;&quot; class=&quot;fa fa-map-marker&quot;&gt;&lt;\\/i&gt;\\u0433. \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0443\\u043b. \\u041d\\u0438\\u043a\\u043e\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f, \\u0434. 25 (\\u0432\\u0445\\u043e\\u0434 \\u0441\\u043e \\u0434\\u0432\\u043e\\u0440\\u0430)&lt;\\/p&gt;&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;&lt;p&gt;\\u0420\\u0435\\u0436\\u0438\\u043c \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b call-\\u0446\\u0435\\u043d\\u0442\\u0440\\u0430: \\u0441 9:00 \\u0434\\u043e 21:00&lt;\\/p&gt;&lt;p&gt;\\u0420\\u0435\\u0436\\u0438\\u043c \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u043e\\u0442\\u0434\\u0435\\u043b\\u0430 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438: \\u0441 9:00 \\u0434\\u043e 22:00&lt;\\/p&gt;&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;&lt;p&gt;\\u041e\\u041e\\u041e &quot;\\u0421\\u0443\\u043f\\u0435\\u0440\\u041a\\u0440\\u0443\\u0442\\u0430\\u044f\\u0424\\u0438\\u0440\\u043c\\u0430&quot;&lt;\\/p&gt;&lt;p&gt;\\u041e\\u0413\\u0420\\u041d: 0001112223335&lt;\\/p&gt;&lt;p&gt;\\u0418\\u041d\\u041d\\/\\u041a\\u041f\\u041f: 1115557788\\/999555001&lt;\\/p&gt;&lt;p&gt;\\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441:&amp;nbsp;&lt;\\/p&gt;&lt;p&gt;119017, \\u0433. \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0443\\u043b. \\u041a\\u043e\\u0436\\u0435\\u0432\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f, 7\\u04411&lt;\\/p&gt;","modal_header":"","text_no":"\\u041d\\u0435\\u0442","text_yes":"\\u0414\\u0430","modal_text":""},"2":{"revcheckout_description":"","revregister_description":"","revaccount_description":"","description":"","modal_header":"","text_no":"\\u041d\\u0435\\u0442","text_yes":"\\u0414\\u0430","modal_text":""},"revregister_status":"1","revregister_legends":"0","revregister_custom_fields":"0","revregister_customer_group":"0","revregister_name":"1","revregister_family":"0","revregister_telephone":"0","revregister_telephone_mask":"+7 (999) 9999999","revregister_mail":"1","revregister_newsletter":"0","revregister_country":"0","revregister_region":"0","revregister_index":"0","revregister_city":"0","revregister_adres":"0","revaccount_allurls":"1","revaccount_wishlist":"0","revaccount_orders":"1","revaccount_files":"0","revaccount_bonus":"0","revaccount_returns":"0","revaccount_pay_history":"0","revaccount_pay_regular":"0","m_conts":"0","dop_conts":"0","soc_conts":"1","soc_conts_url":"1","f_svazy":"0","yamap":"&lt;iframe src=&quot;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d2244.9631533928764!2d37.62257395185793!3d55.75914228045963!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46b54a5c77a36bd3%3A0xf9277e12c0b4e27f!2sNautilus!5e0!3m2!1sru!2sru!4v1506270780542&quot; width=&quot;750&quot; height=&quot;400&quot; frameborder=&quot;0&quot; style=&quot;border:0&quot; allowfullscreen&gt;&lt;\\/iframe&gt;","otzivy_status":"1","modal_status":"0","modal_time":"0","modal_buttons":"0","microdata_status":"0","microdata_postcode":"","microdata_city":"","microdata_adress":"","microdata_phones":"","microdata_social":"","microdata_email":"","watermark_status_true":"1","watermark_status":"0","watermark_type":"text","watermark_text":"","watermark_image":"no_image.png","watermark_font_size":"10","watermark_color":"333333","watermark_position":"bottomleft","watermark_opacity":"70","watermark_angle":"0","watermark_offset":{"x":"21","y":"10"},"watermark_scaling":{"width":"500","height":"500"},"watermark_min":{"width":"228","height":"228"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_revcheckoutshippay', 'revtheme_revcheckoutshippay', '{"pickup":["adres_on","cod"],"revship2":["adres_on","cod"]}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_tax_class_id', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_cost', '300', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_seo', '{"seogen_rewrite":"1","product_url":"{product_name}","product_meta_title":{"1":"{product_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":""},"product_meta_h1":{"1":"{product_name}","2":""},"product_meta_description":{"1":"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c {product_name} \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435. \\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b \\u0438 \\u0446\\u0435\\u043d\\u0430 {product_name}.","2":""},"product_meta_keyword":{"1":"\\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d, {product_manufacturer}, {product_name}, {product_model}.","2":""},"category_url":"{category_name}","category_meta_title":{"1":"{category_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":""},"category_meta_h1":{"1":"{category_name}","2":""},"category_meta_description":{"1":"{category_name} - \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0446\\u0435\\u043d\\u044b.","2":""},"category_meta_keyword":{"1":"{category_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":""},"manufacturer_url":"{manufacturer_name}","manufacturer_meta_title":{"1":"{manufacturer_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":""},"manufacturer_meta_h1":{"1":"{manufacturer_name}","2":""},"manufacturer_meta_description":{"1":"\\u0412\\u044b\\u0431\\u043e\\u0440 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438\\u0437 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430 {manufacturer_name}.","2":""},"manufacturer_meta_keyword":{"1":"{manufacturer_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":""},"information_url":"{information_name}","information_meta_title":{"1":"{information_name}","2":""},"information_meta_h1":{"1":"{information_name}","2":""},"information_meta_description":{"1":"{information_name}","2":""},"information_meta_keyword":{"1":"{information_name}","2":""},"revblog_category_url":"{revblog_category_name}","revblog_category_meta_title":{"1":"{revblog_category_name}","2":""},"revblog_category_meta_description":{"1":"{revblog_category_name}","2":""},"revblog_category_meta_keyword":{"1":"{revblog_category_name}","2":""},"revblog_url":"{revblog_name}","revblog_meta_title":{"1":"{revblog_name}","2":""},"revblog_meta_description":{"1":"{revblog_category_name} - {revblog_name}.","2":""},"revblog_meta_keyword":{"1":"{revblog_category_name}, {revblog_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_5', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_blog', '{"status":"1","1":{"title":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u041e\\u0431\\u0437\\u043e\\u0440\\u044b"},"2":{"title":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u041e\\u0431\\u0437\\u043e\\u0440\\u044b"},"blog_category_id":"1","news_limit":"3","desc_limit":"0","count_r":"1","icontype":"1","icon":"fa none","image":"no_image.png","image_status":"1","image_width":"400","image_height":"300","b_color":"FFFFFF"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_aboutstore_home', '{"status":"1","1":{"title":"","description":"&lt;p&gt;&lt;b&gt;Apple.oc-mod.ru&lt;\\/b&gt; \\u2014 \\u044d\\u0442\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d, \\u0432 \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u043c \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043d\\u0430\\u0439\\u0442\\u0438 \\u043f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u0433\\u0430\\u0434\\u0436\\u0435\\u0442\\u044b \\u043b\\u0435\\u0433\\u0435\\u043d\\u0434\\u0430\\u0440\\u043d\\u044b\\u0445 \\u0431\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432 \\u043f\\u043e \\u0441\\u0430\\u043c\\u044b\\u043c \\u043f\\u0440\\u0438\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u043c \\u0446\\u0435\\u043d\\u0430\\u043c. \\u0415\\u0441\\u043b\\u0438 \\u0432\\u044b \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0441\\u0442\\u0438 \\u043c\\u043e\\u0431\\u0438\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432\\u043e, \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u043c, \\u043d\\u0430\\u0434\\u0451\\u0436\\u043d\\u044b\\u043c \\u0438 \\u0432\\u043e\\u0437\\u044c\\u043c\\u0451\\u0442 \\u043d\\u0430 \\u0441\\u0435\\u0431\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u0439 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440\\u0430, \\u0442\\u043e \\u0432\\u044b \\u043d\\u0435 \\u043e\\u0448\\u0438\\u0431\\u043b\\u0438\\u0441\\u044c \\u0430\\u0434\\u0440\\u0435\\u0441\\u043e\\u043c!&lt;\\/p&gt;&lt;p&gt;\\u041c\\u044b \\u043f\\u043e\\u0441\\u0442\\u0430\\u0440\\u0430\\u043b\\u0438\\u0441\\u044c \\u0441\\u0434\\u0435\\u043b\\u0430\\u0442\\u044c \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441 \\u043f\\u043e\\u0434\\u0431\\u043e\\u0440\\u0430 \\u0438 \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0438 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0443\\u0441\\u0442\\u0440\\u043e\\u0439\\u0441\\u0442\\u0432 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e \\u0431\\u044b\\u0441\\u0442\\u0440\\u044b\\u043c \\u0438 \\u0443\\u0434\\u043e\\u0431\\u043d\\u044b\\u043c.&lt;\\/p&gt;"},"2":{"title":"","description":""},"icontype":"1","icon":"fa fa-pencil-square-o","image":"no_image.png"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_socv', '{"status_vk":"0","width_vk":"260","height_vk":"280","id_vk":"20003922","status_fb":"1","width_fb":"260","height_fb":"280","id_fb":"apple","status_ok":"0","width_ok":"260","height_ok":"280","id_ok":"50582132228315","status_insta":"1","right_insta":"0","width_insta":"260","id_insta":"apple"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_storereview', '{"status":"1","1":{"title":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432","button_all_text":"\\u0427\\u0438\\u0442\\u0430\\u0442\\u044c \\u0432\\u0441\\u0435 \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b"},"2":{"title":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432","button_all_text":"\\u0427\\u0438\\u0442\\u0430\\u0442\\u044c \\u0432\\u0441\\u0435 \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b"},"icontype":"1","icon":"fa fa-comments-o","image":"no_image.png","button_all":"1","limit":"6","order":"0","limit_text":"200"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_viewed_products', '{"status":"0","1":{"zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"2":{"zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"icontype":"1","icon":"fa none","image":"no_image.png","limit":"8"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_user_set', '{"styles":".refine_categories a {margin-bottom: 25px; font-size: 16px;}\r\n#menu .nav &gt; li:first-child {border-left: 1px solid rgba(0,0,0, 0.4);}\r\n#menu .nav &gt; li {border-right: 1px solid rgba(0,0,0, 0.4);}\r\n#menu a span img {opacity: 0.7;}\r\n#menu .nav &gt; li &gt; a {font-size: 17px;}\r\n.owl-carousel .owl-item {padding: 0 2px;}\r\n@media (min-width: 992px) {\r\n#revslideshow.owl-carousel {padding: 2px; background: #fff; box-shadow: 0 0 2px 1px #ddd;}\r\n#menu .dropdown-inner {margin: 15px 0 0 0;}\r\n.product-thumb:hover .image img.zatemnenie_img {opacity: 1;}\r\n.product-thumb:hover .image img {opacity: 1;}\r\n}\r\n#top4 {background: linear-gradient(to right, #fcede6 0%,#eeeeee 100%);}\r\n.heading_ico_image&gt;img {margin-top: -5px;}\r\n#fb_groups {margin: 10px 0;}\r\n.mmmenu .img_sub {bottom: 4px; right: 0px; opacity: 0.1; width: 10%;}\r\n.product-info input[type=\'radio\'] + label, .product-info input[type=\'checkbox\'] + label {padding: 4px 10px 2px;}\r\n.product-thumb .fa-border.fa-shopping-basket:before {content: none;}\r\n.prlistb {padding-left: 0;}\r\n.zatemnenie_img {filter: none; opacity: 1;}\r\n#top2 .header_conts {padding-right: 5px; margin-top: 0;}\r\n.search {margin-top: 20px;}\r\n.product-layout.new_line .product-thumb .product_buttons .clearfix {display: none;}\r\n.product-layout.new_line .product_buttons .price {margin-bottom: 5px;}\r\n.home_catwalls {margin-bottom: 35px;}\r\n.home_catwalls a {font-weight: bold; font-size: 14px;}\r\n.rev_slider .product-layout.col-xs-12 .product-thumb {margin-bottom: 25px;}\r\n.common-home .rev_slider .heading_h {left: 50%; width: 240px; text-align: center; margin-left: -120px;}\r\n.common-home .rev_slider {padding-top: 30px;}\r\nh3 {font-size: 21px;}\r\n#revcheckout .ship_metod .panel-default&gt;.panel-heading {display: none;}\r\n#revcheckout .ship_metod .panel {border-top: 1px solid #eee; margin-top: -10px; padding-top: 12px;}\r\n.header_search_doptext {text-align: center;}\r\n.header_search_doptext a {border-bottom: 1px solid #aaa; font-size: 15px;}\r\n.header_search_doptext a:hover {border-bottom: 0;}\r\n.header_search_doptext {display: none;}\r\n@media (min-width: 768px) {.header_search_doptext {display: block;}}\r\n@media (min-width: 1200px) {.header_search_doptext {padding-left: 40px;}}\r\n#menu .nav &gt; li:last-child i {font-size: 14px;}\r\n#menu .nav &gt; li:last-child a {color: #F9BF3B;}\r\n.image .stiker {box-shadow: none;}\r\n.price-new, .update_special {background: #FDE3A7; padding: 1px 5px; border-radius: 2px;}\r\n.product-info .form-group .list-unstyled .update_price.oldprice {padding-right: 5px;}\r\n.top-links.verh &gt; ul &gt; li&gt; a {padding: 0 8px;}\r\n.information-contact h3 {margin-top: 0;}\r\n.footer .zag_dm_cf {color: #ccc; border-bottom: 1px solid #888;}\r\n.cf_3_width {width: 55% !important; color: #ccc;}\r\nfooter .footer .footer_cfs {padding-bottom: 10px;}\r\nfooter .powered {display: none;}\r\n.fa-heart:before {content: &quot;\\\\f08a&quot;;}\r\n.fa-user:before {content: &quot;\\\\f2c0&quot;;}\r\n.fa-legal:before, .fa-gavel:before {content: &quot;\\\\f1d9&quot;;}\r\n.header_search_doptext .hszag {font-size: 19px; margin-top: 20px; margin-bottom: 10px;}\r\nfooter .container .footer_cfs a:hover {color: #bbb; padding-left: 2px; transition: padding 80ms linear;}\r\n.product-layout.new_line .product_buttons .price {margin-bottom: 0px; float: left; margin-top: 1px;}\r\n.product-thumb .price-new {font-size: 19px;}\r\n.fa-shopping-basket:before {content: &quot;\\\\f07a&quot;}\r\n#revslideshow img:hover {opacity: 0.9;}","scripts":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_4', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_3', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_1', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_spec', '{"status":"0","1":{"title":"\\u0410\\u043a\\u0446\\u0438\\u0438"},"2":{"title":"\\u0410\\u043a\\u0446\\u0438\\u0438"},"url_all":"0","icontype":"1","icon":"fa none","image":"no_image.png","limit":"12","not_view_null":"0","slider":"1","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_best', '{"status":"1","1":{"title":"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436"},"2":{"title":"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436"},"url_all":"0","icontype":"1","icon":"fa none","image":"no_image.png","limit":"12","not_view_null":"0","slider":"0","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_tabs', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_last', '{"status":"1","1":{"title":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438"},"2":{"title":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438"},"url_all":"0","icontype":"1","icon":"fa none","image":"no_image.png","limit":"12","not_view_null":"0","slider":"0","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_blocks_home', '{"status":"1","effect":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_categorywall', '{"status":"1","mobi_status":"1","1":{"title":""},"2":{"title":""},"icontype":"1","icon":"fa none","image":"no_image.png","sort_order":"1","categories":"0","group_manufs":"0","group_manufs_simbol":"1","group_manufs_link":{"1":"","2":""},"group_manufs_link_href":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_all', '{"1":{"h1_home":""},"2":{"h1_home":""},"pr_opisanie":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_slideshow', '{"status":"1","banner_id":"7","allwide":"0","mobile":"0","slides":"2","autoscroll":"9","width":"564","height":"248","b_color":"FAFAFA"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_location_height', '50', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_location_width', '268', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_cart_height', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_cart_width', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_compare_height', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_compare_width', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_related_height', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_related_width', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_additional_height', '74', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_additional_width', '74', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_product_height', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_product_width', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_popup_height', '800', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_popup_width', '800', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_thumb_height', '400', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_thumb_width', '400', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_product_description_length', '100', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_category_width', '143', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_category_height', '143', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_product_limit', '8', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_status', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_directory', 'revolution', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_custom_footer', '{"status":"1","dops_pc_status":"0","cf_1_status":"1","cf_1_width":"20","cf_2_status":"1","cf_2_width":"25","cf_3_status":"1","cf_3_width":"50","cf_4_status":"0","cf_4_width":"25","cf_5_status":"0","cf_5_width":"25","1":{"cf_1_description":"","cf_2_description":"","cf_3_description":"&lt;p&gt;\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d Apple \\u2013 \\u044d\\u0442\\u043e \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442 \\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u0438 Apple, \\u0443\\u0434\\u043e\\u0431\\u043d\\u043e \\u0440\\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u043f\\u043e \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b\\u0430\\u043c \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430. \\u041c\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0435\\u043c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u0446\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0443\\u044e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044e \\u0441 \\u0444\\u0438\\u0440\\u043c\\u0435\\u043d\\u043d\\u043e\\u0439 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0435\\u0439 \\u0441\\u0440\\u043e\\u043a\\u043e\\u043c \\u0432 1 \\u0433\\u043e\\u0434 \\u0438 \\u0431\\u043e\\u043b\\u0435\\u0435. \\u0420\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u043b\\u044f \\u0412\\u0430\\u0441 \\u0431\\u0435\\u0437 \\u0432\\u044b\\u0445\\u043e\\u0434\\u043d\\u044b\\u0445 7 \\u0434\\u043d\\u0435\\u0439 \\u0432 \\u043d\\u0435\\u0434\\u0435\\u043b\\u044e, 365 \\u0434\\u043d\\u0435\\u0439 \\u0432 \\u0433\\u043e\\u0434\\u0443.&lt;\\/p&gt;\r\n&lt;p&gt;\\u041c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430\\u043c \\u0441\\u0430\\u043c\\u0443\\u044e \\u043e\\u043f\\u0435\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0443\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0443 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043f\\u043e \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435 \\u0438 \\u041f\\u043e\\u0434\\u043c\\u043e\\u0441\\u043a\\u043e\\u0432\\u044c\\u044e, \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0435\\u0441\\u0442\\u044c \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c \\u0441\\u0430\\u043c\\u043e\\u0432\\u044b\\u0432\\u043e\\u0437\\u0430. \\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u043a\\u0438 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430, \\u0442\\u0435\\u0441\\u0442-\\u0434\\u0440\\u0430\\u0439\\u0432 14 \\u0434\\u043d\\u0435\\u0439. \\u041e\\u0447\\u0435\\u043d\\u044c \\u0434\\u0435\\u043c\\u043e\\u043a\\u0440\\u0430\\u0442\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0446\\u0435\\u043d\\u044b, \\u043d\\u0430\\u0448\\u0430 \\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u0430 \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u0430 \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e\\u0439 \\u0430\\u0443\\u0434\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439.&lt;\\/p&gt;","cf_4_description":"","cf_5_description":""},"2":{"cf_1_description":"","cf_2_description":"","cf_3_description":"","cf_4_description":"","cf_5_description":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf', '[{&quot;id&quot;:1,&quot;name1&quot;:&quot;Каталог&quot;,&quot;name2&quot;:&quot;Каталог&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{},&quot;children&quot;:[{&quot;id&quot;:2,&quot;name1&quot;:&quot;Mac&quot;,&quot;name2&quot;:&quot;Mac&quot;,&quot;href1&quot;:&quot;mac&quot;,&quot;href2&quot;:&quot;mac&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:3,&quot;name1&quot;:&quot;iPhone&quot;,&quot;name2&quot;:&quot;iPhone&quot;,&quot;href1&quot;:&quot;iphone&quot;,&quot;href2&quot;:&quot;iphone&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:4,&quot;name1&quot;:&quot;Watch&quot;,&quot;name2&quot;:&quot;Watch&quot;,&quot;href1&quot;:&quot;watch&quot;,&quot;href2&quot;:&quot;watch&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:5,&quot;name1&quot;:&quot;iPad&quot;,&quot;name2&quot;:&quot;iPad&quot;,&quot;href1&quot;:&quot;ipad&quot;,&quot;href2&quot;:&quot;ipad&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:6,&quot;name1&quot;:&quot;iPod&quot;,&quot;name2&quot;:&quot;iPod&quot;,&quot;href1&quot;:&quot;ipod&quot;,&quot;href2&quot;:&quot;ipod&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:7,&quot;name1&quot;:&quot;Аксессуары&quot;,&quot;name2&quot;:&quot;Аксессуары&quot;,&quot;href1&quot;:&quot;aksessuary&quot;,&quot;href2&quot;:&quot;aksessuary&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:8,&quot;name1&quot;:&quot;Распродажа&quot;,&quot;name2&quot;:&quot;Распродажа&quot;,&quot;href1&quot;:&quot;specials&quot;,&quot;href2&quot;:&quot;specials&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}}]}]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_2', '[{&quot;id&quot;:1,&quot;name1&quot;:&quot;Меню&quot;,&quot;name2&quot;:&quot;Меню&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{},&quot;children&quot;:[{&quot;id&quot;:2,&quot;name1&quot;:&quot;О компании&quot;,&quot;name2&quot;:&quot;О компании&quot;,&quot;href1&quot;:&quot;o_kompanii&quot;,&quot;href2&quot;:&quot;o_kompanii&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:3,&quot;name1&quot;:&quot;Доставка и Оплата&quot;,&quot;name2&quot;:&quot;Доставка и Оплата&quot;,&quot;href1&quot;:&quot;dostavka_i_oplata&quot;,&quot;href2&quot;:&quot;dostavka_i_oplata&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:4,&quot;name1&quot;:&quot;Гарантия&quot;,&quot;name2&quot;:&quot;Гарантия&quot;,&quot;href1&quot;:&quot;garantiya&quot;,&quot;href2&quot;:&quot;garantiya&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{}}]},{&quot;id&quot;:8,&quot;name1&quot;:&quot;Информация&quot;,&quot;name2&quot;:&quot;Информация&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{},&quot;children&quot;:[{&quot;id&quot;:9,&quot;name1&quot;:&quot;Новости и Обзоры&quot;,&quot;name2&quot;:&quot;Новости и Обзоры&quot;,&quot;href1&quot;:&quot;novosti_i_obzory&quot;,&quot;href2&quot;:&quot;novosti_i_obzory&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:10,&quot;name1&quot;:&quot;Политика конфиденциальности&quot;,&quot;name2&quot;:&quot;Политика конфиденциальности&quot;,&quot;href1&quot;:&quot;politika_konfidencialnosti&quot;,&quot;href2&quot;:&quot;politika_konfidencialnosti&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{}}]}]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revblog', 'revblog_settings', '{"category_image_status":"1","category_image_width":"228","category_image_height":"228","list_desc_limit":"400","list_image_width":"80","list_image_height":"80","main_image_status":"0","form_image_width":"400","form_image_height":"400","images_image_width":"365","images_image_height":"275","share_status":"0","not_view_null":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_status', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_sort_order', '2', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_catattribs', 'revtheme_catattribs_settings', '{"attributes":{"15":{"show":"0","replace":""},"19":{"show":"0","replace":""},"13":{"show":"0","replace":""},"18":{"show":"0","replace":""},"14":{"show":"2","replace":"\\u0414\\u0430"},"17":{"show":"2","replace":"\\u0414\\u0430"},"16":{"show":"0","replace":""},"12":{"show":"0","replace":""}}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_cart', '{"icontype":"0","icon":"fa fa-shopping-basket","image":"catalog\\/revolution\\/demo_tovars\\/apple\\/icon-cart.png","type":"standart","cart_vspl":"1","cart_size":"small","cart_carturl":"1","cart_quick":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_all', '{"category_desc":"0","podcategory_status":"1","podcategory_imgs":"1","podcategory_cols":"4","manuf_desc":"1","product_in_cart":"0","ch_quantity":"0","rev_srav_prod":"1","rev_wish_prod":"1","rev_wish_srav_prod":"1","popup_view":"1","img_slider":"0","chislo_ryad":"0","vid_grid":"1","vid_price":"1","vid_default":"vid_grid","pagination":"auto"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_last', '{"last_products":"61,62,59,60,64","limit":"20","filter_day":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_best', '{"best_products":"54,57,53,50,64","limit":"20","filter_buy":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_sorts_category', '{"group_default":"0","sort_default":"p.price","sort_default_adesc":"ASC","order_ASC":"1","1":{"order_ASC_text":"","name_ASC_text":"","name_DESC_text":"","price_ASC_text":"","price_DESC_text":"","rating_DESC_text":"","rating_ASC_text":"","model_ASC_text":"","model_DESC_text":"","date_added_ASC_text":"","date_added_DESC_text":""},"2":{"order_ASC_text":"","name_ASC_text":"","name_DESC_text":"","price_ASC_text":"","price_DESC_text":"","rating_DESC_text":"","rating_ASC_text":"","model_ASC_text":"","model_DESC_text":"","date_added_ASC_text":"","date_added_DESC_text":""},"name_ASC":"1","name_DESC":"0","price_ASC":"1","price_DESC":"1","rating_DESC":"1","rating_ASC":"0","model_ASC":"0","model_DESC":"0","date_added_ASC":"0","date_added_DESC":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_stiker', '{"status":"1","new_status":"1","best_status":"1","spec_status":"1","sklad_status":"0","stock_status":"1","stiker_netu_stock":"0","upc":"0","ean":"0","jan":"0","isbn":"0","mpn":"0","last_color":"E4F1FE","last_color_text":"333333","best_color":"DCC6E0","best_color_text":"333333","spec_color":"FDE3A7","spec_color_text":"333333","netu_color":"6C7A89","netu_color_text":"FFFFFF","user_color":"EEEEEE","user_color_text":"333333"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_popuporder', '{"status":"1","quick_btn":"0","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1","order_status":"2"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_compare', '{"cat_sort":"1","main_cat":"0","compare_price":"1","compare_model":"1","compare_sku":"1","compare_manuf":"1","compare_stock":"1","compare_rate":"1","compare_srtdesc":"1","compare_weight":"1","compare_razmer":"1","compare_atrib":"1","compare_atribgr":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_mods', '{"viewed_products":"0","1":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"2":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"viewed_products_limit":"8"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_attributes', '{"description_on":"1","description_in_grid":"0","options_in_cat":"1","options_in_grid":"0","short_desc":"0","zamena_description":"1","manufacturer":"0","model":"1","sku":"0","stock":"0","length":"0","weight":"0","attributes_status":"1","show_name":"0","show_tags":"0","count":"5","separator":", "}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_all', '{"popup_purchase":"1","zakaz":"0","zakaz_price_null":"0","recalc_price":"1","recalc_price_animate":"1","q_zavisimost":"1","opt_price":"0","countdown":"0","recpr_rightc":"0","answers":"1","blogs":"1","share_status":"0","short_desc":"1","pr_tabs":"1","desc_cols":"0","spec_cols":"0","atributs":"1","atributs_group_name":"1","atributs_ssilka_all":"1","manufacturer_status":"1","model_status":"1","sku_status":"1","bonusbals_status":"0","sklad_status":"1","ostatok_status":"1","weight_status":"1","razmers":"1","options_two_in_line":"0","options_ravno_plus":"0","option_f_auto":"1","options_buy":"0","options_buy_optionname":"0","options_buy_optionname_one":"0","options_buy_foto":"0","options_buy_model":"1","options_buy_quantity":"1","options_buy_click":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_3', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_4', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_5', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_subscribe', '{"status":"1","1":{"title":"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0430 \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","text":"\\u041f\\u043e\\u043b\\u0443\\u0447\\u0430\\u0439\\u0442\\u0435 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u043e\\u044c\\u043d\\u044b\\u0435 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438","text_uspeh":"\\u041f\\u043e\\u0437\\u0434\\u0440\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c! \\u0412\\u044b \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043b\\u0438\\u0441\\u044c \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443."},"2":{"title":"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0430 \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","text":"\\u041f\\u043e\\u043b\\u0443\\u0447\\u0430\\u0439\\u0442\\u0435 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u043e\\u044c\\u043d\\u044b\\u0435 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438","text_uspeh":"\\u041f\\u043e\\u0437\\u0434\\u0440\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c! \\u0412\\u044b \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043b\\u0438\\u0441\\u044c \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443."}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_all', '{"in_top":"1","popup_phone":"1","f_map":"0","copy":"1","1":{"copy_text":""},"2":{"copy_text":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_predzakaz', '{"status":"1","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1","order_status":"2"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_images', '{"zoom":"1","slider":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_mods', '{"viewed_products":"1","1":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438","text_block_zagolovok":""},"2":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438","text_block_zagolovok":""},"viewed_products_limit":"8","text_block":"1","text_block_cols":"col-sm-12","text_block_cols_2":"col-sm-6"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_3', '[{&quot;id&quot;:1,&quot;name1&quot;:&quot;Распродажа&quot;,&quot;name2&quot;:&quot;Распродажа&quot;,&quot;href1&quot;:&quot;specials&quot;,&quot;href2&quot;:&quot;specials&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_3&quot;:&quot;fa fa-percent&quot;,&quot;dop_menu_image_3&quot;:&quot;&quot;,&quot;&quot;:{},&quot;column&quot;:&quot;&quot;}]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_phone', '{"1":{"text":"","text2":"","cod":"8 (800)","number":"700-40-40","cod2":"","number2":"","doptext2":"&lt;a href=&quot;contact-us&quot;&gt;\\u0433. \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0443\\u043b. \\u041d\\u0438\\u043a\\u043e\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f, \\u0434. 25&lt;\\/a&gt;&lt;br&gt;\r\n(\\u0432\\u0445\\u043e\\u0434 \\u0441\\u043e \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u044b \\u0434\\u0432\\u043e\\u0440\\u0430)","doptext":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"},"2":{"text":"","text2":"","cod":"","number":"","cod2":"","number2":"","doptext2":"","doptext":""},"icontype":"1","icon":"fa fa-mobile","image":"catalog\\/revolution\\/telefon_header.png"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_dop_contacts_status', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_popupphone', '{"status":"0","under_phone":"0","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_search', '{"ch_text":"1","1":{"doptext":"&lt;p&gt;&lt;\\/p&gt;&lt;span class=&quot;hszag&quot;&gt;\\u0424\\u0438\\u0440\\u043c\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u0438 Apple \\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435&lt;\\/span&gt;&lt;p&gt;&lt;\\/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;latest&quot;&gt;\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438&lt;\\/a&gt; &amp;nbsp; &amp;nbsp; &lt;a href=&quot;best&quot;&gt;\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436&lt;\\/a&gt; &amp;nbsp; &amp;nbsp; &lt;a href=&quot;iphone\\/iphone_7&quot;&gt;iPhone 7&lt;\\/a&gt; &amp;nbsp; &amp;nbsp; &lt;a href=&quot;iphone\\/iphone_8&quot;&gt;iPhone 8&lt;\\/a&gt;&lt;\\/p&gt;"},"2":{"doptext":""},"in_category":"1","ajax_search_status":"1","ajax_search_limit":"10","ajax_search_model":"1","ajax_search_manufacturer":"0","ajax_search_tag":"1","ajax_search_sku":"1","ajax_search_upc":"0","ajax_search_mpn":"1","ajax_search_isbn":"0","ajax_search_jan":"0","ajax_search_ean":"0","ajax_search_description":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_version', '4.0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_menu', '{"sticky":"1","image_in_ico":"1","tri_level":"1","manuf":"0","n_column":"2","manuf_icontype":"1","manuf_icon":"fa none","manuf_image":"no_image.png","image_in_ico_m":"0","type":"0","cats_status":"1","zadergka":"1","icontype":"1","icon":"fa fa-bars","image":"no_image.png","on_line_cat":"0","inhome":"1","up_menu_height":"1","ogranich":"0","ogranich_count":"5"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_standart_links', '{"rev_lang":"0","rev_curr":"0","rev_srav":"1","rev_wish":"1","rev_acc":"1","rev_acc_zagolovok":"kabinet","popup_login":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_2', '[{&quot;id&quot;:1,&quot;name1&quot;:&quot;О компании&quot;,&quot;name2&quot;:&quot;О компании&quot;,&quot;href1&quot;:&quot;o_kompanii&quot;,&quot;href2&quot;:&quot;o_kompanii&quot;,&quot;&quot;:{}},{&quot;id&quot;:2,&quot;name1&quot;:&quot;Доставка и Оплата&quot;,&quot;name2&quot;:&quot;Доставка и Оплата&quot;,&quot;href1&quot;:&quot;dostavka_i_oplata&quot;,&quot;href2&quot;:&quot;dostavka_i_oplata&quot;,&quot;&quot;:{}},{&quot;id&quot;:3,&quot;name1&quot;:&quot;Гарантия&quot;,&quot;name2&quot;:&quot;Гарантия&quot;,&quot;href1&quot;:&quot;garantiya&quot;,&quot;href2&quot;:&quot;garantiya&quot;,&quot;&quot;:{}},{&quot;id&quot;:4,&quot;name1&quot;:&quot;Информация&quot;,&quot;name2&quot;:&quot;Информация&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;&quot;:{},&quot;children&quot;:[{&quot;id&quot;:5,&quot;name1&quot;:&quot;Новости и Обзоры&quot;,&quot;name2&quot;:&quot;Новости и Обзоры&quot;,&quot;href1&quot;:&quot;novosti_i_obzory&quot;,&quot;href2&quot;:&quot;novosti_i_obzory&quot;,&quot;&quot;:{}},{&quot;id&quot;:6,&quot;name1&quot;:&quot;Политика конфиденциальности&quot;,&quot;name2&quot;:&quot;Политика конфиденциальности&quot;,&quot;href1&quot;:&quot;politika_konfidencialnosti&quot;,&quot;href2&quot;:&quot;politika_konfidencialnosti&quot;,&quot;&quot;:{}}]},{&quot;id&quot;:7,&quot;name1&quot;:&quot;Контакты&quot;,&quot;name2&quot;:&quot;Контакты&quot;,&quot;href1&quot;:&quot;contact-us&quot;,&quot;href2&quot;:&quot;contact-us&quot;,&quot;&quot;:{}}]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_filter', 'revtheme_filter', '{"status":"1","1":{"title":""},"2":{"title":""},"razdelitel":";","filter_price":"1","filter_price_setka":"1","filter_instock":"0","filter_instock_vid":"1","filter_gr":"false","filter_gr_vid":"0","filter_subcategories":"false","filter_subcategories_vid":"1","filter_manufacturer":"false","filter_manufacturer_vid":"1","filter_sposob":"1","filter_count_products":"1","filter_setka":"0","filter_categories":["77"],"filter_option":{"13":{"option_type":"false","option_sort":"0","option_vid":"0"},"14":{"option_type":"false","option_sort":"0","option_vid":"0"}},"filter_attribute":{"15":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"19":{"attribute_type":"checkbox","attribute_sort":"0","attribute_vid":"1"},"13":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"18":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"14":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"17":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"16":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"12":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"}}}', '1');

TRUNCATE TABLE `oc_product_tab`;


TRUNCATE TABLE `oc_product_tab_desc`;


TRUNCATE TABLE `oc_revblog`;

INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('1', 'catalog/revolution/demo_tovars/apple/obzor_5.jpg', '2017-09-23 19:48:13', '2017-09-23 20:11:47', '2017-09-23', '1', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('2', 'catalog/revolution/demo_tovars/apple/news_1.jpg', '2017-09-23 20:03:32', '2017-09-23 20:05:50', '2017-09-20', '0', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('3', 'catalog/revolution/demo_tovars/apple/news_2.jpg', '2017-09-23 20:09:20', '2017-09-23 20:09:38', '2017-09-21', '0', '1');

TRUNCATE TABLE `oc_revblog_category`;

INSERT INTO `oc_revblog_category` (`category_id`, `image`, `parent_id`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES ('1', '', '0', '1', '1', '2017-09-23 19:35:06', '2017-09-23 19:58:01');

TRUNCATE TABLE `oc_revblog_category_description`;

INSERT INTO `oc_revblog_category_description` (`category_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('1', '1', 'Новости и Обзоры', '', 'Новости и Обзоры', 'Новости и Обзоры', 'Новости и Обзоры');
INSERT INTO `oc_revblog_category_description` (`category_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('1', '2', 'Новости и Обзоры', '', '', '', '');

TRUNCATE TABLE `oc_revblog_category_path`;

INSERT INTO `oc_revblog_category_path` (`category_id`, `path_id`, `level`) VALUES ('1', '1', '0');

TRUNCATE TABLE `oc_revblog_category_to_layout`;

INSERT INTO `oc_revblog_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES ('1', '0', '0');

TRUNCATE TABLE `oc_revblog_category_to_store`;

INSERT INTO `oc_revblog_category_to_store` (`category_id`, `store_id`) VALUES ('1', '0');

TRUNCATE TABLE `oc_revblog_description`;

INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('1', '2', 'Обзор Apple iPhone 8 и iPhone 8 Plus', 'Предзаказ на iPhone 8', '', '&lt;p&gt;Обзор Apple iPhone 8 и iPhone 8 Plus&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('1', '1', 'Обзор Apple iPhone 8 и iPhone 8 Plus', 'Предзаказ на iPhone 8', '', '&lt;p style=&quot;text-align: center; &quot;&gt;&lt;img src=&quot;/image/catalog/revolution/demo_tovars/apple/obzor_1_1.jpg&quot; style=&quot;width: 1140px;&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Внешний вид и дизайн&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Дизайн iPhone 8 остался без изменений. Это все тот же iPhone 7, только в стеклянном корпусе вместо алюминиевого. Apple решила не заморачиваться новым дизайном, а просто сделала упор на новые технологии сосредоточенные в самом устройстве. Таким образом, в Айфон 8 появилась беспроводная зарядка, благодаря задней панели смартфона, которая выполнена полностью из стекла. Стекло пропускает волны, которые могут заряжать аккумулятор в устройстве. Алюминиевая крышка не смогла бы обеспечить такой же результат.&lt;/p&gt;&lt;p&gt;Итак, спереди и сзади iPhone 8 состоит из прочных стекол устойчивых к царапинам, которые покрыты олеофобным покрытием. А что же сбоку, на торце? Легендарная металическая рамка, выполненная из нержавеющей стали, которую мы еще помним из iPhone 4 / 4S. Таким образом, дизайн вернулся в 2010 год, когда была выпущена “четверка”. Странно, Apple отказалась от такой идеи ранее, перешла на металические монолитные корпуса и теперь снова пришла к старому. Неужели закончились идеи инноваций? Ну а в остальном, Айфон 8 остался таким же, как и Айфон 7. Разъем Lightning не выпилили, хоть и сделали беспроводную зарядку. Заряжать можно будет и от него тоже. Аудио разъем jack 3,5 мм обратно не вернули, но это и очевидно. Все кнопки и дырки на месте.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Дисплей&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Благодаря сохраненному дизайну, дисплей iPhone 8 не потерпел особых изменений. Он остался таким же, как и в iPhone 7. За исключением некоторых внутренних нюансах. Новый дисплей выполнен по технологии LCD IPS, благодаря чему, угол обзора стал шире, а максимальная яркость выросла до 625 nit. Так же отмечается поддержка цветового пространства DCI-P3, что дает более точную цветопередачу и поддержка стандарта HDR10.&lt;/p&gt;&lt;p&gt;В iPhone 8 дисплей имеет диагональ 4,7 дюймов и плотность 326 точек на дюйм, а в iPhone 8 Plus – 5,5″ и 401 ppi. И конечно же технология 3D Touch, без которой уже никуда не деться, это полезная и коронная фича iPhone. True Tone в дисплей не вшили. Температура подстраивается по прежнему за счет ПО. Хотя предполагалось, что не только iPad Pro будет владеть этой технологией.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Процессор&lt;/b&gt;&lt;/p&gt;&lt;p&gt;iPhone 8 оснащен топовым 6-ядерным процессором A11 Bionic, который выполнен по 10-нанометровому техпроцессу. Так же, в iPhone 8 встроен сопроцессор обработки движений M11 и нейронный движок. Графический процессор iPhone 8 имеет 3 ядра. Ранее наблюдалась какая-то стабильность в плане наращивании мощности в айфонах. Теперь же производительность железа в айфонах растет с каждым годом. Долгое время процессоры айфонов имели 2 ядра и, только в недавнешнем Айфон 7 было принято решение поставить 4 ядерный проц. И спустя год уже Айфон 8 имеет 6 ядер. Но это и не мудрено, ведь с каждым годом в новых айфонах появляется много серьезных новшеств, которые надо как-то обрабатывать. На то и нужна много поточность.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Оперативная память&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Оперативная память в iPhone 8 составляет 2 Гб, а в iPhone 8 Plus 3 Гб. Здесь без изменений. У предшественника было все также. Новое железо сможет хорошо обрабатывать работу камеры девайса, беспроводной зарядки и в целом работу всего устройства. “Железо” восьмого айфона сможет запускать самые передовые и ресурсоёмкие игры. Уже скорей хочется ГТА 4 на iOS.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Постоянная память&lt;/b&gt;&lt;/p&gt;&lt;p&gt;iPhone 8 в минимальной комплектации имеет 64 Гб памяти, а в максимальной – 256 Гб. У iPhone 7 было 32, 128 и 256 Гб, вопрос: куда делась вариация со 128 Гб памяти и почему только два варианта доступно? Видимо это еще одно отступление от традиций Apple в этом году.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Батарея&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Аккумулятор iPhone 8 получил ёмкость 1821 мАч, а iPhone 8 Plus 2675 мАч, откуда можно заметить, что емкости аккумов стали меньше, чем у их предшественников. Почему так? Да все просто. Никто в мире, даже Apple не беспокоится об автономности работы устройств. Увеличивать размеры устройств не хотят, чтобы впихнуть туда по мощнее батарейку. Поэтому остается ждать, когда же разработают сверх емкие аккумуляторы для смартфонов. Однако растраиваться не нужно. iPhone 8 будет работать столько же, сколько и iPhone 7. Сутки – двое. Происходит это за счет энергоэффективности процессора A11 и качественной оптимизации iOS 11.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Беспроводная зарядка&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Наконец iPhone обзавелся беспроводной зарядкой. Правда это уже не инновация, потому что на сегодняшний день уже существуют смартфоны, которые заряжаются бесконтактно. Apple в этом плане опоздала.&lt;/p&gt;&lt;p&gt;Работает эта технология благодаря стеклянному корпусу. Алюминий не пропускает нужные волны для зарядки аккумулятора, поэтому предыдущие айфоны, выполненные из алюминия не могли поддерживать данную технологию. Одно не понятно, почему уже было не избавится от разъема Lightning? Он же уже лишний. Это не по Стив Джобски.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Камера&lt;/b&gt;&lt;/p&gt;&lt;p&gt;В каждом новом поколении iPhone, Apple улучшает его камеру. И iPhone 8 не исключение. В прошлом, в iPhone 7 была встроена двойная камера, которая обеспечивает глубину и размытие, а так же 2х оптический зум. В этом году Apple всего лишь чуть-чуть улучшила светосилу до f/1.8 в основной камере и f/2.4 во второй (теле) камере. И это позор, потому что Самсунг Гэлэкси Ноут 8 в 2017 году имеет светосилу f/1.6, что означает небольшой проигрыш по параметрам у Apple.&lt;/p&gt;&lt;p&gt;Фронтаклка не изменилась, все те же 7 МП и все та же вспышка Retina Flash. Такое ощущение, что камеры вообще не изменились – что Айфон 7, что Айфон 8 – одинаково будет фотографировать.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Краткие технические характеристики Apple iPhone 8&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Дисплей: 4,7″ и 5,5″ в Plus, LCD IPS, 3D Touch&lt;/p&gt;&lt;p&gt;Процессор: A11 Bionic, 6 ядра&lt;/p&gt;&lt;p&gt;Сопроцессор: M11&lt;/p&gt;&lt;p&gt;Оперативная память: 2 Гб, 3 Гб&lt;/p&gt;&lt;p&gt;Своя память: 64 Гб, 256 Гб&lt;/p&gt;&lt;p&gt;Камера: 12 МП, 2х оптический зум (в Plus)&lt;/p&gt;&lt;p&gt;Аккумулятор: 1821 мАч и 2675 мАч в Plus&lt;/p&gt;&lt;p&gt;Интерфейсы: беспроводная зарядка&lt;/p&gt;', 'Обзор Apple iPhone 8 и iPhone 8 Plus', 'Новости и Обзоры - Обзор Apple iPhone 8 и iPhone 8 Plus.', 'Новости и Обзоры, Обзор Apple iPhone 8 и iPhone 8 Plus, интернет магазин.');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('2', '2', 'Обновите iPhone, iPad и iPod Touch до iOS 11 Final', '', '', '&lt;p&gt;Обновите iPhone, iPad и iPod Touch до iOS 11 Final&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('2', '1', 'Обновите iPhone, iPad и iPod Touch до iOS 11 Final', '', '', '&lt;p&gt;Компания Apple выпустила финальную версию операционной системы iOS 11 Final. Ее можно установить &amp;nbsp;на все &quot;яблочные&quot; смартфоны и планшеты, оснащенные 64-битным процессором.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;В операционной системе iOS 11 Final появились нововведения:&amp;nbsp;&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;обновленный внешний вид ОС&lt;/li&gt;&lt;li&gt;редизайн приложений iTunes Store и App Store&lt;/li&gt;&lt;li&gt;обновленное меню многозадачности&lt;/li&gt;&lt;li&gt;новый Пункт управления&lt;/li&gt;&lt;li&gt;приложение Files для работы с любыми типами файлов&lt;/li&gt;&lt;li&gt;новые API&lt;/li&gt;&lt;li&gt;поддержка технологии дополненной реальности AR&lt;/li&gt;&lt;li&gt;и другие опции.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Для 32-битной архитектуры процессора обновление не рассчитано, Apple отказалась от поддержки устаревшего &amp;nbsp;стандарта.&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Установить iOS 11 Final просто, запустив приложение «Настройки», перейдя в раздел «Основные». Там есть пункт «Обновление ПО». Если вы подключены к сети wi-fi, убедитесь, что она стабильно работает, поскольку прерывание обновления может привести к проблемам в работе аппарата.&amp;nbsp;&lt;/li&gt;&lt;li&gt;Также можно установить обновления вашего девайса - &amp;nbsp;iPhone, iPad или iPod Touch - через компьютер с помощью кабеля. Запустите программу iTunes последней версии и она сама предложит обновить ваш аппарат.&lt;/li&gt;&lt;li&gt;Если раньше вы стали участником программы публичного бета-тестирования, то для установки iOS 11 Final нужно будет удалить из настроек своего устройства профиль разработчика по пути «Настройки» – «Основные», «Профили и управление устройством», выбрав пункт «iOS Beta Software Profile». После этой процедуры сможете установить iOS 11 Final.&lt;/li&gt;&lt;/ul&gt;', 'Обновите iPhone, iPad и iPod Touch до iOS 11 Final', 'Новости и Обзоры - Обновите iPhone, iPad и iPod Touch до iOS 11 Final.', 'Новости и Обзоры, Обновите iPhone, iPad и iPod Touch до iOS 11 Final, интернет магазин.');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('3', '2', '5G появится и в России', '', '', '&lt;p&gt;5G появится и в России&lt;br&gt;&lt;/p&gt;', '', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('3', '1', 'Интернет 5G появится и в России', '', '', '&lt;p&gt;&lt;b&gt;Весь мир готовится к запуску сетей пятого поколения. &lt;/b&gt;&lt;/p&gt;&lt;p&gt;Заместитель главы Минкомсвязи Дмитрий Алхазов заявил, что в России такие сети будут использовать частотные диапазоны 3 500 МГц и 2,5 ГГц. По плану госпрограммы «Цифровая экономика», в 2020 году 5G начнут принимать сигналы в 8 крупных российских городах. В Роскомнадзоре же уверены, что новая технология появится в России через пару-тройку лет.&lt;/p&gt;&lt;p&gt;Напомним, на 2018 год запланирован тест 5G на чемпионате мира по футболу. Его результатам операторы будут делать выы покажут, насколько хорошая технология с коммерческой и пользовательской точек зрения.&lt;/p&gt;&lt;p&gt;Компании МТС, «МегаФон» и «Вымпелком» готовы участвовать в тестовом режиме. Известно, что планируют &amp;nbsp;использовать тестовые прототипы устройств с поддержкой 5G.&lt;/p&gt;&lt;p&gt;Для справки: сети 5G позволят передавать данные на скорости свыше 10 Гбит/c. &lt;b&gt;Это в 30 раз больше, чем в существующих сетях 4G&lt;/b&gt;.&lt;/p&gt;', 'Интернет 5G появится и в России', 'Новости и Обзоры - Интернет 5G появится и в России.', 'Новости и Обзоры, Интернет 5G появится и в России, интернет магазин.');

TRUNCATE TABLE `oc_revblog_images`;

INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('31', '1', 'catalog/revolution/demo_tovars/apple/obzor_5.jpg', '5');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('30', '1', 'catalog/revolution/demo_tovars/apple/obzor_4.jpg', '4');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('28', '1', 'catalog/revolution/demo_tovars/apple/obzor_2.jpg', '2');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('29', '1', 'catalog/revolution/demo_tovars/apple/obzor_3.jpg', '3');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('27', '1', 'catalog/revolution/demo_tovars/apple/obzor_6.jpg', '1');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('26', '1', 'catalog/revolution/demo_tovars/apple/obzor_1.jpg', '0');

TRUNCATE TABLE `oc_revblog_product`;

INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('1', '59');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('1', '60');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('1', '61');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('1', '62');

TRUNCATE TABLE `oc_revblog_to_category`;

INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('1', '1', '1');
INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('2', '1', '1');
INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('3', '1', '1');

TRUNCATE TABLE `oc_revblog_to_layout`;

INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('1', '0', '0');
INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('2', '0', '0');
INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('3', '0', '0');

TRUNCATE TABLE `oc_revblog_to_store`;

INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('1', '0');
INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('2', '0');
INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('3', '0');

TRUNCATE TABLE `oc_revpopupphones`;


TRUNCATE TABLE `oc_revsubscribe`;


TRUNCATE TABLE `oc_tabs`;


TRUNCATE TABLE `oc_tabs_description`;


TRUNCATE TABLE `oc_textblocks`;


TRUNCATE TABLE `oc_textblocks_description`;


TRUNCATE TABLE `oc_revanswers`;

INSERT INTO `oc_revanswers` (`answer_id`, `product_id`, `customer_id`, `author`, `text`, `answer`, `answer_from`, `status`, `date_added`) VALUES ('12', '54', '0', 'Валера', 'Никого не смущает тот факт, что в беззвучном режиме, когда телефон лежит на столе, вибрация совершенно не ощущается?', 'Не смущает, в кармане же чувствуется..', 'Администратор', '1', '2017-10-02 12:19:57');

TRUNCATE TABLE `oc_revcheckoutcustomfield`;

INSERT INTO `oc_revcheckoutcustomfield` (`custom_field_id`, `type`, `value`, `mask`, `location`, `status`, `sort_order`) VALUES ('3', 'textarea', '', '', 'address', '1', '1');
INSERT INTO `oc_revcheckoutcustomfield` (`custom_field_id`, `type`, `value`, `mask`, `location`, `status`, `sort_order`) VALUES ('4', 'select', '', '', 'address', '1', '2');
INSERT INTO `oc_revcheckoutcustomfield` (`custom_field_id`, `type`, `value`, `mask`, `location`, `status`, `sort_order`) VALUES ('5', 'select', '', '', 'address', '1', '1');

TRUNCATE TABLE `oc_revcheckoutcustomfield_customer_group`;

INSERT INTO `oc_revcheckoutcustomfield_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES ('3', '1', '1');
INSERT INTO `oc_revcheckoutcustomfield_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES ('4', '1', '0');
INSERT INTO `oc_revcheckoutcustomfield_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES ('5', '1', '0');

TRUNCATE TABLE `oc_revcheckoutcustomfield_description`;

INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES ('3', '1', 'Адрес доставки');
INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES ('3', '2', 'Адрес доставки');
INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES ('4', '2', 'Время доставки');
INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES ('4', '1', 'Время доставки');
INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES ('5', '1', 'Из магазина по адресу');
INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES ('5', '2', 'Из магазина по адресу');

TRUNCATE TABLE `oc_revcheckoutcustomfield_value`;

INSERT INTO `oc_revcheckoutcustomfield_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES ('6', '4', '1');
INSERT INTO `oc_revcheckoutcustomfield_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES ('7', '4', '2');
INSERT INTO `oc_revcheckoutcustomfield_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES ('9', '5', '2');
INSERT INTO `oc_revcheckoutcustomfield_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES ('8', '5', '1');

TRUNCATE TABLE `oc_revcheckoutcustomfield_value_description`;

INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('6', '1', '4', 'с 10:00 до 14:00');
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('6', '2', '4', 'с 10:00 до 14:00');
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('7', '1', '4', 'с 15:00 до 21:00');
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('7', '2', '4', 'с 15:00 до 21:00');
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('9', '1', '5', 'ул. Кожевническая, 7с1');
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('8', '2', '5', 'ул. Никольская, д. 25');
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('8', '1', '5', 'ул. Никольская, д. 25');
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES ('9', '2', '5', 'ул. Кожевническая, 7с1');

TRUNCATE TABLE `oc_revcheckoutcustomfield_shipping_code`;

INSERT INTO `oc_revcheckoutcustomfield_shipping_code` (`custom_field_id`, `shipping_code`) VALUES ('3', 'revship2.revship2');
INSERT INTO `oc_revcheckoutcustomfield_shipping_code` (`custom_field_id`, `shipping_code`) VALUES ('4', 'revship2.revship2');
INSERT INTO `oc_revcheckoutcustomfield_shipping_code` (`custom_field_id`, `shipping_code`) VALUES ('5', 'pickup.pickup');