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

 Date: 21/04/2021 00:07:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for xuexiao
-- ----------------------------
DROP TABLE IF EXISTS `xuexiao`;
CREATE TABLE `xuexiao`  (
  `xuexiao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `xuexiaoid` int(0) NOT NULL AUTO_INCREMENT,
  `xuexiaowangzhi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`xuexiaoid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuexiao
-- ----------------------------
INSERT INTO `xuexiao` VALUES ('南京大学', 1, 'https://www.nju.edu.cn/');

SET FOREIGN_KEY_CHECKS = 1;
