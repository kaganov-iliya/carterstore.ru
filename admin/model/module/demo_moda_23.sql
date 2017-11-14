DELETE FROM `oc_attribute`;
INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
	(20, 4, 0),
	(22, 4, 0),
	(19, 4, 0),
	(18, 4, 0),
	(17, 4, 0),
	(16, 4, 0),
	(14, 4, 0),
	(13, 4, 0),
	(12, 4, 0),
	(33, 4, 0);

DELETE FROM `oc_attribute_description`;
INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
	(14, 1, 'Длина'),
	(13, 1, 'Высота каблука'),
	(12, 1, 'Высота голенища'),
	(16, 1, 'Материал'),
	(17, 1, 'Сезон'),
	(18, 1, 'Состав'),
	(19, 1, 'Стиль'),
	(20, 1, 'Страна производства'),
	(22, 1, 'Тип каблука'),
	(33, 1, 'Тип юбки');

DELETE FROM `oc_attribute_group`;
INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
	(4, 1);

DELETE FROM `oc_attribute_group_description`;
INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
	(4, 1, 'Общие');

DELETE FROM `oc_banner_image`;
INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
	(104, 7, 1, 'banner3', 'kid/kid_girls/kid_girls_platia', 'catalog/revolution/banner3.jpg', 0),
	(87, 6, 1, 'Новинка Kicx GFQ-165', 'kicx-gfq-165', 'catalog/revolution/new1.jpg', 0),
	(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
	(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
	(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
	(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
	(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
	(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
	(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
	(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
	(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
	(103, 7, 1, 'banner4', '', 'catalog/revolution/banner4.jpg', 0),
	(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
	(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

DELETE FROM `oc_category`;
INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `image2`, `category_icontype`, `category_icon`, `category_image`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
	(998811, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/1.jpg', 0, 'catalog/revolution/c_wooman.jpg', 1, 'fa fa-venus', '', 1, 2, 0, 1, '2016-05-30 22:41:03', '2016-11-28 20:32:55'),
	(998822, '', 0, '', 1, 'fa fa-mars', '', 1, 2, 1, 1, '2016-05-30 22:41:03', '2016-11-28 20:34:23'),
	(998833, '', 0, '', 1, 'fa fa-transgender-alt', '', 1, 2, 2, 1, '2016-05-30 22:41:03', '2016-11-28 20:35:05'),
	(9988111, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/1.jpg', 998811, '', 0, 'fa fa-female', 'catalog/revolution/demo_tovars/Fashion/fash_icons/dress.png', 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-11-28 20:46:43'),
	(9988112, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/1.jpg', 998811, '', 0, 'fa none', 'catalog/revolution/demo_tovars/Fashion/fash_icons/shoes.png', 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-11-28 20:48:43'),
	(9988113, 'catalog/revolution/demo_tovars/Fashion/Wooman/Hats/1.jpg', 998811, '', 0, 'fa none', 'catalog/revolution/demo_tovars/Fashion/fash_icons/hats.png', 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-11-28 20:52:58'),
	(9988114, 'catalog/revolution/demo_tovars/Fashion/Wooman/Accessories/1.jpg', 998811, '', 0, 'fa none', 'catalog/revolution/demo_tovars/Fashion/fash_icons/accessories.png', 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-11-28 20:50:16'),
	(9988115, 'catalog/revolution/demo_tovars/Fashion/Wooman/Figgery/1.jpg', 998811, '', 0, 'fa none', 'catalog/revolution/demo_tovars/Fashion/fash_icons/figgery.png', 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-11-28 20:53:47'),
	(9988221, 'catalog/revolution/demo_tovars/Fashion/Man/Odegda/1.jpg', 998822, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(9988222, 'catalog/revolution/demo_tovars/Fashion/Man/Shoes/1.jpg', 998822, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(9988223, 'catalog/revolution/demo_tovars/Fashion/Man/Hats/1.jpg', 998822, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(9988224, 'catalog/revolution/demo_tovars/Fashion/Man/Accessories/1.jpg', 998822, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99882211, 'catalog/revolution/demo_tovars/Fashion/Man/Odegda/Futbolki/1.jpg', 9988221, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99882212, 'catalog/revolution/demo_tovars/Fashion/Man/Odegda/Trikotazh/1.jpg', 9988221, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99882213, 'catalog/revolution/demo_tovars/Fashion/Man/Odegda/Rubashki/1.jpg', 9988221, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99882214, 'catalog/revolution/demo_tovars/Fashion/Man/Odegda/Kostumi/1.jpg', 9988221, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99882215, 'catalog/revolution/demo_tovars/Fashion/Man/Odegda/Socks/1.jpg', 9988221, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99881111, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/1.jpg', 9988111, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99881112, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Shorts/1.jpg', 9988111, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99881113, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/1.jpg', 9988111, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99881114, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/1.jpg', 9988111, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99881115, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tshirts/1.jpg', 9988111, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99881121, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/1.jpg', 9988112, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99881122, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/1.jpg', 9988112, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(9988331, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/1.jpg', 998833, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(9988332, 'catalog/revolution/demo_tovars/Fashion/Kid/Boys/1.jpg', 998833, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99883311, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Platia/1.jpg', 9988331, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99883312, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Fytbolki/1.jpg', 9988331, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99883313, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Shorty/1.jpg', 9988331, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99883314, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Noski/1.jpg', 9988331, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99883321, 'catalog/revolution/demo_tovars/Fashion/Kid/Boys/Rybawki/1.jpg', 9988332, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(99883322, 'catalog/revolution/demo_tovars/Fashion/Kid/Boys/Kedy/1.jpg', 9988332, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03');

DELETE FROM `oc_category_description`;
INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(998811, 1, 'Женщинам', '&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Товарищи! укрепление и развитие структуры требуют определения и уточнения соответствующий условий активизации. Не следует, однако забывать, что новая модель организационной деятельности требуют от нас анализа направлений прогрессивного развития. Повседневная практика показывает, что консультация с широким активом в значительной степени обуславливает создание существенных финансовых и административных условий. С другой стороны рамки и место обучения кадров требуют от нас анализа форм развития. С другой стороны новая модель организационной деятельности представляет собой интересный эксперимент проверки направлений прогрессивного развития. Равным образом постоянный количественный рост и сфера нашей активности позволяет выполнять важные задания по разработке форм развития.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Женщинам', '', '', ''),
	(998822, 1, 'Мужчинам', '', 'Мужчинам', '', '', ''),
	(998833, 1, 'Детям', '', 'Детям', '', '', ''),
	(9988111, 1, 'Одежда', 'С древних времен прекрасные дамы старались поразить своими роскошными туалетами свет. И женская одежда с течением времени претерпевала серьезные изменения. Причем, часто, не столько кавалеров, сколько своих соперниц. На сегодняшний день, мода успела кардинально измениться, однако ситуация сохранилась та же – каждая красавица, вертясь утром перед зеркалом, думает, что же такое надеть, что бы и подружки позавидовали, и любимый порадовался на свою ненаглядную. Да никто и не станет спорить, что одежда помогает произвести на окружающих нужное впечатление. Например, обтягивающий трикотаж – лучший друг молодой девушки со стройной фигурой, а строгий брючный костюм лучше всего помогает его обладательнице настроиться на серьезный и деловой разговор. Мы можем взять любую женскую одежду и она окажется для каких-то целей, для воздействия на определенную аудиторию.', 'Одежда', '', '', ''),
	(9988112, 1, 'Обувь', 'В нашем магазине – не только разнообразие цветов и материалов, но и великолепный выбор трендов, которые каждый производитель отражает по-своему, делая акцент то на перфорации, то на количестве ремешков, то на необычности кроя моделей. Особенным украшением нашего ассортимента можно назвать женскую обувь, которой славится Италия и найти которую прежде можно было лишь в бутиках Милана и Рима.&lt;br&gt;Истинно итальянское умение чувствовать прекрасное в сочетании с неизменным качеством – по ценам, которые доступны каждому. И, что важно, мы гарантируем подлинность каждого бренда. Окунувшись в мир интернет-шопинга, Вы, безусловно, оцените преимущества такого способа покупки. И любые модели из последних коллекций появятся у Вас дома всего после нескольких кликов мышкой.', 'Обувь', '', '', ''),
	(9988113, 1, 'Головные уборы', 'На сегодняшний день наш интернет-магазин отличается разнообразием и широким выбором бейсболок и кепок. Головной убор хорошего качества по привлекательной цене и с возможностью доставки на дом порадует своим дизайном и надежностью. Бейсболки обладают вентиляционными свойствами, обеспечивая голове воздухопроницаемость. Хлопковые бейсболки подходят для ежедневной носки в городе и на отдыхе, так что они будут служить вам не один сезон. Купить бейсболки с логотипом и прямые кепки можно в нашем интернет-магазине прямо сейчас.', 'Головные уборы', '', '', ''),
	(9988114, 1, 'Аксессуары', 'Имея в гардеробе подобные вещи, вы сможете легко комбинировать их между собой, создавая новые образы. Аксессуары относятся к предметам, которые быстро выходят из моды. Но они также стремительно возвращаются на прежние позиции. Поэтому пересмотрите свои «запасы» — наверняка среди них найдутся аксессуары, которые находятся сейчас на пике популярности.&lt;br&gt;Существуют и женские аксессуары, ставшие классикой. Это золотые часы на кожаном ремешке, очки в оправе из белого или темного металла, черный зонт с деревянной ручкой, черная кожаная сумка прямоугольной, квадратной или овальной формы без украшений и пряжек, шарфы и косынки приглушенных тонов, неброские золотые и серебряные украшения. В вашем гардеробе обязательно должны быть эти вещи. Они подходят под одежду любого стиля и всегда уместны.', 'Аксессуары', '', '', ''),
	(9988115, 1, 'Украшения', '', 'Украшения', '', '', ''),
	(9988221, 1, 'Одежда', '', 'Одежда', '', '', ''),
	(9988222, 1, 'Обувь', '', 'Обувь', '', '', ''),
	(9988223, 1, 'Головные уборы', '', 'Головные уборы', '', '', ''),
	(9988224, 1, 'Аксессуары', '', 'Аксессуары', '', '', ''),
	(99882211, 1, 'Футболки и поло', '', 'Футболки и поло', '', '', ''),
	(99882212, 1, 'Джемперы и кардиганы', '', 'Джемперы и кардиганы', '', '', ''),
	(99882213, 1, 'Рубашки', '', 'Рубашки', '', '', ''),
	(99882214, 1, 'Пиджаки и костюмы', '', 'Пиджаки и костюмы', '', '', ''),
	(99882215, 1, 'Носки и гетры', '', 'Носки и гетры', '', '', ''),
	(99881111, 1, 'Платья и сарафаны', 'В современном мире женщине предоставлена огромная свобода в выборе одежды, из мужской моды к ней перешли костюмы, брюки, строгие рубашки, на пике популярности находятся комбинезоны. Однако символом легкости, романтики, очарования всегда остаются женские платья. И пусть современный дресс-код диктует свои условия, невозможно представить себе женщину, у которой в гардеробе не было бы хоть одного платья.', 'Платья и сарафаны', '', '', ''),
	(99881112, 1, 'Шорты', '', 'Шорты', '', '', ''),
	(99881113, 1, 'Юбки', '', 'Юбки', '', '', ''),
	(99881114, 1, 'Топы и майки', '', 'Топы и майки', '', '', ''),
	(99881115, 1, 'Футболки и поло', '', 'Футболки и поло', '', '', ''),
	(99881121, 1, 'Кроссовки и кеды', '', 'Кроссовки и кеды', '', '', ''),
	(99881122, 1, 'Туфли', '', 'Туфли', '', '', ''),
	(9988331, 1, 'Девочкам', '', 'Девочкам', '', '', ''),
	(9988332, 1, 'Мальчикам', '', 'Мальчикам', '', '', ''),
	(99883311, 1, 'Платья и сарафаны', '', 'Платья и сарафаны', '', '', ''),
	(99883312, 1, 'Футболки и поло', '', 'Футболки и поло', '', '', ''),
	(99883313, 1, 'Шорты', '', 'Шорты', '', '', ''),
	(99883314, 1, 'Носки и колготки', '', 'Носки и колготки', '', '', ''),
	(99883321, 1, 'Рубашки', '', 'Рубашки', '', '', ''),
	(99883322, 1, 'Кроссовки и кеды', '', 'Кроссовки и кеды', '', '', '');

DELETE FROM `oc_category_path`;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
	(998811, 998811, 0),
	(9988111, 998811, 0),
	(9988111, 9988111, 1),
	(99881111, 998811, 0),
	(99881111, 9988111, 1),
	(99881111, 99881111, 2),
	(99881112, 998811, 0),
	(99881112, 9988111, 1),
	(99881112, 99881112, 2),
	(99881113, 998811, 0),
	(99881113, 9988111, 1),
	(99881113, 99881113, 2),
	(99881114, 998811, 0),
	(99881114, 9988111, 1),
	(99881114, 99881114, 2),
	(99881115, 998811, 0),
	(99881115, 9988111, 1),
	(99881115, 99881115, 2),
	(9988112, 998811, 0),
	(9988112, 9988112, 1),
	(99881121, 998811, 0),
	(99881121, 9988112, 1),
	(99881121, 99881121, 2),
	(99881122, 998811, 0),
	(99881122, 9988112, 1),
	(99881122, 99881122, 2),
	(9988113, 998811, 0),
	(9988113, 9988113, 1),
	(9988114, 998811, 0),
	(9988114, 9988114, 1),
	(9988115, 998811, 0),
	(9988115, 9988115, 1),
	(998822, 998822, 0),
	(9988221, 998822, 0),
	(9988221, 9988221, 1),
	(99882211, 998822, 0),
	(99882211, 9988221, 1),
	(99882211, 99882211, 2),
	(99882212, 998822, 0),
	(99882212, 9988221, 1),
	(99882212, 99882212, 2),
	(99882213, 998822, 0),
	(99882213, 9988221, 1),
	(99882213, 99882213, 2),
	(99882214, 998822, 0),
	(99882214, 9988221, 1),
	(99882214, 99882214, 2),
	(99882215, 998822, 0),
	(99882215, 9988221, 1),
	(99882215, 99882215, 2),
	(9988222, 998822, 0),
	(9988222, 9988222, 1),
	(9988223, 998822, 0),
	(9988223, 9988223, 1),
	(9988224, 998822, 0),
	(9988224, 9988224, 1),
	(998833, 998833, 0),
	(9988331, 998833, 0),
	(9988331, 9988331, 1),
	(99883311, 998833, 0),
	(99883311, 9988331, 1),
	(99883311, 99883311, 2),
	(99883312, 998833, 0),
	(99883312, 9988331, 1),
	(99883312, 99883312, 2),
	(99883313, 998833, 0),
	(99883313, 9988331, 1),
	(99883313, 99883313, 2),
	(99883314, 998833, 0),
	(99883314, 9988331, 1),
	(99883314, 99883314, 2),
	(9988332, 998833, 0),
	(9988332, 9988332, 1),
	(99883321, 998833, 0),
	(99883321, 9988332, 1),
	(99883321, 99883321, 2),
	(99883322, 998833, 0),
	(99883322, 9988332, 1),
	(99883322, 99883322, 2);

DELETE FROM `oc_category_to_layout`;
INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
	(998811, 0, 0),
	(998822, 0, 0),
	(998833, 0, 0),
	(9988111, 0, 0),
	(9988112, 0, 0),
	(9988114, 0, 0),
	(9988113, 0, 0),
	(9988115, 0, 0);

DELETE FROM `oc_category_to_store`;
INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
	(998811, 0),
	(998822, 0),
	(998833, 0),
	(9988111, 0),
	(9988112, 0),
	(9988113, 0),
	(9988114, 0),
	(9988115, 0),
	(9988221, 0),
	(9988222, 0),
	(9988223, 0),
	(9988224, 0),
	(9988331, 0),
	(9988332, 0),
	(99881111, 0),
	(99881112, 0),
	(99881113, 0),
	(99881114, 0),
	(99881115, 0),
	(99881121, 0),
	(99881122, 0),
	(99882211, 0),
	(99882212, 0),
	(99882213, 0),
	(99882214, 0),
	(99882215, 0),
	(99883311, 0),
	(99883312, 0),
	(99883313, 0),
	(99883314, 0),
	(99883321, 0),
	(99883322, 0);

DELETE FROM `oc_currency`;
INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
	(1, 'Рубль', 'RUB', '', ' р.', '0', 1.00000000, 1, '2017-10-05 11:14:56'),
	(2, 'US Dollar', 'USD', '$', '', '0', 0.01730000, 1, '2017-10-04 15:46:07'),
	(3, 'Euro', 'EUR', '', '€', '2', 0.01470000, 1, '2017-10-04 15:46:07');

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
	(3, 1, 1, 0, 2, 1),
	(4, 1, 1, 0, 1, 1),
	(5, 1, 1, 0, 4, 1),
	(6, 1, 1, 0, 3, 1);

DELETE FROM `oc_information_description`;
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(5, 1, 'Гарантия', '&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;	Гарантия&lt;/span&gt;&lt;/p&gt;', 'Гарантия', '', '', ''),
	(6, 1, 'Доставка', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Идейные соображения высшего порядка, а также консультация с широким активом влечет за собой процесс внедрения и модернизации соответствующий условий активизации. Равным образом рамки и место обучения кадров способствует подготовки и реализации направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности представляет собой интересный эксперимент проверки направлений прогрессивного развития. Идейные соображения высшего порядка, а также новая модель организационной деятельности влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Повседневная практика показывает, что рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании соответствующий условий активизации. Идейные соображения высшего порядка, а также реализация намеченных плановых заданий играет важную роль в формировании существенных финансовых и административных условий.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Товарищи! рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании модели развития. Задача организации, в особенности же консультация с широким активом обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач. Таким образом реализация намеченных плановых заданий влечет за собой процесс внедрения и модернизации позиций, занимаемых участниками в отношении поставленных задач. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности в значительной степени обуславливает создание форм развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации систем массового участия. Задача организации, в особенности же начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Не следует, однако забывать, что укрепление и развитие структуры представляет собой интересный эксперимент проверки форм развития.&lt;/span&gt;&lt;/p&gt;', 'Доставка', '', '', ''),
	(4, 1, 'О нас', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Повседневная практика показывает, что консультация с широким активом в значительной степени обуславливает создание существенных финансовых и административных условий. Разнообразный и богатый опыт укрепление и развитие структуры играет важную роль в формировании новых предложений. Равным образом рамки и место обучения кадров влечет за собой процесс внедрения и модернизации систем массового участия.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Таким образом дальнейшее развитие различных форм деятельности требуют от нас анализа новых предложений. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности играет важную роль в формировании систем массового участия. Задача организации, в особенности же укрепление и развитие структуры играет важную роль в формировании направлений прогрессивного развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Товарищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации новых предложений. Повседневная практика показывает, что начало повседневной работы по формированию позиции способствует подготовки и реализации существенных финансовых и административных условий. Таким образом укрепление и развитие структуры представляет собой интересный эксперимент проверки форм развития. С другой стороны начало повседневной работы по формированию позиции требуют определения и уточнения систем массового участия. Разнообразный и богатый опыт укрепление и развитие структуры требуют от нас анализа системы обучения кадров, соответствует насущным потребностям. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;', 'О нас', '', '', ''),
	(3, 1, 'Оплата', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Roboto; font-size: 14px; line-height: 20px;&quot;&gt;Оплата&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Оплата', '', '', '');

DELETE FROM `oc_information_to_layout`;
INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
	(6, 0, 0),
	(4, 0, 0),
	(3, 0, 0),
	(5, 0, 0);

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
	(76, 3, 'category', 'column_left', 1);


DELETE FROM `oc_manufacturer`;
INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
	(38, 'Casadei', '', 0),
	(34, 'Armani Jeans', '', 0),
	(35, 'Boboli', '', 0),
	(36, 'Brave Soul', '', 0),
	(37, 'Cadence', '', 0),
	(40, 'Etro', '', 0),
	(41, 'Jil Sander Navy', '', 0),
	(42, 'Just Cavalli', '', 0),
	(43, 'M Missoni', '', 0),
	(44, 'Mango', '', 0),
	(45, 'Marshall Original', '', 0),
	(46, 'Name It', '', 0),
	(47, 'oodji', '', 0),
	(48, 'Pinko', '', 0),
	(49, 'Tommy Hilfiger', '', 0),
	(50, 'Vila', '', 0),
	(51, 'WS Shoes', '', 0),
	(52, 'Z Generation', '', 0);

DELETE FROM `oc_manufacturer_description`;
INSERT INTO `oc_manufacturer_description` (`manufacturer_id`, `language_id`, `name`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(35, 1, 'Boboli', '', '', '', '', ''),
	(36, 1, 'Brave Soul', '', '', '', '', ''),
	(34, 1, 'Armani Jeans', '', '', '', '', ''),
	(37, 1, 'Cadence', '', '', '', '', ''),
	(38, 1, 'Casadei', '', '', '', '', ''),
	(40, 1, 'Etro', '', '', '', '', ''),
	(41, 1, 'Jil Sander Navy', '', '', '', '', ''),
	(42, 1, 'Just Cavalli', '&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение направлений прогрессивного развития. Не следует, однако забывать, что дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки направлений прогрессивного развития. Не следует, однако забывать, что укрепление и развитие структуры представляет собой интересный эксперимент проверки форм развития. Задача организации, в особенности же консультация с широким активом влечет за собой процесс внедрения и модернизации соответствующий условий активизации. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности играет важную роль в формировании направлений прогрессивного развития. Товарищи! сложившаяся структура организации требуют определения и уточнения существенных финансовых и административных условий. Повседневная практика показывает, что сложившаяся структура организации требуют определения и уточнения направлений прогрессивного развития. Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации системы обучения кадров, соответствует насущным потребностям. Равным образом реализация намеченных плановых заданий играет важную роль в формировании форм развития. Не следует, однако забывать, что рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании направлений прогрессивного развития.&lt;/span&gt;&lt;/p&gt;', '', '', '', ''),
	(43, 1, 'M Missoni', '', '', '', '', ''),
	(44, 1, 'Mango', '', '', '', '', ''),
	(45, 1, 'Marshall Original', '', '', '', '', ''),
	(46, 1, 'Name It', '', '', '', '', ''),
	(47, 1, 'oodji', '', '', '', '', ''),
	(48, 1, 'Pinko', '', '', '', '', ''),
	(49, 1, 'Tommy Hilfiger', '', '', '', '', ''),
	(50, 1, 'Vila', '', '', '', '', ''),
	(51, 1, 'WS Shoes', '', '', '', '', ''),
	(52, 1, 'Z Generation', '', '', '', '', '');

DELETE FROM `oc_manufacturer_to_store`;
INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
	(34, 0),
	(35, 0),
	(36, 0),
	(37, 0),
	(38, 0),
	(40, 0),
	(41, 0),
	(42, 0),
	(43, 0),
	(44, 0),
	(45, 0),
	(46, 0),
	(47, 0),
	(48, 0),
	(49, 0),
	(50, 0),
	(51, 0),
	(52, 0);

DELETE FROM `oc_module`;
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
	(30, 'Category', 'banner', '{"name":"Category","banner_id":"6","width":"182","height":"182","status":"1"}'),
	(29, 'Home Page', 'carousel', '{"name":"Home Page","banner_id":"8","width":"130","height":"100","status":"1"}'),
	(28, 'Home Page', 'featured', '{"name":"Home Page","product":["418"],"limit":"4","width":"228","height":"228","status":"1"}'),
	(27, 'Home Page', 'slideshow', '{"name":"Home Page","banner_id":"7","width":"1140","height":"380","status":"1"}'),
	(31, 'Banner 1', 'banner', '{"name":"Banner 1","banner_id":"6","width":"182","height":"182","status":"1"}');

DELETE FROM `oc_option`;
INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`, `opt_image`) VALUES
	(13, 'radio', 0, 1),
	(14, 'radio', 1, 0);

DELETE FROM `oc_option_description`;
INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
	(14, 1, 'Размер'),
	(13, 1, 'Цвет'),
	(13, 2, 'Цвет');

DELETE FROM `oc_option_value`;
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
	(59, 13, 'catalog/revolution/colors/rozoviy.png', 8),
	(58, 13, 'catalog/revolution/colors/multycolor.png', 7),
	(50, 14, '', 0),
	(57, 13, 'catalog/revolution/colors/krasniy.png', 6),
	(56, 13, 'catalog/revolution/colors/koralloviy.png', 5),
	(55, 13, 'catalog/revolution/colors/zeleniy.png', 4),
	(54, 13, 'catalog/revolution/colors/geltiy.png', 3),
	(53, 13, 'catalog/revolution/colors/goluboy.png', 2),
	(52, 13, 'catalog/revolution/colors/beliy.png', 1),
	(51, 13, 'catalog/revolution/colors/begeviy.png', 0),
	(63, 14, '', 1),
	(64, 14, '', 2),
	(65, 14, '', 3),
	(66, 14, '', 4),
	(67, 14, '', 5),
	(68, 14, '', 6),
	(69, 14, '', 7),
	(70, 14, '', 8),
	(71, 14, '', 9),
	(72, 14, '', 10),
	(73, 14, '', 11),
	(74, 14, '', 12),
	(75, 14, '', 13),
	(76, 14, '', 14),
	(77, 14, '', 15),
	(78, 14, '', 16),
	(79, 14, '', 19),
	(60, 13, 'catalog/revolution/colors/seriy.png', 9),
	(61, 13, 'catalog/revolution/colors/siniy.png', 10),
	(62, 13, 'catalog/revolution/colors/cherniy.png', 11);

DELETE FROM `oc_option_value_description`;
INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
	(56, 1, 13, 'Коралловый'),
	(55, 2, 13, 'Зеленый'),
	(55, 1, 13, 'Зеленый'),
	(54, 2, 13, 'Желтый'),
	(54, 1, 13, 'Желтый'),
	(53, 2, 13, 'Голубой'),
	(53, 1, 13, 'Голубой'),
	(52, 2, 13, 'Белый'),
	(52, 1, 13, 'Белый'),
	(68, 1, 14, '42'),
	(67, 1, 14, '40'),
	(66, 1, 14, '39'),
	(65, 1, 14, '38'),
	(64, 1, 14, '37'),
	(63, 1, 14, '36'),
	(51, 2, 13, 'Бежевый'),
	(51, 1, 13, 'Бежевый'),
	(50, 1, 14, '35'),
	(69, 1, 14, '44'),
	(70, 1, 14, '46'),
	(71, 1, 14, '48'),
	(72, 1, 14, '50'),
	(73, 1, 14, '59'),
	(74, 1, 14, '68'),
	(75, 1, 14, '74'),
	(76, 1, 14, '80'),
	(77, 1, 14, '86'),
	(78, 1, 14, '92'),
	(79, 1, 14, '104'),
	(56, 2, 13, 'Коралловый'),
	(57, 1, 13, 'Красный'),
	(57, 2, 13, 'Красный'),
	(58, 1, 13, 'Мультиколор'),
	(58, 2, 13, 'Мультиколор'),
	(59, 1, 13, 'Розовый'),
	(59, 2, 13, 'Розовый'),
	(60, 1, 13, 'Серый'),
	(60, 2, 13, 'Серый'),
	(61, 1, 13, 'Синий'),
	(61, 2, 13, 'Синий'),
	(62, 1, 13, 'Черный'),
	(62, 2, 13, 'Черный');

DELETE FROM `oc_order`;
INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
	(7, 0, 'INV-2016-00', 0, 'Интернет-магазин одежды', '', 0, 1, 'Аня', '', 'localhost@localhost.com', '+7 (999) 8885566', '', '', 'Аня', '', '', '', '', '', '', '', 0, '', 0, '', '', '--', 'free_checkout', 'Аня', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', 15364.0000, 2, 0, 0.0000, 0, '', 1, 1, 'RUB', 1.00000000, '127.0.0.1', '', '', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-06-02 09:26:05', '2016-06-02 09:26:05'),
	(8, 0, 'INV-2016-00', 0, 'Интернет-магазин одежды', '', 0, 1, 'Маша', '', 'localhost@localhost.com', '+7 (999) 8855666', '', '', 'Маша', '', '', '', '', '', '', '', 0, '', 0, '', '', '--', 'free_checkout', 'Маша', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', 1922.0000, 2, 0, 0.0000, 0, '', 1, 1, 'RUB', 1.00000000, '127.0.0.1', '', '', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-06-02 09:26:36', '2016-06-02 09:26:36');

DELETE FROM `oc_order_history`;
INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
	(7, 7, 2, 0, '', '2016-06-02 09:26:05'),
	(8, 8, 2, 0, '', '2016-06-02 09:26:36');

DELETE FROM `oc_order_option`;
INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
	(1, 7, 7, 33, 73, 'Цвет', 'Синий', 'image');

DELETE FROM `oc_order_product`;
INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
	(7, 7, 416, 'Туфли-лодочки Casadei', 'model_416', 2, 6400.0000, 12800.0000, 1282.0000, 0),
	(8, 8, 421, 'Платье Z Generation', 'model_421', 1, 1600.0000, 1600.0000, 322.0000, 0);

DELETE FROM `oc_order_total`;
INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
	(23, 7, 'sub_total', 'Стоимость товаров', 12800.0000, 1),
	(26, 7, 'total', 'Итого', 15364.0000, 9),
	(27, 8, 'sub_total', 'Стоимость товаров', 1600.0000, 1),
	(30, 8, 'total', 'Итого', 1922.0000, 9);

DELETE FROM `oc_product`;
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `options_buy`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
	(426, 'KE909-99931', '21701403', '', '', '', '', '', '', 50, 7, 'catalog/revolution/demo_tovars/full_bak_2.jpg', 42, 1, 0, 9600.0000, 0, 0, '2016-06-02', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 46, '2016-06-02 08:16:25', '2016-11-28 18:48:58'),
	(400, 'model_400', 'LO-019E-400', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_1.jpg', 48, 1, 0, 70000.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 12, '2012-04-06 18:13:12', '2016-05-30 22:58:20'),
	(401, 'model_401', 'LO-019E-401', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_2.jpg', 42, 1, 0, 65000.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 4, '2012-04-06 18:13:12', '2016-05-30 22:58:47'),
	(402, 'model_402', 'LO-019E-402', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_3.jpg', 41, 1, 0, 60000.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 2, '2012-04-06 18:13:12', '2016-05-30 22:58:33'),
	(403, 'model_403', 'LO-019E-403', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_4.jpg', 43, 1, 0, 58000.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:59:04'),
	(404, 'model_404', 'LO-019E-404', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_5.jpg', 42, 1, 0, 46500.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 5, '2012-04-06 18:13:12', '2016-05-30 22:58:51'),
	(405, 'model_405', 'LO-019E-405', '', '', '', '', '', '', 0, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_6.jpg', 49, 1, 0, 18990.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:59:15'),
	(406, 'model_406', 'LO-019E-406', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_7.jpg', 44, 1, 0, 9500.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 1, '2012-04-06 18:13:12', '2016-05-30 22:59:32'),
	(407, 'model_407', 'LO-019E-407', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_8.jpg', 49, 1, 0, 7200.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 13, '2012-04-06 18:13:12', '2016-06-01 22:30:30'),
	(408, 'model_408', 'LO-019E-408', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1.jpg', 47, 1, 0, 650.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 5, '2012-04-06 18:13:12', '2016-05-30 22:57:24'),
	(409, 'model_409', 'LO-019E-409', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_2.jpg', 47, 1, 0, 999.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 2, '2012-04-06 18:13:12', '2016-05-30 23:01:03'),
	(410, 'model_410', 'LO-019E-410', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_1.jpg', 47, 1, 0, 249.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:57:10'),
	(411, 'model_411', 'LO-019E-411', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_2.jpg', 34, 1, 0, 900.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:59:44'),
	(412, 'model_412', 'LO-019E-412', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tshirts/shirt_1.jpg', 47, 1, 0, 549.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 23:00:24'),
	(413, 'model_413', 'LO-019E-413', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tshirts/shirt_2.jpg', 36, 1, 0, 1200.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 2, '2012-04-06 18:13:12', '2016-05-30 23:00:15'),
	(414, 'model_414', 'LO-019E-414', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Shorts/shorts_1.jpg', 45, 1, 0, 900.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 1, '2012-04-06 18:13:12', '2016-05-30 23:00:51'),
	(415, 'model_415', 'LO-019E-415', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Shorts/shorts_2.jpg', 50, 1, 0, 3200.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 23:00:36'),
	(416, 'model_416', 'LO-019E-416', '', '', '', '', '', '', 997, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_1.jpg', 38, 1, 0, 7000.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 4, '2012-04-06 18:13:12', '2016-05-30 22:59:57'),
	(417, 'model_417', 'LO-019E-417', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_2.jpg', 38, 1, 0, 6200.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 8, '2012-04-06 18:13:12', '2016-05-30 23:00:02'),
	(418, 'model_418', 'LO-019E-418', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_3.jpg', 51, 1, 0, 900.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 14, '2012-04-06 18:13:12', '2016-05-30 22:52:24'),
	(419, 'model_419', 'LO-019E-419', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/kedy_1.jpg', 38, 1, 0, 7500.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 2, '2012-04-06 18:13:12', '2016-05-30 22:52:46'),
	(420, 'model_420', 'LO-019E-420', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/kedy_2.jpg', 40, 1, 0, 8000.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 4, '2012-04-06 18:13:12', '2016-06-01 22:14:10'),
	(421, 'model_421', 'LO-019E-421', '', '', '', '', '', '', 998, 6, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Platia/platie_1.jpg', 52, 1, 0, 2000.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 16, '2012-04-06 18:13:12', '2016-06-01 22:07:07'),
	(422, 'model_422', 'LO-019E-422', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Platia/platie_2.jpg', 35, 1, 0, 1200.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 1, '2012-04-06 18:13:12', '2016-05-30 22:57:37'),
	(423, 'model_423', 'LO-019E-423', '', '', '', '', '', '', 0, 6, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Platia/platie_3.jpg', 35, 1, 0, 1150.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 2, '2012-04-06 18:13:12', '2016-05-30 22:57:43'),
	(424, 'model_424', 'LO-019E-424', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Platia/platie_4.jpg', 46, 1, 0, 750.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:57:57');

DELETE FROM `oc_product_attribute`;
INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
	(426, 14, 1, '110 см'),
	(426, 17, 1, 'Лето'),
	(400, 18, 1, 'Полиэстер'),
	(400, 14, 1, '89 см'),
	(400, 17, 1, 'Лето'),
	(401, 18, 1, 'Вискоза, Эластан'),
	(401, 14, 1, '96 см'),
	(401, 17, 1, 'Мульти'),
	(402, 18, 1, 'Хлопок'),
	(402, 14, 1, '102 см'),
	(402, 17, 1, 'Лето'),
	(403, 18, 1, 'Хлопок, Полиамид, Полиэстер'),
	(403, 14, 1, '90 см'),
	(403, 17, 1, 'Мульти'),
	(404, 18, 1, 'Хлопок'),
	(404, 14, 1, '90 см'),
	(404, 17, 1, 'Лето'),
	(405, 18, 1, 'Вискоза, Полиамид, Эластан'),
	(405, 14, 1, '94 см'),
	(405, 17, 1, 'Мульти'),
	(406, 18, 1, 'Овечья шерсть'),
	(406, 14, 1, '84 см'),
	(406, 17, 1, 'Мульти'),
	(407, 18, 1, 'Хлопок, Эластан'),
	(407, 19, 1, 'Повседневный'),
	(408, 19, 1, 'Повседневный'),
	(408, 17, 1, 'Лето'),
	(408, 18, 1, 'Хлопок'),
	(408, 14, 1, '37 см'),
	(409, 19, 1, 'Повседневный'),
	(409, 17, 1, 'Мульти'),
	(409, 18, 1, 'Полиэстер, Вискоза'),
	(409, 14, 1, '40 см'),
	(410, 19, 1, 'Повседневный'),
	(410, 14, 1, '61 см'),
	(410, 17, 1, 'Мульти'),
	(410, 18, 1, 'Хлопок'),
	(411, 18, 1, 'Вискоза, Полиамид'),
	(411, 14, 1, '48 см'),
	(411, 17, 1, 'Мульти'),
	(412, 18, 1, 'Хлопок'),
	(412, 14, 1, '60 см'),
	(412, 17, 1, 'Мульти'),
	(413, 18, 1, 'Хлопок'),
	(413, 14, 1, '64 см'),
	(413, 17, 1, 'Мульти'),
	(414, 18, 1, 'Хлопок'),
	(414, 14, 1, '23 см'),
	(414, 17, 1, 'Мульти'),
	(415, 18, 1, 'Вискоза, Шерсть'),
	(415, 14, 1, '31 см'),
	(415, 17, 1, 'Демисезон, Зима'),
	(416, 19, 1, 'Повседневный, Выход в свет'),
	(416, 13, 1, '13 см'),
	(416, 16, 1, 'Натуральная кожа'),
	(416, 17, 1, 'Мульти'),
	(417, 19, 1, 'Повседневный, Выход в свет'),
	(417, 13, 1, '10 см'),
	(417, 16, 1, 'Натуральная кожа'),
	(417, 17, 1, 'Мульти'),
	(418, 19, 1, 'Повседневный'),
	(418, 13, 1, ''),
	(418, 16, 1, 'Искусственная кожа'),
	(418, 17, 1, 'Лето'),
	(419, 19, 1, 'Повседневный, Ультрамодный'),
	(419, 12, 1, '12 см'),
	(419, 16, 1, 'Натуральный велюр'),
	(419, 17, 1, 'Демисезон'),
	(420, 19, 1, 'Повседневный'),
	(420, 17, 1, 'Демисезон, Лето'),
	(421, 18, 1, 'Хлопок'),
	(422, 17, 1, 'Лето'),
	(422, 18, 1, 'Хлопок, Эластан'),
	(422, 14, 1, '50 см'),
	(423, 17, 1, 'Лето'),
	(423, 14, 1, '51 см'),
	(424, 14, 1, '44 см'),
	(424, 17, 1, 'Демисезон, Зима'),
	(418, 20, 1, 'Турция'),
	(418, 22, 1, 'Без каблука'),
	(419, 20, 1, 'Италия'),
	(419, 22, 1, 'Скрытая танкетка'),
	(420, 16, 1, 'Натуральная кожа'),
	(420, 12, 1, ''),
	(410, 20, 1, 'Узбекистан'),
	(408, 20, 1, 'Бангладеш'),
	(408, 33, 1, 'Прямая'),
	(422, 20, 1, 'Бангладеш'),
	(423, 18, 1, 'Хлопок'),
	(423, 20, 1, 'Бангладеш'),
	(424, 18, 1, 'Хлопок'),
	(424, 20, 1, 'Китай'),
	(421, 17, 1, 'Лето'),
	(421, 14, 1, '41 см'),
	(400, 19, 1, 'Ультрамодный'),
	(400, 20, 1, 'Италия'),
	(402, 19, 1, 'Ультрамодный'),
	(402, 20, 1, 'Италия'),
	(401, 19, 1, 'Повседневный'),
	(401, 20, 1, 'Италия'),
	(404, 19, 1, 'Ультрамодный'),
	(404, 20, 1, 'Италия'),
	(403, 19, 1, 'Повседневный'),
	(403, 20, 1, 'Тунис'),
	(405, 19, 1, 'Повседневный'),
	(405, 20, 1, 'Вьетнам'),
	(407, 17, 1, 'Мульти'),
	(407, 14, 1, '90 см'),
	(406, 19, 1, 'Повседневный'),
	(406, 20, 1, 'Пакистан'),
	(411, 19, 1, 'Повседневный'),
	(411, 20, 1, 'Италия'),
	(416, 20, 1, 'Италия'),
	(416, 22, 1, 'Шпилька'),
	(417, 20, 1, 'Италия'),
	(417, 22, 1, 'Шпилька'),
	(413, 19, 1, 'Повседневный'),
	(413, 20, 1, 'Бангладеш'),
	(412, 19, 1, 'Повседневный'),
	(412, 20, 1, 'Бангладеш'),
	(415, 19, 1, 'Повседневный'),
	(415, 20, 1, 'Франция'),
	(414, 19, 1, 'Повседневный'),
	(414, 20, 1, 'Италия'),
	(409, 20, 1, 'Бангладеш'),
	(409, 33, 1, 'Юбка-клеш'),
	(426, 19, 1, 'Повседневный'),
	(426, 18, 1, 'Хлопок'),
	(407, 20, 1, 'Шри-Ланка'),
	(420, 22, 1, 'Без каблука'),
	(420, 20, 1, 'Италия'),
	(421, 20, 1, 'Индия'),
	(426, 20, 1, 'Италия');

DELETE FROM `oc_product_description`;
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `short_description`, `tag`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(400, 1, 'Платье-макса Pinko', 'Платье от известного премиум-бренда Pinko выполнено из гладкого текстиля. Особенности: застежка на молнию; асимметричный крой.', '', '', 'Платье-макса Pinko', '', '', ''),
	(401, 1, 'Платье-миди Just Cavalli', 'Платье Just Cavalli выполнено из эластичного вискозного трикотажа бежевого цвета с декором стразами. Особенности: прилегающий силуэт; V-образный вырез; тонкая подкладка.', '', '', 'Платье-миди Just Cavalli', '', '', ''),
	(402, 1, 'Платье-миди Jil Sander Navy', 'Платье Jil Sander Navy выполнено из высококачественного хлопкового текстиля. Особенности: приталенный крой, застежка на пуговицы, отложной воротник.', '', '', 'Платье-миди Jil Sander Navy', '', '', ''),
	(403, 1, 'Платье-миди M Missoni', 'Платье M Missoni выполнено из мягкого трикотажа с вывязанным узором. Модель приталенного кроя. Особенности: круглый вырез.', '', '', 'Платье-миди M Missoni', '', '', ''),
	(404, 1, 'Платье-миди Just Cavalli', 'Платье Just Cavalli выполнено из плотного хлопкового текстиля со сквозной перфорацией, креповая подкладка. Особенности: прямой крой; V-образный вырез на золотистом шнурке; рукава декорированы рюшами.', '', '', 'Платье-миди Just Cavalli', '', '', ''),
	(405, 1, 'Платье-миди Tommy Hilfiger', '', '', '', 'Платье-миди Tommy Hilfiger', '', '', ''),
	(406, 1, 'Платье-мини Mango', 'Круглый вырез горловины, сзади застежка на молнию, контрастные окантовки.', '', '', 'Платье-мини Mango', '', '', ''),
	(407, 1, 'Платье-миди Tommy Hilfiger', 'Платье Tommy Hilfiger выполнено из высококачественного хлопкового текстиля. Особенности: приталенный крой, застежки на пуговицах, отложной воротник.', '', '', 'Платье-миди Tommy Hilfiger', '', '', ''),
	(408, 1, 'Мини-юбка oodji', 'Юбка-мини oodji выполнена из эластичного хлопкового текстиля. Детали: прилегающий крой, застежка на молнию.', '', '', 'Мини-юбка oodji', '', '', ''),
	(409, 1, 'Юбка-клеш oodji', 'Юбка oodji выполнена из плотного трикотажа. Детали: эластичный пояс.', '', '', 'Юбка-клеш oodji', '', '', ''),
	(410, 1, 'Майка oodji', 'Майка с открытыми плечами, выполнена из плотного трикотажа. Круглое декольте.', '', '', 'Майка oodji', '', '', ''),
	(411, 1, 'Топ Armani Jeans', 'Топ Armani Jeans выполнен из плотного тонкого трикотажа. Особенности: круглый вырез; логотип из контрастных пайеток и клепок на груди.', '', '', 'Топ Armani Jeans', '', '', ''),
	(412, 1, 'Футболка с коротким рукавом oodji', '', '', '', 'Футболка с коротким рукавом oodji', '', '', ''),
	(413, 1, 'Футболка Brave Soul', '', '', '', 'Футболка Brave Soul', '', '', ''),
	(414, 1, 'Шорты спортивные Marshall Original', 'Шорты Marshall Original выполнены из мягкого хлопкового трикотажа, махровая внутренняя отделка. Детали: кулиска на талии; вышивка.', '', '', 'Шорты спортивные Marshall Original', '', '', ''),
	(415, 1, 'Шорты повседневные Vila', 'Шорты Vila выполнены из плотной буклированной пряжи серого цвета с содержанием шерсти. Детали: по бокам застежка на молнии.', '', '', 'Шорты повседневные Vila', '', '', ''),
	(416, 1, 'Туфли-лодочки Casadei', 'Туфли-лодочки Casadei выполнены из натуральной телячьей кожи с лаковым покрытием, подкладка и стелька из натуральной кожи. Особенности: заостренный мыс; металлический каблук-шпилька; кожаная подошва.', '', '', 'Туфли-лодочки Casadei', '', '', ''),
	(417, 1, 'Туфли-лодочки Casadei', 'Туфли-лодочки Casadei выполнены из натуральной телячьей кожи с лаковым покрытием, подкладка и стелька из натуральной кожи. Особенности: заостренный мыс; металлический каблук-шпилька; кожаная подошва.', '', '', 'Туфли-лодочки Casadei', '', '', ''),
	(418, 1, 'Балетки WS Shoes', 'Балетки WS Shoes выполнены из искусственной лаковой кожи и полупрозрачной сетки, без подкладки, стелька - из искусственной кожи. Детали: закругленный мыс, декоративная перфорация и бант, резиновая подошва.', '', '', 'Балетки WS Shoes', '', '', ''),
	(419, 1, 'Кеды на танкетке Casadei', 'Высокие кеды Casadei на скрытой танкетке выполнены из натурального велюра, подкладка и стелька из мягкой натуральной кожи. Особенности: шнуровка с двойными люверсами; плоская резиновая подошва.', '', '', 'Кеды на танкетке Casadei', '', '', ''),
	(420, 1, 'Кроссовки Etro', 'Кроссовки Etro выполнены из сочетания натуральной кожи (теленок) и текстиля. Особенности: текстильная подкладка, стелька из натуральной кожи, шнуровка.', '', '', 'Кроссовки Etro', '', '', ''),
	(421, 1, 'Платье Z Generation', '', '', '', 'Платье Z Generation', '', '', ''),
	(422, 1, 'Платье Boboli', '', '', '', 'Платье Boboli', '', '', ''),
	(423, 1, 'Платье Boboli', '', '', '', 'Платье Boboli', '', '', ''),
	(424, 1, 'Платье Name It', '', '', '', 'Платье Name It', '', '', ''),
	(426, 1, 'Сарафан Just Cavalli', '&lt;p&gt;&lt;span style=&quot;font-family: Roboto; font-size: 14px;&quot;&gt;Замечательный летний сарафан из нежной, приятной телу вискозы с модным принтом.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto; font-size: 14px;&quot;&gt;Разнообразный и богатый опыт дальнейшее развитие различных форм деятельности позволяет оценить значение форм развития. Не следует, однако забывать, что постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет выполнять важные задания по разработке позиций, занимаемых участниками в отношении поставленных задач. Не следует, однако забывать, что рамки и место обучения кадров представляет собой интересный эксперимент проверки новых предложений.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto; font-size: 14px;&quot;&gt;Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Равным образом дальнейшее развитие различных форм деятельности позволяет выполнять важные задания по разработке систем массового участия. Таким образом сложившаяся структура организации позволяет выполнять важные задания по разработке модели развития. Задача организации, в особенности же реализация намеченных плановых заданий требуют от нас анализа новых предложений. Не следует, однако забывать, что дальнейшее развитие различных форм деятельности влечет за собой процесс внедрения и модернизации соответствующий условий активизации.&lt;/span&gt;&lt;/p&gt;', '', '', 'Купить сарафан Just Cavalli в интернет-магазине', '', '', '');

DELETE FROM `oc_product_image`;
INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`, `video`) VALUES
	(154, 400, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_1_4.jpg', 3, ''),
	(153, 400, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_1_3.jpg', 2, ''),
	(152, 400, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_1_2.jpg', 1, ''),
	(160, 401, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_2_4.jpg', 3, ''),
	(159, 401, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_2_3.jpg', 2, ''),
	(158, 401, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_2_2.jpg', 1, ''),
	(157, 402, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_3_4.jpg', 3, ''),
	(156, 402, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_3_3.jpg', 2, ''),
	(155, 402, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_3_2.jpg', 1, ''),
	(166, 403, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_4_4.jpg', 3, ''),
	(165, 403, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_4_3.jpg', 2, ''),
	(164, 403, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_4_2.jpg', 1, ''),
	(163, 404, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_5_4.jpg', 3, ''),
	(162, 404, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_5_3.jpg', 2, ''),
	(161, 404, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_5_2.jpg', 1, ''),
	(169, 405, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_6_4.jpg', 3, ''),
	(168, 405, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_6_3.jpg', 2, ''),
	(167, 405, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_6_2.jpg', 1, ''),
	(179, 406, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_7_3.jpg', 2, ''),
	(178, 406, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_7_2.jpg', 1, ''),
	(262, 407, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_8_9.jpg', 8, ''),
	(261, 407, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_8_8.jpg', 7, ''),
	(260, 407, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_8_7.jpg', 6, ''),
	(259, 407, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_8_6.jpg', 5, ''),
	(258, 407, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_8_5.jpg', 4, ''),
	(257, 407, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_8_4.jpg', 3, ''),
	(256, 407, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_8_3.jpg', 2, ''),
	(255, 407, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Dresses/dress_8_2.jpg', 1, ''),
	(147, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_12.jpg', 11, ''),
	(146, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_11.jpg', 10, ''),
	(145, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_10.jpg', 9, ''),
	(144, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_9.jpg', 8, ''),
	(143, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_8.jpg', 7, ''),
	(142, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_7.jpg', 6, ''),
	(141, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_6.jpg', 5, ''),
	(140, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_5.jpg', 4, ''),
	(139, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_4.jpg', 3, ''),
	(138, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_3.jpg', 2, ''),
	(137, 408, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_1_2.jpg', 1, ''),
	(210, 409, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_2_4.jpg', 3, ''),
	(209, 409, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_2_3.jpg', 2, ''),
	(208, 409, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Skirts/skirt_2_2.jpg', 1, ''),
	(136, 410, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_1_9.jpg', 8, ''),
	(135, 410, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_1_8.jpg', 7, ''),
	(134, 410, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_1_7.jpg', 6, ''),
	(133, 410, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_1_6.jpg', 5, ''),
	(132, 410, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_1_5.jpg', 4, ''),
	(131, 410, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_1_4.jpg', 3, ''),
	(130, 410, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_1_3.jpg', 2, ''),
	(129, 410, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_1_2.jpg', 1, ''),
	(182, 411, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_2_4.jpg', 3, ''),
	(181, 411, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_2_3.jpg', 2, ''),
	(180, 411, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tops/top_2_2.jpg', 1, ''),
	(201, 412, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tshirts/shirt_1_4.jpg', 3, ''),
	(200, 412, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tshirts/shirt_1_3.jpg', 2, ''),
	(199, 412, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tshirts/shirt_1_2.jpg', 1, ''),
	(198, 413, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tshirts/shirt_2_4.jpg', 3, ''),
	(197, 413, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tshirts/shirt_2_3.jpg', 2, ''),
	(196, 413, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Tshirts/shirt_2_2.jpg', 1, ''),
	(207, 414, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Shorts/shorts_1_4.jpg', 3, ''),
	(206, 414, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Shorts/shorts_1_3.jpg', 2, ''),
	(205, 414, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Shorts/shorts_1_2.jpg', 1, ''),
	(204, 415, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Shorts/shorts_2_4.jpg', 3, ''),
	(203, 415, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Shorts/shorts_2_3.jpg', 2, ''),
	(202, 415, 'catalog/revolution/demo_tovars/Fashion/Wooman/Odegda/Shorts/shorts_2_2.jpg', 1, ''),
	(186, 416, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_1_5.jpg', 4, ''),
	(185, 416, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_1_4.jpg', 3, ''),
	(184, 416, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_1_3.jpg', 2, ''),
	(183, 416, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_1_2.jpg', 1, ''),
	(195, 417, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_2_10.jpg', 9, ''),
	(194, 417, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_2_9.jpg', 8, ''),
	(193, 417, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_2_8.jpg', 7, ''),
	(192, 417, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_2_7.jpg', 6, ''),
	(191, 417, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_2_6.jpg', 5, ''),
	(190, 417, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_2_5.jpg', 4, ''),
	(189, 417, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_2_4.jpg', 3, ''),
	(188, 417, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_2_3.jpg', 2, ''),
	(187, 417, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_2_2.jpg', 1, ''),
	(108, 418, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_3_4.jpg', 3, ''),
	(107, 418, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_3_3.jpg', 2, ''),
	(106, 418, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Tufli/tufli_3_2.jpg', 1, ''),
	(112, 419, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/kedy_1_5.jpg', 3, ''),
	(111, 419, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/kedy_1_4.jpg', 3, ''),
	(110, 419, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/kedy_1_3.jpg', 2, ''),
	(109, 419, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/kedy_1_2.jpg', 1, ''),
	(254, 420, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/kedy_2_5.jpg', 4, ''),
	(253, 420, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/kedy_2_4.jpg', 3, ''),
	(252, 420, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/kedy_2_3.jpg', 2, ''),
	(251, 420, 'catalog/revolution/demo_tovars/Fashion/Wooman/Shoes/Kedy/kedy_2_2.jpg', 1, ''),
	(250, 421, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Platia/platie_1_2.jpg', 1, ''),
	(148, 422, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Platia/platie_2_2.jpg', 1, ''),
	(149, 423, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Platia/platie_3_2.jpg', 1, ''),
	(150, 424, 'catalog/revolution/demo_tovars/Fashion/Kid/Girls/Platia/platie_4_2.jpg', 1, ''),
	(271, 426, 'catalog/revolution/demo_tovars/full_bak_2_2.jpg', 0, '');

DELETE FROM `oc_product_option`;
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
	(2, 400, 14, '', 0),
	(1, 400, 13, '', 0),
	(4, 401, 14, '', 0),
	(3, 401, 13, '', 0),
	(6, 402, 14, '', 0),
	(5, 402, 13, '', 0),
	(8, 403, 14, '', 0),
	(7, 403, 13, '', 0),
	(10, 404, 14, '', 0),
	(9, 404, 13, '', 0),
	(12, 405, 14, '', 0),
	(11, 405, 13, '', 0),
	(14, 406, 14, '', 0),
	(13, 406, 13, '', 0),
	(15, 407, 13, '', 0),
	(16, 407, 14, '', 0),
	(18, 408, 14, '', 0),
	(17, 408, 13, '', 0),
	(20, 409, 14, '', 0),
	(19, 409, 13, '', 0),
	(22, 410, 14, '', 0),
	(21, 410, 13, '', 0),
	(24, 411, 14, '', 0),
	(23, 411, 13, '', 0),
	(26, 412, 14, '', 0),
	(25, 412, 13, '', 0),
	(28, 413, 14, '', 0),
	(27, 413, 13, '', 0),
	(30, 414, 14, '', 0),
	(29, 414, 13, '', 0),
	(32, 415, 14, '', 0),
	(31, 415, 13, '', 0),
	(34, 416, 14, '', 0),
	(33, 416, 13, '', 0),
	(36, 417, 14, '', 0),
	(35, 417, 13, '', 0),
	(38, 418, 14, '', 0),
	(37, 418, 13, '', 0),
	(40, 419, 14, '', 0),
	(39, 419, 13, '', 0),
	(41, 420, 13, '', 0),
	(42, 420, 14, '', 0),
	(43, 421, 13, '', 0),
	(44, 421, 14, '', 0),
	(46, 422, 14, '', 0),
	(45, 422, 13, '', 0),
	(48, 423, 14, '', 0),
	(47, 423, 13, '', 0),
	(50, 424, 14, '', 0),
	(49, 424, 13, '', 0),
	(54, 426, 14, '', 1),
	(53, 426, 13, '', 0);

DELETE FROM `oc_product_option_value`;
INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`, `opt_image`, `model`) VALUES
	(4, 2, 400, 14, 71, 333, 0, 5000.0000, '+', 0, '+', 0.50, '+', NULL, ''),
	(3, 2, 400, 14, 68, 333, 0, 2000.0000, '+', 0, '+', 0.30, '+', NULL, ''),
	(2, 2, 400, 14, 67, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(1, 1, 400, 13, 59, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(8, 4, 401, 14, 71, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(7, 4, 401, 14, 69, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(6, 4, 401, 14, 65, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(5, 3, 401, 13, 51, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(12, 6, 402, 14, 70, 333, 0, 1000.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(11, 6, 402, 14, 69, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(10, 6, 402, 14, 67, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(9, 5, 402, 13, 53, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(17, 8, 403, 14, 70, 300, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(16, 8, 403, 14, 69, 399, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(15, 8, 403, 14, 68, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(14, 8, 403, 14, 67, 100, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(13, 7, 403, 13, 57, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(21, 10, 404, 14, 70, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(20, 10, 404, 14, 69, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(19, 10, 404, 14, 68, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(18, 9, 404, 13, 52, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(25, 12, 405, 14, 72, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(24, 12, 405, 14, 71, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(23, 12, 405, 14, 68, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(22, 11, 405, 13, 61, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(29, 14, 406, 14, 72, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(28, 14, 406, 14, 70, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(27, 14, 406, 14, 65, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(26, 13, 406, 13, 62, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(30, 15, 407, 13, 53, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(31, 15, 407, 13, 57, 333, 0, 200.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(32, 15, 407, 13, 61, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(33, 16, 407, 14, 65, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(34, 16, 407, 14, 68, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(35, 16, 407, 14, 69, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(36, 16, 407, 14, 70, 200, 0, 100.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(37, 16, 407, 14, 72, 199, 0, 200.0000, '+', 0, '+', 0.20, '+', NULL, ''),
	(46, 18, 408, 14, 72, 199, 0, 100.0000, '+', 0, '+', 0.10, '+', NULL, ''),
	(45, 18, 408, 14, 70, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(44, 18, 408, 14, 69, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(43, 18, 408, 14, 68, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(42, 18, 408, 14, 67, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(41, 17, 408, 13, 54, 300, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(40, 17, 408, 13, 55, 399, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(39, 17, 408, 13, 52, 200, 0, 50.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(38, 17, 408, 13, 53, 100, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(50, 20, 409, 14, 71, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(49, 20, 409, 14, 68, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(48, 20, 409, 14, 67, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(47, 19, 409, 13, 57, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(56, 22, 410, 14, 72, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(55, 22, 410, 14, 70, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(54, 22, 410, 14, 67, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(53, 21, 410, 13, 62, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(52, 21, 410, 13, 60, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(51, 21, 410, 13, 61, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(60, 24, 411, 14, 71, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(59, 24, 411, 14, 68, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(58, 24, 411, 14, 67, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(57, 23, 411, 13, 56, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(63, 26, 412, 14, 68, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(62, 26, 412, 14, 67, 600, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(61, 25, 412, 13, 52, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(66, 28, 413, 14, 69, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(65, 28, 413, 14, 67, 600, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(64, 27, 413, 13, 56, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(69, 30, 414, 14, 71, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(68, 30, 414, 14, 69, 600, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(67, 29, 414, 13, 53, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(72, 32, 415, 14, 69, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(71, 32, 415, 14, 67, 600, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(70, 31, 415, 13, 60, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(75, 34, 416, 14, 65, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(74, 34, 416, 14, 50, 600, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(73, 33, 416, 13, 61, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(82, 36, 417, 14, 66, 199, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(81, 36, 417, 14, 65, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(80, 36, 417, 14, 64, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(79, 36, 417, 14, 63, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(78, 36, 417, 14, 50, 200, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(77, 35, 417, 13, 55, 600, 0, 1500.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(76, 35, 417, 13, 59, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(85, 38, 418, 14, 65, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(84, 38, 418, 14, 64, 600, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(83, 37, 418, 13, 57, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(89, 40, 419, 14, 65, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(88, 40, 419, 14, 64, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(87, 40, 419, 14, 63, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(86, 39, 419, 13, 53, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(90, 41, 420, 13, 58, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(91, 42, 420, 14, 50, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(92, 42, 420, 14, 63, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(93, 42, 420, 14, 64, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(94, 43, 421, 13, 58, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(95, 44, 421, 14, 73, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(96, 44, 421, 14, 74, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(97, 44, 421, 14, 75, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(101, 46, 422, 14, 78, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(100, 46, 422, 14, 77, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(99, 46, 422, 14, 75, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(98, 45, 422, 13, 58, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(105, 48, 423, 14, 79, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(104, 48, 423, 14, 77, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(103, 48, 423, 14, 76, 333, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(102, 47, 423, 13, 55, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(107, 50, 424, 14, 76, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(106, 49, 424, 13, 60, 999, 0, 0.0000, '+', 0, '+', 0.00, '+', NULL, ''),
	(120, 54, 426, 14, 72, 5, 0, 200.0000, '+', 0, '+', 0.00, '+', '', 'KE909-99950'),
	(118, 54, 426, 14, 69, 20, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'KE909-99944'),
	(119, 54, 426, 14, 71, 5, 0, 100.0000, '+', 0, '+', 0.00, '+', '', 'KE909-99948'),
	(115, 54, 426, 14, 67, 10, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'KE909-99940'),
	(114, 54, 426, 14, 68, 10, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'KE909-99942'),
	(117, 53, 426, 13, 60, 5, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'KE909-9993S'),
	(113, 53, 426, 13, 56, 20, 0, 8200.0000, '=', 0, '+', 0.00, '+', 'catalog/revolution/demo_tovars/full_bak_2_4.jpg', 'KE909-9993K'),
	(116, 53, 426, 13, 53, 25, 0, 8000.0000, '=', 0, '+', 0.00, '+', 'catalog/revolution/demo_tovars/full_bak_2_3.jpg', 'KE909-9993G');

DELETE FROM `oc_product_related`;
INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
	(401, 426),
	(404, 426),
	(426, 401),
	(426, 404);

DELETE FROM `oc_product_reward`;
INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
	(28, 1, 1, 400),
	(21, 18, 1, 200),
	(22, 95, 1, 100),
	(23, 291, 1, 600),
	(24, 292, 1, 700),
	(25, 293, 1, 800),
	(26, 295, 1, 300),
	(27, 297, 1, 1000);

DELETE FROM `oc_product_special`;
INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
	(19, 400, 1, 1, 62000.0000, '0000-00-00', '0000-00-00'),
	(41, 407, 1, 1, 6400.0000, '0000-00-00', '0000-00-00'),
	(17, 408, 1, 1, 620.0000, '0000-00-00', '0000-00-00'),
	(21, 411, 1, 1, 750.0000, '0000-00-00', '0000-00-00'),
	(23, 413, 1, 1, 640.0000, '0000-00-00', '0000-00-00'),
	(24, 414, 1, 1, 700.0000, '0000-00-00', '0000-00-00'),
	(22, 416, 1, 1, 6400.0000, '0000-00-00', '0000-00-00'),
	(40, 420, 1, 1, 7200.0000, '0000-00-00', '0000-00-00'),
	(39, 421, 1, 1, 1600.0000, '0000-00-00', '0000-00-00'),
	(47, 426, 1, 1, 7400.0000, '0000-00-00', '0000-00-00');

DELETE FROM `oc_product_to_category`;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`, `main_category`) VALUES
	(400, 99881111, 0),
	(401, 99881111, 0),
	(402, 99881111, 0),
	(403, 99881111, 0),
	(404, 99881111, 0),
	(405, 99881111, 0),
	(406, 99881111, 0),
	(407, 99881111, 0),
	(408, 99881113, 0),
	(409, 99881113, 0),
	(410, 99881114, 0),
	(411, 99881114, 0),
	(412, 99881115, 0),
	(413, 99881115, 0),
	(414, 99881112, 0),
	(415, 99881112, 0),
	(416, 99881122, 0),
	(417, 99881122, 0),
	(418, 99881122, 0),
	(419, 99881121, 0),
	(420, 99881121, 0),
	(421, 99883311, 0),
	(422, 99883311, 0),
	(423, 99883311, 0),
	(424, 99883311, 0),
	(426, 99881111, 0);

DELETE FROM `oc_product_to_layout`;
INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
	(418, 0, 0),
	(419, 0, 0),
	(420, 0, 0),
	(410, 0, 0),
	(408, 0, 0),
	(422, 0, 0),
	(423, 0, 0),
	(424, 0, 0),
	(421, 0, 0),
	(400, 0, 0),
	(402, 0, 0),
	(401, 0, 0),
	(404, 0, 0),
	(403, 0, 0),
	(405, 0, 0),
	(407, 0, 0),
	(406, 0, 0),
	(411, 0, 0),
	(416, 0, 0),
	(417, 0, 0),
	(413, 0, 0),
	(412, 0, 0),
	(415, 0, 0),
	(414, 0, 0),
	(409, 0, 0),
	(426, 0, 0);

DELETE FROM `oc_product_to_store`;
INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
	(400, 0),
	(401, 0),
	(402, 0),
	(403, 0),
	(404, 0),
	(405, 0),
	(406, 0),
	(407, 0),
	(408, 0),
	(409, 0),
	(410, 0),
	(411, 0),
	(412, 0),
	(413, 0),
	(414, 0),
	(415, 0),
	(416, 0),
	(417, 0),
	(418, 0),
	(419, 0),
	(420, 0),
	(421, 0),
	(422, 0),
	(423, 0),
	(424, 0),
	(426, 0);

DELETE FROM `oc_review`;
INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `answer`, `answer_from`, `rating`, `status`, `date_added`, `date_modified`) VALUES
	(1, 0, 0, 'Кристина', 'Заказывала в магазине уже 5 раз. Все нравиться, ребята молодцы, так держать. Всем рекомендую! Дружелюбный персонал подсказал че каво, куда и как. Подарили мне купоны на скидку как постоянному покупашке.', '', '', 5, 1, '2016-05-10 00:00:00', '2016-05-31 22:44:21'),
	(2, 0, 0, 'Марина', 'Не следует, однако забывать, что дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки модели развития. Не следует, однако забывать, что рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании новых предложений. Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности требуют от нас анализа новых предложений.', '', '', 3, 1, '2016-05-12 00:00:00', '0000-00-00 00:00:00'),
	(3, 0, 0, 'Анатолий', 'Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет выполнять важные задания по разработке новых предложений. Идейные соображения высшего порядка, а также рамки и место обучения кадров в значительной степени обуславливает создание новых предложений. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. Значимость этих проблем настолько очевидна, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации.', '', '', 1, 1, '2016-05-15 00:00:00', '0000-00-00 00:00:00'),
	(4, 0, 0, 'Иванов Вася', 'Задача организации, в особенности же постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что начало повседневной работы по формированию позиции требуют от нас анализа систем массового участия. Равным образом начало повседневной работы по формированию позиции требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач. Задача организации, в особенности же реализация намеченных плановых заданий позволяет выполнять важные задания по разработке соответствующий условий активизации. С другой стороны реализация намеченных плановых заданий влечет за собой процесс внедрения и модернизации соответствующий условий активизации.', 'Спасибо за расширенный отзыв.', 'Администратор', 5, 1, '2016-05-31 00:00:00', '2016-11-28 19:50:24'),
	(22, 426, 0, 'Анатолий', 'Купил вчера жене, хз вроде нравится. Пока не совсем понятно.', 'Спасибо за отзыв. Жена будет довольна!', 'Администратор', 4, 1, '2016-05-30 08:20:58', '2016-11-28 18:56:07'),
	(21, 426, 0, 'Ира', 'Нормалек, на лето покатит.', '', '', 4, 1, '2016-06-01 08:19:09', '0000-00-00 00:00:00'),
	(18, 421, 0, 'Любовь Ивановна', 'Внучке очень понравилось. Симпотишное платишко и качество на высоте. Удачная покупка!', '', '', 5, 1, '2016-05-25 21:18:15', '0000-00-00 00:00:00'),
	(19, 421, 0, 'Ира', 'Ну ващееее, размер не сходится с описанием...', '', '', 1, 1, '2016-06-01 21:18:54', '0000-00-00 00:00:00'),
	(20, 426, 0, 'Яна', 'Отличный сарафан, я довольна.', 'Носите с удовольствием.', 'Анна', 5, 1, '2016-06-02 08:18:08', '2016-11-28 18:55:15'),
	(13, 407, 0, 'Тамара', 'Купила, хожу не нарадуюсь. Шик!', '', '', 5, 1, '2016-05-28 21:13:10', '0000-00-00 00:00:00'),
	(14, 407, 0, 'Настя', 'С другой стороны начало повседневной работы по формированию позиции требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Таким образом консультация с широким активом в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям.', '', '', 1, 1, '2016-06-01 21:13:34', '0000-00-00 00:00:00'),
	(15, 408, 0, 'Кристина', 'Юбка порвалась через 2 дня. Присела, а она треснула по швам! Ну а так ниче, норм.', '', '', 2, 1, '2016-05-30 21:15:15', '0000-00-00 00:00:00'),
	(16, 408, 0, 'Василиса', 'Шикардос! Советую, и недорого.', '', '', 5, 1, '2016-06-01 21:15:45', '0000-00-00 00:00:00'),
	(17, 408, 0, 'Саша', 'Разнообразный и богатый опыт сложившаяся структура организации требуют от нас анализа систем массового участия. Идейные соображения высшего порядка, а также реализация намеченных плановых заданий представляет собой интересный эксперимент проверки систем массового участия. Не следует, однако забывать, что постоянный количественный рост и сфера нашей активности представляет собой интересный эксперимент проверки форм развития.', '', '', 5, 1, '2016-04-11 21:16:01', '2016-06-01 21:16:13'),
	(12, 402, 0, 'Марина', 'Такое классное платишко! Но денег нет ((', '', '', 4, 1, '2016-06-01 21:12:28', '0000-00-00 00:00:00');

UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'tax_status';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_product_count';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/cart.png' WHERE `key` = 'config_icon';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/logo.svg' WHERE `key` = 'config_logo';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_stock_display';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_tax';
UPDATE `oc_setting` SET `value` = '8 (495) 222-33-44' WHERE `key` = 'config_telephone';
UPDATE `oc_setting` SET `value` = 'mail@moda.oc-mod.ru' WHERE `key` = 'config_email';
UPDATE `oc_setting` SET `value` = 'г. Москва, ул. Расплетина, 20' WHERE `key` = 'config_address';
UPDATE `oc_setting` SET `value` = 'Интернет-магазин одежды' WHERE `key` = 'config_name';
UPDATE `oc_setting` SET `value` = 'Интернет-магазин одежды' WHERE `key` = 'config_meta_title';
UPDATE `oc_setting` SET `value` = 'revolution' WHERE `key` = 'config_theme';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_stock_warning';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_cart_weight';
UPDATE `oc_setting` SET `value` = 'ru-ru' WHERE `key` = 'config_language';
UPDATE `oc_setting` SET `value` = 'ru-ru' WHERE `key` = 'config_admin_language';
UPDATE `oc_setting` SET `value` = 'RUB' WHERE `key` = 'config_currency';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_review_status';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_seo_url';
UPDATE `oc_setting` SET `value` = 'seo_pro' WHERE `key` = 'config_seo_url_type';
	
DELETE FROM `oc_url_alias`;
INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
	('', 'revolution/revplast', 'latest'),
	('', 'revolution/revpbest', 'best'),
	('', 'revolution/revstorereview', 'otzivy'),
	('', 'revolution/revcheckout', 'make_order'),
	('', 'revolution/account/revaccount', 'my_account'),
	('', 'revolution/account/revedit', 'edit_account'),
	('', 'revolution/account/revregister', 'register_account'),
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
	('', 'manufacturer_id=37', 'cadence'),
	('', 'information_id=4', 'about_us'),
	('', 'information_id=6', 'delivery'),
	('', 'information_id=3', 'paymant'),
	('', 'information_id=5', 'waranty'),
	('', 'revblog_id=7', '1_novost'),
	('', 'revblog_id=8', '2_novost'),
	('', 'revblog_id=9', '3_novost'),
	('', 'revblog_id=10', '4_novost'),
	('', 'revblog_category_id=3', 'news'),
	('', 'revblog_category_id=5', 'obzory'),
	('', 'account/simpleregister', 'simpleregister'),
	('', 'checkout/simplecheckout', 'simplecheckout'),
	('', 'product_id=411', 'top_2'),
	('', 'information_id=4', 'about_us'),
	('', 'product_id=410', 'top_1'),
	('', 'product_id=409', 'skirt_2'),
	('', 'product_id=408', 'skirt_1'),
	('', 'product_id=407', 'dress_8'),
	('', 'product_id=406', 'dress_7'),
	('', 'product_id=405', 'dress_6'),
	('', 'manufacturer_id=36', 'brave_soul'),
	('', 'manufacturer_id=34', 'armani_jeans'),
	('', 'manufacturer_id=35', 'boboli'),
	('', 'information_id=6', 'delivery'),
	('', 'information_id=3', 'paymant'),
	('', 'information_id=5', 'waranty'),
	('', 'product_id=404', 'dress_5'),
	('', 'product_id=403', 'dress_4'),
	('', 'product_id=402', 'dress_3'),
	('', 'product_id=401', 'dress_2'),
	('', 'product_id=400', 'dress_1'),
	('', 'manufacturer_id=42', 'just_cavalli'),
	('', 'manufacturer_id=52', 'z_generation'),
	('', 'manufacturer_id=38', 'casadei'),
	('', 'manufacturer_id=40', 'etro'),
	('', 'manufacturer_id=41', 'jil_sander_navy'),
	('', 'manufacturer_id=43', 'm_missoni'),
	('', 'manufacturer_id=44', 'mango'),
	('', 'manufacturer_id=45', 'marshall_original'),
	('', 'manufacturer_id=46', 'name_it'),
	('', 'manufacturer_id=47', 'oodji'),
	('', 'manufacturer_id=48', 'pinko'),
	('', 'manufacturer_id=49', 'tommy_hilfiger'),
	('', 'manufacturer_id=50', 'vila'),
	('', 'manufacturer_id=51', 'ws_shoes'),
	('', 'category_id=998811', 'wooman'),
	('', 'category_id=998822', 'man'),
	('', 'category_id=998833', 'kid'),
	('', 'category_id=9988111', 'wooman_odegda'),
	('', 'category_id=9988112', 'wooman_shoes'),
	('', 'category_id=9988113', 'wooman_hats'),
	('', 'category_id=9988114', 'wooman_accessories'),
	('', 'category_id=9988115', 'wooman_figgery'),
	('', 'category_id=9988221', 'man_odegda'),
	('', 'category_id=9988222', 'man_shoes'),
	('', 'category_id=9988223', 'man_hats'),
	('', 'category_id=9988224', 'man_accessories'),
	('', 'category_id=99882211', 'man_futbolki'),
	('', 'category_id=99882212', 'man_trikotazh'),
	('', 'category_id=99882213', 'man_rubashki'),
	('', 'category_id=99882214', 'man_kostumi'),
	('', 'category_id=99882215', 'man_socks'),
	('', 'category_id=99881111', 'wooman_dresses'),
	('', 'category_id=99881112', 'wooman_shorts'),
	('', 'category_id=99881113', 'wooman_skirts'),
	('', 'category_id=99881114', 'wooman_tops'),
	('', 'category_id=99881115', 'wooman_tshirts'),
	('', 'category_id=99881121', 'wooman_kedy'),
	('', 'category_id=99881122', 'wooman_tufli'),
	('', 'category_id=9988331', 'kid_girls'),
	('', 'category_id=9988332', 'kid_boys'),
	('', 'category_id=99883311', 'kid_girls_platia'),
	('', 'category_id=99883312', 'kid_girls_fytbolki'),
	('', 'category_id=99883313', 'kid_girls_shorty'),
	('', 'category_id=99883314', 'kid_girls_noski'),
	('', 'category_id=99883321', 'kid_boys_rybawki'),
	('', 'category_id=99883322', 'kid_boys_kedy'),
	('', 'product_id=412', 'shirt_1'),
	('', 'product_id=413', 'shirt_2'),
	('', 'product_id=414', 'shorts_1'),
	('', 'product_id=415', 'shorts_2'),
	('', 'product_id=416', 'tufli_1'),
	('', 'product_id=417', 'tufli_2'),
	('', 'product_id=418', 'tufli_3'),
	('', 'product_id=419', 'kedy_1'),
	('', 'product_id=420', 'kedy_2'),
	('', 'product_id=421', 'platie_1'),
	('', 'product_id=422', 'platie_2'),
	('', 'product_id=423', 'platie_3'),
	('', 'product_id=424', 'platie_4'),
	('', 'product_id=426', 'dress_9');

DELETE FROM `oc_setting` WHERE `code` LIKE "rev%" AND `key` LIKE "rev%" AND `key` NOT LIKE "revtheme_license%" AND `key` NOT LIKE "revthemel_license";

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_icon', '{"1":{"image":"catalog\\/revolution\\/payment\\/visa.png","href":"","sort":"0"},"2":{"image":"catalog\\/revolution\\/payment\\/master.png","href":"","sort":"1"},"3":{"image":"catalog\\/revolution\\/payment\\/maestro.png","href":"","sort":"2"},"4":{"image":"catalog\\/revolution\\/payment\\/sberbank.png","href":"","sort":"3"},"5":{"image":"catalog\\/revolution\\/payment\\/privat.png","href":"","sort":"4"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_all_settings', '{"color_all_document":"FFFFFF","color_href":"2A6FBA","color_href_hover":"DD4B39","color_cart":"E47364","color_cart_hover":"DD4B39","color_top3":"2A6FBA","color_footer":"2563A6","color_amazon":"555555","color_top3_cart":"2F7BCF","all_document_width":"0","all_document_h_f_width":"0","all_document_margin":"1","all_fon_image":"catalog\/revolution\/backgrounds\/greyfloral.png","all_fon_image_css_1":"1","all_fon_image_css_2":"1","all_content_width":"0","color_selecta":"EAEAEA","preloader":"catalog\/revolution\/preloaders\/revpreloader3.svg","cat_compact":"0","cat_opis_opt":"0","cache_on":"0","error404":"1","n_progres":"1","razmiv_cont":"1","zatemn_cont":"1","opacity_cont":"1","pol_konf":"0","pol_konf_tvivod":"0","revcheckout_status":"1","revcheckout_login":"1","revcheckout_register":"0","revcheckout_customer_group":"0","revcheckout_name":"2","revcheckout_family":"0","revcheckout_telephone":"2","revcheckout_telephone_mask":"+7 (999) 9999999","revcheckout_mail":"1","revcheckout_comment":"1","revcheckout_reg_adres":"0","revcheckout_country":"0","revcheckout_region":"0","revcheckout_index":"0","revcheckout_city":"1","revcheckout_adres":"1","revcheckout_foto":"1","revcheckout_model":"0","revcheckout_sku":"1","revcheckout_kolvo":"1","revcheckout_vsego":"1","1":{"revcheckout_description":"","revregister_description":"","revaccount_description":"","description":"","modal_header":"","text_no":"\u041d\u0435\u0442","text_yes":"\u0414\u0430","modal_text":""},"2":{"revcheckout_description":"","revregister_description":"","revaccount_description":"","description":"","modal_header":"","text_no":"\u041d\u0435\u0442","text_yes":"\u0414\u0430","modal_text":""},"revregister_status":"1","revregister_legends":"0","revregister_custom_fields":"0","revregister_customer_group":"0","revregister_name":"1","revregister_family":"0","revregister_telephone":"0","revregister_telephone_mask":"+7 (999) 9999999","revregister_mail":"1","revregister_newsletter":"0","revregister_country":"0","revregister_region":"0","revregister_index":"0","revregister_city":"0","revregister_adres":"0","revaccount_allurls":"1","revaccount_wishlist":"0","revaccount_orders":"1","revaccount_files":"0","revaccount_bonus":"0","revaccount_returns":"0","revaccount_pay_history":"0","revaccount_pay_regular":"0","m_conts":"0","dop_conts":"1","soc_conts":"1","soc_conts_url":"1","f_svazy":"1","yamap":"","otzivy_status":"1","modal_status":"0","modal_time":"0","modal_buttons":"0","microdata_status":"0","microdata_postcode":"","microdata_city":"","microdata_adress":"","microdata_phones":"","microdata_social":"","microdata_email":"","watermark_status_true":"1","watermark_status":"0","watermark_type":"text","watermark_text":"rev40.loc","watermark_image":"no_image.png","watermark_font_size":"10","watermark_color":"333333","watermark_position":"bottomleft","watermark_opacity":"70","watermark_angle":"0","watermark_offset":{"x":"21","y":"10"},"watermark_scaling":{"width":"800","height":"800"},"watermark_min":{"width":"228","height":"228"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_geo_set', '{"status":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revblog', 'revblog_settings', '{"category_image_status":"1","category_image_width":"80","category_image_height":"80","list_desc_limit":"400","list_image_width":"80","list_image_height":"80","main_image_status":"1","form_image_width":"400","form_image_height":"400","images_image_width":"213","images_image_height":"213","share_status":"1","not_view_null":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_all', '{"in_top":"1","popup_phone":"1","f_map":"0","copy":"1","1":{"copy_text":""},"2":{"copy_text":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_custom_footer', '{"status":"0","dops_pc_status":"1","cf_1_status":"1","cf_1_width":"25","cf_2_status":"1","cf_2_width":"25","cf_3_status":"1","cf_3_width":"50","cf_4_status":"0","cf_4_width":"20","cf_5_status":"0","cf_5_width":"20","1":{"cf_1_description":"","cf_2_description":"","cf_3_description":"","cf_4_description":"","cf_5_description":""},"2":{"cf_1_description":"","cf_2_description":"","cf_3_description":"","cf_4_description":"","cf_5_description":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_tax_class_id', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_cost', '300', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_revcheckoutshippay', 'revtheme_revcheckoutshippay', '{"pickup":["adres_on","cod"],"revship2":["adres_on","cod"]}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_thumb_height', '400', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_thumb_width', '400', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_category_height', '80', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_category_width', '80', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_product_description_length', '100', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_product_limit', '12', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_status', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_directory', 'revolution', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_socv', '{"status_vk":"1","width_vk":"260","height_vk":"280","id_vk":"20003922","status_fb":"0","width_fb":"","height_fb":"","id_fb":"","status_ok":"0","width_ok":"","height_ok":"","id_ok":"","status_insta":"1","right_insta":"0","width_insta":"260","id_insta":"instagram"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_popup_height', '800', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_popup_width', '800', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_product_width', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_location_height', '50', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_location_width', '268', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_cart_height', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_cart_width', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_compare_height', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_compare_width', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_additional_height', '74', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_additional_width', '74', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_product_height', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_related_width', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_related_height', '228', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_2', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_3', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_4', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_5', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_subscribe', '{"status":"1","1":{"title":"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0448\\u0438\\u0441\\u044c \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","text":"\\u041d\\u0435 \\u043f\\u0440\\u043e\\u043f\\u0443\\u0441\\u0442\\u0438 \\u043d\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u0441\\u043f\\u0435\\u0446\\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f","text_uspeh":"\\u041f\\u043e\\u0437\\u0434\\u0440\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c! \\u0412\\u044b \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043b\\u0438\\u0441\\u044c \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443."},"2":{"title":"","text":"","text_uspeh":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_link', '{"1":{"link":{"1":"news","2":""},"title":{"1":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","2":""},"sort":"0"},"2":{"link":{"1":"obzory","2":""},"title":{"1":"\\u041e\\u0431\\u0437\\u043e\\u0440 \\u043d\\u043e\\u0432\\u0438\\u043d\\u043e\\u043a","2":""},"sort":"1"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_soc', '{"1":{"image":"fa fa-vk","link":{"1":"https:\\/\\/vk.com","2":""},"title":{"1":"\\u041c\\u044b \\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435","2":""},"sort":"0"},"2":{"image":"fa fa-odnoklassniki","link":{"1":"http:\\/\\/ok.ru","2":""},"title":{"1":"\\u041c\\u044b \\u0432 \\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u043a\\u0430\\u0445","2":""},"sort":"1"},"3":{"image":"fa fa-youtube","link":{"1":"https:\\/\\/www.youtube.com","2":""},"title":{"1":"\\u041c\\u044b \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431\\u0435","2":""},"sort":"2"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_2', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_3', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_link2', '{"1":{"title":{"1":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438","2":""},"link":{"1":"latest","2":""},"icontype":"1","icon":"fa fa-calendar-o","image":"no_image.png","sort":"0"},"2":{"title":{"1":"\\u0425\\u0438\\u0442\\u044b","2":""},"link":{"1":"best","2":""},"icontype":"1","icon":"fa fa-star-o","image":"no_image.png","sort":"2"},"3":{"title":{"1":"\\u0410\\u043a\\u0446\\u0438\\u0438","2":""},"link":{"1":"specials","2":""},"icontype":"1","icon":"fa fa-bell-o","image":"no_image.png","sort":"1"},"4":{"title":{"1":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b","2":""},"link":{"1":"otzivy","2":""},"icontype":"1","icon":"fa fa-comments-o","image":"no_image.png","sort":"3"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_4', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_5', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_blog', '{"status":"1","1":{"title":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0430"},"2":{"title":""},"blog_category_id":"0","news_limit":"5","desc_limit":"200","count_r":"1","icontype":"1","icon":"fa fa-newspaper-o","image":"no_image.png","image_status":"1","image_width":"120","image_height":"120","b_color":"FFFFFF"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_aboutstore_home', '{"status":"1","1":{"title":"\\u041e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435","description":"&lt;p&gt;&lt;span style=&quot;font-family: Roboto; font-size: 14px;&quot;&gt;\\u0422\\u043e\\u0432\\u0430\\u0440\\u0438\\u0449\\u0438! \\u043a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u044f \\u0441 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u043c \\u0430\\u043a\\u0442\\u0438\\u0432\\u043e\\u043c \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u0441\\u043e\\u0431\\u043e\\u0439 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u044b\\u0439 \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0438\\u043c\\u0435\\u043d\\u0442 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u043a\\u0438 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439, \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u043c\\u044b\\u0445 \\u0443\\u0447\\u0430\\u0441\\u0442\\u043d\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0432 \\u043e\\u0442\\u043d\\u043e\\u0448\\u0435\\u043d\\u0438\\u0438 \\u043f\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0437\\u0430\\u0434\\u0430\\u0447. \\u0417\\u0430\\u0434\\u0430\\u0447\\u0430 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438, \\u0432 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0436\\u0435 \\u0443\\u043a\\u0440\\u0435\\u043f\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0438 \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u0435 \\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0443\\u0440\\u044b \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u043e\\u043c\\u0443 \\u043a\\u0440\\u0443\\u0433\\u0443 (\\u0441\\u043f\\u0435\\u0446\\u0438\\u0430\\u043b\\u0438\\u0441\\u0442\\u043e\\u0432) \\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u0435 \\u0432 \\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 \\u0444\\u043e\\u0440\\u043c \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044f. \\u041f\\u043e\\u0432\\u0441\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u0430\\u044f \\u043f\\u0440\\u0430\\u043a\\u0442\\u0438\\u043a\\u0430 \\u043f\\u043e\\u043a\\u0430\\u0437\\u044b\\u0432\\u0430\\u0435\\u0442, \\u0447\\u0442\\u043e \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430\\u043c\\u0435\\u0447\\u0435\\u043d\\u043d\\u044b\\u0445 \\u043f\\u043b\\u0430\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u0439 \\u0432\\u043b\\u0435\\u0447\\u0435\\u0442 \\u0437\\u0430 \\u0441\\u043e\\u0431\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441 \\u0432\\u043d\\u0435\\u0434\\u0440\\u0435\\u043d\\u0438\\u044f \\u0438 \\u043c\\u043e\\u0434\\u0435\\u0440\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u043d\\u0430\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0435\\u0441\\u0441\\u0438\\u0432\\u043d\\u043e\\u0433\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044f. \\u0418\\u0434\\u0435\\u0439\\u043d\\u044b\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432\\u044b\\u0441\\u0448\\u0435\\u0433\\u043e \\u043f\\u043e\\u0440\\u044f\\u0434\\u043a\\u0430, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u043d\\u0430\\u0447\\u0430\\u043b\\u043e \\u043f\\u043e\\u0432\\u0441\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e\\u0439 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u043f\\u043e \\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044e \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0435\\u0442 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u044f\\u0442\\u044c \\u0432\\u0430\\u0436\\u043d\\u044b\\u0435 \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u044f \\u043f\\u043e \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u043a\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044f. \\u0420\\u0430\\u0437\\u043d\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u043d\\u044b\\u0439 \\u0438 \\u0431\\u043e\\u0433\\u0430\\u0442\\u044b\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u043a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u044f \\u0441 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u043c \\u0430\\u043a\\u0442\\u0438\\u0432\\u043e\\u043c \\u0438\\u0433\\u0440\\u0430\\u0435\\u0442 \\u0432\\u0430\\u0436\\u043d\\u0443\\u044e \\u0440\\u043e\\u043b\\u044c \\u0432 \\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u043c\\u0430\\u0441\\u0441\\u043e\\u0432\\u043e\\u0433\\u043e \\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u044f.&lt;\\/span&gt;&lt;\\/p&gt;"},"2":{"title":"","description":""},"icontype":"1","icon":"fa fa-pencil-square-o","image":"no_image.png"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_categorywall', '{"status":"0","mobi_status":"0","1":{"title":"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438"},"2":{"title":""},"icontype":"1","icon":"fa none","image":"no_image.png","sort_order":"1","categories":"0","group_manufs":"0","group_manufs_simbol":"0","group_manufs_link":{"1":"","2":""},"group_manufs_link_href":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_tabs', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_last', '{"status":"1","1":{"title":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438"},"2":{"title":""},"url_all":"0","icontype":"1","icon":"fa fa-calendar-o","image":"no_image.png","limit":"12","not_view_null":"0","slider":"1","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_best', '{"status":"1","1":{"title":"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436"},"2":{"title":""},"url_all":"0","icontype":"1","icon":"fa fa-star-o","image":"no_image.png","limit":"6","not_view_null":"0","slider":"1","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_spec', '{"status":"1","1":{"title":"\\u0410\\u043a\\u0446\\u0438\\u0438"},"2":{"title":""},"url_all":"0","icontype":"1","icon":"fa fa-bell-o","image":"no_image.png","limit":"12","not_view_null":"0","slider":"1","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_1', '{"status":"1","1":{"title":"\\u041f\\u043b\\u0430\\u0442\\u044c\\u044f \\u0434\\u043b\\u044f \\u0434\\u0435\\u0432\\u043e\\u0447\\u0435\\u043a","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa fa-mercury","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"99883311","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_3', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_all', '{"1":{"h1_home":"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u043e\\u0434\\u0435\\u0436\\u0434\\u044b"},"2":{"h1_home":""},"pr_opisanie":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_slideshow', '{"status":"1","banner_id":"7","allwide":"0","mobile":"1","slides":"1","autoscroll":"9","width":"1140","height":"380","b_color":"FAFAFA"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_blocks_home', '{"status":"1","effect":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_blocks_home_item', '{"10":{"icontype":"1","icon":"fa fa-paper-plane-o","image":"no_image.png","title":{"1":"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u043f\\u043e \\u043c\\u0438\\u0440\\u0443","2":""},"description":{"1":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u043c \\u0442\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434 \\u043c\\u0438\\u0440\\u0430","2":""},"link":{"1":"delivery","2":""},"checkbox":"1","sort":"0"},"11":{"icontype":"1","icon":"fa fa-check-square-o","image":"no_image.png","title":{"1":"100% \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f","2":""},"description":{"1":"\\u0412\\u0441\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u0446\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b","2":""},"link":{"1":"waranty","2":""},"sort":"1"},"12":{"icontype":"1","icon":"fa fa-refresh","image":"no_image.png","title":{"1":"\\u0412\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430","2":""},"description":{"1":"\\u0412\\u0435\\u0440\\u043d\\u0435\\u043c \\u0432\\u0430\\u043c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0432 \\u0441\\u0440\\u043e\\u043a \\u0434\\u043e 30 \\u0434\\u043d\\u0435\\u0439","2":""},"link":{"1":"","2":""},"sort":"2"},"13":{"icontype":"1","icon":"fa fa-rouble","image":"no_image.png","title":{"1":"\\u0421\\u0430\\u043c\\u044b\\u0435 \\u043d\\u0438\\u0437\\u043a\\u0438\\u0435 \\u0446\\u0435\\u043d\\u044b","2":""},"description":{"1":"\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0440\\u0443\\u0435\\u043c \\u0432\\u0430\\u043c \\u0441\\u0430\\u043c\\u044b\\u0435 \\u043d\\u0438\\u0437\\u043a\\u0438\\u0435 \\u0446\\u0435\\u043d\\u044b","2":""},"link":{"1":"","2":""},"sort":"3"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_viewed_products', '{"status":"0","1":{"zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"2":{"zagolovok":""},"icontype":"1","icon":"fa none","image":"no_image.png","limit":"8"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_user_set', '{"styles":"#top2 .header_conts {margin-top: 0}\r\n#top6 {margin-bottom: 30px}\r\np.hid_telephone {display: none}\r\n#menu .nav &gt; li {border-right: 1px solid rgba(0,0,0, 0.1);}#menu .nav &gt; li:first-child {border-left: 1px solid rgba(0,0,0, 0.1);}\r\n#blog_mod .blog-list .image {margin: 0 10px 10px 0; float: left; width: 100px;}\r\n#blog_mod .blog-list .opisb h4 {height: initial !important;}\r\n.search {margin-top: 20px; margin-left: 25px;}","scripts":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_seo', '{"seogen_rewrite":"1","product_url":"{product_name}","product_meta_title":{"1":"{product_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":"{product_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435."},"product_meta_h1":{"1":"{product_name}","2":"{product_name}"},"product_meta_description":{"1":"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c {product_name} \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435. \\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b \\u0438 \\u0446\\u0435\\u043d\\u0430 {product_name}.","2":"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c {product_name} \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435. \\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b \\u0438 \\u0446\\u0435\\u043d\\u0430 {product_name}."},"product_meta_keyword":{"1":"\\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d, {product_manufacturer}, {product_name}, {product_model}, {product_sku}.","2":"\\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d, {product_manufacturer}, {product_name}, {product_model}, {product_sku}."},"category_url":"{category_name}","category_meta_title":{"1":"{category_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":"{category_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435."},"category_meta_h1":{"1":"{category_name}","2":"{category_name}"},"category_meta_description":{"1":"{category_name} - \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0446\\u0435\\u043d\\u044b.","2":"{category_name} - \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0446\\u0435\\u043d\\u044b."},"category_meta_keyword":{"1":"{category_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":"{category_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d."},"manufacturer_url":"{manufacturer_name}","manufacturer_meta_title":{"1":"{manufacturer_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":"{manufacturer_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435."},"manufacturer_meta_h1":{"1":"{manufacturer_name}","2":"{manufacturer_name}"},"manufacturer_meta_description":{"1":"\\u0412\\u044b\\u0431\\u043e\\u0440 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438\\u0437 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430 {manufacturer_name}.","2":"\\u0412\\u044b\\u0431\\u043e\\u0440 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438\\u0437 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430 {manufacturer_name}."},"manufacturer_meta_keyword":{"1":"{manufacturer_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":"{manufacturer_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d."},"information_url":"{information_name}","information_meta_title":{"1":"{information_name}","2":"{information_name}"},"information_meta_h1":{"1":"{information_name}","2":"{information_name}"},"information_meta_description":{"1":"{information_name}","2":"{information_name}"},"information_meta_keyword":{"1":"{information_name}","2":"{information_name}"},"revblog_category_url":"{revblog_category_name}","revblog_category_meta_title":{"1":"{revblog_category_name}","2":"{revblog_category_name}"},"revblog_category_meta_description":{"1":"{revblog_category_name}","2":"{revblog_category_name}"},"revblog_category_meta_keyword":{"1":"{revblog_category_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":"{revblog_category_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d."},"revblog_url":"{revblog_name}","revblog_meta_title":{"1":"{revblog_name}","2":"{revblog_name}"},"revblog_meta_description":{"1":"{revblog_category_name} - {revblog_name}.","2":"{revblog_category_name} - {revblog_name}."},"revblog_meta_keyword":{"1":"{revblog_category_name}, {revblog_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":"{revblog_category_name}, {revblog_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d."}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_status', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_sort_order', '2', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_catattribs', 'revtheme_catattribs_settings', '{"attributes":{"15":{"show":"0","replace":""},"21":{"show":"0","replace":""},"28":{"show":"0","replace":""},"29":{"show":"0","replace":""},"30":{"show":"0","replace":""},"31":{"show":"0","replace":""},"32":{"show":"0","replace":""},"23":{"show":"0","replace":""},"24":{"show":"1","replace":""},"25":{"show":"0","replace":""},"26":{"show":"0","replace":""},"27":{"show":"1","replace":""}}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_storereview', '{"status":"1","1":{"title":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b","button_all_text":"\\u0427\\u0438\\u0442\\u0430\\u0442\\u044c \\u0432\\u0441\\u0435 \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b"},"2":{"title":"","button_all_text":""},"icontype":"1","icon":"fa fa-comments-o","image":"no_image.png","button_all":"0","limit":"6","order":"0","limit_text":"200"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_cart', '{"icontype":"1","icon":"fa fa-shopping-basket","image":"no_image.png","type":"modal","cart_vspl":"0","cart_size":"standart","cart_carturl":"0","cart_quick":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_all', '{"category_desc":"0","podcategory_status":"1","podcategory_imgs":"1","podcategory_cols":"6","manuf_desc":"1","product_in_cart":"1","ch_quantity":"1","rev_srav_prod":"1","rev_wish_prod":"1","rev_wish_srav_prod":"1","popup_view":"1","img_slider":"1","chislo_ryad":"1","vid_grid":"1","vid_list":"1","vid_price":"1","vid_default":"vid_grid","pagination":"standart_knopka"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_last', '{"last_products":"","limit":"12","filter_day":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_best', '{"best_products":"","limit":"6","filter_buy":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_sorts_category', '{"group_default":"0","sort_default":"p.sort_order","sort_default_adesc":"ASC","order_ASC":"1","1":{"order_ASC_text":"","name_ASC_text":"\\u041f\\u043e \\u043d\\u0430\\u0438\\u043c\\u0435\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044e","name_DESC_text":"","price_ASC_text":"\\u0426\\u0435\\u043d\\u0430 \\u043f\\u043e \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u0430\\u043d\\u0438\\u044e","price_DESC_text":"\\u0426\\u0435\\u043d\\u0430 \\u043f\\u043e \\u0443\\u0431\\u044b\\u0432\\u0430\\u043d\\u0438\\u044e","rating_DESC_text":"\\u041f\\u043e \\u0440\\u0435\\u0439\\u0442\\u0438\\u043d\\u0433\\u0443","rating_ASC_text":"","model_ASC_text":"","model_DESC_text":"","date_added_ASC_text":"","date_added_DESC_text":"\\u041f\\u043e \\u0434\\u0430\\u0442\\u0435 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f"},"2":{"order_ASC_text":"","name_ASC_text":"","name_DESC_text":"","price_ASC_text":"","price_DESC_text":"","rating_DESC_text":"","rating_ASC_text":"","model_ASC_text":"","model_DESC_text":"","date_added_ASC_text":"","date_added_DESC_text":""},"name_ASC":"1","name_DESC":"0","price_ASC":"1","price_DESC":"1","rating_DESC":"1","rating_ASC":"0","model_ASC":"0","model_DESC":"0","date_added_ASC":"0","date_added_DESC":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_stiker', '{"status":"1","new_status":"1","best_status":"1","spec_status":"1","sklad_status":"0","stock_status":"1","stiker_netu_stock":"0","upc":"0","ean":"0","jan":"0","isbn":"0","mpn":"0","last_color":"C5EFF7","last_color_text":"333333","best_color":"C8F7C5","best_color_text":"333333","spec_color":"FDE3A7","spec_color_text":"333333","netu_color":"EEEEEE","netu_color_text":"333333","user_color":"EEEEEE","user_color_text":"333333"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_popuporder', '{"status":"1","quick_btn":"0","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1","order_status":"2"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_compare', '{"cat_sort":"1","main_cat":"0","compare_price":"1","compare_model":"1","compare_sku":"1","compare_manuf":"1","compare_stock":"1","compare_rate":"1","compare_srtdesc":"1","compare_weight":"1","compare_razmer":"1","compare_atrib":"1","compare_atribgr":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_mods', '{"viewed_products":"0","1":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"2":{"viewed_products_zagolovok":""},"viewed_products_limit":"8"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_attributes', '{"description_on":"1","description_in_grid":"1","options_in_cat":"1","options_in_grid":"1","short_desc":"0","zamena_description":"1","manufacturer":"1","model":"1","sku":"0","stock":"1","length":"0","weight":"0","attributes_status":"0","show_name":"1","show_tags":"1","count":"5","separator":"&lt;br&gt;"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_all', '{"popup_purchase":"1","zakaz":"0","zakaz_price_null":"0","recalc_price":"1","recalc_price_animate":"0","q_zavisimost":"1","opt_price":"0","countdown":"1","recpr_rightc":"0","answers":"1","blogs":"1","share_status":"1","short_desc":"0","pr_tabs":"1","desc_cols":"0","spec_cols":"0","atributs":"0","atributs_group_name":"0","atributs_ssilka_all":"1","manufacturer_status":"1","model_status":"1","sku_status":"0","bonusbals_status":"0","sklad_status":"1","ostatok_status":"0","weight_status":"0","razmers":"0","options_two_in_line":"1","options_ravno_plus":"0","option_f_auto":"0","options_buy":"0","options_buy_optionname":"0","options_buy_optionname_one":"0","options_buy_foto":"0","options_buy_model":"1","options_buy_quantity":"1","options_buy_click":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_predzakaz', '{"status":"1","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1","order_status":"2"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_images', '{"zoom":"1","slider":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_mods', '{"viewed_products":"0","1":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438","text_block_zagolovok":""},"2":{"viewed_products_zagolovok":"","text_block_zagolovok":""},"viewed_products_limit":"8","text_block":"1","text_block_cols":"col-sm-12","text_block_cols_2":"col-sm-12"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_blocks_product_item', '{"10":{"icontype":"1","icon":"fa fa-female","image":"no_image.png","title":{"1":"\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u0430\\u044f \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043a\\u0430:","2":""},"description":{"1":"\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u043e \\u043f\\u0440\\u0438\\u0432\\u0435\\u0437\\u0435\\u043c \\u0432\\u0430\\u043c \\u043d\\u0430 \\u0432\\u044b\\u0431\\u043e\\u0440 \\u0438 \\u043f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043a\\u0443 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u043e\\u0432 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0432\\u044b \\u043f\\u043e\\u0434\\u043e\\u0431\\u0440\\u0430\\u043b\\u0438 \\u043d\\u0443\\u0436\\u043d\\u0443\\u044e \\u0432\\u0435\\u0449\\u044c.","2":""},"link":{"1":"","2":""},"sort":"0"},"11":{"icontype":"1","icon":"fa fa-wpforms","image":"no_image.png","title":{"1":"\\u041d\\u043e\\u0432\\u0430\\u044f \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u0439 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438","2":""},"description":{"1":"\\u0420\\u0430\\u0437\\u043d\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u043d\\u044b\\u0439 \\u0438 \\u0431\\u043e\\u0433\\u0430\\u0442\\u044b\\u0439 \\u043e\\u043f\\u044b\\u0442 \\u043d\\u043e\\u0432\\u0430\\u044f \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u0439 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0435\\u043f\\u0435\\u043d\\u0438 \\u043e\\u0431\\u0443\\u0441\\u043b\\u0430\\u0432\\u043b\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u043f\\u043e\\u0437\\u0438\\u0446\\u0438\\u0439","2":""},"link":{"1":"4_novost","2":""},"sort":"1"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_phone', '{"1":{"text":"","text2":"","cod":"8 (495)","number":"222-33-44","cod2":"8 (495)","number2":"555-66-77","doptext2":"","doptext":""},"2":{"text":"","text2":"","cod":"","number":"","cod2":"","number2":"","doptext2":"","doptext":""},"icontype":"1","icon":"fa none","image":"catalog\\/revolution\\/telefon_header.png"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_dop_contacts_status', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_popupphone', '{"status":"1","under_phone":"1","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"0","comment":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_search', '{"ch_text":"0","1":{"doptext":""},"2":{"doptext":""},"in_category":"1","ajax_search_status":"1","ajax_search_limit":"10","ajax_search_model":"1","ajax_search_manufacturer":"0","ajax_search_tag":"1","ajax_search_sku":"1","ajax_search_upc":"0","ajax_search_mpn":"1","ajax_search_isbn":"0","ajax_search_jan":"0","ajax_search_ean":"0","ajax_search_description":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_menu', '{"sticky":"0","image_in_ico":"0","tri_level":"1","manuf":"0","n_column":"2","manuf_icontype":"1","manuf_icon":"fa none","manuf_image":"no_image.png","image_in_ico_m":"0","type":"0","cats_status":"1","zadergka":"1","icontype":"1","icon":"fa fa-bars","image":"no_image.png","on_line_cat":"0","inhome":"1","up_menu_height":"1","ogranich":"0","ogranich_count":"5"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_standart_links', '{"rev_lang":"0","rev_curr":"0","rev_srav":"1","rev_wish":"1","rev_acc":"1","rev_acc_zagolovok":"kabinet","popup_login":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_link', '{"1":{"title":{"1":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","2":""},"link":{"1":"contact-us","2":""},"sort":"0"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_version', '4.0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_filter', 'revtheme_filter', '{"status":"0","1":{"title":""},"2":{"title":""},"razdelitel":";","filter_price":"1","filter_price_setka":"1","filter_instock":"0","filter_instock_vid":"1","filter_gr":"false","filter_gr_vid":"0","filter_subcategories":"false","filter_subcategories_vid":"1","filter_manufacturer":"false","filter_manufacturer_vid":"1","filter_sposob":"1","filter_count_products":"1","filter_setka":"0","filter_option":{"14":{"option_type":"false","option_sort":"0","option_vid":"0"},"13":{"option_type":"false","option_sort":"0","option_vid":"0"}},"filter_attribute":{"12":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"13":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"14":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"16":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"17":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"18":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"19":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"20":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"22":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"33":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"}}}', '1');

TRUNCATE TABLE `oc_product_tab`;

INSERT INTO `oc_product_tab` (`product_tab_id`, `product_id`, `sort_order`, `status`) VALUES ('5', '421', '0', '1');
INSERT INTO `oc_product_tab` (`product_tab_id`, `product_id`, `sort_order`, `status`) VALUES ('6', '420', '0', '1');
INSERT INTO `oc_product_tab` (`product_tab_id`, `product_id`, `sort_order`, `status`) VALUES ('7', '407', '0', '1');
INSERT INTO `oc_product_tab` (`product_tab_id`, `product_id`, `sort_order`, `status`) VALUES ('12', '426', '0', '1');

TRUNCATE TABLE `oc_product_tab_desc`;

INSERT INTO `oc_product_tab_desc` (`product_tab_id`, `heading`, `description`, `product_id`, `language_id`) VALUES ('5', 'Внимание!', '&lt;p&gt;Скидка на платье Z Generation закончиться через 7 часов!&lt;/p&gt;', '421', '1');
INSERT INTO `oc_product_tab_desc` (`product_tab_id`, `heading`, `description`, `product_id`, `language_id`) VALUES ('6', 'Бесплатная доставка', '&lt;p&gt;Только сегодня на&amp;nbsp;кроссовки Etro действует бесплатная доставка. Успевай, покупай.&lt;/p&gt;', '420', '1');
INSERT INTO `oc_product_tab_desc` (`product_tab_id`, `heading`, `description`, `product_id`, `language_id`) VALUES ('7', 'О производителе Tommy Hilfiger', '&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Томми Хилфигер родился и вырос в штате Нью-Йорк. Он был вторым ребёнком из девяти. Родители Томми хотели, чтобы он стал инженером и отправили его на учёбу, однако будущий модельер не стал следовать их советам, бросил учёбу и отправился работать в торговлю. Тогда же он впервые столкнулся с основами бизнеса — купил джинсы, а после перепродал их по очень выгодной цене.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Вскоре Хилфигер открыл собственный секс шоп для подростков, но позже предприятие обанкротилось. Тогда Хилфайгер стал моделировать одежду для различных брендов, например, Calvin Klein и Perry Ellis.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;В 1985-м году модельер основал корпорацию Tommy Hilfiger Corporation, которая громко заявила о себе лишь в 1992-м году, когда на свет появилась коллекция мужской одежды Томми Хилфигер. В 1995 году Council of Fashion Designers of America назвала Хилфигера лучшим дизайнером мужской одежды.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;К 2004-му году компания расширилась, на её предприятиях работало более пяти с половиной тысяч человек, а доходы превышали 1,8 миллиарда долларов США.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Но в 2006-м году количество продаж уменьшилось, и модельер вынужден был продать компанию одной из частных инвестиционных организаций за 1,6 миллиарда долларов.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;В последующее время мнения многих СМИ, писавших о знаменитом дизайнере, резко разошлись. Некоторые критиковали одежду Хилфигера, другие, напротив, поощряли деятельность модельера.&lt;/span&gt;&lt;/p&gt;', '407', '1');
INSERT INTO `oc_product_tab_desc` (`product_tab_id`, `heading`, `description`, `product_id`, `language_id`) VALUES ('12', 'Скидка от Just Cavalli', '&lt;p&gt;Только на сарафан от бренда Just Cavalli сегодня действует скидка 23%&lt;br&gt;&lt;/p&gt;', '426', '1');

TRUNCATE TABLE `oc_revblog`;

INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('7', '', '2016-05-31 22:49:43', '2016-06-01 22:28:39', '2016-05-05', '0', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('8', 'catalog/revolution/akcia.jpg', '2016-05-31 22:57:47', '2016-06-01 22:17:05', '2016-05-10', '1', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('9', 'catalog/revolution/c_wooman.jpg', '2016-05-31 23:02:29', '2016-06-01 22:22:13', '2016-05-31', '2', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('10', 'catalog/revolution/demo_tovars/full_bak_2.jpg', '2016-05-31 23:09:52', '2016-06-02 08:30:01', '2016-05-31', '3', '1');

TRUNCATE TABLE `oc_revblog_category`;

INSERT INTO `oc_revblog_category` (`category_id`, `image`, `parent_id`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES ('5', 'catalog/revolution/c_montag.png', '0', '2', '1', '2016-11-19 18:50:33', '2016-11-28 19:29:36');
INSERT INTO `oc_revblog_category` (`category_id`, `image`, `parent_id`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES ('3', '', '0', '1', '1', '2016-11-18 23:05:48', '2016-11-28 19:29:20');

TRUNCATE TABLE `oc_revblog_category_description`;

INSERT INTO `oc_revblog_category_description` (`category_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('3', '1', 'Новости', '', 'Новости', '', '');
INSERT INTO `oc_revblog_category_description` (`category_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('5', '1', 'Обзор новинок', '&lt;p&gt;Тут описание категории статьи.. Поддержка HTML.&lt;br&gt;&lt;/p&gt;', 'Статьи', '', '');

TRUNCATE TABLE `oc_revblog_category_path`;

INSERT INTO `oc_revblog_category_path` (`category_id`, `path_id`, `level`) VALUES ('5', '5', '0');
INSERT INTO `oc_revblog_category_path` (`category_id`, `path_id`, `level`) VALUES ('3', '3', '0');

TRUNCATE TABLE `oc_revblog_category_to_layout`;

INSERT INTO `oc_revblog_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES ('5', '0', '0');
INSERT INTO `oc_revblog_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES ('3', '0', '0');

TRUNCATE TABLE `oc_revblog_category_to_store`;

INSERT INTO `oc_revblog_category_to_store` (`category_id`, `store_id`) VALUES ('3', '0');
INSERT INTO `oc_revblog_category_to_store` (`category_id`, `store_id`) VALUES ('5', '0');

TRUNCATE TABLE `oc_revblog_description`;

INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('7', '1', 'Значимость этих проблем настолько очевидна', 'Рекомендуемые товары', '', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия. Равным образом укрепление и развитие структуры требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Разнообразный и богатый опыт начало повседневной работы по формированию позиции позволяет оценить значение систем массового участия. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности способствует подготовки и реализации системы обучения кадров, соответствует насущным потребностям. С другой стороны рамки и место обучения кадров способствует подготовки и реализации направлений прогрессивного развития. Идейные соображения высшего порядка, а также сложившаяся структура организации в значительной степени обуславливает создание дальнейших направлений развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности требуют от нас анализа дальнейших направлений развития. Задача организации, в особенности же дальнейшее развитие различных форм деятельности способствует подготовки и реализации соответствующий условий активизации.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Значимость этих проблем настолько очевидна, что реализация намеченных плановых заданий влечет за собой процесс внедрения и модернизации форм развития. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности представляет собой интересный эксперимент проверки позиций, занимаемых участниками в отношении поставленных задач. С другой стороны укрепление и развитие структуры позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития. Таким образом дальнейшее развитие различных форм деятельности требуют определения и уточнения позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;', 'Значимость этих проблем настолько очевидна', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('8', '1', 'Скидка на платья Z Generation', 'Товары по акции', '', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Задача организации, в особенности же сложившаяся структура организации требуют от нас анализа направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что реализация намеченных плановых заданий играет важную роль в формировании соответствующий условий активизации. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа направлений прогрессивного развития. С другой стороны укрепление и развитие структуры в значительной степени обуславливает создание форм развития. Равным образом консультация с широким активом в значительной степени обуславливает создание систем массового участия.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Товарищи! дальнейшее развитие различных форм деятельности играет важную роль в формировании новых предложений. Не следует, однако забывать, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения существенных финансовых и административных условий. Товарищи! укрепление и развитие структуры влечет за собой процесс внедрения и модернизации системы обучения кадров, соответствует насущным потребностям. Не следует, однако забывать, что сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании существенных финансовых и административных условий. Товарищи! дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки форм развития. Идейные соображения высшего порядка, а также укрепление и развитие структуры требуют от нас анализа дальнейших направлений развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Таким образом реализация намеченных плановых заданий представляет собой интересный эксперимент проверки системы обучения кадров, соответствует насущным потребностям. Равным образом укрепление и развитие структуры обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач. Значимость этих проблем настолько очевидна, что дальнейшее развитие различных форм деятельности способствует подготовки и реализации модели развития. Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации форм развития. Значимость этих проблем настолько очевидна, что реализация намеченных плановых заданий обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;', 'Скидка на платья Z Generation', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('9', '1', 'Как и когда покупать дешевле в несколько раз?', 'Туфельки из новости', '', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Не следует, однако забывать, что дальнейшее развитие различных форм деятельности способствует подготовки и реализации систем массового участия. Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации форм развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Разнообразный и богатый опыт новая модель организационной деятельности играет важную роль в формировании дальнейших направлений развития. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности в значительной степени обуславливает создание направлений прогрессивного развития. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации существенных финансовых и административных условий. Значимость этих проблем настолько очевидна, что дальнейшее развитие различных форм деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке форм развития. Товарищи! рамки и место обучения кадров способствует подготовки и реализации новых предложений. Разнообразный и богатый опыт новая модель организационной деятельности позволяет выполнять важные задания по разработке систем массового участия. Задача организации, в особенности же новая модель организационной деятельности обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Товарищи! рамки и место обучения кадров представляет собой интересный эксперимент проверки систем массового участия. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. С другой стороны постоянный количественный рост и сфера нашей активности влечет за собой процесс внедрения и модернизации позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;', 'Как и когда покупать еще дешевле?', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('10', '1', 'Новая модель организационной деятельности', 'Вам будет это интересно', '', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Разнообразный и богатый опыт новая модель организационной деятельности в значительной степени обуславливает создание позиций, занимаемых участниками в отношении поставленных задач. Задача организации, в особенности же рамки и место обучения кадров в значительной степени обуславливает создание новых предложений. Задача организации, в особенности же консультация с широким активом требуют от нас анализа направлений прогрессивного развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности играет важную роль в формировании соответствующий условий активизации. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение направлений прогрессивного развития. С другой стороны дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки новых предложений. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации модели развития. Значимость этих проблем настолько очевидна, что укрепление и развитие структуры требуют от нас анализа систем массового участия.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Задача организации, в особенности же новая модель организационной деятельности требуют определения и уточнения систем массового участия. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации новых предложений. Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности способствует подготовки и реализации существенных финансовых и административных условий. Повседневная практика показывает, что укрепление и развитие структуры представляет собой интересный эксперимент проверки существенных финансовых и административных условий. Товарищи! укрепление и развитие структуры позволяет оценить значение соответствующий условий активизации. Повседневная практика показывает, что новая модель организационной деятельности представляет собой интересный эксперимент проверки направлений прогрессивного развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Равным образом реализация намеченных плановых заданий позволяет оценить значение форм развития. Таким образом реализация намеченных плановых заданий позволяет оценить значение форм развития.&lt;/span&gt;&lt;/p&gt;', 'Новая модель организационной деятельности', '', '');

TRUNCATE TABLE `oc_revblog_images`;

INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('11', '10', 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/2.jpg', '3');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('10', '10', 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/1.jpg', '2');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('9', '10', 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Adagio_60Sx/2.jpg', '1');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('8', '10', 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Adagio_60Sx/1.jpg', '0');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('12', '10', 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/3.jpg', '4');

TRUNCATE TABLE `oc_revblog_product`;

INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('7', '407');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('8', '421');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('9', '416');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('9', '417');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('10', '405');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('10', '407');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('10', '426');

TRUNCATE TABLE `oc_revblog_to_category`;

INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('7', '3', '1');
INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('9', '3', '1');
INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('8', '3', '1');
INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES ('10', '5', '1');

TRUNCATE TABLE `oc_revblog_to_layout`;

INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('7', '0', '0');
INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('8', '0', '0');
INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('9', '0', '0');
INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES ('10', '0', '0');

TRUNCATE TABLE `oc_revblog_to_store`;

INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('7', '0');
INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('8', '0');
INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('9', '0');
INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES ('10', '0');

TRUNCATE TABLE `oc_revpopupphones`;


TRUNCATE TABLE `oc_revsubscribe`;


TRUNCATE TABLE `oc_tabs`;

INSERT INTO `oc_tabs` (`tab_id`, `products`, `categories`, `manufactures`, `ingore_products`, `stores`, `allproducts`, `status`, `sort_order`, `date_added`) VALUES ('1', '', '["99883311","99883312","99881111","99881114","99881115"]', '', '', '["0"]', '0', '1', '0', '2016-06-01 00:09:29');
INSERT INTO `oc_tabs` (`tab_id`, `products`, `categories`, `manufactures`, `ingore_products`, `stores`, `allproducts`, `status`, `sort_order`, `date_added`) VALUES ('2', '', '["99881121","99881122"]', '', '', '["0"]', '0', '1', '0', '2016-06-01 21:10:31');

TRUNCATE TABLE `oc_tabs_description`;

INSERT INTO `oc_tabs_description` (`tab_id`, `language_id`, `title`, `description`) VALUES ('2', '1', 'Как подобрать размер', '&lt;div&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Собираясь купить обувь в интернет-магазине, нужно знать реальную величину своей ноги. Произвести правильные замеры поможет обыкновенная линейка. Главное условие – мерять нужно вечером. Это условие действует и для определения размеров детской обуви. Ведь в течение дня на ноги идет большая нагрузка, в результате – они отекают, становятся больше. Обувь перестает быть комфортной, начинает натирать. Существуют стандартные способы, которые помогают узнать правильные размеры обуви. Важно также знать сезон, тип этих изделий. Например, в случае с выбором туфлей и босоножек нужно мерять стопу на голую ногу. Чтобы не ошибиться с ботинками, сапогами, зимней, демисезонной обувью, следует надеть тот носок, который собираетесь носить.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-family: Roboto; font-weight: bold;&quot;&gt;Чтобы определить размеры обуви, необходимо:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Roboto; line-height: 1.42857;&quot;&gt;поставить ногу на картон или обычную бумагу,&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-family: Roboto; line-height: 1.42857;&quot;&gt;при помощи маркера, карандаша в вертикальном положении обвести ногу,&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-family: Roboto; line-height: 1.42857;&quot;&gt;далее берем линейку и измеряем ногу. Линейку прикладываем к крайним точкам (от самого длинного пальца до пятки). Полученные результаты следует округлить до пяти миллиметров.&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;');
INSERT INTO `oc_tabs_description` (`tab_id`, `language_id`, `title`, `description`) VALUES ('1', '1', 'Размерная сетка', '&lt;p&gt;&lt;/p&gt;&lt;table class=&quot;table table-revolution&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;Международный размер&lt;/td&gt;&lt;td&gt;Американский размер&lt;/td&gt;&lt;td&gt;Российский размер&lt;/td&gt;&lt;td&gt;Обхват груди (см)&lt;/td&gt;&lt;td&gt;Обхват талии (см)&lt;/td&gt;&lt;td&gt;Обхват бедер (см)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;tr class=&quot;c1&quot;&gt;&lt;td&gt;XXS&lt;/td&gt;&lt;td&gt;00-0&lt;/td&gt;&lt;td&gt;38-40&lt;/td&gt;&lt;td&gt;80&lt;/td&gt;&lt;td&gt;60&lt;/td&gt;&lt;td&gt;88&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;XS&lt;/td&gt;&lt;td&gt;2-2&lt;/td&gt;&lt;td&gt;40-42&lt;/td&gt;&lt;td&gt;80-84&lt;/td&gt;&lt;td&gt;60-64&lt;/td&gt;&lt;td&gt;88-92&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;tr class=&quot;c1&quot;&gt;&lt;td&gt;S&lt;/td&gt;&lt;td&gt;2-4&lt;/td&gt;&lt;td&gt;42-44&lt;/td&gt;&lt;td&gt;84-88&lt;/td&gt;&lt;td&gt;64-68&lt;/td&gt;&lt;td&gt;92-96&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;M&lt;/td&gt;&lt;td&gt;4-6&lt;/td&gt;&lt;td&gt;44-46&lt;/td&gt;&lt;td&gt;88-92&lt;/td&gt;&lt;td&gt;68-72&lt;/td&gt;&lt;td&gt;96-100&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;tr class=&quot;c1&quot;&gt;&lt;td&gt;L&lt;/td&gt;&lt;td&gt;6-8&lt;/td&gt;&lt;td&gt;46-48&lt;/td&gt;&lt;td&gt;92-96&lt;/td&gt;&lt;td&gt;72-26&lt;/td&gt;&lt;td&gt;100-104&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;XL&lt;/td&gt;&lt;td&gt;8-10&lt;/td&gt;&lt;td&gt;48-50&lt;/td&gt;&lt;td&gt;96-100&lt;/td&gt;&lt;td&gt;76-80&lt;/td&gt;&lt;td&gt;104-108&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;tr class=&quot;c1&quot;&gt;&lt;td&gt;XXL&lt;/td&gt;&lt;td&gt;10-12&lt;/td&gt;&lt;td&gt;50-52&lt;/td&gt;&lt;td&gt;100-104&lt;/td&gt;&lt;td&gt;80-84&lt;/td&gt;&lt;td&gt;108-112&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;XXXL&lt;/td&gt;&lt;td&gt;12-14&lt;/td&gt;&lt;td&gt;52-54&lt;/td&gt;&lt;td&gt;104-108&lt;/td&gt;&lt;td&gt;84-88&lt;/td&gt;&lt;td&gt;112-116&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;/p&gt;');

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