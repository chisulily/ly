
#1.创建轮播图表br_index_carousel
-- ----------------------------
DROP TABLE IF EXISTS `br_index_carousel`;
CREATE TABLE `br_index_carousel` (
  `cid` int(11) NOT NULL auto_increment,
  `img` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  `href` varchar(128) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
#3.向br_index_carousel轮播图表插入内容
-- ----------------------------
INSERT INTO `br_index_carousel` VALUES ('9', 'img/index/1.jpg', '轮播广告商品1', 'product_details.html?lid=28');
INSERT INTO `br_index_carousel` VALUES ('10', 'img/index/2.jpg', '轮播广告商品2', 'product_details.html?lid=19');
INSERT INTO `br_index_carousel` VALUES ('11', 'img/index/3.jpg', '轮播广告商品3', 'lookforward.html');
INSERT INTO `br_index_carousel` VALUES ('12', 'img/index/4.jpg', '轮播广告商品4', 'lookforward.html');

-- ----------------------------
#4.创建菜单产品表br_menu`
-- ----------------------------
DROP TABLE IF EXISTS `br_menu`;
CREATE TABLE `br_menu` (
  `pid` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `details` varchar(128) default NULL,
  `pic` varchar(128) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of br_menu
-- ----------------------------
INSERT INTO `br_menu` VALUES 
	('1', '甜甜圈系列', 'non suscipit leo fringilla non suscipit leo fringilla molestie','images/menu/m_1.png'),
	('2', '丹麦面包', 'non suscipit leo fringilla non suscipit leo fringilla molestie','images/menu/m_2.png'),
	('3', '料理面包', 'non suscipit leo fringilla non suscipit leo fringilla molestie','images/menu/m_3.png'),
	('4', '蛋挞系列', 'non suscipit leo fringilla non suscipit leo fringilla molestie','images/menu/m_4.png'),
	('5', '泡芙系列', 'non suscipit leo fringilla non suscipit leo fringilla molestie','images/menu/m_5.png'),
	('6', '曲奇饼系列', 'non suscipit leo fringilla non suscipit leo fringilla molestie','images/menu/m_6.png'),
	('7', '苏式糕点', 'non suscipit leo fringilla non suscipit leo fringilla molestie','images/menu/m_1.png'),
	('8', '吐司系列', 'non suscipit leo fringilla non suscipit leo fringilla molestie','images/menu/m_2.png'),
	('9', '手工蛋卷', 'non suscipit leo fringilla non suscipit leo fringilla molestie','images/menu/m_3.png');
-- ----------------------------
-- Table structure for `br_menu_details`
-- ----------------------------
DROP TABLE IF EXISTS `br_menu_details`;
CREATE TABLE `br_menu_details` (
  `did` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL,
  `title` varchar(128) default NULL,
  `details` varchar(1024) default NULL,
  `price` decimal(10,2) default NULL,
  `taste` varchar(64) default NULL,
  `pic` varchar(128) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;;
-- ----------------------------
-- Records of br_menu_details
-- ----------------------------
INSERT INTO `br_menu_details` VALUES ('1', '1', '甜甜圈系列','甜甜圈巧克力味8枚/份', '198.00','巧克力味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('2', '1', '甜甜圈系列','这里是待补充的产品细节描述', '298.00','榴莲味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('3', '1', '甜甜圈系列','这里是待补充的产品细节描述', '398.00','草莓味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('4', '1', '甜甜圈系列','这里是待补充的产品细节描述', '498.00','香草味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('5', '2', '丹麦面包','这里是待补充的产品细节描述', '198.00','原味','images/menu/m_2.png');
INSERT INTO `br_menu_details` VALUES ('6', '2', '丹麦面包','这里是待补充的产品细节描述', '298.00','欧式丹麦面包','images/menu/m_2.png');
INSERT INTO `br_menu_details` VALUES ('7', '2', '丹麦面包','这里是待补充的产品细节描述', '398.00','美式丹麦面包','images/menu/m_2.png');
INSERT INTO `br_menu_details` VALUES ('8', '2', '丹麦面包','这里是待补充的产品细节描述', '498.00','日式改良式丹麦','images/menu/m_2.png');
INSERT INTO `br_menu_details` VALUES ('9', '3', '料理面包','这里是待补充的产品细节描述', '198.00','巧克力味','images/menu/m_3.png');
INSERT INTO `br_menu_details` VALUES ('10', '3', '料理面包','这里是待补充的产品细节描述', '298.00','蓝莓味','images/menu/m_3.png');
INSERT INTO `br_menu_details` VALUES ('11', '3', '料理面包','这里是待补充的产品细节描述', '398.00','香草味','images/menu/m_3.png');
INSERT INTO `br_menu_details` VALUES ('12', '3', '料理面包','这里是待补充的产品细节描述', '498.00','巧克力味','images/menu/m_3.png');
INSERT INTO `br_menu_details` VALUES ('13', '4', '蛋挞系列','这里是待补充的产品细节描述', '38.00','葡式蛋挞','images/menu/m_4.png');
INSERT INTO `br_menu_details` VALUES ('14', '4', '蛋挞系列','这里是待补充的产品细节描述', '48.00','红豆蛋挞','images/menu/m_4.png');
INSERT INTO `br_menu_details` VALUES ('15', '4', '蛋挞系列','这里是待补充的产品细节描述', '58.00','水果蛋挞','images/menu/m_4.png');
INSERT INTO `br_menu_details` VALUES ('16', '4', '蛋挞系列','这里是待补充的产品细节描述', '68.00','随机蛋挞','images/menu/m_4.png');
INSERT INTO `br_menu_details` VALUES ('17', '5', '泡芙系列','这里是待补充的产品细节描述', '98.00','奶油原味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('18', '5', '泡芙系列','这里是待补充的产品细节描述', '128.00','原味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('19', '5', '泡芙系列','这里是待补充的产品细节描述', '158.00','香草味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('20', '5', '泡芙系列','这里是待补充的产品细节描述', '188.00','柠檬味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('21', '6', '曲奇饼系列','这里是待补充的产品细节描述', '198.00','蔓越莓','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('22', '6', '曲奇饼系列','这里是待补充的产品细节描述', '298.00','原味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('23', '6', '曲奇饼系列','这里是待补充的产品细节描述', '398.00','巧克力味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('24', '6', '曲奇饼系列','这里是待补充的产品细节描述', '498.00','咖啡味','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('25', '7', '苏式糕点','这里是待补充的产品细节描述', '198.00','马蹄糕','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('26', '7', '苏式糕点','这里是待补充的产品细节描述', '298.00','青团子','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('27', '7', '苏式糕点','这里是待补充的产品细节描述', '398.00','枣泥麻饼','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('28', '7', '苏式糕点','这里是待补充的产品细节描述', '498.00','云片糕','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('29', '8', '吐司系列','这里是待补充的产品细节描述', '198.00','全麦吐司','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('30', '8', '吐司系列','这里是待补充的产品细节描述', '298.00','蓝莓吐司','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('31', '8', '吐司系列','这里是待补充的产品细节描述', '398.00','草莓吐司','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('32', '8', '吐司系列','这里是待补充的产品细节描述', '498.00','椰香吐司','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('33', '9', '手工蛋卷','这里是待补充的产品细节描述', '198.00','椰蓉蛋卷','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('34', '9', '手工蛋卷','这里是待补充的产品细节描述', '298.00','朱古力蛋卷','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('35', '9', '手工蛋卷','这里是待补充的产品细节描述', '398.00','香芋蛋卷','images/menu/m_1.png');
INSERT INTO `br_menu_details` VALUES ('36', '9', '手工蛋卷','这里是待补充的产品细节描述', '498.00','芒果蛋卷','images/menu/m_1.png');

-- ----------------------------
-- Table structure for `br_product_pic`
-- ----------------------------
DROP TABLE IF EXISTS `br_product_pic`;
CREATE TABLE `br_product_pic` (
  `pid` int(11) NOT NULL auto_increment,
  `laptop_id` int(11) default NULL,
  `sm` varchar(128) default NULL,
  `md` varchar(128) default NULL,
  `lg` varchar(128) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of br_product_pic
-- ----------------------------
INSERT INTO `br_product_pic` VALUES (
'1', '1', 'img/product/sm/57b12a31N8f4f75a3.jpg',
'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg');

-- ----------------------------
-- Table structure for `br_user`
-- ----------------------------
DROP TABLE IF EXISTS `br_user`;
CREATE TABLE `br_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `city` varchar(128) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of br_user
-- ----------------------------
INSERT INTO `br_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', '305');
INSERT INTO `br_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', '304');
INSERT INTO `br_user` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', '303');
INSERT INTO `br_user` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', '302');
INSERT INTO `br_user` VALUES ('5', '1111', '111111', '441977193@qq.com', '18357100796', null);
INSERT INTO `br_user` VALUES ('6', 'ABCD', '123456', '123@qq.com', '13538894495', null);
INSERT INTO `br_user` VALUES ('7', 'mohk', '123456', '11@qq.com', '13512312312', null);
INSERT INTO `br_user` VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258', null);
INSERT INTO `br_user` VALUES ('9', '555555', '5555555', '55555555@163.com', '13400000000', null);
INSERT INTO `br_user` VALUES ('10', 'xuyong', '123456', '123456789@qq.com', '15525623622', null);
INSERT INTO `br_user` VALUES ('11', 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', null);
INSERT INTO `br_user` VALUES ('12', 'siyongbo', '900427', '616188545@qq.com', '18447103998', null);
INSERT INTO `br_user` VALUES ('13', 'qwerty', '123456', '1091256014@qq.com', '15617152367', null);
INSERT INTO `br_user` VALUES ('14', 'dingziqiang', '456456', '996534706@qq.com', '15567502520', null);
INSERT INTO `br_user` VALUES ('15', 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', null);
INSERT INTO `br_user` VALUES ('16', 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', null);
INSERT INTO `br_user` VALUES ('17', '<img>', 'cxy930123', 'mail@xingyu1993.cn.1', '11111111111', null);
INSERT INTO `br_user` VALUES ('18', '</body>', 'cxy930123', 'mail@xingyu1993.cn.2', '22222222222', null);
INSERT INTO `br_user` VALUES ('19', '<img src=@>', 'cxy930123', 'mail@xingyu1993.cn.3', '33333333333', null);
INSERT INTO `br_user` VALUES ('20', '气航航', 'wyh961130', '1419591926@qq.com', '15927204115', null);
INSERT INTO `br_user` VALUES ('21', 'Jessy', 'ac210921', '123456@qq.com', '13523456789', null);
INSERT INTO `br_user` VALUES ('22', 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', null);
INSERT INTO `br_user` VALUES ('23', '查安军', '025520', '27514172112@qq.com', '18158899905', null);
INSERT INTO `br_user` VALUES ('24', '123456', '123456', '123456@1.com', '13815668132', null);
INSERT INTO `br_user` VALUES ('25', '1234', '111111', '734713428@qq.com', '18061920422', null);
INSERT INTO `br_user` VALUES ('26', 'qwe12345', '123123', '1191769510@qq.com', '15234010643', null);
INSERT INTO `br_user` VALUES ('27', '海贼王', '5124457', 'hxxcrocky@qq.com', '18826450879', null);
INSERT INTO `br_user` VALUES ('28', 'hanrufuyun00', 'hanrufuyun11', '458205630@qq.com', '13853114827', null);
INSERT INTO `br_user` VALUES ('29', 'li999999', 'li999999', 'limingdir@163.com', '18557512341', null);
INSERT INTO `br_user` VALUES ('30', '111111111111', '123456', '1057631733@qq.com', '15275106677', null);
-- ----------------------------
-- Records of br_user
-- ----------------------------