DELETE FROM `oc_attribute`;
INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
	(21, 4, 0),
	(20, 4, 0),
	(22, 4, 0),
	(19, 4, 0),
	(18, 4, 0),
	(17, 4, 0),
	(16, 4, 0),
	(15, 4, 0),
	(14, 4, 0),
	(13, 4, 0),
	(12, 4, 0),
	(23, 3, 0),
	(24, 3, 0),
	(25, 3, 0),
	(26, 3, 0),
	(27, 3, 0),
	(28, 5, 0),
	(29, 5, 0),
	(30, 5, 0),
	(31, 5, 0),
	(32, 5, 0),
	(33, 4, 0);

DELETE FROM `oc_attribute_description`;
INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
	(15, 1, 'Количество полос'),
	(21, 1, 'Тип акустики'),
	(23, 1, 'Диапазон частот'),
	(24, 1, 'Мощность максимальная'),
	(25, 1, 'Мощность номинальная'),
	(26, 1, 'Сопротивление'),
	(27, 1, 'Чувствительность'),
	(28, 1, 'Диаметр'),
	(29, 1, 'Материал высокочастотника'),
	(30, 1, 'Материал низкочастотника'),
	(31, 1, 'Размер высокочастотника'),
	(32, 1, 'Тип высокочастотника');

DELETE FROM `oc_attribute_group`;
INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
	(3, 2),
	(4, 1),
	(5, 3);

DELETE FROM `oc_attribute_group_description`;
INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
	(3, 1, 'Электрические'),
	(4, 1, 'Общие'),
	(5, 1, 'Установочные');

DELETE FROM `oc_banner`;
INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
	(6, 'Продукция HP', 1),
	(7, 'Слайдшоу на главной', 1),
	(8, 'Производители', 1);

