# ************************************************************
# Sequel Pro SQL dump
# Version 4500
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.37)
# Database: equip
# Generation Time: 2017-02-06 14:15:04 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `serial` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_thumb` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;

INSERT INTO `items` (`id`, `name`, `status_id`, `location_id`, `serial`, `image`, `image_thumb`, `active`)
VALUES
	(1,'iPad 4',1,1,'-','1.jpg','1_thumb.jpg',1),
	(2,'iPad 1 iOS6.1.1',1,2,'-','2.jpg','2_thumb.jpg',1),
	(3,'Samsung Galaxy Tab 7 inch',1,1,'-','3.jpg','3_thumb.jpg',1),
	(4,'iPad 1 3g (Chris Scoggins)',3,1,'-','4.jpg','4_thumb.jpg',1),
	(5,'iPad Mini',2,1,'-','5.jpg','5_thumb.jpg',1),
	(6,'Samsung Windows Slate PC',1,2,'-','6.jpg','6_thumb.jpg',1),
	(7,'Lightning to USB Cable (iPad 4)',2,1,'-','7.jpg','7_thumb.jpg',1),
	(8,'USB Power Supply Unit (iPad 4)',1,1,'-','8.jpg','8_thumb.jpg',1),
	(11,'iPad Air 1 16Gb iOS 8.4.1',1,NULL,'466','11.jpg','11_thumb.jpg',1),
	(12,'iPad 1 3g (Jason Webb)',3,NULL,'-','12.jpg','12_thumb.jpg',0),
	(13,'Samsung Galaxy Tab USB Charge Cable',1,NULL,'-','13.jpg','13_thumb.jpg',1),
	(14,'Kindle Fire HD 7\" 2012 Edition',1,NULL,'-','14.jpg','14_thumb.jpg',1),
	(18,'Lumia 925',1,NULL,'-','18.jpg','18_thumb.jpg',1),
	(19,'Samsung Galaxy S3',1,NULL,'-','19.jpg','19_thumb.jpg',0),
	(20,'Lightning to USB Cable (iPad Mini)',3,NULL,'-','20.jpg','20_thumb.jpg',0),
	(21,'USB Power Supply Unit (iPad Mini)',3,NULL,'-','21.jpg','21_thumb.jpg',0),
	(22,'Blackberry Curve (1)',1,NULL,'-','22.jpg','22_thumb.jpg',1),
	(23,'Blackberry Curve (2)',1,NULL,'-','23.jpg','23_thumb.jpg',1),
	(24,'BlackBerry Curve Power Supply',1,NULL,'-','24.jpg','24_thumb.jpg',1),
	(26,'Blackberry Bold 9000',1,NULL,'-','26.jpg','26_thumb.jpg',1),
	(27,'HTC TyTN 2',1,NULL,'-','27.jpg','27_thumb.jpg',1),
	(28,'Lumia 800 (WP7.5)',1,NULL,'-','28.jpg','28_thumb.jpg',1),
	(29,'Hudl (2014)',1,NULL,'-','29.jpg','29_thumb.jpg',1),
	(30,'Hudl Power Adaptor',1,NULL,'-','30.jpg','30_thumb.jpg',1),
	(31,'Hudl Sync/Charge Cable',2,NULL,'-','31.jpg','31_thumb.jpg',1),
	(32,'Samsung Galaxy Tab 10.1 16GB',1,NULL,'478','32.jpg','32_thumb.jpg',1),
	(33,'Samsung Galaxy Tab 10.1 - Power Supply',1,NULL,'-','33.jpg','33_thumb.jpg',1),
	(34,'Samsung Galaxy Tab 10.1 - Charging Cable',1,NULL,'-','34.jpg','34_thumb.jpg',1),
	(35,'HTC One (M8)',1,NULL,'-','35.jpg','35_thumb.jpg',1),
	(36,'HTC One (M8) Charging Cable',1,NULL,'-','36.jpg','36_thumb.jpg',1),
	(37,'HTC One (M8) Power Supply',1,NULL,'-','37.jpg','37_thumb.jpg',1),
	(38,'Samsung Galaxy S5',2,NULL,'-','38.jpg','38_thumb.jpg',1),
	(39,'Samsung Galaxy Ace 2',1,NULL,'-','39.jpg','39_thumb.jpg',1),
	(40,'Samsung Galaxy Ace 2 - Charger',1,NULL,'-','40.jpg','40_thumb.jpg',1),
	(41,'Samsung Galaxy Ace 2 - Data Cable',1,NULL,'-','41.jpg','41_thumb.jpg',1),
	(42,'Sony LT30p Experia T',1,NULL,'-','42.jpg','42_thumb.jpg',1),
	(43,'Sony LT30p Experia T Data Cable',1,NULL,'-','43.jpg','43_thumb.jpg',1),
	(44,'Sony LT30p Experia T Power Supply',1,NULL,'-','44.jpg','44_thumb.jpg',1),
	(45,'Surface Pro 2',1,NULL,'ATOC Asset 192','45.jpg','45_thumb.jpg',1),
	(46,'Surface Pro 2 Power Supply',1,NULL,'-','46.jpg','46_thumb.jpg',1),
	(47,'HTC Desire HD - Android 2.3',1,NULL,'Android 2.3','47.jpg','47_thumb.jpg',1),
	(48,'G1',1,NULL,'Android 1.6','48.jpg','48_thumb.jpg',1),
	(49,'Nexus One',1,NULL,'Android 2.3.6','49.jpg','49_thumb.jpg',1),
	(50,'HTC Desire - Android 2.2',1,NULL,'-','50.jpg','50_thumb.jpg',1),
	(51,'Kindle Fire Phone',1,NULL,'-','51.jpg','51_thumb.jpg',1),
	(52,'Lumia 625',1,NULL,'-','52.jpg','52_thumb.jpg',1),
	(53,'Lightning to USB Cable (iPad)',2,NULL,'-','53.jpg','53_thumb.jpg',1),
	(54,'USB Power Supply Unit',2,NULL,'-','54.jpg','54_thumb.jpg',1),
	(55,'USB Power Supply Unit (Compact)',1,NULL,'-','55.jpg','55_thumb.jpg',1),
	(56,'Lightning to USB Cable',2,NULL,'-','56.jpg','56_thumb.jpg',1),
	(57,'iPhone 6 16Gb iOS 9.3.3',2,NULL,'477','57.jpg','57_thumb.jpg',1),
	(58,'iPhone 6 Plus/10.0',2,NULL,'475','58.jpg','58_thumb.jpg',1),
	(59,'iPhone 5s/iOS8.0.2',1,NULL,'-','59.jpg','59_thumb.jpg',1),
	(60,'iPhone 4s/iOS8.2',4,NULL,'-','60.jpg','60_thumb.jpg',1),
	(61,'Lumia 530',1,NULL,'-','61.jpg','61_thumb.jpg',1),
	(62,'Lumia 530 Power Supply',1,NULL,'-','62.jpg','62_thumb.jpg',1),
	(63,'Lumia 1320',2,NULL,'-','63.jpg','63_thumb.jpg',1),
	(64,'Lumia 1320 Power Supply',1,NULL,'-','64.jpg','64_thumb.jpg',1),
	(65,'Lumia 930',2,NULL,'-','65.jpg','65_thumb.jpg',1),
	(66,'Lumia 930 PSU',1,NULL,'-','66.jpg','66_thumb.jpg',1),
	(67,'iPad 2 3g 32GB iOS 7.0.4',1,NULL,'-','67.jpg','67_thumb.jpg',1),
	(68,'30 pin to USB cable - iPad 2 3g 32GB iOS 7.0.4',1,NULL,'-','68.jpg','68_thumb.jpg',1),
	(69,'Apple Watch (Black)',2,NULL,'-','69.jpg','69_thumb.jpg',1),
	(70,'iPhone 6 iOS10',1,NULL,'476','70.jpg','70_thumb.jpg',1),
	(71,'Samsung Galaxy S6 (Thales) Android 5.0.2',3,NULL,'ATOC Asset 441','71.jpg','71_thumb.jpg',1),
	(72,'Charging Cable - Micro USB - Samsung Galaxy S6 (Thales)',3,NULL,'-','72.jpg','72_thumb.jpg',1),
	(73,'Samsung Galaxy S4 (Thales) Android 4.4.2',3,NULL,'ATOC Asset 447','73.jpg','73_thumb.jpg',1),
	(74,'Samsung Galaxy S5 (Thales) Android 4.4.2',3,NULL,'ATOC Asset 448','74.jpg','74_thumb.jpg',1),
	(75,'Samsung Galaxy S3 (Thales) Android 4.3',3,NULL,'ATOC Asset 449','75.jpg','75_thumb.jpg',1),
	(76,'Samsung Galaxy S4',2,NULL,'-','76.jpg','76_thumb.jpg',1),
	(77,'iPad Pro 12.9 128Gb 4G iOS 9.2',2,NULL,'450','77.jpg','77_thumb.jpg',1),
	(78,'Apple Watch watchOS 2.0',1,NULL,'-','78.jpg','78_thumb.jpg',1),
	(79,'Samsung Galaxy S7 Android 6.0.1',3,NULL,'-','79.jpg','79_thumb.jpg',1),
	(81,'iPhone SE 16Gb',2,NULL,'-','81.jpg','81_thumb.jpg',1),
	(82,'Samsung Galaxy S6 Android 5.1.1',2,NULL,'-','82.jpg','82_thumb.jpg',1),
	(83,'Lumia 950XL Windows 10',2,NULL,'469','83.jpg','83_thumb.jpg',1),
	(84,'Lumia 550 Windows 10',1,NULL,'470','84.jpg','84_thumb.jpg',1),
	(85,'Lumia 950XL PSU',2,NULL,'','85.jpg','85_thumb.jpg',1),
	(86,'iPad Air 2 4G 16Gb',1,NULL,'467','86.jpg','86_thumb.jpg',0),
	(87,'iPhone 7 32Gb (Thales)',3,NULL,'473','87.jpg','87_thumb.jpg',1),
	(88,'Apple Watch 2 (Thales)',3,NULL,'479','88.jpg','88_thumb.jpg',1),
	(89,'iPhone 7 32Gb',1,NULL,'480','89.jpg','89_thumb.jpg',1),
	(90,'Google Pixel XL Android 7.1',1,NULL,'464','90.jpg','90_thumb.jpg',1);

