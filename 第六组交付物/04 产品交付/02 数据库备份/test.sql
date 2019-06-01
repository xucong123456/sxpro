/*
 Navicat Premium Data Transfer

 Source Server         : Linux
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : 47.101.41.151:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 31/05/2019 16:35:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for first_menu
-- ----------------------------
DROP TABLE IF EXISTS `first_menu`;
CREATE TABLE `first_menu`  (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of first_menu
-- ----------------------------
INSERT INTO `first_menu` VALUES (1, '用户管理');
INSERT INTO `first_menu` VALUES (2, '部门管理');
INSERT INTO `first_menu` VALUES (3, '职位管理');
INSERT INTO `first_menu` VALUES (4, '员工管理');
INSERT INTO `first_menu` VALUES (5, '公告管理');

-- ----------------------------
-- Table structure for second_menu
-- ----------------------------
DROP TABLE IF EXISTS `second_menu`;
CREATE TABLE `second_menu`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of second_menu
-- ----------------------------
INSERT INTO `second_menu` VALUES (1, '用户查询', 'yhcx.jsp', 1);
INSERT INTO `second_menu` VALUES (2, '添加用户', 'tjyh.jsp', 1);
INSERT INTO `second_menu` VALUES (3, '部门查询', 'bmcx.jsp', 2);
INSERT INTO `second_menu` VALUES (4, '添加部门', 'tjbm.jsp', 2);
INSERT INTO `second_menu` VALUES (5, '职位查询', 'zwcx.jsp', 3);
INSERT INTO `second_menu` VALUES (6, '添加职位', 'tjzw.jsp', 3);
INSERT INTO `second_menu` VALUES (7, '员工查询', 'ygcx.jsp', 4);
INSERT INTO `second_menu` VALUES (8, '添加员工', 'tjyg.jsp', 4);
INSERT INTO `second_menu` VALUES (9, '公告查询', 'ggcx.jsp', 5);
INSERT INTO `second_menu` VALUES (10, '添加公告', 'tjgg.jsp', 5);
INSERT INTO `second_menu` VALUES (11, '删除用户', 'deleteusers.jsp', 1);
INSERT INTO `second_menu` VALUES (12, '删除部门', 'deletedepartment.jsp', 2);
INSERT INTO `second_menu` VALUES (13, '删除职位', 'deleteposition.jsp', 3);
INSERT INTO `second_menu` VALUES (14, '删除员工', 'deleteyg.jsp', 4);

-- ----------------------------
-- Table structure for second_menu1
-- ----------------------------
DROP TABLE IF EXISTS `second_menu1`;
CREATE TABLE `second_menu1`  (
  `seid` int(11) NOT NULL,
  `sename` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`seid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of second_menu1
-- ----------------------------
INSERT INTO `second_menu1` VALUES (1, '添加用户', 'tjyh.jsp', 1);
INSERT INTO `second_menu1` VALUES (2, '删除用户', 'deleteusers.jsp', 1);
INSERT INTO `second_menu1` VALUES (3, '部门查询', 'bmcx.jsp', 2);
INSERT INTO `second_menu1` VALUES (4, '职位查询', 'zwcx.jsp', 3);
INSERT INTO `second_menu1` VALUES (5, '员工查询', 'ygcx.jsp', 4);
INSERT INTO `second_menu1` VALUES (6, '公告查询', 'ggcx.jsp', 5);
INSERT INTO `second_menu1` VALUES (7, '添加公告', 'tjgg.jsp', 5);

-- ----------------------------
-- Table structure for tb_bulletin
-- ----------------------------
DROP TABLE IF EXISTS `tb_bulletin`;
CREATE TABLE `tb_bulletin`  (
  `nid` int(255) NOT NULL COMMENT '公告表',
  `bname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `tb_bulletin_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `tb_users` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_bulletin
-- ----------------------------
INSERT INTO `tb_bulletin` VALUES (3, '星期五', '我很开心', '2019-05-24', '001');
INSERT INTO `tb_bulletin` VALUES (4, '星期六', '我们要开会', '2019-05-26', '111');
INSERT INTO `tb_bulletin` VALUES (5, '星期天', '我们一起打球', '2019-05-31', '001');
INSERT INTO `tb_bulletin` VALUES (6, '星期一', '我们一起学习', '2019-05-31', '001');

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department`  (
  `did` int(255) NOT NULL COMMENT '部门表',
  `dname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES (6, '技术部', '搞技术方面');
INSERT INTO `tb_department` VALUES (7, '人事部', '管理员工的生活');

-- ----------------------------
-- Table structure for tb_employees
-- ----------------------------
DROP TABLE IF EXISTS `tb_employees`;
CREATE TABLE `tb_employees`  (
  `eid` int(255) NOT NULL COMMENT '员工表',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名字',
  `idnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号码',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `pid` int(255) NOT NULL COMMENT '职位id',
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学历',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电子邮箱',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `phonenumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `political` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '政治面貌',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'QQ号码',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `postcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮政编码',
  `birth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生日',
  `family` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名族',
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  `interests` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '兴趣',
  `did` int(255) NOT NULL COMMENT '部门编号',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '建档时间',
  PRIMARY KEY (`eid`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `did`(`did`) USING BTREE,
  CONSTRAINT `tb_employees_ibfk_1` FOREIGN KEY (`did`) REFERENCES `tb_department` (`did`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tb_employees_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `tb_position` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_employees
-- ----------------------------
INSERT INTO `tb_employees` VALUES (1, '王力', '50010', '男', 2, '专科', '123@qq.com', '123456', '123456', '少先队员', '12031', '重庆', '10010', '97.01.01', '汉族', '软件工程', '打游戏', 7, '很丑', '2019-05-31');
INSERT INTO `tb_employees` VALUES (2, '徐聪', '100101', '男', 3, '本科', '24999@qq.com', '1321252000', '1321252000', '团员', '1234567', '湖北荆州', '40010', '98.10.18', '汉族', '软件工程', '打篮球，跳舞', 6, '很帅', '2019-05-31');

-- ----------------------------
-- Table structure for tb_position
-- ----------------------------
DROP TABLE IF EXISTS `tb_position`;
CREATE TABLE `tb_position`  (
  `pid` int(255) NOT NULL COMMENT '职位表',
  `jobname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jobinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_position
-- ----------------------------
INSERT INTO `tb_position` VALUES (2, '前台助理 ', '公司的颜面！！！');
INSERT INTO `tb_position` VALUES (3, '总经理', '管理全部');
INSERT INTO `tb_position` VALUES (4, 'Java工程师', 'Java项目开发');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users`  (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户表',
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(255) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `power` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('001', 'xucong', '123456', 1, '2019/5/22', '管理员');
INSERT INTO `tb_users` VALUES ('1', '1234', '1', 1, '2019-05-31 10:16:04', '管理员');
INSERT INTO `tb_users` VALUES ('111', '111', '111', 1, '2019-05-24 09:40:20', '管理员');
INSERT INTO `tb_users` VALUES ('123', '徐聪', '321', 1, '2019-05-31 10:05:31', '管理员');
INSERT INTO `tb_users` VALUES ('1230', '小星星', '1230', 2, '2019-05-24 08:29:34', '普通用户');

SET FOREIGN_KEY_CHECKS = 1;
