/*
 Navicat MySQL Data Transfer

 Source Server         : nongfu
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : 121.42.246.5:3306
 Source Schema         : map

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : 65001

 Date: 06/12/2018 10:09:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for map_admin
-- ----------------------------
DROP TABLE IF EXISTS `map_admin`;
CREATE TABLE `map_admin` (
  `admin_id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `admin_phone` bigint(11) unsigned DEFAULT NULL COMMENT '管理员电话',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '管理员姓名',
  `admin_openid` varchar(50) DEFAULT NULL COMMENT '管理员openid',
  `admin_account` varchar(50) DEFAULT NULL COMMENT '管理员账号',
  `admin_password` varchar(50) DEFAULT NULL COMMENT '管理员密码',
  `admin_salt` varchar(20) DEFAULT NULL COMMENT '管理员标示符',
  `admin_group` tinyint(1) unsigned DEFAULT NULL COMMENT '管理员分组',
  `admin_lastloginip` varchar(50) DEFAULT NULL COMMENT '最后登陆IP',
  `admin_lastlogintime` int(10) unsigned DEFAULT NULL COMMENT '最后登陆时间',
  `admin_logincount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登陆的次数',
  `admin_addtime` int(10) unsigned DEFAULT NULL COMMENT '登陆的时间',
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_openid` (`admin_openid`),
  UNIQUE KEY `admin_account` (`admin_account`),
  KEY `admin_phone` (`admin_phone`),
  KEY `admin_name` (`admin_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员信息表';

-- ----------------------------
-- Records of map_admin
-- ----------------------------
BEGIN;
INSERT INTO `map_admin` VALUES (1, 18297129490, '邓昕', '', 'admin', 'a7094e2b1d0888ee64b5e0b727cffffd', '9O!^1KFE$F', 1, '111.44.239.144', 1496895352, 57, NULL);
COMMIT;

-- ----------------------------
-- Table structure for map_admingroup
-- ----------------------------
DROP TABLE IF EXISTS `map_admingroup`;
CREATE TABLE `map_admingroup` (
  `admingroup_id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员分组ID',
  `admingroup_name` varchar(50) DEFAULT NULL COMMENT '分组名称',
  `admingroup_auth` varchar(50) DEFAULT NULL COMMENT '管理员权限',
  `admingroup_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admingroup_order` int(4) unsigned NOT NULL DEFAULT '99',
  PRIMARY KEY (`admingroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员分组表';

-- ----------------------------
-- Records of map_admingroup
-- ----------------------------
BEGIN;
INSERT INTO `map_admingroup` VALUES (1, '超级管理员', '7002|7001', 9, 1);
COMMIT;

-- ----------------------------
-- Table structure for map_adminlog
-- ----------------------------
DROP TABLE IF EXISTS `map_adminlog`;
CREATE TABLE `map_adminlog` (
  `adminlog_id` int(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员日志',
  `adminlog_admin` int(10) unsigned DEFAULT NULL COMMENT '管理员账号ID',
  `adminlog_time` varchar(50) DEFAULT NULL COMMENT '管理员操作时间',
  `adminlog_log` varchar(300) DEFAULT NULL COMMENT '管理员操作',
  `adminlog_ip` varchar(50) DEFAULT NULL COMMENT '管理员最后操作IP',
  PRIMARY KEY (`adminlog_id`),
  KEY `adminlog_admin` (`adminlog_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8 COMMENT='管理员日志';

-- ----------------------------
-- Records of map_adminlog
-- ----------------------------
BEGIN;
INSERT INTO `map_adminlog` VALUES (1, 1, '1490276827', '成功登录!', '::1');
INSERT INTO `map_adminlog` VALUES (2, 1, '1490328339', '成功登录!', '::1');
INSERT INTO `map_adminlog` VALUES (3, 1, '1490328360', '成功添加节点路径(新生报到)', '::1');
INSERT INTO `map_adminlog` VALUES (4, 1, '1490328457', '成功添加节点路径(新生报到)', '::1');
INSERT INTO `map_adminlog` VALUES (5, 1, '1490331408', '成功登录!', '::1');
INSERT INTO `map_adminlog` VALUES (6, 1, '1490331507', '删除路径节点(2)成功!', '::1');
INSERT INTO `map_adminlog` VALUES (7, 1, '1490331511', '删除路径节点(1)成功!', '::1');
INSERT INTO `map_adminlog` VALUES (8, 1, '1490331519', '成功添加节点路径(新生报到)', '::1');
INSERT INTO `map_adminlog` VALUES (9, 1, '1490331831', '删除路径节点(3)成功!', '::1');
INSERT INTO `map_adminlog` VALUES (10, 1, '1490331841', '成功添加节点路径(新生入学)', '::1');
INSERT INTO `map_adminlog` VALUES (11, 1, '1490332074', '成功添加节点路径(新生报到)', '::1');
INSERT INTO `map_adminlog` VALUES (12, 1, '1490332182', '成功添加节点路径(新生入学)', '::1');
INSERT INTO `map_adminlog` VALUES (13, 1, '1490332190', '删除路径节点(6)成功!', '::1');
INSERT INTO `map_adminlog` VALUES (14, 1, '1490332197', '成功添加节点路径(新生入学)', '::1');
INSERT INTO `map_adminlog` VALUES (15, 1, '1490332211', '删除路径节点(7)成功!', '::1');
INSERT INTO `map_adminlog` VALUES (16, 1, '1490332217', '成功修改路径信息(4)', '::1');
INSERT INTO `map_adminlog` VALUES (17, 1, '1490333498', '成功登录!', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (18, 1, '1490333651', '删除路径节点(4)成功!', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (19, 1, '1490333654', '删除路径节点(5)成功!', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (20, 1, '1490333900', '成功添加节点路径(老科技馆-------西北角)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (21, 1, '1490333921', '成功添加节点路径(老科技馆-------西北角)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (22, 1, '1490333932', '成功添加节点路径(老科技馆-------西北角)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (23, 1, '1490334443', '成功修改路径信息(8)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (24, 1, '1490334446', '成功修改路径信息(9)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (25, 1, '1490334449', '成功修改路径信息(10)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (26, 1, '1490337558', '成功修改路径信息(8)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (27, 1, '1490337566', '成功修改路径信息(9)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (28, 1, '1490337574', '成功修改路径信息(10)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (29, 1, '1490357037', '成功登录!', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (30, 1, '1490357528', '成功添加节点路径(新生体检)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (31, 1, '1490357546', '成功添加节点路径(新生体检)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (32, 1, '1490357567', '成功添加节点路径(新生体检)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (33, 1, '1490358333', '成功登录!', '111.44.144.93');
INSERT INTO `map_adminlog` VALUES (34, 1, '1490358338', '成功登录!', '111.44.144.93');
INSERT INTO `map_adminlog` VALUES (35, 1, '1490358342', '成功登录!', '111.44.144.93');
INSERT INTO `map_adminlog` VALUES (36, 1, '1490358343', '成功登录!', '111.44.144.93');
INSERT INTO `map_adminlog` VALUES (37, 1, '1490358343', '成功登录!', '111.44.144.93');
INSERT INTO `map_adminlog` VALUES (38, 1, '1490358612', '退出登录!', '111.44.144.93');
INSERT INTO `map_adminlog` VALUES (39, 1, '1490359043', '成功登录!', '111.44.144.93');
INSERT INTO `map_adminlog` VALUES (40, 1, '1490359049', '成功登录!', '111.44.144.93');
INSERT INTO `map_adminlog` VALUES (41, 1, '1490359365', '退出登录!', '111.44.144.93');
INSERT INTO `map_adminlog` VALUES (42, 1, '1490365465', '成功修改路径信息(11)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (43, 1, '1490365484', '成功修改路径信息(8)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (44, 1, '1490365502', '成功修改路径信息(9)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (45, 1, '1490365506', '删除路径节点(8)成功!', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (46, 1, '1490365517', '成功修改路径信息(9)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (47, 1, '1490365549', '成功修改路径信息(9)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (48, 1, '1490365619', '成功修改路径信息(9)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (49, 1, '1490365629', '成功修改路径信息(10)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (50, 1, '1490366125', '成功添加节点路径(上班测试)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (51, 1, '1490366138', '成功添加节点路径(上班测试)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (52, 1, '1490366148', '成功添加节点路径(上班测试)', '123.138.79.7');
INSERT INTO `map_adminlog` VALUES (53, 1, '1491184065', '删除路径节点(10)成功!', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (54, 1, '1491184068', '删除路径节点(9)成功!', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (55, 1, '1491184084', '删除路径节点(13)成功!', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (56, 1, '1491184087', '删除路径节点(12)成功!', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (57, 1, '1491184090', '删除路径节点(11)成功!', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (58, 1, '1491184115', '成功添加节点路径(新生报到)', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (59, 1, '1491474134', '成功登录!', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (60, 1, '1491474250', '成功登录!', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (61, 1, '1491478857', '成功添加节点路径(报道)', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (62, 1, '1491479201', '删除路径节点(17)成功!', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (63, 1, '1491479220', '删除路径节点(16)成功!', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (64, 1, '1491479267', '成功添加节点路径(上课)', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (65, 1, '1491479288', '退出登录!', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (66, 1, '1491479350', '成功登录!', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (67, 1, '1491479774', '成功修改路径信息(19)', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (68, 1, '1491479849', '退出登录!', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (69, 1, '1491480064', '成功登录!', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (70, 1, '1491480502', '成功添加节点路径(上班)', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (71, 1, '1491480524', '成功添加节点路径(上班)', '111.44.144.162');
INSERT INTO `map_adminlog` VALUES (72, 1, '1491533387', '成功登录!', '49.209.80.76');
INSERT INTO `map_adminlog` VALUES (73, 1, '1491533392', '成功下载(管理员信息)', '49.209.80.76');
INSERT INTO `map_adminlog` VALUES (74, 1, '1491533444', '成功下载(管理员信息)', '49.209.80.76');
INSERT INTO `map_adminlog` VALUES (75, 1, '1491533470', '修改管理员(1)信息成功!', '49.209.80.76');
INSERT INTO `map_adminlog` VALUES (76, 1, '1491533480', '修改管理员(1)信息成功!', '49.209.80.76');
INSERT INTO `map_adminlog` VALUES (77, 1, '1491535419', '成功登录!', '49.209.80.76');
INSERT INTO `map_adminlog` VALUES (78, 1, '1491535645', '成功登录!', '49.209.80.76');
INSERT INTO `map_adminlog` VALUES (79, 1, '1491638087', '成功登录!', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (80, 1, '1491638516', '成功登录!', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (81, 1, '1491638540', '退出登录!', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (82, 1, '1491638576', '成功登录!', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (83, 1, '1491638654', '删除路径节点(21)成功!', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (84, 1, '1491638660', '删除路径节点(20)成功!', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (85, 1, '1491638754', '成功添加节点路径(上班)', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (86, 1, '1491638773', '成功添加节点路径(上班)', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (87, 1, '1491638932', '删除路径节点(23)成功!', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (88, 1, '1491638935', '删除路径节点(22)成功!', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (89, 1, '1491638946', '删除路径节点(19)成功!', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (90, 1, '1491638948', '删除路径节点(18)成功!', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (91, 1, '1491638966', '成功添加节点路径(报道)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (92, 1, '1491638979', '成功添加节点路径(报道)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (93, 1, '1491640118', '成功添加节点路径(新生报道)', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (94, 1, '1491640137', '成功添加节点路径(新生报道)', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (95, 1, '1491640161', '成功添加节点路径(新生报道)', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (96, 1, '1491640380', '删除路径节点(15)成功!', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (97, 1, '1491640385', '删除路径节点(14)成功!', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (98, 1, '1491640398', '退出登录!', '111.44.144.193');
INSERT INTO `map_adminlog` VALUES (99, 1, '1492864790', '成功登录!', '111.44.236.155');
INSERT INTO `map_adminlog` VALUES (100, 1, '1492864934', '成功登录!', '111.44.236.155');
INSERT INTO `map_adminlog` VALUES (101, 1, '1492865012', '成功登录!', '111.44.236.155');
INSERT INTO `map_adminlog` VALUES (102, 1, '1492871128', '退出登录!', '111.44.236.155');
INSERT INTO `map_adminlog` VALUES (103, 1, '1492945916', '成功登录!', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (104, 1, '1492946118', '删除路径节点(25)成功!', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (105, 1, '1492946123', '删除路径节点(24)成功!', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (106, 1, '1492947991', '成功添加节点路径(农牧学院)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (107, 1, '1492948292', '成功添加节点路径(医学院)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (108, 1, '1492948340', '成功添加节点路径(机械工程学院)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (109, 1, '1492948396', '成功添加节点路径(财经学院)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (110, 1, '1492948414', '成功添加节点路径(计算机系)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (111, 1, '1492948426', '成功添加节点路径(地质系)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (112, 1, '1492948478', '成功添加节点路径(科技馆)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (113, 1, '1492948546', '成功添加节点路径(一号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (114, 1, '1492948579', '成功添加节点路径(二号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (115, 1, '1492948690', '成功添加节点路径(三号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (116, 1, '1492948726', '成功添加节点路径(医务室)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (117, 1, '1492948739', '成功添加节点路径(体育部)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (118, 1, '1492948808', '成功添加节点路径(操场)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (119, 1, '1492948862', '成功添加节点路径(综合楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (120, 1, '1492948882', '成功添加节点路径(工商银行)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (121, 1, '1492948908', '成功添加节点路径(建行)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (122, 1, '1492948926', '成功添加节点路径(园丁食堂)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (123, 1, '1492948940', '成功添加节点路径(中国银行)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (124, 1, '1492948958', '成功添加节点路径(行政A楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (125, 1, '1492948996', '成功添加节点路径(校办)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (126, 1, '1492949012', '成功添加节点路径(学籍科)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (127, 1, '1492949053', '成功添加节点路径(行政B楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (128, 1, '1492949088', '成功添加节点路径(学生处)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (129, 1, '1492949118', '成功添加节点路径(农业银行)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (130, 1, '1492949137', '成功添加节点路径(创新大厦)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (131, 1, '1492949157', '成功添加节点路径(移动营业厅)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (132, 1, '1492949188', '成功添加节点路径(中国邮政)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (133, 1, '1492949206', '成功添加节点路径(电信营业厅)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (134, 1, '1492949225', '成功添加节点路径(联通营业厅)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (135, 1, '1492949251', '成功添加节点路径(洗浴)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (136, 1, '1492949265', '成功添加节点路径(快递)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (137, 1, '1492949281', '成功添加节点路径(理发)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (138, 1, '1492949305', '成功添加节点路径(超市)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (139, 1, '1492949377', '成功添加节点路径(配眼镜)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (140, 1, '1492949399', '成功添加节点路径(台球)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (141, 1, '1492949436', '成功添加节点路径(干洗)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (142, 1, '1492949462', '成功添加节点路径(奶茶)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (143, 1, '1492949484', '成功添加节点路径(咖啡店)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (144, 1, '1492949524', '成功添加节点路径(周记黑鸭)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (145, 1, '1492949540', '成功添加节点路径(化工学院)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (146, 1, '1492949553', '成功添加节点路径(图书馆)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (147, 1, '1492949645', '成功添加节点路径(常悦食堂)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (148, 1, '1492949669', '成功添加节点路径(租正装)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (149, 1, '1492949689', '成功添加节点路径(打印店)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (150, 1, '1492949707', '成功添加节点路径(水果店)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (151, 1, '1492949735', '成功添加节点路径(黄焖鸡米饭)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (152, 1, '1492949754', '成功添加节点路径(重庆小面)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (153, 1, '1492949764', '成功添加节点路径(热干面)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (154, 1, '1492949780', '成功添加节点路径(炮仗)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (155, 1, '1492949850', '成功添加节点路径(学生食堂)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (156, 1, '1492949866', '成功添加节点路径(小炒)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (157, 1, '1492949879', '成功添加节点路径(砂锅)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (158, 1, '1492949892', '成功添加节点路径(快餐)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (159, 1, '1492949941', '成功添加节点路径(清真食堂)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (160, 1, '1492949961', '成功添加节点路径(土火锅)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (161, 1, '1492950064', '成功添加节点路径(四号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (162, 1, '1492950114', '成功添加节点路径(五号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (163, 1, '1492950170', '成功添加节点路径(八号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (164, 1, '1492950232', '成功添加节点路径(六号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (165, 1, '1492950285', '成功添加节点路径(七号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (166, 1, '1492950365', '成功添加节点路径(九号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (167, 1, '1492950408', '成功添加节点路径(十号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (168, 1, '1492950508', '成功添加节点路径(十一号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (169, 1, '1492950553', '成功添加节点路径(十二号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (170, 1, '1492950610', '成功添加节点路径(十三号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (171, 1, '1492950666', '成功添加节点路径(十四号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (172, 1, '1492950724', '成功添加节点路径(十五号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (173, 1, '1492950790', '成功添加节点路径(十六号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (174, 1, '1492950880', '成功添加节点路径(十七号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (175, 1, '1492950945', '成功添加节点路径(十八号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (176, 1, '1492951002', '成功添加节点路径(十九号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (177, 1, '1492951068', '成功添加节点路径(二十号楼)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (178, 1, '1492951190', '成功添加节点路径(早餐)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (179, 1, '1492951205', '成功添加节点路径(米线)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (180, 1, '1492951218', '成功添加节点路径(刀削面)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (181, 1, '1492951244', '成功添加节点路径(盖浇饭)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (182, 1, '1492951270', '成功添加节点路径(面片)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (183, 1, '1492951318', '成功添加节点路径(擀面皮)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (184, 1, '1492951365', '成功添加节点路径(大礼堂)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (185, 1, '1492951538', '成功添加节点路径(八角亭)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (186, 1, '1492951612', '成功添加节点路径(青海大学东门)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (187, 1, '1492951674', '成功添加节点路径(青海大学北门)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (188, 1, '1492951693', '成功添加节点路径(饺子)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (189, 1, '1492951713', '成功添加节点路径(烤肉饭)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (190, 1, '1492952111', '退出登录!', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (191, 1, '1492952127', '成功登录!', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (192, 1, '1492952165', '成功添加节点路径(风雨操场)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (193, 1, '1492952177', '成功添加节点路径(羽毛球)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (194, 1, '1492952376', '成功添加节点路径(网球)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (195, 1, '1492952434', '成功添加节点路径(篮球)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (196, 1, '1492952495', '成功添加节点路径(乒乓球)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (197, 1, '1492952512', '成功添加节点路径(拳击)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (198, 1, '1492952527', '成功添加节点路径(健身房)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (199, 1, '1492952552', '成功添加节点路径(牛肉面)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (200, 1, '1492952641', '成功添加节点路径(王瑞老师)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (201, 1, '1492952670', '成功添加节点路径(班主任办公室)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (202, 1, '1492952699', '成功添加节点路径(学费)', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (203, 1, '1492952734', '退出登录!', '111.44.236.181');
INSERT INTO `map_adminlog` VALUES (204, 1, '1493002136', '成功登录!', '111.44.236.41');
INSERT INTO `map_adminlog` VALUES (205, 1, '1493002158', '成功登录!', '111.44.236.41');
INSERT INTO `map_adminlog` VALUES (206, 1, '1493004047', '成功登录!', '49.209.116.138');
INSERT INTO `map_adminlog` VALUES (207, 1, '1493006073', '成功登录!', '123.138.79.8');
INSERT INTO `map_adminlog` VALUES (208, 1, '1493006213', '成功添加节点路径(西电学校)', '123.138.79.8');
INSERT INTO `map_adminlog` VALUES (209, 1, '1493006466', '删除路径节点(124)成功!', '123.138.79.8');
INSERT INTO `map_adminlog` VALUES (210, 1, '1493301450', '成功添加新闻(新闻测试2)', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (211, 1, '1493303393', '成功添加公告(公告测试1)', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (212, 1, '1493303406', '成功添加公告(公告测试2)', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (213, 1, '1493303660', '成功修改新闻信息(2)', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (214, 1, '1493303666', '成功修改新闻信息(2)', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (215, 1, '1493303675', '成功修改公告信息(1)', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (216, 1, '1493303681', '删除公告(1)成功!', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (217, 1, '1493306568', '成功修改首页图片信息(1)', '123.138.79.12');
INSERT INTO `map_adminlog` VALUES (218, 1, '1493347093', '成功登录!', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (219, 1, '1493347101', '删除新闻(2)成功!', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (220, 1, '1493347175', '成功修改首页图片信息(1)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (221, 1, '1493347853', '成功添加新闻(测试1)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (222, 1, '1493347872', '成功添加新闻(测试2)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (223, 1, '1493347887', '成功添加新闻(测试3)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (224, 1, '1493347976', '成功修改公告信息(2)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (225, 1, '1493347997', '成功添加公告(公告测试1)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (226, 1, '1493348013', '成功修改新闻信息(5)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (227, 1, '1493348025', '成功修改新闻信息(4)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (228, 1, '1493348043', '成功修改新闻信息(3)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (229, 1, '1493348669', '成功修改首页图片信息(1)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (230, 1, '1493350281', '成功登录!', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (231, 1, '1493356194', '成功登录!', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (232, 1, '1493359146', '成功修改公告信息(3)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (233, 1, '1493359265', '成功修改公告信息(3)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (234, 1, '1493359280', '成功修改公告信息(2)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (235, 1, '1493359293', '成功添加公告(测试3)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (236, 1, '1493359597', '成功修改公告信息(4)', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (237, 1, '1493364223', '成功登录!', '123.138.79.11');
INSERT INTO `map_adminlog` VALUES (238, 1, '1493473555', '成功登录!', '111.44.236.90');
INSERT INTO `map_adminlog` VALUES (239, 1, '1493474294', '成功登录!', '123.138.79.8');
INSERT INTO `map_adminlog` VALUES (240, 1, '1493474732', '成功修改公告信息(2)', '111.44.236.90');
INSERT INTO `map_adminlog` VALUES (241, 1, '1493475707', '成功修改新闻信息(5)', '111.44.236.90');
INSERT INTO `map_adminlog` VALUES (242, 1, '1493643650', '成功登录!', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (243, 1, '1493644131', '成功修改新闻信息(5)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (244, 1, '1493644319', '成功修改新闻信息(5)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (245, 1, '1493644397', '成功修改新闻信息(5)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (246, 1, '1493644499', '成功修改新闻信息(5)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (247, 1, '1493644572', '成功修改新闻信息(5)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (248, 1, '1493644682', '成功修改新闻信息(5)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (249, 1, '1493644826', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (250, 1, '1493644872', '成功修改新闻信息(5)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (251, 1, '1493644885', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (252, 1, '1493644889', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (253, 1, '1493644891', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (254, 1, '1493644911', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (255, 1, '1493644913', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (256, 1, '1493644918', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (257, 1, '1493644919', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (258, 1, '1493644919', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (259, 1, '1493644919', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (260, 1, '1493644920', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (261, 1, '1493645009', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (262, 1, '1493645029', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (263, 1, '1493645043', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (264, 1, '1493645051', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (265, 1, '1493645064', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (266, 1, '1493645073', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (267, 1, '1493645130', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (268, 1, '1493645138', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (269, 1, '1493645140', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (270, 1, '1493645141', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (271, 1, '1493645261', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (272, 1, '1493645277', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (273, 1, '1493645278', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (274, 1, '1493645280', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (275, 1, '1493645282', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (276, 1, '1493645284', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (277, 1, '1493645286', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (278, 1, '1493645447', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (279, 1, '1493645450', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (280, 1, '1493645521', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (281, 1, '1493645523', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (282, 1, '1493645570', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (283, 1, '1493651699', '成功登录!', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (284, 1, '1493651736', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (285, 1, '1493651742', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (286, 1, '1493651742', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (287, 1, '1493651742', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (288, 1, '1493651742', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (289, 1, '1493651743', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (290, 1, '1493651743', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (291, 1, '1493651743', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (292, 1, '1493651743', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (293, 1, '1493651743', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (294, 1, '1493651744', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (295, 1, '1493651744', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (296, 1, '1493651744', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (297, 1, '1493651757', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (298, 1, '1493651777', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (299, 1, '1493651778', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (300, 1, '1493651780', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (301, 1, '1493651800', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (302, 1, '1493651820', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (303, 1, '1493651881', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (304, 1, '1493651904', '退出登录!', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (305, 1, '1493697350', '成功登录!', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (306, 1, '1493698164', '成功修改公告信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (307, 1, '1493698258', '成功修改公告信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (308, 1, '1493698379', '成功修改公告信息(2)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (309, 1, '1493705239', '成功修改新闻信息(5)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (310, 1, '1493705443', '成功修改新闻信息(4)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (311, 1, '1493705529', '成功修改新闻信息(3)', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (312, 1, '1493705614', '退出登录!', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (313, 1, '1493800115', '成功登录!', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (314, 1, '1493800796', '成功登录!', '111.44.239.196');
INSERT INTO `map_adminlog` VALUES (315, 1, '1494471735', '成功登录!', '113.140.11.120');
INSERT INTO `map_adminlog` VALUES (316, 1, '1494506823', '成功登录!', '111.44.239.144');
INSERT INTO `map_adminlog` VALUES (317, 1, '1494507040', '成功下载(管理员操作日志)', '111.44.239.144');
INSERT INTO `map_adminlog` VALUES (318, 1, '1494509928', '成功添加公告()', '123.138.79.10');
INSERT INTO `map_adminlog` VALUES (319, 1, '1494509957', '删除公告(5)成功!', '123.138.79.10');
INSERT INTO `map_adminlog` VALUES (320, 1, '1494509963', '成功添加公告()', '123.138.79.10');
INSERT INTO `map_adminlog` VALUES (321, 1, '1494509991', '成功添加公告()', '123.138.79.10');
INSERT INTO `map_adminlog` VALUES (322, 1, '1494509994', '删除公告(7)成功!', '123.138.79.10');
INSERT INTO `map_adminlog` VALUES (323, 1, '1494509997', '删除公告(6)成功!', '123.138.79.10');
INSERT INTO `map_adminlog` VALUES (324, 1, '1494510027', '退出登录!', '111.44.239.144');
INSERT INTO `map_adminlog` VALUES (325, 1, '1494510191', '成功登录!', '111.44.239.144');
INSERT INTO `map_adminlog` VALUES (326, 1, '1494510202', '成功添加公告()', '111.44.239.144');
INSERT INTO `map_adminlog` VALUES (327, 1, '1494510730', '成功登录!', '123.138.79.10');
INSERT INTO `map_adminlog` VALUES (328, 1, '1494513704', '删除公告(8)成功!', '111.44.239.144');
INSERT INTO `map_adminlog` VALUES (329, 1, '1494555515', '成功登录!', '210.27.181.2');
INSERT INTO `map_adminlog` VALUES (330, 1, '1494555537', '成功添加公告()', '210.27.181.2');
INSERT INTO `map_adminlog` VALUES (331, 1, '1494940647', '成功登录!', '111.44.236.154');
INSERT INTO `map_adminlog` VALUES (332, 1, '1494940657', '成功添加公告()', '111.44.236.154');
INSERT INTO `map_adminlog` VALUES (333, 1, '1494940681', '删除公告(9)成功!', '111.44.236.154');
INSERT INTO `map_adminlog` VALUES (334, 1, '1494940874', '成功添加节点路径(旧图书馆)', '111.44.236.154');
INSERT INTO `map_adminlog` VALUES (335, 1, '1494940994', '成功添加节点路径(地质楼)', '111.44.236.154');
INSERT INTO `map_adminlog` VALUES (336, 1, '1494941017', '成功添加节点路径(物理实验楼)', '111.44.236.154');
INSERT INTO `map_adminlog` VALUES (337, 1, '1494941133', '成功添加节点路径(旧化工学院)', '111.44.236.154');
INSERT INTO `map_adminlog` VALUES (338, 1, '1494941144', '成功添加节点路径(钟楼)', '111.44.236.154');
INSERT INTO `map_adminlog` VALUES (339, 1, '1494941205', '成功添加节点路径(小岛楼)', '111.44.236.154');
INSERT INTO `map_adminlog` VALUES (340, 1, '1494941268', '成功添加节点路径(丁香园)', '111.44.236.154');
INSERT INTO `map_adminlog` VALUES (341, 1, '1495345409', '成功登录!', '111.44.236.168');
INSERT INTO `map_adminlog` VALUES (342, 1, '1495345427', '成功添加公告()', '111.44.236.168');
INSERT INTO `map_adminlog` VALUES (343, 1, '1495345438', '删除公告(10)成功!', '111.44.236.168');
INSERT INTO `map_adminlog` VALUES (344, 1, '1496318218', '成功登录!', '111.44.236.59');
INSERT INTO `map_adminlog` VALUES (345, 1, '1496318324', '成功添加公告()', '111.44.236.59');
INSERT INTO `map_adminlog` VALUES (346, 1, '1496318330', '删除公告(11)成功!', '111.44.236.59');
INSERT INTO `map_adminlog` VALUES (347, 1, '1496318382', '退出登录!', '111.44.236.59');
INSERT INTO `map_adminlog` VALUES (348, 1, '1496471876', '成功登录!', '111.44.236.111');
INSERT INTO `map_adminlog` VALUES (349, 1, '1496471876', '成功登录!', '111.44.236.111');
INSERT INTO `map_adminlog` VALUES (350, 1, '1496472270', '删除公告(12)成功!', '111.44.236.111');
INSERT INTO `map_adminlog` VALUES (351, 1, '1496472274', '成功添加公告()', '111.44.236.111');
INSERT INTO `map_adminlog` VALUES (352, 1, '1496472315', '退出登录!', '111.44.236.111');
INSERT INTO `map_adminlog` VALUES (353, 1, '1496494987', '成功登录!', '111.44.236.111');
INSERT INTO `map_adminlog` VALUES (354, 1, '1496495268', '删除公告(13)成功!', '111.44.236.111');
INSERT INTO `map_adminlog` VALUES (355, 1, '1496500909', '成功登录!', '111.44.236.111');
INSERT INTO `map_adminlog` VALUES (356, 1, '1496501054', '成功添加公告()', '111.44.236.111');
INSERT INTO `map_adminlog` VALUES (357, 1, '1496501077', '删除公告(14)成功!', '111.44.236.111');
INSERT INTO `map_adminlog` VALUES (358, 1, '1496537141', '成功登录!', '110.167.231.139');
INSERT INTO `map_adminlog` VALUES (359, 1, '1496542019', '成功登录!', '110.167.231.139');
INSERT INTO `map_adminlog` VALUES (360, 1, '1496542130', '成功添加公告()', '110.167.231.139');
INSERT INTO `map_adminlog` VALUES (361, 1, '1496895352', '成功登录!', '111.44.239.144');
INSERT INTO `map_adminlog` VALUES (362, 1, '1496895462', '成功添加公告()', '111.44.239.144');
INSERT INTO `map_adminlog` VALUES (363, 1, '1496895482', '退出登录!', '111.44.239.144');
COMMIT;

-- ----------------------------
-- Table structure for map_banner
-- ----------------------------
DROP TABLE IF EXISTS `map_banner`;
CREATE TABLE `map_banner` (
  `banner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `banner_pic` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='首页';

-- ----------------------------
-- Records of map_banner
-- ----------------------------
BEGIN;
INSERT INTO `map_banner` VALUES (1, 'userfiles/banner/201704281104275642.jpg');
COMMIT;

-- ----------------------------
-- Table structure for map_link
-- ----------------------------
DROP TABLE IF EXISTS `map_link`;
CREATE TABLE `map_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '链表ID',
  `link_title` varchar(50) DEFAULT NULL COMMENT '链表ID',
  `link_node_id` int(10) DEFAULT NULL COMMENT '节点ID',
  `link_node_title` varchar(30) DEFAULT NULL COMMENT '节点名称',
  `link_node_jing` varchar(30) DEFAULT NULL COMMENT '节点经度',
  `link_node_wei` varchar(30) DEFAULT NULL COMMENT '节点纬度',
  `link_parent` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父节点ID',
  `link_createtime` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`link_id`),
  KEY `link_title` (`link_title`),
  KEY `link_parent` (`link_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COMMENT='无限极分类表';

-- ----------------------------
-- Records of map_link
-- ----------------------------
BEGIN;
INSERT INTO `map_link` VALUES (32, '财经学院', 15, '财经学院', '101.7482030000', '36.7264520000', 26, 1492948396);
INSERT INTO `map_link` VALUES (27, '新生报道', 12, '农牧学院', '101.7507130000', '36.7246810000', 26, 1491640137);
INSERT INTO `map_link` VALUES (28, '新生报道', 15, '财经学院', '101.7482030000', '36.7264520000', 27, 1491640161);
INSERT INTO `map_link` VALUES (26, '新生报道', 11, '青海大学南门', '101.7509387882', '36.7229607948', 0, 1491640118);
INSERT INTO `map_link` VALUES (29, '农牧学院', 12, '农牧学院', '101.7507130000', '36.7246810000', 26, 1492947991);
INSERT INTO `map_link` VALUES (30, '医学院', 13, '医学院', '101.7481390000', '36.7235460000', 26, 1492948292);
INSERT INTO `map_link` VALUES (31, '机械工程学院', 14, '机械工程学院', '101.7451990000', '36.7232360000', 26, 1492948340);
INSERT INTO `map_link` VALUES (33, '计算机系', 20, '计算机系', '101.7494870000', '36.7253570000', 26, 1492948414);
INSERT INTO `map_link` VALUES (34, '地质系', 20, '计算机系', '101.7494870000', '36.7253570000', 26, 1492948426);
INSERT INTO `map_link` VALUES (35, '科技馆', 21, '科技馆', '101.7504740000', '36.7262000000', 26, 1492948478);
INSERT INTO `map_link` VALUES (36, '一号楼', 22, '一号楼', '101.7497820000', '36.7270380000', 26, 1492948546);
INSERT INTO `map_link` VALUES (37, '二号楼', 23, '二号楼', '101.7505060000', '36.7273520000', 26, 1492948579);
INSERT INTO `map_link` VALUES (38, '三号楼', 24, '三号楼', '101.7505220000', '36.7282720000', 26, 1492948690);
INSERT INTO `map_link` VALUES (39, '医务室', 25, '医务室', '101.7500770000', '36.7276490000', 26, 1492948726);
INSERT INTO `map_link` VALUES (40, '体育部', 26, '体育部', '101.7492350000', '36.7274770000', 26, 1492948739);
INSERT INTO `map_link` VALUES (41, '操场', 27, '操场', '101.7497230000', '36.7289770000', 26, 1492948808);
INSERT INTO `map_link` VALUES (42, '综合楼', 28, '综合楼', '101.7512730000', '36.7283360000', 26, 1492948862);
INSERT INTO `map_link` VALUES (43, '工商银行', 28, '综合楼', '101.7512730000', '36.7283360000', 26, 1492948882);
INSERT INTO `map_link` VALUES (44, '建行', 28, '综合楼', '101.7512730000', '36.7283360000', 26, 1492948908);
INSERT INTO `map_link` VALUES (45, '园丁食堂', 29, '园丁食堂', '101.7509730000', '36.7272180000', 26, 1492948926);
INSERT INTO `map_link` VALUES (46, '中国银行', 29, '园丁食堂', '101.7509730000', '36.7272180000', 26, 1492948940);
INSERT INTO `map_link` VALUES (47, '行政A楼', 30, '行政A楼', '101.7537780000', '36.7276610000', 26, 1492948958);
INSERT INTO `map_link` VALUES (48, '校办', 30, '行政A楼', '101.7537780000', '36.7276610000', 26, 1492948996);
INSERT INTO `map_link` VALUES (49, '学籍科', 30, '行政A楼', '101.7537780000', '36.7276610000', 26, 1492949012);
INSERT INTO `map_link` VALUES (50, '行政B楼', 31, '行政B楼', '101.7529470000', '36.7270890000', 26, 1492949053);
INSERT INTO `map_link` VALUES (51, '学生处', 31, '行政B楼', '101.7529470000', '36.7270890000', 26, 1492949088);
INSERT INTO `map_link` VALUES (52, '农业银行', 32, '农行', '101.7522920000', '36.7276440000', 26, 1492949118);
INSERT INTO `map_link` VALUES (53, '创新大厦', 33, '创新大厦', '101.7528990000', '36.7289980000', 26, 1492949137);
INSERT INTO `map_link` VALUES (54, '移动营业厅', 34, '移动营业厅', '101.7507900000', '36.7325660000', 26, 1492949157);
INSERT INTO `map_link` VALUES (55, '中国邮政', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949188);
INSERT INTO `map_link` VALUES (56, '电信营业厅', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949206);
INSERT INTO `map_link` VALUES (57, '联通营业厅', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949225);
INSERT INTO `map_link` VALUES (58, '洗浴', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949251);
INSERT INTO `map_link` VALUES (59, '快递', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949265);
INSERT INTO `map_link` VALUES (60, '理发', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949281);
INSERT INTO `map_link` VALUES (61, '超市', 34, '移动营业厅', '101.7507900000', '36.7325660000', 26, 1492949305);
INSERT INTO `map_link` VALUES (62, '配眼镜', 34, '移动营业厅', '101.7507900000', '36.7325660000', 26, 1492949377);
INSERT INTO `map_link` VALUES (63, '台球', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949399);
INSERT INTO `map_link` VALUES (64, '干洗', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949436);
INSERT INTO `map_link` VALUES (65, '奶茶', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949462);
INSERT INTO `map_link` VALUES (66, '咖啡店', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949484);
INSERT INTO `map_link` VALUES (67, '周记黑鸭', 35, '中国邮政', '101.7497600000', '36.7330600000', 26, 1492949524);
INSERT INTO `map_link` VALUES (68, '化工学院', 36, '化工学院', '101.7447550000', '36.7255020000', 26, 1492949540);
INSERT INTO `map_link` VALUES (69, '图书馆', 37, '图书馆', '101.7469870000', '36.7274450000', 26, 1492949553);
INSERT INTO `map_link` VALUES (70, '常悦食堂', 38, '长悦食堂', '101.7487780000', '36.7311730000', 26, 1492949645);
INSERT INTO `map_link` VALUES (71, '租正装', 38, '长悦食堂', '101.7487780000', '36.7311730000', 26, 1492949669);
INSERT INTO `map_link` VALUES (72, '打印店', 38, '长悦食堂', '101.7487780000', '36.7311730000', 26, 1492949689);
INSERT INTO `map_link` VALUES (73, '水果店', 38, '长悦食堂', '101.7487780000', '36.7311730000', 26, 1492949707);
INSERT INTO `map_link` VALUES (74, '黄焖鸡米饭', 38, '长悦食堂', '101.7487780000', '36.7311730000', 26, 1492949735);
INSERT INTO `map_link` VALUES (75, '重庆小面', 38, '长悦食堂', '101.7487780000', '36.7311730000', 26, 1492949754);
INSERT INTO `map_link` VALUES (76, '热干面', 38, '长悦食堂', '101.7487780000', '36.7311730000', 26, 1492949764);
INSERT INTO `map_link` VALUES (77, '炮仗', 38, '长悦食堂', '101.7487780000', '36.7311730000', 26, 1492949780);
INSERT INTO `map_link` VALUES (78, '学生食堂', 39, '学生食堂', '101.7470720000', '36.7324110000', 26, 1492949850);
INSERT INTO `map_link` VALUES (79, '小炒', 39, '学生食堂', '101.7470720000', '36.7324110000', 26, 1492949866);
INSERT INTO `map_link` VALUES (80, '砂锅', 39, '学生食堂', '101.7470720000', '36.7324110000', 26, 1492949879);
INSERT INTO `map_link` VALUES (81, '快餐', 39, '学生食堂', '101.7470720000', '36.7324110000', 26, 1492949892);
INSERT INTO `map_link` VALUES (82, '清真食堂', 39, '学生食堂', '101.7470720000', '36.7324110000', 26, 1492949941);
INSERT INTO `map_link` VALUES (83, '土火锅', 39, '学生食堂', '101.7470720000', '36.7324110000', 26, 1492949961);
INSERT INTO `map_link` VALUES (84, '四号楼', 40, '四号楼', '101.7507630000', '36.7304590000', 26, 1492950064);
INSERT INTO `map_link` VALUES (85, '五号楼', 41, '五号楼', '101.7522710000', '36.7324370000', 26, 1492950114);
INSERT INTO `map_link` VALUES (86, '八号楼', 42, '八号楼', '101.7522060000', '36.7302310000', 26, 1492950170);
INSERT INTO `map_link` VALUES (87, '六号楼', 43, '六号楼', '101.7479360000', '36.7303950000', 26, 1492950232);
INSERT INTO `map_link` VALUES (88, '七号楼', 44, '七号楼', '101.7479790000', '36.7309840000', 26, 1492950285);
INSERT INTO `map_link` VALUES (89, '九号楼', 45, '九号楼', '101.7478930000', '36.7323640000', 26, 1492950365);
INSERT INTO `map_link` VALUES (90, '十号楼', 46, '十号楼', '101.7461340000', '36.7311520000', 26, 1492950408);
INSERT INTO `map_link` VALUES (91, '十一号楼', 47, '十一号楼', '101.7461390000', '36.7315860000', 26, 1492950508);
INSERT INTO `map_link` VALUES (92, '十二号楼', 48, '十二号楼', '101.7461180000', '36.7319770000', 26, 1492950553);
INSERT INTO `map_link` VALUES (93, '十三号楼', 49, '十三号楼', '101.7461130000', '36.7323680000', 26, 1492950610);
INSERT INTO `map_link` VALUES (94, '十四号楼', 50, '十四号楼', '101.7461020000', '36.7327680000', 26, 1492950666);
INSERT INTO `map_link` VALUES (95, '十五号楼', 51, '十五号楼', '101.7461070000', '36.7331640000', 26, 1492950724);
INSERT INTO `map_link` VALUES (96, '十六号楼', 52, '十六号楼', '101.7479740000', '36.7327380000', 26, 1492950790);
INSERT INTO `map_link` VALUES (97, '十七号楼', 53, '十七号楼', '101.7479630000', '36.7331550000', 26, 1492950880);
INSERT INTO `map_link` VALUES (98, '十八号楼', 54, '十八号楼', '101.7448040000', '36.7331340000', 26, 1492950945);
INSERT INTO `map_link` VALUES (99, '十九号楼', 55, '十九号楼', '101.7448090000', '36.7326950000', 26, 1492951002);
INSERT INTO `map_link` VALUES (100, '二十号楼', 56, '二十号楼', '101.7448790000', '36.7306790000', 26, 1492951068);
INSERT INTO `map_link` VALUES (101, '早餐', 29, '园丁食堂', '101.7509730000', '36.7272180000', 26, 1492951190);
INSERT INTO `map_link` VALUES (102, '米线', 29, '园丁食堂', '101.7509730000', '36.7272180000', 26, 1492951205);
INSERT INTO `map_link` VALUES (103, '刀削面', 29, '园丁食堂', '101.7509730000', '36.7272180000', 26, 1492951218);
INSERT INTO `map_link` VALUES (104, '盖浇饭', 29, '园丁食堂', '101.7509730000', '36.7272180000', 26, 1492951244);
INSERT INTO `map_link` VALUES (105, '面片', 29, '园丁食堂', '101.7509730000', '36.7272180000', 26, 1492951270);
INSERT INTO `map_link` VALUES (106, '擀面皮', 29, '园丁食堂', '101.7509730000', '36.7272180000', 26, 1492951318);
INSERT INTO `map_link` VALUES (107, '大礼堂', 21, '科技馆', '101.7504740000', '36.7262000000', 26, 1492951365);
INSERT INTO `map_link` VALUES (108, '八角亭', 57, '八角亭', '101.7507210000', '36.7278410000', 26, 1492951538);
INSERT INTO `map_link` VALUES (109, '青海大学东门', 58, '青海大学东门', '101.7548140000', '36.7273380000', 26, 1492951612);
INSERT INTO `map_link` VALUES (110, '青海大学北门', 59, '青海大学北门', '101.7489100000', '36.7335250000', 26, 1492951674);
INSERT INTO `map_link` VALUES (111, '饺子', 39, '学生食堂', '101.7470720000', '36.7324110000', 26, 1492951693);
INSERT INTO `map_link` VALUES (112, '烤肉饭', 38, '长悦食堂', '101.7487780000', '36.7311730000', 26, 1492951713);
INSERT INTO `map_link` VALUES (113, '风雨操场', 60, '风雨操场', '101.7494790000', '36.7312210000', 26, 1492952165);
INSERT INTO `map_link` VALUES (114, '羽毛球', 60, '风雨操场', '101.7494790000', '36.7312210000', 26, 1492952177);
INSERT INTO `map_link` VALUES (115, '网球', 60, '风雨操场', '101.7494790000', '36.7312210000', 26, 1492952376);
INSERT INTO `map_link` VALUES (116, '篮球', 61, '篮球场', '101.7496720000', '36.7303820000', 26, 1492952434);
INSERT INTO `map_link` VALUES (117, '乒乓球', 60, '风雨操场', '101.7494790000', '36.7312210000', 26, 1492952495);
INSERT INTO `map_link` VALUES (118, '拳击', 60, '风雨操场', '101.7494790000', '36.7312210000', 26, 1492952512);
INSERT INTO `map_link` VALUES (119, '健身房', 60, '风雨操场', '101.7494790000', '36.7312210000', 26, 1492952527);
INSERT INTO `map_link` VALUES (120, '牛肉面', 38, '长悦食堂', '101.7487780000', '36.7311730000', 26, 1492952552);
INSERT INTO `map_link` VALUES (121, '王瑞老师', 20, '计算机系', '101.7494870000', '36.7253570000', 26, 1492952641);
INSERT INTO `map_link` VALUES (122, '班主任办公室', 20, '计算机系', '101.7494870000', '36.7253570000', 26, 1492952670);
INSERT INTO `map_link` VALUES (123, '学费', 31, '行政B楼', '101.7529470000', '36.7270890000', 26, 1492952699);
INSERT INTO `map_link` VALUES (125, '旧图书馆', 63, '旧图书馆', '101.7528870000', '36.7290140000', 26, 1494940874);
INSERT INTO `map_link` VALUES (126, '地质楼', 64, '地质楼', '101.7528870000', '36.7290140000', 26, 1494940994);
INSERT INTO `map_link` VALUES (127, '物理实验楼', 64, '地质楼', '101.7528870000', '36.7290140000', 26, 1494941017);
INSERT INTO `map_link` VALUES (128, '旧化工学院', 65, '旧化工学院', '101.7521680000', '36.7283300000', 26, 1494941133);
INSERT INTO `map_link` VALUES (129, '钟楼', 65, '旧化工学院', '101.7521680000', '36.7283300000', 26, 1494941144);
INSERT INTO `map_link` VALUES (130, '小岛楼', 66, '小岛楼', '101.7532630000', '36.7286350000', 26, 1494941205);
INSERT INTO `map_link` VALUES (131, '丁香园', 67, '丁香园', '101.7512970000', '36.7293140000', 26, 1494941268);
COMMIT;

-- ----------------------------
-- Table structure for map_news
-- ----------------------------
DROP TABLE IF EXISTS `map_news`;
CREATE TABLE `map_news` (
  `news_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '新闻ID',
  `news_pic` varchar(300) DEFAULT NULL COMMENT '新闻图片',
  `news_title` varchar(20) DEFAULT NULL COMMENT '新闻名称',
  `news_desc` text COMMENT '新闻详情',
  `news_createtime` int(10) unsigned DEFAULT NULL COMMENT '新闻时间',
  `news_admin` varchar(50) DEFAULT NULL COMMENT '新闻添加人',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='导航新闻';

-- ----------------------------
-- Records of map_news
-- ----------------------------
BEGIN;
INSERT INTO `map_news` VALUES (3, 'userfiles/news/201705021412022031.jpg', '计算机系2017年就业工作推进专场招聘会', '<p>&nbsp; &nbsp; 计算机系2017年就业工作推进专场招聘会&nbsp;</p>\n\n<p>4月7日中午，计算机系在系310机房召开2017年就业工作推进暨专场招聘会，系副主任刘志强、系辅导员丁建军、班主任和2013级在校毕业生参加会议。会议由丁建军主持。刘志强主任做了开场白，他介绍了当前毕业生面临的整体就业形势，引导学生转变就业观念，合理地做好职业规划，做到毕业设计和就业工作两促进；接着辅导员丁建军老师通报了计算机系4月份的就业率，并就加强专业素养、提高求职自信心对毕业生提出希望。丁老师还对&ldquo;毕业生登记表&rdquo;的填写上交、毕业生按时参加清考作了进一步安排。就业工作推进会结束后，根据安排，博思软件有限公司和浪潮集团先后给毕业生做了招聘宣讲，并现场组织了笔试和面试.通过我系多次专场招聘会的举办，促进了用人单位与我系毕业生之间的对接，为学生增加了客观评估自身及近距离接触真实市场需求与用人考核的通道，对学生不断提高就业自信心和自身就业应对能力形成实效性帮助。</p>\n', 1493347853, '邓昕');
INSERT INTO `map_news` VALUES (4, 'userfiles/news/201705021410386985.jpg', '高校云计算大赛我系学子获骄人战绩', '<p><strong>高校云计算大赛全国总决赛我系学子获骄人战绩</strong></p>\n\n<p>近日，由教育部科技发展中心主办的第二届全国高校云计算应用创新大赛决赛在中南大学举行。青海大学作为我省唯一参赛单位，其3支参赛队伍经激烈角逐，从全国156所参赛院校的615支队伍中脱颖而出，悉数晋级全国20强，并在全国总决赛中斩获命题赛三等奖和创意赛优胜奖。</p>\n\n<p>由青海大学计算机技术与应用系学生崔鹏、王玉铭、王佳铭等12位本科生组成的三支战队在易争鸣老师指导下，在其他参赛队几乎全是211、985高校的以研究生为主的众多队伍中成功晋级并获奖，是青海大学近些年来坚持教学改革的成果。</p>\n', 1493347872, '邓昕');
INSERT INTO `map_news` VALUES (5, 'userfiles/news/201705021407115831.jpg', '计算机系十周年系庆素材征集令', '<h3><span style=\"color:#0000CD\"><span style=\"background-color:#D3D3D3\">&nbsp; &nbsp;计算机系十周年系庆素材征集令 &nbsp;</span></span></h3>\n\n<p><img alt=\"\" src=\"http://www.yanxin325.com/school_map/userfiles/upload/img/201704292220214638.jpg\" style=\"float:left; height:350px; width:400px\" /></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;年华似水，十年付初夏秋冬；光阴如梭，辉煌如不夜长虹。</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp; &nbsp;十年的沧桑，计算机系培育了满园的桃李；十年的风雨，计算机系造就了无敌的精英。</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp; 亲爱的同学们，2017年7月我们就要迎来青海大学计算机系十周年系庆啦！为了展现计算机系的光辉历程与无限风采，同学们快来大开你的脑洞，设计出让大家都眼前一亮的作品吧。可千万不要错失展现自己才华与创作力的机会哟~~</span></p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#FF0000\"><strong><span style=\"background-color:#D3D3D3\">征集内容：</span></strong></span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;青海大学计算机系十周年系庆loge设计</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;青海大学计算机系十周年系庆宣传语设计</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;大美青海摄影作品</span></p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#FF0000\"><strong><span style=\"background-color:#D3D3D3\">作品要求:</span></strong></span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;在了解计算机系历史的前提下，设计要富有创作力和感染力；</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;作品清晰度高（尤其是大美青海摄影作品须为高清）</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;LOGO&nbsp;&nbsp;&nbsp;&nbsp;设计需要备注具体说明及内容；摄影作品需标注拍摄时间、地点和内涵；</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;作品必须全部为原创作品，不得抄袭</span></p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#FF0000\"><strong><span style=\"background-color:#D3D3D3\">投稿方式以及截止时间:</span></strong></span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;投稿邮箱：yue1341792865@126.com</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18797319263@163.com</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;来稿请注明姓名、班级、联系方式</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;截止时间：2016年08月21日</span></p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"color:#FF0000\"><strong><span style=\"background-color:#D3D3D3\">评选方式以及奖励:</span></strong></span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;评选时间：2016年8月27日&mdash;28日</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;评选方式：大众投票评选，选出优秀作品</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;奖励：评选前三名的同学获得一定物质奖励，最终被选用的作品还另有奖励，大好机会不可错过哟~~~</span></p>\n\n<p><span style=\"background-color:#FFFF00\">&nbsp;&nbsp;&nbsp;&nbsp;正式启用时间：2016年8月29日起</span></p>\n', 1493347887, '邓昕');
COMMIT;

-- ----------------------------
-- Table structure for map_node
-- ----------------------------
DROP TABLE IF EXISTS `map_node`;
CREATE TABLE `map_node` (
  `node_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `node_title` varchar(30) DEFAULT NULL COMMENT '节点名称',
  `node_jing` varchar(30) DEFAULT NULL COMMENT '经度信息',
  `node_wei` varchar(30) DEFAULT NULL COMMENT '未读纬度信息',
  `node_createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`node_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='节点信息';

-- ----------------------------
-- Records of map_node
-- ----------------------------
BEGIN;
INSERT INTO `map_node` VALUES (12, '农牧学院', '101.7507130000', '36.7246810000', 1491478771);
INSERT INTO `map_node` VALUES (13, '医学院', '101.7481390000', '36.7235460000', 1491479094);
INSERT INTO `map_node` VALUES (14, '机械工程学院', '101.7451990000', '36.7232360000', 1491479138);
INSERT INTO `map_node` VALUES (15, '财经学院', '101.7482030000', '36.7264520000', 1491479182);
INSERT INTO `map_node` VALUES (20, '计算机系', '101.7494870000', '36.7253570000', 1492946423);
INSERT INTO `map_node` VALUES (21, '科技馆', '101.7504740000', '36.7262000000', 1492946489);
INSERT INTO `map_node` VALUES (11, '青海大学南门', '101.7509387882', '36.7229607948', 1491478696);
INSERT INTO `map_node` VALUES (22, '一号楼', '101.7497820000', '36.7270380000', 1492946555);
INSERT INTO `map_node` VALUES (23, '二号楼', '101.7505060000', '36.7273520000', 1492946588);
INSERT INTO `map_node` VALUES (24, '三号楼', '101.7505220000', '36.7282720000', 1492946623);
INSERT INTO `map_node` VALUES (25, '医务室', '101.7500770000', '36.7276490000', 1492946664);
INSERT INTO `map_node` VALUES (26, '体育部', '101.7492350000', '36.7274770000', 1492946703);
INSERT INTO `map_node` VALUES (27, '操场', '101.7497230000', '36.7289770000', 1492946820);
INSERT INTO `map_node` VALUES (28, '综合楼', '101.7512730000', '36.7283360000', 1492946885);
INSERT INTO `map_node` VALUES (29, '园丁食堂', '101.7509730000', '36.7272180000', 1492946935);
INSERT INTO `map_node` VALUES (30, '行政A楼', '101.7537780000', '36.7276610000', 1492946990);
INSERT INTO `map_node` VALUES (31, '行政B楼', '101.7529470000', '36.7270890000', 1492947031);
INSERT INTO `map_node` VALUES (32, '农行', '101.7522920000', '36.7276440000', 1492947065);
INSERT INTO `map_node` VALUES (33, '创新大厦', '101.7528990000', '36.7289980000', 1492947127);
INSERT INTO `map_node` VALUES (34, '移动营业厅', '101.7507900000', '36.7325660000', 1492947217);
INSERT INTO `map_node` VALUES (35, '中国邮政', '101.7497600000', '36.7330600000', 1492947266);
INSERT INTO `map_node` VALUES (36, '化工学院', '101.7447550000', '36.7255020000', 1492947346);
INSERT INTO `map_node` VALUES (37, '图书馆', '101.7469870000', '36.7274450000', 1492947717);
INSERT INTO `map_node` VALUES (38, '长悦食堂', '101.7487780000', '36.7311730000', 1492949625);
INSERT INTO `map_node` VALUES (39, '学生食堂', '101.7470720000', '36.7324110000', 1492949816);
INSERT INTO `map_node` VALUES (40, '四号楼', '101.7507630000', '36.7304590000', 1492950051);
INSERT INTO `map_node` VALUES (41, '五号楼', '101.7522710000', '36.7324370000', 1492950100);
INSERT INTO `map_node` VALUES (42, '八号楼', '101.7522060000', '36.7302310000', 1492950156);
INSERT INTO `map_node` VALUES (43, '六号楼', '101.7479360000', '36.7303950000', 1492950219);
INSERT INTO `map_node` VALUES (44, '七号楼', '101.7479790000', '36.7309840000', 1492950272);
INSERT INTO `map_node` VALUES (45, '九号楼', '101.7478930000', '36.7323640000', 1492950336);
INSERT INTO `map_node` VALUES (46, '十号楼', '101.7461340000', '36.7311520000', 1492950390);
INSERT INTO `map_node` VALUES (47, '十一号楼', '101.7461390000', '36.7315860000', 1492950493);
INSERT INTO `map_node` VALUES (48, '十二号楼', '101.7461180000', '36.7319770000', 1492950539);
INSERT INTO `map_node` VALUES (49, '十三号楼', '101.7461130000', '36.7323680000', 1492950596);
INSERT INTO `map_node` VALUES (50, '十四号楼', '101.7461020000', '36.7327680000', 1492950654);
INSERT INTO `map_node` VALUES (51, '十五号楼', '101.7461070000', '36.7331640000', 1492950705);
INSERT INTO `map_node` VALUES (52, '十六号楼', '101.7479740000', '36.7327380000', 1492950762);
INSERT INTO `map_node` VALUES (53, '十七号楼', '101.7479630000', '36.7331550000', 1492950838);
INSERT INTO `map_node` VALUES (54, '十八号楼', '101.7448040000', '36.7331340000', 1492950932);
INSERT INTO `map_node` VALUES (55, '十九号楼', '101.7448090000', '36.7326950000', 1492950987);
INSERT INTO `map_node` VALUES (56, '二十号楼', '101.7448790000', '36.7306790000', 1492951052);
INSERT INTO `map_node` VALUES (57, '八角亭', '101.7507210000', '36.7278410000', 1492951407);
INSERT INTO `map_node` VALUES (58, '青海大学东门', '101.7548140000', '36.7273380000', 1492951598);
INSERT INTO `map_node` VALUES (59, '青海大学北门', '101.7489100000', '36.7335250000', 1492951657);
INSERT INTO `map_node` VALUES (60, '风雨操场', '101.7494790000', '36.7312210000', 1492951775);
INSERT INTO `map_node` VALUES (61, '篮球场', '101.7496720000', '36.7303820000', 1492952422);
INSERT INTO `map_node` VALUES (63, '旧图书馆', '101.7528870000', '36.7290140000', 1494940854);
INSERT INTO `map_node` VALUES (64, '地质楼', '101.7528870000', '36.7290140000', 1494940982);
INSERT INTO `map_node` VALUES (65, '旧化工学院', '101.7521680000', '36.7283300000', 1494941117);
INSERT INTO `map_node` VALUES (66, '小岛楼', '101.7532630000', '36.7286350000', 1494941189);
INSERT INTO `map_node` VALUES (67, '丁香园', '101.7512970000', '36.7293140000', 1494941254);
COMMIT;

-- ----------------------------
-- Table structure for map_notice
-- ----------------------------
DROP TABLE IF EXISTS `map_notice`;
CREATE TABLE `map_notice` (
  `notice_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) DEFAULT NULL COMMENT '公告题目',
  `notice_abstract` varchar(500) DEFAULT NULL COMMENT '公告摘要',
  `notice_desc` text COMMENT '公告详情',
  `notice_admin` varchar(50) DEFAULT NULL COMMENT '公告发布人',
  `notice_createtime` int(10) unsigned DEFAULT NULL COMMENT '公告发布时间',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='导航公告';

-- ----------------------------
-- Records of map_notice
-- ----------------------------
BEGIN;
INSERT INTO `map_notice` VALUES (2, 'Google公司大中华区副总裁周平先生谈创新', ' 7月22日下午在科技馆二楼报告厅，谷歌大中华区的首席运营官周平先生为我校师生分享了一场《创新思维和创新文化》的学术报告。报告由赵之重副校长主持，全校近200余名师生聆听。', '<h3>Google公司大中华区副总裁周平先生谈创新</h3>\n\n<p>&nbsp;7月22日下午在科技馆二楼报告厅，谷歌大中华区的首席运营官周平先生为我校师生分享了一场《创新思维和创新文化》的学术报告。报告由赵之重副校长主持，全校近200余名师生聆听。</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 周平先生分别从信息革命带来的高科技发展及潮流、当今产业界的发展方向&mdash;&mdash;互联网+、人和组织都需要永远学习不停提高、创新思维和创新文化的培养等方面进行了讲述，重点介绍了高科技发展潮流中的互联网、大数据、云服务平台、人工智能等，以及个人的学习能力与创新思维的培养。报告期间师生们就互联网安全、大学生创业、虚拟现实技术应用等关注的问题与周平先生积极互动。&nbsp;&nbsp;&nbsp;&nbsp;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 通过周平先生对创新思维和创新文化的解读，让我们更加深刻地感受到互联网信息革命带来的高速行业变化、知识变化，创新和创业仅有热情和激情是不行的，要更理性的对待，在了解自身状况，在充分具备运用知识的能力、与人情感沟通的能力前提下才能很好实现。</p>\n', '邓昕', 1493303406);
INSERT INTO `map_notice` VALUES (3, '腾讯社交广告高校算法大赛火热报名中', '本次大赛旨在开放腾讯在社交和数字广告领域的真实数据，面向高校学生征集最智慧的算法解决方案。最后评选的胜出者，除了丰厚的奖金外，还会获得和腾讯专家交流、校园招聘（包括实习）免笔试绿色通道。', '<p>大赛介绍：</p>\n\n<p>腾讯社交广告高校算法大赛是面向全球高校大学生的算法大赛，作为腾讯核心的广告业务单元，腾讯社交广告通过对海量社交数据进行深入分析，构建多样广告场景，与8亿用户连接对话。在大数据、机器学习领域的持续创新投入，驱动社交广告生态发展。本次大赛旨在开放腾讯在社交和数字广告领域的真实数据，面向高校学生征集最智慧的算法解决方案。最后评选的胜出者，除了丰厚的奖金外，还会获得和腾讯专家交流、校园招聘（包括实习）免笔试绿色通道。</p>\n\n<p>&nbsp;</p>\n\n<p>大赛特色 ：</p>\n\n<p>1）基于行业前沿的研究课题，为全球精英提供数据挖掘和机器学习等领域的创新交流。大赛首次使用广告转化数据训练转化率预估模型（pCVR，Predicted Conversion Rate），在广告排序通过引入pCVR因子优化广告转化效果；</p>\n\n<p>2）提供真实数据：真实社交广告数据+加密用户画像数据+行业生态数据；</p>\n\n<p>3）初赛选手下载数据，在本地完成建模调优，可多次提交结果，取历史最好成绩；并为决赛选手提供腾讯云计算平台、免费云资源支持；</p>\n\n<p>&nbsp;</p>\n\n<p>赛程安排：</p>\n\n<p>4月12日 &ndash; 5月31日（当天12:00截止）</p>\n\n<p>线上报名，请登录QQ及邮箱进行注册激活</p>\n\n<p>4月12日 &ndash; 5月31日（当天12:00截止）</p>\n\n<p>身份认证</p>\n\n<p>5月10日 &ndash; 6月7日</p>\n\n<p>初赛，所有报名选手都可以通过官网参与</p>\n\n<p>6月8日 &ndash; 6月28日</p>\n\n<p>决赛，初赛排名前20%的队伍（大赛公告为准）</p>\n\n<p>7月上旬</p>\n\n<p>答辩，邀请决赛排名前10位队伍现场参与</p>\n\n<p>&nbsp;</p>\n\n<p>奖品设置（更多奖品请访问大赛官网）：</p>\n\n<p>冠军：一支队伍，奖金300,000元，颁发荣誉证书；指导老师获得Mac Air一台</p>\n\n<p>亚军：一支队伍，奖金100,000元，颁发荣誉证书；指导老师获得iPhone7 Plus一台</p>\n\n<p>季军：一支队伍，奖金50,000元，颁发荣誉证书；指导老师获得iPad Pro一台</p>\n\n<p>全国十强其他七支队伍：每支队伍获得奖金10,000元，颁发荣誉证书</p>\n\n<p>&nbsp;</p>\n\n<p>大赛官方Email: TSA-Contest@tencent.com</p><p>\n大赛官方QQ: 3349361056，QQ群: 150522270</p>\n\n<p>大赛PC官网主页：http://algo.tpai.qq.com</p>\n', '邓昕', 1493347997);
INSERT INTO `map_notice` VALUES (4, '一个大大大大大数据比赛要来啦！', '2017中国高校计算机大赛——大数据挑战赛开始报名啦！', '<h2>一个大大大大大数据比赛要来啦！</h2>\n\n<p>2017中国高校计算机大赛&mdash;&mdash;大数据挑战赛开始报名啦！</p>\n\n<p>大数据：</p>\n\n<p>开放某人机验证产品采集的鼠标轨迹脱敏数据，为有志于从事计算机行业的大学生们提供实战的平台，帮助大学生深入了解学习安全AI，更快成长为互联网产业的中坚力量。</p>\n\n<p>大平台：</p>\n\n<p>教育部高等学校计算机类专业教学指导委员会、教育部高等学校软件工程专业教学指导委员会、教育部高等学校大学计算机课程教学指导委员会、全国高等学校计算机教育研究会联合主办；清华大学、腾讯安全平台部联合承办。</p>\n\n<p>大福利：</p>\n\n<p>大赛奖金池共计19万，优胜者还可受邀参与腾讯方舟计划夏令营，获得腾讯校招绿色通道资格。</p>\n\n<p>赛程安排：</p>\n\n<p>报名：04.10&mdash;&mdash;06.30</p>\n\n<p>初赛：05.26&mdash;&mdash;07.21</p>\n\n<p>复赛：07.22&mdash;&mdash;08.11</p>\n\n<p>决赛：8月20日</p>\n\n<p>报名官网：http://bdc.saikr.com/bdc</p>\n', '邓昕', 1493359293);
INSERT INTO `map_notice` VALUES (15, '关于申报2017年腾讯-教育部产学合作协同育人项目通知', '关于申报2017年腾讯-教育部产学合作协同育人项目通知', '<img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428135946527713.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428135946528833.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428135946529980.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428135946531108.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428140219847287.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428140219849339.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428140219850484.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428140219850588.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428140219851698.jpg\" style=\"height:1119px; width:792px\"></img><br>', '系统更新', 1496542130);
INSERT INTO `map_notice` VALUES (16, '关于申报2017年腾讯-教育部产学合作协同育人项目通知', '关于申报2017年腾讯-教育部产学合作协同育人项目通知', '<img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428135946527713.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428135946528833.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428135946529980.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428135946531108.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428140219847287.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428140219849339.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428140219850484.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428140219850588.jpg\" style=\"height:1119px; width:792px\"></img><br><img src=\"http://cs.qhu.edu.cn/images/content/2017-04/20170428140219851698.jpg\" style=\"height:1119px; width:792px\"></img><br>', '系统更新', 1496895462);
COMMIT;

-- ----------------------------
-- Table structure for map_suggest
-- ----------------------------
DROP TABLE IF EXISTS `map_suggest`;
CREATE TABLE `map_suggest` (
  `suggest_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `suggest_name` varchar(50) DEFAULT NULL COMMENT '留言人姓名',
  `suggest_phone` bigint(20) unsigned DEFAULT NULL COMMENT '留言人电话',
  `suggest_desc` text COMMENT '留言人详细内容',
  `suggest_createtime` int(10) unsigned DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`suggest_id`),
  KEY `suggest_phone` (`suggest_phone`),
  KEY `suggest_name` (`suggest_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='导航留言建议';

-- ----------------------------
-- Records of map_suggest
-- ----------------------------
BEGIN;
INSERT INTO `map_suggest` VALUES (1, '222', 13636703826, 'fdsa fdsa fdsa fdsa fdsa', 134355);
INSERT INTO `map_suggest` VALUES (2, 'dsa fdsa', 18628601884, 'f dsa fdsa fdsa fdsa324r3', 1234434);
INSERT INTO `map_suggest` VALUES (3, '111', 13636703826, '范德萨', 1493360064);
INSERT INTO `map_suggest` VALUES (4, '2222', 13636703826, '范德萨', 1493360132);
INSERT INTO `map_suggest` VALUES (5, '规范的撒个撒', 13636703826, '范德萨范德萨范德萨法倒萨345如354543543543543', 1493474169);
INSERT INTO `map_suggest` VALUES (6, '邓昕', 12345678901, '111111', 1493474237);
INSERT INTO `map_suggest` VALUES (7, '上赛季结束', 13636703826, '表示表示', 1493474262);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
