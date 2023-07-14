/*
Navicat MySQL Data Transfer

Source Server         : haohongwei
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : pet

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2021-09-21 18:08:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `image1` varchar(255) DEFAULT NULL COMMENT '细节图片1',
  `image2` varchar(255) DEFAULT NULL COMMENT '细节图片2',
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `intro` varchar(255) DEFAULT NULL COMMENT '介绍',
  `stock` int(11) DEFAULT '0' COMMENT '库存',
  `type_id` int(11) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '洁足泡沫', '/picture/1-1.jpg', '/picture/1-2.jpg', '/picture/1-3.jpg', '229', '天然VC，提取多种蔬果中的维生素C，具有保湿作用，提取橙花精油，提取橙皮中的维他命C，研制成精油，对皮肤有保湿效果', '10', '1');
INSERT INTO `goods` VALUES ('2', '宠物香波', '/picture/2-1.jpg', '/picture/2-2.jpg', '/picture/2-3.jpg', '129', '多种天然维他命，富含多种维他命，用于香波中，能狗修复损伤毛发，使宠物毛发更加坚韧靓丽，不堵塞毛孔，细腻泡沫深层滋养', '10', '1');
INSERT INTO `goods` VALUES ('3', '宠物尿垫', '/picture/3-1.jpg', '/picture/3-2.jpg', '/picture/3-3.jpg', '50', '锁水性能好，表面干燥，锁水，不反渗透，吸水性能好，仅需要5秒，水分全部吸收', '10', '1');
INSERT INTO `goods` VALUES ('4', '幼犬发育礼包', '/picture/4-1.jpg', '/picture/4-2.jpg', '/picture/4-3.jpg', '259', '幼犬发育礼包，卫仕幼犬羊奶粉乳钙片营养师定制，幼犬发育礼包，13年经典品质', '10', '1');
INSERT INTO `goods` VALUES ('5', '孔雀花鳉', 'picture/5-1.jpg', 'picture/5-2.jpg', 'picture/5-3.jpg', '500', '孔雀花鳉（学名：Poecilia reticulata，别名：孔雀鱼）是花鳉科花鳉属动物，原产于南美洲的委内瑞拉、圭亚那、西印度群岛、巴西北部等地。  孔雀花鳉体形修长，后部侧扁，有着非常漂亮的尾巴。该鱼雌雄鱼的体型和色彩差别较大；背鳍较长，卜靖尖状，尾鳍宽而长约占全长的二分之一以上，尾柄长，大于尾柄高。它主要栖息于淡水流域及湖沼，性情温和，能与温和的中小性型热带鱼混养。', '10', '3');
INSERT INTO `goods` VALUES ('6', '布偶猫', '/picture/6-1.jpg', '/picture/6-2.jpg', '/picture/6-3.jpg', '2099', '布偶猫，又称“布拉多尔（Ragdoll）”，发源于美国，是一种杂交品种宠物猫。是现存体型最大、体重最重的猫之一。头呈楔形，眼大而圆，被毛丰厚，四肢较长且富有肉感，尾长，身体柔软，毛色有重点色、手套色或双色等等。布偶猫较为温顺好静，对人友善。其美丽优雅又非常类似于狗的性格（Puppy cat）而又被称为\"仙女猫\"，\"小狗猫\"。', '10', '2');
INSERT INTO `goods` VALUES ('7', '美国短毛猫', '/picture/7-1.jpg', '/picture/7-2.jpg', '/picture/7-3.jpg', '988', '美国短毛猫，又称美洲短毛虎纹猫，是美国人把欧洲猫与美洲大陆的土种猫加以改良而育成，是家猫中的传统品种。1971年，其被选为美国最好的猫种之一。', '10', '2');
INSERT INTO `goods` VALUES ('8', '暹罗猫', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '2999', '暹（xiān）罗猫是世界著名的短毛猫，也是短毛猫的代表品种。种族原产于暹罗（今泰国），故名暹罗猫。在200多年前，这种珍贵的猫仅在泰国的皇宫和大寺院中饲养，是足不出户的贵族。', '10', '2');
INSERT INTO `goods` VALUES ('9', '英国短毛猫', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '2099', '英国短毛猫，体形圆胖，四肢粗短发达，毛短而密，头大脸圆，温柔平静，对人友善，极易饲养。大而圆的眼睛根据被毛不同而呈现各种颜色。作为一个古老的猫品种，其历史可追溯至古罗马时期的家猫，由于拥有悠久的育种历史，可以称得上是猫家族中的典范。英国短毛猫除了拥有固定而聚，代表性的遗传特征之外，又具有丰富的变异性，如背毛色眼睛颜色等。更重要的是，有了广泛的配种历史后，这种猫拥有了更健康的身体和更温驯的性格。', '10', '2');
INSERT INTO `goods` VALUES ('10', '博美', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '1028', '博美是一种紧凑、短背、活跃的玩赏犬，学名哈多利系博美犬（俗称英系博美犬），是德国狐狸犬的一种，原产德国。它拥有柔软、浓密的底毛和粗硬的皮毛。', '10', '2');
INSERT INTO `goods` VALUES ('11', '柯基', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '1888', '威尔士柯基犬是一种小型犬，但性格非常稳健，完全没有一般小型犬的神经质，是非常适合小孩的守护犬。它们的胆子很大，也相当机警，能高度警惕地守护家园，是最受欢迎的小型护卫犬之一。', '10', '2');
INSERT INTO `goods` VALUES ('12', '雪纳瑞', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '3666', '雪纳瑞犬是梗类犬的一种，起源于15世纪的德国，是唯一在梗犬类中不含英国血统的品种。其名字Schnauzer是德语的“口吻”之意，他们精力充沛、活泼、聪明。', '10', '2');
INSERT INTO `goods` VALUES ('13', '泰迪棕色', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '800', '贵宾犬（Poodle），也称“贵妇犬”，又称“卷毛狗”，在德语中，Pudel是“水花飞溅”的意思，是犬亚科犬属的一种动物。贵宾犬的来源就像它为了拖出猎禽所涉过的水一样浑浊不清。', '10', '2');
INSERT INTO `goods` VALUES ('14', '比熊', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '999', '比熊犬（法语：Bichon Frisé，意指“白色卷毛的玩赏用小狗”）原产于地中海地区，是一种小型犬品种。它们不会自然脱毛，因此毛发需要整理。颜色一般白色。 原称巴比熊犬，后缩为比熊犬。怀疑是巴比特犬和水猎融犬的后裔。是一种娇小的、强健的白色粉扑型的狗，具有欢快的性格，从它羽毛般欢快地卷在背后的尾巴和好奇的眼神中就能体现出来。', '10', '2');
INSERT INTO `goods` VALUES ('15', '兔', 'picture/15-1.jpg', 'picture/15-2.jpg', 'picture/15-3.jpg', '50', '兔（学名：Leporidae），兔科兔属哺乳动物。  兔具有管状长耳，簇状短尾，强健后腿。以亚洲东部、南部、非洲和北美洲种类最多，少数种类分布于欧洲和南美洲，陆栖，多见于荒漠、荒漠化草原、热带疏林、干草原和森林或树林。', '10', '5');
INSERT INTO `goods` VALUES ('16', '柴犬', '/picture/16-1.jpg', '/picture/16-2.jpg', '/picture/16-3.jpg', '2000', '柴犬是体型中等并且又最古老的犬。柴犬能够应付陡峭的丘陵和山脉的斜坡，拥有灵敏的感官，使得柴犬屡次成为上乘的狩猎犬。柴犬性格活泼、好动。对自己喜欢的玩具、会一天到晚的把玩。', '10', '2');
INSERT INTO `goods` VALUES ('17', '虎皮鹦鹉', 'picture/17-1.jpg', 'picture/17-2.jpg', 'picture/17-3.jpg', '1888', '虎皮鹦鹉（学名：Melopsittacus undulatus）是鹦鹉科虎皮鹦鹉属动物，被列入《世界自然保护联盟》濒危物种红色名录无危物种。  虎皮鹦鹉广泛分布于澳大利亚内陆地区，东部、西南部、北省的沿海地区。虎皮鹦鹉栖息于林缘、草地等处，结群活动，繁殖期为1-6月，每窝产卵4-8枚。它以植物种子等为食，性情活泼且易于驯养。虎皮鹦鹉头羽和背羽一般呈黄色且有黑色条纹，毛色和条纹犹如虎皮一般。成鸟头顶较圆平，嘴壳甚强大，上嘴壳基部为蜡膜覆盖，上嘴壳弯曲如钩状，体羽色彩艳丽多变。', '10', '4');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL COMMENT '购买时价格',
  `amount` int(11) DEFAULT NULL COMMENT '购买数量',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `good_id` int(11) DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '259', '1', '1', '4');
INSERT INTO `items` VALUES ('2', '259', '1', '2', '4');
INSERT INTO `items` VALUES ('3', '259', '1', '3', '4');
INSERT INTO `items` VALUES ('4', '800', '1', '3', '13');
INSERT INTO `items` VALUES ('5', '800', '2', '4', '13');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` int(11) DEFAULT NULL COMMENT '总价',
  `amount` int(11) DEFAULT NULL COMMENT '商品总数',
  `status` tinyint(4) DEFAULT '1' COMMENT '订单状态(1未付款/2已付款/3已发货/4已完成)',
  `paytype` tinyint(4) DEFAULT '0' COMMENT '支付方式 (1微信/2支付宝/3货到付款)',
  `name` varchar(255) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `systime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
  `user_id` int(11) DEFAULT NULL COMMENT '下单用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for tops
-- ----------------------------
DROP TABLE IF EXISTS `tops`;
CREATE TABLE `tops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL COMMENT '推荐类型(1条幅/2大图/3小图)',
  `good_id` int(11) DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='首页推荐商品';

-- ----------------------------
-- Records of tops
-- ----------------------------
INSERT INTO `tops` VALUES ('2', '2', '16');
INSERT INTO `tops` VALUES ('3', '2', '14');
INSERT INTO `tops` VALUES ('4', '2', '11');
INSERT INTO `tops` VALUES ('5', '2', '10');
INSERT INTO `tops` VALUES ('6', '2', '13');
INSERT INTO `tops` VALUES ('8', '3', '9');
INSERT INTO `tops` VALUES ('9', '3', '8');
INSERT INTO `tops` VALUES ('10', '3', '7');
INSERT INTO `tops` VALUES ('11', '3', '6');
INSERT INTO `tops` VALUES ('12', '1', '4');

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES ('1', '宠物周边');
INSERT INTO `types` VALUES ('2', '犬猫类');
INSERT INTO `types` VALUES ('3', '鱼类');
INSERT INTO `types` VALUES ('4', '鸟类');
INSERT INTO `types` VALUES ('5', '爬行动物类');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '1', '1', '1', '1');
