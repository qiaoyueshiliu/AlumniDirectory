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

 Date: 21/04/2021 00:07:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xuexiao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quanxian` int(0) NULL DEFAULT NULL COMMENT '1、超级管理；2、学校；3、班级；4、学校，班级',
  `banji` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `nickname`(`nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin1', '管理员', '1', 1, '1750422');
INSERT INTO `t_user` VALUES (7, 'wzg111', '1234561', 'qiaoyueshiliu', '南京大学', NULL, '1');
INSERT INTO `t_user` VALUES (8, 'wzg1112', '123456', 'qiaoyueshiliu', '北京大学', 0, '1');
INSERT INTO `t_user` VALUES (9, 'wzg112', '123456', 'ceshi112', '南京大学', 0, '2');
INSERT INTO `t_user` VALUES (12, 'dengsidi4', '1234561', 'qiaoyueshiliu', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (13, 'dengsidi', '123456', 'qiaoyueshiliu', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (14, 'dengsidi5', '123456', '123456', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (15, 'liqin', '1234561', 'liqin', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (16, 'admin12', '123456', 'admin12', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (21, '123456134', '1234561', '1234661', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (22, '1234561345', '1234561', '1234661', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (23, '12345613456', '1234561', '1234661', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (24, '123456134567', '1234561', '1234661', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (25, '1234561345678', '1234561', '1234661', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (26, '12345613456789', '1234561', '1234661', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (27, '123456134567890', '1234561', '1234661', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (28, 'fangwei', 'fangwei', '管理员', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (29, 'fangwei1', '123456', '管理员', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (30, 'fangwei2', '123456', '管理员', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (31, 'fangwei3', '123456', '管理员', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (32, 'fangwei4', '123456', '管理员', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (33, 'fangwei5', '123456', '管理员', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (34, 'wzg168', '123456', 'wzg168', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (35, '2021-4-14144158', '123456', '汉字', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (36, 'fangwei6', '123456', 'æ¯èè¬Â·å¨å»Â·éé', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (37, '2021-4-14144159', '123456', '汉字', NULL, NULL, NULL);
INSERT INTO `t_user` VALUES (38, 'fangwei7', '123456', '斯蒂芬·威廉·霍金', '北京大学', 3, '3');
INSERT INTO `t_user` VALUES (39, 'xuexiao', '123456', '小余', '北京大学', 2, '3');
INSERT INTO `t_user` VALUES (40, 'ceshi', 'ceshi', '学校管理员', '南京大学', 23, '3');
INSERT INTO `t_user` VALUES (41, 'banji', 'banji', '班级管理员', '北京大学', 3, '2');
INSERT INTO `t_user` VALUES (42, 'fangwei11', '123456', '2345', '2345', 23451, '2345');

SET FOREIGN_KEY_CHECKS = 1;