/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table linked_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `linked_items`;

CREATE TABLE `linked_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `linked_items` WRITE;
/*!40000 ALTER TABLE `linked_items` DISABLE KEYS */;

INSERT INTO `linked_items` (`id`, `item_id`, `master_id`)
VALUES
	(13,8,1),
	(14,7,1),
	(15,13,3),
	(17,3,13),
	(18,8,7),
	(19,1,7),
	(22,15,16),
	(23,17,16),
	(24,15,17),
	(25,16,17),
	(26,22,24),
	(27,24,22),
	(28,1,8),
	(29,7,8),
	(30,30,29),
	(31,31,29),
	(32,29,30),
	(33,31,30),
	(34,29,31),
	(35,30,31),
	(38,33,34),
	(39,32,34),
	(40,34,33),
	(41,32,33),
	(42,36,35),
	(43,37,35),
	(44,35,36),
	(45,37,36),
	(46,35,37),
	(47,36,37),
	(48,40,39),
	(49,41,39),
	(50,39,40),
	(51,41,40),
	(52,39,41),
	(53,40,41),
	(54,43,42),
	(55,44,42),
	(56,42,43),
	(57,44,43),
	(58,42,44),
	(59,43,44),
	(63,45,46),
	(64,62,61),
	(65,61,62),
	(66,64,63),
	(67,63,64),
	(68,16,15),
	(69,17,15),
	(70,72,71),
	(71,71,72),
	(72,46,45),
	(73,34,32),
	(74,33,32);

/*!40000 ALTER TABLE `linked_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table loans
# ------------------------------------------------------------

DROP TABLE IF EXISTS `loans`;

