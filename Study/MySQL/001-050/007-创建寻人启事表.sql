SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
CREATE TABLE `xunrenqishi`  (
  `xunrenqishiId` int(0) NOT NULL AUTO_INCREMENT,
  `xunrenqishiCreatetime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `xunrenqishiBiaoti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `xunrenqishiNeirong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`xunrenqishiId`) USING BTREE
)
