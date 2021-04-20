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

 Date: 21/04/2021 00:06:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for huodong
-- ----------------------------
DROP TABLE IF EXISTS `huodong`;
CREATE TABLE `huodong`  (
  `huodongId` int(0) NOT NULL AUTO_INCREMENT,
  `huodongCreatetime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `huodongBiaoti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `huodongNeirong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`huodongId`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  CONSTRAINT `huodong_ibfk_1` FOREIGN KEY (`id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huodong
-- ----------------------------
INSERT INTO `huodong` VALUES (1, '2021-04-20 12:13:57', '活动标题', '活动内容', 1);
INSERT INTO `huodong` VALUES (2, '2021-04-20 12:27:24', '123', '1234', 1);
INSERT INTO `huodong` VALUES (3, '2021-04-20 12:33:42', '活动', '活动', 1);
INSERT INTO `huodong` VALUES (4, '2021-04-20 12:35:19', '活动2021-4-20 12:35:15', '活动2021-4-20 12:35:17', 1);

SET FOREIGN_KEY_CHECKS = 1;
