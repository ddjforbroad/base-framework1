/*
 Navicat Premium Data Transfer

 Source Server         : ddj
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost
 Source Database       : king

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : utf-8

 Date: 05/26/2020 23:45:15 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_sys_appoint`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_appoint`;
CREATE TABLE `t_sys_appoint` (
  `appoint_id` varchar(15) NOT NULL COMMENT '年月日+流水号\r\n            \r\n            也可以计算 前面还有多少人',
  `user_id` varchar(32) DEFAULT NULL,
  `user_name` varchar(15) DEFAULT NULL,
  `outpatient_id` varchar(32) DEFAULT NULL,
  `appoint_date` date DEFAULT NULL,
  `appoint_stage` char(1) DEFAULT NULL,
  `appoint_stage_name` varchar(15) DEFAULT NULL,
  `appoint_status` char(1) DEFAULT NULL,
  `cancel_id` varchar(32) DEFAULT NULL COMMENT '可以是医生 也可以是用户',
  `cancel_name` varchar(15) DEFAULT NULL,
  `medical_advice` varchar(255) DEFAULT NULL COMMENT '医嘱',
  PRIMARY KEY (`appoint_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `t_sys_autoincrement`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_autoincrement`;
CREATE TABLE `t_sys_autoincrement` (
  `seq_name` varchar(50) NOT NULL,
  `current_val` int(11) DEFAULT NULL,
  `increment_val` int(11) DEFAULT NULL,
  PRIMARY KEY (`seq_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `t_sys_department`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department`;
CREATE TABLE `t_sys_department` (
  `department_Id` varchar(255) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `department_profile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`department_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `t_sys_information`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_information`;
CREATE TABLE `t_sys_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `introduction` text COMMENT '医院简介',
  `announcement` text COMMENT '医院公告',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `t_sys_outpatient`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_outpatient`;
CREATE TABLE `t_sys_outpatient` (
  `outpatient_id` varchar(32) DEFAULT NULL,
  `doctor_id` varchar(32) DEFAULT NULL,
  `doctor_name` varchar(15) DEFAULT NULL,
  `outpatient_date` date DEFAULT NULL,
  `outpatient_number` int(11) DEFAULT NULL,
  `appoint_id` varchar(15) DEFAULT NULL,
  `outpatient_notice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  `user_sex` char(1) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `role_code` char(1) DEFAULT NULL,
  `role_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `t_sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_user` VALUES ('123', 'admin', '123456', '1', '2020-05-22', '12247222669', '3', '管理员');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
