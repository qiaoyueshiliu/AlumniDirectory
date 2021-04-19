/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : book

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 19/04/2021 23:21:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for huifu
-- ----------------------------
DROP TABLE IF EXISTS `huifu`;
CREATE TABLE `huifu`  (
  `huifuid` int(0) NOT NULL AUTO_INCREMENT,
  `tieziid` int(0) NOT NULL,
  `huifuneirong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int(0) NULL DEFAULT NULL,
  `huifushijian` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`huifuid`) USING BTREE,
  INDEX `huifu_ibfk_1`(`tieziid`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  CONSTRAINT `huifu_ibfk_1` FOREIGN KEY (`tieziid`) REFERENCES `t_book` (`tieziid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `huifu_ibfk_2` FOREIGN KEY (`id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huifu
-- ----------------------------
INSERT INTO `huifu` VALUES (1, 33, 'http://m.runoob.com', 1, NULL);
INSERT INTO `huifu` VALUES (2, 33, 'http://m.runoob.com', 1, NULL);
INSERT INTO `huifu` VALUES (3, 33, 'http://m.runoob.com', 1, NULL);
INSERT INTO `huifu` VALUES (4, 33, 'http://m.runoob.com', 1, NULL);
INSERT INTO `huifu` VALUES (5, 33, '你好，我要回复你了', 1, NULL);
INSERT INTO `huifu` VALUES (6, 32, '比如\r\n<input type=\"image\" src=\"images/search.gif\" name=\"Submit\" class=\"bot2\">\r\n我要使这个图片按钮打开新页面,而不是当页,如何达到?\r\n\r\n谢谢', 1, NULL);
INSERT INTO `huifu` VALUES (7, 32, '感谢,不过我的问题还没有解决\r\n比如我做的搜索代码', NULL, NULL);
INSERT INTO `huifu` VALUES (8, 32, '1231245', 1, NULL);
INSERT INTO `huifu` VALUES (9, 27, '1231245', 1, NULL);
INSERT INTO `huifu` VALUES (10, 27, 'asd&>?123\r\n\r\n', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
