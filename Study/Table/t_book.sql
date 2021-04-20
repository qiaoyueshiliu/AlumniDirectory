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

 Date: 21/04/2021 00:07:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book`  (
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `tieziid` int(0) NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bankuai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `neirong` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `biaoji` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '1表示帖子，2表示回复',
  `id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`tieziid`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  CONSTRAINT `t_book_ibfk_1` FOREIGN KEY (`id`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('2021-04-17 23:13:50', 4, 'admin3的帖子', 'wzg111', '防灾科技学院', 'admin帖子的内容', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:41:31', 5, 'admin', 'wzg111', NULL, 'admin帖子的内容', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:41:34', 6, 'admin', 'wzg111', NULL, 'admin帖子的内容', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:41:33', 7, 'admin', 'wzg111', NULL, 'admin帖子的内容', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:41:35', 8, 'admin5的测试', 'wzg111', NULL, 'admin帖子的内容', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:41:36', 12, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:09', 13, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:10', 14, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:11', 15, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:12', 16, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:17', 17, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:14', 18, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:21', 20, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:23', 22, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:26', 23, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:27', 24, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:29', 25, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:30', 26, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:31', 27, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:32', 28, '时间简史', 'wzg111', '剑桥大学', '测试2021-4-10 22:15:30', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:33', 30, '标题2021-4-14 14:18:17', 'wzg111', '模块2021-4-14 14:18:13', '内容2021-4-14 14:18:02', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:34', 31, '标题2021-4-14 14:18:17', 'wzg111', '模块2021-4-14 14:18:13', '1213123', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:38', 32, '时间简史', 'wzg111', '南京大学', '123456', '1', 1);
INSERT INTO `t_book` VALUES ('2021-04-18 11:52:36', 33, '时间简史', 'wzg111', '南京大学', '2123123', NULL, 1);
INSERT INTO `t_book` VALUES ('2021-04-18 21:01:13', 34, '123', '1', '南京大学', '123456789', NULL, 1);
INSERT INTO `t_book` VALUES ('2021-04-18 21:06:43', 40, '肖申克的救赎', '管理员', '东南大学', '一场谋杀案使银行家安迪（蒂姆•罗宾斯 Tim Robbins 饰）蒙冤入狱，谋杀妻子及其情人的指控将囚禁他终生。在肖申克监狱的首次现身就让监狱“大哥”瑞德（摩根•弗里曼 Morgan Freeman 饰）对他另眼相看。瑞德帮助他搞到一把石锤和一幅女明星海报，两人渐成患难 之交。很快，安迪在监狱里大显其才，担当监狱图书管理员，并利用自己的金融知识帮助监狱官避税，引起了典狱长的注意，被招致麾下帮助典狱长洗黑钱。偶然一次，他得知一名新入狱的小偷能够作证帮他洗脱谋杀罪。燃起一丝希望的安迪找到了典狱长，希望他能帮自己翻案。阴险伪善的狱长假装答应安迪，背后却派人杀死小偷，让他唯一能合法出狱的希望泯灭。沮丧的安迪并没有绝望，在一个电闪雷鸣的风雨夜，一场暗藏几十年的越狱计划让他自我救赎，重获自由！老朋友瑞德在他的鼓舞和帮助下，也勇敢地奔向自由', NULL, 1);
INSERT INTO `t_book` VALUES ('2021-04-18 21:09:33', 41, '霸王别姬', '管理员', '南京航空航天大学', '段小楼（张丰毅）与程蝶衣（张国荣）是一对打小一起长大的师兄弟，两人一个演生，一个饰旦，一向配合天衣无缝，尤其一出《霸王别姬》，更是誉满京城，为此，两人约定合演一辈子《霸王别姬》。但两人对戏剧与人生关系的理解有本质不同，段小楼深知戏非人生，程蝶衣则是人戏不分', NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
