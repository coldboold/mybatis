/*
Navicat MySQL Data Transfer

Source Server         : local-mysql
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : sy

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2014-11-19 18:38:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbug`
-- ----------------------------
DROP TABLE IF EXISTS `tbug`;
CREATE TABLE `tbug` (
  `id` varchar(11) NOT NULL,
  `createdatetime` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbug
-- ----------------------------

-- ----------------------------
-- Table structure for `tmenu`
-- ----------------------------
DROP TABLE IF EXISTS `tmenu`;
CREATE TABLE `tmenu` (
  `id` varchar(11) NOT NULL,
  `iconcls` varchar(255) DEFAULT NULL,
  `seq` decimal(10,0) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmenu
-- ----------------------------

-- ----------------------------
-- Table structure for `tonline`
-- ----------------------------
DROP TABLE IF EXISTS `tonline`;
CREATE TABLE `tonline` (
  `id` varchar(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `logindatetime` date DEFAULT NULL,
  `loginname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tonline
-- ----------------------------

-- ----------------------------
-- Table structure for `tresource`
-- ----------------------------
DROP TABLE IF EXISTS `tresource`;
CREATE TABLE `tresource` (
  `id` varchar(11) NOT NULL,
  `seq` decimal(10,0) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tresource
-- ----------------------------

-- ----------------------------
-- Table structure for `trole`
-- ----------------------------
DROP TABLE IF EXISTS `trole`;
CREATE TABLE `trole` (
  `id` varchar(11) NOT NULL DEFAULT '0',
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trole
-- ----------------------------

-- ----------------------------
-- Table structure for `trole_tresource`
-- ----------------------------
DROP TABLE IF EXISTS `trole_tresource`;
CREATE TABLE `trole_tresource` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `resource_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trole_tresource
-- ----------------------------

-- ----------------------------
-- Table structure for `tuser`
-- ----------------------------
DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `id` varchar(11) NOT NULL,
  `createdatetime` date DEFAULT NULL,
  `modifydatetime` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser
-- ----------------------------

-- ----------------------------
-- Table structure for `tuser_trole`
-- ----------------------------
DROP TABLE IF EXISTS `tuser_trole`;
CREATE TABLE `tuser_trole` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `role_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser_trole
-- ----------------------------
