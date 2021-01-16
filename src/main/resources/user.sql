/*
 Navicat Premium Data Transfer

 Source Server         : Linux
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : mybatisplustest

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 16/01/2021 14:48:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `version` int(10) NULL DEFAULT 1 COMMENT '版本控制',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `deleted` int(10) NULL DEFAULT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1348988385372700675 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Jone', 1, 18, 'test1@baomidou.com', '2021-01-12 22:14:03', NULL, NULL);
INSERT INTO `user` VALUES (2, 'Jack', 1, 20, 'test2@baomidou.com', '2021-01-12 22:14:03', NULL, NULL);
INSERT INTO `user` VALUES (3, 'Tom', 1, 28, 'test3@baomidou.com', '2021-01-12 22:14:03', NULL, NULL);
INSERT INTO `user` VALUES (4, '小fang', 1, 44, '4333', '2021-01-12 22:14:03', '2021-01-12 23:01:48', NULL);
INSERT INTO `user` VALUES (5, 'Billie', 1, 24, 'test5@baomidou.com', '2021-01-12 22:14:03', NULL, NULL);
INSERT INTO `user` VALUES (12, '小fang', 1, 44, '4333', '2021-01-12 22:14:03', NULL, NULL);
INSERT INTO `user` VALUES (19, '小fang', 1, 13, '4333', '2021-01-12 22:55:00', '2021-01-12 22:55:00', NULL);
INSERT INTO `user` VALUES (38, '大哥3大', 4, 44, '2367234', '2021-01-12 23:02:54', '2021-01-13 15:19:34', NULL);
INSERT INTO `user` VALUES (1348986556765245441, '小潘', 1, 13, '233333', '2021-01-12 22:14:03', NULL, NULL);
INSERT INTO `user` VALUES (1348986702664114178, '小潘', 1, 13, '233333', '2021-01-12 22:14:03', NULL, NULL);
INSERT INTO `user` VALUES (1348988385372700673, '小潘', 1, 13, '233333', '2021-01-12 22:14:03', NULL, NULL);
INSERT INTO `user` VALUES (1348988385372700674, '小潘', 1, 13, '233333', '2021-01-12 22:14:03', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
