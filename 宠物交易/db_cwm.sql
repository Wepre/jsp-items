/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : db_cwm

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2018-05-02 03:37:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` text,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `del` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('25', '小型猫', 'no');
INSERT INTO `t_catelog` VALUES ('26', '中型猫', 'no');
INSERT INTO `t_catelog` VALUES ('27', '大型猫', 'no');
INSERT INTO `t_catelog` VALUES ('28', '大中型猫', 'no');
INSERT INTO `t_catelog` VALUES ('29', '中小型猫', 'no');

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `id` varchar(50) NOT NULL,
  `xxtype` varchar(50) default NULL,
  `title` text,
  `content` longtext,
  `shijian` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1523963812547', '0', '宠物猫在线销售系统正式上线了', '家具网站售卖系统正式上线了家具网站售卖系统正式上线了家具网站售卖系统正式上线了，欢迎大家前来购买！', '2018-4-17 19:16:52');
INSERT INTO `t_gonggao` VALUES ('1523989808722', '3', '波斯猫要下崽子了', '波斯猫要下崽子了波斯猫要下崽子了波斯猫要下崽子了波斯猫要下崽子了，要预订的请打电话144434354545', '2018-4-18 2:30:08');
INSERT INTO `t_gonggao` VALUES ('1523989847011', '2', '行业新闻测试', '行业新闻测试行业新闻测试行业新闻测试行业新闻测试行业新闻测试行业新闻测试', '2018-4-18 2:30:47');
INSERT INTO `t_gonggao` VALUES ('1523989868972', '1', '宠物猫知识', '宠物猫知识宠物猫知识宠物猫知识', '2018-4-18 2:31:08');
INSERT INTO `t_gonggao` VALUES ('1523990217407', '3', '波斯猫预订通知', '<p>包波斯猫要生小猫了，有需要预订的联系我133324232323，蛙王先生</p>', '2018-4-18 2:36:57');

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL auto_increment,
  `catelog_id` int(11) default NULL,
  `nannvkuan` text,
  `bianhao` varchar(255) default NULL,
  `mingcheng` text,
  `jieshao` longtext,
  `pinpai` varchar(255) default NULL,
  `dizhi` varchar(255) default NULL,
  `dianhua` varchar(100) default NULL,
  `youxiang` varchar(100) default NULL,
  `fujian` varchar(255) default NULL,
  `shichangjia` int(11) default NULL,
  `tejia` int(11) default NULL,
  `shifoutejia` varchar(255) default NULL,
  `kucun` int(11) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('63', '25', null, '001', '苏格兰折耳猫', '<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">苏格兰折耳猫<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">苏格兰折耳猫</span></span>', '1个月', '河南', '白色', '500g', '/upload/1523985926451.jpg', '200', '200', 'fou', '0', 'no');
INSERT INTO `t_goods` VALUES ('64', '25', null, '002', '黑色宠物猫', '黑色宠物猫黑色宠物猫', '1个月', '河南', '黑色', '500g', '/upload/1523985987595.jpg', '150', '150', 'fou', '-1', 'no');
INSERT INTO `t_goods` VALUES ('65', '26', null, '003', '波斯猫', '波斯猫波斯猫波斯猫波斯猫', '1个月', '河南', '白色', '1kg', '/upload/1523986044123.jpg', '500', '500', 'fou', '0', 'no');
INSERT INTO `t_goods` VALUES ('66', '26', null, '004', '布偶猫', '<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">布偶猫<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">布偶猫<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">布偶猫</span></span></span>', '2个月', '河南', '灰色', '2kg', '/upload/1523986106575.jpg', '150', '150', 'fou', '-1', 'no');
INSERT INTO `t_goods` VALUES ('67', '26', null, '005', '美国短毛猫', '<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">美国短毛猫<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">美国短毛猫</span></span>', '1个月', '河南', '黑色', '2kg', '/upload/1523986157465.jpg', '400', '400', 'fou', '0', 'no');
INSERT INTO `t_goods` VALUES ('68', '27', null, '006', '暹罗猫', '<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">暹罗猫<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">暹罗猫<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">暹罗猫</span></span></span>', '1个月', '河南', '黑色', '2kg', '/upload/1523986194054.jpg', '400', '400', 'fou', '0', 'no');
INSERT INTO `t_goods` VALUES ('69', '28', null, '007', '狸花猫', '<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">狸花猫</span>', '2个月', '河南', '灰色', '2kg', '/upload/1523986235568.jpg', '500', '500', 'fou', '-1', 'no');
INSERT INTO `t_goods` VALUES ('70', '29', null, '008', '英国短毛猫', '<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">英国短毛猫<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">英国短毛猫</span></span>', '1个月', '河南', '灰色', '2kg', '/upload/1523986277901.jpg', '300', '300', 'fou', '-1', 'no');
INSERT INTO `t_goods` VALUES ('71', '29', null, '009', '金吉拉猫', '<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">金吉拉猫<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">金吉拉猫</span></span>', '1个月', '河南', '白色', '1kg', '/upload/1523986328831.jpg', '240', '240', 'fou', '-1', 'no');
INSERT INTO `t_goods` VALUES ('72', '27', null, '0010', '安哥拉猫', '<span style=\"text-align: justify; widows: 2; text-transform: none; background-color: rgb(255,255,255); font-style: normal; text-indent: 0px; display: inline !important; font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, arial, 宋体, sans-serif; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(51,51,51); font-size: 16px; font-weight: normal; word-spacing: 0px; font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px\">安哥拉猫</span>', '1个月', '河南', '灰色', '2kg', '/upload/1523986367911.jpg', '400', '400', 'fou', '0', 'no');

-- ----------------------------
-- Table structure for `t_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `shijian` text,
  `fujian` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------