DELETE FROM `oc_banner_image`;
INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
	(104, 7, 1, 'banner1', '', 'catalog/revolution/banner1.jpg', 0),
	(87, 6, 1, 'Новинка Kicx GFQ-165', '/kicx-gfq-165', 'catalog/revolution/new1.jpg', 0),
	(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
	(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
	(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
	(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
	(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
	(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
	(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
	(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
	(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
	(103, 7, 1, 'banner2', '', 'catalog/revolution/banner2.jpg', 0),
	(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
	(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

DELETE FROM `oc_category`;
INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `image2`, `category_icontype`, `category_icon`, `category_image`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
	(11, 'catalog/revolution/demo_tovars/Autozvuk/1.jpg', 0, '', 1, 'fa none', NULL, 1, 2, 0, 1, '2009-01-03 21:08:57', '2016-05-31 23:53:26'),
	(33, 'catalog/revolution/demo_tovars/Autosvet/1.jpg', 0, NULL, 1, 'fa none', NULL, 1, 2, 1, 1, '2009-01-05 21:49:15', '2016-01-18 22:45:37'),
	(77, 'catalog/revolution/demo_tovars/Autoelektronika/1.jpg', 0, NULL, 1, 'fa none', NULL, 1, 2, 2, 1, '2009-01-05 21:49:43', '2011-07-16 02:14:42'),
	(44, 'catalog/revolution/demo_tovars/Accessory/1.jpg', 0, NULL, 1, 'fa none', NULL, 1, 2, 3, 1, '2009-01-20 02:36:26', '2011-05-30 12:15:18'),
	(22, 'catalog/revolution/demo_tovars/Ohran_system/1.jpg', 0, NULL, 1, 'fa none', NULL, 1, 2, 4, 1, '2009-01-31 01:04:25', '2016-01-18 00:46:01'),
	(119, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/kicx_RCA05.jpg', 0, 'catalog/revolution/c_montag.png', 1, 'fa none', NULL, 1, 3, 5, 1, '2009-01-31 01:55:14', '2016-06-01 10:42:38'),
	(552, 'catalog/revolution/demo_tovars/Plenka_Shumka/Tonirivochnaia_plenka/907716.jpeg', 0, NULL, 1, 'fa none', NULL, 1, 0, 6, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
	(55444, 'catalog/revolution/demo_tovars/Plenka_Shumka/Shumoizolacia/1.jpg', 0, NULL, 1, 'fa none', NULL, 1, 0, 7, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
	(9993, 'catalog/revolution/demo_tovars/Rashodniki/Rash_materialy/2163.jpg', 0, NULL, 1, 'fa none', NULL, 1, 0, 8, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
	(12095, 'catalog/revolution/demo_tovars/Rashodniki/Instrument/HT68R.jpg', 0, NULL, 1, 'fa none', NULL, 1, 0, 9, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
	(112, 'catalog/revolution/demo_tovars/Autozvuk/Automagnitolli/661.jpeg', 11, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
	(111, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/P1021252.jpg', 11, '', 1, 'fa none', NULL, 0, 0, 1, 1, '2009-02-03 14:17:55', '2016-05-31 23:56:38'),
	(116, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/fm_modulatori/d3ca.jpg', 11, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2009-02-03 14:18:11', '2011-05-30 12:15:31'),
	(114, 'catalog/revolution/demo_tovars/Autozvuk/Usiliteli/macaudio1.jpg', 11, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
	(113, 'catalog/revolution/demo_tovars/Autozvuk/Sabvuferi/Hertz_ML2500.jpg', 11, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
	(128, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/varta2b.jpg', 11, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
	(221, '', 22, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
	(222, 'catalog/revolution/demo_tovars/Ohran_system/Breloki_dlia_signalok/1.jpg', 22, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
	(230, 'catalog/revolution/demo_tovars/Ohran_system/Chehli_dlia_brelokov/130018296959.jpg', 22, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
	(22002, 'catalog/revolution/demo_tovars/Ohran_system/Predpuskov_podogrev/1_3007.jpg', 22, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
	(223, 'catalog/revolution/demo_tovars/Ohran_system/Immobilaizeri/0_3437_mid2.jpeg', 22, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
	(22544, 'catalog/revolution/demo_tovars/Ohran_system/Protivougon_zamki/1.jpg', 22, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2010-09-18 14:06:49', '2011-04-22 01:55:40'),
	(2454, 'catalog/revolution/demo_tovars/Ohran_system/Raznoe/1.jpg', 22, NULL, 1, 'fa none', NULL, 0, 0, 6, 1, '2010-09-21 15:39:21', '2010-11-07 20:30:55'),
	(337, 'catalog/revolution/demo_tovars/Autosvet/Ksenon/Lampi_ksenonovie/philipd2r.jpg', 33, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
	(341, 'catalog/revolution/demo_tovars/Autosvet/Ksenon/Lampi_biksenonovie/bixenon_maxlum_LL.jpg', 33, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
	(331, 'catalog/revolution/demo_tovars/Autosvet/Galogen_Lampi/64215_70wd.png', 33, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2010-11-07 11:13:16', '2010-11-07 11:13:16'),
	(332, 'catalog/revolution/demo_tovars/Autosvet/Diodi/Lampochki/LF242X.JPG', 33, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2010-11-07 11:13:33', '2010-11-07 11:13:33'),
	(343, 'catalog/revolution/demo_tovars/Autosvet/Fari_dnevnogo_sveta/160_p24_full.jpg', 33, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2010-11-07 11:14:04', '2010-11-07 11:14:04'),
	(3371, 'catalog/revolution/demo_tovars/Autosvet/Ksenon/Komplekti/88ce8rge.jpg', 33, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2010-11-07 11:14:23', '2011-04-22 01:16:01'),
	(338, 'catalog/revolution/demo_tovars/Autosvet/Ksenon/Linzi_ksenonovie/bikseno.jpg', 33, NULL, 1, 'fa none', NULL, 0, 0, 6, 1, '2010-11-07 11:14:38', '2011-04-22 01:16:13'),
	(3355, 'catalog/revolution/demo_tovars/Autosvet/Ksenon/komplektueshie/1.jpg', 33, NULL, 1, 'fa none', NULL, 0, 0, 7, 1, '2010-11-07 11:16:09', '2011-04-22 01:54:57'),
	(1201, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Pulti_upravlenia/logitech_harmony_remote_525.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2010-11-07 11:28:53', '2016-01-16 18:51:19'),
	(452, 'catalog/revolution/demo_tovars/Accessory/Alkotesteri/d7f9e676.jpeg', 44, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2010-11-07 11:29:16', '2011-04-22 01:16:50'),
	(11922, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Karti_pamiati/222836_800x600_b.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2010-11-08 10:31:32', '2010-11-08 10:31:32'),
	(442, 'catalog/revolution/demo_tovars/Accessory/Diktofony/1232.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
	(443, 'catalog/revolution/demo_tovars/Accessory/Racii/motoro.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2011-04-26 08:53:16', '2011-05-30 12:15:05'),
	(124, 'catalog/revolution/demo_tovars/Accessory/Portable_DVD/dd99.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16'),
	(12094, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Naushniki/c93d8834640wi.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 6, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22677, 'catalog/revolution/demo_tovars/Accessory/CD-disc/1.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 7, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(4445444, 'catalog/revolution/demo_tovars/Accessory/Ramki_dlya_nomera/1.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 8, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22566, 'catalog/revolution/demo_tovars/Accessory/Podsvetka/1.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 9, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11927, 'catalog/revolution/demo_tovars/Accessory/Razvetvitel_prikur/1.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 10, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(450, 'catalog/revolution/demo_tovars/Accessory/Kompressori/LAVINAl.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 11, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(451, 'catalog/revolution/demo_tovars/Accessory/Auto_holodilniki/b972d0.jpeg', 44, NULL, 1, 'fa none', NULL, 0, 0, 12, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22577, 'catalog/revolution/demo_tovars/Accessory/Zarad_ustroistva/1.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 13, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22599, 'catalog/revolution/demo_tovars/Accessory/Shetki_stekl/1.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 14, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22655, 'catalog/revolution/demo_tovars/Accessory/Chehli_kovri/1.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 15, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22644, 'catalog/revolution/demo_tovars/Accessory/Autoodealo/1.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 16, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22688, 'catalog/revolution/demo_tovars/Accessory/Termokeis/1.jpg', 44, NULL, 1, 'fa none', NULL, 0, 0, 17, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(447, 'catalog/revolution/demo_tovars/Accessory/Videoregistratory/1.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(441, 'catalog/revolution/demo_tovars/Accessory/GPS_navigatory/nexgps.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(444, 'catalog/revolution/demo_tovars/Accessory/Antiradari/1.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(122, 'catalog/revolution/demo_tovars/Accessory/Televizory_Monitory/100.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(448, 'catalog/revolution/demo_tovars/Accessory/Parkovochn_radary/capture9.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(446, 'catalog/revolution/demo_tovars/Accessory/Videokamery/pk92.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1206, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/Nanigacionnie_bloki/Concorde_bi.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 6, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(121, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/TV_tuneri/qdis.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 7, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(117, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/Cheindgeri/ustan1.jpeg', 77, NULL, 1, 'fa none', NULL, 0, 0, 8, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(128088, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/DVD_pleeri/1.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 9, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(9992, 'catalog/revolution/demo_tovars/Accessory/Podogrev_sidenii/11.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 10, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(44001, 'catalog/revolution/demo_tovars/Accessory/Preobrazovateli_U/1_1638_mid2.jpeg', 77, NULL, 1, 'fa none', NULL, 0, 0, 11, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11914, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/Adapteri_i_interfeisi/59939.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 12, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22633, 'catalog/revolution/demo_tovars/Autoelektronika/Bort_komp/1.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 13, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22622, 'data/categorys/ddsh.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 14, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(123, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/Anteni/49446.jpg', 77, NULL, 1, 'fa none', NULL, 0, 0, 15, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1111, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/sony_6.jpg', 111, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1112, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Komponentnaia/44e4a3.jpg', 111, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1113, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Komponenti_AS/25.jpg', 111, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11133, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Korpusnie_AS/6275788.jpg', 111, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(111116, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Morskaia/1.jpg', 111, NULL, 1, 'fa none', NULL, 0, 0, 6, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1121, 'catalog/revolution/demo_tovars/Autozvuk/Automagnitolli/CD_mp3_ressiveri/1.jpg', 112, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1122, '', 112, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1123, '', 112, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1127, '', 112, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1124, '', 112, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1131, 'catalog/revolution/demo_tovars/Autozvuk/Sabvuferi/Aktivnie/1.jpg', 113, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1133, 'catalog/revolution/demo_tovars/Autozvuk/Sabvuferi/Passivnie/s12l72.jpeg', 113, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1132, 'catalog/revolution/demo_tovars/Autozvuk/Sabvuferi/Korpusnie/1.jpg', 113, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(119001, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Provoda_i_kabeli/08awg.jpg', 119, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(119002, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Klemmi/arge.jpg', 119, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(125, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Ramki Komplekti kreplenia/1.jpg', 119, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(119003, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Pitanie_i_Zashita/stingeragu.jpg', 119, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1205, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Karpet/carpets_2.jpg', 119, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(12091, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Podiumi/prostoi_0.jpg', 119, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1209, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Reshetki_Setki_dlia_dinamikov/Polk.jpg', 119, NULL, 1, 'fa none', NULL, 0, 0, 6, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11924, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Korpusa_sabvuferov/b21589_XL.jpg', 119, NULL, 1, 'fa none', NULL, 0, 0, 7, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11900210, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Chashki_dlia_sabov/1.jpg', 119, NULL, 1, 'fa none', NULL, 0, 0, 8, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1203, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Fazoinvertori_Chashki_dlia_sabov/15279.jpg', 119, NULL, 1, 'fa none', NULL, 0, 0, 9, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11918, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Ventilatori_ohlagdenia/221462.jpeg', 119, NULL, 1, 'fa none', NULL, 0, 0, 10, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11923, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Aksessuari_dlia_anten/32300.jpg', 123, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(115, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/Processori/88c.jpg', 128, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(118, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/Kondensatori/soundstream2.jpg', 128, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(126, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/Krossoveri/3fce7970aaea.jpg', 128, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22611, 'catalog/revolution/demo_tovars/Autozvuk/Ekvalayzer/1.jpg', 128, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11913, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/Shumopodaviteli/thumb.jpg', 128, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11921, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Indikatori/volt_450.jpg', 128, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1201120, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/Kalibratori/1.jpg', 128, NULL, 1, 'fa none', NULL, 0, 0, 6, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11919, 'catalog/revolution/demo_tovars/Autozvuk/Komplektuiushie/Preobrazovateli_signala/htl_6_a.gif', 128, NULL, 1, 'fa none', NULL, 0, 0, 7, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(12093, 'catalog/revolution/demo_tovars/Autozvuk/Aksessuari/fm_and_bluetooth/Phone_B60_03.jpg', 128, NULL, 1, 'fa none', NULL, 0, 0, 8, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22588, 'catalog/revolution/demo_tovars/Plenka_Shumka/Zashitnaia_plenka/1.jpg', 552, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11131, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Komponenti_AS/Twiteri/lino_1_thm.jpg', 1113, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11132, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Komponenti_AS/NCH_SCH_dinamik/49309.jpeg', 1113, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(226, 'catalog/revolution/demo_tovars/Ohran_system/Moduli/GPS_priemniki/RT8_GPS_large.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(229, 'catalog/revolution/demo_tovars/Ohran_system/Moduli/CAN_moduli/image_238.png', 2454, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(228, 'catalog/revolution/demo_tovars/Ohran_system/Moduli/Progreva/T_b.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(224, 'catalog/revolution/demo_tovars/Ohran_system/Moduli/Obhoda_immobilaizera/di.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(22543, 'catalog/revolution/demo_tovars/Ohran_system/Moduli/Antenn_modul/1.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(2255225, 'catalog/revolution/demo_tovars/Ohran_system/Moduli/Upravlenia_zamkami/1.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(225, 'catalog/revolution/demo_tovars/Ohran_system/Moduli/Upravlenia_steklopodemnikami/3305_a.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 6, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(222888, 'catalog/revolution/demo_tovars/Ohran_system/Raznoe/Turbotaimeri/1.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 7, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(227, 'catalog/revolution/demo_tovars/Ohran_system/Datchiki/9114.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 8, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(222777, 'catalog/revolution/demo_tovars/Ohran_system/Raznoe/sireni/1.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 9, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(222666, 'catalog/revolution/demo_tovars/Ohran_system/Raznoe/Privoda/1.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 10, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(222222, 'catalog/revolution/demo_tovars/Ohran_system/Raznoe/Konceviki/1.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 11, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(222333, 'catalog/revolution/demo_tovars/Ohran_system/Raznoe/Rele/1.jpg', 2454, NULL, 1, 'fa none', NULL, 0, 0, 12, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(339, 'catalog/revolution/demo_tovars/Autosvet/Ksenon/Bloki_rozgiga/000640.jpg', 3355, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(336, 'catalog/revolution/demo_tovars/Autosvet/Ksenon/Perehodniki/ket.jpg', 3355, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(340, 'catalog/revolution/demo_tovars/Autosvet/Ksenon/Provodka/3244.jpg', 3355, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(342, 'catalog/revolution/demo_tovars/Autosvet/Raznoe/perehodnik.jpg', 3355, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11911, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Provoda_i_kabeli/Akusticheskie/57157.jpg', 119001, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11912, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Provoda_i_kabeli/Silovie/61.jpg', 119001, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1191, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Provoda_i_kabeli/Soedinitelnie/2682615.jpg', 119001, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(119133, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Provoda_i_kabeli/Montag/1.jpg', 119001, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(120244, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Provoda_i_kabeli/Razvetviteli/1.jpg', 119001, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1202, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Provoda_i_kabeli/Udliniteli/7581062.jpg', 119001, NULL, 1, 'fa none', NULL, 0, 0, 5, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1192, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Provoda_i_kabeli/Komplekti/50795935.jpg', 119001, NULL, 1, 'fa none', NULL, 0, 0, 6, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1199, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Klemmi/Soedinitelnie/88cdfa237e07.jpg', 119002, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1193, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Klemmi/Akkumuliatornie/573f5ab6608dac.jpg', 119002, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1198, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Klemmi/RCA_konnektori/1_122.jpg', 119002, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(11925, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Klemmi/ISO_konnektori/80264_0.jpg', 119002, NULL, 1, 'fa none', NULL, 0, 0, 3, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1195, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Pitanie_i_Zashita/Predohraniteli/stingerminianl.png', 119003, NULL, 1, 'fa none', NULL, 0, 0, 0, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1197, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Pitanie_i_Zashita/Bloki_Dergateli_predohranitelei/photo.jpg', 119003, NULL, 1, 'fa none', NULL, 0, 0, 1, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1196, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Pitanie_i_Zashita/Avtomati_prerivateli/88ce2d.jpg', 119003, NULL, 1, 'fa none', NULL, 0, 0, 2, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03'),
	(1194, 'catalog/revolution/demo_tovars/Autozvuk/Montagnie_prinadlegnosti/Pitanie_i_Zashita/Rele/4054.jpg', 119003, NULL, 1, 'fa none', NULL, 0, 0, 4, 1, '2016-05-30 22:41:03', '2016-05-30 22:41:03');

DELETE FROM `oc_category_description`;
INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(11, 1, 'Автозвук', '&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Многие не прочь наслаждаться любимой музыкой и в автомобиле, но мало кто бывает удовлетворён стандартной магнитолой и динамиками – звук из них, как правило, хрипящий и не очень приятный для слуха. Если вы столкнулись с подобной проблемой, решение есть – вам нужен автозвук.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Автозвук – это специализированный набор устройств, обеспечивающих качественное звучание музыки в автомобиле. На сегодняшний день автозвук – очень популярное направление автомобильного тюнинга.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Автозвук включает в себя несколько составляющих: магнитола, усилитель, сабвуфер и акустика. Но когда встаёт вопрос о том, где купить автозвук, на ум первым делом приходят только специализированные салоны, только цены там неоправданно завышены. В таком случае оптимальный вариант места покупки автозвука – интернет-магазин.&lt;/span&gt;&lt;/p&gt;', 'Автозвук', '', '', ''),
	(33, 1, 'Автосвет', '&lt;p&gt;\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\n', '', '', '', ''),
	(77, 1, 'Автоэлектроника', '&lt;p&gt;\n	Пример текста в описании категории&lt;/p&gt;\n', 'Автоэлектроника', '', '', ''),
	(44, 1, 'Аксессуары', '', 'Аксессуары', '', '', ''),
	(22, 1, 'Охранные системы', '', 'Охранные системы', '', '', ''),
	(552, 1, 'Тонировочная пленка', '', 'Тонировочная пленка', '', '', ''),
	(55444, 1, 'Шумоизоляция', '', 'Шумоизоляция', '', '', ''),
	(9993, 1, 'Расходные материалы', '', 'Расходные материалы', '', '', ''),
	(12095, 1, 'Инструменты', '', 'Инструменты', '', '', ''),
	(112, 1, 'Автомагнитолы', '', 'Автомагнитолы', '', '', ''),
	(116, 1, 'FM-модуляторы', '&lt;p&gt;\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\n', 'FM-модуляторы', '', '', ''),
	(114, 1, 'Усилители', '', 'Усилители', '', '', ''),
	(113, 1, 'Сабвуферы', '', 'Сабвуферы', '', '', ''),
	(128, 1, 'Комплектующие', '', 'Комплектующие', '', '', ''),
	(221, 1, 'Автосигнализации', '', 'Автосигнализации', '', '', ''),
	(222, 1, 'Брелоки для сигнализаций', '', 'Брелоки для сигнализаций', '', '', ''),
	(230, 1, 'Чехлы для брелоков', '', 'Чехлы для брелоков', '', '', ''),
	(22002, 1, 'Предпусковые подогреватели', '', 'Предпусковые подогреватели', '', '', ''),
	(223, 1, 'Иммобилайзеры', '', 'Иммобилайзеры', '', '', ''),
	(22544, 1, 'Противоугонные замки', '', 'Противоугонные замки', '', '', ''),
	(2454, 1, 'Компоненты', '', 'Компоненты', '', '', ''),
	(337, 1, 'Ксеноновые лампы', '', 'Ксеноновые лампы', '', '', ''),
	(341, 1, 'Биксеноновые лампы', '', 'Биксеноновые лампы', '', '', ''),
	(331, 1, 'Галогеновые лампы', '', 'Галогеновые лампы', '', '', ''),
	(332, 1, 'Диодные лампочки', '', 'Диодные лампочки', '', '', ''),
	(343, 1, 'Дневные ходовые огни', '', 'Дневные ходовые огни', '', '', ''),
	(3371, 1, 'Комплекты ксенона', '', 'Комплекты ксенона', '', '', ''),
	(338, 1, 'Линзы', '', 'Линзы', '', '', ''),
	(3355, 1, 'Комплектующие', '', 'Комплектующие', '', '', ''),
	(1201, 1, 'Пульты управления', '', 'Пульты управления', '', '', ''),
	(452, 1, 'Алкотестеры', '', 'Алкотестеры', '', '', ''),
	(11922, 1, 'Карты памяти', '', 'Карты памяти', '', '', ''),
	(442, 1, 'Диктофоны / MP3-плееры', '', 'Диктофоны / MP3-плееры', '', '', ''),
	(443, 1, 'Рации', '', 'Рации', '', '', ''),
	(124, 1, 'Портативные DVD-плееры', '', 'Портативные DVD-плееры', '', '', ''),
	(12094, 1, 'Наушники', '', 'Наушники', '', '', ''),
	(22677, 1, 'CD-диски', '', 'CD-диски', '', '', ''),
	(4445444, 1, 'Рамки для номеров', '', 'Рамки для номеров', '', '', ''),
	(22566, 1, 'Подсветка', '', 'Подсветка', '', '', ''),
	(11927, 1, 'Разветвители в прикуриватель', '', 'Разветвители в прикуриватель', '', '', ''),
	(450, 1, 'Автомобильные компрессоры', '', 'Автомобильные компрессоры', '', '', ''),
	(451, 1, 'Автохолодильники', '', 'Автохолодильники', '', '', ''),
	(22577, 1, 'Зарядные устройства', '', 'Зарядные устройства', '', '', ''),
	(22599, 1, 'Щетки стеклоочистителей', '', 'Щетки стеклоочистителей', '', '', ''),
	(22655, 1, 'Чехлы, оплетки, коврики', '', 'Чехлы, оплетки, коврики', '', '', ''),
	(22644, 1, 'Автоодеяла', '', 'Автоодеяла', '', '', ''),
	(22688, 1, 'Термокейсы, нагреватели АКБ', '', 'Термокейсы, нагреватели АКБ', '', '', ''),
	(447, 1, 'Видеорегистраторы', '', 'Видеорегистраторы', '', '', ''),
	(441, 1, 'GPS-навигаторы', '', 'GPS-навигаторы', '', '', ''),
	(444, 1, 'Радар-детекторы', '', 'Радар-детекторы', '', '', ''),
	(122, 1, 'Телевизоры / Мониторы', '', 'Телевизоры / Мониторы', '', '', ''),
	(448, 1, 'Парковочные радары', '', 'Парковочные радары', '', '', ''),
	(446, 1, 'Видеокамеры', '', 'Видеокамеры', '', '', ''),
	(1206, 1, 'Навигационные блоки', '', 'Навигационные блоки', '', '', ''),
	(121, 1, 'TV-тюнеры', '', 'TV-тюнеры', '', '', ''),
	(117, 1, 'Чейнджеры', '', 'Чейнджеры', '', '', ''),
	(128088, 1, 'DVD-плееры', '', 'DVD-плееры', '', '', ''),
	(9992, 1, 'Подогревы сидений', '', 'Подогревы сидений', '', '', ''),
	(44001, 1, 'Преобразователи напряжения', '', 'Преобразователи напряжения', '', '', ''),
	(11914, 1, 'Адаптеры и интерфейсы', '', 'Адаптеры и интерфейсы', '', '', ''),
	(22633, 1, 'Бортовые компьютеры', '', 'Бортовые компьютеры', '', '', ''),
	(22622, 1, 'Датчики давления в шинах', '', 'Датчики давления в шинах', '', '', ''),
	(123, 1, 'Антенны', '', 'Антенны', '', '', ''),
	(1111, 1, 'Коаксиальная акустика', '', 'Коаксиальная акустика', '', '', ''),
	(1112, 1, 'Компонентная акустика', '', 'Компонентная акустика', '', '', ''),
	(1113, 1, 'Компоненты акустической системы', '', 'Компоненты акустической системы', '', '', ''),
	(11133, 1, 'Корпусные акустические системы', '', 'Корпусные акустические системы', '', '', ''),
	(111116, 1, 'Морская акустика', '', 'Морская акустика', '', '', ''),
	(1121, 1, 'CD/MP3-ресиверы', '', 'CD/MP3-ресиверы', '', '', ''),
	(1122, 1, 'DVD-ресиверы', '', 'DVD-ресиверы', '', '', ''),
	(1123, 1, 'Бездисковые ресиверы', '', 'Бездисковые ресиверы', '', '', ''),
	(1127, 1, 'Мультимедийные системы', '', 'Мультимедийные системы', '', '', ''),
	(1124, 1, 'Штатные системы', '', 'Штатные системы', '', '', ''),
	(1131, 1, 'Активные сабвуферы', '', 'Активные сабвуферы', '', '', ''),
	(1133, 1, 'Пассивные сабвуферы', '', 'Пассивные сабвуферы', '', '', ''),
	(1132, 1, 'Корпусные сабвуферы', '', 'Корпусные сабвуферы', '', '', ''),
	(119001, 1, 'Кабели и провода', '', 'Кабели и провода', '', '', ''),
	(119002, 1, 'Клеммы / Коннекторы', '', 'Клеммы / Коннекторы', '', '', ''),
	(125, 1, 'Переходные рамки для ГУ', '', 'Переходные рамки для ГУ', '', '', ''),
	(119003, 1, 'Питание и защита', '', 'Питание и защита', '', '', ''),
	(1205, 1, 'Карпет, винил, ткань', '', 'Карпет, винил, ткань', '', '', ''),
	(12091, 1, 'Акустические подиумы', '', 'Акустические подиумы', '', '', ''),
	(1209, 1, 'Решетки / Сетки для динамиков', '', 'Решетки / Сетки для динамиков', '', '', ''),
	(11924, 1, 'Корпуса для сабвуферов', '', 'Корпуса для сабвуферов', '', '', ''),
	(11900210, 1, 'Чашки для сабвуферов', '', 'Чашки для сабвуферов', '', '', ''),
	(1203, 1, 'Фазоинверторы для сабвуферов', '', 'Фазоинверторы для сабвуферов', '', '', ''),
	(11918, 1, 'Вентиляторы охлаждения', '', 'Вентиляторы охлаждения', '', '', ''),
	(11923, 1, 'Разное для антенн', '', 'Разное для антенн', '', '', ''),
	(115, 1, 'Процессоры', '', 'Процессоры', '', '', ''),
	(118, 1, 'Конденсаторы', '', 'Конденсаторы', '', '', ''),
	(126, 1, 'Кроссоверы', '', 'Кроссоверы', '', '', ''),
	(22611, 1, 'Эквалайзеры', '', 'Эквалайзеры', '', '', ''),
	(11913, 1, 'Шумоподавители', '', 'Шумоподавители', '', '', ''),
	(11921, 1, 'Индикаторы', '', 'Индикаторы', '', '', ''),
	(1201120, 1, 'Калибраторы', '', 'Калибраторы', '', '', ''),
	(11919, 1, 'Преобразователи сигнала', '', '', '', '', ''),
	(12093, 1, 'FM и Bluetooth адаптеры', '', '', '', '', ''),
	(22588, 1, 'Защитная пленка', '', 'Защитная', '', '', ''),
	(11131, 1, 'Твитеры', '', 'Твитеры', '', '', ''),
	(11132, 1, 'НЧ/СЧ динамики', '', 'НЧ/СЧ динамики', '', '', ''),
	(226, 1, 'Модули GPS / GSM', '', 'Модули GPS / GSM', '', '', ''),
	(229, 1, 'Модули CAN шины', '', 'Модули CAN шины', '', '', ''),
	(228, 1, 'Модули прогрева', '', 'Модули прогрева', '', '', ''),
	(224, 1, 'Модули обхода иммобилайзера', '', 'Модули обхода иммобилайзера', '', '', ''),
	(22543, 1, 'Антенные модули', '', 'Антенные модули', '', '', ''),
	(2255225, 1, 'Модули управления замками', '', 'Модули управления замками', '', '', ''),
	(225, 1, 'Модули управления стекл', '', 'Модули управления стекл', '', '', ''),
	(222888, 1, 'Турботаймеры', '', 'Турботаймеры', '', '', ''),
	(227, 1, 'Датчики', '', 'Датчики', '', '', ''),
	(222777, 1, 'Сирены', '', 'Сирены', '', '', ''),
	(222666, 1, 'Привода', '', 'Привода', '', '', ''),
	(222222, 1, 'Концевики', '', 'Концевики', '', '', ''),
	(222333, 1, 'Реле', '', 'Реле', '', '', ''),
	(339, 1, 'Блоки розжига', '', 'Блоки розжига', '', '', ''),
	(336, 1, 'Переходники для ксенона', '', 'Переходники для ксенона', '', '', ''),
	(340, 1, 'Проводка для ксенона', '', 'Проводка для ксенона', '', '', ''),
	(342, 1, 'Остальное', '', 'Остальное', '', '', ''),
	(11911, 1, 'Акустичиские кабели', '', 'Акустичиские кабели', '', '', ''),
	(11912, 1, 'Силовые кабели', '', 'Силовые кабели', '', '', ''),
	(1191, 1, 'Соединительные кабели', '', 'Соединительные кабели', '', '', ''),
	(119133, 1, 'Монтажные кабели', '', 'Монтажные кабели', '', '', ''),
	(120244, 1, 'Разветвители', '', 'Разветвители', '', '', ''),
	(1202, 1, 'Переходники', '', 'Переходники', '', '', ''),
	(1192, 1, 'Комлекты кабелей', '', 'Комлекты кабелей', '', '', ''),
	(1199, 1, 'Соединительные клеммы', '', 'Соединительные клеммы', '', '', ''),
	(1193, 1, 'Аккумуляторные клеммы', '', 'Аккумуляторные клеммы', '', '', ''),
	(1198, 1, 'RCA-коннекторы', '', 'RCA-коннекторы', '', '', ''),
	(11925, 1, 'ISO-коннекторы', '', 'ISO-коннекторы', '', '', ''),
	(1195, 1, 'Предохранители', '', 'Предохранители', '', '', ''),
	(1197, 1, 'Блоки / Держатели предохранителей', '', 'Блоки / Держатели предохранителей', '', '', ''),
	(1196, 1, 'Автоматы прерыватели питания', '', 'Автоматы прерыватели питания', '', '', ''),
	(1194, 1, 'Реле', '', 'Реле', '', '', ''),
	(111, 1, 'Акустика', '&lt;div&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Акустика — наука о звуке, изучающая физическую природу звука и проблемы, связанные с его возникновением, распространением, восприятием и воздействием. Акустика является одним из направлений физики (механики), исследующее упругие колебания и волны от самых низких (от 0 Гц) до высоких частот.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Акустика является междисциплинарной наукой, использующей для решения своих проблем широкий круг дисциплин: математику, физику, электронику, биологию, медицину, гигиену, теорию музыки и другие.&amp;nbsp;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Иногда под акустикой также понимают акустическую систему — электрическое устройство, предназначенное для преобразования тока переменной частоты в звуковые колебания при помощи электро-акустического преобразования. Также термин акустика применим для обозначения колебательных свойств какой-либо системы.&lt;/span&gt;&lt;/div&gt;', 'Акустика', '', '', ''),
	(119, 1, 'Монтажные принадлежности', 'Монтажные принадлежности', '', '', '', '');

DELETE FROM `oc_category_path`;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
	(11, 11, 0),
	(112, 11, 0),
	(112, 112, 1),
	(1121, 11, 0),
	(1121, 112, 1),
	(1121, 1121, 2),
	(1122, 11, 0),
	(1122, 112, 1),
	(1122, 1122, 2),
	(1123, 11, 0),
	(1123, 112, 1),
	(1123, 1123, 2),
	(1127, 11, 0),
	(1127, 112, 1),
	(1127, 1127, 2),
	(1124, 11, 0),
	(1124, 112, 1),
	(1124, 1124, 2),
	(111, 11, 0),
	(111, 111, 1),
	(1111, 11, 0),
	(1111, 111, 1),
	(1111, 1111, 2),
	(1112, 11, 0),
	(1112, 111, 1),
	(1112, 1112, 2),
	(1113, 11, 0),
	(1113, 111, 1),
	(1113, 1113, 2),
	(11131, 11, 0),
	(11131, 111, 1),
	(11131, 1113, 2),
	(11131, 11131, 3),
	(11132, 11, 0),
	(11132, 111, 1),
	(11132, 1113, 2),
	(11132, 11132, 3),
	(11133, 11, 0),
	(11133, 111, 1),
	(11133, 11133, 2),
	(111116, 11, 0),
	(111116, 111, 1),
	(111116, 111116, 2),
	(116, 11, 0),
	(116, 116, 1),
	(114, 11, 0),
	(114, 114, 1),
	(113, 11, 0),
	(113, 113, 1),
	(1131, 11, 0),
	(1131, 113, 1),
	(1131, 1131, 2),
	(1133, 11, 0),
	(1133, 113, 1),
	(1133, 1133, 2),
	(1132, 11, 0),
	(1132, 113, 1),
	(1132, 1132, 2),
	(128, 11, 0),
	(128, 128, 1),
	(115, 11, 0),
	(115, 128, 1),
	(115, 115, 2),
	(118, 11, 0),
	(118, 128, 1),
	(118, 118, 2),
	(126, 11, 0),
	(126, 128, 1),
	(126, 126, 2),
	(22611, 11, 0),
	(22611, 128, 1),
	(22611, 22611, 2),
	(11913, 11, 0),
	(11913, 128, 1),
	(11913, 11913, 2),
	(11921, 11, 0),
	(11921, 128, 1),
	(11921, 11921, 2),
	(1201120, 11, 0),
	(1201120, 128, 1),
	(1201120, 1201120, 2),
	(11919, 11, 0),
	(11919, 128, 1),
	(11919, 11919, 2),
	(12093, 11, 0),
	(12093, 128, 1),
	(12093, 12093, 2),
	(33, 33, 0),
	(337, 33, 0),
	(337, 337, 1),
	(341, 33, 0),
	(341, 341, 1),
	(331, 33, 0),
	(331, 331, 1),
	(332, 33, 0),
	(332, 332, 1),
	(343, 33, 0),
	(343, 343, 1),
	(3371, 33, 0),
	(3371, 3371, 1),
	(338, 33, 0),
	(338, 338, 1),
	(3355, 33, 0),
	(3355, 3355, 1),
	(339, 33, 0),
	(339, 3355, 1),
	(339, 339, 2),
	(336, 33, 0),
	(336, 3355, 1),
	(336, 336, 2),
	(340, 33, 0),
	(340, 3355, 1),
	(340, 340, 2),
	(342, 33, 0),
	(342, 3355, 1),
	(342, 342, 2),
	(77, 77, 0),
	(447, 77, 0),
	(447, 447, 1),
	(441, 77, 0),
	(441, 441, 1),
	(444, 77, 0),
	(444, 444, 1),
	(122, 77, 0),
	(122, 122, 1),
	(448, 77, 0),
	(448, 448, 1),
	(446, 77, 0),
	(446, 446, 1),
	(1206, 77, 0),
	(1206, 1206, 1),
	(121, 77, 0),
	(121, 121, 1),
	(117, 77, 0),
	(117, 117, 1),
	(128088, 77, 0),
	(128088, 128088, 1),
	(9992, 77, 0),
	(9992, 9992, 1),
	(44001, 77, 0),
	(44001, 44001, 1),
	(11914, 77, 0),
	(11914, 11914, 1),
	(22633, 77, 0),
	(22633, 22633, 1),
	(22622, 77, 0),
	(22622, 22622, 1),
	(123, 77, 0),
	(123, 123, 1),
	(11923, 77, 0),
	(11923, 123, 1),
	(11923, 11923, 2),
	(44, 44, 0),
	(1201, 44, 0),
	(1201, 1201, 1),
	(452, 44, 0),
	(452, 452, 1),
	(11922, 44, 0),
	(11922, 11922, 1),
	(442, 44, 0),
	(442, 442, 1),
	(443, 44, 0),
	(443, 443, 1),
	(124, 44, 0),
	(124, 124, 1),
	(12094, 44, 0),
	(12094, 12094, 1),
	(22677, 44, 0),
	(22677, 22677, 1),
	(4445444, 44, 0),
	(4445444, 4445444, 1),
	(22566, 44, 0),
	(22566, 22566, 1),
	(11927, 44, 0),
	(11927, 11927, 1),
	(450, 44, 0),
	(450, 450, 1),
	(451, 44, 0),
	(451, 451, 1),
	(22577, 44, 0),
	(22577, 22577, 1),
	(22599, 44, 0),
	(22599, 22599, 1),
	(22655, 44, 0),
	(22655, 22655, 1),
	(22644, 44, 0),
	(22644, 22644, 1),
	(22688, 44, 0),
	(22688, 22688, 1),
	(22, 22, 0),
	(221, 22, 0),
	(221, 221, 1),
	(222, 22, 0),
	(222, 222, 1),
	(230, 22, 0),
	(230, 230, 1),
	(22002, 22, 0),
	(22002, 22002, 1),
	(223, 22, 0),
	(223, 223, 1),
	(22544, 22, 0),
	(22544, 22544, 1),
	(2454, 22, 0),
	(2454, 2454, 1),
	(226, 22, 0),
	(226, 2454, 1),
	(226, 226, 2),
	(229, 22, 0),
	(229, 2454, 1),
	(229, 229, 2),
	(228, 22, 0),
	(228, 2454, 1),
	(228, 228, 2),
	(224, 22, 0),
	(224, 2454, 1),
	(224, 224, 2),
	(22543, 22, 0),
	(22543, 2454, 1),
	(22543, 22543, 2),
	(2255225, 22, 0),
	(2255225, 2454, 1),
	(2255225, 2255225, 2),
	(225, 22, 0),
	(225, 2454, 1),
	(225, 225, 2),
	(222888, 22, 0),
	(222888, 2454, 1),
	(222888, 222888, 2),
	(227, 22, 0),
	(227, 2454, 1),
	(227, 227, 2),
	(222777, 22, 0),
	(222777, 2454, 1),
	(222777, 222777, 2),
	(222666, 22, 0),
	(222666, 2454, 1),
	(222666, 222666, 2),
	(222222, 22, 0),
	(222222, 2454, 1),
	(222222, 222222, 2),
	(222333, 22, 0),
	(222333, 2454, 1),
	(222333, 222333, 2),
	(119, 119, 0),
	(119001, 119, 0),
	(119001, 119001, 1),
	(11911, 119, 0),
	(11911, 119001, 1),
	(11911, 11911, 2),
	(11912, 119, 0),
	(11912, 119001, 1),
	(11912, 11912, 2),
	(1191, 119, 0),
	(1191, 119001, 1),
	(1191, 1191, 2),
	(119133, 119, 0),
	(119133, 119001, 1),
	(119133, 119133, 2),
	(120244, 119, 0),
	(120244, 119001, 1),
	(120244, 120244, 2),
	(1202, 119, 0),
	(1202, 119001, 1),
	(1202, 1202, 2),
	(1192, 119, 0),
	(1192, 119001, 1),
	(1192, 1192, 2),
	(119002, 119, 0),
	(119002, 119002, 1),
	(1199, 119, 0),
	(1199, 119002, 1),
	(1199, 1199, 2),
	(1193, 119, 0),
	(1193, 119002, 1),
	(1193, 1193, 2),
	(1198, 119, 0),
	(1198, 119002, 1),
	(1198, 1198, 2),
	(11925, 119, 0),
	(11925, 119002, 1),
	(11925, 11925, 2),
	(125, 119, 0),
	(125, 125, 1),
	(119003, 119, 0),
	(119003, 119003, 1),
	(1195, 119, 0),
	(1195, 119003, 1),
	(1195, 1195, 2),
	(1197, 119, 0),
	(1197, 119003, 1),
	(1197, 1197, 2),
	(1196, 119, 0),
	(1196, 119003, 1),
	(1196, 1196, 2),
	(1194, 119, 0),
	(1194, 119003, 1),
	(1194, 1194, 2),
	(1205, 119, 0),
	(1205, 1205, 1),
	(12091, 119, 0),
	(12091, 12091, 1),
	(1209, 119, 0),
	(1209, 1209, 1),
	(11924, 119, 0),
	(11924, 11924, 1),
	(11900210, 119, 0),
	(11900210, 11900210, 1),
	(1203, 119, 0),
	(1203, 1203, 1),
	(11918, 119, 0),
	(11918, 11918, 1),
	(552, 552, 0),
	(22588, 552, 0),
	(22588, 22588, 1),
	(55444, 55444, 0),
	(9993, 9993, 0),
	(12095, 12095, 0);

DELETE FROM `oc_category_to_layout`;

DELETE FROM `oc_category_to_store`;
INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
	(11, 0),
	(22, 0),
	(33, 0),
	(44, 0),
	(77, 0),
	(111, 0),
	(112, 0),
	(113, 0),
	(114, 0),
	(115, 0),
	(116, 0),
	(117, 0),
	(118, 0),
	(119, 0),
	(121, 0),
	(122, 0),
	(123, 0),
	(124, 0),
	(125, 0),
	(126, 0),
	(128, 0),
	(221, 0),
	(222, 0),
	(223, 0),
	(224, 0),
	(225, 0),
	(226, 0),
	(227, 0),
	(228, 0),
	(229, 0),
	(230, 0),
	(331, 0),
	(332, 0),
	(336, 0),
	(337, 0),
	(338, 0),
	(339, 0),
	(340, 0),
	(341, 0),
	(342, 0),
	(343, 0),
	(441, 0),
	(442, 0),
	(443, 0),
	(444, 0),
	(446, 0),
	(447, 0),
	(448, 0),
	(450, 0),
	(451, 0),
	(452, 0),
	(552, 0),
	(1111, 0),
	(1112, 0),
	(1113, 0),
	(1121, 0),
	(1122, 0),
	(1123, 0),
	(1124, 0),
	(1127, 0),
	(1131, 0),
	(1132, 0),
	(1133, 0),
	(1191, 0),
	(1192, 0),
	(1193, 0),
	(1194, 0),
	(1195, 0),
	(1196, 0),
	(1197, 0),
	(1198, 0),
	(1199, 0),
	(1201, 0),
	(1202, 0),
	(1203, 0),
	(1205, 0),
	(1206, 0),
	(1209, 0),
	(2454, 0),
	(3355, 0),
	(3371, 0),
	(9992, 0),
	(9993, 0),
	(11131, 0),
	(11132, 0),
	(11133, 0),
	(11911, 0),
	(11912, 0),
	(11913, 0),
	(11914, 0),
	(11918, 0),
	(11919, 0),
	(11921, 0),
	(11922, 0),
	(11923, 0),
	(11924, 0),
	(11925, 0),
	(11927, 0),
	(12091, 0),
	(12093, 0),
	(12094, 0),
	(12095, 0),
	(22002, 0),
	(22543, 0),
	(22544, 0),
	(22566, 0),
	(22577, 0),
	(22588, 0),
	(22599, 0),
	(22611, 0),
	(22622, 0),
	(22633, 0),
	(22644, 0),
	(22655, 0),
	(22677, 0),
	(22688, 0),
	(44001, 0),
	(55444, 0),
	(111116, 0),
	(119001, 0),
	(119002, 0),
	(119003, 0),
	(119133, 0),
	(120244, 0),
	(128088, 0),
	(222222, 0),
	(222333, 0),
	(222666, 0),
	(222777, 0),
	(222888, 0);


DELETE FROM `oc_currency`;
INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
	(1, 'Рубль', 'RUB', '', ' р.', '0', 1.00000000, 1, '2017-10-04 20:29:34'),
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
	(5, 1, 'Гарантия', '&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;\r\n	Гарантия&lt;/span&gt;&lt;/p&gt;\r\n', 'Гарантия', '', '', ''),
	(6, 1, 'Доставка', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Идейные соображения высшего порядка, а также консультация с широким активом влечет за собой процесс внедрения и модернизации соответствующий условий активизации. Равным образом рамки и место обучения кадров способствует подготовки и реализации направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности представляет собой интересный эксперимент проверки направлений прогрессивного развития. Идейные соображения высшего порядка, а также новая модель организационной деятельности влечет за собой процесс внедрения и модернизации дальнейших направлений развития. Повседневная практика показывает, что рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании соответствующий условий активизации. Идейные соображения высшего порядка, а также реализация намеченных плановых заданий играет важную роль в формировании существенных финансовых и административных условий.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Товарищи! рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании модели развития. Задача организации, в особенности же консультация с широким активом обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач. Таким образом реализация намеченных плановых заданий влечет за собой процесс внедрения и модернизации позиций, занимаемых участниками в отношении поставленных задач. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности в значительной степени обуславливает создание форм развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации систем массового участия. Задача организации, в особенности же начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки направлений прогрессивного развития. Не следует, однако забывать, что укрепление и развитие структуры представляет собой интересный эксперимент проверки форм развития.&lt;/span&gt;&lt;/p&gt;\r\n', 'Доставка', '', '', ''),
	(4, 1, 'О нас', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Повседневная практика показывает, что консультация с широким активом в значительной степени обуславливает создание существенных финансовых и административных условий. Разнообразный и богатый опыт укрепление и развитие структуры играет важную роль в формировании новых предложений. Равным образом рамки и место обучения кадров влечет за собой процесс внедрения и модернизации систем массового участия.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Таким образом дальнейшее развитие различных форм деятельности требуют от нас анализа новых предложений. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности играет важную роль в формировании систем массового участия. Задача организации, в особенности же укрепление и развитие структуры играет важную роль в формировании направлений прогрессивного развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Товарищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации новых предложений. Повседневная практика показывает, что начало повседневной работы по формированию позиции способствует подготовки и реализации существенных финансовых и административных условий. Таким образом укрепление и развитие структуры представляет собой интересный эксперимент проверки форм развития. С другой стороны начало повседневной работы по формированию позиции требуют определения и уточнения систем массового участия. Разнообразный и богатый опыт укрепление и развитие структуры требуют от нас анализа системы обучения кадров, соответствует насущным потребностям. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;\r\n', 'О нас', '', '', ''),
	(3, 1, 'Оплата', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Roboto; font-size: 14px; line-height: 20px;&quot;&gt;Оплата&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Оплата', '', '', '');

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
	(75, 1, 'carousel.29', 'content_bottom', 0),
	(76, 3, 'banner.30', 'column_left', 1);

DELETE FROM `oc_manufacturer`;
INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
	(33, 'Alpine', '', 0),
	(37, 'Cadence', '', 0),
	(32, 'Adagio', '', 0),
	(39, 'DLS', '', 0),
	(53, 'Kicx', '', 0);

DELETE FROM `oc_manufacturer_description`;
INSERT INTO `oc_manufacturer_description` (`manufacturer_id`, `language_id`, `name`, `description`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(33, 1, 'Alpine', '', '', '', '', ''),
	(32, 1, 'Cadence', '', '', '', '', ''),
	(37, 1, 'Adagio', '', '', '', '', ''),
	(39, 1, 'DLS', '', '', '', '', ''),
	(53, 1, 'Kicx', '&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Задача организации, в особенности же укрепление и развитие структуры позволяет оценить значение направлений прогрессивного развития. Не следует, однако забывать, что дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки направлений прогрессивного развития. Не следует, однако забывать, что укрепление и развитие структуры представляет собой интересный эксперимент проверки форм развития. Задача организации, в особенности же консультация с широким активом влечет за собой процесс внедрения и модернизации соответствующий условий активизации. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности играет важную роль в формировании направлений прогрессивного развития. Товарищи! сложившаяся структура организации требуют определения и уточнения существенных финансовых и административных условий. Повседневная практика показывает, что сложившаяся структура организации требуют определения и уточнения направлений прогрессивного развития. Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации системы обучения кадров, соответствует насущным потребностям. Равным образом реализация намеченных плановых заданий играет важную роль в формировании форм развития. Не следует, однако забывать, что рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании направлений прогрессивного развития.&lt;/span&gt;&lt;/p&gt;', '', '', '', '');

DELETE FROM `oc_manufacturer_to_store`;
INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
	(32, 0),
	(33, 0),
	(37, 0),
	(39, 0),
	(53, 0);

DELETE FROM `oc_module`;
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
	(30, 'Category', 'banner', '{"name":"Category","banner_id":"6","width":"300","height":"180","status":"1"}'),
	(29, 'Home Page', 'carousel', '{"name":"Home Page","banner_id":"8","width":"130","height":"100","status":"1"}'),
	(28, 'Home Page', 'featured', '{"name":"Home Page","product":["418"],"limit":"4","width":"228","height":"228","status":"1"}'),
	(27, 'Home Page', 'slideshow', '{"name":"Home Page","banner_id":"7","width":"1140","height":"380","status":"1"}'),
	(31, 'Banner 1', 'banner', '{"name":"Banner 1","banner_id":"6","width":"182","height":"182","status":"1"}');

DELETE FROM `oc_option`;
INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`, `opt_image`) VALUES
	(15, 'checkbox', 2, 0),
	(13, 'radio', 0, 1);

DELETE FROM `oc_option_description`;
INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
	(15, 1, 'Дополнительные опции'),
	(13, 1, 'Цвет'),
	(13, 2, 'Цвет');

DELETE FROM `oc_option_value`;
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
	(62, 13, 'catalog/revolution/colors/cherniy.png', 0),
	(51, 13, 'catalog/revolution/colors/begeviy.png', 0),
	(52, 13, 'catalog/revolution/colors/beliy.png', 0),
	(54, 13, 'catalog/revolution/colors/geltiy.png', 0),
	(55, 13, 'catalog/revolution/colors/zeleniy.png', 0),
	(56, 13, 'catalog/revolution/colors/koralloviy.png', 0),
	(57, 13, 'catalog/revolution/colors/krasniy.png', 0),
	(58, 13, 'catalog/revolution/colors/multycolor.png', 0),
	(59, 13, 'catalog/revolution/colors/rozoviy.png', 0),
	(60, 13, 'catalog/revolution/colors/seriy.png', 0),
	(61, 13, 'catalog/revolution/colors/siniy.png', 0),
	(53, 13, 'catalog/revolution/colors/goluboy.png', 0),
	(80, 15, '', 1),
	(81, 15, '', 0);

DELETE FROM `oc_option_value_description`;
INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
	(58, 2, 13, 'Мультиколор'),
	(58, 1, 13, 'Мультиколор'),
	(59, 2, 13, 'Розовый'),
	(59, 1, 13, 'Розовый'),
	(60, 2, 13, 'Серый'),
	(60, 1, 13, 'Серый'),
	(61, 2, 13, 'Синий'),
	(61, 1, 13, 'Синий'),
	(53, 2, 13, 'Голубой'),
	(53, 1, 13, 'Голубой'),
	(80, 1, 15, 'Установка в сервисе'),
	(81, 1, 15, 'Подарочная упаковка'),
	(57, 1, 13, 'Красный'),
	(57, 2, 13, 'Красный'),
	(56, 1, 13, 'Коралловый'),
	(56, 2, 13, 'Коралловый'),
	(55, 1, 13, 'Зеленый'),
	(55, 2, 13, 'Зеленый'),
	(54, 1, 13, 'Желтый'),
	(54, 2, 13, 'Желтый'),
	(52, 1, 13, 'Белый'),
	(52, 2, 13, 'Белый'),
	(51, 1, 13, 'Бежевый'),
	(51, 2, 13, 'Бежевый'),
	(62, 1, 13, 'Черный'),
	(62, 2, 13, 'Черный');

DELETE FROM `oc_order`;
INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
	(1, 0, 'INV-2016-00', 0, 'Интернет-магазин автотоваров', '', 0, 1, 'Никита', '', 'localhost@localhost.com', '+7 (923) 4466888', '', '', 'Никита', '', '', '', '', '', '', '', 0, '', 0, '', '', '--', 'free_checkout', 'Никита', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', 2402.0000, 2, 0, 0.0000, 0, '', 1, 1, 'RUB', 1.00000000, '127.0.0.1', '', '', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-05-31 21:55:06', '2016-05-31 21:55:06'),
	(2, 0, 'INV-2016-00', 0, 'Интернет-магазин автотоваров', '', 0, 1, 'Василий', '', 'localhost@localhost.com', '+7 (988) 8899444', '', '', 'Василий', '', '', '', '', '', '', '', 0, '', 0, '', '', '--', 'free_checkout', 'Василий', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', 'Комментарий к быстрому заказу', 9052.0000, 2, 0, 0.0000, 0, '', 1, 1, 'RUB', 1.00000000, '127.0.0.1', '', '', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-05-31 21:56:49', '2016-05-31 21:56:49'),
	(3, 0, 'INV-2016-00', 0, 'Интернет-магазин автотоваров', '', 0, 1, 'Анатолий', '', 'localhost@localhost.com', '+7 (928) 2226688', '', '', 'Анатолий', '', '', '', '', '', '', '', 0, '', 0, '', '', '--', 'free_checkout', 'Анатолий', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', 98.0000, 2, 0, 0.0000, 0, '', 1, 1, 'RUB', 1.00000000, '127.0.0.1', '', '', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-05-31 22:08:50', '2016-05-31 22:08:50'),
	(4, 0, 'INV-2016-00', 0, 'Интернет-магазин автотоваров', '', 0, 1, 'Никита', '', 'localhost@localhost.com', '+7 (928) 5556688', '', '', 'Никита', '', '', '', '', '', '', '', 0, '', 0, '', '', '--', 'free_checkout', 'Никита', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', 2306.0000, 2, 0, 0.0000, 0, '', 1, 1, 'RUB', 1.00000000, '127.0.0.1', '', '', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-05-31 22:10:14', '2016-05-31 22:10:14'),
	(5, 0, 'INV-2016-00', 0, 'Интернет-магазин автотоваров', '', 0, 1, 'Никита', '', 'localhost@localhost.com', '+7 (988) 5557788', '', '', 'Никита', '', '', '', '', '', '', '', 0, '', 0, '', '', '--', 'free_checkout', 'Никита', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', 1058.0000, 2, 0, 0.0000, 0, '', 1, 1, 'RUB', 1.00000000, '127.0.0.1', '', '', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-05-31 22:10:50', '2016-05-31 22:10:50'),
	(6, 0, 'INV-2016-00', 0, 'Интернет-магазин автотоваров', '', 0, 1, 'Никита', '', 'localhost@localhost.com', '+7 (888) 8888888', '', '', 'Никита', '', '', '', '', '', '', '', 0, '', 0, '', '', '--', 'free_checkout', 'Никита', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '', 58000.0000, 2, 0, 0.0000, 0, '', 1, 1, 'RUB', 1.00000000, '127.0.0.1', '', '', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-06-01 00:56:30', '2016-06-01 00:56:30');

DELETE FROM `oc_order_history`;
INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
	(1, 1, 2, 0, '', '2016-05-31 21:55:06'),
	(2, 2, 2, 0, '', '2016-05-31 21:56:49'),
	(3, 3, 2, 0, '', '2016-05-31 22:08:50'),
	(4, 4, 2, 0, '', '2016-05-31 22:10:14'),
	(5, 5, 2, 0, '', '2016-05-31 22:10:50'),
	(6, 6, 2, 0, '', '2016-06-01 00:56:30');

DELETE FROM `oc_order_option`;
DELETE FROM `oc_order_product`;
INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
	(1, 1, 1, 'Коаксиальная акустика Adagio AL-6.0Sx', 'Товар 1', 1, 2000.0000, 2000.0000, 402.0000, 400),
	(2, 2, 293, 'Коаксиальная акустика DLS 425', 'Товар 15', 2, 3770.0000, 7540.0000, 756.0000, 1600),
	(3, 3, 300, 'Коаксиальная акустика DLS M-1369', 'Товар 22', 1, 80.0000, 80.0000, 18.0000, 0),
	(4, 4, 23, 'Коаксиальная акустика Alpine SPG-13C2', 'Товар 8', 1, 1920.0000, 1920.0000, 386.0000, 0),
	(5, 5, 93, 'Коаксиальная акустика Cadence CS-3.57', 'Товар 10', 1, 880.0000, 880.0000, 178.0000, 0),
	(6, 6, 425, 'Kicx GFQ-165', 'Model 165', 20, 2900.0000, 58000.0000, 0.0000, 0);

DELETE FROM `oc_order_total`;
INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
	(1, 1, 'sub_total', 'Стоимость товаров', 2000.0000, 1),
	(4, 1, 'total', 'Итого', 2402.0000, 9),
	(5, 2, 'sub_total', 'Стоимость товаров', 7540.0000, 1),
	(8, 2, 'total', 'Итого', 9052.0000, 9),
	(9, 3, 'sub_total', 'Стоимость товаров', 80.0000, 1),
	(12, 3, 'total', 'Итого', 98.0000, 9),
	(13, 4, 'sub_total', 'Стоимость товаров', 1920.0000, 1),
	(16, 4, 'total', 'Итого', 2306.0000, 9),
	(17, 5, 'sub_total', 'Стоимость товаров', 880.0000, 1),
	(20, 5, 'total', 'Итого', 1058.0000, 9),
	(21, 6, 'sub_total', 'Стоимость товаров', 58000.0000, 1),
	(22, 6, 'total', 'Итого', 58000.0000, 9);

DELETE FROM `oc_product`;
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `options_buy`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
	(1, 'Товар 1', 'LO-019E-001', 'Стикер UPC', '', '', '', '', '', 998, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Adagio_60Sx/1.jpg', 32, 1, 0, 2000.0000, 0, 9, '2016-05-30', 1.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 19, '2009-02-03 16:42:16', '2016-11-27 21:04:30'),
	(2, 'Товар 2', 'LO-019E-002', '', '', '', '', '', '', 999, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Adagio_PS-104/1.jpg', 32, 1, 0, 22000.0000, 0, 9, '2016-05-30', 2.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 1, '2009-02-03 16:42:17', '2016-05-30 22:53:08'),
	(18, 'Товар 3', 'LO-019E-003', '', '', '', '', '', '', 0, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Alpine_SPG-17C2/1.jpg', 33, 1, 0, 0.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:53:32'),
	(19, 'Товар 4', 'LO-019E-004', '', '', '', '', '', '', 2400, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Alpine_SPG-69C2/1.jpg', 33, 1, 0, 2400.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:53:43'),
	(20, 'Товар 5', 'LO-019E-005', '', '', '', '', '', '', 1260, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Alpine_SXE-1325s/1.jpg', 33, 1, 0, 1260.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:53:53'),
	(21, 'Товар 6', 'LO-019E-006', '', '', '', '', '', '', 1580, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Alpine_SXE-1725s/1.jpg', 33, 1, 0, 1580.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 2, '2012-04-06 18:13:12', '2016-05-30 22:54:04'),
	(22, 'Товар 7', 'LO-019E-007', '', '', '', '', '', '', 1890, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Alpine_SXE-6925s/1.jpg', 33, 1, 0, 1890.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:54:14'),
	(23, 'Товар 8', 'LO-019E-008', '', '', '', '', '', '', 1919, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Alpine_SPG-13C2/1.jpg', 33, 1, 0, 1920.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 3, '2012-04-06 18:13:12', '2016-05-30 22:53:20'),
	(92, 'Товар 9', 'LO-019E-009', '', '', '', '', '', '', 630, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-2.46/1.jpg', 37, 1, 0, 630.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:54:27'),
	(93, 'Товар 10', 'LO-019E-010', '', '', '', '', '', '', 879, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-3.57/1.jpg', 37, 1, 0, 880.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 3, '2012-04-06 18:13:12', '2016-05-30 22:54:38'),
	(94, 'Товар 11', 'LO-019E-011', '', '', '', '', '', '', 870, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-3.65/1.jpg', 37, 1, 0, 870.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:54:51'),
	(95, 'Товар 12', 'LO-019E-012', '', '', '', '', '', '', 1150, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-3.69/1.jpg', 37, 1, 0, 1150.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:55:06'),
	(291, 'Товар 13', 'LO-019E-013', '', '', '', '', '', '', 2380, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_225/1.jpg', 39, 1, 0, 2380.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:55:17'),
	(292, 'Товар 14', 'LO-019E-014', '', '', '', '', '', '', 0, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_226/1.jpg', 39, 1, 0, 0.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:55:25'),
	(293, 'Товар 15', 'LO-019E-015', '', '', '', '', '', '', 3768, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_425/1.jpg', 39, 1, 0, 3770.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 4, '2012-04-06 18:13:12', '2016-05-30 22:55:33'),
	(294, 'Товар 16', 'LO-019E-016', '', '', '', '', '', '', 4310, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_426/1.jpg', 39, 1, 0, 4310.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:55:40'),
	(295, 'Товар 17', 'LO-019E-017', '', '', '', '', '', '', 5280, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_962/1.jpg', 39, 1, 0, 5280.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:55:48'),
	(296, 'Товар 18', 'LO-019E-018', '', '', '', '', '', '', 1640, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_M-125/1.jpg', 39, 1, 0, 1640.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:56:04'),
	(297, 'Товар 19', 'LO-019E-019', '', '', '', '', '', '', 1720, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_M-126/1.jpg', 39, 1, 0, 1720.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:56:18'),
	(298, 'Товар 20', 'LO-019E-020', '', '', '', '', '', '', 2590, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_M-1269/1.jpg', 39, 1, 0, 2590.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:56:32'),
	(299, 'Товар 21', 'LO-019E-021', '', '', '', '', '', '', 1850, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_M-135_MK2/1.jpg', 39, 1, 0, 1850.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 0, '2012-04-06 18:13:12', '2016-05-30 22:56:36'),
	(300, 'Товар 22', 'LO-019E-022', '', '', '', '', '', '', 2529, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_M-1369/1.jpg', 39, 1, 0, 2530.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 7, '2012-04-06 18:13:12', '2016-06-01 00:04:55'),
	(301, 'Товар 23', 'LO-019E-023', '', '', '', '', '', '', 2020, 6, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_M-136_MK2/1.jpg', 39, 1, 0, 2020.0000, 0, 9, '2016-05-30', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 0, 1, 4, '2012-04-06 18:13:12', '2016-06-01 00:11:08'),
	(425, 'Model 165', 'K-GFQ-165', '', '', '', '', '', '', 24, 7, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/1.jpg', 53, 1, 0, 3400.0000, 0, 0, '2016-05-30', 2.00, 1, 80.00, 40.00, 15.00, 2, 0, 1, 0, 1, 39, '2016-06-01 00:36:32', '2017-10-04 23:23:40');

DELETE FROM `oc_product_attribute`;
INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
	(1, 25, 1, '60 Вт'),
	(1, 26, 1, '4 Ом'),
	(1, 27, 1, '92 дБ'),
	(1, 28, 1, '16,5 см'),
	(1, 29, 1, 'шелк'),
	(1, 30, 1, 'алюминий'),
	(1, 31, 1, '15 мм'),
	(1, 32, 1, 'купол'),
	(2, 26, 1, '4 Ом'),
	(2, 24, 1, '90 Вт'),
	(2, 25, 1, '30 Вт'),
	(2, 23, 1, '120 - 20000 Гц'),
	(2, 21, 1, 'коаксиальная'),
	(2, 15, 1, '2'),
	(18, 26, 1, '4 Ом'),
	(18, 24, 1, '240 Вт'),
	(18, 25, 1, '60 Вт'),
	(18, 23, 1, '68 - 20000 Гц'),
	(18, 21, 1, 'коаксиальная'),
	(18, 15, 1, '2'),
	(19, 26, 1, '4 Ом'),
	(19, 24, 1, '300 Вт'),
	(19, 25, 1, '75 Вт'),
	(19, 23, 1, '65 - 18000 Гц'),
	(19, 21, 1, 'коаксиальная'),
	(19, 15, 1, '2'),
	(20, 26, 1, '4 Ом'),
	(20, 24, 1, '200 Вт'),
	(20, 25, 1, '35 Вт'),
	(20, 23, 1, '70 - 20000 Гц'),
	(20, 21, 1, 'коаксиальная'),
	(20, 15, 1, '2'),
	(21, 26, 1, '4 Ом'),
	(21, 24, 1, '220 Вт'),
	(21, 25, 1, '40 Вт'),
	(21, 23, 1, '60 - 20000 Гц'),
	(21, 21, 1, 'коаксиальная'),
	(21, 15, 1, '2'),
	(22, 26, 1, '4 Ом'),
	(22, 24, 1, '280 Вт'),
	(22, 25, 1, '45 Вт'),
	(22, 23, 1, '40 - 20000 Гц'),
	(22, 21, 1, 'коаксиальная'),
	(22, 15, 1, '2'),
	(23, 26, 1, '4 Ом'),
	(23, 24, 1, '200 Вт'),
	(23, 25, 1, '50 Вт'),
	(23, 23, 1, '82 - 20000 Гц'),
	(23, 21, 1, 'коаксиальная'),
	(23, 15, 1, '2'),
	(92, 26, 1, '4 Ом'),
	(92, 24, 1, '120 Вт'),
	(92, 25, 1, '60 Вт'),
	(92, 23, 1, '100 - 20000 Гц'),
	(92, 21, 1, 'коаксиальная'),
	(92, 15, 1, '2'),
	(93, 26, 1, '4 Ом'),
	(93, 24, 1, '150 Вт'),
	(93, 25, 1, '75 Вт'),
	(93, 23, 1, '84 - 20000 Гц'),
	(93, 21, 1, 'коаксиальная'),
	(93, 15, 1, '3'),
	(94, 26, 1, '4 Ом'),
	(94, 24, 1, '200 Вт'),
	(94, 25, 1, '100 Вт'),
	(94, 23, 1, '84 - 20000 Гц'),
	(94, 21, 1, 'коаксиальная'),
	(94, 15, 1, '3'),
	(95, 26, 1, '4 Ом'),
	(95, 24, 1, '700 Вт'),
	(95, 25, 1, '350 Вт'),
	(95, 23, 1, '44 - 20000 Гц'),
	(95, 21, 1, 'коаксиальная'),
	(95, 15, 1, '3'),
	(291, 26, 1, '4 Ом'),
	(291, 24, 1, '80 Вт'),
	(291, 25, 1, '50 Вт'),
	(291, 23, 1, '60 - 20000 Гц'),
	(291, 21, 1, 'коаксиальная'),
	(291, 15, 1, '2'),
	(292, 26, 1, '4 Ом'),
	(292, 24, 1, '80 Вт'),
	(292, 25, 1, '50 Вт'),
	(292, 23, 1, '50 - 20000 Гц'),
	(292, 21, 1, 'коаксиальная'),
	(292, 15, 1, '2'),
	(293, 26, 1, '4 Ом'),
	(293, 24, 1, '90 Вт'),
	(293, 25, 1, '60 Вт'),
	(293, 23, 1, '55 - 20000 Гц'),
	(293, 21, 1, 'коаксиальная'),
	(293, 15, 1, '2'),
	(294, 26, 1, '4 Ом'),
	(294, 24, 1, '90 Вт'),
	(294, 25, 1, '60 Вт'),
	(294, 23, 1, '45 - 20000 Гц'),
	(294, 21, 1, 'коаксиальная'),
	(294, 15, 1, '2'),
	(295, 26, 1, '4 Ом'),
	(295, 24, 1, '120 Вт'),
	(295, 25, 1, '80 Вт'),
	(295, 23, 1, '30 - 20000 Гц'),
	(295, 21, 1, 'коаксиальная'),
	(295, 15, 1, '2'),
	(296, 26, 1, '4 Ом'),
	(296, 24, 1, '60 Вт'),
	(296, 25, 1, '40 Вт'),
	(296, 23, 1, '60 - 20000 Гц'),
	(296, 21, 1, 'коаксиальная'),
	(296, 15, 1, '2'),
	(297, 26, 1, '4 Ом'),
	(297, 24, 1, '80 Вт'),
	(297, 25, 1, '50 Вт'),
	(297, 23, 1, '50 - 20000 Гц'),
	(297, 21, 1, 'коаксиальная'),
	(297, 15, 1, '2'),
	(298, 26, 1, '4 Ом'),
	(298, 24, 1, '120 Вт'),
	(298, 25, 1, '60 Вт'),
	(298, 23, 1, '40 - 20000 Гц'),
	(298, 21, 1, 'коаксиальная'),
	(298, 15, 1, '2'),
	(299, 26, 1, '4 Ом'),
	(299, 24, 1, '80 Вт'),
	(299, 25, 1, '50 Вт'),
	(299, 23, 1, '60 - 20000 Гц'),
	(299, 21, 1, 'коаксиальная'),
	(299, 15, 1, '3'),
	(300, 24, 1, '130 Вт'),
	(300, 25, 1, '80 Вт'),
	(300, 26, 1, '4 Ом'),
	(300, 27, 1, '92 дБ'),
	(300, 28, 1, '15 x 23 см'),
	(300, 29, 1, ''),
	(300, 30, 1, ''),
	(300, 31, 1, '15 мм'),
	(301, 24, 1, '100 Вт'),
	(301, 25, 1, '60 Вт'),
	(301, 26, 1, '4 Ом'),
	(301, 27, 1, '91 дБ'),
	(301, 28, 1, '16 см'),
	(301, 29, 1, ''),
	(301, 30, 1, ''),
	(301, 31, 1, '16 мм'),
	(1, 24, 1, '180 Вт'),
	(1, 23, 1, '44 - 24000 Гц'),
	(1, 21, 1, 'коаксиальная'),
	(1, 15, 1, '2'),
	(2, 27, 1, '92 дБ'),
	(2, 28, 1, '10 см'),
	(2, 29, 1, 'майлар'),
	(2, 30, 1, 'полипропилен'),
	(2, 31, 1, '30 мм'),
	(2, 32, 1, 'купол'),
	(23, 27, 1, '87,5 дБ'),
	(23, 28, 1, '13 см'),
	(23, 29, 1, 'шелк'),
	(23, 30, 1, 'полипропилен'),
	(23, 31, 1, '20 мм'),
	(23, 32, 1, 'купол'),
	(18, 27, 1, '88,5 дБ'),
	(18, 28, 1, '16,5 см'),
	(18, 29, 1, 'шелк'),
	(18, 30, 1, 'полипропилен'),
	(18, 31, 1, '20 мм'),
	(18, 32, 1, 'купол'),
	(19, 27, 1, '91 дБ'),
	(19, 28, 1, '15 x 23 см'),
	(19, 29, 1, 'шелк'),
	(19, 30, 1, 'полипропилен'),
	(19, 31, 1, '25 мм'),
	(19, 32, 1, 'купол'),
	(20, 27, 1, '92 дБ'),
	(20, 28, 1, '13 см'),
	(20, 29, 1, 'майлар и титан'),
	(20, 30, 1, 'целлюлоза'),
	(20, 31, 1, '25 мм'),
	(20, 32, 1, 'купол'),
	(21, 27, 1, '92 дБ'),
	(21, 28, 1, '13 см'),
	(21, 29, 1, 'шелк'),
	(21, 30, 1, 'целлюлоза'),
	(21, 31, 1, '20 мм'),
	(21, 32, 1, 'купол'),
	(22, 27, 1, '92 дБ'),
	(22, 28, 1, '15 x 23 см'),
	(22, 29, 1, 'майлар'),
	(22, 30, 1, 'полипропилен'),
	(22, 31, 1, '16 мм'),
	(22, 32, 1, 'купол'),
	(92, 27, 1, '86 дБ'),
	(92, 28, 1, '10 x 15 см'),
	(92, 29, 1, ''),
	(92, 30, 1, ''),
	(92, 31, 1, ''),
	(92, 32, 1, ''),
	(93, 27, 1, '90 дБ'),
	(93, 28, 1, '13 x 18 см'),
	(93, 29, 1, 'майлар'),
	(93, 30, 1, 'полипропилен'),
	(93, 31, 1, '19 мм'),
	(93, 32, 1, ''),
	(94, 27, 1, '90 дБ'),
	(94, 28, 1, '16 см'),
	(94, 29, 1, ''),
	(94, 30, 1, ''),
	(94, 31, 1, '25 мм'),
	(94, 32, 1, ''),
	(95, 27, 1, '91 дБ'),
	(95, 28, 1, '15 x 23 см'),
	(95, 29, 1, 'майлар'),
	(95, 30, 1, 'полипропилен'),
	(95, 31, 1, '19 мм'),
	(95, 32, 1, ''),
	(291, 27, 1, '92 дБ'),
	(291, 28, 1, '13 см'),
	(291, 29, 1, 'шелк'),
	(291, 30, 1, 'полипропилен'),
	(291, 31, 1, '16 мм'),
	(291, 32, 1, 'купол'),
	(292, 27, 1, '92 дБ'),
	(292, 28, 1, '16 см'),
	(292, 29, 1, 'шелк'),
	(292, 30, 1, 'полипропилен'),
	(292, 31, 1, '16 мм'),
	(292, 32, 1, 'купол'),
	(293, 27, 1, '93 дБ'),
	(293, 28, 1, '13 см'),
	(293, 29, 1, 'шелк'),
	(293, 30, 1, 'полипропилен'),
	(293, 31, 1, '20 мм'),
	(293, 32, 1, 'купол'),
	(294, 27, 1, '94 дБ'),
	(294, 28, 1, '16,5 см'),
	(294, 29, 1, 'шелк'),
	(294, 30, 1, 'полипропилен'),
	(294, 31, 1, '20 мм'),
	(294, 32, 1, 'купол'),
	(295, 27, 1, '94 дБ'),
	(295, 28, 1, '15 x 23 см'),
	(295, 29, 1, 'шелк'),
	(295, 30, 1, 'целлюлоза'),
	(295, 31, 1, '25 мм'),
	(295, 32, 1, 'купол'),
	(296, 27, 1, '90 дБ'),
	(296, 28, 1, '13 см'),
	(296, 29, 1, ''),
	(296, 30, 1, ''),
	(296, 31, 1, ''),
	(296, 32, 1, ''),
	(297, 27, 1, '91 дБ'),
	(297, 28, 1, '16,5 см'),
	(297, 29, 1, ''),
	(297, 30, 1, ''),
	(297, 31, 1, ''),
	(297, 32, 1, ''),
	(298, 27, 1, '90 дБ'),
	(298, 28, 1, '15 x 23 см'),
	(298, 29, 1, ''),
	(298, 30, 1, ''),
	(298, 31, 1, '50 мм'),
	(298, 32, 1, ''),
	(299, 27, 1, '90 дБ'),
	(299, 28, 1, '13 см'),
	(299, 29, 1, ''),
	(299, 30, 1, ''),
	(299, 31, 1, '10 мм'),
	(299, 32, 1, ''),
	(301, 23, 1, '50 - 20000 Гц'),
	(301, 21, 1, 'коаксиальная'),
	(301, 15, 1, '3'),
	(300, 23, 1, '40 - 20000 Гц'),
	(300, 21, 1, 'коаксиальная'),
	(300, 15, 1, '3'),
	(300, 32, 1, ''),
	(301, 32, 1, ''),
	(425, 26, 1, '4 Ом'),
	(425, 25, 2, ''),
	(425, 25, 1, '80 Вт'),
	(425, 24, 2, ''),
	(425, 24, 1, '160 Вт'),
	(425, 23, 2, ''),
	(425, 23, 1, '44 - 24000 Гц'),
	(425, 21, 2, ''),
	(425, 21, 1, 'коаксиальная'),
	(425, 15, 2, ''),
	(425, 15, 1, '2'),
	(425, 26, 2, ''),
	(425, 27, 1, '94 дБ'),
	(425, 27, 2, ''),
	(425, 28, 1, '16,5 см'),
	(425, 28, 2, ''),
	(425, 29, 1, 'шелк'),
	(425, 29, 2, ''),
	(425, 30, 1, 'стекловолокно'),
	(425, 30, 2, ''),
	(425, 31, 1, '15 мм'),
	(425, 31, 2, ''),
	(425, 32, 1, 'купол'),
	(425, 32, 2, '');

DELETE FROM `oc_product_description`;
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `short_description`, `tag`, `meta_title`, `meta_h1`, `meta_description`, `meta_keyword`) VALUES
	(2, 1, 'Коаксиальная акустика Adagio PS-104', 'Высокая чувствительность позволяет использовать динамики PS от штатного головного устройства (магнитолы) или проигрывателя CD, MP3 и т.д., любого известного мирового производителя без потерь в отдаче, без искажений и перегрузок. Новый материал диффузора IPP/PEI с влагостойким покрытием позволяет эксплуатировать динамики в различных климатических условиях и продолжительной интенсивной нагрузкой.', '', '', 'Коаксиальная акустика Adagio PS-104', '', '', ''),
	(18, 1, 'Коаксиальная акустика Alpine SPG-17C2', 'Новая серия динамиков Alpine Type-G разработана в Европе и поэтому полностью соответствует европейским звуковым предпочтениям. Новые конструктивные решения позволили добиться высоких мощностных характеристик динамиков, по сравнению с динамиками Type-S долговременная мощность моделей серии Type-G увеличилась в полтора-два раза. Намотка звуковой катушки проводом квадратного сечения способствует более эффективному отводу и рассеянию тепла от катушки. Специальные вентиляционные каналы в корзине обеспечивают улучшенный отвод нагретого воздуха от магнитного узла и звуковой катушки. Точному и чистому воспроизведению высоких частот способствует твитер с 20-миллиметровым шелковым куполом и магнитным приводом на основе неодимового магнита. &lt;br&gt;&lt;br&gt;Компактная конструкция, малая установочная глубина и малое возвышение твитера над диффузором НЧ/СЧ динамика упрощают инсталляцию динамиков Type-G в автомобиле.', '', '', 'Коаксиальная акустика Alpine SPG-17C2', '', '', ''),
	(19, 1, 'Коаксиальная акустика Alpine SPG-69C2', 'Новая серия динамиков Alpine Type-G разработана в Европе и поэтому полностью соответствует европейским звуковым предпочтениям. Новые конструктивные решения позволили добиться высоких мощностных характеристик динамиков, по сравнению с динамиками Type-S долговременная мощность моделей серии Type-G увеличилась в полтора-два раза. Намотка звуковой катушки проводом квадратного сечения способствует более эффективному отводу и рассеянию тепла от катушки. Специальные вентиляционные каналы в корзине обеспечивают улучшенный отвод нагретого воздуха от магнитного узла и звуковой катушки. Точному и чистому воспроизведению высоких частот способствует твитер с 20-миллиметровым шелковым куполом и магнитным приводом на основе неодимового магнита. &lt;br&gt;&lt;br&gt;Компактная конструкция, малая установочная глубина и малое возвышение твитера над диффузором НЧ/СЧ динамика упрощают инсталляцию динамиков Type-G в автомобиле.', '', '', 'Коаксиальная акустика Alpine SPG-69C2', '', '', ''),
	(20, 1, 'Коаксиальная акустика Alpine SXE-1325s', 'Громкоговорители серии Custom изготовлены в точном соответствии с установочными размерами и особенностями размещения громкоговорителей в конкретных моделях автомобилей. При разработке этих громкоговорителей были учтены особенности интерьера автомобилей, для которых они предназначены. Исключительная простота установки, высокая эффективность, естественное и мощное звучание - вот далеко не полный перечень достоинств этой серии.', '', '', 'Коаксиальная акустика Alpine SXE-1325s', '', '', ''),
	(21, 1, 'Коаксиальная акустика Alpine SXE-1725s', 'Громкоговорители серии Custom изготовлены в точном соответствии с установочными размерами и особенностями размещения громкоговорителей в конкретных моделях автомобилей. При разработке этих громкоговорителей были учтены особенности интерьера автомобилей, для которых они предназначены. Исключительная простота установки, высокая эффективность, естественное и мощное звучание - вот далеко не полный перечень достоинств этой серии.', '', '', 'Коаксиальная акустика Alpine SXE-1725s', '', '', ''),
	(22, 1, 'Коаксиальная акустика Alpine SXE-6925s', 'Линейка динамиков Custom-Fit с точно подобранными размерами для установки в штатные места автомобилей различных моделей - отличное решение для легкого и быстрого создания в вашем автомобиле звука с качеством Alpine.', '', '', 'Коаксиальная акустика Alpine SXE-6925s', '', '', ''),
	(23, 1, 'Коаксиальная акустика Alpine SPG-13C2', 'Компонентные и коаксиальные динамики новой серии Type-G разработаны и изготовлены для работы с высокими уровнями мощности. Они также обеспечивают хорошее качество звука благодаря твитеру с мягким куполом, намотке звуковой катушки проводом квадратного сечения на каптоновом каркасе, а также специально подобранному конденсатору.', '', '', 'Коаксиальная акустика Alpine SPG-13C2', '', '', ''),
	(92, 1, 'Коаксиальная акустика Cadence CS-2.46', 'Количество полос: 2&lt;br&gt;\r\n\r\nИмпеданс: 4 Ом&lt;br&gt;\r\n\r\nЧастотный диапазон: 100 - 20 000 Гц&lt;br&gt;\r\n\r\nЧувствительность: 86 дБ&lt;br&gt;\r\n\r\nМощность номинальная: 30 Вт&lt;br&gt;\r\n\r\nМощность максимальная: 60 Вт&lt;br&gt;\r\n\r\n&amp;nbsp;&lt;br&gt;\r\n\r\n&lt;strong&gt;Излучатели Cadence CS 2.46&lt;/strong&gt;&lt;br&gt;\r\n\r\nКоличество излучателей: 2 шт&lt;br&gt;\r\n\r\nРазмер низкочастотного излучателя: 100 x 150 мм&lt;br&gt;\r\n\r\n&amp;nbsp;&lt;br&gt;\r\n\r\n&lt;strong&gt;Конструкция Cadence CS 2.46&lt;/strong&gt;&lt;br&gt;\r\n\r\nМонтажная глубина: 44 мм', '', '', 'Коаксиальная акустика Cadence CS-2.46', '', '', ''),
	(93, 1, 'Коаксиальная акустика Cadence CS-3.57', 'Коаксильная 3-полосная автоакустика Cadence CS 3.57, типоразмер – 13х18 см (5x7 дюйм.) / 15 х 20 см (6х8 дюйм.), мощность номинальная/максимальная - 150/300 Вт, диапазон воспроизводимых частот - 84 - 20000 Гц, номинальное сопротивление - 4 Ом, чувствительность - 90 Дб.', '', '', 'Коаксиальная акустика Cadence CS-3.57', '', '', ''),
	(94, 1, 'Коаксиальная акустика Cadence CS-3.65', 'кустическая система автомобильная, 3-х полосная триаксиальная 6.5» (16.5 см), мощность максимальная 400 Вт, 64-20000 Гц, 90 дБ.', '', '', 'Коаксиальная акустика Cadence CS-3.65', '', '', ''),
	(95, 1, 'Коаксиальная акустика Cadence CS-3.69', 'Акустическая система автомобильная, 3-х полосная триаксиальная 6*9». Включает грили и встроенный фильтр.', '', '', 'Коаксиальная акустика Cadence CS-3.69', '', '', ''),
	(291, 1, 'Коаксиальная акустика DLS 225', 'Недорогие коаксиалы с выносным фильтром, через который подключается пищалка и достойным звучанием.', '', '', 'Коаксиальная акустика DLS 225', '', '', ''),
	(292, 1, 'Коаксиальная акустика DLS 226', 'Недорогие коаксиалы с выносным фильтром, через который подключается пищалка и достойным звучанием.', '', '', 'Коаксиальная акустика DLS 226', '', '', ''),
	(293, 1, 'Коаксиальная акустика DLS 425', 'Отличная коаксиальная акустика с шелковой пищалкой и выносным кроссовером высокого порядка.', '', '', 'Коаксиальная акустика DLS 425', '', '', ''),
	(294, 1, 'Коаксиальная акустика DLS 426', 'Отличная коаксиальная акустика с шелковой пищалкой и выносным кроссовером высокого порядка.', '', '', 'Коаксиальная акустика DLS 426', '', '', ''),
	(295, 1, 'Коаксиальная акустика DLS 962', 'Это акустика для тех, кто хочет глубокий бас, но не будет ставить сабвуфер! Берете эти блины, ставите их под усилитель, в деревянную, а еще лучше из МДФ, полку и услишите такой бас, который не дает ни одна акустика этого размера в мире!!!', '', '', 'Коаксиальная акустика DLS 962', '', '', ''),
	(296, 1, 'Коаксиальная акустика DLS M-125', 'Недорогая коаксиальная серия Матадор неплохо зарекомендовала себя в бюджетных системах. Имеет высокую чувсвительность, благодаря жесткому и при этом достаточно легкому диффузору и мягкому, эластичному подвесу. Прилично воспроизводит верхние частоты благодаря металлической пищалке с своим фильтром. Середина чуть провалена, голос и вокал звучат не очень, но для такого бюджета простительно.', '', '', 'Коаксиальная акустика DLS M-125', '', '', ''),
	(297, 1, 'Коаксиальная акустика DLS M-126', 'Недорогая коаксиальная серия Матадор неплохо зарекомендовала себя в бюджетных системах. Имеет высокую чувсвительность, благодаря жесткому и при этом достаточно легкому диффузору и мягкому, эластичному подвесу. Прилично воспроизводит верхние частоты благодаря металлической пищалке с своим фильтром. Середина чуть провалена, голос и вокал звучат не очень, но для такого бюджета простительно.', '', '', 'Коаксиальная акустика DLS M-126', '', '', ''),
	(298, 1, 'Коаксиальная акустика DLS M-1269', 'Отличные блины для подзвучки сзади! Очень рекомендую при установке сабвуфера. Они дешево стоят и хорошо проигрывают тот самый верхний бас, которого не хватает с 16/13 сантиметровых динамиков спереди и саба сзади!', '', '', 'Коаксиальная акустика DLS M-1269', '', '', ''),
	(299, 1, 'Коаксиальная акустика DLS M-135 MK2', 'Недорогая коаксиальная серия Матадор неплохо зарекомендовала себя в бюджетных системах. Имеет высокую чувсвительность, благодаря жесткому и при этом достаточно легкому диффузору и мягкому, эластичному подвесу. Прилично воспроизводит верхние частоты благодаря металлической пищалке с своим фильтром. Середина чуть провалена, голос и вокал звучат не очень, но для такого бюджета простительно.', '', '', 'Коаксиальная акустика DLS M-135 MK2', '', '', ''),
	(300, 1, 'Коаксиальная акустика DLS M-1369', 'Акустическая система автомобильная, 3-х полосная триаксиальная 6*9&quot;. Включает грили и встроенный фильтр. Улучшенная.', '', '', 'Коаксиальная акустика DLS M-1369', '', '', ''),
	(301, 1, 'Коаксиальная акустика DLS M-136 MK2', 'Коаксиальная АС, типоразмер: 16 см (6 дюйм.), мощность: 60 Вт, количество полос: 3, чувствительность: 91 дБ, импеданс: 4 Ом', '', '', 'Коаксиальная акустика DLS M-136 MK2', '', '', ''),
	(1, 1, 'Коаксиальная акустика Adagio AL-6.0Sx', 'К сравнительно новым производителям отношение у многих опасливое. Недоверие усиливается, если у продукции отечественные корни. Однако Adagio уже не новички на рынке, ассортимент внушает уважение, да и продукция конкурентоспособная. Кстати, если ориентироваться по цене, то этот участник третий сверху в ценовой табели. Сейчас попробуем разобраться за что, так сказать, взимаются кровные. Очень симпатичного вида изделие с белым диффузором из алюминия и большой магнитной системой, небольшая шелковая пищалка в поворотной гильзе. ФВЧ тут второго порядка – почти исключение из правил. Измерения резонанса мидбаса столь же обнадеживающие – резонанс на частоте около 60 Гц хорошо задемпфирован, однако подвижная система сравнительно мягкая. Об этом упомянем в рекомендациях. \r\n\r\n&lt;br&gt;\r\n\r\n&lt;br&gt;\r\n\r\nА вот с АЧХ все не так гладко – в прямом излучении пищалка доминирует, кроме того, заметна «яма» в районе 4000 Гц. Впрочем, внеосевые измерения все равно очень приличные, даже несмотря на спад в последней октаве, общую неравномерность АЧХ можно назвать хорошей. Самое интересное – прослушивание. Эти АС имеют совершенно уникальный почерк на средних частотах – звук очень легкий, почти «бумажный». Удивительно непринужденная подача музыки. Даже при передаче большого состава инструментов звук не становится «кашеобразным», навязчивым, чем грешат некоторые конкуренты. У такой комфортной нейтральности есть несколько причин, однако обратная ее сторона – сравнительно бедная передача высоких частот, на больших громкостях заметно подчеркнуты шипящие. В этом стоит упрекнуть пищалку – она могла бы быть чуть лучше. Но общее впечатление от АС – удивительная легкость, воздушность передачи средних частот вкупе с уверенным и структурным воспроизведением баса – не пересилить незначительными огрехами. \r\n\r\n&lt;br&gt;\r\n', '', '', 'Коаксиальная акустика Adagio AL-6.0Sx', '', '', ''),
	(425, 1, 'Коаксиальная акустика Kicx GFQ-165', '&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Акустическая автомобильная двухполосная компонентная система за счет высокой чувствительности может быть непосредственно подключена к автомобильному радиоприемнику. Радиоприемник снабжен трехпозиционным регулятором уровня громкости твитера для обеспечения оптимального комфорта прослушивания. Аксессуары, поставляемые с твитером, можно монтировать различными способами для обеспечения наилучшей обработки звукового образа.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;С этой акустической системой вы откроете новые музыкальные ощущения. Войдите в мир качества с комплектом акустики, который предоставляет различные возможности конфигурирования для улучшения характеристик вашей аудиосистемы. Эта линейка продуктов является всемирно признанным бестселлером.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Roboto; font-weight: bold;&quot;&gt;Основное отличие:&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-family: Roboto; line-height: 1.42857;&quot;&gt;Диффузор DFS® (структура двойного стекловолокна)&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-family: Roboto; line-height: 1.42857;&quot;&gt;Высокая чувствительность (прямое подключение к автомобильному радиоприемнику)&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-family: Roboto; line-height: 1.42857;&quot;&gt;Высокая нагрузочная способность, глубокое звучание басов&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-family: Roboto; line-height: 1.42857;&quot;&gt;Защитные решетки входят в комплект поставки&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;', '', '', 'Купить Kicx GFQ-165', '', '', ''),
	(425, 2, 'Коаксиальная акустика Kicx GFQ-165', '', '', '', '', '', '', '');

DELETE FROM `oc_product_discount`;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;

DELETE FROM `oc_product_image`;
INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`, `video`) VALUES
	(211, 1, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Adagio_60Sx/2.jpg', 0, ''),
	(115, 92, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-2.46/3.jpg', 0, ''),
	(114, 92, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-2.46/2.jpg', 0, ''),
	(117, 93, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-3.57/3.jpg', 0, ''),
	(116, 93, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-3.57/2.jpg', 0, ''),
	(118, 94, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-3.65/2.jpg', 0, ''),
	(120, 95, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-3.69/3.jpg', 0, ''),
	(119, 95, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/CADENCE_CS-3.69/2.jpg', 0, ''),
	(121, 291, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_225/2.jpg', 0, ''),
	(122, 292, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_226/2.jpg', 0, ''),
	(123, 296, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_M-125/2.jpg', 0, ''),
	(124, 299, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/DLS_M-135_MK2/2.jpg', 0, ''),
	(252, 425, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/4.jpg', 3, ''),
	(251, 425, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/2.jpg', 2, ''),
	(250, 425, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/3.jpg', 1, ''),
	(253, 425, 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/5.jpg', 4, 'https://www.youtube.com/watch?v=iNqB81WtNbQ');

DELETE FROM `oc_product_option`;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
	(51, 425, 15, '', 0),
	(52, 425, 13, '', 0);

DELETE FROM `oc_product_option_value`;
INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`, `opt_image`, `model`) VALUES
	(109, 51, 425, 15, 80, 2, 0, 1000.0000, '+', 0, '+', 0.00, '+', '', ''),
	(108, 51, 425, 15, 81, 6, 0, 200.0000, '+', 0, '+', 0.20, '+', '', ''),
	(112, 52, 425, 13, 60, 4, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(110, 52, 425, 13, 51, 10, 0, 0.0000, '+', 0, '+', 0.00, '+', '', ''),
	(111, 52, 425, 13, 56, 8, 0, 0.0000, '+', 0, '+', 0.00, '+', '', '');

DELETE FROM `oc_product_related`;
INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
	(18, 425),
	(20, 425),
	(22, 425),
	(93, 425),
	(297, 425),
	(300, 425),
	(425, 18),
	(425, 20),
	(425, 22),
	(425, 93),
	(425, 297),
	(425, 300);

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
	(26, 300, 1, 2, 90.0000, '0000-00-00', '0000-00-00'),
	(25, 300, 1, 1, 80.0000, '0000-00-00', '0000-00-00'),
	(27, 301, 1, 1, 90.0000, '0000-00-00', '0000-00-00'),
	(39, 425, 1, 1, 2900.0000, '0000-00-00', '0000-00-00');

DELETE FROM `oc_product_to_category`;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`, `main_category`) VALUES
	(1, 111, 0),
	(1, 1111, 0),
	(2, 1111, 0),
	(2, 111, 0),
	(18, 1111, 0),
	(18, 111, 0),
	(19, 1111, 0),
	(19, 111, 0),
	(20, 1111, 0),
	(20, 111, 0),
	(21, 1111, 0),
	(21, 111, 0),
	(22, 1111, 0),
	(22, 111, 0),
	(23, 1111, 0),
	(23, 111, 0),
	(92, 1111, 0),
	(92, 111, 0),
	(93, 1111, 0),
	(93, 111, 0),
	(94, 1111, 0),
	(94, 111, 0),
	(95, 1111, 0),
	(95, 111, 0),
	(291, 1111, 0),
	(291, 111, 0),
	(292, 1111, 0),
	(292, 111, 0),
	(293, 1111, 0),
	(293, 111, 0),
	(294, 1111, 0),
	(294, 111, 0),
	(295, 1111, 0),
	(295, 111, 0),
	(296, 1111, 0),
	(296, 111, 0),
	(297, 1111, 0),
	(297, 111, 0),
	(298, 1111, 0),
	(298, 111, 0),
	(299, 1111, 0),
	(299, 111, 0),
	(300, 111, 0),
	(300, 1111, 0),
	(301, 111, 0),
	(301, 1111, 0),
	(425, 1111, 0),
	(425, 111, 1);

DELETE FROM `oc_product_to_layout`;
INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
	(1, 0, 0),
	(2, 0, 0),
	(23, 0, 0),
	(18, 0, 0),
	(19, 0, 0),
	(20, 0, 0),
	(21, 0, 0),
	(22, 0, 0),
	(92, 0, 0),
	(93, 0, 0),
	(94, 0, 0),
	(95, 0, 0),
	(291, 0, 0),
	(292, 0, 0),
	(293, 0, 0),
	(294, 0, 0),
	(295, 0, 0),
	(296, 0, 0),
	(297, 0, 0),
	(298, 0, 0),
	(299, 0, 0),
	(301, 0, 0),
	(300, 0, 0),
	(425, 0, 0);

DELETE FROM `oc_product_to_store`;
INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
	(1, 0),
	(2, 0),
	(18, 0),
	(19, 0),
	(20, 0),
	(21, 0),
	(22, 0),
	(23, 0),
	(92, 0),
	(93, 0),
	(94, 0),
	(95, 0),
	(291, 0),
	(292, 0),
	(293, 0),
	(294, 0),
	(295, 0),
	(296, 0),
	(297, 0),
	(298, 0),
	(299, 0),
	(300, 0),
	(301, 0),
	(425, 0);

DELETE FROM `oc_review`;
INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `answer`, `answer_from`, `rating`, `status`, `date_added`, `date_modified`) VALUES
	(1, 0, 0, 'Василий', 'Заказывал в магазине уже 5 раз. Все нравиться, ребята молодцы, так держать. Всем рекомендую! Дружелюбный персонал подсказал че каво, куда и как. Подарили мне купоны на скидку как постоянному покупашке.', '', '', 5, 1, '2016-05-10 00:00:00', '2016-05-31 22:44:21'),
	(2, 0, 0, 'Марина', 'Не следует, однако забывать, что дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки модели развития. Не следует, однако забывать, что рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании новых предложений. Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности требуют от нас анализа новых предложений.', '', '', 3, 1, '2016-05-12 00:00:00', '0000-00-00 00:00:00'),
	(3, 0, 0, 'Анатолий', 'Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет выполнять важные задания по разработке новых предложений. Идейные соображения высшего порядка, а также рамки и место обучения кадров в значительной степени обуславливает создание новых предложений. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. Значимость этих проблем настолько очевидна, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации.', '', '', 1, 1, '2016-05-15 00:00:00', '0000-00-00 00:00:00'),
	(4, 0, 0, 'Иванов Вася', 'Задача организации, в особенности же постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что начало повседневной работы по формированию позиции требуют от нас анализа систем массового участия. Равным образом начало повседневной работы по формированию позиции требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач. Задача организации, в особенности же реализация намеченных плановых заданий позволяет выполнять важные задания по разработке соответствующий условий активизации. С другой стороны реализация намеченных плановых заданий влечет за собой процесс внедрения и модернизации соответствующий условий активизации.', '', '', 5, 1, '2016-05-31 00:00:00', '0000-00-00 00:00:00'),
	(5, 1, 0, 'Николай', 'Акустика моща ваще, бомбиииит! Буц бац, буц бац, бац бац...', '', '', 5, 1, '2016-05-31 23:58:54', '2016-05-31 23:59:04'),
	(6, 1, 0, 'Анатолий', 'Не следует, однако забывать, что дальнейшее развитие различных форм деятельности позволяет выполнять важные задания по разработке дальнейших направлений развития. Задача организации, в особенности же дальнейшее развитие различных форм деятельности позволяет выполнять важные задания по разработке систем массового участия.', '', '', 3, 1, '2016-05-31 23:59:51', '2016-06-01 00:00:01'),
	(7, 93, 0, 'Виталий Васильевич', 'Товарищи! консультация с широким активом требуют определения и уточнения соответствующий условий активизации. Товарищи! сложившаяся структура организации позволяет выполнять важные задания по разработке направлений прогрессивного развития.', '', '', 1, 1, '2016-06-01 00:00:52', '2016-06-01 00:01:02'),
	(8, 300, 0, 'Марина', 'Ценник сладкий. За такую цену просто чики-пуки!', '', '', 5, 1, '2016-06-01 00:02:20', '2016-06-01 00:02:30'),
	(9, 425, 0, 'Илья Юрьевич', 'Колонками очень доволен, звук выше всяких ожиданий. Играют от магнитолы Pioneer DEH-2300UB. Высокие и низкие выдают отлично, в комплекте имеются сетки и провода. \r\nЗа такие деньги вариант очень хороший, по сравнению с другими производителями (в ценовом диапазоне (от 1200-2000 руб.), даже самый лучший. \r\nКто подыскивает бюджетный, но качественный вариант-советую!', '', '', 5, 1, '2016-06-01 00:45:21', '2016-06-01 00:47:11'),
	(10, 425, 0, 'Анатолий', 'Офигенно понравилось звучание динамиков. Ходил по разным магазинам слушал акустику, было дело хотел даже rockford взять но звучание на середине не понравилось. Наткнулся на эту модельку давно, все ходил вокруг да около, но тут решил зайти в мвидео еще раз послушать. Звук просто чистейший для такой ценовой категории, слушал многие компоненты даже отстают по звучанию. Середину кевлар играет здорово, высокочастотник уши не режет. Я доволен.\r\nКомплектация стандартная — повода, крепеж, шаблон и инструкция.\r\nPS. Кто хочет брать эту акустику- низов от нее не ждите!!! Просто многие пишут ерунду в отзывах мол динамики фуфло- басов нет. Это &quot;честные&quot; среднечастотники с твитером! Хотете хорошие басы- ставьте саб в купе с этими динамиками+ еще отдельно твитеры на стойки, и тогда будет эффект.\r\nОбязательно ставьте на них усилитель! от магнитолы они не прокачиваются!!!', '', '', 5, 1, '2016-06-01 00:45:51', '2016-06-01 00:47:04'),
	(11, 425, 0, 'Василий Петрович', 'Акустика так себе. Но за свои деньги потянет.', '', '', 4, 1, '2016-06-01 00:46:43', '2016-06-01 00:46:57');

UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'tax_status';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_product_count';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/cart.png' WHERE `key` = 'config_icon';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/logo.svg' WHERE `key` = 'config_logo';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_stock_display';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_tax';
UPDATE `oc_setting` SET `value` = '+7 (495) 222-33-44' WHERE `key` = 'config_telephone';
UPDATE `oc_setting` SET `value` = 'mail@auto.oc-mod.ru' WHERE `key` = 'config_email';
UPDATE `oc_setting` SET `value` = 'г. Москва, ул. Поварская, 15' WHERE `key` = 'config_address';
UPDATE `oc_setting` SET `value` = 'Интернет-магазин автотоваров' WHERE `key` = 'config_name';
UPDATE `oc_setting` SET `value` = 'Интернет-магазин автотоваров' WHERE `key` = 'config_meta_title';
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
	('', 'revblog_category_id=5', 'staty'),
	('', 'account/simpleregister', 'simpleregister'),
	('', 'checkout/simplecheckout', 'simplecheckout'),
	('', 'product_id=301', 'koaksialnaya-akustika-dls-m-136-mk2'),
	('', 'product_id=300', 'koaksialnaya-akustika-dls-m-1369'),
	('', 'product_id=299', 'koaksialnaya-akustika-dls-m-135-mk2'),
	('', 'product_id=298', 'koaksialnaya-akustika-dls-m-1269'),
	('', 'product_id=296', 'koaksialnaya-akustika-dls-m-125'),
	('', 'product_id=297', 'koaksialnaya-akustika-dls-m-126'),
	('', 'product_id=295', 'koaksialnaya-akustika-dls-962'),
	('', 'product_id=294', 'koaksialnaya-akustika-dls-426'),
	('', 'product_id=293', 'koaksialnaya-akustika-dls-425'),
	('', 'product_id=292', 'koaksialnaya-akustika-dls-226'),
	('', 'product_id=291', 'koaksialnaya-akustika-dls-225'),
	('', 'product_id=95', 'koaksialnaya-akustika-cadence-cs-369'),
	('', 'product_id=94', 'koaksialnaya-akustika-cadence-cs-365'),
	('', 'product_id=93', 'koaksialnaya-akustika-cadence-cs-357'),
	('', 'product_id=92', 'koaksialnaya-akustika-cadence-cs-246'),
	('', 'product_id=22', 'koaksialnaya-akustika-alpine-sxe-6925s'),
	('', 'product_id=23', 'koaksialnaya-akustika-alpine-spg-13c2'),
	('', 'category_id=11', 'avtozvuk'),
	('', 'category_id=33', 'avtosvet'),
	('', 'category_id=77', 'avtoelektronika'),
	('', 'category_id=44', 'aksessuary'),
	('', 'category_id=22', 'ohrannye-sistemy'),
	('', 'category_id=119', 'montazhnye-prinadlezhnosti'),
	('', 'category_id=552', 'tonirovochnaya-plenka'),
	('', 'category_id=55444', 'shumoizolyaciya'),
	('', 'category_id=9993', 'rashodnye-materialy'),
	('', 'category_id=12095', 'instrumenty'),
	('', 'category_id=112', 'avtomagnitoly'),
	('', 'category_id=111', 'akustika'),
	('', 'category_id=116', 'fm-modulyatory'),
	('', 'category_id=114', 'usiliteli'),
	('', 'category_id=113', 'sabvufery'),
	('', 'category_id=128', 'komplektuyushie'),
	('', 'category_id=221', 'avtosignalizacii'),
	('', 'category_id=222', 'breloki-dlya-signalizacij'),
	('', 'category_id=230', 'chehly-dlya-brelokov'),
	('', 'category_id=22002', 'predpuskovye-podogrevateli'),
	('', 'category_id=223', 'immobilajzery'),
	('', 'category_id=22544', 'protivougonnye-zamki'),
	('', 'category_id=2454', 'komponenty'),
	('', 'category_id=337', 'ksenonovye-lampy'),
	('', 'category_id=341', 'biksenonovye-lampy'),
	('', 'category_id=331', 'galogenovye-lampy'),
	('', 'category_id=332', 'diodnye-lampochki'),
	('', 'category_id=343', 'dnevnye-hodovye-ogni'),
	('', 'category_id=3371', 'komplekty-ksenona'),
	('', 'category_id=338', 'linzy'),
	('', 'category_id=3355', 'komplektuyushie-1'),
	('', 'category_id=1201', 'pulty-upravleniya'),
	('', 'category_id=452', 'alkotestery'),
	('', 'category_id=11922', 'karty-pamyati'),
	('', 'category_id=442', 'diktofony-mp3-pleery'),
	('', 'category_id=443', 'racii'),
	('', 'category_id=124', 'portativnye-dvd-pleery'),
	('', 'category_id=12094', 'naushniki'),
	('', 'category_id=22677', 'cd-diski'),
	('', 'category_id=4445444', 'ramki-dlya-nomerov'),
	('', 'category_id=22566', 'podsvetka'),
	('', 'category_id=11927', 'razvetviteli-v-prikurivatel'),
	('', 'category_id=450', 'avtomobilnye-kompressory'),
	('', 'category_id=451', 'avtoholodilniki'),
	('', 'category_id=22577', 'zaryadnye-ustrojstva'),
	('', 'category_id=22599', 'shetki-stekloochistitelej'),
	('', 'category_id=22655', 'chehly-opletki-kovriki'),
	('', 'category_id=22644', 'avtoodeyala'),
	('', 'category_id=22688', 'termokejsy-nagrevateli-akb'),
	('', 'category_id=447', 'videoregistratory'),
	('', 'category_id=441', 'gps-navigatory'),
	('', 'category_id=444', 'radar-detektory'),
	('', 'category_id=122', 'televizory-monitory'),
	('', 'category_id=448', 'parkovochnye-radary'),
	('', 'category_id=446', 'videokamery'),
	('', 'category_id=1206', 'navigacionnye-bloki'),
	('', 'category_id=121', 'tv-tyunery'),
	('', 'category_id=117', 'chejndzhery'),
	('', 'category_id=128088', 'dvd-pleery'),
	('', 'category_id=9992', 'podogrevy-sidenij'),
	('', 'category_id=44001', 'preobrazovateli-napryazheniya'),
	('', 'category_id=11914', 'adaptery-i-interfejsy'),
	('', 'category_id=22633', 'bortovye-kompyutery'),
	('', 'category_id=22622', 'datchiki-davleniya-v-shinah'),
	('', 'category_id=123', 'antenny'),
	('', 'category_id=1111', 'koaksialnaya-akustika'),
	('', 'category_id=1112', 'komponentnaya-akustika'),
	('', 'category_id=1113', 'komponenty-akusticheskoj-sistemy'),
	('', 'category_id=11133', 'korpusnye-akusticheskie-sistemy'),
	('', 'category_id=111116', 'morskaya-akustika'),
	('', 'category_id=1121', 'cdmp3-resivery'),
	('', 'category_id=1122', 'dvd-resivery'),
	('', 'category_id=1123', 'bezdiskovye-resivery'),
	('', 'category_id=1127', 'multimedijnye-sistemy'),
	('', 'category_id=1124', 'shtatnye-sistemy'),
	('', 'category_id=1131', 'aktivnye-sabvufery'),
	('', 'category_id=1133', 'passivnye-sabvufery'),
	('', 'category_id=1132', 'korpusnye-sabvufery'),
	('', 'category_id=119001', 'kabeli-i-provoda'),
	('', 'category_id=119002', 'klemmy-konnektory'),
	('', 'category_id=125', 'perehodnye-ramki-dlya-gu'),
	('', 'category_id=119003', 'pitanie-i-zashita'),
	('', 'category_id=1205', 'karpet-vinil-tkan'),
	('', 'category_id=12091', 'akusticheskie-podiumy'),
	('', 'category_id=1209', 'reshetki-setki-dlya-dinamikov'),
	('', 'category_id=11924', 'korpusa-dlya-sabvuferov'),
	('', 'category_id=11900210', 'chashki-dlya-sabvuferov'),
	('', 'category_id=1203', 'fazoinvertory-dlya-sabvuferov'),
	('', 'category_id=11918', 'ventilyatory-ohlazhdeniya'),
	('', 'category_id=11923', 'raznoe-dlya-antenn'),
	('', 'category_id=115', 'processory'),
	('', 'category_id=118', 'kondensatory'),
	('', 'category_id=126', 'krossovery'),
	('', 'category_id=22611', 'ekvalajzery'),
	('', 'category_id=11913', 'shumopodaviteli'),
	('', 'category_id=11921', 'indikatory'),
	('', 'category_id=1201120', 'kalibratory'),
	('', 'category_id=11919', 'preobrazovateli-signala'),
	('', 'category_id=12093', 'fm-i-bluetooth-adaptery'),
	('', 'category_id=22588', 'zashitnaya-plenka'),
	('', 'category_id=11131', 'tvitery'),
	('', 'category_id=11132', 'nchsch-dinamiki'),
	('', 'category_id=226', 'moduli-gps-gsm'),
	('', 'category_id=229', 'moduli-can-shiny'),
	('', 'category_id=228', 'moduli-progreva'),
	('', 'category_id=224', 'moduli-obhoda-immobilajzera'),
	('', 'category_id=22543', 'antennye-moduli'),
	('', 'category_id=2255225', 'moduli-upravleniya-zamkami'),
	('', 'category_id=225', 'moduli-upravleniya-stekl'),
	('', 'category_id=222888', 'turbotajmery'),
	('', 'category_id=227', 'datchiki'),
	('', 'category_id=222777', 'sireny'),
	('', 'category_id=222666', 'privoda'),
	('', 'category_id=222222', 'konceviki'),
	('', 'category_id=222333', 'rele-1'),
	('', 'category_id=339', 'bloki-rozzhiga'),
	('', 'category_id=336', 'perehodniki-dlya-ksenona'),
	('', 'category_id=340', 'provodka-dlya-ksenona'),
	('', 'category_id=342', 'ostalnoe'),
	('', 'category_id=11911', 'akustichiskie-kabeli'),
	('', 'category_id=11912', 'silovye-kabeli'),
	('', 'category_id=1191', 'soedinitelnye-kabeli'),
	('', 'category_id=119133', 'montazhnye-kabeli'),
	('', 'category_id=120244', 'razvetviteli'),
	('', 'category_id=1202', 'perehodniki'),
	('', 'category_id=1192', 'komlekty-kabelej'),
	('', 'category_id=1199', 'soedinitelnye-klemmy'),
	('', 'category_id=1193', 'akkumulyatornye-klemmy'),
	('', 'category_id=1198', 'rca-konnektory'),
	('', 'category_id=11925', 'iso-konnektory'),
	('', 'category_id=1195', 'predohraniteli'),
	('', 'category_id=1197', 'bloki-derzhateli-predohranitelej'),
	('', 'category_id=1196', 'avtomaty-preryvateli-pitaniya'),
	('', 'category_id=1194', 'rele'),
	('', 'product_id=21', 'koaksialnaya-akustika-alpine-sxe-1725s'),
	('', 'product_id=20', 'koaksialnaya-akustika-alpine-sxe-1325s'),
	('', 'product_id=19', 'koaksialnaya-akustika-alpine-spg-69c2'),
	('', 'product_id=18', 'koaksialnaya-akustika-alpine-spg-17c2'),
	('', 'product_id=2', 'koaksialnaya-akustika-adagio-ps-104'),
	('', 'product_id=1', 'koaksialnaya-akustika-adagio-al-60sx'),
	('', 'product_id=425', 'kicx-gfq-165'),
	('', 'manufacturer_id=53', 'kicx'),
	('', 'manufacturer_id=32', 'adagio'),
	('', 'manufacturer_id=33', 'alpine'),
	('', 'manufacturer_id=39', 'dls');

DELETE FROM `oc_setting` WHERE `code` LIKE "rev%" AND `key` LIKE "rev%" AND `key` NOT LIKE "revtheme_license%" AND `key` NOT LIKE "revthemel_license";

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_filter', 'revtheme_filter', '{"status":"0","1":{"title":""},"2":{"title":""},"razdelitel":";","filter_price":"1","filter_price_setka":"1","filter_instock":"0","filter_instock_vid":"1","filter_gr":"false","filter_gr_vid":"0","filter_subcategories":"false","filter_subcategories_vid":"1","filter_manufacturer":"false","filter_manufacturer_vid":"1","filter_sposob":"1","filter_count_products":"1","filter_setka":"0","filter_categories":["77"],"filter_option":{"15":{"option_type":"false","option_sort":"0","option_vid":"0"},"13":{"option_type":"false","option_sort":"0","option_vid":"0"}},"filter_attribute":{"28":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"23":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"15":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"29":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"30":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"24":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"25":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"31":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"26":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"21":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"32":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"27":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"}}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_geo_set', '{"status":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_socv', '{"status_vk":"0","width_vk":"260","height_vk":"280","id_vk":"20003922","status_fb":"0","width_fb":"","height_fb":"","id_fb":"","status_ok":"0","width_ok":"","height_ok":"","id_ok":"","status_insta":"0","right_insta":"0","width_insta":"260","id_insta":"instagram"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_storereview', '{"status":"1","1":{"title":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b","button_all_text":"\\u0427\\u0438\\u0442\\u0430\\u0442\\u044c \\u0432\\u0441\\u0435 \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b"},"2":{"title":"","button_all_text":""},"icontype":"1","icon":"fa fa-comments-o","image":"no_image.png","button_all":"1","limit":"6","order":"0","limit_text":"200"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_viewed_products', '{"status":"0","1":{"zagolovok":""},"2":{"zagolovok":""},"icontype":"1","icon":"fa none","image":"no_image.png","limit":"8"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_user_set', '{"styles":"#top2 #logo {margin-top: 0 !important;}\r\n#blog_mod .blog-list .image {margin: 0 10px 10px 0; float: left; width: 100px;}\r\n#blog_mod .blog-list .opisb h4 {height: initial !important;}\r\n.search {border: 2px solid #ededed;}","scripts":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_seo', '{"seogen_rewrite":"1","product_url":"{product_name}","product_meta_title":{"1":"{product_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":"{product_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435."},"product_meta_h1":{"1":"{product_name}","2":"{product_name}"},"product_meta_description":{"1":"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c {product_name} \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435. \\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b \\u0438 \\u0446\\u0435\\u043d\\u0430 {product_name}.","2":"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c {product_name} \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435. \\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b \\u0438 \\u0446\\u0435\\u043d\\u0430 {product_name}."},"product_meta_keyword":{"1":"\\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d, {product_manufacturer}, {product_name}, {product_model}, {product_sku}.","2":"\\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d, {product_manufacturer}, {product_name}, {product_model}, {product_sku}."},"category_url":"{category_name}","category_meta_title":{"1":"{category_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":"{category_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435."},"category_meta_h1":{"1":"{category_name}","2":"{category_name}"},"category_meta_description":{"1":"{category_name} - \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0446\\u0435\\u043d\\u044b.","2":"{category_name} - \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0446\\u0435\\u043d\\u044b."},"category_meta_keyword":{"1":"{category_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":"{category_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d."},"manufacturer_url":"{manufacturer_name}","manufacturer_meta_title":{"1":"{manufacturer_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.","2":"{manufacturer_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435."},"manufacturer_meta_h1":{"1":"{manufacturer_name}","2":"{manufacturer_name}"},"manufacturer_meta_description":{"1":"\\u0412\\u044b\\u0431\\u043e\\u0440 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438\\u0437 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430 {manufacturer_name}.","2":"\\u0412\\u044b\\u0431\\u043e\\u0440 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438\\u0437 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430 {manufacturer_name}."},"manufacturer_meta_keyword":{"1":"{manufacturer_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":"{manufacturer_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d."},"information_url":"{information_name}","information_meta_title":{"1":"{information_name}","2":"{information_name}"},"information_meta_h1":{"1":"{information_name}","2":"{information_name}"},"information_meta_description":{"1":"{information_name}","2":"{information_name}"},"information_meta_keyword":{"1":"{information_name}","2":"{information_name}"},"revblog_category_url":"{revblog_category_name}","revblog_category_meta_title":{"1":"{revblog_category_name}","2":"{revblog_category_name}"},"revblog_category_meta_description":{"1":"{revblog_category_name}","2":"{revblog_category_name}"},"revblog_category_meta_keyword":{"1":"{revblog_category_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":"{revblog_category_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d."},"revblog_url":"{revblog_name}","revblog_meta_title":{"1":"{revblog_name}","2":"{revblog_name}"},"revblog_meta_description":{"1":"{revblog_category_name} - {revblog_name}.","2":"{revblog_category_name} - {revblog_name}."},"revblog_meta_keyword":{"1":"{revblog_category_name}, {revblog_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.","2":"{revblog_category_name}, {revblog_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d."}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_status', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_sort_order', '2', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_catattribs', 'revtheme_catattribs_settings', '{"attributes":{"15":{"show":"0","replace":""},"21":{"show":"0","replace":""},"28":{"show":"0","replace":""},"29":{"show":"0","replace":""},"30":{"show":"0","replace":""},"31":{"show":"0","replace":""},"32":{"show":"0","replace":""},"23":{"show":"0","replace":""},"24":{"show":"1","replace":""},"25":{"show":"0","replace":""},"26":{"show":"0","replace":""},"27":{"show":"1","replace":""}}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_4', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_5', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_blog', '{"status":"1","1":{"title":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438"},"2":{"title":""},"blog_category_id":"0","news_limit":"5","desc_limit":"200","count_r":"1","icontype":"1","icon":"fa fa-newspaper-o","image":"no_image.png","image_status":"1","image_width":"228","image_height":"228","b_color":"FAFAFA"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_aboutstore_home', '{"status":"1","1":{"title":"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0430\\u0432\\u0442\\u043e-\\u0442\\u043e\\u0432\\u0440\\u043e\\u0432","description":"&lt;p style=&quot;color: rgb(102, 102, 102);&quot;&gt;&lt;span style=&quot;color: rgb(71, 59, 57); font-family: Roboto; font-size: 14px;&quot;&gt;\\u0414\\u043e\\u0431\\u0440\\u043e \\u043f\\u043e\\u0436\\u0430\\u043b\\u043e\\u0432\\u0430\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0430\\u0432\\u0442\\u043e-\\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432! \\u0417\\u0434\\u0435\\u0441\\u044c \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0437\\u0430\\u043f\\u0447\\u0430\\u0441\\u0442\\u0438, \\u043c\\u043e\\u0442\\u043e\\u0440\\u043d\\u043e\\u0435 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0435 \\u043c\\u0430\\u0441\\u043b\\u0430, \\u0430\\u0432\\u0442\\u043e\\u0445\\u0438\\u043c\\u0438\\u044e, \\u0444\\u0438\\u043b\\u044c\\u0442\\u0440\\u044b \\u0438 \\u0430\\u0432\\u0442\\u043e\\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u043e\\u0442 \\u043e\\u0444\\u0438\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0434\\u0438\\u0441\\u0442\\u0440\\u0438\\u0431\\u044c\\u044e\\u0442\\u043e\\u0440\\u0430. \\u0417\\u0430 \\u0441\\u0447\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u043d\\u0430\\u043f\\u0440\\u044f\\u043c\\u0443\\u044e \\u0441 \\u0437\\u0430\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438-\\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c\\u0438 \\u043d\\u0430\\u0448 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442 \\u043f\\u043e\\u0434\\u043b\\u0438\\u043d\\u043d\\u043e\\u0435 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 \\u043f\\u043e \\u0434\\u043e\\u0441\\u0442\\u0443\\u043f\\u043d\\u043e\\u0439 \\u0446\\u0435\\u043d\\u0435.&lt;\\/span&gt;&lt;\\/p&gt;&lt;p style=&quot;color: rgb(102, 102, 102);&quot;&gt;&lt;span style=&quot;color: rgb(71, 59, 57); font-family: Roboto; font-size: 14px;&quot;&gt;\\u0420\\u0430\\u0432\\u043d\\u044b\\u043c \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u043c \\u043d\\u043e\\u0432\\u0430\\u044f \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u0439 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0442\\u0435\\u043f\\u0435\\u043d\\u0438 \\u043e\\u0431\\u0443\\u0441\\u043b\\u0430\\u0432\\u043b\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u043d\\u043e\\u0432\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439. \\u0418\\u0434\\u0435\\u0439\\u043d\\u044b\\u0435 \\u0441\\u043e\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044f \\u0432\\u044b\\u0441\\u0448\\u0435\\u0433\\u043e \\u043f\\u043e\\u0440\\u044f\\u0434\\u043a\\u0430, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u043d\\u0430\\u043c\\u0435\\u0447\\u0435\\u043d\\u043d\\u044b\\u0445 \\u043f\\u043b\\u0430\\u043d\\u043e\\u0432\\u044b\\u0445 \\u0437\\u0430\\u0434\\u0430\\u043d\\u0438\\u0439 \\u0442\\u0440\\u0435\\u0431\\u0443\\u044e\\u0442 \\u043e\\u043f\\u0440\\u0435\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u044f \\u0438 \\u0443\\u0442\\u043e\\u0447\\u043d\\u0435\\u043d\\u0438\\u044f \\u0444\\u043e\\u0440\\u043c \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u0438\\u044f. \\u0417\\u043d\\u0430\\u0447\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u044d\\u0442\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0431\\u043b\\u0435\\u043c \\u043d\\u0430\\u0441\\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043e\\u0447\\u0435\\u0432\\u0438\\u0434\\u043d\\u0430, \\u0447\\u0442\\u043e \\u043d\\u043e\\u0432\\u0430\\u044f \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u0439 \\u0434\\u0435\\u044f\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0441\\u043f\\u043e\\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043f\\u043e\\u0434\\u0433\\u043e\\u0442\\u043e\\u0432\\u043a\\u0438 \\u0438 \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0438\\u0439 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u0439 \\u0430\\u043a\\u0442\\u0438\\u0432\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438. \\u0422\\u043e\\u0432\\u0430\\u0440\\u0438\\u0449\\u0438! \\u043a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u044f \\u0441 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u043c \\u0430\\u043a\\u0442\\u0438\\u0432\\u043e\\u043c \\u0438\\u0433\\u0440\\u0430\\u0435\\u0442 \\u0432\\u0430\\u0436\\u043d\\u0443\\u044e \\u0440\\u043e\\u043b\\u044c \\u0432 \\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0438 \\u043d\\u043e\\u0432\\u044b\\u0445 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439.&lt;\\/span&gt;&lt;\\/p&gt;"},"2":{"title":"","description":""},"icontype":"1","icon":"fa fa-pencil-square-o","image":"no_image.png"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_3', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_categorywall', '{"status":"1","mobi_status":"0","1":{"title":""},"2":{"title":""},"icontype":"1","icon":"fa fa-folder-o","image":"no_image.png","sort_order":"1","categories":"1","group_manufs":"0","group_manufs_simbol":"0","group_manufs_link":{"1":"","2":""},"group_manufs_link_href":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_cart', '{"icontype":"1","icon":"fa fa-shopping-basket","image":"no_image.png","type":"standart","cart_vspl":"1","cart_size":"standart","cart_carturl":"1","cart_quick":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_all', '{"category_desc":"0","podcategory_status":"0","podcategory_imgs":"1","podcategory_cols":"6","manuf_desc":"1","product_in_cart":"0","ch_quantity":"1","rev_srav_prod":"1","rev_wish_prod":"1","rev_wish_srav_prod":"0","popup_view":"1","img_slider":"0","chislo_ryad":"1","vid_grid":"1","vid_list":"1","vid_price":"1","vid_default":"vid_grid","pagination":"standart"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_spec', '{"status":"1","1":{"title":"\\u0410\\u043a\\u0446\\u0438\\u0438"},"2":{"title":""},"url_all":"0","icontype":"1","icon":"fa fa-bell-o","image":"no_image.png","limit":"12","not_view_null":"0","slider":"1","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_best', '{"status":"1","1":{"title":"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436"},"2":{"title":""},"url_all":"0","icontype":"1","icon":"fa fa-star-o","image":"no_image.png","limit":"12","not_view_null":"0","slider":"1","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_tabs', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_last', '{"status":"1","1":{"title":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438"},"2":{"title":""},"url_all":"0","icontype":"1","icon":"fa fa-calendar-o","image":"no_image.png","limit":"12","not_view_null":"0","slider":"1","autoscroll":"","image_width":"228","image_height":"228"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_categorywall_categories', '["116","112","111","128","113","114"]', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_categorywall_manufacturers', '["37","33","32","39","53"]', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_all', '{"1":{"h1_home":""},"2":{"h1_home":""},"pr_opisanie":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_home_slideshow', '{"status":"1","banner_id":"7","allwide":"0","mobile":"1","slides":"1","autoscroll":"9","width":"1140","height":"380","b_color":"FAFAFA"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_blocks_home', '{"status":"1","effect":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_blocks_home_item', '{"10":{"icontype":"1","icon":"fa fa-send-o","image":"no_image.png","title":{"1":"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u043f\\u043e \\u043c\\u0438\\u0440\\u0443","2":""},"description":{"1":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u043c \\u0442\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434 \\u043c\\u0438\\u0440\\u0430","2":""},"link":{"1":"delivery","2":""},"checkbox":"1","sort":"1"},"11":{"icontype":"1","icon":"fa fa-refresh","image":"no_image.png","title":{"1":"\\u0412\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430","2":""},"description":{"1":"\\u0412\\u0435\\u0440\\u043d\\u0435\\u043c \\u0432\\u0430\\u043c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0432 \\u0441\\u0440\\u043e\\u043a \\u0434\\u043e 30 \\u0434\\u043d\\u0435\\u0439","2":""},"link":{"1":"","2":""},"sort":"2"},"12":{"icontype":"1","icon":"fa fa-registered","image":"no_image.png","title":{"1":"100% \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f","2":""},"description":{"1":"\\u0412\\u0441\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u0446\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b","2":""},"link":{"1":"waranty","2":""},"sort":"3"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revblog', 'revblog_settings', '{"category_image_status":"1","category_image_width":"80","category_image_height":"80","list_desc_limit":"400","list_image_width":"80","list_image_height":"80","main_image_status":"0","form_image_width":"400","form_image_height":"400","images_image_width":"213","images_image_height":"213","share_status":"1","not_view_null":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_stiker', '{"status":"1","new_status":"1","best_status":"1","spec_status":"1","sklad_status":"0","stock_status":"1","stiker_netu_stock":"0","upc":"1","ean":"0","jan":"0","isbn":"0","mpn":"0","last_color":"494949","last_color_text":"FFFFFF","best_color":"2D77C8","best_color_text":"FFFFFF","spec_color":"E47364","spec_color_text":"FFFFFF","netu_color":"EEEEEE","netu_color_text":"333333","user_color":"EEEEEE","user_color_text":"333333"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_popuporder', '{"status":"1","quick_btn":"0","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1","order_status":"2"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_compare', '{"cat_sort":"1","main_cat":"0","compare_price":"1","compare_model":"1","compare_sku":"1","compare_manuf":"1","compare_stock":"1","compare_rate":"1","compare_srtdesc":"1","compare_weight":"1","compare_razmer":"1","compare_atrib":"1","compare_atribgr":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_mods', '{"viewed_products":"0","1":{"viewed_products_zagolovok":""},"2":{"viewed_products_zagolovok":""},"viewed_products_limit":"8"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_cat_attributes', '{"description_on":"1","description_in_grid":"1","options_in_cat":"1","options_in_grid":"0","short_desc":"0","zamena_description":"1","manufacturer":"1","model":"0","sku":"0","stock":"0","length":"0","weight":"0","attributes_status":"1","show_name":"1","show_tags":"1","count":"5","separator":"&lt;br&gt;"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_all', '{"popup_purchase":"1","zakaz":"0","zakaz_price_null":"0","recalc_price":"1","recalc_price_animate":"1","q_zavisimost":"1","opt_price":"1","countdown":"1","recpr_rightc":"0","answers":"0","blogs":"1","share_status":"1","short_desc":"0","pr_tabs":"1","desc_cols":"0","spec_cols":"0","atributs":"0","atributs_group_name":"1","atributs_ssilka_all":"1","manufacturer_status":"1","model_status":"1","sku_status":"1","bonusbals_status":"0","sklad_status":"1","ostatok_status":"1","weight_status":"1","razmers":"1","options_two_in_line":"0","options_ravno_plus":"0","option_f_auto":"0","options_buy":"0","options_buy_optionname":"0","options_buy_optionname_one":"0","options_buy_foto":"0","options_buy_model":"1","options_buy_quantity":"1","options_buy_click":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_predzakaz', '{"status":"0","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1","order_status":"2"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_all_attribute_group', '["4"]', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_images', '{"zoom":"0","slider":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_product_mods', '{"viewed_products":"1","1":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438","text_block_zagolovok":""},"2":{"viewed_products_zagolovok":"","text_block_zagolovok":""},"viewed_products_limit":"8","text_block":"1","text_block_cols":"col-sm-6","text_block_cols_2":"col-sm-1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_all', '{"in_top":"1","popup_phone":"1","f_map":"0","copy":"1","1":{"copy_text":""},"2":{"copy_text":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_custom_footer', '{"status":"0","dops_pc_status":"1","cf_1_status":"1","cf_1_width":"25","cf_2_status":"1","cf_2_width":"25","cf_3_status":"1","cf_3_width":"50","cf_4_status":"0","cf_4_width":"20","cf_5_status":"0","cf_5_width":"20","1":{"cf_1_description":"","cf_2_description":"","cf_3_description":"","cf_4_description":"","cf_5_description":""},"2":{"cf_1_description":"","cf_2_description":"","cf_3_description":"","cf_4_description":"","cf_5_description":""}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_2', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_3', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_4', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_cf_5', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_subscribe', '{"status":"1","1":{"title":"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0430 \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","text":"\\u0411\\u0443\\u0434\\u044c\\u0442\\u0435 \\u0432 \\u043a\\u0443\\u0440\\u0441\\u0435 \\u043d\\u043e\\u0432\\u044b\\u0445 \\u0430\\u043a\\u0446\\u0438\\u0439 \\u0438 \\u0441\\u043f\\u0435\\u0446\\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439!","text_uspeh":"\\u0412\\u044b \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043b\\u0438\\u0441\\u044c \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443 \\u0430\\u043a\\u0446\\u0438\\u0439."},"2":{"title":"","text":"","text_uspeh":""}}', '1');
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
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_category_height', '80', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_image_category_width', '80', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_product_description_length', '100', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_product_limit', '12', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_status', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revolution', 'revolution_directory', 'revolution', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_last', '{"last_products":"","limit":"20","filter_day":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_best', '{"best_products":"","limit":"20","filter_buy":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_catalog_sorts_category', '{"group_default":"0","sort_default":"p.sort_order","sort_default_adesc":"ASC","order_ASC":"1","1":{"order_ASC_text":"","name_ASC_text":"\\u041f\\u043e \\u043d\\u0430\\u0438\\u043c\\u0435\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044e","name_DESC_text":"","price_ASC_text":"\\u0426\\u0435\\u043d\\u0430 \\u043f\\u043e \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u0430\\u043d\\u0438\\u044e","price_DESC_text":"\\u0426\\u0435\\u043d\\u0430 \\u043f\\u043e \\u0443\\u0431\\u044b\\u0432\\u0430\\u043d\\u0438\\u044e","rating_DESC_text":"\\u041f\\u043e \\u0420\\u0435\\u0439\\u0442\\u0438\\u043d\\u0433\\u0443","rating_ASC_text":"","model_ASC_text":"","model_DESC_text":"","date_added_ASC_text":"","date_added_DESC_text":"\\u041f\\u043e \\u0434\\u0430\\u0442\\u0435 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f"},"2":{"order_ASC_text":"","name_ASC_text":"","name_DESC_text":"","price_ASC_text":"","price_DESC_text":"","rating_DESC_text":"","rating_ASC_text":"","model_ASC_text":"","model_DESC_text":"","date_added_ASC_text":"","date_added_DESC_text":""},"name_ASC":"1","name_DESC":"0","price_ASC":"1","price_DESC":"1","rating_DESC":"1","rating_ASC":"0","model_ASC":"0","model_DESC":"0","date_added_ASC":"0","date_added_DESC":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_all_settings', '{"color_all_document":"FFFFFF","color_href":"2A6FBA","color_href_hover":"DD4B39","color_cart":"E47364","color_cart_hover":"DD4B39","color_top3":"333333","color_footer":"232323","color_amazon":"2A6FBA","color_top3_cart":"494949","all_document_width":"1","all_document_h_f_width":"0","all_document_margin":"1","all_fon_image":"no_image.png","all_fon_image_css_1":"1","all_content_width":"0","color_selecta":"EAEAEA","preloader":"catalog\\/revolution\\/preloaders\\/revpreloader2.svg","cat_compact":"0","cat_opis_opt":"0","cache_on":"1","error404":"1","n_progres":"1","razmiv_cont":"1","zatemn_cont":"1","opacity_cont":"0","pol_konf":"0","pol_konf_tvivod":"0","revcheckout_status":"0","revcheckout_login":"0","revcheckout_register":"0","revcheckout_customer_group":"0","revcheckout_name":"1","revcheckout_family":"0","revcheckout_telephone":"2","revcheckout_telephone_mask":"","revcheckout_mail":"0","revcheckout_comment":"0","revcheckout_reg_adres":"0","revcheckout_country":"0","revcheckout_region":"0","revcheckout_index":"0","revcheckout_city":"0","revcheckout_adres":"1","revcheckout_foto":"1","revcheckout_model":"1","revcheckout_sku":"0","revcheckout_kolvo":"1","revcheckout_vsego":"1","1":{"revcheckout_description":"","revregister_description":"","revaccount_description":"&lt;p&gt;\\u0422\\u0443\\u0442 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043d\\u0430\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c \\u043b\\u044e\\u0431\\u0443\\u044e \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044e \\u0434\\u043b\\u044f \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432. \\u0421\\u043a\\u0438\\u0434\\u043a\\u0438, &lt;font color=&quot;#ff0000&quot;&gt;\\u0430\\u043a\\u0446\\u0438\\u0438&lt;\\/font&gt; \\u0438 \\u0442.\\u043f...&lt;\\/p&gt;","description":"&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Roboto; font-size: 14px;&quot;&gt;\\u0422\\u0443\\u0442 \\u043c\\u043e\\u0436\\u043d\\u043e \\u043d\\u0430\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043a\\u0441\\u0442 \\u0432 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0430\\u0445. \\u041f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0430 html.&lt;\\/span&gt;&lt;br&gt;&lt;\\/p&gt;","modal_header":"\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f","text_no":"&lt;b&gt;Notice&lt;\\/b&gt;: Undefined offset: 1 in &lt;b&gt;D:\\\\Server\\\\OpenServer\\\\domains\\\rev3.loc\\\\admin\\\\view\\\template\\\revolution\\\revtheme.tpl&lt;\\/b&gt; on line &lt;b&gt;5290&lt;\\/b&gt;","text_yes":"&lt;b&gt;Notice&lt;\\/b&gt;: Undefined offset: 1 in &lt;b&gt;D:\\\\Server\\\\OpenServer\\\\domains\\\rev3.loc\\\\admin\\\\view\\\template\\\revolution\\\revtheme.tpl&lt;\\/b&gt; on line &lt;b&gt;5301&lt;\\/b&gt;","modal_text":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"},"2":{"revcheckout_description":"","revregister_description":"","revaccount_description":"","description":"","modal_header":"","text_no":"","text_yes":"","modal_text":""},"revregister_status":"0","revregister_legends":"0","revregister_custom_fields":"0","revregister_customer_group":"0","revregister_name":"1","revregister_family":"0","revregister_telephone":"0","revregister_telephone_mask":"+7 (999) 9999999","revregister_mail":"2","revregister_newsletter":"0","revregister_country":"0","revregister_region":"0","revregister_index":"0","revregister_city":"0","revregister_adres":"0","revaccount_allurls":"1","revaccount_wishlist":"1","revaccount_orders":"1","revaccount_files":"0","revaccount_bonus":"0","revaccount_returns":"0","revaccount_pay_history":"0","revaccount_pay_regular":"0","m_conts":"0","dop_conts":"1","soc_conts":"1","soc_conts_url":"0","f_svazy":"1","yamap":"","otzivy_status":"1","modal_status":"0","modal_time":"0","modal_buttons":"0","microdata_status":"0","microdata_postcode":"","microdata_city":"","microdata_adress":"","microdata_phones":"","microdata_social":"","microdata_email":"","watermark_status_true":"1","watermark_status":"0","watermark_type":"text","watermark_text":"","watermark_image":"http:\\/\\/rev40.loc\\/image\\/cache\\/no_image-60x60.png","watermark_font_size":"10","watermark_color":"333333","watermark_position":"bottomleft","watermark_opacity":"80","watermark_angle":"0","watermark_offset":{"x":"21","y":"10"},"watermark_scaling":{"width":"800","height":"800"},"watermark_min":{"width":"228","height":"228"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_icon', '{"1":{"image":"catalog\\/revolution\\/payment\\/visa.png","href":"","sort":"1"},"2":{"image":"catalog\\/revolution\\/payment\\/master.png","href":"","sort":"2"},"3":{"image":"catalog\\/revolution\\/payment\\/maestro.png","href":"","sort":"3"},"4":{"image":"catalog\\/revolution\\/payment\\/sberbank.png","href":"","sort":"4"},"5":{"image":"catalog\\/revolution\\/payment\\/alfa.png","href":"","sort":"5"},"6":{"image":"catalog\\/revolution\\/payment\\/yandex.png","href":"","sort":"6"},"7":{"image":"catalog\\/revolution\\/payment\\/privat.png","href":"","sort":"9"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_tax_class_id', '0', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revship2', 'revship2_cost', '300', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_link', '{"1":{"link":{"1":"contact-us","2":""},"title":{"1":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","2":""},"sort":"1"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_footer_soc', '{"1":{"image":"fa fa-vk","link":{"1":"https:\\/\\/vk.com","2":""},"title":{"1":"\\u041c\\u044b \\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435","2":""},"sort":"1"},"2":{"image":"fa fa-facebook","link":{"1":"https:\\/\\/ru-ru.facebook.com","2":""},"title":{"1":"\\u041c\\u044b \\u043d\\u0430 \\u0444\\u0435\\u0439\\u0441\\u0431\\u0443\\u043a\\u0435","2":""},"sort":"2"},"3":{"image":"fa fa-odnoklassniki","link":{"1":"https:\\/\\/ok.ru","2":""},"title":{"1":"\\u041c\\u044b \\u0432 \\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u043a\\u0430\\u0445","2":""},"sort":"3"},"4":{"image":"fa fa-twitter","link":{"1":"https:\\/\\/twitter.com","2":""},"title":{"1":"\\u041c\\u044b \\u0432 \\u0442\\u0432\\u0438\\u0442\\u0435\\u0440\\u0435","2":""},"sort":"4"},"5":{"image":"fa fa-youtube","link":{"1":"https:\\/\\/www.youtube.com","2":""},"title":{"1":"\\u041d\\u0430\\u0448 \\u043a\\u0430\\u043d\\u0430\\u043b \\u043d\\u0430 \\u044e\\u0442\\u0443\\u0431\\u0435","2":""},"sort":"5"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme_revcheckoutshippay', 'revtheme_revcheckoutshippay', '{"pickup":["adres_on","cod"],"revship2":["adres_on","cod"]}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_slider_1', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"no_image.png","count":"12","not_view_null":"0","slider":"1","image_width":"228","image_height":"228","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_search', '{"ch_text":"0","1":{"doptext":""},"2":{"doptext":""},"in_category":"1","ajax_search_status":"1","ajax_search_limit":"10","ajax_search_model":"1","ajax_search_manufacturer":"0","ajax_search_tag":"1","ajax_search_sku":"1","ajax_search_upc":"0","ajax_search_mpn":"1","ajax_search_isbn":"0","ajax_search_jan":"0","ajax_search_ean":"0","ajax_search_description":"0"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_popupphone', '{"status":"1","under_phone":"0","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_dop_contacts_status', '1', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_dop_contact', '{"1":{"icontype":"1","icon":"fa fa-map-marker","image":"no_image.png","number":{"1":"\\u0433. \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0443\\u043b. \\u041f\\u043e\\u0432\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f, 15","2":""},"href":{"1":"contact-us","2":""},"sort":"1"},"2":{"icontype":"1","icon":"fa fa-phone","image":"no_image.png","number":{"1":"8-923-222-66-88","2":""},"href":{"1":"","2":""},"sort":"2"},"3":{"icontype":"1","icon":"fa fa-envelope","image":"no_image.png","number":{"1":"zakaz@auto.oc-mod.ru","2":""},"href":{"1":"","2":""},"sort":"3"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_link2', '{"1":{"title":{"1":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438","2":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438"},"link":{"1":"latest","2":"latest"},"icontype":"1","icon":"fa none","image":"no_image.png","sort":"1"},"2":{"title":{"1":"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436","2":"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436"},"link":{"1":"best","2":"best"},"icontype":"1","icon":"fa none","image":"no_image.png","sort":"2"},"3":{"title":{"1":"\\u0410\\u043a\\u0446\\u0438\\u0438","2":"\\u0410\\u043a\\u0446\\u0438\\u0438"},"link":{"1":"specials","2":"specials"},"icontype":"1","icon":"fa none","image":"no_image.png","sort":"3"},"4":{"title":{"1":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","2":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438"},"link":{"1":"news","2":"news"},"icontype":"1","icon":"fa none","image":"no_image.png","sort":"4"},"5":{"title":{"1":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b","2":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b"},"link":{"1":"otzivy","2":"otzivy"},"icontype":"1","icon":"fa none","image":"no_image.png","sort":"6"},"6":{"title":{"1":"\\u0421\\u0442\\u0430\\u0442\\u044c\\u0438","2":"\\u0421\\u0442\\u0430\\u0442\\u044c\\u0438"},"link":{"1":"staty","2":"staty"},"icontype":"1","icon":"fa none","image":"no_image.png","sort":"5"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_phone', '{"1":{"text":"\\u043f\\u043d - \\u0441\\u0431: \\u0441 9.00 \\u0434\\u043e 20.00","text2":"","cod":"8 (495)","number":"222-33-44","cod2":"","number2":"","doptext2":"","doptext":""},"2":{"text":"","text2":"","cod":"","number":"","cod2":"","number2":"","doptext2":"","doptext":""},"icontype":"0","icon":"fa fa-bars","image":"catalog\\/revolution\\/telefon_header.png"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_3', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu_2', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_link', '{"1":{"title":{"1":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","2":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b"},"link":{"1":"contact-us","2":"contact-us"},"sort":"1"}}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_standart_links', '{"rev_lang":"0","rev_curr":"0","rev_srav":"1","rev_wish":"1","rev_acc":"1","rev_acc_zagolovok":"kabinet","popup_login":"1"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_header_menu', '{"sticky":"1","image_in_ico":"0","tri_level":"1","manuf":"1","n_column":"1","manuf_icontype":"1","manuf_icon":"fa none","manuf_image":"no_image.png","image_in_ico_m":"0","type":"1","cats_status":"1","zadergka":"0","icontype":"1","icon":"fa fa-bars","image":"no_image.png","on_line_cat":"0","inhome":"1","up_menu_height":"1","ogranich":"0","ogranich_count":"5"}', '1');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_dop_menu', '[]', '0');
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES ('', '0', 'revtheme', 'revtheme_version', '4.0', '0');

TRUNCATE TABLE `oc_product_tab`;

INSERT INTO `oc_product_tab` (`product_tab_id`, `product_id`, `sort_order`, `status`) VALUES ('1', '300', '0', '1');
INSERT INTO `oc_product_tab` (`product_tab_id`, `product_id`, `sort_order`, `status`) VALUES ('2', '1', '0', '1');
INSERT INTO `oc_product_tab` (`product_tab_id`, `product_id`, `sort_order`, `status`) VALUES ('5', '425', '0', '1');

TRUNCATE TABLE `oc_product_tab_desc`;

INSERT INTO `oc_product_tab_desc` (`product_tab_id`, `heading`, `description`, `product_id`, `language_id`) VALUES ('1', 'Особенности', '&lt;p&gt;Остались только бракованные товары! Порван диффузор.&lt;/p&gt;', '300', '1');
INSERT INTO `oc_product_tab_desc` (`product_tab_id`, `heading`, `description`, `product_id`, `language_id`) VALUES ('2', 'Только для этого товара', '&lt;p&gt;При покупке этих колонок у нас в интернет-магазине, установка в сервисном центре на халяву!&lt;/p&gt;&lt;p&gt;Давай покупай.&lt;/p&gt;', '1', '1');
INSERT INTO `oc_product_tab_desc` (`product_tab_id`, `heading`, `description`, `product_id`, `language_id`) VALUES ('5', 'Дополнительная информация', '&lt;p&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Акция на акустику Kicx скоро закончится.&lt;/span&gt;&lt;/p&gt;', '425', '1');
INSERT INTO `oc_product_tab_desc` (`product_tab_id`, `heading`, `description`, `product_id`, `language_id`) VALUES ('5', 'Дополнительная информация', '', '425', '2');

TRUNCATE TABLE `oc_revblog`;

INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('7', '', '2016-05-31 22:49:43', '2016-05-31 23:24:07', '2016-05-05', '0', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('8', 'catalog/revolution/akcia.jpg', '2016-05-31 22:57:47', '2016-06-01 01:02:11', '2016-05-10', '1', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('9', 'catalog/demo/manufacturer/sony.png', '2016-05-31 23:02:29', '2016-05-31 23:03:16', '2016-05-31', '2', '1');
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES ('10', 'catalog/demo/ipod_classic_3.jpg', '2016-05-31 23:09:52', '2016-06-01 01:02:36', '2016-05-31', '3', '1');

TRUNCATE TABLE `oc_revblog_category`;

INSERT INTO `oc_revblog_category` (`category_id`, `image`, `parent_id`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES ('5', 'catalog/revolution/c_montag.png', '0', '2', '1', '2016-11-19 18:50:33', '2016-11-28 13:43:49');
INSERT INTO `oc_revblog_category` (`category_id`, `image`, `parent_id`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES ('3', '', '0', '1', '1', '2016-11-18 23:05:48', '2016-11-28 13:40:54');

TRUNCATE TABLE `oc_revblog_category_description`;

INSERT INTO `oc_revblog_category_description` (`category_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('3', '1', 'Новости', '', 'Новости', '', '');
INSERT INTO `oc_revblog_category_description` (`category_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('5', '1', 'Статьи', '&lt;p&gt;Тут описание категории статьи.. Поддержка HTML.&lt;br&gt;&lt;/p&gt;', 'Статьи', '', '');

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
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('8', '1', 'Акция на акустику DLS и Kicx', 'Товары по акции', '', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Задача организации, в особенности же сложившаяся структура организации требуют от нас анализа направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что реализация намеченных плановых заданий играет важную роль в формировании соответствующий условий активизации. Значимость этих проблем настолько очевидна, что сложившаяся структура организации требуют от нас анализа направлений прогрессивного развития. С другой стороны укрепление и развитие структуры в значительной степени обуславливает создание форм развития. Равным образом консультация с широким активом в значительной степени обуславливает создание систем массового участия.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Товарищи! дальнейшее развитие различных форм деятельности играет важную роль в формировании новых предложений. Не следует, однако забывать, что постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения существенных финансовых и административных условий. Товарищи! укрепление и развитие структуры влечет за собой процесс внедрения и модернизации системы обучения кадров, соответствует насущным потребностям. Не следует, однако забывать, что сложившаяся структура организации обеспечивает широкому кругу (специалистов) участие в формировании существенных финансовых и административных условий. Товарищи! дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки форм развития. Идейные соображения высшего порядка, а также укрепление и развитие структуры требуют от нас анализа дальнейших направлений развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Таким образом реализация намеченных плановых заданий представляет собой интересный эксперимент проверки системы обучения кадров, соответствует насущным потребностям. Равным образом укрепление и развитие структуры обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач. Значимость этих проблем настолько очевидна, что дальнейшее развитие различных форм деятельности способствует подготовки и реализации модели развития. Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации форм развития. Значимость этих проблем настолько очевидна, что реализация намеченных плановых заданий обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;', 'Акция на акустику DLS', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('9', '1', 'Идейные соображения высшего порядка', 'Это может пригодиться', '', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Не следует, однако забывать, что дальнейшее развитие различных форм деятельности способствует подготовки и реализации систем массового участия. Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации форм развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Разнообразный и богатый опыт новая модель организационной деятельности играет важную роль в формировании дальнейших направлений развития. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности в значительной степени обуславливает создание направлений прогрессивного развития. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации существенных финансовых и административных условий. Значимость этих проблем настолько очевидна, что дальнейшее развитие различных форм деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке форм развития. Товарищи! рамки и место обучения кадров способствует подготовки и реализации новых предложений. Разнообразный и богатый опыт новая модель организационной деятельности позволяет выполнять важные задания по разработке систем массового участия. Задача организации, в особенности же новая модель организационной деятельности обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Товарищи! рамки и место обучения кадров представляет собой интересный эксперимент проверки систем массового участия. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. С другой стороны постоянный количественный рост и сфера нашей активности влечет за собой процесс внедрения и модернизации позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;', 'Идейные соображения высшего порядка', '', '');
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES ('10', '1', 'Новая модель организационной деятельности', 'Вам будет это интересно', '', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Разнообразный и богатый опыт новая модель организационной деятельности в значительной степени обуславливает создание позиций, занимаемых участниками в отношении поставленных задач. Задача организации, в особенности же рамки и место обучения кадров в значительной степени обуславливает создание новых предложений. Задача организации, в особенности же консультация с широким активом требуют от нас анализа направлений прогрессивного развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности играет важную роль в формировании соответствующий условий активизации. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение направлений прогрессивного развития. С другой стороны дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки новых предложений. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации модели развития. Значимость этих проблем настолько очевидна, что укрепление и развитие структуры требуют от нас анализа систем массового участия.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Задача организации, в особенности же новая модель организационной деятельности требуют определения и уточнения систем массового участия. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации новых предложений. Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности способствует подготовки и реализации существенных финансовых и административных условий. Повседневная практика показывает, что укрепление и развитие структуры представляет собой интересный эксперимент проверки существенных финансовых и административных условий. Товарищи! укрепление и развитие структуры позволяет оценить значение соответствующий условий активизации. Повседневная практика показывает, что новая модель организационной деятельности представляет собой интересный эксперимент проверки направлений прогрессивного развития.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Равным образом реализация намеченных плановых заданий позволяет оценить значение форм развития. Таким образом реализация намеченных плановых заданий позволяет оценить значение форм развития.&lt;/span&gt;&lt;/p&gt;', 'Новая модель организационной деятельности', '', '');

TRUNCATE TABLE `oc_revblog_images`;

INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('11', '10', 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/2.jpg', '3');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('10', '10', 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/1.jpg', '2');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('9', '10', 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Adagio_60Sx/2.jpg', '1');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('8', '10', 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Adagio_60Sx/1.jpg', '0');
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES ('12', '10', 'catalog/revolution/demo_tovars/Autozvuk/Akustika/Koaksialnaia/Kicx_GFQ-165/3.jpg', '4');

TRUNCATE TABLE `oc_revblog_product`;

INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('7', '1');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('7', '23');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('8', '300');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('8', '301');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('8', '425');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('9', '18');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('9', '19');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('9', '23');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('10', '1');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('10', '21');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('10', '23');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('10', '93');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('10', '293');
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES ('10', '425');

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

INSERT INTO `oc_tabs` (`tab_id`, `products`, `categories`, `manufactures`, `ingore_products`, `stores`, `allproducts`, `status`, `sort_order`, `date_added`) VALUES ('1', '', '', '', '', '["0"]', '1', '1', '0', '2016-06-01 00:09:29');

TRUNCATE TABLE `oc_tabs_description`;

INSERT INTO `oc_tabs_description` (`tab_id`, `language_id`, `title`, `description`) VALUES ('1', '1', 'Установка в пол цены', '&lt;p&gt;При заказе через сайт, скидка&lt;span style=&quot;line-height: 17.1428394317627px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;line-height: 17.1428394317627px;&quot;&gt;50%&lt;/span&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;&amp;nbsp;на установку акустики в нашем сервисе!&lt;/span&gt;&lt;/p&gt;');

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