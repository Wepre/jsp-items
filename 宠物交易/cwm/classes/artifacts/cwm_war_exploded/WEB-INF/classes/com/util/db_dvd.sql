/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_dvd
Target Host: localhost
Target Database: db_dvd
Date: 2011-8-21 ���� 01:17:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_catelog
-- ----------------------------
CREATE TABLE `t_catelog` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `jieshao` varchar(8000) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
CREATE TABLE `t_gonggao` (
  `id` varchar(50) NOT NULL,
  `title` varchar(50) default NULL,
  `content` varchar(5000) default NULL,
  `shijian` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL auto_increment,
  `catelog_id` int(11) default NULL,
  `name` varchar(255) default NULL,
  `jieshao` varchar(8000) default NULL,
  `daoyan` varchar(255) default NULL,
  `zhuyan` varchar(255) default NULL,
  `fujian` varchar(255) default NULL,
  `fujianYuanshiming` varchar(255) default NULL,
  `shichangjia` int(11) default NULL,
  `tejia` int(11) default NULL,
  `shifoutejia` varchar(255) default NULL,
  `kucun` int(11) default NULL,
  `del` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_liuyan
-- ----------------------------
CREATE TABLE `t_liuyan` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `shijian` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
CREATE TABLE `t_order` (
  `id` varchar(255) NOT NULL,
  `bianhao` varchar(255) default NULL,
  `shijian` varchar(255) default NULL,
  `zhuangtai` varchar(255) default NULL,
  `songhuodizhi` varchar(255) default NULL,
  `fukuanfangshi` varchar(255) default NULL,
  `jine` int(11) default NULL,
  `user_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_orderitem
-- ----------------------------
CREATE TABLE `t_orderitem` (
  `id` varchar(255) NOT NULL,
  `order_id` varchar(255) default NULL,
  `goods_id` int(11) default NULL,
  `goods_quantity` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE `t_user` (
  `id` varchar(255) NOT NULL default '',
  `loginname` varchar(255) default NULL,
  `loginpw` varchar(255) default NULL,
  `name` varchar(255) default NULL,
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
-- Records 
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');
INSERT INTO `t_catelog` VALUES ('1', '动作片', '动作片', 'no');
INSERT INTO `t_catelog` VALUES ('2', '爱情片', '<p>爱情片</p>', 'no');
INSERT INTO `t_catelog` VALUES ('3', '恐怕片', '恐怕片', 'no');
INSERT INTO `t_catelog` VALUES ('4', '记录片', '<p>纪录片</p>', 'no');
INSERT INTO `t_gonggao` VALUES ('1312762582187', '运费调整至5元 购物满200元免运费', '1．订购成功后，您可以通过我们给您发的确认邮件或登陆我们的网站在&ldquo;我的凡客-订单查询&rdquo;中查看订单信息，选择非货到付款方式的订单请及时支付货款，款到后我们会尽早为您安排发货。<br />\r\n2．VANCL已开通三地库房全国发货服务，系统会根据实际库存情况为您选择发货库房，以确保您能更快收到订购的商品。<br />\r\n3．因发货库房不同，货物配送到您手中的配送时间会有所不同，提交订单后系统会提示您准确的配送时间，请您关注。<br />\r\n4．为了确保商品及时准确的配送到您手中，请您在订购时填写详细的收货人信息及联系方式。<br />\r\n5．配送费收费标准为：5元/单（优惠活动期间除外）。<br />\r\n6．Vancl目前未开通自提服务，您的订单将由Vancl的配送网络直接送到您指定地点。<br />\r\n7．北京、上海（崇明除外）、广州、深圳、江苏、四川、重庆、安徽、湖北、浙江、山东等地区支持上门退换货业务，上门退换货办理时间与正常配送时间一致。<br />\r\n8．我们的送货时间为：早8：30－晚19：00，请您合理安排收货时间，如您有特殊需求请联系我们，我们会尽力为您协商解决。\r\n  ', '2011-8-8 8:16:22');
INSERT INTO `t_gonggao` VALUES ('1312763169078', '配送延误相关通告', '<p class=\"STYLE1023\" align=\"left\">尊敬的客户：</p>\r\n<p class=\"STYLE1023\" align=\"left\">&nbsp;</p>\r\n<p class=\"STYLE1023\" align=\"left\">　　受大运会交通管制影响，深圳部分地区的订单配送时间可能会有相应延误；</p>\r\n<p class=\"STYLE1023\" align=\"left\">&nbsp;</p>\r\n<p class=\"STYLE1023\" align=\"left\">　　受暴雨天气影响，近期发往部分地区的订单配送时间会出现不同程度的延误，具体情况如下：</p>\r\n<p class=\"STYLE1023\" align=\"left\">&nbsp;</p>\r\n<p class=\"STYLE1023\" align=\"left\">　　1）、7月29日天水至武都的公路江络镇路段断裂，邮车无法通行，导致发往甘肃省陇南市下属的成县、徽县、康县、礼县、西和县以及两当县等地区的订单会有相应延误；</p>\r\n<p class=\"STYLE1023\" align=\"left\">&nbsp;</p>\r\n<p class=\"STYLE1023\" align=\"left\">　　2）、8月1日-8月4日发往四川地区的订单配送时间预计会有2-3天延误；</p>\r\n<p class=\"STYLE1023\" align=\"left\">&nbsp;</p>\r\n<p class=\"STYLE1023\" align=\"left\">　　</p>', '2011-8-8 8:26:09');
INSERT INTO `t_gonggao` VALUES ('1312763349203', '每天8款超低价1元起', '每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起<br />\r\n每天8款超低价1元起', '2011-8-8 8:29:09');
INSERT INTO `t_gonggao` VALUES ('1312763374375', '测试网站公告测试测试', '测试网站公告测试测试<br />\r\n测试网站公告测试测试<br />\r\n测试网站公告测试测试', '2011-8-8 8:29:34');
INSERT INTO `t_goods` VALUES ('2', '2', '观音山', '《观音山》讲述的是两男一女三个高考落榜的年轻房客和一个50多岁的女房东之间的故事，他们都有各自的遭遇，也彼此介入了对方的生活，彼此温暖。　　一个为爱迷茫的酒吧女歌手南风，一个为...', '李玉', '范冰冰', '/upload/1312885068734.jpg', '38730ab83f393744d23c72e54e2f7d76.jpg', '10', '6', 'shi', '97', 'no');
INSERT INTO `t_goods` VALUES ('3', '2', '将爱情进行到底', '电影版《将爱情进行到底》的故事是同名电视剧的延续，讲述了十年之后杨峥和文慧的感情生活。NO.1北京杨铮和文慧结婚七年了，杨铮是大公司高管，文慧专心持家。一次有意无意间的离家出走，他住进一家在自己家对面的连锁商务酒店，并开始了偷窥文慧的生活。很多天过去了他发现文慧居然没有找过他。在他心灰意冷时，发现了......', '张一白', '李亚鹏', '/upload/1312886986609.jpg', '1312885068734.jpg', '10', '6', 'shi', '99', 'no');
INSERT INTO `t_goods` VALUES ('4', '2', '最强囍事', '神级美容师沈美 (古天乐 饰) 是广受欢迎的美容节目主持，幕前中性温文的形象不过是讨好女人包装，骨子裏仍是个粗鲁麻甩男人。一天，石油大王女友Dream(阎妮 饰)上门找沈，高薪礼聘沈到她那全女班的化妆品公司担任总裁。首天上班看见一班问题女人，沈才知开心太早，後悔太迟。众女同事都不太合作，只有长期在各......', '陈庆嘉', '古天乐', '/upload/1312887138546.jpg', 'd4deca98db440739e93e2aab1a84fa2b.jpg', '10', '6', 'shi', '87', 'no');
INSERT INTO `t_goods` VALUES ('5', '2', '惊声尖叫4', '《惊声尖叫4》的故事讲述Sidney Prescott现在是一名作家（内芙&bull;坎贝尔 饰），在关于&ldquo;教人如何自救&rdquo;的新书宣传的最后一站，她回到了家乡。与Sheriff Dewey（大卫&bull;阿奎特 饰）、他的妻子Gale Weathers（柯特妮&bull;考克斯 饰）；以及她的表妹J......', '韦斯·克雷文', '内芙·坎贝尔', '/upload/1312887252750.png', 'play.png', '10', '6', 'shi', '100', 'no');
INSERT INTO `t_goods` VALUES ('6', '1', '关云长', '影片故事设定在曹操大败刘备之后，二弟关云长为保护嫂嫂安危，被迫降曹，演绎了一处&ldquo;身在曹营心在汉&rdquo;的千古经典。刘备家眷被困曹营，关云长为存忠义甘作俘虏，被迫为曹军上阵。一场大战，关云长单人匹马斩杀敌方大将，技惊四座，而深受曹操赏识。 可是关云长却&lsquo;身在曹营心在汉&rsquo;。对曹操所有礼...', '庄文强', '甄子丹', '/upload/1312901892500.jpg', '155556623c0c6c5553619fc3bc471889.jpg', '10', '10', 'fou', '90', 'no');
INSERT INTO `t_goods` VALUES ('7', '1', '一夜迷情', '影片讲述了一对夫妇在一个晚上的故事，当男主人公（萨姆&middot;沃辛顿）在一次出差中遇到了迷人的女同事（伊娃&middot;门德斯）时，女主人公（凯拉&middot;奈特利）也遇到了旧情人（吉约姆&middot;卡内）。迈克和乔安娜是一对令人羡慕的年轻夫妻，迈克拥有安稳工作、祖安娜则是自由作家，二人居于曼克顿的时尚住宅，生活无忧。一次，迈克携眷出席公......', 'Massy Tadjedin', '凯拉·奈特利', '/upload/1312901990609.jpg', 'a38e961f6db3f28a53785f95944acb55.jpg', '10', '10', 'fou', '79', 'no');
INSERT INTO `t_goods` VALUES ('8', '2', '宅男总动员', '《宅男总动员》关注当今社会宅男与剩女的热门话题，讲述当&ldquo;三无宅男&rdquo;遇上&ldquo;三高剩女&rdquo;，两个无论年龄、世界观、生活态度、爱情观都极具差异的人相遇、相知、相爱的故事。...', '杨子', '张馨予', '/upload/1312902068640.jpg', 'e692ac659b5f6ea813c32ee608b67248.jpg', '10', '10', 'fou', '82', 'no');
INSERT INTO `t_goods` VALUES ('9', '3', '云下的日子', '《云下的日子》导演选取了怀旧喜剧这一极具商业感的视角，影片选取了改革开放初期作为时代背景，以两个贵州农村小孩进城为线索，以独特的角度再现了70年代末80年代初人们充满张力的生活...', '阎然', '张涵予', '/upload/1312902141468.jpg', 'aa4db5b43df8cb5cd9cd096f04fc972f.jpg', '10', '10', 'fou', '95', 'no');
INSERT INTO `t_liuyan` VALUES ('1312900350687', 'df', '请输入内容dfd', '2011-8-9 22:32:30', '1312764825250');
INSERT INTO `t_liuyan` VALUES ('1312900366421', '很好', '<p>做的很不错<br />\r\n&nbsp;</p>', '2011-8-9 22:32:46', '1312764825250');
INSERT INTO `t_order` VALUES ('1313007447281', '20110811041727', '2011-08-11 04:17:27', 'yes', 'xxxxxxxxxx', '货到付款', '126', '1312764825250');
INSERT INTO `t_order` VALUES ('1313007510578', '20110811041830', '2011-08-11 04:18:30', 'no', 'ccccccccc', '货到付款', '260', '1312764825250');
INSERT INTO `t_orderitem` VALUES ('1313007447328', '1313007447281', '2', '1');
INSERT INTO `t_orderitem` VALUES ('1313007447359', '1313007447281', '7', '12');
INSERT INTO `t_orderitem` VALUES ('1313007510609', '1313007510578', '6', '8');
INSERT INTO `t_orderitem` VALUES ('1313007510671', '1313007510578', '7', '7');
INSERT INTO `t_orderitem` VALUES ('1313007510750', '1313007510578', '8', '6');
INSERT INTO `t_orderitem` VALUES ('1313007510781', '1313007510578', '9', '5');
INSERT INTO `t_orderitem` VALUES ('1313007856203', '1313007856156', '4', '11');
INSERT INTO `t_orderitem` VALUES ('1313007856234', '1313007856156', '8', '11');
INSERT INTO `t_user` VALUES ('1312764825250', 'liu3718', '1', '刘光亮', '男', '25', '北京', '13455927413', 'liu198331@yahoo.cn', '1020842502', 'no');
