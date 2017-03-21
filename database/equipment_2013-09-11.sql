# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.28)
# Database: equipment
# Generation Time: 2013-09-11 20:19:13 +0000
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;

INSERT INTO `items` (`id`, `name`, `status_id`, `location_id`, `serial`, `image`, `image_thumb`)
VALUES
	(1,'iPad 4',1,1,'1234','ipad-4-white.jpg','ipad-4-white_thumb.jpg'),
	(2,'iPad 1-1',2,2,'4567',NULL,NULL),
	(3,'Samsung Galaxy Tab',1,1,'43234324',NULL,NULL),
	(4,'IPad 1-2',1,1,'3e343',NULL,NULL),
	(5,'iPad Mini',1,1,'776',NULL,NULL),
	(6,'Samsung Windows Slate PC',3,2,'4435345',NULL,NULL),
	(7,'Lightning to USB Cable',2,1,'-','Lighting-to-usb.jpg','Lighting-to-usb_thumb.jpg'),
	(8,'Apple USB Power Supply Unit',1,1,'-','Apple-USB-PSU.jpg','Apple-USB-PSU_thumb.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;

INSERT INTO `loans` (`id`, `date_out`, `date_due_in`, `date_requested`, `firstname`, `surname`, `email`, `purpose`, `item_id`)
VALUES
	(20,'2013-08-28 15:38:52','2013-08-29 15:38:52','2013-08-27 15:38:52','Firstname','Surname','kstephens1@gmail.com','blah',2),
	(21,NULL,NULL,'2013-08-27 16:10:07','Firstname','Surname','kstephens1@gmail.com','blah',NULL);

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
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;

INSERT INTO `status` (`id`, `status`)
VALUES
	(1,'Available'),
	(2,'On loan'),
	(3,'Reserved');

/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