CREATE TABLE `loans` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date_out` datetime DEFAULT NULL,
  `date_due_in` datetime DEFAULT NULL,
  `date_requested` datetime DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `purpose` longtext,
  `item_id` int(11) DEFAULT NULL,
  `date_returned` datetime DEFAULT NULL,
  `return_logged_by` int(11) DEFAULT NULL,
  `loan_released_by` int(11) DEFAULT NULL,
  `booked` tinyint(1) DEFAULT NULL,
  `loaned` tinyint(1) DEFAULT NULL,
  `returned` tinyint(1) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;

INSERT INTO `loans` (`id`, `date_out`, `date_due_in`, `date_requested`, `firstname`, `surname`, `email`, `purpose`, `item_id`, `date_returned`, `return_logged_by`, `loan_released_by`, `booked`, `loaned`, `returned`, `duration`, `item_name`)
VALUES
	(271,'2014-01-31 09:55:53','2014-03-03 09:55:37','2014-01-31 09:55:04','Kirstie','Oconnell','kirstie.oconnell@atoc.org','QA',19,'2014-03-03 09:26:50',NULL,NULL,1,1,1,'1 month','Samsung Galaxy S3'),
	(272,'2014-01-31 09:59:56','2014-03-03 09:59:55','2014-01-31 09:59:36','Kirstie','O\'Connell','kirstie.oconnell@atoc.org','QA',8,'2014-03-03 09:26:49',NULL,NULL,1,1,1,'1 month','iPad 4'),
	(273,'2014-01-31 09:59:55','2014-03-03 09:59:54','2014-01-31 09:59:36','Kirstie','O\'Connell','kirstie.oconnell@atoc.org','QA',7,'2014-03-03 09:26:48',NULL,NULL,1,1,1,'1 month','iPad 4'),
	(274,'2014-01-31 09:59:54','2014-03-03 09:59:48','2014-01-31 09:59:36','Kirstie','O\'Connell','kirstie.oconnell@atoc.org','QA',1,'2014-03-03 09:26:46',NULL,NULL,1,1,1,'1 month','iPad 4'),
	(275,'2014-02-04 15:15:47','2014-02-11 15:15:46','2014-02-04 15:12:52','Kirstie','OConnell','kirstie.oconnell@atoc.org','Testing - Kindle HTML5 App',14,'2014-02-07 13:16:47',NULL,NULL,1,1,1,'1 week','Kindle Fire HD 7'),
	(276,'2014-02-04 15:15:46','2014-02-11 15:15:45','2014-02-04 15:14:19','Kirstie','OConnell','kirstie.oconnell@atoc.org','Testing - Kindle HTML5 App',15,'2014-02-04 15:15:50',NULL,NULL,1,1,1,'1 week','Nexus 7 (2013) Charger'),
	(277,'2014-02-04 15:15:45','2014-02-11 15:15:42','2014-02-04 15:14:19','Kirstie','OConnell','kirstie.oconnell@atoc.org','Testing - Kindle HTML5 App',17,'2014-02-07 13:16:42',NULL,NULL,1,1,1,'1 week','Nexus 7 (2013) Charger'),
	(278,'2014-02-04 15:15:42','2014-02-11 15:15:19','2014-02-04 15:14:19','Kirstie','OConnell','kirstie.oconnell@atoc.org','Testing - Kindle HTML5 App',16,'2014-02-07 13:16:40',NULL,NULL,1,1,1,'1 week','Nexus 7 (2013) Charger'),
	(279,'2014-02-27 15:27:36','2014-03-06 15:27:33','2014-02-27 15:27:02','Kirstie','OConnell','kirstie.oconnell@atoc.org','To test iOS 7 phone app',11,'2014-08-04 09:09:27',NULL,NULL,1,1,1,'1 week','iPad Air'),
	(280,'2014-08-04 09:09:25','2014-09-04 09:09:24','2014-03-03 09:29:50','Kirstie','OConnell','kirstie.oconnell@atoc.org','Testing',8,'2014-08-04 09:09:26',NULL,NULL,1,1,1,'1 month','iPad 4'),
	(281,'2014-08-04 09:09:20','2014-09-04 09:09:09','2014-03-03 09:29:50','Kirstie','OConnell','kirstie.oconnell@atoc.org','Testing',7,'2014-08-04 09:09:24',NULL,NULL,1,1,1,'1 month','iPad 4'),
	(282,'2014-03-31 11:47:59','2014-05-01 11:47:36','2014-03-03 09:29:50','Kirstie','OConnell','kirstie.oconnell@atoc.org','Testing',1,'2014-03-31 11:48:03',NULL,NULL,1,1,1,'1 month','iPad 4'),
	(283,'2014-03-31 11:49:15','2014-04-01 11:49:12','2014-03-31 11:49:07','Maria','Mlynarska','Maria.Mlynarska@atoc.org','Testing',1,'2014-08-04 09:09:09',NULL,NULL,1,1,1,'1 day','iPad 4'),
	(284,'2014-08-05 08:25:16','2014-09-05 08:24:51','2014-08-05 08:55:13','Varun','Morla','varun.morla@atoc.org','Dev/Test',36,'2014-08-29 15:01:56',NULL,NULL,1,1,1,'1 month','HTC One (M8)'),
	(285,'2014-08-05 08:25:18','2014-09-05 08:25:16','2014-08-05 08:55:13','Varun','Morla','varun.morla@atoc.org','Dev/Test',37,'2014-09-30 12:27:41',NULL,NULL,1,1,1,'1 month','HTC One (M8)'),
	(286,'2014-08-05 08:25:20','2014-09-05 08:25:18','2014-08-05 08:55:13','Varun','Morla','varun.morla@atoc.org','Dev/Test',35,'2014-08-29 14:58:03',NULL,NULL,1,1,1,'1 month','HTC One (M8)'),
	(287,'2014-08-05 08:25:22','2014-09-05 08:25:20','2014-08-05 08:58:12','Varun','Morla','varun.morla@atoc.org','Dev/Test',29,'2014-08-29 14:58:37',NULL,NULL,1,1,1,'1 month','Hudl (2014)'),
	(288,'2014-08-05 08:25:23','2014-09-05 08:25:22','2014-08-05 08:58:45','Varun','Morla','varun.morla@atoc.org','Dev/Test',15,'2014-08-29 14:58:28',NULL,NULL,1,1,1,'1 month','Nexus 7 (2013)'),
	(289,'2014-08-05 08:25:24','2014-09-05 08:25:23','2014-08-05 08:59:55','Varun','Morla','varun.morla@atoc.org','Dev/Test',34,'2014-09-30 12:07:32',NULL,NULL,1,1,1,'1 month','Samsung Galaxy Tab 10.1 16GB'),
	(290,'2014-08-05 08:25:25','2014-09-05 08:25:25','2014-08-05 08:59:55','Varun','Morla','varun.morla@atoc.org','Dev/Test',33,'2014-08-29 15:01:00',NULL,NULL,1,1,1,'1 month','Samsung Galaxy Tab 10.1 16GB'),
	(291,'2014-08-05 08:25:26','2014-09-05 08:25:26','2014-08-05 08:59:55','Varun','Morla','varun.morla@atoc.org','Dev/Test',32,'2014-08-29 14:58:49',NULL,NULL,1,1,1,'1 month','Samsung Galaxy Tab 10.1 16GB'),
	(292,'2014-08-05 08:25:27','2014-09-05 08:25:26','2014-08-05 09:24:47','Varun','Morla','varun.morla@atoc.org','Dev/Test',38,'2014-08-29 14:57:30',NULL,NULL,1,1,1,'1 month','Samsung Galaxy S5'),
	(293,'2014-08-05 08:27:21','2014-09-05 08:27:20','2014-08-05 09:26:08','Waheed','Malik','waheed.malik@atoc.org','Dev/Test',2,'2014-10-28 12:09:20',NULL,NULL,1,1,1,'1 month','iPad 1'),
	(294,'2014-08-05 08:27:20','2014-09-05 08:27:20','2014-08-05 09:26:45','Waheed','Malik','waheed.malik@atoc.org','Dev/Test',8,'2015-04-08 09:32:03',NULL,NULL,1,1,1,'1 month','iPad 4'),
	(295,'2014-08-05 08:27:20','2014-09-05 08:27:19','2014-08-05 09:26:45','Waheed','Malik','waheed.malik@atoc.org','Dev/Test',7,'2015-04-08 09:32:09',NULL,NULL,1,1,1,'1 month','iPad 4'),
	(296,'2014-08-05 08:27:19','2014-09-05 08:27:18','2014-08-05 09:26:45','Waheed','Malik','waheed.malik@atoc.org','Dev/Test',1,'2014-09-19 14:31:32',NULL,NULL,1,1,1,'1 month','iPad 4'),
	(297,'2014-08-05 08:27:18','2014-09-05 08:27:16','2014-08-05 09:27:13','Waheed','Malik','waheed.malik@atoc.org','Dev/Test',11,'2014-09-19 14:31:24',NULL,NULL,1,1,1,'1 month','iPad Air'),
	(298,'2014-08-19 16:05:49','2014-08-20 16:05:41','2014-08-11 10:55:42','Varun','Morla','varun.morla@atoc.org','Temporary Loan',41,'2014-08-29 14:59:22',NULL,NULL,1,1,1,'1 day','Samsung Galaxy Ace 2 - Data Cable'),
	(299,'2014-08-19 16:04:37','2014-08-26 16:04:27','2014-08-18 13:32:08','Chris','Gould','Chris.Gould@atoc.org','Testing',28,'2014-08-19 16:04:43',NULL,NULL,1,1,1,'1 week','Nokia Lumia 800'),
	(300,'2014-08-19 16:05:39','2014-08-26 16:05:38','2014-08-19 09:31:00','Varun','Morla','varun.morla@atoc.org','Development Testing',42,'2014-08-29 14:59:02',NULL,NULL,1,1,1,'1 week','Sony LT30p Experia T'),
	(301,'2014-08-19 16:05:38','2014-08-26 16:05:36','2014-08-19 16:27:18','Varun','Morla','varun.morla@atoc.org','Testing',44,'2014-09-30 12:06:51',NULL,NULL,1,1,1,'1 week','Sony LT30p Experia T Data Cable'),
	(302,'2014-08-19 16:05:36','2014-08-26 16:05:33','2014-08-19 16:27:18','Varun','Morla','varun.morla@atoc.org','Testing',43,'2014-08-29 15:01:24',NULL,NULL,1,1,1,'1 week','Sony LT30p Experia T Data Cable'),
	(303,'2014-08-19 16:05:33','2014-08-26 16:05:29','2014-08-19 17:05:23','Chris','Gould','chris.gould@atoc.org','Testing',18,'2014-09-19 12:11:53',NULL,NULL,1,1,1,'1 week','Nokia Lumia 925'),
	(304,'2014-09-19 12:13:23','2014-10-20 12:13:22','2014-08-29 16:04:13','Ashutosh','Chauhan','Ashutosh.Chauhan@atoc.org','Testing',35,'2014-09-30 12:03:15',NULL,NULL,1,1,1,'1 month','HTC One (M8)'),
	(305,'2014-09-19 12:13:22','2014-10-20 12:13:21','2014-08-29 16:04:55','Ashutosh','Chauhan','Ashutosh.Chauhan@atoc.org','Testing',15,'2014-09-30 12:03:52',NULL,NULL,1,1,1,'1 month','Nexus 7 (2013)'),
	(306,'2014-09-19 12:13:21','2014-10-20 12:13:20','2014-08-29 16:05:30','Asutosh','Chauhan','Ashutosh.Chauhan@atoc.org','Testing',29,'2014-09-29 08:39:12',NULL,NULL,1,1,1,'1 month','Hudl (2014)'),
	(307,'2014-09-19 12:13:20','2014-10-20 12:13:19','2014-08-29 16:06:48','Ashutosh','Chauhan','Ashutosh.Chauhan@atoc.org','Testing',42,'2014-09-30 12:08:59',NULL,NULL,1,1,1,'1 month','Sony LT30p Experia T'),
	(308,'2014-09-19 12:13:19','2014-10-20 12:13:17','2014-08-29 16:07:29','Ashutosh','Chauhan','Ashutosh.Chauhan@atoc.org','Testing',38,'2014-09-30 12:03:25',NULL,NULL,1,1,1,'1 month','Samsung Galaxy S5'),
	(309,'2014-09-19 12:13:17','2014-10-20 12:13:15','2014-08-29 16:08:08','Ashutosh','Chauhan','Ashutosh.Chauhan@atoc.org','Testing',32,'2014-09-29 08:38:54',NULL,NULL,1,1,1,'1 month','Samsung Galaxy Tab 10.1 16GB'),
	(310,'2014-09-19 12:13:15','2014-10-20 12:13:11','2014-09-19 13:12:58','Ashutosh','Chauhan','Ashutosh.Chauhan@atoc.org','Dev',39,'2014-09-30 12:03:34',NULL,NULL,1,1,1,'1 month','Samsung Galaxy Ace 2'),
	(311,'2014-09-22 09:20:49','2014-10-23 09:20:48','2014-09-19 15:32:42','Kirstie','O\'Connell','kirstie.oconnell@atoc.org','testing',1,'2014-09-30 12:03:42',NULL,NULL,1,1,1,'1 month','iPad 4'),
	(312,'2014-09-22 09:20:47','2014-10-23 09:20:39','2014-09-19 15:33:14','Kirstie','O\'Connell','kirstie.oconnell@atoc.org','testing',11,'2014-09-30 12:04:08',NULL,NULL,1,1,1,'1 month','iPad Air'),
	(313,'2014-09-22 09:20:39','2014-10-23 09:20:29','2014-09-22 10:20:22','Kirstie','OConnell','Kirstie.OConnell@atoc.org','Testing',5,'2014-09-30 12:04:12',NULL,NULL,1,1,1,'1 month','iPad Mini'),
	(314,'2014-09-24 15:07:27','2014-10-25 15:07:26','2014-09-24 16:06:53','Ash','Chauhan','ashutosh.chauhan@atoc.org','Dev testing',13,'2014-09-29 08:38:29',NULL,NULL,1,1,1,'1 month','Samsung Galaxy Tab 7 inch'),
	(315,'2014-09-24 15:07:25','2014-10-25 15:07:21','2014-09-24 16:06:53','Ash','Chauhan','ashutosh.chauhan@atoc.org','Dev testing',3,'2014-09-29 08:38:02',NULL,NULL,1,1,1,'1 month','Samsung Galaxy Tab 7 inch'),
	(316,'2014-10-07 15:12:15','2014-10-09 15:12:14','2014-10-07 15:37:15','Ash','Chauhan','ashutosh.chauhan@atoc.org','Testing 6.0 upgrade',35,'2014-11-04 14:22:29',NULL,NULL,1,1,1,'2 days','HTC One (M8)'),
	(317,'2014-10-07 15:12:14','2014-10-09 15:12:13','2014-10-07 15:38:28','Ash','Chauhan','ashutosh.chauhan@atoc.org','6.0 Upgrade test',39,'2014-11-04 14:22:43',NULL,NULL,1,1,1,'2 days','Samsung Galaxy Ace 2'),
	(318,'2014-10-07 15:12:13','2014-10-09 15:12:10','2014-10-07 15:39:44','Ash','Chauhan','ashutosh.chauhan@atoc.org','6.0 Upgrade test',38,'2014-11-04 14:24:02',NULL,NULL,1,1,1,'2 days','Samsung Galaxy S5'),
	(319,'2014-10-28 10:45:46','2014-11-04 10:45:45','2014-10-28 10:43:44','Kirstie','OConnell','kirstie.oconnell@atoc.org','test',1,'2014-11-04 14:24:56',NULL,NULL,1,1,1,'1 week','iPad 4'),
	(320,'2014-10-28 10:45:45','2014-11-04 10:45:41','2014-10-28 10:44:15','Kirstie','OConnell','kirstie.oconnell@atoc.org','test',11,NULL,NULL,NULL,1,1,NULL,'1 week','iPad Air'),
	(321,'2014-10-28 10:56:48','2014-11-04 10:56:47','2014-10-28 10:53:09','Kirstie','OConnell','kirstie.oconnell@atoc.org','test',56,NULL,NULL,NULL,1,1,NULL,'1 week','Lightning to USB Cable'),
	(322,'2014-10-28 10:56:47','2014-11-04 10:56:46','2014-10-28 10:53:39','Kirstie','OConnell','kirstie.oconnell@atoc.org','Test',53,'2014-11-04 14:28:02',NULL,NULL,1,1,1,'1 week','Lightning to USB Cable (iPad)'),
	(323,'2014-10-28 10:56:46','2014-11-04 10:56:45','2014-10-28 10:55:45','Kirstie','OConnell','kirstie.oconnell@atoc.org','Test',54,'2014-11-04 14:26:02',NULL,NULL,1,1,1,'1 week','USB Power Supply Unit'),
	(324,'2014-10-28 10:56:45','2014-11-04 10:56:43','2014-10-28 10:56:37','Kirstie','OConnell','kirstie.oconnell@atoc.org','Test',55,'2014-11-04 14:25:37',NULL,NULL,1,1,1,'1 week','USB Power Supply Unit (Compact)'),
	(325,'2014-10-28 11:01:47','2014-11-28 11:01:45','2014-10-28 11:01:27','Waheed','Malik','waheed.malik@atoc.org','Dev/Test',58,'2015-03-12 13:39:31',NULL,NULL,1,1,1,'1 month','iPhone 6 Plus'),
	(326,'2014-10-28 12:10:33','2014-11-04 12:10:31','2014-10-28 12:10:24','Kathryn','Daniels','kathryn.daniels@atoc.org','Testing',2,'2014-10-28 15:39:32',NULL,NULL,1,1,1,'1 week','iPad 1'),
	(327,'2014-10-28 15:40:10','2014-11-04 15:40:07','2014-10-28 15:40:03','Waheed','Malik','waheed.malik@atoc.org','Test',2,'2015-01-26 10:47:12',NULL,NULL,1,1,1,'1 week','iPad 1'),
	(328,'2014-11-04 14:23:58','2014-11-11 14:23:56','2014-11-04 14:23:50','Bimpe','Benson','Adebimpe.Adeniyi-Benson@atoc.org','Test',39,'2014-12-18 14:56:25',NULL,NULL,1,1,1,'1 week','Samsung Galaxy Ace 2'),
	(329,'2014-11-04 14:24:43','2014-11-11 14:24:42','2014-11-04 14:24:34','Bimpe','Benson','Adebimpe.Adeniyi-Benson@atoc.org','Test',38,'2014-12-18 14:57:14',NULL,NULL,1,1,1,'1 week','Samsung Galaxy S5'),
	(330,'2014-11-04 14:25:27','2014-11-11 14:25:25','2014-11-04 14:25:19','Bimpe','Benson','Adebimpe.Adeniyi-Benson@atoc.org','Test',1,'2015-12-18 14:05:20',NULL,NULL,1,1,1,'1 week','iPad 4'),
	(331,'2014-11-04 14:27:50','2014-11-11 14:27:47','2014-11-04 14:26:37','Bimpe','Benson','Adebimpe.Adeniyi-Benson@atoc.org','Test',54,NULL,NULL,NULL,1,1,NULL,'1 week','USB Power Supply Unit'),
	(332,'2014-11-04 14:28:26','2014-11-11 14:28:24','2014-11-04 14:28:20','Bimpe','Benson','Adebimpe.Adeniyi-Benson@atoc.org','Test',53,NULL,NULL,NULL,1,1,NULL,'1 week','Lightning to USB Cable (iPad)'),
	(333,'2014-12-18 14:56:00','2014-12-25 14:55:52','2014-12-18 14:48:39','Bimpe','Adeniyi-Benson','adebimpe.adeniyi-benson@atoc.org','QA testing for station changes and restore purchase on android ',36,'2014-12-18 14:56:11',NULL,NULL,1,1,1,'1 week','HTC One (M8)'),
	(334,'2014-12-18 14:55:52','2014-12-25 14:55:50','2014-12-18 14:48:39','Bimpe','Adeniyi-Benson','adebimpe.adeniyi-benson@atoc.org','QA testing for station changes and restore purchase on android ',37,'2014-12-18 14:56:08',NULL,NULL,1,1,1,'1 week','HTC One (M8)'),
	(335,'2014-12-18 14:55:49','2014-12-25 14:55:41','2014-12-18 14:48:39','Bimpe','Adeniyi-Benson','adebimpe.adeniyi-benson@atoc.org','QA testing for station changes and restore purchase on android ',35,'2014-12-18 14:56:05',NULL,NULL,1,1,1,'1 week','HTC One (M8)'),
	(336,'2014-12-18 14:55:41','2014-12-25 14:55:39','2014-12-18 14:53:04','Bimpe','Adeniyi-Benson','bimpe.adeniyi-benson@atoc.org','QA testing ',42,'2015-08-27 12:28:55',NULL,NULL,1,1,1,'1 week','Sony LT30p Experia T'),
	(337,'2014-12-18 14:55:39','2014-12-25 14:55:36','2014-12-18 14:53:58','Bimpe','Adeniyi-Benson','bimpe.adeniyi-benson@atoc.org','QA testing',50,'2014-12-18 16:23:00',NULL,NULL,1,1,1,'1 week','HTC Desire - Android 2.2'),
	(338,'2014-12-18 14:55:36','2014-12-25 14:55:33','2014-12-18 14:54:30','Bimpe','Adeniyi-Benson','bimpe.adeniyi-benson@atoc.org','QA testing',47,'2014-12-18 16:22:56',NULL,NULL,1,1,1,'1 week','HTC Desire HD - Android 2.3'),
	(339,'2014-12-18 14:55:33','2014-12-25 14:55:30','2014-12-18 14:55:09','Bimpe','Adeniyi-Benson','bimpe.adeniyi-benson@atoc.org','QA testing',31,NULL,NULL,NULL,1,1,NULL,'1 week','Hudl Power Adaptor'),
	(340,'2014-12-18 14:55:29','2014-12-25 14:55:27','2014-12-18 14:55:09','Bimpe','Adeniyi-Benson','bimpe.adeniyi-benson@atoc.org','QA testing',30,'2015-11-19 12:46:47',NULL,NULL,1,1,1,'1 week','Hudl Power Adaptor'),
	(341,'2014-12-18 14:57:46','2014-12-25 14:57:44','2014-12-18 14:57:42','Ashutosh','Chauhan','ashutosh.chauhan@atoc.org','Dev',38,'2015-07-06 11:52:48',NULL,NULL,1,1,1,'1 week','Samsung Galaxy S5'),
	(342,'2015-01-15 10:32:54','2015-01-17 10:32:51','2015-01-15 10:32:46','Ashutosh','Chauhan','Ashutosh.Chauhan@atoc.org','Dev',35,'2015-07-06 11:52:42',NULL,NULL,1,1,1,'2 days','HTC One (M8)'),
	(343,'2015-04-08 09:30:17','2015-05-09 09:29:56','2015-03-10 10:01:25','andrew','tolley','andrew.tolley@atoc.org','For Maria to have access to iOS applications in new BA role',5,NULL,NULL,NULL,1,1,NULL,'1 month','iPad Mini'),
	(344,'2015-03-17 15:06:04','2015-04-17 15:06:03','2015-03-17 14:59:41','Maria','Mlynarska','maria.mlynarska@atoc.org','Win8 app testing',52,'2015-09-18 11:01:17',NULL,NULL,1,1,1,'1 month','Nokia Lumia 625'),
	(345,'2015-03-17 15:06:03','2015-04-17 15:06:00','2015-03-17 15:00:15','Maria','Mlynarska','maria.mlynarska@atoc.org','Win8 app testing',18,'2015-05-19 14:11:05',NULL,NULL,1,1,1,'1 month','Nokia Lumia 925'),
	(346,'2015-03-17 15:06:00','2015-03-24 15:05:59','2015-03-17 15:03:09','Maria','Mlynarska','maria.mlynarska@atoc.org','try to check if we can use android app on it (large version)',34,'2015-09-18 11:01:09',NULL,NULL,1,1,1,'1 week','Samsung Galaxy Tab 10.1 16GB'),
	(347,'2015-03-17 15:05:58','2015-03-24 15:05:57','2015-03-17 15:03:09','Maria','Mlynarska','maria.mlynarska@atoc.org','try to check if we can use android app on it (large version)',33,'2015-09-18 11:01:07',NULL,NULL,1,1,1,'1 week','Samsung Galaxy Tab 10.1 16GB'),
	(348,'2015-03-17 15:05:57','2015-03-24 15:05:50','2015-03-17 15:03:09','Maria','Mlynarska','maria.mlynarska@atoc.org','try to check if we can use android app on it (large version)',32,'2015-09-18 11:01:05',NULL,NULL,1,1,1,'1 week','Samsung Galaxy Tab 10.1 16GB'),
	(349,'2015-04-08 09:33:44','2015-05-09 09:33:29','2015-04-08 10:33:24','Maria','Mlynarska','Maria.Mlynarska@atoc.org','Loaned with iPad Mini',8,'2015-04-08 09:33:49',NULL,NULL,1,1,1,'1 month','Lightning to USB Cable (iPad 4)'),
	(350,'2015-04-08 09:33:50','2015-05-09 09:33:49','2015-04-08 10:33:24','Maria','Mlynarska','Maria.Mlynarska@atoc.org','Loaned with iPad Mini',7,NULL,NULL,NULL,1,1,NULL,'1 month','Lightning to USB Cable (iPad 4)'),
	(351,'2015-04-08 14:12:30','2015-04-10 14:12:28','2015-04-08 15:12:22','Ashutosh','Chauhan','ashutosh.chauhan@atoc.org','test',58,'2015-04-30 08:55:05',NULL,NULL,1,1,1,'2 days','iPhone 6 Plus/8.2'),
	(352,'2015-05-07 08:47:01','2015-05-14 08:46:58','2015-05-06 14:23:48','David','Grachvogel','david.grachvogel@atoc.org','Testing Disabled Person Railcard Mobile Site Changes',59,'2015-09-18 10:52:01',NULL,NULL,1,1,1,'1 week','iPhone 5s/iOS8.0.2'),
	(353,'2015-05-07 08:44:07','2015-05-09 08:44:00','2015-05-06 14:25:30','David','Grachvogel','david.grachvogel@atoc.org','Testing Disabled Person Railcard Mobile Site Changes',13,'2015-05-07 08:44:08',NULL,NULL,1,1,1,'2 days','Samsung Galaxy Tab 7 inch'),
	(354,'2015-05-07 08:43:56','2015-05-09 08:42:20','2015-05-06 14:25:30','David','Grachvogel','david.grachvogel@atoc.org','Testing Disabled Person Railcard Mobile Site Changes',3,'2015-05-07 08:44:00',NULL,NULL,1,1,1,'2 days','Samsung Galaxy Tab 7 inch'),
	(355,NULL,NULL,'2015-05-06 18:37:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),
	(356,'2015-05-07 08:46:58','2015-05-07 20:46:56','2015-05-07 09:46:50','David','Grachvogel','david.grachvogel@atoc.org','Testing',15,'2015-05-26 13:12:36',NULL,NULL,1,1,1,'0.5 days','Nexus 7 (2013)'),
	(357,'2015-05-07 08:48:05','2015-05-07 20:48:04','2015-05-07 09:47:59','David','Grachvogel','david.grachvogel@atoc.org','Testing',66,'2015-05-26 13:12:33',NULL,NULL,1,1,1,'0.5 days','Lumia 930 PSU'),
	(358,'2015-05-07 11:52:26','2015-05-07 23:52:25','2015-05-07 12:48:52','Isabel','Meadowcroft','Isabel.Meadowcroft@atoc.org','Testing',58,'2015-05-08 13:03:42',NULL,NULL,1,1,1,'0.5 days','iPhone 6 Plus/8.2'),
	(359,'2015-05-07 11:52:25','2015-05-07 23:52:23','2015-05-07 12:49:18','Isabel','Meadowcroft','Isabel.Meadowcroft@atoc.org','Testing',60,'2015-05-08 13:03:47',NULL,NULL,1,1,1,'0.5 days','iPhone 4s/iOS8.2'),
	(360,'2015-05-07 15:02:27','2015-05-14 15:02:25','2015-05-07 16:02:19','Maria','Mlynarska','Maria.Mlynarska@atoc.org','Testing',65,'2015-08-27 12:17:39',NULL,NULL,1,1,1,'1 week','Lumia 930'),
	(361,'2015-07-03 07:52:30','2015-07-04 07:52:28','2015-07-03 08:41:12','David','Grachvogel','David.grachvogel@aol.com','Testing for Railcard Central Validation',67,'2015-07-16 14:13:57',NULL,NULL,1,1,1,'1 day','iPad 2 3g 32GB iOS 7.0.4'),
	(362,'2015-07-03 07:52:28','2015-07-04 07:52:26','2015-07-03 08:52:09','David','Grachvogel','david.grachvogel@atoc.org','goes with iPad',68,'2015-07-16 14:13:59',NULL,NULL,1,1,1,'1 day','30 pin to USB cable - iPad 2 3g 32GB iOS 7.0.4'),
	(363,NULL,NULL,'2015-07-03 12:23:46',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),
	(364,'2015-07-06 14:33:07','2015-07-13 14:33:06','2015-07-06 15:30:33','Maria','Mlynarska','Maria.Mlynarska@atoc.org','BA',58,'2015-11-24 15:28:31',NULL,NULL,1,1,1,'1 week','iPhone 6 Plus/8.2'),
	(365,'2015-07-06 14:33:06','2015-07-13 14:33:04','2015-07-06 15:32:46','Maria','Mlynarska','Maria.Mlynarska@atoc.org','BA',69,'2015-12-11 17:01:48',NULL,NULL,1,1,1,'1 week','Apple Watch'),
	(366,'2015-09-18 10:56:26','2015-10-19 10:56:23','2015-09-18 11:56:17','Thales','Thales','keith.stephens@atoc.org','Testing at Cheadle',39,'2015-11-26 12:51:40',NULL,NULL,1,1,1,'1 month','Samsung Galaxy Ace 2'),
	(367,'2015-09-18 10:59:39','2015-10-19 10:59:38','2015-09-18 11:59:32','Maria','Mlynarska','maria.Mlynarska@atoc.org','-',65,NULL,NULL,NULL,1,1,NULL,'1 month','Lumia 930'),
	(368,'2015-09-18 12:44:37','2015-10-19 12:44:35','2015-09-18 13:44:28','Gabriella','Hyla','gabriela.hyla@atoc.org','Testing',11,'2015-09-24 10:34:15',NULL,NULL,1,1,1,'1 month','iPad Air 1 iOS9.0'),
	(369,'2015-10-08 15:00:48','2015-11-08 15:00:44','2015-10-06 16:35:32','David','Grachvogel','david.grachvogel@atoc.org','Railcard Research',46,'2015-11-17 10:52:11',NULL,NULL,1,1,1,'1 month','Surface Pro 2'),
	(370,'2015-10-08 15:01:01','2015-11-08 15:00:49','2015-10-06 16:35:32','David','Grachvogel','david.grachvogel@atoc.org','Railcard Research',45,'2015-11-17 10:52:14',NULL,NULL,1,1,1,'1 month','Surface Pro 2'),
	(371,NULL,NULL,'2015-10-06 22:04:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),
	(372,'2015-10-08 14:58:38','2015-11-08 14:58:34','2015-10-07 09:00:04','David','Grachvogel','david.grachvogel@atoc.org','Railcard Research',11,'2015-11-17 10:54:58',NULL,NULL,1,1,1,'1 month','iPad Air 1 iOS8.4.1'),
	(373,NULL,NULL,'2015-10-07 15:53:52',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),
	(374,'2015-10-09 14:17:08','2015-11-09 14:17:06','2015-10-09 15:16:39','David','Grachvogel','david.grachvogel@atoc.org','TVM Testing',67,'2015-11-17 10:54:51',NULL,NULL,1,1,1,'1 month','iPad 2 3g 32GB iOS 7.0.4'),
	(375,'2015-10-09 14:17:46','2015-11-09 14:17:45','2015-10-09 15:17:41','david','grachvogel','david.grachvogel@atoc.org','TVM testing',68,'2015-11-17 10:55:03',NULL,NULL,1,1,1,'1 month','30 pin to USB cable - iPad 2 3g 32GB iOS 7.0.4'),
	(376,'2015-11-19 12:48:40','2015-12-20 12:48:38','2015-11-19 12:47:45','Thales','Testing ','keith.stephens@atoc.org','Testing at Cheadle',67,'2015-11-26 12:51:24',NULL,NULL,1,1,1,'1 month','iPad 2 3g 32GB iOS 7.0.4'),
	(377,'2015-11-19 12:48:38','2015-12-20 12:48:37','2015-11-19 12:48:23','Thales','Testing ','keith.stephens@atoc.org','Testing at Cheadle',60,'2015-11-26 12:51:22',NULL,NULL,1,1,1,'1 month','iPhone 4s/iOS8.2'),
	(378,'2015-11-24 15:29:09','2015-12-01 15:29:05','2015-11-24 15:28:56','Gabby','Hyler','Hyla, Gabriela <gabriela.hyla@atoc.org>','',58,'2015-12-18 14:01:56',NULL,NULL,1,1,1,'1 week','iPhone 6 Plus/8.2'),
	(379,'2015-12-01 12:12:53','2015-12-08 12:12:52','2015-12-01 11:38:45','Gabby','Hyla','gabriela.hyla@atoc.org','QA',38,'2015-12-15 10:19:03',NULL,NULL,1,1,1,'1 week','Samsung Galaxy S5'),
	(380,'2015-12-01 12:12:52','2015-12-08 12:12:50','2015-12-01 11:39:29','Gabby','Hyla','gabriela.hyla@atoc.org','QA',67,'2015-12-18 14:01:49',NULL,NULL,1,1,1,'1 week','iPad 2 3g 32GB iOS 7.0.4'),
	(381,'2015-12-01 12:12:50','2015-12-08 11:40:03','2015-12-01 11:39:59','Gabby','Hyla','gabriela.hyla@atoc.org','QA',60,'2015-12-18 14:01:32',NULL,NULL,1,1,1,'1 week','iPhone 4s/iOS8.2'),
	(382,'2015-12-15 10:25:02','2015-12-22 10:25:00','2015-12-15 10:21:32','Gabby','Hyla','gabriela.hyla@atoc.org','QA',70,NULL,NULL,NULL,1,1,NULL,'1 week','iPhone 6 iOS9 Beta4'),
	(383,'2015-12-15 10:25:00','2015-12-22 10:24:58','2015-12-15 10:22:28','Gabby','Hyla','gabriela.hyla@atoc.org','QA',59,'2015-12-18 14:01:11',NULL,NULL,1,1,1,'1 week','iPhone 5s/iOS8.0.2'),
	(384,'2016-01-12 10:08:37','2016-01-19 10:08:34','2016-01-12 09:55:46','Gabi','Hyla','gabriela.hyla@atoc.org','Testing',11,'2016-05-20 13:19:28',NULL,NULL,1,1,1,'1 week','iPad Air 1 iOS 9.0'),
	(385,'2016-01-12 10:08:34','2016-01-19 10:08:33','2016-01-12 09:57:37','Gabi','Hyla','gabriela.hyla@atoc.org','Testing',60,'2016-03-24 11:02:49',NULL,NULL,1,1,1,'1 week','iPhone 4s/iOS8.2'),
	(386,'2016-01-12 10:08:33','2016-01-19 10:08:33','2016-01-12 09:58:36','Gabi','Hyla','gabriela.hyla@atoc.org','Testing',67,'2016-05-20 13:21:32',NULL,NULL,1,1,1,'1 week','iPad 2 3g 32GB iOS 7.0.4'),
	(387,'2016-01-12 10:08:32','2016-01-19 10:08:32','2016-01-12 09:59:22','Gabi','Hyla','gabriela.hyla@atoc.org','Testing',59,'2016-03-24 11:56:02',NULL,NULL,1,1,1,'1 week','iPhone 5s/iOS8.0.2'),
	(388,'2016-01-12 10:08:32','2016-01-19 10:08:30','2016-01-12 10:00:11','Gabi','Hyla','gabriela.hyla@atoc.org','Testing',38,NULL,NULL,NULL,1,1,NULL,'1 week','Samsung Galaxy S5'),
	(389,'2016-01-12 10:08:30','2016-01-19 10:08:28','2016-01-12 10:02:03','Gabi','Hyla','gabriela.hyla@atoc.org','Testing ',58,'2016-03-24 11:01:52',NULL,NULL,1,1,1,'1 week','iPhone 6 Plus/8.2'),
	(390,'2016-01-18 15:35:31','2016-02-18 15:35:24','2016-01-18 15:34:45','Viraj','Vas','viraj.vjas@thalesgroup.org','Testing alternate TOC selector issue',35,'2016-04-08 08:50:31',NULL,NULL,1,1,1,'1 month','HTC One (M8)'),
	(391,'2016-01-26 10:11:35','2016-02-26 10:11:15','2016-01-18 15:34:55','Viraj','Vas','viraj.vjas@thalesgroup.org','Testing alternate TOC selector issue',35,'2016-04-08 08:50:37',NULL,NULL,1,1,1,'1 month','HTC One (M8)'),
	(392,'2016-02-16 13:33:26','2016-03-18 13:33:21','2016-02-16 12:48:35','John','Horncastle','john.horncastle@Atoc.org','Ongoing validation of App bug reports',62,'2016-02-16 13:33:27',NULL,NULL,1,1,1,'1 month','Lumia 530'),
	(393,'2016-02-16 13:33:21','2016-03-18 13:33:15','2016-02-16 12:48:35','John','Horncastle','john.horncastle@Atoc.org','Ongoing validation of App bug reports',61,'2016-02-17 14:14:40',NULL,NULL,1,1,1,'1 month','Lumia 530'),
	(394,'2016-02-17 14:15:23','2016-03-19 14:15:22','2016-02-17 14:15:16','John','Horncastle','john.horncastle@atoc.org','SDM',52,'2016-02-20 01:13:43',NULL,NULL,1,1,1,'1 month','Lumia 625'),
	(395,'2016-03-24 11:54:36','2016-04-24 11:54:22','2016-03-24 11:00:54','Mark','Shields','keith.stephens@atoc.org','QA at Thales',78,'2016-03-24 11:54:38',NULL,NULL,1,1,1,'1 month','Apple Watch watchOS 2.0'),
	(396,'2016-03-24 11:54:43','2016-04-24 11:54:38','2016-03-24 11:02:24','Mark','Shields','keith.stephens@atoc.org','Thales QA',58,'2016-03-24 11:54:43',NULL,NULL,1,1,1,'1 month','iPhone 6 Plus/8.2'),
	(397,'2016-03-24 11:55:08','2016-04-24 11:54:43','2016-03-24 11:03:18','Mark','Shields','keith.stephens@atoc.org','Thales QA',60,'2016-04-08 08:49:47',NULL,NULL,1,1,1,'1 month','iPhone 4s/iOS8.2'),
	(398,'2016-03-31 08:25:43','2016-04-07 08:25:41','2016-03-31 09:25:34','Karen','Elliot','Karen.Elliott@atoc.org','Web Testing',18,'2016-04-04 09:42:01',NULL,NULL,1,1,1,'1 week','Lumia 925'),
	(399,'2016-03-31 10:12:15','2016-04-07 10:12:14','2016-03-31 11:12:10','Gabby','Hyla','gabriela.hyla@atoc.org','QA with Watch',57,NULL,NULL,NULL,1,1,NULL,'1 week','iPhone 6'),
	(400,'2016-03-31 10:13:05','2016-04-07 10:13:04','2016-03-31 11:12:43','Gabby','Hyla','gabriela.hyla@atoc.org','QA',69,'2016-11-14 12:01:34',NULL,NULL,1,1,1,'1 week','Apple Watch'),
	(401,'2016-03-31 10:13:04','2016-04-07 10:13:02','2016-03-31 11:12:59','Gabby','Hyla','gabriela.hyla@atoc.org','QA',78,'2016-05-20 13:21:48',NULL,NULL,1,1,1,'1 week','Apple Watch watchOS 2.0'),
	(402,'2016-04-08 09:00:10','2016-05-09 09:00:08','2016-04-08 10:00:03','Gabi','Hyla','gabriela.hyla@atoc.org','Work Phone ',81,NULL,NULL,NULL,1,1,NULL,'1 month','iPhone SE 16Gb'),
	(403,'2016-05-20 13:27:39','2016-06-20 13:27:38','2016-05-20 14:27:25','Gabby','Hyla','gabriela.hyla@atoc.org','QA',82,'2016-10-24 10:10:30',NULL,NULL,1,1,1,'1 month','Samsung Galaxy S6 Android 5.0.2'),
	(404,'2016-08-01 08:28:10','2016-09-01 08:27:27','2016-06-14 12:01:08','John','Horncastle','John.Horncastle@atoc.org','PM QA',63,NULL,NULL,NULL,1,1,NULL,'1 month','Lumia 1320'),
	(405,NULL,NULL,'2016-07-08 09:26:38','gabi','hyla','gabriela.hyla@atoc.org','QA',60,NULL,NULL,NULL,1,NULL,NULL,'1 week','iPhone 4s/iOS8.2'),
	(406,'2016-07-13 10:58:57','2016-07-15 10:58:53','2016-07-13 11:58:41','John','Horn castle','john.horncastle@atoc.org','QA',83,NULL,NULL,NULL,1,1,NULL,'2 days','Lumia 950XL Windows 10'),
	(407,'2016-07-13 11:10:53','2016-07-15 11:10:51','2016-07-13 12:10:45','John','Horncastle','john.horncastle@atoc.org','QA',85,NULL,NULL,NULL,1,1,NULL,'2 days','Lumia 950XL PSU'),
	(408,'2016-08-01 08:28:21','2016-08-01 20:28:11','2016-07-19 10:23:51','Scharlie','Robinson','scharlie.robinson@atoc.com','Testing an Ipad specific issue on Railcard website.',2,'2016-08-01 08:28:28',NULL,NULL,1,1,1,'0.5 days','iPad 1 iOS6.1.1'),
	(409,'2016-08-01 09:20:44','2016-08-01 21:20:27','2016-07-21 14:30:12','Scharlie','Robinson','scharlie.robinson@atoc.org','Needed on the 2nd August',8,'2016-08-01 09:20:53',NULL,NULL,1,1,1,'0.5 days','iPad 4'),
	(410,'2016-08-01 09:20:50','2016-08-01 21:20:44','2016-07-21 14:30:12','Scharlie','Robinson','scharlie.robinson@atoc.org','Needed on the 2nd August',1,'2016-08-01 09:20:52',NULL,NULL,1,1,1,'0.5 days','iPad 4'),
	(411,'2016-08-01 10:42:37','2016-08-01 22:42:37','2016-07-21 14:32:50','Scharlie','Robinson','scharlie.robinson@atoc.org','Needed for 2nd August - testing',34,'2016-08-10 09:38:23',NULL,NULL,1,1,1,'0.5 days','Samsung Galaxy Tab 10.1 16GB'),
	(412,'2016-08-01 10:42:36','2016-08-01 22:42:36','2016-07-21 14:32:50','Scharlie','Robinson','scharlie.robinson@atoc.org','Needed for 2nd August - testing',33,'2016-08-10 09:38:25',NULL,NULL,1,1,1,'0.5 days','Samsung Galaxy Tab 10.1 16GB'),
	(413,'2016-08-01 10:42:36','2016-08-01 22:42:34','2016-07-21 14:32:50','Scharlie','Robinson','scharlie.robinson@atoc.org','Needed for 2nd August - testing',32,'2016-08-10 09:38:27',NULL,NULL,1,1,1,'0.5 days','Samsung Galaxy Tab 10.1 16GB'),
	(414,'2016-08-01 10:42:34','2016-08-01 22:42:33','2016-08-01 10:29:44','Scharlie','Robinson','scharlie.robinson@atoc.org','QA',11,'2016-08-10 09:38:33',NULL,NULL,1,1,1,'0.5 days','iPad Air 1 16Gb iOS 8.4.1'),
	(415,'2016-08-01 10:42:33','2016-08-01 22:42:31','2016-08-01 10:30:57','Scharlie','Robinson','scharlie.robinson@atoc.org','QA',8,'2016-08-10 09:38:35',NULL,NULL,1,1,1,'0.5 days','USB Power Supply Unit (iPad 4)'),
	(416,'2016-08-11 15:09:01','2016-08-18 15:08:59','2016-08-11 16:08:52','Vishal','Raval','vishal.raval@atoc.org','TOC App testing',57,'2016-10-14 08:30:58',NULL,NULL,1,1,1,'1 week','iPhone 6 16Gb iOS 9.3.3'),
	(417,'2016-09-14 13:09:43','2016-09-21 13:09:41','2016-09-14 14:09:34','Manuella','Mossa','Manuela.Mossa@atoc.org','QA',58,'2016-10-14 08:30:55',NULL,NULL,1,1,1,'1 week','iPhone 6 Plus/8.2'),
	(418,'2016-10-25 09:02:11','2016-11-25 09:01:57','2016-09-15 15:51:10','Viraj','Vas','Viraj.VYAS@uk.thalesgroup.com','QA in Stockport',70,'2016-10-25 09:02:18',NULL,NULL,1,1,1,'1 month','iPhone 6 iOS10'),
	(419,'2016-09-15 14:51:27','2016-10-16 14:51:22','2016-09-15 15:51:12','Viraj','Vas','Viraj.VYAS@uk.thalesgroup.com','QA in Stockport',70,'2016-10-25 09:02:15',NULL,NULL,1,1,1,'1 month','iPhone 6 iOS10'),
	(420,NULL,NULL,'2016-09-15 15:51:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),
	(421,'2016-10-24 10:11:25','2016-11-24 10:11:23','2016-10-24 11:11:17','Keith','Stephens','keith.stephens@raildeliverygroup.com','QA',82,'2017-01-16 12:56:50',NULL,NULL,1,1,1,'1 month','Samsung Galaxy S6 Android 5.0.2'),
	(422,'2016-10-25 11:10:45','2016-10-27 11:06:05','2016-10-25 12:04:41','Manuela','Mossa','manuela.mossa@raildeliverygroup.com','Testing ',8,'2016-10-25 11:10:49',NULL,NULL,1,1,1,'2 days','iPad 4'),
	(423,'2016-10-25 11:10:47','2016-10-27 11:10:45','2016-10-25 12:04:41','Manuela','Mossa','manuela.mossa@raildeliverygroup.com','Testing ',1,'2016-10-25 11:10:48',NULL,NULL,1,1,1,'2 days','iPad 4'),
	(424,'2016-10-25 11:12:20','2016-11-01 11:12:18','2016-10-25 12:11:32','Manu','Mossa','Manuela.Mossa@raildeliverygroup.com','QA',77,'2016-10-28 09:51:05',NULL,NULL,1,1,1,'1 week','iPad Pro 12.9 128Gb 4G iOS 9.2'),
	(425,'2016-10-25 11:12:18','2016-11-01 11:12:16','2016-10-25 12:12:09','Manu','Mossa','Manuela.Mossa@raildeliverygroup.com','QA',11,'2016-10-28 09:50:40',NULL,NULL,1,1,1,'1 week','iPad Air 1 16Gb iOS 8.4.1'),
	(426,'2016-10-28 09:51:57','2016-11-28 09:51:56','2016-10-28 10:51:39','Kirstie','O\'COnnell','Kirstie.OConnell@raildeliverygroup.com','QA',77,NULL,NULL,NULL,1,1,NULL,'1 month','iPad Pro 12.9 128Gb 4G iOS 9.2'),
	(427,'2016-11-09 16:15:17','2016-11-16 15:13:34','2016-11-09 13:47:02','Kirstie','O\'Connell','kirstie.oconnell@raildeliverygroup.com','Notifications when arriving at station testing',57,NULL,NULL,NULL,1,1,NULL,'1 week','iPhone 6 16Gb iOS 9.3.3'),
	(428,'2016-11-09 16:16:11','2016-12-10 16:16:09','2016-11-09 16:16:05','Maria','Mlynarska','maria.Mlynarska@atoc.org','BA',76,NULL,NULL,NULL,1,1,NULL,'1 month','Samsung Galaxy S4'),
	(429,'2016-11-14 11:59:48','2016-11-21 11:59:41','2016-11-14 11:36:11','Kirstie','O\'Connell','kirstie.oconnell@raildeliverygroup.com','App Notification testing',58,NULL,NULL,NULL,1,1,NULL,'1 week','iPhone 6 Plus/10.0'),
	(430,'2016-11-14 12:02:18','2016-11-21 12:02:16','2016-11-14 12:02:09','Kirstie','O\'COnnell','Kirstie.OConnell@raildeliverygroup.com','QA',69,NULL,NULL,NULL,1,1,NULL,'1 week','Apple Watch (Black)'),
	(431,'2017-01-16 12:58:56','2017-02-16 12:58:54','2017-01-16 12:58:48','Kirstie','O\'Connell','Kirstie.OConnell@raildeliverygroup.com','QA',82,NULL,NULL,NULL,1,1,NULL,'1 month','Samsung Galaxy S6 Android 5.1.1');

/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table location
# ------------------------------------------------------------

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;

INSERT INTO `status` (`id`, `status`)
VALUES
	(1,'Available'),
	(2,'On loan'),
	(3,'Reserved'),
	(4,'Booked for Collection');

/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `firstname`, `surname`, `password`, `access`)
VALUES
	(1,'keith.stephens@atoc.org','Keith','Stephens','ferret',20),
	(2,'kirstie.oconnell@atoc.org','Kirstie','OConnell','password',10);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
