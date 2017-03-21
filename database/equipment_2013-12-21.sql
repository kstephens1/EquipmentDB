# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.19)
# Database: equipment
# Generation Time: 2013-12-21 22:08:48 +0000
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
	(1,'iPad 4',1,1,'1234','ipad-4-white.jpg','ipad-4-white_thumb.jpg',1),
	(2,'iPad 1',1,2,'4567','ipad-1-black.jpg','ipad-1-black_thumb.jpg',1),
	(3,'Samsung Galaxy Tab',1,1,'43234324','samsung-galaxy-tab.jpg','samsung-galaxy-tab_thumb.jpg',1),
	(4,'iPad 1',1,1,'3e343','ipad-1-black.jpg','ipad-1-black_thumb.jpg',1),
	(5,'iPad Mini',1,1,'776','ipad-mini-black.jpg','ipad-mini-black_thumb.jpg',1),
	(6,'Samsung Windows Slate PC',1,2,'4435345',NULL,NULL,1),
	(7,'Lightning to USB Cable',1,1,'-','Lighting-to-usb.jpg','Lighting-to-usb_thumb.jpg',1),
	(8,'Apple USB Power Supply Unit',1,1,'-','Apple-USB-PSU.jpg','Apple-USB-PSU_thumb.jpg',1);

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
	(1,7,1),
	(2,1,7),
	(3,1,8),
	(4,8,1),
	(5,7,8),
	(6,8,7);

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
	(232,'2013-10-07 17:11:02','2013-10-14 17:11:00','2013-10-07 17:10:57','Firstname','Surname','kstephens1@gmail.com','blah',3,'2013-10-07 17:14:33',NULL,NULL,1,1,1,'1 week','Samsung Galaxy Tab'),
	(233,'2013-10-07 17:14:25','2013-10-09 17:14:22','2013-10-07 17:12:45','Firstname','Surname','kstephens1@gmail.com','blah',5,'2013-10-07 17:14:44',NULL,NULL,1,1,1,'2 days','iPad Mini'),
	(234,'2013-10-07 17:14:55','2013-10-14 17:14:54','2013-10-07 17:14:51','Firstname','Surname','kstephens1@gmail.com','blah',3,'2013-10-07 17:14:57',NULL,NULL,1,1,1,'1 week','Samsung Galaxy Tab'),
	(235,'2013-10-07 17:33:57','2013-10-14 17:33:53','2013-10-07 17:33:51','Firstname','Surname','kstephens1@gmail.com','blah',7,'2013-10-07 17:34:08',NULL,NULL,1,1,1,'1 week','iPad 4'),
	(236,'2013-10-07 17:33:58','2013-10-14 17:33:57','2013-10-07 17:33:51','Firstname','Surname','kstephens1@gmail.com','blah',8,'2013-10-07 17:34:16',NULL,NULL,1,1,1,'1 week','iPad 4'),
	(237,'2013-10-07 17:33:58','2013-10-14 17:33:58','2013-10-07 17:33:51','Firstname','Surname','kstephens1@gmail.com','blah',1,'2013-10-07 17:34:21',NULL,NULL,1,1,1,'1 week','iPad 4'),
	(238,'2013-10-07 17:34:43','2013-10-08 05:34:41','2013-10-07 17:34:29','Firstname','Surname','kstephens1@gmail.com','blah',7,'2013-10-07 17:35:08',NULL,NULL,1,1,1,'0.5 days','iPad 4'),
	(239,'2013-10-07 17:35:02','2013-10-08 05:34:59','2013-10-07 17:34:29','Firstname','Surname','kstephens1@gmail.com','blah',8,'2013-10-07 17:35:11',NULL,NULL,1,1,1,'0.5 days','iPad 4'),
	(240,'2013-10-07 17:34:54','2013-10-08 05:34:51','2013-10-07 17:34:29','Firstname','Surname','kstephens1@gmail.com','blah',1,'2013-10-07 17:35:16',NULL,NULL,1,1,1,'0.5 days','iPad 4'),
	(241,'2013-10-07 17:38:56','2013-10-08 05:38:54','2013-10-07 17:38:48','Firstname','Surname','kstephens1@gmail.com','blah',7,'2013-10-13 21:46:33',NULL,NULL,1,1,1,'0.5 days','iPad 4'),
	(242,'2013-10-13 21:46:38','2013-10-14 09:46:33','2013-10-07 17:38:48','Firstname','Surname','kstephens1@gmail.com','blah',8,'2013-10-13 21:46:42',NULL,NULL,1,1,1,'0.5 days','iPad 4'),
	(243,'2013-10-13 21:45:32','2013-10-14 09:45:20','2013-10-07 17:38:48','Firstname','Surname','kstephens1@gmail.com','blah',1,'2013-10-13 21:45:44',NULL,NULL,1,1,1,'0.5 days','iPad 4'),
	(244,NULL,NULL,'2013-10-07 17:42:41','Firstname','Surname','kstephens1@gmail.com','blah',2,NULL,NULL,NULL,1,NULL,NULL,'0.5 days','iPad 1-1'),
	(245,NULL,NULL,'2013-10-07 17:45:32','Firstname','Surname','kstephens1@gmail.com','blah',2,NULL,NULL,NULL,1,NULL,NULL,'0.5 days','iPad 1-1'),
	(246,NULL,NULL,'2013-10-07 17:45:42','Firstname','Surname','kstephens1@gmail.com','blah',2,NULL,NULL,NULL,1,NULL,NULL,'0.5 days','iPad 1-1'),
	(247,'2013-10-13 21:45:58','2013-10-14 09:45:53','2013-10-07 17:45:53','Firstname','Surname','kstephens1@gmail.com','blah',2,'2013-10-13 21:46:03',NULL,NULL,1,1,1,'0.5 days','iPad 1-1'),
	(248,NULL,NULL,'2013-10-07 22:01:50','Firstname','Surname','kstephens1@gmail.com','blah',3,NULL,NULL,NULL,1,NULL,NULL,'0.5 days','Samsung Galaxy Tab'),
	(249,'2013-10-13 21:46:15','2013-10-14 09:46:08','2013-10-07 22:03:14','Firstname','Surname','kstephens1@gmail.com','blah',3,'2013-10-13 21:46:17',NULL,NULL,1,1,1,'0.5 days','Samsung Galaxy Tab'),
	(250,NULL,NULL,'2013-10-07 22:07:04','Firstname','Surname','kstephens1@gmail.com','blah',4,NULL,NULL,NULL,1,NULL,NULL,'0.5 days','IPad 1-2'),
	(251,'2013-10-13 21:45:18','2013-10-14 09:45:16','2013-10-07 22:11:58','Firstname','Surname','kstephens1@gmail.com','blah',4,'2013-10-13 21:45:25',NULL,NULL,1,1,1,'0.5 days','IPad 1-2'),
	(252,'2013-10-13 21:45:16','2013-10-14 09:45:15','2013-10-07 22:12:47','Firstname','Surname','kstephens1@gmail.com','blah',4,'2013-10-13 21:45:16',NULL,NULL,1,1,1,'0.5 days','IPad 1-2'),
	(253,'2013-10-13 21:45:15','2013-10-14 09:45:14','2013-10-07 22:22:21','Firstname','Surname','kstephens1@gmail.com','blah',4,'2013-10-13 21:45:15',NULL,NULL,1,1,1,'0.5 days','IPad 1-2'),
	(254,'2013-10-13 21:45:14','2013-10-14 09:45:13','2013-10-07 22:22:38','Firstname','Surname','kstephens1@gmail.com','blah',4,'2013-10-13 21:45:14',NULL,NULL,1,1,1,'0.5 days','IPad 1-2'),
	(255,'2013-10-13 21:45:13','2013-10-14 09:45:12','2013-10-07 22:22:46','Firstname','Surname','kstephens1@gmail.com','blah',4,'2013-10-13 21:45:13',NULL,NULL,1,1,1,'0.5 days','IPad 1-2'),
	(256,'2013-10-13 21:45:12','2013-10-14 09:45:11','2013-10-07 22:23:20','Firstname','Surname','kstephens1@gmail.com','blah',4,'2013-10-13 21:45:12',NULL,NULL,1,1,1,'0.5 days','IPad 1-2'),
	(257,'2013-10-13 21:45:10','2013-10-14 09:45:09','2013-10-07 22:23:30','Firstname','Surname','kstephens1@gmail.com','blah',4,'2013-10-13 21:45:11',NULL,NULL,1,1,1,'0.5 days','IPad 1-2'),
	(258,'2013-10-10 00:32:31','2013-10-10 12:32:29','2013-10-09 20:13:03','Firstname','Surname','kstephens1@gmail.com','blah',5,'2013-10-10 00:32:42',NULL,NULL,1,1,1,'0.5 days','iPad Mini'),
	(259,NULL,NULL,'2013-10-09 21:36:44','test',NULL,'keith.stephens@atoc.org',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),
	(260,NULL,NULL,'2013-10-09 21:41:14','Firstname',NULL,'keith.stephens@atoc.org',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL),
	(261,'2013-10-10 00:32:33','2013-10-10 12:32:31','2013-10-10 00:12:06','Firstname','Surname','kstephens1@gmail.com','blah',6,'2013-10-10 00:32:34',NULL,NULL,1,1,1,'0.5 days','Samsung Windows Slate PC'),
	(262,'2013-10-13 21:45:08','2013-10-14 09:45:06','2013-10-13 21:44:41','Firstname','Surname','kstephens1@gmail.com','blah',5,'2013-10-13 21:45:09',NULL,NULL,1,1,1,'0.5 days','iPad Mini'),
	(263,'2013-11-15 17:05:16','2013-11-16 05:05:15','2013-10-13 22:04:13','Firstname','Surname','kstephens1@gmail.com','blah',7,'2013-11-15 17:05:16',NULL,NULL,1,1,1,'0.5 days','iPad 4'),
	(264,'2013-11-15 17:05:14','2013-11-16 05:05:13','2013-10-13 22:04:13','Firstname','Surname','kstephens1@gmail.com','blah',8,'2013-11-15 17:05:15',NULL,NULL,1,1,1,'0.5 days','iPad 4'),
	(265,'2013-11-15 17:05:12','2013-11-16 05:05:11','2013-10-13 22:04:13','Firstname','Surname','kstephens1@gmail.com','blah',1,'2013-11-15 17:05:14',NULL,NULL,1,1,1,'0.5 days','iPad 4');

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
	(1,'keith.stephens@atoc.org','Keith','Stephens','password',20),
	(2,'kirstie.oconnell@atoc.org','Kirstie','OConnell','password',10);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
