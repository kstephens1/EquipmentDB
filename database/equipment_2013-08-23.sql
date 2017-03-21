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

 Date: 08/23/2013 17:20:09 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `equipment`
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `serial` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `equipment`
-- ----------------------------
BEGIN;
INSERT INTO `equipment` VALUES ('1', 'iPad 4', '1', '1', '1234'), ('2', 'iPad 1-1', '2', '2', '4567'), ('3', 'Samsung Galaxy Tab', '1', '1', '43234324'), ('4', 'IPad 1-2', '1', '1', '3e343'), ('5', 'iPad Mini', '1', '1', '776'), ('6', 'Samsung Windows Slate PC', '1', '2', '4435345');
COMMIT;

-- ----------------------------
--  Table structure for `loans`
-- ----------------------------
DROP TABLE IF EXISTS `loans`;
CREATE TABLE `loans` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `date_out` datetime DEFAULT NULL,
  `date_due_in` datetime DEFAULT NULL,
  `date_requested` datetime DEFAULT NULL,
  `loan_purpose` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `status`
-- ----------------------------
BEGIN;
INSERT INTO `status` VALUES ('1', 'Available'), ('2', 'On loan');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
