/*
Navicat MySQL Data Transfer

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2020-11-23 15:51:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for balance
-- ----------------------------
DROP TABLE IF EXISTS `balance`;
CREATE TABLE `balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单主键',
  `is_delete` int(11) DEFAULT NULL COMMENT '0==删除 1==显示',
  `balance_status` int(11) DEFAULT NULL COMMENT '1==未付款2==已付款3==已失效',
  `total_price` double(10,2) DEFAULT NULL COMMENT '订单总价',
  `open_id` varchar(255) DEFAULT NULL COMMENT '小程序openid',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of balance
-- ----------------------------

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `yhqid` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券主键',
  `imgurl` varchar(255) DEFAULT NULL COMMENT '图片url',
  `je` int(255) DEFAULT NULL COMMENT '金额',
  `mzje` int(255) DEFAULT NULL COMMENT '满足金额',
  `mztj` varchar(255) DEFAULT NULL COMMENT '满足条件',
  PRIMARY KEY (`yhqid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES (1, '../../images/yhq_10.png', 10, 150, '3');
INSERT INTO `coupon` VALUES (2, '../../images/yhq_20.png', 20, 300, '3');
INSERT INTO `coupon` VALUES (3, '../../images/yhq_50.png', 50, 600, '3');

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish` (
  `dish_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜的主键',
  `dish_name` varchar(255) DEFAULT NULL COMMENT '菜名',
  `dish_url` varchar(255) DEFAULT NULL COMMENT '菜的路径',
  `hot_status` int(11) DEFAULT NULL COMMENT '1==不辣 2==微辣 3==中辣 4==超辣',
  `praise_times` int(11) DEFAULT NULL COMMENT '点赞次数',
  `is_sign` int(11) DEFAULT NULL COMMENT '0==不是招牌 1==招牌',
  `is_new_dish` int(11) DEFAULT NULL COMMENT '0==不是新品 1=新品',
  `sales_volume` int(11) DEFAULT NULL COMMENT '菜的销量',
  `dish_price` double(10,2) DEFAULT NULL COMMENT '菜的价格',
  `dish_type` int(11) DEFAULT NULL COMMENT '1==热销 2==新品3==锅底4==蔬菜5==肉类6==冷菜7==酒水',
  `dish_description` varchar(255) DEFAULT NULL COMMENT '菜的描述',
  PRIMARY KEY (`dish_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES (1, '精品肥牛', '../../images/1.jpg', 1, 99, 1, 0, 999, 39.00, 1, '肥牛是精选进口、自然生长谷饲100天以上的牛。');
INSERT INTO `dish` VALUES (2, '草原羊羔肉', '../../images/2.jpg', 1, 99, 1, 0, 999, 39.00, 1, '选自内蒙古锡林郭勒大草原（含乌拉盖草原）、呼伦贝尔大草原、科尔沁大草原的12月龄以下羔羊，经过排酸、精选分切、速冻而成。');
INSERT INTO `dish` VALUES (3, '麻辣滑牛肉', '../../images/3.jpg', 3, 99, 1, 0, 888, 36.00, 1, '使用的牛肉是大小米龙和嫩肩肉，是牛的后腿和前腿中最嫩的部位，形状像黄瓜，俗称：黄瓜条。');
INSERT INTO `dish` VALUES (4, '鲜毛肚', '../../images/4.jpg', 1, 99, 1, 0, 999, 37.00, 1, '口感脆嫩，锅开后再采用“七上八下”的方法涮15秒即可食用。');
INSERT INTO `dish` VALUES (5, '黄喉', '../../images/5.jpg', 1, 99, 1, 0, 888, 29.00, 1, '精选猪黄喉，通过去筋膜、清水浸泡15小时以上，自然去除黄喉的血水和腥味。口感脆嫩弹牙。');
INSERT INTO `dish` VALUES (6, '鸭肠', '../../images/6.jpg', 1, 99, 0, 0, 666, 28.00, 1, '选用资质和证件齐全的屠宰场鸭肠，确保每根鸭肠无杂物，口感自然脆爽有嚼劲。');
INSERT INTO `dish` VALUES (7, '鲜虾', '../../images/8.jpg', 1, 99, 0, 0, 423, 29.00, 2, '优选泰国纯海水养殖的黑虎虾，挑拣其品质大规格符合海底捞统一标准的黑虎活虾');
INSERT INTO `dish` VALUES (8, '巴沙鱼', '../../images/9.jpg\r\n', 1, 99, 0, 0, 552, 10.00, 2, '精选越南湄公河流域养殖的巴沙鱼。经工厂低温车间宰杀、快速去皮等工艺加工成鱼柳');
INSERT INTO `dish` VALUES (9, '罗非鱼', '../../images/7.jpg\r\n', 1, 99, 0, 0, 324, 25.00, 2, '海底捞细选高蛋白、低胆固醇、低脂肪、含有多种不饱和脂肪酸的人工饲养淡水鱼，经过特殊方式调理');
INSERT INTO `dish` VALUES (10, '鳕鱼虾滑', '../../images/10.jpg\r\n', 1, 99, 0, 0, 999, 21.00, 3, '选择富含多种维生素深海鳕鱼，搭配海底捞独特虾滑，健康营养，涮锅3分钟，左右即可食用。');
INSERT INTO `dish` VALUES (11, '蟹味棒', '../../images/12.jpg\r\n', 1, 99, 1, 0, 999, 29.00, 3, '精选阿拉斯加深海野生狭鳕鱼和金线鱼为主要原料，经日式配方和工艺制作而成，深海鱼糜含量高');
INSERT INTO `dish` VALUES (12, '鱼豆腐', '../../images/13.jpg\r\n', 1, 99, 0, 0, 666, 17.00, 3, '选用优质鱼肉，配以佐料，搅打、蒸制而成。细嫩鲜滑，鱼香味浓。锅开后再煮2分钟左右即可食用。');
INSERT INTO `dish` VALUES (13, '招牌虾滑', '../../images/11.jpg\r\n', 1, 99, 1, 0, 666, 37.00, 3, '精选南美品种白虾虾仁，通过海底捞独有的虾滑生产工艺，虾肉含量高达93%，上桌前至少手工摔打10次，Q弹十足');
INSERT INTO `dish` VALUES (14, '油豆腐皮', '../../images/14.jpg', 1, 99, 0, 0, 888, 12.00, 4, '非转基因大豆磨浆、烧煮、揭皮而成。锅开后3-5分钟即可食用，口感滑嫩，豆香味浓郁。');
INSERT INTO `dish` VALUES (15, '魔芋丝', '../../images/15.jpg', 1, 99, 0, 0, 666, 12.00, 4, '由精选魔芋粉加工而成，锅开后3分钟即可食用，口感脆滑，营养健康');
INSERT INTO `dish` VALUES (16, '冻豆腐', '../../images/16.jpg', 1, 99, 0, 0, 999, 14.00, 4, '非转基因大豆磨浆、烧煮、压制、切块、冷冻而成。锅开后3分钟即可食用');
INSERT INTO `dish` VALUES (17, '三豆鲜腐竹', '../../images/17.jpg', 1, 99, 0, 0, 999, 14.00, 4, '采用精选的非转基因黄豆、黑豆、青豆为原料，经过浸泡清洗、煮浆、揭皮而成的鲜腐竹，通过速冻工艺保证产品新鲜');
INSERT INTO `dish` VALUES (18, '老油条', '../../images/18.jpg', 1, 99, 1, 0, 999, 15.00, 4, '传统手工酥脆小巧老油条，涮锅外酥里嫩不吸汁，配辣锅香辣可口。');
INSERT INTO `dish` VALUES (19, '娃娃菜', '../../images/19.jpg', 1, 99, 0, 0, 888, 14.00, 5, '火锅常备菜。来自山东、云南、河北等地的精选新鲜娃娃菜');
INSERT INTO `dish` VALUES (20, '蒿子杆', '../../images/20.jpg', 1, 99, 0, 0, 888, 13.00, 5, '来自云南、山东、河北、江苏等地的优质新鲜蒿子杆');
INSERT INTO `dish` VALUES (21, '菠菜', '../../images/21.jpg', 1, 99, 0, 0, 888, 13.00, 5, '精选云南，河北、江苏等地的新鲜菠菜，绿色健康');
INSERT INTO `dish` VALUES (22, '白菜', '../../images/22.jpg', 1, 99, 0, 0, 888, 11.00, 5, '精选新鲜大白菜，经过挑选、清洗、切配而成');
INSERT INTO `dish` VALUES (23, '香菜', '../../images/23.jpg', 1, 99, 0, 0, 888, 12.00, 5, '优选自山东、云南、河北、江苏等产地新鲜香菜');
INSERT INTO `dish` VALUES (24, '现炸酥肉', '../../images/24.jpg', 1, 99, 1, 0, 999, 21.00, 6, '选用上等五花肉切条，蛋液、红薯粉上浆，色泽金黄、肥而不腻、配上干辣椒碟或者番茄酱食用');
INSERT INTO `dish` VALUES (25, '茴香小油条', '../../images/25.jpg', 1, 99, 1, 0, 999, 19.00, 6, '配以鲜茴香和茴香籽，嚼起来松软，满口茴香味回味悠长，趁热吃外皮酥脆口感最佳');
INSERT INTO `dish` VALUES (26, '葱味飞饼', '../../images/26.jpg', 1, 99, 0, 0, 888, 15.00, 6, '外表呈金黄色，饼丝一层层缠绕，配以小香葱，入口酥脆葱香味十足。');
INSERT INTO `dish` VALUES (27, '金银馒头', '../../images/27.jpg', 1, 99, 0, 0, 888, 17.00, 6, '外表一半洁白，一半金黄，加入奶粉馒头散发出浓郁的奶香');
INSERT INTO `dish` VALUES (28, '快乐水', '../../images/28.jpg', 1, 99, 1, 0, 999, 5.00, 7, '可口可乐');
-- ----------------------------
-- Table structure for dish_type
-- ----------------------------
DROP TABLE IF EXISTS `dish_type`;
CREATE TABLE `dish_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜的类型主键',
  `dish_type` int(11) DEFAULT NULL COMMENT '1==热销 2==新品3==锅底4==蔬菜5==肉类6==冷菜7==酒水',
  `name` varchar(255) DEFAULT NULL COMMENT '种类名字',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dish_type
-- ----------------------------
INSERT INTO `dish_type` VALUES (1, 1, '牛羊肉类');
INSERT INTO `dish_type` VALUES (2, 2, '水产类');
INSERT INTO `dish_type` VALUES (3, 3, '丸滑类');
INSERT INTO `dish_type` VALUES (4, 4, '豆面制品');
INSERT INTO `dish_type` VALUES (5, 5, '蔬菜类');
INSERT INTO `dish_type` VALUES (6, 6, '小吃类');
INSERT INTO `dish_type` VALUES (7, 7, '酒水、饮料类');

-- ----------------------------
-- Table structure for my_coupon
-- ----------------------------
DROP TABLE IF EXISTS `my_coupon`;
CREATE TABLE `my_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `open_id` varchar(255) NOT NULL COMMENT '小程序openid',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `yhqid` int(11) DEFAULT NULL COMMENT '优惠券id',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) DEFAULT NULL COMMENT '更新时间',
  `end_time` varchar(255) DEFAULT NULL COMMENT '失效时间',
  `is_delete` int(255) DEFAULT NULL COMMENT '0==删除 1==显示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `open_id` (`open_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of my_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for res_table
-- ----------------------------
DROP TABLE IF EXISTS `res_table`;
CREATE TABLE `res_table` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '桌子主键',
  `max_seating` int(11) NOT NULL,
  `table_status` int(11) NOT NULL,
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of res_table
-- ----------------------------

-- ----------------------------
-- Table structure for reserve
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '预约主键',
  `open_id` varchar(255) DEFAULT NULL COMMENT '小程序openId',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `table_id` int(11) DEFAULT NULL COMMENT '桌子id',
  `reserve_no` varchar(255) DEFAULT NULL COMMENT '预约号码',
  `reserve_status` int(11) DEFAULT NULL COMMENT '0==失效 1==预约 2== 等待 3==无法预约',
  `reserve_date` varchar(255) DEFAULT NULL COMMENT '预约时间',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) DEFAULT NULL COMMENT '更新时间',
  `is_delete` int(11) DEFAULT '1' COMMENT '0==删除  1==显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of reserve
-- ----------------------------

-- ----------------------------
-- Table structure for shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `shop_cart`;
CREATE TABLE `shop_cart` (
  `shop_cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车主键',
  `balance_id` int(11) DEFAULT NULL COMMENT '订单主键',
  `dish_id` int(11) DEFAULT NULL COMMENT '菜单主键',
  `name` varchar(255) DEFAULT NULL COMMENT '菜名',
  `price` double(10,2) DEFAULT NULL COMMENT '单价',
  `detail` varchar(255) DEFAULT NULL COMMENT '备注',
  `count` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`shop_cart_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shop_cart
-- ----------------------------
