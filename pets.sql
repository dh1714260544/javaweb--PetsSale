/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : pets

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2018-03-06 21:56:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_addresses`
-- ----------------------------
DROP TABLE IF EXISTS `t_addresses`;
CREATE TABLE `t_addresses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rname` varchar(22) DEFAULT NULL,
  `rphone` varchar(22) DEFAULT NULL,
  `local` varchar(22) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `isEnable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_addresses
-- ----------------------------
INSERT INTO `t_addresses` VALUES ('56', '安安', '1500', '华为', '等待', '31', '1');
INSERT INTO `t_addresses` VALUES ('57', '安安', '159999988', '华信区', '顶顶顶顶', '38', '1');
INSERT INTO `t_addresses` VALUES ('58', '安安', '159988', '指针', '赛事', '44', '1');
INSERT INTO `t_addresses` VALUES ('59', '', 'aa', '', '', '45', '1');

-- ----------------------------
-- Table structure for `t_admins`
-- ----------------------------
DROP TABLE IF EXISTS `t_admins`;
CREATE TABLE `t_admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admins
-- ----------------------------
INSERT INTO `t_admins` VALUES ('4', '123@qq.com', '小J', '155555', null, '1');
INSERT INTO `t_admins` VALUES ('50', 'admin', 'admin', 'admin', 'admin', '0');
INSERT INTO `t_admins` VALUES ('51', 'bbb@qq.com', 'bbb', '123', '1234567', '1');
INSERT INTO `t_admins` VALUES ('52', 'admin2@qq.com', '123', '123123', 'admin123', '1');
INSERT INTO `t_admins` VALUES ('53', 'admin@qq.com', 'admin', '123', 'admin', '1');
INSERT INTO `t_admins` VALUES ('54', '9867715700@qq.com', '123', '44', '123456', '1');

-- ----------------------------
-- Table structure for `t_evaluates`
-- ----------------------------
DROP TABLE IF EXISTS `t_evaluates`;
CREATE TABLE `t_evaluates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `petsid` bigint(20) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `petsid` (`petsid`),
  CONSTRAINT `t_evaluates_ibfk_1` FOREIGN KEY (`petsid`) REFERENCES `t_pets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_evaluates
-- ----------------------------
INSERT INTO `t_evaluates` VALUES ('190', '31', '46', 'cccc', '123', 'xxx', '0', '啊啊啊');
INSERT INTO `t_evaluates` VALUES ('191', '31', '46', '66', '123', '55', '0', null);

-- ----------------------------
-- Table structure for `t_messages`
-- ----------------------------
DROP TABLE IF EXISTS `t_messages`;
CREATE TABLE `t_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_messages
-- ----------------------------
INSERT INTO `t_messages` VALUES ('66', '31', '<p>宠物店很不错哦</p>', '123');
INSERT INTO `t_messages` VALUES ('67', '31', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0001.gif\"/></p>', '123');
INSERT INTO `t_messages` VALUES ('68', '31', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0007.gif\"/></p>', '123');
INSERT INTO `t_messages` VALUES ('69', '31', '<p><img src=\"/PetsBuyFront//ueditor/jsp/upload/image/20180303/1520066502974030064.jpg\" title=\"1520066502974030064.jpg\" alt=\"aef1cc26.jpg\"/></p>', '123');
INSERT INTO `t_messages` VALUES ('70', '31', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0012.gif\"/></p>', '123');
INSERT INTO `t_messages` VALUES ('71', null, '<p><img src=\"http://img.baidu.com/hi/jx2/j_0001.gif\"/></p>', '匿名者');

-- ----------------------------
-- Table structure for `t_orders`
-- ----------------------------
DROP TABLE IF EXISTS `t_orders`;
CREATE TABLE `t_orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `petsid` bigint(20) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orders
-- ----------------------------
INSERT INTO `t_orders` VALUES ('99', '31', '1', '1');
INSERT INTO `t_orders` VALUES ('100', '31', '1', '1');
INSERT INTO `t_orders` VALUES ('101', '31', '1', '1');
INSERT INTO `t_orders` VALUES ('102', '31', '2', '1');
INSERT INTO `t_orders` VALUES ('103', '31', '1', '1');
INSERT INTO `t_orders` VALUES ('104', '31', '2', '1');
INSERT INTO `t_orders` VALUES ('105', '31', '3', '1');
INSERT INTO `t_orders` VALUES ('106', '34', '1', '0');
INSERT INTO `t_orders` VALUES ('107', '34', '2', '0');
INSERT INTO `t_orders` VALUES ('108', '34', '1', '0');
INSERT INTO `t_orders` VALUES ('109', '35', '15', '1');
INSERT INTO `t_orders` VALUES ('110', '35', '2', '1');
INSERT INTO `t_orders` VALUES ('111', '35', '3', '1');
INSERT INTO `t_orders` VALUES ('112', '35', '1', '1');
INSERT INTO `t_orders` VALUES ('113', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('114', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('115', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('116', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('117', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('118', '31', '45', '1');
INSERT INTO `t_orders` VALUES ('119', '31', '45', '1');
INSERT INTO `t_orders` VALUES ('120', '31', '47', '1');
INSERT INTO `t_orders` VALUES ('121', '31', '45', '1');
INSERT INTO `t_orders` VALUES ('122', '31', '47', '1');
INSERT INTO `t_orders` VALUES ('123', '31', '48', '1');
INSERT INTO `t_orders` VALUES ('124', '31', '48', '1');
INSERT INTO `t_orders` VALUES ('125', '31', '48', '1');
INSERT INTO `t_orders` VALUES ('126', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('127', '31', '45', '1');
INSERT INTO `t_orders` VALUES ('128', '31', '45', '1');
INSERT INTO `t_orders` VALUES ('129', '31', '45', '1');
INSERT INTO `t_orders` VALUES ('130', '31', '47', '1');
INSERT INTO `t_orders` VALUES ('131', '31', '48', '1');
INSERT INTO `t_orders` VALUES ('132', '31', '48', '1');
INSERT INTO `t_orders` VALUES ('133', '31', '48', '1');
INSERT INTO `t_orders` VALUES ('134', '31', '45', '1');
INSERT INTO `t_orders` VALUES ('135', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('136', '44', '48', '1');
INSERT INTO `t_orders` VALUES ('137', '44', '49', '1');
INSERT INTO `t_orders` VALUES ('138', '31', '47', '1');
INSERT INTO `t_orders` VALUES ('139', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('140', '6', '48', '0');
INSERT INTO `t_orders` VALUES ('141', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('142', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('143', '31', '55', '1');
INSERT INTO `t_orders` VALUES ('144', '31', '47', '1');
INSERT INTO `t_orders` VALUES ('145', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('146', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('147', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('148', '31', '48', '1');
INSERT INTO `t_orders` VALUES ('149', '31', '47', '1');
INSERT INTO `t_orders` VALUES ('150', '31', '48', '1');
INSERT INTO `t_orders` VALUES ('151', '31', '49', '1');
INSERT INTO `t_orders` VALUES ('152', '31', '60', '1');
INSERT INTO `t_orders` VALUES ('153', '31', '47', '1');
INSERT INTO `t_orders` VALUES ('154', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('155', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('156', '31', '46', '1');
INSERT INTO `t_orders` VALUES ('157', '31', '51', '0');

-- ----------------------------
-- Table structure for `t_pets`
-- ----------------------------
DROP TABLE IF EXISTS `t_pets`;
CREATE TABLE `t_pets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` float(20,0) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `sale` float DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pets
-- ----------------------------
INSERT INTO `t_pets` VALUES ('1', '哈士奇', '2', 'dog', '西伯利亚哈士奇的特色气质是友好、温和，但也不失机警、热情、聪明、温顺、热心，饲养的城乡均可，宽敞为佳。最好是住在郊区，有一个有围栏的院子更佳。也适合居住小区空地较多的饲养者、害怕孤单须有人陪伴、精力旺盛运动量大。不适宜老年人和休闲时间不多的上班族和学生饲养。', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1519540621935&di=edbcda301f0e22e94a1e97e4258f74d2&imgtype=0&src=http%3A%2F%2Fimg15.3lian.com%2F2016%2Fh1%2F156%2F203.jpg', '500.2', '1');
INSERT INTO `t_pets` VALUES ('2', '博美犬', '3', 'dog', '博美是一种紧凑、短背、活跃的玩赏犬，学名哈多利系博美犬（俗称英系博美犬），是德国狐狸犬的一种，原产德国。它拥有柔软、浓密的底毛和粗硬的皮毛。', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1519536334382&di=5c91722f9071cfc74e92b19daf817470&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20170109%2F4f49594b0d2c4253ab757d573bd638db_th.jpg', '400', '1');
INSERT INTO `t_pets` VALUES ('3', '玩具', '0', 'play', '一个狗骨头', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2385102942,1605973198&fm=27&gp=0.jpg', '22', '1');
INSERT INTO `t_pets` VALUES ('4', '猫咪', '2', 'cat', '啊啊', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1519539323555&di=4958204ad2de0027c264e49c732587fe&imgtype=0&src=http%3A%2F%2Fimg2.ph.126.net%2FaHE5Lqbiciqi_UlImGTJ4Q%3D%3D%2F6630198052001994020.jpg', '100', '1');
INSERT INTO `t_pets` VALUES ('5', '小花猫', '1', 'cat', '狸花猫的原产地是中国，属于自然猫，是在千百年中经过许多品种的自然淘汰而保留下来的品种。人们最熟悉的就要算是“狸猫换太子”（宋朝）的故事了，这也是能够找到的最早有关于狸花猫的记录了，所以，狸花猫就有了一个这样的英文名字DragonLi，由CFA猫会授予。它非常受百姓们喜欢，因为它有漂亮、厚实的皮毛，健康的身体。容易喂养，并且对捕捉老鼠十分', 'G:\\tomcat主要的\\apache-tomcat-8.0.36\\wtpwebapps\\PetsBuyAdmin\\upload\\557f0ae2-a212-4e4c-94ac-2faf4e673e17.jpg', '25', '1');
INSERT INTO `t_pets` VALUES ('10', null, '1', 'dog', '中华田园犬', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1001166886,250566894&fm=58&bpow=0&bpoh=0', '500', '1');
INSERT INTO `t_pets` VALUES ('11', '猫', '1', 'cat', '大猫', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1853832225,307688784&fm=5', '12', '1');
INSERT INTO `t_pets` VALUES ('12', '3', '4', '5', '2', '1', '6', '1');
INSERT INTO `t_pets` VALUES ('13', '123', '123', '123', '123', '123', '123', '1');
INSERT INTO `t_pets` VALUES ('14', '4', '5', '6', '3', '12', '7', '1');
INSERT INTO `t_pets` VALUES ('15', '大花猫', '2', 'cat', '狸花猫的原产地是中国,属于自然猫,是在千百年中经过许多品种的自然淘汰而保留下来的品种。人们最熟悉的就要算是“狸猫换太子”(宋朝)的故事了,这也是能够找到的最早有关于狸花猫的记录了,所以,狸花猫就有了一个这样的英文名字DragonLi,由CFA猫会授予。它非常受百姓们喜欢,因为它有漂亮、厚实的皮毛,健康的身体。容易喂养,并且对捕捉老鼠十分在行。[1]', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=4101797743,612769154&fm=27&gp=0.jpg', '100', '1');
INSERT INTO `t_pets` VALUES ('16', '4', '3', '5', '123', 'http://a1.qpic.cn/psb?/V14F9mhA0RgwIV/J7.xuWYyrhDxbpqFu.Cilv94WenRAcRnWBZbg8Qj4*A!/m/dMgAAAAAAAAAnull&bo=BQH6AAAAAAACB90!&rf=photolist&t=5', '6', '1');
INSERT INTO `t_pets` VALUES ('17', '2', '3', '4', '1', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3868620627,2694438302&fm=58', '5', '1');
INSERT INTO `t_pets` VALUES ('18', '波斯猫', '1', 'cat', '波斯猫(Persian cat)是以阿富汗的土种长毛猫和土耳其的安哥拉长毛猫为基础,在英国经过100多年的选种繁殖,于1860年诞生的一个品种。 波斯猫是最常见的长毛猫,波斯猫有一张讨人喜爱的面庞,长而华丽的背毛,优雅的举止,故有“猫中王子”、“王妃”之称,是世界上爱猫者最喜欢的纯种猫之一,占有极其重要的地位。', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1853832225,307688784&fm=5', '1111', '1');
INSERT INTO `t_pets` VALUES ('19', '猫粮', '1', 'play', '猫粮', 'https://ss0.bdstatic.com/6ONWsjip0QIZ8tyhnq/it/u=2107314520,3847252490&fm=77&w_h=121_75&cs=3558596100,1261870205', '33', '1');
INSERT INTO `t_pets` VALUES ('20', '阿斯顿', '12', 'cat', '猫', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1569462993,172008204&fm=5', '33', '1');
INSERT INTO `t_pets` VALUES ('26', null, '1', 'dog', '', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519708672353016261.png\" title=\"1519708672353016261.png\" alt=\"QQ截图20180102094025.png\"/></p>', '111', '1');
INSERT INTO `t_pets` VALUES ('27', '哈士奇', '1', 'dog', '西伯利亚雪橇犬(俄语:Сибирский хаски,英语:Siberian husky),常见别名哈士奇,昵称为二哈。西伯利亚雪橇犬体重介于雄犬20-27公斤,雌犬16-23公斤,身高大约雄犬肩高53-58厘米,雌犬51-56厘米,是一种中型犬。西伯利亚雪橇犬是原始的古老犬种,在西伯利亚东北部、格陵兰南部生活。...', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519708961939057220.jpg\" title=\"1519708961939057220.jpg\" alt=\"timg.jpg\"/></p>', '5000', '1');
INSERT INTO `t_pets` VALUES ('28', '博美', '1', 'dog', '一只博美', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519709020886089882.jpg\" title=\"1519709020886089882.jpg\" alt=\"timg (1).jpg\" width=\"526\" height=\"368\"/></p>', '200', '1');
INSERT INTO `t_pets` VALUES ('29', '161105Java班', '2', '3', '5', '<p><img src=\"G:///ueditor/jsp/upload/image/20180227/1519710020532076341.jpg\" title=\"1519710020532076341.jpg\" alt=\"u=1853832225,307688784&amp;fm=5.jpg\"/></p>', '4', '1');
INSERT INTO `t_pets` VALUES ('30', '123', '123', '123', '123', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519710171923043094.jpg\" title=\"1519710171923043094.jpg\" alt=\"u=2107314520,3847252490&amp;fm=77&amp;w_h=121_75&amp;cs=3558596100,1261870205.jpg\"/></p>', '123', '1');
INSERT INTO `t_pets` VALUES ('31', '哈士奇', '12', 'dog', '西伯利亚雪橇犬(俄语:Сибирский хаски,英语:Siberian husky),常见别名哈士奇,昵称为二哈。西伯利亚雪橇犬体重介于雄犬20-27公斤,雌犬16-23公斤,身高大约雄犬肩高53-58厘米,雌犬51-56厘米,是一种中型犬。西伯利亚雪橇犬是原始的古老犬种,在西伯利亚东北部、格陵兰南部生活。...', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519710384736007120.jpg\" title=\"1519710384736007120.jpg\" alt=\"timg.jpg\"/></p>', '100', '1');
INSERT INTO `t_pets` VALUES ('32', '123321', '123', 'cat', '123', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519712880905028621.jpg\" title=\"1519712880905028621.jpg\" alt=\"u=1853832225,307688784&amp;fm=5.jpg\"/></p>', '123', '1');
INSERT INTO `t_pets` VALUES ('33', '123', '123', 'cat', '333', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519713417596094723.jpg\" title=\"1519713417596094723.jpg\" alt=\"u=1853832225,307688784&amp;fm=5.jpg\"/></p>', '123', '1');
INSERT INTO `t_pets` VALUES ('34', '波斯猫', '12', 'cat', '一致波斯猫', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519718162298007520.jpg\" title=\"1519718162298007520.jpg\" alt=\"u=1853832225,307688784&amp;fm=5.jpg\"/></p>', '100', '1');
INSERT INTO `t_pets` VALUES ('35', '161105Java班', '3', '4', '6', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519721387396029929.jpg\" title=\"1519721387396029929.jpg\" alt=\"u=4101797743,612769154&amp;fm=27&amp;gp=0.jpg\"/></p>', '500', '1');
INSERT INTO `t_pets` VALUES ('36', '123', '123', 'dog', '好用', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519723803397085916.jpg\" title=\"1519723803397085916.jpg\" alt=\"timg.jpg\"/></p>', '100', '1');
INSERT INTO `t_pets` VALUES ('37', '111', '22', 'cat', '毛毛', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519723827618099947.jpg\" title=\"1519723827618099947.jpg\" alt=\"u=1853832225,307688784&amp;fm=5.jpg\"/></p>', '120', '1');
INSERT INTO `t_pets` VALUES ('38', '161105Java班', '2', '4', '123', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519724458132094611.jpg\" title=\"1519724458132094611.jpg\" alt=\"u=2385102942,1605973198&amp;fm=27&amp;gp=0.jpg\"/></p>', '222', '1');
INSERT INTO `t_pets` VALUES ('39', '波斯猫', '123', 'cat', '啊啊啊', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519724528442088076.jpg\" title=\"1519724528442088076.jpg\" alt=\"u=1853832225,307688784&amp;fm=5.jpg\"/></p>', '500', '1');
INSERT INTO `t_pets` VALUES ('40', '博美', '2', 'dog', '演示', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519724593498060930.jpg\" title=\"1519724593498060930.jpg\" alt=\"timg (1).jpg\" width=\"319\" height=\"321\"/></p>', '500', '1');
INSERT INTO `t_pets` VALUES ('41', '123', '3', '4', '6', '<p>https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=4041540249,4158053326&amp;fm=27&amp;gp=0.jpg</p>', '500', '1');
INSERT INTO `t_pets` VALUES ('42', '123', '123', '4444', '11111', '<p><img src=\"/PetsBuyAdmin//ueditor/jsp/upload/image/20180227/1519724775936042892.jpg\" title=\"1519724775936042892.jpg\" alt=\"timg.jpg\" width=\"249\" height=\"217\"/></p>', '555', '1');
INSERT INTO `t_pets` VALUES ('43', '161105Java班', '3', '4', '啊啊啊啊', '<p><img src=\"PetsBuyAdmin/upload/20180227/1519726331634088404.jpg\" title=\"1519726331634088404.jpg\" alt=\"9.jpg\"/></p>', '100', '1');
INSERT INTO `t_pets` VALUES ('44', '123', '123', 'cat', 'aaa', '<p><img src=\"PetsBuyAdmin/upload/20180227/1519726798639004430.jpg\" title=\"1519726798639004430.jpg\" alt=\"11.jpg\"/></p>', '111', '1');
INSERT INTO `t_pets` VALUES ('45', '啊钩子', '19', 'dog', '阿萨大大十大', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1794064296,746211315&fm=5', '123', '1');
INSERT INTO `t_pets` VALUES ('46', '金毛212', '2', 'dog22', '金毛寻回犬(英语:Golden Retriever)是比较现代并很流行的狗的品种,是单猎犬,作为用来在猎捕野禽的寻回犬而培养出来的,游泳的续航力极佳。 金毛寻回犬它是最常见的家犬之一,因为它很容易养,有耐心并且对主人要求不多,只要定期的运动,食物和兽医体检就可以了。金毛的独特之处在于它讨人喜欢的性格,是属于匀称、有力、活泼的一个犬种,特征是稳固、身体各部位配合合理,腿既不太长也不笨拙,表情友善,个性热情、机警、自信而且不怕生。金毛犬最早是一种寻回猎犬。现在大多作为导盲犬与宠物狗。对小孩子或者婴儿十分友善。金毛犬是位列世界犬种智商排行的第四名。', 'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=c00b6c9b8082b9013dadc4354bb6ce4a/e4dde71190ef76c6a818bc979716fdfaae516747.jpg', '5000', '0');
INSERT INTO `t_pets` VALUES ('47', '哈士奇', '1', 'dog', '(俄语:Сибирский хаски,英语:Siberian husky),常见别名哈士奇,昵称为二哈。西伯利亚雪橇犬体重介于雄犬20-27公斤,雌犬16-23公斤,身高大约雄犬肩高53-58厘米,雌犬51-56厘米,是一种中型犬。西伯利亚雪橇犬是原始的古老犬种,在西伯利亚东北部、格陵兰南部生活。...', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3030954164,2873807303&fm=58&w=121&h=140&img.JPEG&bpow=1079&bpoh=1438', '50005', '0');
INSERT INTO `t_pets` VALUES ('48', '猫咪', '1', 'cat', '属于猫科动物,分家猫、野猫,是全世界家庭中较为广泛的宠物。家猫的祖先据推测是起源于古埃及的沙漠猫,波斯...  物种始源 形态特征 生活习性 驯养方法 主要品种 更', 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2247692397,1189743173&fm=5', '100', '0');
INSERT INTO `t_pets` VALUES ('49', '狗骨头1', '0', 'play', '狗骨头描述', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3614320435,3048808919&fm=27&gp=0.jpg', '33.05', '0');
INSERT INTO `t_pets` VALUES ('50', '贵宾犬', '1', 'dog', '宾犬(Poodle),也称“贵妇犬”,又称“卷毛狗”,在德语中,Pudel是“水花飞溅”的意思,是犬亚科犬属的一种动物。贵宾犬的来源就像它为了拖出猎禽所涉过的水一样浑浊不清...', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1610289311,943304439&fm=200&gp=0.jpg', '100', '1');
INSERT INTO `t_pets` VALUES ('51', '猫', '2', 'cat', '一只猫', 'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=0d45beaf41fbfbeddc59317940cb900b/a2cc7cd98d1001e96eeb3b9fb20e7bec55e7974e.jpg', '233', '0');
INSERT INTO `t_pets` VALUES ('52', '苏格兰猫', '12', 'cat', '一只啊啊啊啊', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3783715524,1837658254&fm=27&gp=0.jpg', '5001', '0');
INSERT INTO `t_pets` VALUES ('53', '英国猫2', '2', 'cat', '啊啊啊123123', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3025049301,3627840209&fm=27&gp=0.jpg', '200', '0');
INSERT INTO `t_pets` VALUES ('54', '波斯猫25', '1', 'cat', '波斯猫', 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3935878919,2632259825&fm=58', '120', '0');
INSERT INTO `t_pets` VALUES ('55', '宠物饲料', '1', 'play', '皇家饲料', 'https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2819942671,3998183454&fm=58&bpow=500&bpoh=396', '150', '0');
INSERT INTO `t_pets` VALUES ('56', '哈士奇', '1', 'dog', '请求', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3807093741,2063253365&fm=200&gp=0.jpg', '5001', '1');
INSERT INTO `t_pets` VALUES ('57', '哈士奇', '3', 'dog', '一只哈士奇啊啊啊', 'https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=8d59070cb73eb13544c7b0bd9e25cfee/58ee3d6d55fbb2fb4e4573f6444a20a44723dce3.jpg', '500', '1');
INSERT INTO `t_pets` VALUES ('58', '等待', '12', 'dog', '2222', 'https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=6a65b7743efae6cd0cb4ac6737886819/64380cd7912397dd5c0ace475282b2b7d0a28706.jpg', '333', '0');
INSERT INTO `t_pets` VALUES ('59', '安安', '12', 'play', '123123', 'http://img.zcool.cn/community/01690955496f930000019ae92f3a4e.jpg@2o.jpg', '200', '0');
INSERT INTO `t_pets` VALUES ('60', '123', '123', 'dog', '333', 'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/w%3D268%3Bg%3D0/sign=c00b6c9b8082b9013dadc4354bb6ce4a/e4dde71190ef76c6a818bc979716fdfaae516747.jpg', '12', '0');

-- ----------------------------
-- Table structure for `t_petstousers`
-- ----------------------------
DROP TABLE IF EXISTS `t_petstousers`;
CREATE TABLE `t_petstousers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `petsName` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(4) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `rname` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `sale` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_petstousers
-- ----------------------------
INSERT INTO `t_petstousers` VALUES ('22', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO `t_petstousers` VALUES ('23', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO `t_petstousers` VALUES ('24', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO `t_petstousers` VALUES ('25', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO `t_petstousers` VALUES ('26', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO `t_petstousers` VALUES ('27', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO `t_petstousers` VALUES ('28', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO `t_petstousers` VALUES ('29', 'a', '博美犬', '1', '会员', '啊啊', '啊啊', 'aa', '400');
INSERT INTO `t_petstousers` VALUES ('30', 'a', '哈士奇', '1', '会员', '啊啊', '啊啊', 'aa', '500.2');
INSERT INTO `t_petstousers` VALUES ('31', 'a', '博美犬', '1', '会员', '啊啊', '啊啊', 'aa', '400');
INSERT INTO `t_petstousers` VALUES ('32', 'a', '玩具', '1', '会员', '啊啊', '啊啊', 'aa', '22');
INSERT INTO `t_petstousers` VALUES ('33', '海淀', '哈士奇', '1', 'xiaoJ啊', '150091', '小J', '北京', '500.2');
INSERT INTO `t_petstousers` VALUES ('34', '海淀区', '大花猫', '1', '会员', '150091', '大肥', '北京', '100');
INSERT INTO `t_petstousers` VALUES ('35', '海淀区', '博美犬', '1', '会员', '150091', '大肥', '北京', '400');
INSERT INTO `t_petstousers` VALUES ('36', '海淀区', '玩具', '1', '会员', '150091', '大肥', '北京', '22');
INSERT INTO `t_petstousers` VALUES ('37', '海淀区', '哈士奇', '1', '会员a', '150091', '大肥', '北京', '500.2');
INSERT INTO `t_petstousers` VALUES ('38', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('39', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('40', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('41', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('42', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('43', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('44', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('45', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('46', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('47', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('48', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('49', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('50', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('51', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('52', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('53', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('54', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('55', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('56', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('57', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('58', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('59', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('60', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('61', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('62', '海淀区', '猫粮', '1', '会员a', '150091', '大肥', '北京', '33');
INSERT INTO `t_petstousers` VALUES ('63', '123123', '啊钩子', '1', '赛亚人', '123123', '123123', '123123', '123');
INSERT INTO `t_petstousers` VALUES ('64', '请问', '金毛', '1', '赛亚人', '15008121886', '超级赛亚人', '二货2', '5000');
INSERT INTO `t_petstousers` VALUES ('65', '赛事', '猫咪', '1', '只是一个测试', '159988', '安安', '指针', '100');
INSERT INTO `t_petstousers` VALUES ('66', '赛事', '狗骨头', '1', '只是一个测试', '159988', '安安', '指针', '33');
INSERT INTO `t_petstousers` VALUES ('67', '等待', '哈士奇', '1', '赛亚人23', '1500', '安安', '华为', '50005');
INSERT INTO `t_petstousers` VALUES ('68', '等待', '金毛212', '1', '赛亚人23', '1500', '安安', '华为', '5000');
INSERT INTO `t_petstousers` VALUES ('69', '等待', '金毛212', '1', '123', '1500', '安安', '华为', '5000');
INSERT INTO `t_petstousers` VALUES ('70', '等待', '金毛212', '1', '123', '1500', '安安', '华为', '5000');
INSERT INTO `t_petstousers` VALUES ('71', '等待', '宠物饲料', '1', '123', '1500', '安安', '华为', '150');
INSERT INTO `t_petstousers` VALUES ('72', '等待', '哈士奇', '1', '123', '1500', '安安', '华为', '50005');
INSERT INTO `t_petstousers` VALUES ('73', '等待', '金毛212', '1', '123', '1500', '安安', '华为', '5000');
INSERT INTO `t_petstousers` VALUES ('74', '等待', '金毛212', '0', '123', '1500', '安安', '华为', '5000');
INSERT INTO `t_petstousers` VALUES ('75', '等待', '金毛212', '0', '123', '1500', '安安', '华为', '5000');
INSERT INTO `t_petstousers` VALUES ('76', '等待', '猫咪', '0', '123', '1500', '安安', '华为', '100');
INSERT INTO `t_petstousers` VALUES ('77', '等待', '哈士奇', '0', '123', '1500', '安安', '华为', '50005');
INSERT INTO `t_petstousers` VALUES ('78', '等待', '猫咪', '0', '123', '1500', '安安', '华为', '100');
INSERT INTO `t_petstousers` VALUES ('79', '等待', '狗骨头1', '0', '123', '1500', '安安', '华为', '33.05');
INSERT INTO `t_petstousers` VALUES ('80', '等待', '123', '0', '123', '1500', '安安', '华为', '12');
INSERT INTO `t_petstousers` VALUES ('81', '等待', '哈士奇', '0', '123', '1500', '安安', '华为', '50005');
INSERT INTO `t_petstousers` VALUES ('82', '等待', '金毛212', '0', '123', '1500', '安安', '华为', '5000');
INSERT INTO `t_petstousers` VALUES ('83', '等待', '金毛212', '0', '123', '1500', '安安', '华为', '5000');
INSERT INTO `t_petstousers` VALUES ('84', '等待', '金毛212', '0', '123', '1500', '安安', '华为', '5000');
INSERT INTO `t_petstousers` VALUES ('85', '等待', '猫', '0', '123', '1500', '安安', '华为', '233');

-- ----------------------------
-- Table structure for `t_shopcars`
-- ----------------------------
DROP TABLE IF EXISTS `t_shopcars`;
CREATE TABLE `t_shopcars` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) DEFAULT NULL,
  `petsid` bigint(20) DEFAULT NULL,
  `isEnale` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `petsid` (`petsid`),
  CONSTRAINT `t_shopcars_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `t_users` (`id`),
  CONSTRAINT `t_shopcars_ibfk_2` FOREIGN KEY (`petsid`) REFERENCES `t_pets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shopcars
-- ----------------------------
INSERT INTO `t_shopcars` VALUES ('118', '35', '19', null);

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adressId` bigint(20) DEFAULT NULL,
  `email` varchar(22) DEFAULT NULL,
  `password` varchar(22) DEFAULT NULL,
  `score` varchar(22) DEFAULT NULL,
  `money` float(22,0) DEFAULT NULL,
  `name` varchar(22) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(22) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `adressId` (`adressId`),
  CONSTRAINT `t_users_ibfk_1` FOREIGN KEY (`adressId`) REFERENCES `t_addresses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('6', null, '12345678@qq.com', '123123', '1000', null, '我是好人232', null, '180000000035', null, null);
INSERT INTO `t_users` VALUES ('30', null, '123456789@qq.com', '123123', '1000', null, '上帝', null, null, null, null);
INSERT INTO `t_users` VALUES ('31', null, '9867715700@qq.com', '123456', '1060', null, '123', null, '122', '简单简单3t', '啊');
INSERT INTO `t_users` VALUES ('32', null, '123@qq.ocm', '123123', '1000', null, '无敌', null, null, null, null);
INSERT INTO `t_users` VALUES ('33', null, 'abc1@a.com', '123123', '1000', null, '会员2', null, '123123', '123', '123');
INSERT INTO `t_users` VALUES ('34', null, '12345@qq.com', '123456', '1000', null, '会员', null, null, null, null);
INSERT INTO `t_users` VALUES ('35', null, '1234567@qq.com', '123456', '1000', null, '会员a', null, '1500111', null, null);
INSERT INTO `t_users` VALUES ('36', null, '986771570@qq.com', '123', '1000', null, '超人', null, '150081', '超人超人超人超人超人超人', '学生');
INSERT INTO `t_users` VALUES ('37', null, 'abc3@a.com', '123456', '1000', null, '会员', null, '1500', null, null);
INSERT INTO `t_users` VALUES ('38', null, 'abcd@qq.com', '123456', '1000', null, '会员33355', null, '1500', '444', '22');
INSERT INTO `t_users` VALUES ('39', null, '986@qq.com', '123456', '1000', null, '会员', null, '1500', '123123123', '123');
INSERT INTO `t_users` VALUES ('40', null, 'a@qq.com', '2', '1000', null, '会员', null, '1', null, null);
INSERT INTO `t_users` VALUES ('41', null, 'ab@qq.com', '123123', '1000', null, '用户啊', null, '15002', '呃呃呃', '啊');
INSERT INTO `t_users` VALUES ('42', null, 'test@qq.com', '123123', '1000', null, '会员3123', null, '1555', '啊啊啊啊啊啊啊', '自已');
INSERT INTO `t_users` VALUES ('43', null, 'test2@qq.com', '123123', '1000', null, '123123', null, '12323', '123123', '123123');
INSERT INTO `t_users` VALUES ('44', null, 'test3@qq.com', '123123', '1000', null, '只是一个测试2', null, '1500995555', '123', '测试');
INSERT INTO `t_users` VALUES ('45', null, '989@qq.com', '989', '1000', null, '会员2', null, '98955a', '12333', '123');
INSERT INTO `t_users` VALUES ('46', null, '123456781@qq.com', '123456', '1000', null, '会员', null, '12345678@qq.com', null, null);
