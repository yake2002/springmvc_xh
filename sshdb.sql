/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50638
Source Host           : localhost:3306
Source Database       : sshdb

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-02-05 19:25:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acct_authority
-- ----------------------------
DROP TABLE IF EXISTS `acct_authority`;
CREATE TABLE `acct_authority` (
  `id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acct_authority
-- ----------------------------
INSERT INTO `acct_authority` VALUES ('001', '789');
INSERT INTO `acct_authority` VALUES ('b6d3ceb9-eae9-43a6-9064-424db8c53208', '查看用户');
INSERT INTO `acct_authority` VALUES ('29a366b9-bbbf-47e4-a0c2-26eec58b1822', '添加用户');

-- ----------------------------
-- Table structure for acct_role
-- ----------------------------
DROP TABLE IF EXISTS `acct_role`;
CREATE TABLE `acct_role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acct_role
-- ----------------------------
INSERT INTO `acct_role` VALUES ('b432d31d-ebd2-4e91-9184-1b3769e6686b', 'admin');

-- ----------------------------
-- Table structure for acct_role_authority
-- ----------------------------
DROP TABLE IF EXISTS `acct_role_authority`;
CREATE TABLE `acct_role_authority` (
  `role_id` varchar(36) NOT NULL,
  `authority_id` varchar(36) NOT NULL,
  PRIMARY KEY (`role_id`,`authority_id`),
  CONSTRAINT `FK_2bco2heyfuuodjlxb1y1oav81` FOREIGN KEY (`role_id`) REFERENCES `acct_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acct_role_authority
-- ----------------------------
INSERT INTO `acct_role_authority` VALUES ('b432d31d-ebd2-4e91-9184-1b3769e6686b', '29a366b9-bbbf-47e4-a0c2-26eec58b1822');
INSERT INTO `acct_role_authority` VALUES ('b432d31d-ebd2-4e91-9184-1b3769e6686b', 'b6d3ceb9-eae9-43a6-9064-424db8c53208');

-- ----------------------------
-- Table structure for acct_user
-- ----------------------------
DROP TABLE IF EXISTS `acct_user`;
CREATE TABLE `acct_user` (
  `id` varchar(36) NOT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acct_user
-- ----------------------------
INSERT INTO `acct_user` VALUES ('14ff5253-5912-4a3f-b51b-f50d9da0271d', 'andy', '13022221111', '2018-02-02 18:58:12');
INSERT INTO `acct_user` VALUES ('6e5afb1d-50e1-45fe-b6fe-b9e399415387', 'andy', '15147174722', '2015-02-06 17:06:36');

-- ----------------------------
-- Table structure for acct_user_role
-- ----------------------------
DROP TABLE IF EXISTS `acct_user_role`;
CREATE TABLE `acct_user_role` (
  `user_id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_gd0hahfsqct79bsfxx70oli30` (`role_id`),
  CONSTRAINT `FK_fqvt7bddsoq4lc9b7vpwlnbxu` FOREIGN KEY (`user_id`) REFERENCES `acct_user` (`id`),
  CONSTRAINT `FK_gd0hahfsqct79bsfxx70oli30` FOREIGN KEY (`role_id`) REFERENCES `acct_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acct_user_role
-- ----------------------------
INSERT INTO `acct_user_role` VALUES ('6e5afb1d-50e1-45fe-b6fe-b9e399415387', 'b432d31d-ebd2-4e91-9184-1b3769e6686b');
