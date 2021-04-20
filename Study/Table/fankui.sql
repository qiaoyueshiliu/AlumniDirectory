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

 Date: 21/04/2021 00:05:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fankui
-- ----------------------------
DROP TABLE IF EXISTS `fankui`;
CREATE TABLE `fankui`  (
  `fankuiId` int(0) NOT NULL AUTO_INCREMENT,
  `fankuiCreatetime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `fankuiBiaoti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fankuiNeirong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`fankuiId`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  CONSTRAINT `fankui_ibfk_1` FOREIGN KEY (`id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fankui
-- ----------------------------
INSERT INTO `fankui` VALUES (1, '2021-04-19 20:35:17', '你好', '我要反馈', 1);
INSERT INTO `fankui` VALUES (2, '2021-04-19 22:24:25', '页面加载时调用js函数方法', '\"\"', 1);
INSERT INTO `fankui` VALUES (3, '2021-04-19 22:25:44', '反馈跳转测试', '反馈跳转测试', 1);
INSERT INTO `fankui` VALUES (4, '2021-04-19 22:26:42', '反馈跳转测试2226', '反馈跳转测试2226', 1);
INSERT INTO `fankui` VALUES (5, '2021-04-20 11:53:01', '反馈测试', '反馈测试', 1);
INSERT INTO `fankui` VALUES (6, '2021-04-20 12:00:37', '反馈测试', '2021-4-20 11:58:50', 1);
INSERT INTO `fankui` VALUES (7, '2021-04-20 12:01:53', '反馈测试', '反馈测试2021-4-20 12:01:51', 1);
INSERT INTO `fankui` VALUES (8, '2021-04-20 12:02:06', '反馈测试', '反馈测试2021-4-20 12:01:51', 1);

SET FOREIGN_KEY_CHECKS = 1;
