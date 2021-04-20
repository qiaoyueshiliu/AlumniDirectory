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

 Date: 21/04/2021 00:07:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for xunrenqishi
-- ----------------------------
DROP TABLE IF EXISTS `xunrenqishi`;
CREATE TABLE `xunrenqishi`  (
  `xunrenqishiId` int(0) NOT NULL AUTO_INCREMENT,
  `xunrenqishiCreatetime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `xunrenqishiBiaoti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `xunrenqishiNeirong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`xunrenqishiId`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  CONSTRAINT `xunrenqishi_ibfk_1` FOREIGN KEY (`id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xunrenqishi
-- ----------------------------
INSERT INTO `xunrenqishi` VALUES (1, '2021-04-19 23:44:37', '寻人启事测试', '寻人启事测试', 1);
INSERT INTO `xunrenqishi` VALUES (2, '2021-04-20 11:52:25', '寻人启事测试', '寻人启事测试', 1);
INSERT INTO `xunrenqishi` VALUES (3, '2021-04-20 12:04:16', '寻人启事测试', '寻人启事测试2021-4-20 12:04:14', 1);
INSERT INTO `xunrenqishi` VALUES (4, '2021-04-20 12:05:28', '寻人启事测试', '寻人启事测试2021-4-20 12:04:14', 1);

SET FOREIGN_KEY_CHECKS = 1;
