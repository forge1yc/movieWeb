SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `film_info`;
CREATE TABLE `film_info`  (
  `mid` int(32) NOT NULL AUTO_INCREMENT,
  `mname` char(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `actor` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `director` char(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mimage` char(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mdesc` varchar(1500) NULL DEFAULT NULL,
  `mtime`  char(30) NULL DEFAULT NULL,
  `hot_flag` int(32)  NULL DEFAULT NULL,
  `cid` int(32)  NULL DEFAULT NULL,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
