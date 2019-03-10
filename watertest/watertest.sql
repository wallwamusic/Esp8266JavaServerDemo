/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : watertest

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-03-10 13:36:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `watervalue`
-- ----------------------------
DROP TABLE IF EXISTS `watervalue`;
CREATE TABLE `watervalue` (
  `collectnum` int(16) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tempvalue` int(3) DEFAULT NULL COMMENT '温度值',
  `humivalue` int(3) DEFAULT NULL COMMENT '湿度值',
  `valuetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '采集时间',
  PRIMARY KEY (`collectnum`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='温湿度检测表';

-- ----------------------------
-- Records of watervalue
-- ----------------------------
INSERT INTO `watervalue` VALUES ('7', '15', '45', '2019-03-06 20:38:56');
INSERT INTO `watervalue` VALUES ('8', '20', '30', '2019-03-08 09:38:25');
INSERT INTO `watervalue` VALUES ('9', '30', '20', '2019-03-08 09:38:47');
INSERT INTO `watervalue` VALUES ('10', '25', '40', '2019-03-08 09:39:02');
INSERT INTO `watervalue` VALUES ('11', '20', '30', '2019-03-09 15:40:38');
INSERT INTO `watervalue` VALUES ('12', '20', '30', '2019-03-09 15:40:44');
INSERT INTO `watervalue` VALUES ('13', '20', '30', '2019-03-09 15:40:46');
INSERT INTO `watervalue` VALUES ('14', '20', '30', '2019-03-09 15:40:48');
INSERT INTO `watervalue` VALUES ('15', '20', '30', '2019-03-09 15:40:48');
INSERT INTO `watervalue` VALUES ('16', '20', '30', '2019-03-09 15:40:49');
INSERT INTO `watervalue` VALUES ('17', '20', '30', '2019-03-09 15:40:50');
INSERT INTO `watervalue` VALUES ('18', '20', '30', '2019-03-09 15:40:52');
INSERT INTO `watervalue` VALUES ('19', '20', '30', '2019-03-09 15:40:53');
INSERT INTO `watervalue` VALUES ('20', '20', '30', '2019-03-09 15:40:55');
INSERT INTO `watervalue` VALUES ('21', '20', '30', '2019-03-09 15:40:56');
INSERT INTO `watervalue` VALUES ('22', '20', '30', '2019-03-09 15:40:57');
INSERT INTO `watervalue` VALUES ('23', '20', '30', '2019-03-09 15:40:58');
INSERT INTO `watervalue` VALUES ('24', '20', '30', '2019-03-09 15:41:00');
INSERT INTO `watervalue` VALUES ('25', '20', '30', '2019-03-09 15:41:01');
INSERT INTO `watervalue` VALUES ('26', '20', '30', '2019-03-09 15:41:02');
INSERT INTO `watervalue` VALUES ('27', '20', '30', '2019-03-09 15:41:03');
INSERT INTO `watervalue` VALUES ('28', '20', '30', '2019-03-09 15:41:04');
INSERT INTO `watervalue` VALUES ('29', '20', '30', '2019-03-09 15:41:05');
INSERT INTO `watervalue` VALUES ('30', '20', '30', '2019-03-09 15:41:07');
INSERT INTO `watervalue` VALUES ('31', '20', '30', '2019-03-09 15:41:07');
INSERT INTO `watervalue` VALUES ('32', '20', '30', '2019-03-09 15:41:08');
INSERT INTO `watervalue` VALUES ('33', '20', '30', '2019-03-09 15:41:10');
INSERT INTO `watervalue` VALUES ('34', '20', '30', '2019-03-09 15:41:16');
INSERT INTO `watervalue` VALUES ('35', '20', '30', '2019-03-09 15:41:17');
INSERT INTO `watervalue` VALUES ('36', '20', '30', '2019-03-09 15:41:18');
INSERT INTO `watervalue` VALUES ('37', '20', '30', '2019-03-09 15:41:19');
INSERT INTO `watervalue` VALUES ('38', '20', '30', '2019-03-09 15:41:20');
INSERT INTO `watervalue` VALUES ('39', '20', '30', '2019-03-09 15:41:26');
INSERT INTO `watervalue` VALUES ('40', '20', '30', '2019-03-09 15:41:27');
INSERT INTO `watervalue` VALUES ('41', '20', '30', '2019-03-09 15:41:29');
INSERT INTO `watervalue` VALUES ('42', '20', '30', '2019-03-09 15:41:30');
INSERT INTO `watervalue` VALUES ('43', '20', '30', '2019-03-09 15:41:30');
INSERT INTO `watervalue` VALUES ('44', '20', '30', '2019-03-09 15:41:31');
INSERT INTO `watervalue` VALUES ('45', '20', '30', '2019-03-09 15:41:33');
INSERT INTO `watervalue` VALUES ('46', '15', '45', '2019-03-09 20:48:30');
INSERT INTO `watervalue` VALUES ('47', '30', '55', '2019-03-10 13:35:28');