INSERT INTO `t_liuyan` VALUES ('1523990135208', '我刚刚买了一只猫', '怎么样，看看这猫', '2018-4-18 2:35:35', '/upload/1523990126804.jpg', '1523989998929');
INSERT INTO `t_liuyan` VALUES ('1523990157240', '再发一张', '再发一张试一下', '2018-4-18 2:35:57', '/upload/1523990148360.jpg', '1523989998929');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` varchar(255) NOT NULL,
  `bianhao` varchar(255) default NULL,
  `shijian` varchar(255) default NULL,
  `zhuangtai` text,
  `songhuodizhi` varchar(255) default NULL,
  `fukuanfangshi` varchar(255) default NULL,
  `jine` int(11) default NULL,
  `user_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1523986683541', '20180418013803', '2018-04-18 01:38:03', 'no', '北京青龙胡同22', '货到付款', '1190', '1523986446364');
INSERT INTO `t_order` VALUES ('1523990057369', '20180418023417', '2018-04-18 02:34:17', 'yishou', '北京23号小区232', '货到付款', '150', '1523989998929');

-- ----------------------------
-- Table structure for `t_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `id` varchar(255) NOT NULL,
  `order_id` text,
  `goods_id` int(11) default NULL,
  `goods_quantity` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('1523986683553', '1523986683541', '69', '1');
INSERT INTO `t_orderitem` VALUES ('1523986683576', '1523986683541', '70', '1');
INSERT INTO `t_orderitem` VALUES ('1523986683597', '1523986683541', '71', '1');
INSERT INTO `t_orderitem` VALUES ('1523986683619', '1523986683541', '66', '1');
INSERT INTO `t_orderitem` VALUES ('1523990057388', '1523990057369', '64', '1');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(255) NOT NULL,
  `loginname` varchar(255) default NULL,
  `loginpw` varchar(255) default NULL,
  `name` text,
  `sex` varchar(255) default NULL,
  `age` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `qq` varchar(255) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1523986446364', 'zhangfei', '123456', '张飞', '男', '15', '北京青龙胡同', '1336655445', '3221232@qq.com', '1332212323', 'no');
INSERT INTO `t_user` VALUES ('1523989998929', 'feifei', '123456', '飞飞', '男', '25', '北京南路12', '133665542', '123223@qq.com', '123212323', 'no');

-- ----------------------------
-- Table structure for `t_yuding`
-- ----------------------------
DROP TABLE IF EXISTS `t_yuding`;
CREATE TABLE `t_yuding` (
  `id` int(11) NOT NULL auto_increment,
  `userid` varchar(255) default NULL,
  `newsid` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_yuding
-- ----------------------------
INSERT INTO `t_yuding` VALUES ('7', null, '1523989808722', '电话13345542233，联系人：王磊，我想预定一只');
INSERT INTO `t_yuding` VALUES ('12', null, '1523989808722', ' 电话13345545443，联系人：张飞，我也要定一只');
