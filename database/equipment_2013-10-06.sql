/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50519
 Source Host           : localhost
 Source Database       : equipment

 Target Server Type    : MySQL
 Target Server Version : 50519
 File Encoding         : utf-8

 Date: 10/06/2013 21:32:45 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `items`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `items`
-- ----------------------------
BEGIN;
INSERT INTO `items` VALUES ('1', 'iPad 4', '4', '1', '1234', 'ipad-4-white.jpg', 'ipad-4-white_thumb.jpg'), ('2', 'iPad 1-1', '1', '2', '4567', null, null), ('3', 'Samsung Galaxy Tab', '1', '1', '43234324', null, null), ('4', 'IPad 1-2', '1', '1', '3e343', null, null), ('5', 'iPad Mini', '1', '1', '776', null, null), ('6', 'Samsung Windows Slate PC', '3', '2', '4435345', null, null), ('7', 'Lightning to USB Cable', '4', '1', '-', 'Lighting-to-usb.jpg', 'Lighting-to-usb_thumb.jpg'), ('8', 'Apple USB Power Supply Unit', '4', '1', '-', 'Apple-USB-PSU.jpg', 'Apple-USB-PSU_thumb.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `linked_items`
-- ----------------------------
DROP TABLE IF EXISTS `linked_items`;
CREATE TABLE `linked_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `linked_items`
-- ----------------------------
BEGIN;
INSERT INTO `linked_items` VALUES ('1', '7', '1'), ('2', '1', '7'), ('3', '1', '8'), ('4', '8', '1'), ('5', '7', '8'), ('6', '8', '7');
COMMIT;

-- ----------------------------
--  Table structure for `loans`
-- ----------------------------
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
  `booked` bit(1) DEFAULT NULL,
  `loaned` bit(1) DEFAULT NULL,
  `returned` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `loans`
-- ----------------------------
BEGIN;
INSERT INTO `loans` VALUES ('199', null, null, '2013-10-05 21:56:08', 'Firstname', 'Surname', 'kstephens1@gmail.com', 'blah', '5', null, null, null, null, null, null), ('200', null, null, '2013-10-05 22:55:06', 'Firstname', 'Surname', 'kstephens1@gmail.com', 'blah', '3', null, null, null, null, null, null), ('201', null, null, '2013-10-05 22:56:15', null, null, null, null, null, null, null, null, null, null, null), ('202', null, null, '2013-10-05 22:57:56', 'Firstname', 'Surname', 'kstephens1@gmail.com', 'blah', '4', null, null, null, null, null, null), ('203', null, null, '2013-10-05 23:02:42', 'Firstname', 'Surname', 'kstephens1@gmail.com', 'blah', '7', null, null, null, null, null, null), ('204', null, null, '2013-10-05 23:02:42', 'Firstname', 'Surname', 'kstephens1@gmail.com', 'blah', '8', null, null, null, null, null, null), ('205', null, null, '2013-10-05 23:02:42', 'Firstname', 'Surname', 'kstephens1@gmail.com', 'blah', '1', null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `location`
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `status`
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `status`
-- ----------------------------
BEGIN;
INSERT INTO `status` VALUES ('1', 'Available'), ('2', 'On loan'), ('3', 'Reserved'), ('4', 'Booked for Collection');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
