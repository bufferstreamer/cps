/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : cps

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2022-08-27 13:10:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area_code
-- ----------------------------
DROP TABLE IF EXISTS `area_code`;
CREATE TABLE `area_code` (
  `id` int(11) NOT NULL COMMENT '地区id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区名称',
  `pid` int(11) NOT NULL COMMENT '父地区id',
  `area_code` int(11) DEFAULT NULL COMMENT '地区编码',
  `visible` int(11) DEFAULT NULL COMMENT '是否可见',
  `displayorder` int(11) DEFAULT NULL COMMENT '是否支持配送',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of area_code
-- ----------------------------
INSERT INTO `area_code` VALUES ('1', '北京市', '0', '110000', '0', '0');
INSERT INTO `area_code` VALUES ('2', '天津市', '0', '120000', '0', '0');
INSERT INTO `area_code` VALUES ('3', '上海市', '0', '310000', '0', '0');
INSERT INTO `area_code` VALUES ('4', '重庆市', '0', '500000', '0', '0');
INSERT INTO `area_code` VALUES ('5', '河北省', '0', '130000', '0', '0');
INSERT INTO `area_code` VALUES ('6', '山西省', '0', '140000', '0', '0');
INSERT INTO `area_code` VALUES ('7', '内蒙古自治区', '0', '150000', '0', '0');
INSERT INTO `area_code` VALUES ('8', '辽宁省', '0', '210000', '0', '0');
INSERT INTO `area_code` VALUES ('9', '吉林省', '0', '220000', '0', '0');
INSERT INTO `area_code` VALUES ('10', '黑龙江省', '0', '230000', '0', '0');
INSERT INTO `area_code` VALUES ('11', '江苏省', '0', '320000', '0', '0');
INSERT INTO `area_code` VALUES ('12', '浙江省', '0', '330000', '0', '0');
INSERT INTO `area_code` VALUES ('13', '安徽省', '0', '340000', '0', '0');
INSERT INTO `area_code` VALUES ('14', '福建省', '0', '350000', '0', '0');
INSERT INTO `area_code` VALUES ('15', '江西省', '0', '360000', '0', '0');
INSERT INTO `area_code` VALUES ('16', '山东省', '0', '370000', '0', '0');
INSERT INTO `area_code` VALUES ('17', '河南省', '0', '410000', '0', '0');
INSERT INTO `area_code` VALUES ('18', '湖北省', '0', '420000', '0', '0');
INSERT INTO `area_code` VALUES ('19', '湖南省', '0', '430000', '0', '0');
INSERT INTO `area_code` VALUES ('20', '广东省', '0', '440000', '0', '0');
INSERT INTO `area_code` VALUES ('21', '广西自治区', '0', '450000', '0', '0');
INSERT INTO `area_code` VALUES ('22', '海南省', '0', '460000', '0', '0');
INSERT INTO `area_code` VALUES ('23', '四川省', '0', '510000', '0', '0');
INSERT INTO `area_code` VALUES ('24', '贵州省', '0', '520000', '0', '0');
INSERT INTO `area_code` VALUES ('25', '云南省', '0', '530000', '0', '0');
INSERT INTO `area_code` VALUES ('26', '西藏自治区', '0', '540000', '0', '0');
INSERT INTO `area_code` VALUES ('27', '陕西省', '0', '610000', '0', '0');
INSERT INTO `area_code` VALUES ('28', '甘肃省', '0', '620000', '0', '0');
INSERT INTO `area_code` VALUES ('29', '青海省', '0', '630000', '0', '0');
INSERT INTO `area_code` VALUES ('30', '宁夏自治区', '0', '640000', '0', '0');
INSERT INTO `area_code` VALUES ('31', '新疆自治区', '0', '650000', '0', '0');
INSERT INTO `area_code` VALUES ('32', '台湾省', '0', '710000', '0', '0');
INSERT INTO `area_code` VALUES ('33', '香港特别行政区', '0', '810000', '0', '0');
INSERT INTO `area_code` VALUES ('34', '澳门特别行政区', '0', '820000', '0', '0');
INSERT INTO `area_code` VALUES ('35', '海外', '0', null, '0', '0');
INSERT INTO `area_code` VALUES ('36', '东城区', '7047', '110101', '0', '0');
INSERT INTO `area_code` VALUES ('37', '西城区', '7047', '110102', '0', '0');
INSERT INTO `area_code` VALUES ('40', '朝阳区', '7047', '110105', '0', '0');
INSERT INTO `area_code` VALUES ('41', '丰台区', '7047', '110106', '0', '0');
INSERT INTO `area_code` VALUES ('42', '石景山区', '7047', '110107', '0', '0');
INSERT INTO `area_code` VALUES ('43', '海淀区', '7047', '110108', '0', '0');
INSERT INTO `area_code` VALUES ('44', '门头沟区', '7047', '110109', '0', '0');
INSERT INTO `area_code` VALUES ('45', '房山区', '7047', '110111', '0', '0');
INSERT INTO `area_code` VALUES ('46', '通州区', '7047', '110112', '0', '0');
INSERT INTO `area_code` VALUES ('47', '顺义区', '7047', '110113', '0', '0');
INSERT INTO `area_code` VALUES ('48', '昌平区', '7047', '110114', '0', '0');
INSERT INTO `area_code` VALUES ('49', '大兴区', '7047', '110115', '0', '0');
INSERT INTO `area_code` VALUES ('50', '怀柔区', '7047', '110116', '0', '0');
INSERT INTO `area_code` VALUES ('51', '平谷区', '7047', '110117', '0', '0');
INSERT INTO `area_code` VALUES ('52', '密云区', '7047', '110228', '0', '0');
INSERT INTO `area_code` VALUES ('53', '延庆区', '7047', '110229', '0', '0');
INSERT INTO `area_code` VALUES ('54', '和平区', '7048', '120101', '0', '0');
INSERT INTO `area_code` VALUES ('55', '河东区', '7048', '120102', '0', '0');
INSERT INTO `area_code` VALUES ('56', '河西区', '7048', '120103', '0', '0');
INSERT INTO `area_code` VALUES ('57', '南开区', '7048', '120104', '0', '0');
INSERT INTO `area_code` VALUES ('58', '河北区', '7048', '120105', '0', '0');
INSERT INTO `area_code` VALUES ('59', '红桥区', '7048', '120106', '0', '0');
INSERT INTO `area_code` VALUES ('60', '东丽区', '7048', '120110', '0', '0');
INSERT INTO `area_code` VALUES ('61', '西青区', '7048', '120111', '0', '0');
INSERT INTO `area_code` VALUES ('62', '津南区', '7048', '120112', '0', '0');
INSERT INTO `area_code` VALUES ('63', '北辰区', '7048', '120113', '0', '0');
INSERT INTO `area_code` VALUES ('64', '武清区', '7048', '120114', '0', '0');
INSERT INTO `area_code` VALUES ('65', '宝坻区', '7048', '120115', '0', '0');
INSERT INTO `area_code` VALUES ('66', '滨海新区', '7048', '120116', '0', '0');
INSERT INTO `area_code` VALUES ('67', '宁河区', '7048', '120117', '0', '0');
INSERT INTO `area_code` VALUES ('68', '蓟州区', '7048', '120119', '0', '0');
INSERT INTO `area_code` VALUES ('69', '静海区', '7048', '120118', '0', '0');
INSERT INTO `area_code` VALUES ('70', '黄浦区', '7049', '310101', '0', '0');
INSERT INTO `area_code` VALUES ('71', '徐汇区', '7049', '310104', '0', '0');
INSERT INTO `area_code` VALUES ('72', '长宁区', '7049', '310105', '0', '0');
INSERT INTO `area_code` VALUES ('73', '静安区', '7049', '310106', '0', '0');
INSERT INTO `area_code` VALUES ('74', '普陀区', '7049', '310107', '0', '0');
INSERT INTO `area_code` VALUES ('76', '虹口区', '7049', '310109', '0', '0');
INSERT INTO `area_code` VALUES ('77', '杨浦区', '7049', '310110', '0', '0');
INSERT INTO `area_code` VALUES ('78', '闵行区', '7049', '310112', '0', '0');
INSERT INTO `area_code` VALUES ('79', '宝山区', '7049', '310113', '0', '0');
INSERT INTO `area_code` VALUES ('80', '嘉定区', '7049', '310114', '0', '0');
INSERT INTO `area_code` VALUES ('81', '浦东新区', '7049', '310115', '0', '0');
INSERT INTO `area_code` VALUES ('82', '金山区', '7049', '310116', '0', '0');
INSERT INTO `area_code` VALUES ('83', '松江区', '7049', '310117', '0', '0');
INSERT INTO `area_code` VALUES ('84', '青浦区', '7049', '310118', '0', '0');
INSERT INTO `area_code` VALUES ('85', '奉贤区', '7049', '310120', '0', '0');
INSERT INTO `area_code` VALUES ('86', '崇明区', '7049', '310151', '0', '0');
INSERT INTO `area_code` VALUES ('87', '万州区', '7050', '500101', '0', '0');
INSERT INTO `area_code` VALUES ('88', '涪陵区', '7050', '500102', '0', '0');
INSERT INTO `area_code` VALUES ('89', '渝中区', '7050', '500103', '0', '0');
INSERT INTO `area_code` VALUES ('90', '大渡口区', '7050', '500104', '0', '0');
INSERT INTO `area_code` VALUES ('91', '江北区', '7050', '500105', '0', '0');
INSERT INTO `area_code` VALUES ('92', '沙坪坝区', '7050', '500106', '0', '0');
INSERT INTO `area_code` VALUES ('93', '九龙坡区', '7050', '500107', '0', '0');
INSERT INTO `area_code` VALUES ('94', '南岸区', '7050', '500108', '0', '0');
INSERT INTO `area_code` VALUES ('95', '北碚区', '7050', '500109', '0', '0');
INSERT INTO `area_code` VALUES ('96', '綦江区', '7050', '500110', '0', '0');
INSERT INTO `area_code` VALUES ('97', '大足区', '7050', '500111', '0', '0');
INSERT INTO `area_code` VALUES ('98', '渝北区', '7050', '500112', '0', '0');
INSERT INTO `area_code` VALUES ('99', '巴南区', '7050', '500113', '0', '0');
INSERT INTO `area_code` VALUES ('100', '黔江区', '7050', '500114', '0', '0');
INSERT INTO `area_code` VALUES ('101', '长寿区', '7050', '500115', '0', '0');
INSERT INTO `area_code` VALUES ('102', '江津区', '7050', '500116', '0', '0');
INSERT INTO `area_code` VALUES ('103', '合川区', '7050', '500117', '0', '0');
INSERT INTO `area_code` VALUES ('104', '永川区', '7050', '500118', '0', '0');
INSERT INTO `area_code` VALUES ('105', '南川区', '7050', '500119', '0', '0');
INSERT INTO `area_code` VALUES ('106', '潼南区', '7050', '500223', '0', '0');
INSERT INTO `area_code` VALUES ('107', '铜梁区', '7050', '500151', '0', '0');
INSERT INTO `area_code` VALUES ('108', '荣昌区', '7050', '500226', '0', '0');
INSERT INTO `area_code` VALUES ('109', '璧山区', '7050', '500120', '0', '0');
INSERT INTO `area_code` VALUES ('110', '梁平区', '7050', '500155', '0', '0');
INSERT INTO `area_code` VALUES ('111', '城口县', '7050', '500229', '0', '0');
INSERT INTO `area_code` VALUES ('112', '丰都县', '7050', '500230', '0', '0');
INSERT INTO `area_code` VALUES ('113', '垫江县', '7050', '500231', '0', '0');
INSERT INTO `area_code` VALUES ('114', '武隆区', '7050', '500156', '0', '0');
INSERT INTO `area_code` VALUES ('115', '忠县', '7050', '500233', '0', '0');
INSERT INTO `area_code` VALUES ('116', '开州区', '7050', '500154', '0', '0');
INSERT INTO `area_code` VALUES ('117', '云阳县', '7050', '500235', '0', '0');
INSERT INTO `area_code` VALUES ('118', '奉节县', '7050', '500236', '0', '0');
INSERT INTO `area_code` VALUES ('119', '巫山县', '7050', '500237', '0', '0');
INSERT INTO `area_code` VALUES ('120', '巫溪县', '7050', '500238', '0', '0');
INSERT INTO `area_code` VALUES ('121', '石柱自治县', '7050', '500240', '0', '0');
INSERT INTO `area_code` VALUES ('122', '秀山自治县', '7050', '500241', '0', '0');
INSERT INTO `area_code` VALUES ('123', '酉阳自治县', '7050', '500242', '0', '0');
INSERT INTO `area_code` VALUES ('124', '彭水自治县', '7050', '500243', '0', '0');
INSERT INTO `area_code` VALUES ('125', '石家庄市', '5', '130100', '0', '0');
INSERT INTO `area_code` VALUES ('126', '唐山市', '5', '130200', '0', '0');
INSERT INTO `area_code` VALUES ('127', '秦皇岛市', '5', '130300', '0', '0');
INSERT INTO `area_code` VALUES ('128', '邯郸市', '5', '130400', '0', '0');
INSERT INTO `area_code` VALUES ('129', '邢台市', '5', '130500', '0', '0');
INSERT INTO `area_code` VALUES ('130', '保定市', '5', '130600', '0', '0');
INSERT INTO `area_code` VALUES ('131', '张家口市', '5', '130700', '0', '0');
INSERT INTO `area_code` VALUES ('132', '承德市', '5', '130800', '0', '0');
INSERT INTO `area_code` VALUES ('133', '沧州市', '5', '130900', '0', '0');
INSERT INTO `area_code` VALUES ('134', '廊坊市', '5', '131000', '0', '0');
INSERT INTO `area_code` VALUES ('135', '衡水市', '5', '131100', '0', '0');
INSERT INTO `area_code` VALUES ('136', '太原市', '6', '140100', '0', '0');
INSERT INTO `area_code` VALUES ('137', '大同市', '6', '140200', '0', '0');
INSERT INTO `area_code` VALUES ('138', '阳泉市', '6', '140300', '0', '0');
INSERT INTO `area_code` VALUES ('139', '长治市', '6', '140400', '0', '0');
INSERT INTO `area_code` VALUES ('140', '晋城市', '6', '140500', '0', '0');
INSERT INTO `area_code` VALUES ('141', '朔州市', '6', '140600', '0', '0');
INSERT INTO `area_code` VALUES ('142', '晋中市', '6', '140700', '0', '0');
INSERT INTO `area_code` VALUES ('143', '运城市', '6', '140800', '0', '0');
INSERT INTO `area_code` VALUES ('144', '忻州市', '6', '140900', '0', '0');
INSERT INTO `area_code` VALUES ('145', '临汾市', '6', '141000', '0', '0');
INSERT INTO `area_code` VALUES ('146', '吕梁市', '6', '141100', '0', '0');
INSERT INTO `area_code` VALUES ('147', '呼和浩特市', '7', '150100', '0', '0');
INSERT INTO `area_code` VALUES ('148', '包头市', '7', '150200', '0', '0');
INSERT INTO `area_code` VALUES ('149', '乌海市', '7', '150300', '0', '0');
INSERT INTO `area_code` VALUES ('150', '赤峰市', '7', '150400', '0', '0');
INSERT INTO `area_code` VALUES ('151', '通辽市', '7', '150500', '0', '0');
INSERT INTO `area_code` VALUES ('152', '鄂尔多斯市', '7', '150600', '0', '0');
INSERT INTO `area_code` VALUES ('153', '呼伦贝尔市', '7', '150700', '0', '0');
INSERT INTO `area_code` VALUES ('154', '巴彦淖尔市', '7', '150800', '0', '0');
INSERT INTO `area_code` VALUES ('155', '乌兰察布市', '7', '150900', '0', '0');
INSERT INTO `area_code` VALUES ('156', '兴安盟', '7', '152200', '0', '0');
INSERT INTO `area_code` VALUES ('157', '锡林郭勒盟', '7', '152500', '0', '0');
INSERT INTO `area_code` VALUES ('158', '阿拉善盟', '7', '152900', '0', '0');
INSERT INTO `area_code` VALUES ('159', '沈阳市', '8', '210100', '0', '0');
INSERT INTO `area_code` VALUES ('160', '大连市', '8', '210200', '0', '0');
INSERT INTO `area_code` VALUES ('161', '鞍山市', '8', '210300', '0', '0');
INSERT INTO `area_code` VALUES ('162', '抚顺市', '8', '210400', '0', '0');
INSERT INTO `area_code` VALUES ('163', '本溪市', '8', '210500', '0', '0');
INSERT INTO `area_code` VALUES ('164', '丹东市', '8', '210600', '0', '0');
INSERT INTO `area_code` VALUES ('165', '锦州市', '8', '210700', '0', '0');
INSERT INTO `area_code` VALUES ('166', '营口市', '8', '210800', '0', '0');
INSERT INTO `area_code` VALUES ('167', '阜新市', '8', '210900', '0', '0');
INSERT INTO `area_code` VALUES ('168', '辽阳市', '8', '211000', '0', '0');
INSERT INTO `area_code` VALUES ('169', '盘锦市', '8', '211100', '0', '0');
INSERT INTO `area_code` VALUES ('170', '铁岭市', '8', '211200', '0', '0');
INSERT INTO `area_code` VALUES ('171', '朝阳市', '8', '211300', '0', '0');
INSERT INTO `area_code` VALUES ('172', '葫芦岛市', '8', '211400', '0', '0');
INSERT INTO `area_code` VALUES ('173', '长春市', '9', '220100', '0', '0');
INSERT INTO `area_code` VALUES ('174', '吉林市', '9', '220200', '0', '0');
INSERT INTO `area_code` VALUES ('175', '四平市', '9', '220300', '0', '0');
INSERT INTO `area_code` VALUES ('176', '辽源市', '9', '220400', '0', '0');
INSERT INTO `area_code` VALUES ('177', '通化市', '9', '220500', '0', '0');
INSERT INTO `area_code` VALUES ('178', '白山市', '9', '220600', '0', '0');
INSERT INTO `area_code` VALUES ('179', '松原市', '9', '220700', '0', '0');
INSERT INTO `area_code` VALUES ('180', '白城市', '9', '220800', '0', '0');
INSERT INTO `area_code` VALUES ('181', '延边自治州', '9', '222400', '0', '0');
INSERT INTO `area_code` VALUES ('182', '哈尔滨市', '10', '230100', '0', '0');
INSERT INTO `area_code` VALUES ('183', '齐齐哈尔市', '10', '230200', '0', '0');
INSERT INTO `area_code` VALUES ('184', '鸡西市', '10', '230300', '0', '0');
INSERT INTO `area_code` VALUES ('185', '鹤岗市', '10', '230400', '0', '0');
INSERT INTO `area_code` VALUES ('186', '双鸭山市', '10', '230500', '0', '0');
INSERT INTO `area_code` VALUES ('187', '大庆市', '10', '230600', '0', '0');
INSERT INTO `area_code` VALUES ('188', '伊春市', '10', '230700', '0', '0');
INSERT INTO `area_code` VALUES ('189', '佳木斯市', '10', '230800', '0', '0');
INSERT INTO `area_code` VALUES ('190', '七台河市', '10', '230900', '0', '0');
INSERT INTO `area_code` VALUES ('191', '牡丹江市', '10', '231000', '0', '0');
INSERT INTO `area_code` VALUES ('192', '黑河市', '10', '231100', '0', '0');
INSERT INTO `area_code` VALUES ('193', '绥化市', '10', '231200', '0', '0');
INSERT INTO `area_code` VALUES ('194', '大兴安岭地区', '10', '232700', '0', '0');
INSERT INTO `area_code` VALUES ('195', '南京市', '11', '320100', '0', '0');
INSERT INTO `area_code` VALUES ('196', '无锡市', '11', '320200', '0', '0');
INSERT INTO `area_code` VALUES ('197', '徐州市', '11', '320300', '0', '0');
INSERT INTO `area_code` VALUES ('198', '常州市', '11', '320400', '0', '0');
INSERT INTO `area_code` VALUES ('199', '苏州市', '11', '320500', '0', '0');
INSERT INTO `area_code` VALUES ('200', '南通市', '11', '320600', '0', '0');
INSERT INTO `area_code` VALUES ('201', '连云港市', '11', '320700', '0', '0');
INSERT INTO `area_code` VALUES ('202', '淮安市', '11', '320800', '0', '0');
INSERT INTO `area_code` VALUES ('203', '盐城市', '11', '320900', '0', '0');
INSERT INTO `area_code` VALUES ('204', '扬州市', '11', '321000', '0', '0');
INSERT INTO `area_code` VALUES ('205', '镇江市', '11', '321100', '0', '0');
INSERT INTO `area_code` VALUES ('206', '泰州市', '11', '321200', '0', '0');
INSERT INTO `area_code` VALUES ('207', '宿迁市', '11', '321300', '0', '0');
INSERT INTO `area_code` VALUES ('208', '杭州市', '12', '330100', '0', '0');
INSERT INTO `area_code` VALUES ('209', '宁波市', '12', '330200', '0', '0');
INSERT INTO `area_code` VALUES ('210', '温州市', '12', '330300', '0', '0');
INSERT INTO `area_code` VALUES ('211', '嘉兴市', '12', '330400', '0', '0');
INSERT INTO `area_code` VALUES ('212', '湖州市', '12', '330500', '0', '0');
INSERT INTO `area_code` VALUES ('213', '绍兴市', '12', '330600', '0', '0');
INSERT INTO `area_code` VALUES ('214', '金华市', '12', '330700', '0', '0');
INSERT INTO `area_code` VALUES ('215', '衢州市', '12', '330800', '0', '0');
INSERT INTO `area_code` VALUES ('216', '舟山市', '12', '330900', '0', '0');
INSERT INTO `area_code` VALUES ('217', '台州市', '12', '331000', '0', '0');
INSERT INTO `area_code` VALUES ('218', '丽水市', '12', '331100', '0', '0');
INSERT INTO `area_code` VALUES ('219', '合肥市', '13', '340100', '0', '0');
INSERT INTO `area_code` VALUES ('220', '芜湖市', '13', '340200', '0', '0');
INSERT INTO `area_code` VALUES ('221', '蚌埠市', '13', '340300', '0', '0');
INSERT INTO `area_code` VALUES ('222', '淮南市', '13', '340400', '0', '0');
INSERT INTO `area_code` VALUES ('223', '马鞍山市', '13', '340500', '0', '0');
INSERT INTO `area_code` VALUES ('224', '淮北市', '13', '340600', '0', '0');
INSERT INTO `area_code` VALUES ('225', '铜陵市', '13', '340700', '0', '0');
INSERT INTO `area_code` VALUES ('226', '安庆市', '13', '340800', '0', '0');
INSERT INTO `area_code` VALUES ('227', '黄山市', '13', '341000', '0', '0');
INSERT INTO `area_code` VALUES ('228', '滁州市', '13', '341100', '0', '0');
INSERT INTO `area_code` VALUES ('229', '阜阳市', '13', '341200', '0', '0');
INSERT INTO `area_code` VALUES ('230', '宿州市', '13', '341300', '0', '0');
INSERT INTO `area_code` VALUES ('231', '六安市', '13', '341500', '0', '0');
INSERT INTO `area_code` VALUES ('232', '亳州市', '13', '341600', '0', '0');
INSERT INTO `area_code` VALUES ('233', '池州市', '13', '341700', '0', '0');
INSERT INTO `area_code` VALUES ('234', '宣城市', '13', '341800', '0', '0');
INSERT INTO `area_code` VALUES ('235', '福州市', '14', '350100', '0', '0');
INSERT INTO `area_code` VALUES ('236', '厦门市', '14', '350200', '0', '0');
INSERT INTO `area_code` VALUES ('237', '莆田市', '14', '350300', '0', '0');
INSERT INTO `area_code` VALUES ('238', '三明市', '14', '350400', '0', '0');
INSERT INTO `area_code` VALUES ('239', '泉州市', '14', '350500', '0', '0');
INSERT INTO `area_code` VALUES ('240', '漳州市', '14', '350600', '0', '0');
INSERT INTO `area_code` VALUES ('241', '南平市', '14', '350700', '0', '0');
INSERT INTO `area_code` VALUES ('242', '龙岩市', '14', '350800', '0', '0');
INSERT INTO `area_code` VALUES ('243', '宁德市', '14', '350900', '0', '0');
INSERT INTO `area_code` VALUES ('244', '南昌市', '15', '360100', '0', '0');
INSERT INTO `area_code` VALUES ('245', '景德镇市', '15', '360200', '0', '0');
INSERT INTO `area_code` VALUES ('246', '萍乡市', '15', '360300', '0', '0');
INSERT INTO `area_code` VALUES ('247', '九江市', '15', '360400', '0', '0');
INSERT INTO `area_code` VALUES ('248', '新余市', '15', '360500', '0', '0');
INSERT INTO `area_code` VALUES ('249', '鹰潭市', '15', '360600', '0', '0');
INSERT INTO `area_code` VALUES ('250', '赣州市', '15', '360700', '0', '0');
INSERT INTO `area_code` VALUES ('251', '吉安市', '15', '360800', '0', '0');
INSERT INTO `area_code` VALUES ('252', '宜春市', '15', '360900', '0', '0');
INSERT INTO `area_code` VALUES ('253', '抚州市', '15', '361000', '0', '0');
INSERT INTO `area_code` VALUES ('254', '上饶市', '15', '361100', '0', '0');
INSERT INTO `area_code` VALUES ('255', '济南市', '16', '370100', '0', '0');
INSERT INTO `area_code` VALUES ('256', '青岛市', '16', '370200', '0', '0');
INSERT INTO `area_code` VALUES ('257', '淄博市', '16', '370300', '0', '0');
INSERT INTO `area_code` VALUES ('258', '枣庄市', '16', '370400', '0', '0');
INSERT INTO `area_code` VALUES ('259', '东营市', '16', '370500', '0', '0');
INSERT INTO `area_code` VALUES ('260', '烟台市', '16', '370600', '0', '0');
INSERT INTO `area_code` VALUES ('261', '潍坊市', '16', '370700', '0', '0');
INSERT INTO `area_code` VALUES ('262', '济宁市', '16', '370800', '0', '0');
INSERT INTO `area_code` VALUES ('263', '泰安市', '16', '370900', '0', '0');
INSERT INTO `area_code` VALUES ('264', '威海市', '16', '371000', '0', '0');
INSERT INTO `area_code` VALUES ('265', '日照市', '16', '371100', '0', '0');
INSERT INTO `area_code` VALUES ('267', '临沂市', '16', '371300', '0', '0');
INSERT INTO `area_code` VALUES ('268', '德州市', '16', '371400', '0', '0');
INSERT INTO `area_code` VALUES ('269', '聊城市', '16', '371500', '0', '0');
INSERT INTO `area_code` VALUES ('270', '滨州市', '16', '371600', '0', '0');
INSERT INTO `area_code` VALUES ('271', '菏泽市', '16', '371700', '0', '0');
INSERT INTO `area_code` VALUES ('272', '郑州市', '17', '410100', '0', '0');
INSERT INTO `area_code` VALUES ('273', '开封市', '17', '410200', '0', '0');
INSERT INTO `area_code` VALUES ('274', '洛阳市', '17', '410300', '0', '0');
INSERT INTO `area_code` VALUES ('275', '平顶山市', '17', '410400', '0', '0');
INSERT INTO `area_code` VALUES ('276', '安阳市', '17', '410500', '0', '0');
INSERT INTO `area_code` VALUES ('277', '鹤壁市', '17', '410600', '0', '0');
INSERT INTO `area_code` VALUES ('278', '新乡市', '17', '410700', '0', '0');
INSERT INTO `area_code` VALUES ('279', '焦作市', '17', '410800', '0', '0');
INSERT INTO `area_code` VALUES ('280', '濮阳市', '17', '410900', '0', '0');
INSERT INTO `area_code` VALUES ('281', '许昌市', '17', '411000', '0', '0');
INSERT INTO `area_code` VALUES ('282', '漯河市', '17', '411100', '0', '0');
INSERT INTO `area_code` VALUES ('283', '三门峡市', '17', '411200', '0', '0');
INSERT INTO `area_code` VALUES ('284', '南阳市', '17', '411300', '0', '0');
INSERT INTO `area_code` VALUES ('285', '商丘市', '17', '411400', '0', '0');
INSERT INTO `area_code` VALUES ('286', '信阳市', '17', '411500', '0', '0');
INSERT INTO `area_code` VALUES ('287', '周口市', '17', '411600', '0', '0');
INSERT INTO `area_code` VALUES ('288', '驻马店市', '17', '411700', '0', '0');
INSERT INTO `area_code` VALUES ('289', '济源市', '17', '419001', '0', '0');
INSERT INTO `area_code` VALUES ('290', '武汉市', '18', '420100', '0', '0');
INSERT INTO `area_code` VALUES ('291', '黄石市', '18', '420200', '0', '0');
INSERT INTO `area_code` VALUES ('292', '十堰市', '18', '420300', '0', '0');
INSERT INTO `area_code` VALUES ('293', '宜昌市', '18', '420500', '0', '0');
INSERT INTO `area_code` VALUES ('294', '襄阳市', '18', '420600', '0', '0');
INSERT INTO `area_code` VALUES ('295', '鄂州市', '18', '420700', '0', '0');
INSERT INTO `area_code` VALUES ('296', '荆门市', '18', '420800', '0', '0');
INSERT INTO `area_code` VALUES ('297', '孝感市', '18', '420900', '0', '0');
INSERT INTO `area_code` VALUES ('298', '荆州市', '18', '421000', '0', '0');
INSERT INTO `area_code` VALUES ('299', '黄冈市', '18', '421100', '0', '0');
INSERT INTO `area_code` VALUES ('300', '咸宁市', '18', '421200', '0', '0');
INSERT INTO `area_code` VALUES ('301', '随州市', '18', '421300', '0', '0');
INSERT INTO `area_code` VALUES ('302', '恩施自治州', '18', '422800', '0', '0');
INSERT INTO `area_code` VALUES ('303', '仙桃市', '18', '429004', '0', '0');
INSERT INTO `area_code` VALUES ('304', '潜江市', '18', '429005', '0', '0');
INSERT INTO `area_code` VALUES ('305', '天门市', '18', '429006', '0', '0');
INSERT INTO `area_code` VALUES ('306', '神农架林区', '18', '429021', '0', '0');
INSERT INTO `area_code` VALUES ('307', '长沙市', '19', '430100', '0', '0');
INSERT INTO `area_code` VALUES ('308', '株洲市', '19', '430200', '0', '0');
INSERT INTO `area_code` VALUES ('309', '湘潭市', '19', '430300', '0', '0');
INSERT INTO `area_code` VALUES ('310', '衡阳市', '19', '430400', '0', '0');
INSERT INTO `area_code` VALUES ('311', '邵阳市', '19', '430500', '0', '0');
INSERT INTO `area_code` VALUES ('312', '岳阳市', '19', '430600', '0', '0');
INSERT INTO `area_code` VALUES ('313', '常德市', '19', '430700', '0', '0');
INSERT INTO `area_code` VALUES ('314', '张家界市', '19', '430800', '0', '0');
INSERT INTO `area_code` VALUES ('315', '益阳市', '19', '430900', '0', '0');
INSERT INTO `area_code` VALUES ('316', '郴州市', '19', '431000', '0', '0');
INSERT INTO `area_code` VALUES ('317', '永州市', '19', '431100', '0', '0');
INSERT INTO `area_code` VALUES ('318', '怀化市', '19', '431200', '0', '0');
INSERT INTO `area_code` VALUES ('319', '娄底市', '19', '431300', '0', '0');
INSERT INTO `area_code` VALUES ('320', '湘西自治州', '19', '433100', '0', '0');
INSERT INTO `area_code` VALUES ('321', '广州市', '20', '440100', '0', '0');
INSERT INTO `area_code` VALUES ('322', '韶关市', '20', '440200', '0', '0');
INSERT INTO `area_code` VALUES ('323', '深圳市', '20', '440300', '0', '0');
INSERT INTO `area_code` VALUES ('324', '珠海市', '20', '440400', '0', '0');
INSERT INTO `area_code` VALUES ('325', '汕头市', '20', '440500', '0', '0');
INSERT INTO `area_code` VALUES ('326', '佛山市', '20', '440600', '0', '0');
INSERT INTO `area_code` VALUES ('327', '江门市', '20', '440700', '0', '0');
INSERT INTO `area_code` VALUES ('328', '湛江市', '20', '440800', '0', '0');
INSERT INTO `area_code` VALUES ('329', '茂名市', '20', '440900', '0', '0');
INSERT INTO `area_code` VALUES ('330', '肇庆市', '20', '441200', '0', '0');
INSERT INTO `area_code` VALUES ('331', '惠州市', '20', '441300', '0', '0');
INSERT INTO `area_code` VALUES ('332', '梅州市', '20', '441400', '0', '0');
INSERT INTO `area_code` VALUES ('333', '汕尾市', '20', '441500', '0', '0');
INSERT INTO `area_code` VALUES ('334', '河源市', '20', '441600', '0', '0');
INSERT INTO `area_code` VALUES ('335', '阳江市', '20', '441700', '0', '0');
INSERT INTO `area_code` VALUES ('336', '清远市', '20', '441800', '0', '0');
INSERT INTO `area_code` VALUES ('337', '东莞市', '20', '441900', '0', '0');
INSERT INTO `area_code` VALUES ('338', '中山市', '20', '442000', '0', '0');
INSERT INTO `area_code` VALUES ('339', '潮州市', '20', '445100', '0', '0');
INSERT INTO `area_code` VALUES ('340', '揭阳市', '20', '445200', '0', '0');
INSERT INTO `area_code` VALUES ('341', '云浮市', '20', '445300', '0', '0');
INSERT INTO `area_code` VALUES ('342', '南宁市', '21', '450100', '0', '0');
INSERT INTO `area_code` VALUES ('343', '柳州市', '21', '450200', '0', '0');
INSERT INTO `area_code` VALUES ('344', '桂林市', '21', '450300', '0', '0');
INSERT INTO `area_code` VALUES ('345', '梧州市', '21', '450400', '0', '0');
INSERT INTO `area_code` VALUES ('346', '北海市', '21', '450500', '0', '0');
INSERT INTO `area_code` VALUES ('347', '防城港市', '21', '450600', '0', '0');
INSERT INTO `area_code` VALUES ('348', '钦州市', '21', '450700', '0', '0');
INSERT INTO `area_code` VALUES ('349', '贵港市', '21', '450800', '0', '0');
INSERT INTO `area_code` VALUES ('350', '玉林市', '21', '450900', '0', '0');
INSERT INTO `area_code` VALUES ('351', '百色市', '21', '451000', '0', '0');
INSERT INTO `area_code` VALUES ('352', '贺州市', '21', '451100', '0', '0');
INSERT INTO `area_code` VALUES ('353', '河池市', '21', '451200', '0', '0');
INSERT INTO `area_code` VALUES ('354', '来宾市', '21', '451300', '0', '0');
INSERT INTO `area_code` VALUES ('355', '崇左市', '21', '451400', '0', '0');
INSERT INTO `area_code` VALUES ('356', '海口市', '22', '460100', '0', '0');
INSERT INTO `area_code` VALUES ('357', '三亚市', '22', '460200', '0', '0');
INSERT INTO `area_code` VALUES ('358', '三沙市', '22', '460300', '0', '0');
INSERT INTO `area_code` VALUES ('359', '五指山市', '22', '469001', '0', '0');
INSERT INTO `area_code` VALUES ('360', '琼海市', '22', '469002', '0', '0');
INSERT INTO `area_code` VALUES ('361', '儋州市', '22', '460400', '0', '0');
INSERT INTO `area_code` VALUES ('362', '文昌市', '22', '469005', '0', '0');
INSERT INTO `area_code` VALUES ('363', '万宁市', '22', '469006', '0', '0');
INSERT INTO `area_code` VALUES ('364', '东方市', '22', '469007', '0', '0');
INSERT INTO `area_code` VALUES ('365', '定安县', '22', '469021', '0', '0');
INSERT INTO `area_code` VALUES ('366', '屯昌县', '22', '469022', '0', '0');
INSERT INTO `area_code` VALUES ('367', '澄迈县', '22', '469023', '0', '0');
INSERT INTO `area_code` VALUES ('368', '临高县', '22', '469024', '0', '0');
INSERT INTO `area_code` VALUES ('369', '白沙自治县', '22', '469025', '0', '0');
INSERT INTO `area_code` VALUES ('370', '昌江自治县', '22', '469026', '0', '0');
INSERT INTO `area_code` VALUES ('371', '乐东自治县', '22', '469027', '0', '0');
INSERT INTO `area_code` VALUES ('372', '陵水自治县', '22', '469028', '0', '0');
INSERT INTO `area_code` VALUES ('373', '保亭自治县', '22', '469029', '0', '0');
INSERT INTO `area_code` VALUES ('374', '琼中自治县', '22', '469030', '0', '0');
INSERT INTO `area_code` VALUES ('375', '成都市', '23', '510100', '0', '0');
INSERT INTO `area_code` VALUES ('376', '自贡市', '23', '510300', '0', '0');
INSERT INTO `area_code` VALUES ('377', '攀枝花市', '23', '510400', '0', '0');
INSERT INTO `area_code` VALUES ('378', '泸州市', '23', '510500', '0', '0');
INSERT INTO `area_code` VALUES ('379', '德阳市', '23', '510600', '0', '0');
INSERT INTO `area_code` VALUES ('380', '绵阳市', '23', '510700', '0', '0');
INSERT INTO `area_code` VALUES ('381', '广元市', '23', '510800', '0', '0');
INSERT INTO `area_code` VALUES ('382', '遂宁市', '23', '510900', '0', '0');
INSERT INTO `area_code` VALUES ('383', '内江市', '23', '511000', '0', '0');
INSERT INTO `area_code` VALUES ('384', '乐山市', '23', '511100', '0', '0');
INSERT INTO `area_code` VALUES ('385', '南充市', '23', '511300', '0', '0');
INSERT INTO `area_code` VALUES ('386', '眉山市', '23', '511400', '0', '0');
INSERT INTO `area_code` VALUES ('387', '宜宾市', '23', '511500', '0', '0');
INSERT INTO `area_code` VALUES ('388', '广安市', '23', '511600', '0', '0');
INSERT INTO `area_code` VALUES ('389', '达州市', '23', '511700', '0', '0');
INSERT INTO `area_code` VALUES ('390', '雅安市', '23', '511800', '0', '0');
INSERT INTO `area_code` VALUES ('391', '巴中市', '23', '511900', '0', '0');
INSERT INTO `area_code` VALUES ('392', '资阳市', '23', '512000', '0', '0');
INSERT INTO `area_code` VALUES ('393', '阿坝自治州', '23', '513200', '0', '0');
INSERT INTO `area_code` VALUES ('394', '甘孜自治州', '23', '513300', '0', '0');
INSERT INTO `area_code` VALUES ('395', '凉山自治州', '23', '615000', '0', '0');
INSERT INTO `area_code` VALUES ('396', '贵阳市', '24', '520100', '0', '0');
INSERT INTO `area_code` VALUES ('397', '六盘水市', '24', '520200', '0', '0');
INSERT INTO `area_code` VALUES ('398', '遵义市', '24', '520300', '0', '0');
INSERT INTO `area_code` VALUES ('399', '安顺市', '24', '520400', '0', '0');
INSERT INTO `area_code` VALUES ('400', '毕节市', '24', '520500', '0', '0');
INSERT INTO `area_code` VALUES ('401', '铜仁市', '24', '520600', '0', '0');
INSERT INTO `area_code` VALUES ('402', '黔西南自治州', '24', '522300', '0', '0');
INSERT INTO `area_code` VALUES ('403', '黔东南自治州', '24', '522600', '0', '0');
INSERT INTO `area_code` VALUES ('404', '黔南自治州', '24', '522700', '0', '0');
INSERT INTO `area_code` VALUES ('405', '昆明市', '25', '530100', '0', '0');
INSERT INTO `area_code` VALUES ('406', '曲靖市', '25', '530300', '0', '0');
INSERT INTO `area_code` VALUES ('407', '玉溪市', '25', '530400', '0', '0');
INSERT INTO `area_code` VALUES ('408', '昭通市', '25', '530600', '0', '0');
INSERT INTO `area_code` VALUES ('409', '丽江市', '25', '530700', '0', '0');
INSERT INTO `area_code` VALUES ('410', '普洱市', '25', '530800', '0', '0');
INSERT INTO `area_code` VALUES ('411', '临沧市', '25', '530900', '0', '0');
INSERT INTO `area_code` VALUES ('412', '楚雄自治州', '25', '532300', '0', '0');
INSERT INTO `area_code` VALUES ('413', '红河自治州', '25', '532500', '0', '0');
INSERT INTO `area_code` VALUES ('414', '文山自治州', '25', '532600', '0', '0');
INSERT INTO `area_code` VALUES ('415', '西双版纳自治州', '25', '532800', '0', '0');
INSERT INTO `area_code` VALUES ('416', '大理自治州', '25', '532900', '0', '0');
INSERT INTO `area_code` VALUES ('417', '德宏自治州', '25', '533100', '0', '0');
INSERT INTO `area_code` VALUES ('418', '怒江自治州', '25', '533300', '0', '0');
INSERT INTO `area_code` VALUES ('419', '迪庆自治州', '25', '533400', '0', '0');
INSERT INTO `area_code` VALUES ('420', '保山市', '25', '678000', '0', '0');
INSERT INTO `area_code` VALUES ('421', '拉萨市', '26', '540100', '0', '0');
INSERT INTO `area_code` VALUES ('422', '昌都市', '26', '542100', '0', '0');
INSERT INTO `area_code` VALUES ('423', '山南市', '26', '540500', '0', '0');
INSERT INTO `area_code` VALUES ('424', '日喀则市', '26', '542300', '0', '0');
INSERT INTO `area_code` VALUES ('425', '那曲市', '26', '540600', '0', '0');
INSERT INTO `area_code` VALUES ('426', '阿里地区', '26', '542500', '0', '0');
INSERT INTO `area_code` VALUES ('427', '林芝市', '26', '540400', '0', '0');
INSERT INTO `area_code` VALUES ('428', '西安市', '27', '610100', '0', '0');
INSERT INTO `area_code` VALUES ('429', '铜川市', '27', '610200', '0', '0');
INSERT INTO `area_code` VALUES ('430', '宝鸡市', '27', '610300', '0', '0');
INSERT INTO `area_code` VALUES ('431', '咸阳市', '27', '610400', '0', '0');
INSERT INTO `area_code` VALUES ('432', '渭南市', '27', '610500', '0', '0');
INSERT INTO `area_code` VALUES ('433', '延安市', '27', '610600', '0', '0');
INSERT INTO `area_code` VALUES ('434', '汉中市', '27', '610700', '0', '0');
INSERT INTO `area_code` VALUES ('435', '榆林市', '27', '610800', '0', '0');
INSERT INTO `area_code` VALUES ('436', '安康市', '27', '610900', '0', '0');
INSERT INTO `area_code` VALUES ('437', '商洛市', '27', '611000', '0', '0');
INSERT INTO `area_code` VALUES ('438', '兰州市', '28', '620100', '0', '0');
INSERT INTO `area_code` VALUES ('439', '嘉峪关市', '28', '620200', '0', '0');
INSERT INTO `area_code` VALUES ('440', '金昌市', '28', '620300', '0', '0');
INSERT INTO `area_code` VALUES ('441', '白银市', '28', '620400', '0', '0');
INSERT INTO `area_code` VALUES ('442', '天水市', '28', '620500', '0', '0');
INSERT INTO `area_code` VALUES ('443', '武威市', '28', '620600', '0', '0');
INSERT INTO `area_code` VALUES ('444', '张掖市', '28', '620700', '0', '0');
INSERT INTO `area_code` VALUES ('445', '平凉市', '28', '620800', '0', '0');
INSERT INTO `area_code` VALUES ('446', '酒泉市', '28', '620900', '0', '0');
INSERT INTO `area_code` VALUES ('447', '庆阳市', '28', '621000', '0', '0');
INSERT INTO `area_code` VALUES ('448', '定西市', '28', '621100', '0', '0');
INSERT INTO `area_code` VALUES ('449', '陇南市', '28', '621200', '0', '0');
INSERT INTO `area_code` VALUES ('450', '临夏自治州', '28', '622900', '0', '0');
INSERT INTO `area_code` VALUES ('451', '甘南自治州', '28', '623000', '0', '0');
INSERT INTO `area_code` VALUES ('452', '西宁市', '29', '630100', '0', '0');
INSERT INTO `area_code` VALUES ('453', '海东市', '29', '632100', '0', '0');
INSERT INTO `area_code` VALUES ('454', '海北自治州', '29', '632200', '0', '0');
INSERT INTO `area_code` VALUES ('455', '黄南自治州', '29', '632300', '0', '0');
INSERT INTO `area_code` VALUES ('456', '海南自治州', '29', '632500', '0', '0');
INSERT INTO `area_code` VALUES ('457', '果洛自治州', '29', '632600', '0', '0');
INSERT INTO `area_code` VALUES ('458', '玉树自治州', '29', '632700', '0', '0');
INSERT INTO `area_code` VALUES ('459', '海西自治州', '29', '632800', '0', '0');
INSERT INTO `area_code` VALUES ('460', '银川市', '30', '640100', '0', '0');
INSERT INTO `area_code` VALUES ('461', '石嘴山市', '30', '640200', '0', '0');
INSERT INTO `area_code` VALUES ('462', '吴忠市', '30', '640300', '0', '0');
INSERT INTO `area_code` VALUES ('463', '固原市', '30', '640400', '0', '0');
INSERT INTO `area_code` VALUES ('464', '中卫市', '30', '640500', '0', '0');
INSERT INTO `area_code` VALUES ('465', '乌鲁木齐市', '31', '650100', '0', '0');
INSERT INTO `area_code` VALUES ('466', '克拉玛依市', '31', '650200', '0', '0');
INSERT INTO `area_code` VALUES ('467', '吐鲁番市', '31', '652100', '0', '0');
INSERT INTO `area_code` VALUES ('468', '哈密市', '31', '652200', '0', '0');
INSERT INTO `area_code` VALUES ('469', '昌吉自治州', '31', '652300', '0', '0');
INSERT INTO `area_code` VALUES ('470', '博尔塔拉自治州', '31', '652700', '0', '0');
INSERT INTO `area_code` VALUES ('471', '巴音郭楞自治州', '31', '652800', '0', '0');
INSERT INTO `area_code` VALUES ('472', '阿克苏地区', '31', '652900', '0', '0');
INSERT INTO `area_code` VALUES ('473', '克孜勒苏自治州', '31', '653000', '0', '0');
INSERT INTO `area_code` VALUES ('474', '喀什地区', '31', '653100', '0', '0');
INSERT INTO `area_code` VALUES ('475', '和田地区', '31', '653200', '0', '0');
INSERT INTO `area_code` VALUES ('476', '伊犁自治州', '31', '654000', '0', '0');
INSERT INTO `area_code` VALUES ('477', '塔城地区', '31', '654200', '0', '0');
INSERT INTO `area_code` VALUES ('478', '阿勒泰地区', '31', '654300', '0', '0');
INSERT INTO `area_code` VALUES ('479', '石河子市', '31', '659001', '0', '0');
INSERT INTO `area_code` VALUES ('480', '阿拉尔市', '31', '659002', '0', '0');
INSERT INTO `area_code` VALUES ('481', '图木舒克市', '31', '659003', '0', '0');
INSERT INTO `area_code` VALUES ('482', '五家渠市', '31', '659004', '0', '0');
INSERT INTO `area_code` VALUES ('483', '北屯市', '31', '659005', '0', '0');
INSERT INTO `area_code` VALUES ('484', '铁门关市', '31', '659006', '0', '0');
INSERT INTO `area_code` VALUES ('485', '台北市', '32', '63', '0', '0');
INSERT INTO `area_code` VALUES ('486', '高雄市', '32', '64', '0', '0');
INSERT INTO `area_code` VALUES ('487', '基隆市', '32', '10017', '0', '0');
INSERT INTO `area_code` VALUES ('488', '台中市', '32', '10019', '0', '0');
INSERT INTO `area_code` VALUES ('489', '台南市', '32', '10021', '0', '0');
INSERT INTO `area_code` VALUES ('490', '新竹市', '32', '10018', '0', '0');
INSERT INTO `area_code` VALUES ('491', '嘉义市', '32', '10020', '0', '0');
INSERT INTO `area_code` VALUES ('492', '新北市', '32', null, '0', '0');
INSERT INTO `area_code` VALUES ('493', '宜兰县', '32', '10002', '0', '0');
INSERT INTO `area_code` VALUES ('494', '桃园县', '32', '10003', '0', '0');
INSERT INTO `area_code` VALUES ('495', '新竹县', '32', '10004', '0', '0');
INSERT INTO `area_code` VALUES ('496', '苗栗县', '32', '10005', '0', '0');
INSERT INTO `area_code` VALUES ('497', '彰化县', '32', '10007', '0', '0');
INSERT INTO `area_code` VALUES ('498', '南投县', '32', '10008', '0', '0');
INSERT INTO `area_code` VALUES ('499', '云林县', '32', '10009', '0', '0');
INSERT INTO `area_code` VALUES ('500', '嘉义县', '32', '10020', '0', '0');
INSERT INTO `area_code` VALUES ('501', '屏东县', '32', '10013', '0', '0');
INSERT INTO `area_code` VALUES ('502', '台东县', '32', '10014', '0', '0');
INSERT INTO `area_code` VALUES ('503', '花莲县', '32', '10015', '0', '0');
INSERT INTO `area_code` VALUES ('504', '澎湖县', '32', '10016', '0', '0');
INSERT INTO `area_code` VALUES ('505', '连江县', '32', null, '0', '0');
INSERT INTO `area_code` VALUES ('506', '金门县', '32', null, '0', '0');
INSERT INTO `area_code` VALUES ('507', '中西区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('508', '葵青区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('509', '元朗区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('510', '屯门区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('511', '荃湾区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('512', '西贡区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('513', '沙田区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('514', '大埔区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('515', '北区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('516', '观塘区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('517', '黄大仙区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('518', '深水埗区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('519', '油尖旺区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('520', '九龙城区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('521', '南区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('522', '东区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('523', '湾仔区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('524', '离岛区', '33', null, '0', '0');
INSERT INTO `area_code` VALUES ('525', '花地玛堂区', '34', null, '0', '0');
INSERT INTO `area_code` VALUES ('526', '圣安多堂区', '34', null, '0', '0');
INSERT INTO `area_code` VALUES ('527', '大堂区堂区', '34', null, '0', '0');
INSERT INTO `area_code` VALUES ('528', '望德堂区', '34', null, '0', '0');
INSERT INTO `area_code` VALUES ('529', '风顺堂区', '34', null, '0', '0');
INSERT INTO `area_code` VALUES ('530', '嘉模堂区', '34', null, '0', '0');
INSERT INTO `area_code` VALUES ('531', '圣方济各堂区', '34', null, '0', '0');
INSERT INTO `area_code` VALUES ('532', '路氹城', '34', null, '0', '0');
INSERT INTO `area_code` VALUES ('533', '长安区', '125', '130102', '0', '0');
INSERT INTO `area_code` VALUES ('535', '桥西区', '125', '130104', '0', '0');
INSERT INTO `area_code` VALUES ('536', '新华区', '125', '130105', '0', '0');
INSERT INTO `area_code` VALUES ('537', '井陉矿区', '125', '130107', '0', '0');
INSERT INTO `area_code` VALUES ('538', '裕华区', '125', '130108', '0', '0');
INSERT INTO `area_code` VALUES ('539', '井陉县', '125', '130121', '0', '0');
INSERT INTO `area_code` VALUES ('540', '正定县', '125', '130123', '0', '0');
INSERT INTO `area_code` VALUES ('541', '栾城区', '125', '130111', '0', '0');
INSERT INTO `area_code` VALUES ('542', '行唐县', '125', '130125', '0', '0');
INSERT INTO `area_code` VALUES ('543', '灵寿县', '125', '130126', '0', '0');
INSERT INTO `area_code` VALUES ('544', '高邑县', '125', '130127', '0', '0');
INSERT INTO `area_code` VALUES ('545', '深泽县', '125', '130128', '0', '0');
INSERT INTO `area_code` VALUES ('546', '赞皇县', '125', '130129', '0', '0');
INSERT INTO `area_code` VALUES ('547', '无极县', '125', '130130', '0', '0');
INSERT INTO `area_code` VALUES ('548', '平山县', '125', '130131', '0', '0');
INSERT INTO `area_code` VALUES ('549', '元氏县', '125', '130132', '0', '0');
INSERT INTO `area_code` VALUES ('550', '赵县', '125', '130133', '0', '0');
INSERT INTO `area_code` VALUES ('551', '辛集市', '125', '130181', '0', '0');
INSERT INTO `area_code` VALUES ('552', '藁城区', '125', '130109', '0', '0');
INSERT INTO `area_code` VALUES ('553', '晋州市', '125', '130183', '0', '0');
INSERT INTO `area_code` VALUES ('554', '新乐市', '125', '130184', '0', '0');
INSERT INTO `area_code` VALUES ('555', '鹿泉区', '125', '130110', '0', '0');
INSERT INTO `area_code` VALUES ('556', '路南区', '126', '130202', '0', '0');
INSERT INTO `area_code` VALUES ('557', '路北区', '126', '130203', '0', '0');
INSERT INTO `area_code` VALUES ('558', '古冶区', '126', '130204', '0', '0');
INSERT INTO `area_code` VALUES ('559', '开平区', '126', '130205', '0', '0');
INSERT INTO `area_code` VALUES ('560', '丰南区', '126', '130207', '0', '0');
INSERT INTO `area_code` VALUES ('561', '丰润区', '126', '130208', '0', '0');
INSERT INTO `area_code` VALUES ('562', '滦州市', '126', '130223', '0', '0');
INSERT INTO `area_code` VALUES ('563', '滦南县', '126', '130224', '0', '0');
INSERT INTO `area_code` VALUES ('564', '乐亭县', '126', '130225', '0', '0');
INSERT INTO `area_code` VALUES ('565', '迁西县', '126', '130227', '0', '0');
INSERT INTO `area_code` VALUES ('566', '玉田县', '126', '130229', '0', '0');
INSERT INTO `area_code` VALUES ('567', '唐海县', '126', '130230', '0', '0');
INSERT INTO `area_code` VALUES ('568', '遵化市', '126', '130281', '0', '0');
INSERT INTO `area_code` VALUES ('569', '迁安市', '126', '130283', '0', '0');
INSERT INTO `area_code` VALUES ('570', '海港区', '127', '130302', '0', '0');
INSERT INTO `area_code` VALUES ('571', '山海关区', '127', '130303', '0', '0');
INSERT INTO `area_code` VALUES ('572', '北戴河区', '127', '130304', '0', '0');
INSERT INTO `area_code` VALUES ('573', '青龙自治县', '127', '130321', '0', '0');
INSERT INTO `area_code` VALUES ('574', '昌黎县', '127', '130322', '0', '0');
INSERT INTO `area_code` VALUES ('575', '抚宁区', '127', '130323', '0', '0');
INSERT INTO `area_code` VALUES ('576', '卢龙县', '127', '130324', '0', '0');
INSERT INTO `area_code` VALUES ('577', '邯山区', '128', '130402', '0', '0');
INSERT INTO `area_code` VALUES ('578', '丛台区', '128', '130403', '0', '0');
INSERT INTO `area_code` VALUES ('579', '复兴区', '128', '130404', '0', '0');
INSERT INTO `area_code` VALUES ('580', '峰峰矿区', '128', '130406', '0', '0');
INSERT INTO `area_code` VALUES ('582', '临漳县', '128', '130423', '0', '0');
INSERT INTO `area_code` VALUES ('583', '成安县', '128', '130424', '0', '0');
INSERT INTO `area_code` VALUES ('584', '大名县', '128', '130425', '0', '0');
INSERT INTO `area_code` VALUES ('585', '涉县', '128', '130426', '0', '0');
INSERT INTO `area_code` VALUES ('586', '磁县', '128', '130427', '0', '0');
INSERT INTO `area_code` VALUES ('587', '肥乡区', '128', '130407', '0', '0');
INSERT INTO `area_code` VALUES ('588', '永年区', '128', '130408', '0', '0');
INSERT INTO `area_code` VALUES ('589', '邱县', '128', '130430', '0', '0');
INSERT INTO `area_code` VALUES ('590', '鸡泽县', '128', '130431', '0', '0');
INSERT INTO `area_code` VALUES ('591', '广平县', '128', '130432', '0', '0');
INSERT INTO `area_code` VALUES ('592', '馆陶县', '128', '130433', '0', '0');
INSERT INTO `area_code` VALUES ('593', '魏县', '128', '130434', '0', '0');
INSERT INTO `area_code` VALUES ('594', '曲周县', '128', '130435', '0', '0');
INSERT INTO `area_code` VALUES ('595', '武安市', '128', '130481', '0', '0');
INSERT INTO `area_code` VALUES ('596', '桥东区', '129', '130502', '0', '0');
INSERT INTO `area_code` VALUES ('597', '桥西区', '129', '130503', '0', '0');
INSERT INTO `area_code` VALUES ('598', '邢台县', '129', '130521', '0', '0');
INSERT INTO `area_code` VALUES ('599', '临城县', '129', '130522', '0', '0');
INSERT INTO `area_code` VALUES ('600', '内丘县', '129', '130523', '0', '0');
INSERT INTO `area_code` VALUES ('601', '柏乡县', '129', '130524', '0', '0');
INSERT INTO `area_code` VALUES ('602', '隆尧县', '129', '130525', '0', '0');
INSERT INTO `area_code` VALUES ('603', '任县', '129', '130526', '0', '0');
INSERT INTO `area_code` VALUES ('604', '南和县', '129', '130527', '0', '0');
INSERT INTO `area_code` VALUES ('605', '宁晋县', '129', '130528', '0', '0');
INSERT INTO `area_code` VALUES ('606', '巨鹿县', '129', '130529', '0', '0');
INSERT INTO `area_code` VALUES ('607', '新河县', '129', '130530', '0', '0');
INSERT INTO `area_code` VALUES ('608', '广宗县', '129', '130531', '0', '0');
INSERT INTO `area_code` VALUES ('609', '平乡县', '129', '130532', '0', '0');
INSERT INTO `area_code` VALUES ('610', '威县', '129', '130533', '0', '0');
INSERT INTO `area_code` VALUES ('611', '清河县', '129', '130534', '0', '0');
INSERT INTO `area_code` VALUES ('612', '临西县', '129', '130535', '0', '0');
INSERT INTO `area_code` VALUES ('613', '南宫市', '129', '130581', '0', '0');
INSERT INTO `area_code` VALUES ('614', '沙河市', '129', '130582', '0', '0');
INSERT INTO `area_code` VALUES ('615', '竞秀区', '130', '130602', '0', '0');
INSERT INTO `area_code` VALUES ('616', '莲池区', '130', '130603', '0', '0');
INSERT INTO `area_code` VALUES ('618', '满城区', '130', '130621', '0', '0');
INSERT INTO `area_code` VALUES ('619', '清苑区', '130', '130622', '0', '0');
INSERT INTO `area_code` VALUES ('620', '涞水县', '130', '130623', '0', '0');
INSERT INTO `area_code` VALUES ('621', '阜平县', '130', '130624', '0', '0');
INSERT INTO `area_code` VALUES ('622', '徐水区', '130', '130625', '0', '0');
INSERT INTO `area_code` VALUES ('623', '定兴县', '130', '130626', '0', '0');
INSERT INTO `area_code` VALUES ('624', '唐县', '130', '130627', '0', '0');
INSERT INTO `area_code` VALUES ('625', '高阳县', '130', '130628', '0', '0');
INSERT INTO `area_code` VALUES ('626', '容城县', '130', '130629', '0', '0');
INSERT INTO `area_code` VALUES ('627', '涞源县', '130', '130630', '0', '0');
INSERT INTO `area_code` VALUES ('628', '望都县', '130', '130631', '0', '0');
INSERT INTO `area_code` VALUES ('629', '安新县', '130', '130632', '0', '0');
INSERT INTO `area_code` VALUES ('630', '易县', '130', '130633', '0', '0');
INSERT INTO `area_code` VALUES ('631', '曲阳县', '130', '130634', '0', '0');
INSERT INTO `area_code` VALUES ('632', '蠡县', '130', '130635', '0', '0');
INSERT INTO `area_code` VALUES ('633', '顺平县', '130', '130636', '0', '0');
INSERT INTO `area_code` VALUES ('634', '博野县', '130', '130637', '0', '0');
INSERT INTO `area_code` VALUES ('635', '雄县', '130', '130638', '0', '0');
INSERT INTO `area_code` VALUES ('636', '涿州市', '130', '130681', '0', '0');
INSERT INTO `area_code` VALUES ('637', '定州市', '130', '130682', '0', '0');
INSERT INTO `area_code` VALUES ('638', '安国市', '130', '130683', '0', '0');
INSERT INTO `area_code` VALUES ('639', '高碑店市', '130', '130684', '0', '0');
INSERT INTO `area_code` VALUES ('640', '桥东区', '131', '130702', '0', '0');
INSERT INTO `area_code` VALUES ('641', '桥西区', '131', '130703', '0', '0');
INSERT INTO `area_code` VALUES ('642', '宣化区', '131', '130705', '0', '0');
INSERT INTO `area_code` VALUES ('643', '下花园区', '131', '130706', '0', '0');
INSERT INTO `area_code` VALUES ('645', '张北县', '131', '130722', '0', '0');
INSERT INTO `area_code` VALUES ('646', '康保县', '131', '130723', '0', '0');
INSERT INTO `area_code` VALUES ('647', '沽源县', '131', '130724', '0', '0');
INSERT INTO `area_code` VALUES ('648', '尚义县', '131', '130725', '0', '0');
INSERT INTO `area_code` VALUES ('649', '蔚县', '131', '130726', '0', '0');
INSERT INTO `area_code` VALUES ('650', '阳原县', '131', '130727', '0', '0');
INSERT INTO `area_code` VALUES ('651', '怀安县', '131', '130728', '0', '0');
INSERT INTO `area_code` VALUES ('652', '万全区', '131', '130708', '0', '0');
INSERT INTO `area_code` VALUES ('653', '怀来县', '131', '130730', '0', '0');
INSERT INTO `area_code` VALUES ('654', '涿鹿县', '131', '130731', '0', '0');
INSERT INTO `area_code` VALUES ('655', '赤城县', '131', '130732', '0', '0');
INSERT INTO `area_code` VALUES ('656', '崇礼区', '131', '130709', '0', '0');
INSERT INTO `area_code` VALUES ('657', '双桥区', '132', '130802', '0', '0');
INSERT INTO `area_code` VALUES ('658', '双滦区', '132', '130803', '0', '0');
INSERT INTO `area_code` VALUES ('659', '鹰手营子区', '132', '130804', '0', '0');
INSERT INTO `area_code` VALUES ('660', '承德县', '132', '130821', '0', '0');
INSERT INTO `area_code` VALUES ('661', '兴隆县', '132', '130822', '0', '0');
INSERT INTO `area_code` VALUES ('662', '平泉市', '132', '130881', '0', '0');
INSERT INTO `area_code` VALUES ('663', '滦平县', '132', '130824', '0', '0');
INSERT INTO `area_code` VALUES ('664', '隆化县', '132', '130825', '0', '0');
INSERT INTO `area_code` VALUES ('665', '丰宁自治县', '132', '130826', '0', '0');
INSERT INTO `area_code` VALUES ('666', '宽城自治县', '132', '130827', '0', '0');
INSERT INTO `area_code` VALUES ('667', '围场自治县', '132', '130828', '0', '0');
INSERT INTO `area_code` VALUES ('668', '新华区', '133', '130902', '0', '0');
INSERT INTO `area_code` VALUES ('669', '运河区', '133', '130903', '0', '0');
INSERT INTO `area_code` VALUES ('670', '沧县', '133', '130921', '0', '0');
INSERT INTO `area_code` VALUES ('671', '青县', '133', '130922', '0', '0');
INSERT INTO `area_code` VALUES ('672', '东光县', '133', '130923', '0', '0');
INSERT INTO `area_code` VALUES ('673', '海兴县', '133', '130924', '0', '0');
INSERT INTO `area_code` VALUES ('674', '盐山县', '133', '130925', '0', '0');
INSERT INTO `area_code` VALUES ('675', '肃宁县', '133', '130926', '0', '0');
INSERT INTO `area_code` VALUES ('676', '南皮县', '133', '130927', '0', '0');
INSERT INTO `area_code` VALUES ('677', '吴桥县', '133', '130928', '0', '0');
INSERT INTO `area_code` VALUES ('678', '献县', '133', '130929', '0', '0');
INSERT INTO `area_code` VALUES ('679', '孟村自治县', '133', '130930', '0', '0');
INSERT INTO `area_code` VALUES ('680', '泊头市', '133', '130981', '0', '0');
INSERT INTO `area_code` VALUES ('681', '任丘市', '133', '130982', '0', '0');
INSERT INTO `area_code` VALUES ('682', '黄骅市', '133', '130983', '0', '0');
INSERT INTO `area_code` VALUES ('683', '河间市', '133', '130984', '0', '0');
INSERT INTO `area_code` VALUES ('684', '安次区', '134', '131002', '0', '0');
INSERT INTO `area_code` VALUES ('685', '广阳区', '134', '131003', '0', '0');
INSERT INTO `area_code` VALUES ('686', '固安县', '134', '131022', '0', '0');
INSERT INTO `area_code` VALUES ('687', '永清县', '134', '131023', '0', '0');
INSERT INTO `area_code` VALUES ('688', '香河县', '134', '131024', '0', '0');
INSERT INTO `area_code` VALUES ('689', '大城县', '134', '131025', '0', '0');
INSERT INTO `area_code` VALUES ('690', '文安县', '134', '131026', '0', '0');
INSERT INTO `area_code` VALUES ('691', '大厂自治县', '134', '131028', '0', '0');
INSERT INTO `area_code` VALUES ('692', '霸州市', '134', '131081', '0', '0');
INSERT INTO `area_code` VALUES ('693', '三河市', '134', '131082', '0', '0');
INSERT INTO `area_code` VALUES ('694', '桃城区', '135', '131102', '0', '0');
INSERT INTO `area_code` VALUES ('695', '枣强县', '135', '131121', '0', '0');
INSERT INTO `area_code` VALUES ('696', '武邑县', '135', '131122', '0', '0');
INSERT INTO `area_code` VALUES ('697', '武强县', '135', '131123', '0', '0');
INSERT INTO `area_code` VALUES ('698', '饶阳县', '135', '131124', '0', '0');
INSERT INTO `area_code` VALUES ('699', '安平县', '135', '131125', '0', '0');
INSERT INTO `area_code` VALUES ('700', '故城县', '135', '131126', '0', '0');
INSERT INTO `area_code` VALUES ('701', '景县', '135', '131127', '0', '0');
INSERT INTO `area_code` VALUES ('702', '阜城县', '135', '131128', '0', '0');
INSERT INTO `area_code` VALUES ('703', '冀州区', '135', '131103', '0', '0');
INSERT INTO `area_code` VALUES ('704', '深州市', '135', '131182', '0', '0');
INSERT INTO `area_code` VALUES ('705', '小店区', '136', '140105', '0', '0');
INSERT INTO `area_code` VALUES ('706', '迎泽区', '136', '140106', '0', '0');
INSERT INTO `area_code` VALUES ('707', '杏花岭区', '136', '140107', '0', '0');
INSERT INTO `area_code` VALUES ('708', '尖草坪区', '136', '140108', '0', '0');
INSERT INTO `area_code` VALUES ('709', '万柏林区', '136', '140109', '0', '0');
INSERT INTO `area_code` VALUES ('710', '晋源区', '136', '140110', '0', '0');
INSERT INTO `area_code` VALUES ('711', '清徐县', '136', '140121', '0', '0');
INSERT INTO `area_code` VALUES ('712', '阳曲县', '136', '140122', '0', '0');
INSERT INTO `area_code` VALUES ('713', '娄烦县', '136', '140123', '0', '0');
INSERT INTO `area_code` VALUES ('714', '古交市', '136', '140181', '0', '0');
INSERT INTO `area_code` VALUES ('715', '平城区', '137', '140213', '0', '0');
INSERT INTO `area_code` VALUES ('716', '云冈', '137', '140214', '0', '0');
INSERT INTO `area_code` VALUES ('718', '新荣区', '137', '140212', '0', '0');
INSERT INTO `area_code` VALUES ('719', '阳高县', '137', '140221', '0', '0');
INSERT INTO `area_code` VALUES ('720', '天镇县', '137', '140222', '0', '0');
INSERT INTO `area_code` VALUES ('721', '广灵县', '137', '140223', '0', '0');
INSERT INTO `area_code` VALUES ('722', '灵丘县', '137', '140224', '0', '0');
INSERT INTO `area_code` VALUES ('723', '浑源县', '137', '140225', '0', '0');
INSERT INTO `area_code` VALUES ('724', '左云县', '137', '140226', '0', '0');
INSERT INTO `area_code` VALUES ('725', '云州区', '137', '140215', '0', '0');
INSERT INTO `area_code` VALUES ('726', '城区', '138', '140302', '0', '0');
INSERT INTO `area_code` VALUES ('727', '矿区', '138', '140303', '0', '0');
INSERT INTO `area_code` VALUES ('728', '郊区', '138', '140311', '0', '0');
INSERT INTO `area_code` VALUES ('729', '平定县', '138', '140321', '0', '0');
INSERT INTO `area_code` VALUES ('730', '盂县', '138', '140322', '0', '0');
INSERT INTO `area_code` VALUES ('731', '潞州', '139', '140403', '0', '0');
INSERT INTO `area_code` VALUES ('733', '上党区', '139', '140404', '0', '0');
INSERT INTO `area_code` VALUES ('734', '襄垣县', '139', '140423', '0', '0');
INSERT INTO `area_code` VALUES ('735', '屯留区', '139', '140405', '0', '0');
INSERT INTO `area_code` VALUES ('736', '平顺县', '139', '140425', '0', '0');
INSERT INTO `area_code` VALUES ('737', '黎城县', '139', '140426', '0', '0');
INSERT INTO `area_code` VALUES ('738', '壶关县', '139', '140427', '0', '0');
INSERT INTO `area_code` VALUES ('739', '长子县', '139', '140428', '0', '0');
INSERT INTO `area_code` VALUES ('740', '武乡县', '139', '140429', '0', '0');
INSERT INTO `area_code` VALUES ('741', '沁县', '139', '140430', '0', '0');
INSERT INTO `area_code` VALUES ('742', '沁源县', '139', '140431', '0', '0');
INSERT INTO `area_code` VALUES ('743', '潞城区', '139', '140406', '0', '0');
INSERT INTO `area_code` VALUES ('744', '城区', '140', '140502', '0', '0');
INSERT INTO `area_code` VALUES ('745', '沁水县', '140', '140521', '0', '0');
INSERT INTO `area_code` VALUES ('746', '阳城县', '140', '140522', '0', '0');
INSERT INTO `area_code` VALUES ('747', '陵川县', '140', '140524', '0', '0');
INSERT INTO `area_code` VALUES ('748', '泽州县', '140', '140525', '0', '0');
INSERT INTO `area_code` VALUES ('749', '高平市', '140', '140581', '0', '0');
INSERT INTO `area_code` VALUES ('750', '朔城区', '141', '140602', '0', '0');
INSERT INTO `area_code` VALUES ('751', '平鲁区', '141', '140603', '0', '0');
INSERT INTO `area_code` VALUES ('752', '山阴县', '141', '140621', '0', '0');
INSERT INTO `area_code` VALUES ('753', '应县', '141', '140622', '0', '0');
INSERT INTO `area_code` VALUES ('754', '右玉县', '141', '140623', '0', '0');
INSERT INTO `area_code` VALUES ('755', '怀仁市', '141', '140681', '0', '0');
INSERT INTO `area_code` VALUES ('756', '榆次区', '142', '140702', '0', '0');
INSERT INTO `area_code` VALUES ('757', '榆社县', '142', '140721', '0', '0');
INSERT INTO `area_code` VALUES ('758', '左权县', '142', '140722', '0', '0');
INSERT INTO `area_code` VALUES ('759', '和顺县', '142', '140723', '0', '0');
INSERT INTO `area_code` VALUES ('760', '昔阳县', '142', '140724', '0', '0');
INSERT INTO `area_code` VALUES ('761', '寿阳县', '142', '140725', '0', '0');
INSERT INTO `area_code` VALUES ('762', '太谷区', '142', '140703', '0', '0');
INSERT INTO `area_code` VALUES ('763', '祁县', '142', '140727', '0', '0');
INSERT INTO `area_code` VALUES ('764', '平遥县', '142', '140728', '0', '0');
INSERT INTO `area_code` VALUES ('765', '灵石县', '142', '140729', '0', '0');
INSERT INTO `area_code` VALUES ('766', '介休市', '142', '140781', '0', '0');
INSERT INTO `area_code` VALUES ('767', '盐湖区', '143', '140802', '0', '0');
INSERT INTO `area_code` VALUES ('768', '临猗县', '143', '140821', '0', '0');
INSERT INTO `area_code` VALUES ('769', '万荣县', '143', '140822', '0', '0');
INSERT INTO `area_code` VALUES ('770', '闻喜县', '143', '140823', '0', '0');
INSERT INTO `area_code` VALUES ('771', '稷山县', '143', '140824', '0', '0');
INSERT INTO `area_code` VALUES ('772', '新绛县', '143', '140825', '0', '0');
INSERT INTO `area_code` VALUES ('773', '绛县', '143', '140826', '0', '0');
INSERT INTO `area_code` VALUES ('774', '垣曲县', '143', '140827', '0', '0');
INSERT INTO `area_code` VALUES ('775', '夏县', '143', '140828', '0', '0');
INSERT INTO `area_code` VALUES ('776', '平陆县', '143', '140829', '0', '0');
INSERT INTO `area_code` VALUES ('777', '芮城县', '143', '140830', '0', '0');
INSERT INTO `area_code` VALUES ('778', '永济市', '143', '140881', '0', '0');
INSERT INTO `area_code` VALUES ('779', '河津市', '143', '140882', '0', '0');
INSERT INTO `area_code` VALUES ('780', '忻府区', '144', '140902', '0', '0');
INSERT INTO `area_code` VALUES ('781', '定襄县', '144', '140921', '0', '0');
INSERT INTO `area_code` VALUES ('782', '五台县', '144', '140922', '0', '0');
INSERT INTO `area_code` VALUES ('783', '代县', '144', '140923', '0', '0');
INSERT INTO `area_code` VALUES ('784', '繁峙县', '144', '140924', '0', '0');
INSERT INTO `area_code` VALUES ('785', '宁武县', '144', '140925', '0', '0');
INSERT INTO `area_code` VALUES ('786', '静乐县', '144', '140926', '0', '0');
INSERT INTO `area_code` VALUES ('787', '神池县', '144', '140927', '0', '0');
INSERT INTO `area_code` VALUES ('788', '五寨县', '144', '140928', '0', '0');
INSERT INTO `area_code` VALUES ('789', '岢岚县', '144', '140929', '0', '0');
INSERT INTO `area_code` VALUES ('790', '河曲县', '144', '140930', '0', '0');
INSERT INTO `area_code` VALUES ('791', '保德县', '144', '140931', '0', '0');
INSERT INTO `area_code` VALUES ('792', '偏关县', '144', '140932', '0', '0');
INSERT INTO `area_code` VALUES ('793', '原平市', '144', '140981', '0', '0');
INSERT INTO `area_code` VALUES ('794', '尧都区', '145', '141002', '0', '0');
INSERT INTO `area_code` VALUES ('795', '曲沃县', '145', '141021', '0', '0');
INSERT INTO `area_code` VALUES ('796', '翼城县', '145', '141022', '0', '0');
INSERT INTO `area_code` VALUES ('797', '襄汾县', '145', '141023', '0', '0');
INSERT INTO `area_code` VALUES ('798', '洪洞县', '145', '141024', '0', '0');
INSERT INTO `area_code` VALUES ('799', '古县', '145', '141025', '0', '0');
INSERT INTO `area_code` VALUES ('800', '安泽县', '145', '141026', '0', '0');
INSERT INTO `area_code` VALUES ('801', '浮山县', '145', '141027', '0', '0');
INSERT INTO `area_code` VALUES ('802', '吉县', '145', '141028', '0', '0');
INSERT INTO `area_code` VALUES ('803', '乡宁县', '145', '141029', '0', '0');
INSERT INTO `area_code` VALUES ('804', '大宁县', '145', '141030', '0', '0');
INSERT INTO `area_code` VALUES ('805', '隰县', '145', '141031', '0', '0');
INSERT INTO `area_code` VALUES ('806', '永和县', '145', '141032', '0', '0');
INSERT INTO `area_code` VALUES ('807', '蒲县', '145', '141033', '0', '0');
INSERT INTO `area_code` VALUES ('808', '汾西县', '145', '141034', '0', '0');
INSERT INTO `area_code` VALUES ('809', '侯马市', '145', '141081', '0', '0');
INSERT INTO `area_code` VALUES ('810', '霍州市', '145', '141082', '0', '0');
INSERT INTO `area_code` VALUES ('811', '离石区', '146', '141102', '0', '0');
INSERT INTO `area_code` VALUES ('812', '文水县', '146', '141121', '0', '0');
INSERT INTO `area_code` VALUES ('813', '交城县', '146', '141122', '0', '0');
INSERT INTO `area_code` VALUES ('814', '兴县', '146', '141123', '0', '0');
INSERT INTO `area_code` VALUES ('815', '临县', '146', '141124', '0', '0');
INSERT INTO `area_code` VALUES ('816', '柳林县', '146', '141125', '0', '0');
INSERT INTO `area_code` VALUES ('817', '石楼县', '146', '141126', '0', '0');
INSERT INTO `area_code` VALUES ('818', '岚县', '146', '141127', '0', '0');
INSERT INTO `area_code` VALUES ('819', '方山县', '146', '141128', '0', '0');
INSERT INTO `area_code` VALUES ('820', '中阳县', '146', '141129', '0', '0');
INSERT INTO `area_code` VALUES ('821', '交口县', '146', '141130', '0', '0');
INSERT INTO `area_code` VALUES ('822', '孝义市', '146', '141181', '0', '0');
INSERT INTO `area_code` VALUES ('823', '汾阳市', '146', '141182', '0', '0');
INSERT INTO `area_code` VALUES ('824', '新城区', '147', '150102', '0', '0');
INSERT INTO `area_code` VALUES ('825', '回民区', '147', '150103', '0', '0');
INSERT INTO `area_code` VALUES ('826', '玉泉区', '147', '150104', '0', '0');
INSERT INTO `area_code` VALUES ('827', '赛罕区', '147', '150105', '0', '0');
INSERT INTO `area_code` VALUES ('828', '土默特左旗', '147', '150121', '0', '0');
INSERT INTO `area_code` VALUES ('829', '托克托县', '147', '150122', '0', '0');
INSERT INTO `area_code` VALUES ('830', '和林格尔县', '147', '150123', '0', '0');
INSERT INTO `area_code` VALUES ('831', '清水河县', '147', '150124', '0', '0');
INSERT INTO `area_code` VALUES ('832', '武川县', '147', '150125', '0', '0');
INSERT INTO `area_code` VALUES ('833', '东河区', '148', '150202', '0', '0');
INSERT INTO `area_code` VALUES ('834', '昆都仑区', '148', '150203', '0', '0');
INSERT INTO `area_code` VALUES ('835', '青山区', '148', '150204', '0', '0');
INSERT INTO `area_code` VALUES ('836', '石拐区', '148', '150205', '0', '0');
INSERT INTO `area_code` VALUES ('837', '白云区', '148', '150206', '0', '0');
INSERT INTO `area_code` VALUES ('838', '九原区', '148', '150207', '0', '0');
INSERT INTO `area_code` VALUES ('839', '土默特右旗', '148', '150221', '0', '0');
INSERT INTO `area_code` VALUES ('840', '固阳县', '148', '150222', '0', '0');
INSERT INTO `area_code` VALUES ('841', '达尔罕茂明安旗', '148', '150223', '0', '0');
INSERT INTO `area_code` VALUES ('842', '海勃湾区', '149', '150302', '0', '0');
INSERT INTO `area_code` VALUES ('843', '海南区', '149', '150303', '0', '0');
INSERT INTO `area_code` VALUES ('844', '乌达区', '149', '150304', '0', '0');
INSERT INTO `area_code` VALUES ('845', '红山区', '150', '150402', '0', '0');
INSERT INTO `area_code` VALUES ('846', '元宝山区', '150', '150403', '0', '0');
INSERT INTO `area_code` VALUES ('847', '松山区', '150', '150404', '0', '0');
INSERT INTO `area_code` VALUES ('848', '阿鲁科尔沁旗', '150', '150421', '0', '0');
INSERT INTO `area_code` VALUES ('849', '巴林左旗', '150', '150422', '0', '0');
INSERT INTO `area_code` VALUES ('850', '巴林右旗', '150', '150423', '0', '0');
INSERT INTO `area_code` VALUES ('851', '林西县', '150', '150424', '0', '0');
INSERT INTO `area_code` VALUES ('852', '克什克腾旗', '150', '150425', '0', '0');
INSERT INTO `area_code` VALUES ('853', '翁牛特旗', '150', '150426', '0', '0');
INSERT INTO `area_code` VALUES ('854', '喀喇沁旗', '150', '150428', '0', '0');
INSERT INTO `area_code` VALUES ('855', '宁城县', '150', '150429', '0', '0');
INSERT INTO `area_code` VALUES ('856', '敖汉旗', '150', '150430', '0', '0');
INSERT INTO `area_code` VALUES ('857', '科尔沁区', '151', '150502', '0', '0');
INSERT INTO `area_code` VALUES ('858', '科尔沁左翼中旗', '151', '150521', '0', '0');
INSERT INTO `area_code` VALUES ('859', '科尔沁左翼后旗', '151', '150522', '0', '0');
INSERT INTO `area_code` VALUES ('860', '开鲁县', '151', '150523', '0', '0');
INSERT INTO `area_code` VALUES ('861', '库伦旗', '151', '150524', '0', '0');
INSERT INTO `area_code` VALUES ('862', '奈曼旗', '151', '150525', '0', '0');
INSERT INTO `area_code` VALUES ('863', '扎鲁特旗', '151', '150526', '0', '0');
INSERT INTO `area_code` VALUES ('864', '霍林郭勒市', '151', '150581', '0', '0');
INSERT INTO `area_code` VALUES ('865', '东胜区', '152', '150602', '0', '0');
INSERT INTO `area_code` VALUES ('866', '达拉特旗', '152', '150621', '0', '0');
INSERT INTO `area_code` VALUES ('867', '准格尔旗', '152', '150622', '0', '0');
INSERT INTO `area_code` VALUES ('868', '鄂托克前旗', '152', '150623', '0', '0');
INSERT INTO `area_code` VALUES ('869', '鄂托克旗', '152', '150624', '0', '0');
INSERT INTO `area_code` VALUES ('870', '杭锦旗', '152', '150625', '0', '0');
INSERT INTO `area_code` VALUES ('871', '乌审旗', '152', '150626', '0', '0');
INSERT INTO `area_code` VALUES ('872', '伊金霍洛旗', '152', '150627', '0', '0');
INSERT INTO `area_code` VALUES ('873', '海拉尔区', '153', '150702', '0', '0');
INSERT INTO `area_code` VALUES ('874', '阿荣旗', '153', '150721', '0', '0');
INSERT INTO `area_code` VALUES ('875', '莫力达瓦自治旗', '153', '150722', '0', '0');
INSERT INTO `area_code` VALUES ('876', '鄂伦春自治旗', '153', '150723', '0', '0');
INSERT INTO `area_code` VALUES ('877', '鄂温克族自治旗', '153', '150724', '0', '0');
INSERT INTO `area_code` VALUES ('878', '陈巴尔虎旗', '153', '150725', '0', '0');
INSERT INTO `area_code` VALUES ('879', '新巴尔虎左旗', '153', '150726', '0', '0');
INSERT INTO `area_code` VALUES ('880', '新巴尔虎右旗', '153', '150727', '0', '0');
INSERT INTO `area_code` VALUES ('881', '满洲里市', '153', '150781', '0', '0');
INSERT INTO `area_code` VALUES ('882', '牙克石市', '153', '150782', '0', '0');
INSERT INTO `area_code` VALUES ('883', '扎兰屯市', '153', '150783', '0', '0');
INSERT INTO `area_code` VALUES ('884', '额尔古纳市', '153', '150784', '0', '0');
INSERT INTO `area_code` VALUES ('885', '根河市', '153', '150785', '0', '0');
INSERT INTO `area_code` VALUES ('886', '临河区', '154', '150802', '0', '0');
INSERT INTO `area_code` VALUES ('887', '五原县', '154', '150821', '0', '0');
INSERT INTO `area_code` VALUES ('888', '磴口县', '154', '150822', '0', '0');
INSERT INTO `area_code` VALUES ('889', '乌拉特前旗', '154', '150823', '0', '0');
INSERT INTO `area_code` VALUES ('890', '乌拉特中旗', '154', '150824', '0', '0');
INSERT INTO `area_code` VALUES ('891', '乌拉特后旗', '154', '150825', '0', '0');
INSERT INTO `area_code` VALUES ('892', '杭锦后旗', '154', '150826', '0', '0');
INSERT INTO `area_code` VALUES ('893', '集宁区', '155', '150902', '0', '0');
INSERT INTO `area_code` VALUES ('894', '卓资县', '155', '150921', '0', '0');
INSERT INTO `area_code` VALUES ('895', '化德县', '155', '150922', '0', '0');
INSERT INTO `area_code` VALUES ('896', '商都县', '155', '150923', '0', '0');
INSERT INTO `area_code` VALUES ('897', '兴和县', '155', '150924', '0', '0');
INSERT INTO `area_code` VALUES ('898', '凉城县', '155', '150925', '0', '0');
INSERT INTO `area_code` VALUES ('899', '察哈尔右翼前旗', '155', '150926', '0', '0');
INSERT INTO `area_code` VALUES ('900', '察哈尔右翼中旗', '155', '150927', '0', '0');
INSERT INTO `area_code` VALUES ('901', '察哈尔右翼后旗', '155', '150928', '0', '0');
INSERT INTO `area_code` VALUES ('902', '四子王旗', '155', '150929', '0', '0');
INSERT INTO `area_code` VALUES ('903', '丰镇市', '155', '150981', '0', '0');
INSERT INTO `area_code` VALUES ('904', '乌兰浩特市', '156', '152201', '0', '0');
INSERT INTO `area_code` VALUES ('905', '阿尔山市', '156', '152202', '0', '0');
INSERT INTO `area_code` VALUES ('906', '科尔沁右翼前旗', '156', '152221', '0', '0');
INSERT INTO `area_code` VALUES ('907', '科尔沁右翼中旗', '156', '152222', '0', '0');
INSERT INTO `area_code` VALUES ('908', '扎赉特旗', '156', '152223', '0', '0');
INSERT INTO `area_code` VALUES ('909', '突泉县', '156', '152224', '0', '0');
INSERT INTO `area_code` VALUES ('910', '二连浩特市', '157', '152501', '0', '0');
INSERT INTO `area_code` VALUES ('911', '锡林浩特市', '157', '152502', '0', '0');
INSERT INTO `area_code` VALUES ('912', '阿巴嘎旗', '157', '152522', '0', '0');
INSERT INTO `area_code` VALUES ('913', '苏尼特左旗', '157', '152523', '0', '0');
INSERT INTO `area_code` VALUES ('914', '苏尼特右旗', '157', '152524', '0', '0');
INSERT INTO `area_code` VALUES ('915', '东乌珠穆沁旗', '157', '152525', '0', '0');
INSERT INTO `area_code` VALUES ('916', '西乌珠穆沁旗', '157', '152526', '0', '0');
INSERT INTO `area_code` VALUES ('917', '太仆寺旗', '157', '152527', '0', '0');
INSERT INTO `area_code` VALUES ('918', '镶黄旗', '157', '152528', '0', '0');
INSERT INTO `area_code` VALUES ('919', '正镶白旗', '157', '152529', '0', '0');
INSERT INTO `area_code` VALUES ('920', '正蓝旗', '157', '152530', '0', '0');
INSERT INTO `area_code` VALUES ('921', '多伦县', '157', '152531', '0', '0');
INSERT INTO `area_code` VALUES ('922', '阿拉善左旗', '158', '152921', '0', '0');
INSERT INTO `area_code` VALUES ('923', '阿拉善右旗', '158', '152922', '0', '0');
INSERT INTO `area_code` VALUES ('924', '额济纳旗', '158', '152923', '0', '0');
INSERT INTO `area_code` VALUES ('925', '和平区', '159', '210102', '0', '0');
INSERT INTO `area_code` VALUES ('926', '沈河区', '159', '210103', '0', '0');
INSERT INTO `area_code` VALUES ('927', '大东区', '159', '210104', '0', '0');
INSERT INTO `area_code` VALUES ('928', '皇姑区', '159', '210105', '0', '0');
INSERT INTO `area_code` VALUES ('929', '铁西区', '159', '210106', '0', '0');
INSERT INTO `area_code` VALUES ('930', '苏家屯区', '159', '210111', '0', '0');
INSERT INTO `area_code` VALUES ('931', '浑南区', '159', '210112', '0', '0');
INSERT INTO `area_code` VALUES ('932', '沈北新区', '159', '210113', '0', '0');
INSERT INTO `area_code` VALUES ('933', '于洪区', '159', '210114', '0', '0');
INSERT INTO `area_code` VALUES ('934', '辽中区', '159', '210115', '0', '0');
INSERT INTO `area_code` VALUES ('935', '康平县', '159', '210123', '0', '0');
INSERT INTO `area_code` VALUES ('936', '法库县', '159', '210124', '0', '0');
INSERT INTO `area_code` VALUES ('937', '新民市', '159', '210181', '0', '0');
INSERT INTO `area_code` VALUES ('938', '中山区', '160', '210202', '0', '0');
INSERT INTO `area_code` VALUES ('939', '西岗区', '160', '210203', '0', '0');
INSERT INTO `area_code` VALUES ('940', '沙河口区', '160', '210204', '0', '0');
INSERT INTO `area_code` VALUES ('941', '甘井子区', '160', '210211', '0', '0');
INSERT INTO `area_code` VALUES ('942', '旅顺口区', '160', '210212', '0', '0');
INSERT INTO `area_code` VALUES ('943', '金州区', '160', '210213', '0', '0');
INSERT INTO `area_code` VALUES ('944', '长海县', '160', '210224', '0', '0');
INSERT INTO `area_code` VALUES ('945', '瓦房店市', '160', '210281', '0', '0');
INSERT INTO `area_code` VALUES ('946', '普兰店区', '160', '210282', '0', '0');
INSERT INTO `area_code` VALUES ('947', '庄河市', '160', '210283', '0', '0');
INSERT INTO `area_code` VALUES ('948', '铁东区', '161', '210302', '0', '0');
INSERT INTO `area_code` VALUES ('949', '铁西区', '161', '210303', '0', '0');
INSERT INTO `area_code` VALUES ('950', '立山区', '161', '210304', '0', '0');
INSERT INTO `area_code` VALUES ('951', '千山区', '161', '210311', '0', '0');
INSERT INTO `area_code` VALUES ('952', '台安县', '161', '210321', '0', '0');
INSERT INTO `area_code` VALUES ('953', '岫岩自治县', '161', '210323', '0', '0');
INSERT INTO `area_code` VALUES ('954', '海城市', '161', '210381', '0', '0');
INSERT INTO `area_code` VALUES ('955', '新抚区', '162', '210402', '0', '0');
INSERT INTO `area_code` VALUES ('956', '东洲区', '162', '210403', '0', '0');
INSERT INTO `area_code` VALUES ('957', '望花区', '162', '210404', '0', '0');
INSERT INTO `area_code` VALUES ('958', '顺城区', '162', '210411', '0', '0');
INSERT INTO `area_code` VALUES ('959', '抚顺县', '162', '210421', '0', '0');
INSERT INTO `area_code` VALUES ('960', '新宾自治县', '162', '210422', '0', '0');
INSERT INTO `area_code` VALUES ('961', '清原自治县', '162', '210423', '0', '0');
INSERT INTO `area_code` VALUES ('962', '平山区', '163', '210502', '0', '0');
INSERT INTO `area_code` VALUES ('963', '溪湖区', '163', '210503', '0', '0');
INSERT INTO `area_code` VALUES ('964', '明山区', '163', '210504', '0', '0');
INSERT INTO `area_code` VALUES ('965', '南芬区', '163', '210505', '0', '0');
INSERT INTO `area_code` VALUES ('966', '本溪自治县', '163', '210521', '0', '0');
INSERT INTO `area_code` VALUES ('967', '桓仁自治县', '163', '210522', '0', '0');
INSERT INTO `area_code` VALUES ('968', '元宝区', '164', '210602', '0', '0');
INSERT INTO `area_code` VALUES ('969', '振兴区', '164', '210603', '0', '0');
INSERT INTO `area_code` VALUES ('970', '振安区', '164', '210604', '0', '0');
INSERT INTO `area_code` VALUES ('971', '宽甸自治县', '164', '210624', '0', '0');
INSERT INTO `area_code` VALUES ('972', '东港市', '164', '210681', '0', '0');
INSERT INTO `area_code` VALUES ('973', '凤城市', '164', '210682', '0', '0');
INSERT INTO `area_code` VALUES ('974', '古塔区', '165', '210702', '0', '0');
INSERT INTO `area_code` VALUES ('975', '凌河区', '165', '210703', '0', '0');
INSERT INTO `area_code` VALUES ('976', '太和区', '165', '210711', '0', '0');
INSERT INTO `area_code` VALUES ('977', '黑山县', '165', '210726', '0', '0');
INSERT INTO `area_code` VALUES ('978', '义县', '165', '210727', '0', '0');
INSERT INTO `area_code` VALUES ('979', '凌海市', '165', '210781', '0', '0');
INSERT INTO `area_code` VALUES ('980', '北镇市', '165', '210782', '0', '0');
INSERT INTO `area_code` VALUES ('981', '站前区', '166', '210802', '0', '0');
INSERT INTO `area_code` VALUES ('982', '西市区', '166', '210803', '0', '0');
INSERT INTO `area_code` VALUES ('983', '鲅鱼圈区', '166', '210804', '0', '0');
INSERT INTO `area_code` VALUES ('984', '老边区', '166', '210811', '0', '0');
INSERT INTO `area_code` VALUES ('985', '盖州市', '166', '210881', '0', '0');
INSERT INTO `area_code` VALUES ('986', '大石桥市', '166', '210882', '0', '0');
INSERT INTO `area_code` VALUES ('987', '海州区', '167', '210902', '0', '0');
INSERT INTO `area_code` VALUES ('988', '新邱区', '167', '210903', '0', '0');
INSERT INTO `area_code` VALUES ('989', '太平区', '167', '210904', '0', '0');
INSERT INTO `area_code` VALUES ('990', '清河门区', '167', '210905', '0', '0');
INSERT INTO `area_code` VALUES ('991', '细河区', '167', '210911', '0', '0');
INSERT INTO `area_code` VALUES ('992', '阜新自治县', '167', '210921', '0', '0');
INSERT INTO `area_code` VALUES ('993', '彰武县', '167', '210922', '0', '0');
INSERT INTO `area_code` VALUES ('994', '白塔区', '168', '211002', '0', '0');
INSERT INTO `area_code` VALUES ('995', '文圣区', '168', '211003', '0', '0');
INSERT INTO `area_code` VALUES ('996', '宏伟区', '168', '211004', '0', '0');
INSERT INTO `area_code` VALUES ('997', '弓长岭区', '168', '211005', '0', '0');
INSERT INTO `area_code` VALUES ('998', '辽阳县', '168', '211021', '0', '0');
INSERT INTO `area_code` VALUES ('999', '灯塔市', '168', '211081', '0', '0');
INSERT INTO `area_code` VALUES ('1000', '太子河区', '168', '211110', '0', '0');
INSERT INTO `area_code` VALUES ('1001', '双台子区', '169', '211103', '0', '0');
INSERT INTO `area_code` VALUES ('1002', '兴隆台区', '169', '211103', '0', '0');
INSERT INTO `area_code` VALUES ('1003', '大洼区', '169', '211104', '0', '0');
INSERT INTO `area_code` VALUES ('1004', '盘山县', '169', '211122', '0', '0');
INSERT INTO `area_code` VALUES ('1005', '银州区', '170', '211202', '0', '0');
INSERT INTO `area_code` VALUES ('1006', '清河区', '170', '211204', '0', '0');
INSERT INTO `area_code` VALUES ('1007', '铁岭县', '170', '211221', '0', '0');
INSERT INTO `area_code` VALUES ('1008', '西丰县', '170', '211223', '0', '0');
INSERT INTO `area_code` VALUES ('1009', '昌图县', '170', '211224', '0', '0');
INSERT INTO `area_code` VALUES ('1010', '调兵山市', '170', '211281', '0', '0');
INSERT INTO `area_code` VALUES ('1011', '开原市', '170', '211282', '0', '0');
INSERT INTO `area_code` VALUES ('1012', '双塔区', '171', '211302', '0', '0');
INSERT INTO `area_code` VALUES ('1013', '龙城区', '171', '211303', '0', '0');
INSERT INTO `area_code` VALUES ('1014', '朝阳县', '171', '211321', '0', '0');
INSERT INTO `area_code` VALUES ('1015', '建平县', '171', '211322', '0', '0');
INSERT INTO `area_code` VALUES ('1016', '喀喇沁左翼自治县', '171', '211324', '0', '0');
INSERT INTO `area_code` VALUES ('1017', '北票市', '171', '211381', '0', '0');
INSERT INTO `area_code` VALUES ('1018', '凌源市', '171', '211382', '0', '0');
INSERT INTO `area_code` VALUES ('1019', '连山区', '172', '211402', '0', '0');
INSERT INTO `area_code` VALUES ('1020', '龙港区', '172', '211403', '0', '0');
INSERT INTO `area_code` VALUES ('1021', '南票区', '172', '211404', '0', '0');
INSERT INTO `area_code` VALUES ('1022', '绥中县', '172', '211421', '0', '0');
INSERT INTO `area_code` VALUES ('1023', '建昌县', '172', '211422', '0', '0');
INSERT INTO `area_code` VALUES ('1024', '兴城市', '172', '211481', '0', '0');
INSERT INTO `area_code` VALUES ('1025', '南关区', '173', '220102', '0', '0');
INSERT INTO `area_code` VALUES ('1026', '宽城区', '173', '220103', '0', '0');
INSERT INTO `area_code` VALUES ('1027', '朝阳区', '173', '220104', '0', '0');
INSERT INTO `area_code` VALUES ('1028', '二道区', '173', '220105', '0', '0');
INSERT INTO `area_code` VALUES ('1029', '绿园区', '173', '220106', '0', '0');
INSERT INTO `area_code` VALUES ('1030', '双阳区', '173', '220112', '0', '0');
INSERT INTO `area_code` VALUES ('1031', '农安县', '173', '220122', '0', '0');
INSERT INTO `area_code` VALUES ('1032', '九台区', '173', '220113', '0', '0');
INSERT INTO `area_code` VALUES ('1033', '榆树市', '173', '220182', '0', '0');
INSERT INTO `area_code` VALUES ('1034', '德惠市', '173', '220183', '0', '0');
INSERT INTO `area_code` VALUES ('1035', '昌邑区', '174', '220202', '0', '0');
INSERT INTO `area_code` VALUES ('1036', '龙潭区', '174', '220203', '0', '0');
INSERT INTO `area_code` VALUES ('1037', '船营区', '174', '220204', '0', '0');
INSERT INTO `area_code` VALUES ('1038', '丰满区', '174', '220211', '0', '0');
INSERT INTO `area_code` VALUES ('1039', '永吉县', '174', '220221', '0', '0');
INSERT INTO `area_code` VALUES ('1040', '桦甸市', '174', '220281', '0', '0');
INSERT INTO `area_code` VALUES ('1041', '蛟河市', '174', '220282', '0', '0');
INSERT INTO `area_code` VALUES ('1042', '舒兰市', '174', '220283', '0', '0');
INSERT INTO `area_code` VALUES ('1043', '磐石市', '174', '220284', '0', '0');
INSERT INTO `area_code` VALUES ('1044', '铁西区', '175', '220302', '0', '0');
INSERT INTO `area_code` VALUES ('1045', '铁东区', '175', '220303', '0', '0');
INSERT INTO `area_code` VALUES ('1046', '梨树县', '175', '220322', '0', '0');
INSERT INTO `area_code` VALUES ('1047', '伊通自治县', '175', '220323', '0', '0');
INSERT INTO `area_code` VALUES ('1048', '公主岭市', '175', '220381', '0', '0');
INSERT INTO `area_code` VALUES ('1049', '双辽市', '175', '220382', '0', '0');
INSERT INTO `area_code` VALUES ('1050', '龙山区', '176', '220402', '0', '0');
INSERT INTO `area_code` VALUES ('1051', '西安区', '176', '220403', '0', '0');
INSERT INTO `area_code` VALUES ('1052', '东丰县', '176', '220421', '0', '0');
INSERT INTO `area_code` VALUES ('1053', '东辽县', '176', '220422', '0', '0');
INSERT INTO `area_code` VALUES ('1054', '东昌区', '177', '220502', '0', '0');
INSERT INTO `area_code` VALUES ('1055', '二道江区', '177', '220503', '0', '0');
INSERT INTO `area_code` VALUES ('1056', '通化县', '177', '220521', '0', '0');
INSERT INTO `area_code` VALUES ('1057', '辉南县', '177', '220523', '0', '0');
INSERT INTO `area_code` VALUES ('1058', '柳河县', '177', '220524', '0', '0');
INSERT INTO `area_code` VALUES ('1059', '梅河口市', '177', '220581', '0', '0');
INSERT INTO `area_code` VALUES ('1060', '集安市', '177', '220582', '0', '0');
INSERT INTO `area_code` VALUES ('1061', '浑江区', '178', '220602', '0', '0');
INSERT INTO `area_code` VALUES ('1062', '江源区', '178', '220604', '0', '0');
INSERT INTO `area_code` VALUES ('1063', '抚松县', '178', '220621', '0', '0');
INSERT INTO `area_code` VALUES ('1064', '靖宇县', '178', '220622', '0', '0');
INSERT INTO `area_code` VALUES ('1065', '长白自治县', '178', '220623', '0', '0');
INSERT INTO `area_code` VALUES ('1066', '临江市', '178', '220681', '0', '0');
INSERT INTO `area_code` VALUES ('1067', '宁江区', '179', '220702', '0', '0');
INSERT INTO `area_code` VALUES ('1068', '前郭尔罗斯自治县', '179', '220721', '0', '0');
INSERT INTO `area_code` VALUES ('1069', '长岭县', '179', '220722', '0', '0');
INSERT INTO `area_code` VALUES ('1070', '乾安县', '179', '220723', '0', '0');
INSERT INTO `area_code` VALUES ('1071', '扶余市', '179', '220724', '0', '0');
INSERT INTO `area_code` VALUES ('1072', '洮北区', '180', '220802', '0', '0');
INSERT INTO `area_code` VALUES ('1073', '镇赉县', '180', '220821', '0', '0');
INSERT INTO `area_code` VALUES ('1074', '洮南市', '180', '220881', '0', '0');
INSERT INTO `area_code` VALUES ('1075', '大安市', '180', '220882', '0', '0');
INSERT INTO `area_code` VALUES ('1076', '通榆县', '180', '220822', '0', '0');
INSERT INTO `area_code` VALUES ('1077', '延吉市', '181', '222401', '0', '0');
INSERT INTO `area_code` VALUES ('1078', '图们市', '181', '222402', '0', '0');
INSERT INTO `area_code` VALUES ('1079', '敦化市', '181', '222403', '0', '0');
INSERT INTO `area_code` VALUES ('1080', '珲春市', '181', '222404', '0', '0');
INSERT INTO `area_code` VALUES ('1081', '龙井市', '181', '222405', '0', '0');
INSERT INTO `area_code` VALUES ('1082', '和龙市', '181', '222406', '0', '0');
INSERT INTO `area_code` VALUES ('1083', '汪清县', '181', '222424', '0', '0');
INSERT INTO `area_code` VALUES ('1084', '安图县', '181', '222426', '0', '0');
INSERT INTO `area_code` VALUES ('1085', '道里区', '182', '230102', '0', '0');
INSERT INTO `area_code` VALUES ('1086', '南岗区', '182', '230103', '0', '0');
INSERT INTO `area_code` VALUES ('1087', '道外区', '182', '230104', '0', '0');
INSERT INTO `area_code` VALUES ('1088', '平房区', '182', '230108', '0', '0');
INSERT INTO `area_code` VALUES ('1089', '松北区', '182', '230109', '0', '0');
INSERT INTO `area_code` VALUES ('1090', '香坊区', '182', '230110', '0', '0');
INSERT INTO `area_code` VALUES ('1091', '呼兰区', '182', '230111', '0', '0');
INSERT INTO `area_code` VALUES ('1092', '阿城区', '182', '230112', '0', '0');
INSERT INTO `area_code` VALUES ('1093', '依兰县', '182', '230123', '0', '0');
INSERT INTO `area_code` VALUES ('1094', '方正县', '182', '230124', '0', '0');
INSERT INTO `area_code` VALUES ('1095', '宾县', '182', '230125', '0', '0');
INSERT INTO `area_code` VALUES ('1096', '巴彦县', '182', '230126', '0', '0');
INSERT INTO `area_code` VALUES ('1097', '木兰县', '182', '230127', '0', '0');
INSERT INTO `area_code` VALUES ('1098', '通河县', '182', '230128', '0', '0');
INSERT INTO `area_code` VALUES ('1099', '延寿县', '182', '230129', '0', '0');
INSERT INTO `area_code` VALUES ('1100', '双城区', '182', '230182', '0', '0');
INSERT INTO `area_code` VALUES ('1101', '尚志市', '182', '230183', '0', '0');
INSERT INTO `area_code` VALUES ('1102', '五常市', '182', '230184', '0', '0');
INSERT INTO `area_code` VALUES ('1103', '龙沙区', '183', '230202', '0', '0');
INSERT INTO `area_code` VALUES ('1104', '建华区', '183', '230203', '0', '0');
INSERT INTO `area_code` VALUES ('1105', '铁锋区', '183', '230204', '0', '0');
INSERT INTO `area_code` VALUES ('1106', '昂昂溪区', '183', '230205', '0', '0');
INSERT INTO `area_code` VALUES ('1107', '富拉尔基区', '183', '230206', '0', '0');
INSERT INTO `area_code` VALUES ('1108', '碾子山区', '183', '230207', '0', '0');
INSERT INTO `area_code` VALUES ('1109', '梅里斯区', '183', '230208', '0', '0');
INSERT INTO `area_code` VALUES ('1110', '龙江县', '183', '230221', '0', '0');
INSERT INTO `area_code` VALUES ('1111', '依安县', '183', '230223', '0', '0');
INSERT INTO `area_code` VALUES ('1112', '泰来县', '183', '230224', '0', '0');
INSERT INTO `area_code` VALUES ('1113', '甘南县', '183', '230225', '0', '0');
INSERT INTO `area_code` VALUES ('1114', '富裕县', '183', '230227', '0', '0');
INSERT INTO `area_code` VALUES ('1115', '克山县', '183', '230229', '0', '0');
INSERT INTO `area_code` VALUES ('1116', '克东县', '183', '230230', '0', '0');
INSERT INTO `area_code` VALUES ('1117', '拜泉县', '183', '230231', '0', '0');
INSERT INTO `area_code` VALUES ('1118', '讷河市', '183', '230281', '0', '0');
INSERT INTO `area_code` VALUES ('1119', '鸡冠区', '184', '230302', '0', '0');
INSERT INTO `area_code` VALUES ('1120', '恒山区', '184', '230303', '0', '0');
INSERT INTO `area_code` VALUES ('1121', '滴道区', '184', '230304', '0', '0');
INSERT INTO `area_code` VALUES ('1122', '梨树区', '184', '230305', '0', '0');
INSERT INTO `area_code` VALUES ('1123', '城子河区', '184', '230306', '0', '0');
INSERT INTO `area_code` VALUES ('1124', '麻山区', '184', '230307', '0', '0');
INSERT INTO `area_code` VALUES ('1125', '鸡东县', '184', '230321', '0', '0');
INSERT INTO `area_code` VALUES ('1126', '虎林市', '184', '230381', '0', '0');
INSERT INTO `area_code` VALUES ('1127', '密山市', '184', '230382', '0', '0');
INSERT INTO `area_code` VALUES ('1128', '向阳区', '185', '230402', '0', '0');
INSERT INTO `area_code` VALUES ('1129', '工农区', '185', '230403', '0', '0');
INSERT INTO `area_code` VALUES ('1130', '南山区', '185', '230404', '0', '0');
INSERT INTO `area_code` VALUES ('1131', '兴安区', '185', '230405', '0', '0');
INSERT INTO `area_code` VALUES ('1132', '东山区', '185', '230406', '0', '0');
INSERT INTO `area_code` VALUES ('1133', '兴山区', '185', '230407', '0', '0');
INSERT INTO `area_code` VALUES ('1134', '萝北县', '185', '230421', '0', '0');
INSERT INTO `area_code` VALUES ('1135', '绥滨县', '185', '230422', '0', '0');
INSERT INTO `area_code` VALUES ('1136', '尖山区', '186', '230502', '0', '0');
INSERT INTO `area_code` VALUES ('1137', '岭东区', '186', '230503', '0', '0');
INSERT INTO `area_code` VALUES ('1138', '四方台区', '186', '230505', '0', '0');
INSERT INTO `area_code` VALUES ('1139', '宝山区', '186', '230506', '0', '0');
INSERT INTO `area_code` VALUES ('1140', '集贤县', '186', '230521', '0', '0');
INSERT INTO `area_code` VALUES ('1141', '友谊县', '186', '230522', '0', '0');
INSERT INTO `area_code` VALUES ('1142', '宝清县', '186', '230523', '0', '0');
INSERT INTO `area_code` VALUES ('1143', '饶河县', '186', '230524', '0', '0');
INSERT INTO `area_code` VALUES ('1144', '萨尔图区', '187', '230602', '0', '0');
INSERT INTO `area_code` VALUES ('1145', '龙凤区', '187', '230603', '0', '0');
INSERT INTO `area_code` VALUES ('1146', '让胡路区', '187', '230604', '0', '0');
INSERT INTO `area_code` VALUES ('1147', '红岗区', '187', '230605', '0', '0');
INSERT INTO `area_code` VALUES ('1148', '大同区', '187', '230606', '0', '0');
INSERT INTO `area_code` VALUES ('1149', '肇州县', '187', '230621', '0', '0');
INSERT INTO `area_code` VALUES ('1150', '肇源县', '187', '230622', '0', '0');
INSERT INTO `area_code` VALUES ('1151', '林甸县', '187', '230623', '0', '0');
INSERT INTO `area_code` VALUES ('1152', '杜尔伯特自治县', '187', '230624', '0', '0');
INSERT INTO `area_code` VALUES ('1154', '南岔县', '188', '230726', '0', '0');
INSERT INTO `area_code` VALUES ('1155', '友好区', '188', '230719', '0', '0');
INSERT INTO `area_code` VALUES ('1156', '金林区', '188', '230751', '0', '0');
INSERT INTO `area_code` VALUES ('1157', '乌翠区', '188', '230718', '0', '0');
INSERT INTO `area_code` VALUES ('1158', '丰林县', '188', '230724', '0', '0');
INSERT INTO `area_code` VALUES ('1162', '伊美区', '188', '230717', '0', '0');
INSERT INTO `area_code` VALUES ('1163', '汤旺县', '188', '230723', '0', '0');
INSERT INTO `area_code` VALUES ('1164', '大箐山县', '188', '230725', '0', '0');
INSERT INTO `area_code` VALUES ('1168', '嘉荫县', '188', '230722', '0', '0');
INSERT INTO `area_code` VALUES ('1169', '铁力市', '188', '230781', '0', '0');
INSERT INTO `area_code` VALUES ('1170', '向阳区', '189', '230803', '0', '0');
INSERT INTO `area_code` VALUES ('1171', '前进区', '189', '230804', '0', '0');
INSERT INTO `area_code` VALUES ('1172', '东风区', '189', '230805', '0', '0');
INSERT INTO `area_code` VALUES ('1173', '郊区', '189', '230811', '0', '0');
INSERT INTO `area_code` VALUES ('1174', '桦南县', '189', '230822', '0', '0');
INSERT INTO `area_code` VALUES ('1175', '桦川县', '189', '230826', '0', '0');
INSERT INTO `area_code` VALUES ('1176', '汤原县', '189', '230828', '0', '0');
INSERT INTO `area_code` VALUES ('1177', '抚远市', '189', '230883', '0', '0');
INSERT INTO `area_code` VALUES ('1178', '同江市', '189', '230881', '0', '0');
INSERT INTO `area_code` VALUES ('1179', '富锦市', '189', '230882', '0', '0');
INSERT INTO `area_code` VALUES ('1180', '新兴区', '190', '230902', '0', '0');
INSERT INTO `area_code` VALUES ('1181', '桃山区', '190', '230903', '0', '0');
INSERT INTO `area_code` VALUES ('1182', '茄子河区', '190', '230904', '0', '0');
INSERT INTO `area_code` VALUES ('1183', '勃利县', '190', '230921', '0', '0');
INSERT INTO `area_code` VALUES ('1184', '东安区', '191', '231002', '0', '0');
INSERT INTO `area_code` VALUES ('1185', '阳明区', '191', '231003', '0', '0');
INSERT INTO `area_code` VALUES ('1186', '爱民区', '191', '231004', '0', '0');
INSERT INTO `area_code` VALUES ('1187', '西安区', '191', '231005', '0', '0');
INSERT INTO `area_code` VALUES ('1188', '东宁市', '191', '231086', '0', '0');
INSERT INTO `area_code` VALUES ('1189', '林口县', '191', '231025', '0', '0');
INSERT INTO `area_code` VALUES ('1190', '绥芬河市', '191', '231081', '0', '0');
INSERT INTO `area_code` VALUES ('1191', '海林市', '191', '231083', '0', '0');
INSERT INTO `area_code` VALUES ('1192', '宁安市', '191', '231084', '0', '0');
INSERT INTO `area_code` VALUES ('1193', '穆棱市', '191', '231085', '0', '0');
INSERT INTO `area_code` VALUES ('1194', '爱辉区', '192', '231102', '0', '0');
INSERT INTO `area_code` VALUES ('1195', '嫩江市', '192', '231183', '0', '0');
INSERT INTO `area_code` VALUES ('1196', '逊克县', '192', '231123', '0', '0');
INSERT INTO `area_code` VALUES ('1197', '孙吴县', '192', '231124', '0', '0');
INSERT INTO `area_code` VALUES ('1198', '北安市', '192', '231181', '0', '0');
INSERT INTO `area_code` VALUES ('1199', '五大连池市', '192', '231182', '0', '0');
INSERT INTO `area_code` VALUES ('1200', '北林区', '193', '231202', '0', '0');
INSERT INTO `area_code` VALUES ('1201', '望奎县', '193', '231221', '0', '0');
INSERT INTO `area_code` VALUES ('1202', '兰西县', '193', '231222', '0', '0');
INSERT INTO `area_code` VALUES ('1203', '青冈县', '193', '231223', '0', '0');
INSERT INTO `area_code` VALUES ('1204', '庆安县', '193', '231224', '0', '0');
INSERT INTO `area_code` VALUES ('1205', '明水县', '193', '231225', '0', '0');
INSERT INTO `area_code` VALUES ('1206', '绥棱县', '193', '231226', '0', '0');
INSERT INTO `area_code` VALUES ('1207', '安达市', '193', '231281', '0', '0');
INSERT INTO `area_code` VALUES ('1208', '肇东市', '193', '231282', '0', '0');
INSERT INTO `area_code` VALUES ('1209', '海伦市', '193', '231283', '0', '0');
INSERT INTO `area_code` VALUES ('1210', '加格达奇区', '194', '232701', '0', '0');
INSERT INTO `area_code` VALUES ('1211', '松岭区', '194', '232702', '0', '0');
INSERT INTO `area_code` VALUES ('1212', '新林区', '194', '232703', '0', '0');
INSERT INTO `area_code` VALUES ('1213', '呼中区', '194', '232704', '0', '0');
INSERT INTO `area_code` VALUES ('1214', '呼玛县', '194', '232721', '0', '0');
INSERT INTO `area_code` VALUES ('1215', '塔河县', '194', '232722', '0', '0');
INSERT INTO `area_code` VALUES ('1216', '漠河市', '194', '232701', '0', '0');
INSERT INTO `area_code` VALUES ('1217', '玄武区', '195', '320102', '0', '0');
INSERT INTO `area_code` VALUES ('1218', '秦淮区', '195', '320104', '0', '0');
INSERT INTO `area_code` VALUES ('1219', '建邺区', '195', '320105', '0', '0');
INSERT INTO `area_code` VALUES ('1220', '鼓楼区', '195', '320106', '0', '0');
INSERT INTO `area_code` VALUES ('1221', '浦口区', '195', '320111', '0', '0');
INSERT INTO `area_code` VALUES ('1222', '栖霞区', '195', '320113', '0', '0');
INSERT INTO `area_code` VALUES ('1223', '雨花台区', '195', '320114', '0', '0');
INSERT INTO `area_code` VALUES ('1224', '江宁区', '195', '320115', '0', '0');
INSERT INTO `area_code` VALUES ('1225', '六合区', '195', '320116', '0', '0');
INSERT INTO `area_code` VALUES ('1226', '溧水区', '195', '320124', '0', '0');
INSERT INTO `area_code` VALUES ('1227', '高淳区', '195', '320125', '0', '0');
INSERT INTO `area_code` VALUES ('1228', '梁溪区', '196', '320202', '0', '0');
INSERT INTO `area_code` VALUES ('1229', '新吴区', '196', null, '0', '0');
INSERT INTO `area_code` VALUES ('1231', '锡山区', '196', '320205', '0', '0');
INSERT INTO `area_code` VALUES ('1232', '惠山区', '196', '320206', '0', '0');
INSERT INTO `area_code` VALUES ('1233', '滨湖区', '196', '320211', '0', '0');
INSERT INTO `area_code` VALUES ('1234', '江阴市', '196', '320281', '0', '0');
INSERT INTO `area_code` VALUES ('1235', '宜兴市', '196', '320282', '0', '0');
INSERT INTO `area_code` VALUES ('1236', '鼓楼区', '197', '320302', '0', '0');
INSERT INTO `area_code` VALUES ('1237', '云龙区', '197', '320303', '0', '0');
INSERT INTO `area_code` VALUES ('1238', '贾汪区', '197', '320305', '0', '0');
INSERT INTO `area_code` VALUES ('1239', '泉山区', '197', '320311', '0', '0');
INSERT INTO `area_code` VALUES ('1240', '铜山区', '197', '320312', '0', '0');
INSERT INTO `area_code` VALUES ('1241', '丰县', '197', '320321', '0', '0');
INSERT INTO `area_code` VALUES ('1242', '沛县', '197', '320322', '0', '0');
INSERT INTO `area_code` VALUES ('1243', '睢宁县', '197', '320324', '0', '0');
INSERT INTO `area_code` VALUES ('1244', '新沂市', '197', '320381', '0', '0');
INSERT INTO `area_code` VALUES ('1245', '邳州市', '197', '320382', '0', '0');
INSERT INTO `area_code` VALUES ('1246', '天宁区', '198', '320402', '0', '0');
INSERT INTO `area_code` VALUES ('1247', '钟楼区', '198', '320404', '0', '0');
INSERT INTO `area_code` VALUES ('1249', '新北区', '198', '320411', '0', '0');
INSERT INTO `area_code` VALUES ('1250', '武进区', '198', '320412', '0', '0');
INSERT INTO `area_code` VALUES ('1251', '溧阳市', '198', '320481', '0', '0');
INSERT INTO `area_code` VALUES ('1252', '金坛区', '198', '320482', '0', '0');
INSERT INTO `area_code` VALUES ('1253', '虎丘区', '199', '320505', '0', '0');
INSERT INTO `area_code` VALUES ('1254', '吴中区', '199', '320506', '0', '0');
INSERT INTO `area_code` VALUES ('1255', '相城区', '199', '320507', '0', '0');
INSERT INTO `area_code` VALUES ('1256', '姑苏区', '199', '320508', '0', '0');
INSERT INTO `area_code` VALUES ('1257', '吴江市', '199', '320509', '0', '0');
INSERT INTO `area_code` VALUES ('1258', '常熟市', '199', '320581', '0', '0');
INSERT INTO `area_code` VALUES ('1259', '张家港市', '199', '320582', '0', '0');
INSERT INTO `area_code` VALUES ('1260', '昆山市', '199', '320583', '0', '0');
INSERT INTO `area_code` VALUES ('1261', '太仓市', '199', '320585', '0', '0');
INSERT INTO `area_code` VALUES ('1262', '崇川区', '200', '320602', '0', '0');
INSERT INTO `area_code` VALUES ('1263', '港闸区', '200', '320611', '0', '0');
INSERT INTO `area_code` VALUES ('1264', '通州区', '200', '320612', '0', '0');
INSERT INTO `area_code` VALUES ('1265', '海安市', '200', '320685', '0', '0');
INSERT INTO `area_code` VALUES ('1266', '如东县', '200', '320623', '0', '0');
INSERT INTO `area_code` VALUES ('1267', '启东市', '200', '320681', '0', '0');
INSERT INTO `area_code` VALUES ('1268', '如皋市', '200', '320682', '0', '0');
INSERT INTO `area_code` VALUES ('1269', '海门市', '200', '320684', '0', '0');
INSERT INTO `area_code` VALUES ('1270', '连云区', '201', '320703', '0', '0');
INSERT INTO `area_code` VALUES ('1272', '海州区', '201', '320706', '0', '0');
INSERT INTO `area_code` VALUES ('1273', '赣榆区', '201', '320721', '0', '0');
INSERT INTO `area_code` VALUES ('1274', '东海县', '201', '320722', '0', '0');
INSERT INTO `area_code` VALUES ('1275', '灌云县', '201', '320723', '0', '0');
INSERT INTO `area_code` VALUES ('1276', '灌南县', '201', '320724', '0', '0');
INSERT INTO `area_code` VALUES ('1278', '淮安区', '202', '320803', '0', '0');
INSERT INTO `area_code` VALUES ('1279', '淮阴区', '202', '320804', '0', '0');
INSERT INTO `area_code` VALUES ('1280', '清江浦区', '202', '320812', '0', '0');
INSERT INTO `area_code` VALUES ('1281', '涟水县', '202', '320826', '0', '0');
INSERT INTO `area_code` VALUES ('1282', '洪泽区', '202', '320813', '0', '0');
INSERT INTO `area_code` VALUES ('1283', '盱眙县', '202', '320830', '0', '0');
INSERT INTO `area_code` VALUES ('1284', '金湖县', '202', '320831', '0', '0');
INSERT INTO `area_code` VALUES ('1285', '亭湖区', '203', '320902', '0', '0');
INSERT INTO `area_code` VALUES ('1286', '盐都区', '203', '320903', '0', '0');
INSERT INTO `area_code` VALUES ('1287', '响水县', '203', '320921', '0', '0');
INSERT INTO `area_code` VALUES ('1288', '滨海县', '203', '320922', '0', '0');
INSERT INTO `area_code` VALUES ('1289', '阜宁县', '203', '320923', '0', '0');
INSERT INTO `area_code` VALUES ('1290', '射阳县', '203', '320924', '0', '0');
INSERT INTO `area_code` VALUES ('1291', '建湖县', '203', '320925', '0', '0');
INSERT INTO `area_code` VALUES ('1292', '东台市', '203', '320981', '0', '0');
INSERT INTO `area_code` VALUES ('1293', '大丰区', '203', '320982', '0', '0');
INSERT INTO `area_code` VALUES ('1294', '广陵区', '204', '321002', '0', '0');
INSERT INTO `area_code` VALUES ('1295', '邗江区', '204', '321003', '0', '0');
INSERT INTO `area_code` VALUES ('1296', '江都区', '204', '321012', '0', '0');
INSERT INTO `area_code` VALUES ('1297', '宝应县', '204', '321023', '0', '0');
INSERT INTO `area_code` VALUES ('1298', '仪征市', '204', '321081', '0', '0');
INSERT INTO `area_code` VALUES ('1299', '高邮市', '204', '321084', '0', '0');
INSERT INTO `area_code` VALUES ('1300', '京口区', '205', '321102', '0', '0');
INSERT INTO `area_code` VALUES ('1301', '润州区', '205', '321111', '0', '0');
INSERT INTO `area_code` VALUES ('1302', '丹徒区', '205', '321112', '0', '0');
INSERT INTO `area_code` VALUES ('1303', '丹阳市', '205', '321181', '0', '0');
INSERT INTO `area_code` VALUES ('1304', '扬中市', '205', '321182', '0', '0');
INSERT INTO `area_code` VALUES ('1305', '句容市', '205', '321183', '0', '0');
INSERT INTO `area_code` VALUES ('1306', '海陵区', '206', '321202', '0', '0');
INSERT INTO `area_code` VALUES ('1307', '高港区', '206', '321203', '0', '0');
INSERT INTO `area_code` VALUES ('1308', '兴化市', '206', '321281', '0', '0');
INSERT INTO `area_code` VALUES ('1309', '靖江市', '206', '321282', '0', '0');
INSERT INTO `area_code` VALUES ('1310', '泰兴市', '206', '321283', '0', '0');
INSERT INTO `area_code` VALUES ('1311', '姜堰区', '206', '321284', '0', '0');
INSERT INTO `area_code` VALUES ('1312', '宿城区', '207', '321302', '0', '0');
INSERT INTO `area_code` VALUES ('1313', '宿豫区', '207', '321311', '0', '0');
INSERT INTO `area_code` VALUES ('1314', '沭阳县', '207', '321322', '0', '0');
INSERT INTO `area_code` VALUES ('1315', '泗阳县', '207', '321323', '0', '0');
INSERT INTO `area_code` VALUES ('1316', '泗洪县', '207', '321324', '0', '0');
INSERT INTO `area_code` VALUES ('1317', '上城区', '208', '330102', '0', '0');
INSERT INTO `area_code` VALUES ('1318', '下城区', '208', '330103', '0', '0');
INSERT INTO `area_code` VALUES ('1319', '江干区', '208', '330104', '0', '0');
INSERT INTO `area_code` VALUES ('1320', '拱墅区', '208', '330105', '0', '0');
INSERT INTO `area_code` VALUES ('1321', '西湖区', '208', '330106', '0', '0');
INSERT INTO `area_code` VALUES ('1322', '滨江区', '208', '330108', '0', '0');
INSERT INTO `area_code` VALUES ('1323', '萧山区', '208', '330109', '0', '0');
INSERT INTO `area_code` VALUES ('1324', '余杭区', '208', '330110', '0', '0');
INSERT INTO `area_code` VALUES ('1325', '桐庐县', '208', '330122', '0', '0');
INSERT INTO `area_code` VALUES ('1326', '淳安县', '208', '330127', '0', '0');
INSERT INTO `area_code` VALUES ('1327', '建德市', '208', '330182', '0', '0');
INSERT INTO `area_code` VALUES ('1328', '富阳区', '208', '330183', '0', '0');
INSERT INTO `area_code` VALUES ('1329', '临安区', '208', '330112', '0', '0');
INSERT INTO `area_code` VALUES ('1330', '海曙区', '209', '330203', '0', '0');
INSERT INTO `area_code` VALUES ('1332', '江北区', '209', '330205', '0', '0');
INSERT INTO `area_code` VALUES ('1333', '北仑区', '209', '330206', '0', '0');
INSERT INTO `area_code` VALUES ('1334', '镇海区', '209', '330211', '0', '0');
INSERT INTO `area_code` VALUES ('1335', '鄞州区', '209', '330212', '0', '0');
INSERT INTO `area_code` VALUES ('1336', '象山县', '209', '330225', '0', '0');
INSERT INTO `area_code` VALUES ('1337', '宁海县', '209', '330226', '0', '0');
INSERT INTO `area_code` VALUES ('1338', '余姚市', '209', '330281', '0', '0');
INSERT INTO `area_code` VALUES ('1339', '慈溪市', '209', '330282', '0', '0');
INSERT INTO `area_code` VALUES ('1340', '奉化区', '209', '330213', '0', '0');
INSERT INTO `area_code` VALUES ('1341', '鹿城区', '210', '330302', '0', '0');
INSERT INTO `area_code` VALUES ('1342', '龙湾区', '210', '330303', '0', '0');
INSERT INTO `area_code` VALUES ('1343', '瓯海区', '210', '330304', '0', '0');
INSERT INTO `area_code` VALUES ('1344', '洞头区', '210', '330322', '0', '0');
INSERT INTO `area_code` VALUES ('1345', '永嘉县', '210', '330324', '0', '0');
INSERT INTO `area_code` VALUES ('1346', '平阳县', '210', '330326', '0', '0');
INSERT INTO `area_code` VALUES ('1347', '苍南县', '210', '330327', '0', '0');
INSERT INTO `area_code` VALUES ('1348', '文成县', '210', '330328', '0', '0');
INSERT INTO `area_code` VALUES ('1349', '泰顺县', '210', '330329', '0', '0');
INSERT INTO `area_code` VALUES ('1350', '瑞安市', '210', '330381', '0', '0');
INSERT INTO `area_code` VALUES ('1351', '乐清市', '210', '330382', '0', '0');
INSERT INTO `area_code` VALUES ('1352', '南湖区', '211', '330402', '0', '0');
INSERT INTO `area_code` VALUES ('1353', '秀洲区', '211', '330411', '0', '0');
INSERT INTO `area_code` VALUES ('1354', '嘉善县', '211', '330421', '0', '0');
INSERT INTO `area_code` VALUES ('1355', '海盐县', '211', '330424', '0', '0');
INSERT INTO `area_code` VALUES ('1356', '海宁市', '211', '330481', '0', '0');
INSERT INTO `area_code` VALUES ('1357', '平湖市', '211', '330482', '0', '0');
INSERT INTO `area_code` VALUES ('1358', '桐乡市', '211', '330483', '0', '0');
INSERT INTO `area_code` VALUES ('1359', '吴兴区', '212', '330502', '0', '0');
INSERT INTO `area_code` VALUES ('1360', '南浔区', '212', '330503', '0', '0');
INSERT INTO `area_code` VALUES ('1361', '德清县', '212', '330521', '0', '0');
INSERT INTO `area_code` VALUES ('1362', '长兴县', '212', '330522', '0', '0');
INSERT INTO `area_code` VALUES ('1363', '安吉县', '212', '330523', '0', '0');
INSERT INTO `area_code` VALUES ('1364', '越城区', '213', '330602', '0', '0');
INSERT INTO `area_code` VALUES ('1365', '柯桥区', '213', '330603', '0', '0');
INSERT INTO `area_code` VALUES ('1366', '新昌县', '213', '330624', '0', '0');
INSERT INTO `area_code` VALUES ('1367', '诸暨市', '213', '330681', '0', '0');
INSERT INTO `area_code` VALUES ('1368', '上虞区', '213', '330604', '0', '0');
INSERT INTO `area_code` VALUES ('1369', '嵊州市', '213', '330683', '0', '0');
INSERT INTO `area_code` VALUES ('1370', '婺城区', '214', '330702', '0', '0');
INSERT INTO `area_code` VALUES ('1371', '金东区', '214', '330703', '0', '0');
INSERT INTO `area_code` VALUES ('1372', '武义县', '214', '330723', '0', '0');
INSERT INTO `area_code` VALUES ('1373', '浦江县', '214', '330726', '0', '0');
INSERT INTO `area_code` VALUES ('1374', '磐安县', '214', '330727', '0', '0');
INSERT INTO `area_code` VALUES ('1375', '兰溪市', '214', '330781', '0', '0');
INSERT INTO `area_code` VALUES ('1376', '义乌市', '214', '330782', '0', '0');
INSERT INTO `area_code` VALUES ('1377', '东阳市', '214', '330783', '0', '0');
INSERT INTO `area_code` VALUES ('1378', '永康市', '214', '330784', '0', '0');
INSERT INTO `area_code` VALUES ('1379', '柯城区', '215', '330802', '0', '0');
INSERT INTO `area_code` VALUES ('1380', '衢江区', '215', '330803', '0', '0');
INSERT INTO `area_code` VALUES ('1381', '常山县', '215', '330822', '0', '0');
INSERT INTO `area_code` VALUES ('1382', '开化县', '215', '330824', '0', '0');
INSERT INTO `area_code` VALUES ('1383', '龙游县', '215', '330825', '0', '0');
INSERT INTO `area_code` VALUES ('1384', '江山市', '215', '330881', '0', '0');
INSERT INTO `area_code` VALUES ('1385', '定海区', '216', '330902', '0', '0');
INSERT INTO `area_code` VALUES ('1386', '普陀区', '216', '330903', '0', '0');
INSERT INTO `area_code` VALUES ('1387', '岱山县', '216', '330921', '0', '0');
INSERT INTO `area_code` VALUES ('1388', '嵊泗县', '216', '330922', '0', '0');
INSERT INTO `area_code` VALUES ('1389', '椒江区', '217', '331002', '0', '0');
INSERT INTO `area_code` VALUES ('1390', '黄岩区', '217', '331003', '0', '0');
INSERT INTO `area_code` VALUES ('1391', '路桥区', '217', '331004', '0', '0');
INSERT INTO `area_code` VALUES ('1392', '玉环市', '217', '331083', '0', '0');
INSERT INTO `area_code` VALUES ('1393', '三门县', '217', '331022', '0', '0');
INSERT INTO `area_code` VALUES ('1394', '天台县', '217', '331023', '0', '0');
INSERT INTO `area_code` VALUES ('1395', '仙居县', '217', '331024', '0', '0');
INSERT INTO `area_code` VALUES ('1396', '温岭市', '217', '331081', '0', '0');
INSERT INTO `area_code` VALUES ('1397', '临海市', '217', '331082', '0', '0');
INSERT INTO `area_code` VALUES ('1398', '莲都区', '218', '331102', '0', '0');
INSERT INTO `area_code` VALUES ('1399', '青田县', '218', '331121', '0', '0');
INSERT INTO `area_code` VALUES ('1400', '缙云县', '218', '331122', '0', '0');
INSERT INTO `area_code` VALUES ('1401', '遂昌县', '218', '331123', '0', '0');
INSERT INTO `area_code` VALUES ('1402', '松阳县', '218', '331124', '0', '0');
INSERT INTO `area_code` VALUES ('1403', '云和县', '218', '331125', '0', '0');
INSERT INTO `area_code` VALUES ('1404', '庆元县', '218', '331126', '0', '0');
INSERT INTO `area_code` VALUES ('1405', '景宁自治县', '218', '331127', '0', '0');
INSERT INTO `area_code` VALUES ('1406', '龙泉市', '218', '331181', '0', '0');
INSERT INTO `area_code` VALUES ('1407', '瑶海区', '219', '340102', '0', '0');
INSERT INTO `area_code` VALUES ('1408', '庐阳区', '219', '340103', '0', '0');
INSERT INTO `area_code` VALUES ('1409', '蜀山区', '219', '340104', '0', '0');
INSERT INTO `area_code` VALUES ('1410', '包河区', '219', '340111', '0', '0');
INSERT INTO `area_code` VALUES ('1411', '长丰县', '219', '340121', '0', '0');
INSERT INTO `area_code` VALUES ('1412', '肥东县', '219', '340122', '0', '0');
INSERT INTO `area_code` VALUES ('1413', '肥西县', '219', '340123', '0', '0');
INSERT INTO `area_code` VALUES ('1414', '庐江县', '219', '340124', '0', '0');
INSERT INTO `area_code` VALUES ('1415', '巢湖市', '219', '340181', '0', '0');
INSERT INTO `area_code` VALUES ('1416', '镜湖区', '220', '340202', '0', '0');
INSERT INTO `area_code` VALUES ('1417', '弋江区', '220', '340203', '0', '0');
INSERT INTO `area_code` VALUES ('1418', '鸠江区', '220', '340207', '0', '0');
INSERT INTO `area_code` VALUES ('1419', '三山区', '220', '340208', '0', '0');
INSERT INTO `area_code` VALUES ('1420', '芜湖县', '220', '340221', '0', '0');
INSERT INTO `area_code` VALUES ('1421', '繁昌县', '220', '340222', '0', '0');
INSERT INTO `area_code` VALUES ('1422', '南陵县', '220', '340223', '0', '0');
INSERT INTO `area_code` VALUES ('1423', '无为市', '220', '340281', '0', '0');
INSERT INTO `area_code` VALUES ('1424', '龙子湖区', '221', '340302', '0', '0');
INSERT INTO `area_code` VALUES ('1425', '蚌山区', '221', '340303', '0', '0');
INSERT INTO `area_code` VALUES ('1426', '禹会区', '221', '340304', '0', '0');
INSERT INTO `area_code` VALUES ('1427', '淮上区', '221', '340311', '0', '0');
INSERT INTO `area_code` VALUES ('1428', '怀远县', '221', '340321', '0', '0');
INSERT INTO `area_code` VALUES ('1429', '五河县', '221', '340322', '0', '0');
INSERT INTO `area_code` VALUES ('1430', '固镇县', '221', '340323', '0', '0');
INSERT INTO `area_code` VALUES ('1431', '大通区', '222', '340402', '0', '0');
INSERT INTO `area_code` VALUES ('1432', '田家庵区', '222', '340403', '0', '0');
INSERT INTO `area_code` VALUES ('1433', '谢家集区', '222', '340404', '0', '0');
INSERT INTO `area_code` VALUES ('1434', '八公山区', '222', '340405', '0', '0');
INSERT INTO `area_code` VALUES ('1435', '潘集区', '222', '340406', '0', '0');
INSERT INTO `area_code` VALUES ('1436', '凤台县', '222', '340421', '0', '0');
INSERT INTO `area_code` VALUES ('1437', '花山区', '223', '340503', '0', '0');
INSERT INTO `area_code` VALUES ('1438', '雨山区', '223', '340504', '0', '0');
INSERT INTO `area_code` VALUES ('1439', '博望区', '223', '340506', '0', '0');
INSERT INTO `area_code` VALUES ('1440', '当涂县', '223', '340521', '0', '0');
INSERT INTO `area_code` VALUES ('1441', '含山县', '223', '340522', '0', '0');
INSERT INTO `area_code` VALUES ('1442', '和县', '223', '340523', '0', '0');
INSERT INTO `area_code` VALUES ('1443', '杜集区', '224', '340602', '0', '0');
INSERT INTO `area_code` VALUES ('1444', '相山区', '224', '340603', '0', '0');
INSERT INTO `area_code` VALUES ('1445', '烈山区', '224', '340604', '0', '0');
INSERT INTO `area_code` VALUES ('1446', '濉溪县', '224', '340621', '0', '0');
INSERT INTO `area_code` VALUES ('1447', '铜官山区', '225', '340702', '0', '0');
INSERT INTO `area_code` VALUES ('1449', '郊区', '225', '340711', '0', '0');
INSERT INTO `area_code` VALUES ('1450', '义安区', '225', '340721', '0', '0');
INSERT INTO `area_code` VALUES ('1451', '迎江区', '226', '340802', '0', '0');
INSERT INTO `area_code` VALUES ('1452', '大观区', '226', '340803', '0', '0');
INSERT INTO `area_code` VALUES ('1453', '宜秀区', '226', '340811', '0', '0');
INSERT INTO `area_code` VALUES ('1454', '怀宁县', '226', '340822', '0', '0');
INSERT INTO `area_code` VALUES ('1455', '枞阳县', '225', '340823', '0', '0');
INSERT INTO `area_code` VALUES ('1456', '潜山市', '226', '340824', '0', '0');
INSERT INTO `area_code` VALUES ('1457', '太湖县', '226', '340825', '0', '0');
INSERT INTO `area_code` VALUES ('1458', '宿松县', '226', '340826', '0', '0');
INSERT INTO `area_code` VALUES ('1459', '望江县', '226', '340827', '0', '0');
INSERT INTO `area_code` VALUES ('1460', '岳西县', '226', '340828', '0', '0');
INSERT INTO `area_code` VALUES ('1461', '桐城市', '226', '340881', '0', '0');
INSERT INTO `area_code` VALUES ('1462', '屯溪区', '227', '341002', '0', '0');
INSERT INTO `area_code` VALUES ('1463', '黄山区', '227', '341003', '0', '0');
INSERT INTO `area_code` VALUES ('1464', '徽州区', '227', '341004', '0', '0');
INSERT INTO `area_code` VALUES ('1465', '歙县', '227', '341021', '0', '0');
INSERT INTO `area_code` VALUES ('1466', '休宁县', '227', '341022', '0', '0');
INSERT INTO `area_code` VALUES ('1467', '黟县', '227', '341023', '0', '0');
INSERT INTO `area_code` VALUES ('1468', '祁门县', '227', '341024', '0', '0');
INSERT INTO `area_code` VALUES ('1469', '琅玡区', '228', '341102', '0', '0');
INSERT INTO `area_code` VALUES ('1470', '南谯区', '228', '341103', '0', '0');
INSERT INTO `area_code` VALUES ('1471', '来安县', '228', '341122', '0', '0');
INSERT INTO `area_code` VALUES ('1472', '全椒县', '228', '341124', '0', '0');
INSERT INTO `area_code` VALUES ('1473', '定远县', '228', '341125', '0', '0');
INSERT INTO `area_code` VALUES ('1474', '凤阳县', '228', '341126', '0', '0');
INSERT INTO `area_code` VALUES ('1475', '天长市', '228', '341181', '0', '0');
INSERT INTO `area_code` VALUES ('1476', '明光市', '228', '341182', '0', '0');
INSERT INTO `area_code` VALUES ('1477', '颍州区', '229', '341202', '0', '0');
INSERT INTO `area_code` VALUES ('1478', '颍东区', '229', '341203', '0', '0');
INSERT INTO `area_code` VALUES ('1479', '颍泉区', '229', '341204', '0', '0');
INSERT INTO `area_code` VALUES ('1480', '临泉县', '229', '341221', '0', '0');
INSERT INTO `area_code` VALUES ('1481', '太和县', '229', '341222', '0', '0');
INSERT INTO `area_code` VALUES ('1482', '阜南县', '229', '341225', '0', '0');
INSERT INTO `area_code` VALUES ('1483', '颖上县', '229', '341226', '0', '0');
INSERT INTO `area_code` VALUES ('1484', '界首市', '229', '341282', '0', '0');
INSERT INTO `area_code` VALUES ('1485', '埇桥区', '230', '341302', '0', '0');
INSERT INTO `area_code` VALUES ('1486', '砀山县', '230', '341321', '0', '0');
INSERT INTO `area_code` VALUES ('1487', '萧县', '230', '341322', '0', '0');
INSERT INTO `area_code` VALUES ('1488', '灵璧县', '230', '341323', '0', '0');
INSERT INTO `area_code` VALUES ('1489', '泗县', '230', '341324', '0', '0');
INSERT INTO `area_code` VALUES ('1490', '金安区', '231', '341502', '0', '0');
INSERT INTO `area_code` VALUES ('1491', '裕安区', '231', '341503', '0', '0');
INSERT INTO `area_code` VALUES ('1492', '寿县', '222', '341521', '0', '0');
INSERT INTO `area_code` VALUES ('1493', '霍邱县', '231', '341522', '0', '0');
INSERT INTO `area_code` VALUES ('1494', '舒城县', '231', '341523', '0', '0');
INSERT INTO `area_code` VALUES ('1495', '金寨县', '231', '341524', '0', '0');
INSERT INTO `area_code` VALUES ('1496', '霍山县', '231', '341525', '0', '0');
INSERT INTO `area_code` VALUES ('1497', '谯城区', '232', '341602', '0', '0');
INSERT INTO `area_code` VALUES ('1498', '涡阳县', '232', '341621', '0', '0');
INSERT INTO `area_code` VALUES ('1499', '蒙城县', '232', '341622', '0', '0');
INSERT INTO `area_code` VALUES ('1500', '利辛县', '232', '341623', '0', '0');
INSERT INTO `area_code` VALUES ('1501', '贵池区', '233', '341702', '0', '0');
INSERT INTO `area_code` VALUES ('1502', '东至县', '233', '341721', '0', '0');
INSERT INTO `area_code` VALUES ('1503', '石台县', '233', '341722', '0', '0');
INSERT INTO `area_code` VALUES ('1504', '青阳县', '233', '341723', '0', '0');
INSERT INTO `area_code` VALUES ('1505', '宣州区', '234', '341802', '0', '0');
INSERT INTO `area_code` VALUES ('1506', '郎溪县', '234', '341821', '0', '0');
INSERT INTO `area_code` VALUES ('1507', '广德市', '234', '341882', '0', '0');
INSERT INTO `area_code` VALUES ('1508', '泾县', '234', '341823', '0', '0');
INSERT INTO `area_code` VALUES ('1509', '绩溪县', '234', '341824', '0', '0');
INSERT INTO `area_code` VALUES ('1510', '旌德县', '234', '341825', '0', '0');
INSERT INTO `area_code` VALUES ('1511', '宁国市', '234', '341881', '0', '0');
INSERT INTO `area_code` VALUES ('1512', '鼓楼区', '235', '350102', '0', '0');
INSERT INTO `area_code` VALUES ('1513', '台江区', '235', '350103', '0', '0');
INSERT INTO `area_code` VALUES ('1514', '仓山区', '235', '350104', '0', '0');
INSERT INTO `area_code` VALUES ('1515', '马尾区', '235', '350105', '0', '0');
INSERT INTO `area_code` VALUES ('1516', '晋安区', '235', '350111', '0', '0');
INSERT INTO `area_code` VALUES ('1517', '闽侯县', '235', '350121', '0', '0');
INSERT INTO `area_code` VALUES ('1518', '连江县', '235', '350122', '0', '0');
INSERT INTO `area_code` VALUES ('1519', '罗源县', '235', '350123', '0', '0');
INSERT INTO `area_code` VALUES ('1520', '闽清县', '235', '350124', '0', '0');
INSERT INTO `area_code` VALUES ('1521', '永泰县', '235', '350125', '0', '0');
INSERT INTO `area_code` VALUES ('1522', '平潭县', '235', '350128', '0', '0');
INSERT INTO `area_code` VALUES ('1523', '福清市', '235', '350181', '0', '0');
INSERT INTO `area_code` VALUES ('1524', '长乐区', '235', '350112', '0', '0');
INSERT INTO `area_code` VALUES ('1525', '思明区', '236', '350203', '0', '0');
INSERT INTO `area_code` VALUES ('1526', '海沧区', '236', '350205', '0', '0');
INSERT INTO `area_code` VALUES ('1527', '湖里区', '236', '350206', '0', '0');
INSERT INTO `area_code` VALUES ('1528', '集美区', '236', '350211', '0', '0');
INSERT INTO `area_code` VALUES ('1529', '同安区', '236', '350212', '0', '0');
INSERT INTO `area_code` VALUES ('1530', '翔安区', '236', '350213', '0', '0');
INSERT INTO `area_code` VALUES ('1531', '城厢区', '237', '350302', '0', '0');
INSERT INTO `area_code` VALUES ('1532', '涵江区', '237', '350303', '0', '0');
INSERT INTO `area_code` VALUES ('1533', '荔城区', '237', '350304', '0', '0');
INSERT INTO `area_code` VALUES ('1534', '秀屿区', '237', '350305', '0', '0');
INSERT INTO `area_code` VALUES ('1535', '仙游县', '237', '350322', '0', '0');
INSERT INTO `area_code` VALUES ('1536', '梅列区', '238', '350402', '0', '0');
INSERT INTO `area_code` VALUES ('1537', '三元区', '238', '350403', '0', '0');
INSERT INTO `area_code` VALUES ('1538', '明溪县', '238', '350421', '0', '0');
INSERT INTO `area_code` VALUES ('1539', '清流县', '238', '350423', '0', '0');
INSERT INTO `area_code` VALUES ('1540', '宁化县', '238', '350424', '0', '0');
INSERT INTO `area_code` VALUES ('1541', '大田县', '238', '350425', '0', '0');
INSERT INTO `area_code` VALUES ('1542', '尤溪县', '238', '350426', '0', '0');
INSERT INTO `area_code` VALUES ('1543', '沙县', '238', '350427', '0', '0');
INSERT INTO `area_code` VALUES ('1544', '将乐县', '238', '350428', '0', '0');
INSERT INTO `area_code` VALUES ('1545', '泰宁县', '238', '350429', '0', '0');
INSERT INTO `area_code` VALUES ('1546', '建宁县', '238', '350430', '0', '0');
INSERT INTO `area_code` VALUES ('1547', '永安市', '238', '350481', '0', '0');
INSERT INTO `area_code` VALUES ('1548', '鲤城区', '239', '350502', '0', '0');
INSERT INTO `area_code` VALUES ('1549', '丰泽区', '239', '350503', '0', '0');
INSERT INTO `area_code` VALUES ('1550', '洛江区', '239', '350504', '0', '0');
INSERT INTO `area_code` VALUES ('1551', '泉港区', '239', '350505', '0', '0');
INSERT INTO `area_code` VALUES ('1552', '惠安县', '239', '350521', '0', '0');
INSERT INTO `area_code` VALUES ('1553', '安溪县', '239', '350524', '0', '0');
INSERT INTO `area_code` VALUES ('1554', '永春县', '239', '350525', '0', '0');
INSERT INTO `area_code` VALUES ('1555', '德化县', '239', '350526', '0', '0');
INSERT INTO `area_code` VALUES ('1556', '金门县', '239', '350527', '0', '0');
INSERT INTO `area_code` VALUES ('1557', '石狮市', '239', '350581', '0', '0');
INSERT INTO `area_code` VALUES ('1558', '晋江市', '239', '350582', '0', '0');
INSERT INTO `area_code` VALUES ('1559', '南安市', '239', '350583', '0', '0');
INSERT INTO `area_code` VALUES ('1560', '芗城区', '240', '350602', '0', '0');
INSERT INTO `area_code` VALUES ('1561', '龙文区', '240', '350603', '0', '0');
INSERT INTO `area_code` VALUES ('1562', '云霄县', '240', '350622', '0', '0');
INSERT INTO `area_code` VALUES ('1563', '漳浦县', '240', '350623', '0', '0');
INSERT INTO `area_code` VALUES ('1564', '诏安县', '240', '350624', '0', '0');
INSERT INTO `area_code` VALUES ('1565', '长泰县', '240', '350625', '0', '0');
INSERT INTO `area_code` VALUES ('1566', '东山县', '240', '350626', '0', '0');
INSERT INTO `area_code` VALUES ('1567', '南靖县', '240', '350627', '0', '0');
INSERT INTO `area_code` VALUES ('1568', '平和县', '240', '350628', '0', '0');
INSERT INTO `area_code` VALUES ('1569', '华安县', '240', '350629', '0', '0');
INSERT INTO `area_code` VALUES ('1570', '龙海市', '240', '350681', '0', '0');
INSERT INTO `area_code` VALUES ('1571', '延平区', '241', '350702', '0', '0');
INSERT INTO `area_code` VALUES ('1572', '顺昌县', '241', '350721', '0', '0');
INSERT INTO `area_code` VALUES ('1573', '浦城县', '241', '350722', '0', '0');
INSERT INTO `area_code` VALUES ('1574', '光泽县', '241', '350723', '0', '0');
INSERT INTO `area_code` VALUES ('1575', '松溪县', '241', '350724', '0', '0');
INSERT INTO `area_code` VALUES ('1576', '政和县', '241', '350725', '0', '0');
INSERT INTO `area_code` VALUES ('1577', '邵武市', '241', '350781', '0', '0');
INSERT INTO `area_code` VALUES ('1578', '武夷山市', '241', '350782', '0', '0');
INSERT INTO `area_code` VALUES ('1579', '建瓯市', '241', '350783', '0', '0');
INSERT INTO `area_code` VALUES ('1580', '建阳区', '241', '350703', '0', '0');
INSERT INTO `area_code` VALUES ('1581', '新罗区', '242', '350802', '0', '0');
INSERT INTO `area_code` VALUES ('1582', '长汀县', '242', '350821', '0', '0');
INSERT INTO `area_code` VALUES ('1583', '永定区', '242', '350803', '0', '0');
INSERT INTO `area_code` VALUES ('1584', '上杭县', '242', '350823', '0', '0');
INSERT INTO `area_code` VALUES ('1585', '武平县', '242', '350824', '0', '0');
INSERT INTO `area_code` VALUES ('1586', '连城县', '242', '350825', '0', '0');
INSERT INTO `area_code` VALUES ('1587', '漳平市', '242', '350881', '0', '0');
INSERT INTO `area_code` VALUES ('1588', '蕉城区', '243', '350902', '0', '0');
INSERT INTO `area_code` VALUES ('1589', '霞浦县', '243', '350921', '0', '0');
INSERT INTO `area_code` VALUES ('1590', '古田县', '243', '350922', '0', '0');
INSERT INTO `area_code` VALUES ('1591', '屏南县', '243', '350923', '0', '0');
INSERT INTO `area_code` VALUES ('1592', '寿宁县', '243', '350924', '0', '0');
INSERT INTO `area_code` VALUES ('1593', '周宁县', '243', '350925', '0', '0');
INSERT INTO `area_code` VALUES ('1594', '柘荣县', '243', '350926', '0', '0');
INSERT INTO `area_code` VALUES ('1595', '福安市', '243', '350981', '0', '0');
INSERT INTO `area_code` VALUES ('1596', '福鼎市', '243', '350982', '0', '0');
INSERT INTO `area_code` VALUES ('1597', '东湖区', '244', '360102', '0', '0');
INSERT INTO `area_code` VALUES ('1598', '西湖区', '244', '360103', '0', '0');
INSERT INTO `area_code` VALUES ('1599', '青云谱区', '244', '360104', '0', '0');
INSERT INTO `area_code` VALUES ('1600', '红谷滩区', '244', '360113', '0', '0');
INSERT INTO `area_code` VALUES ('1601', '青山湖区', '244', '360111', '0', '0');
INSERT INTO `area_code` VALUES ('1602', '南昌县', '244', '360121', '0', '0');
INSERT INTO `area_code` VALUES ('1603', '新建区', '244', '360112', '0', '0');
INSERT INTO `area_code` VALUES ('1604', '安义县', '244', '360123', '0', '0');
INSERT INTO `area_code` VALUES ('1605', '进贤县', '244', '360124', '0', '0');
INSERT INTO `area_code` VALUES ('1606', '昌江区', '245', '360202', '0', '0');
INSERT INTO `area_code` VALUES ('1607', '珠山区', '245', '360203', '0', '0');
INSERT INTO `area_code` VALUES ('1608', '浮梁县', '245', '360222', '0', '0');
INSERT INTO `area_code` VALUES ('1609', '乐平市', '245', '360281', '0', '0');
INSERT INTO `area_code` VALUES ('1610', '安源区', '246', '360302', '0', '0');
INSERT INTO `area_code` VALUES ('1611', '湘东区', '246', '360313', '0', '0');
INSERT INTO `area_code` VALUES ('1612', '莲花县', '246', '360321', '0', '0');
INSERT INTO `area_code` VALUES ('1613', '上栗县', '246', '360322', '0', '0');
INSERT INTO `area_code` VALUES ('1614', '芦溪县', '246', '360323', '0', '0');
INSERT INTO `area_code` VALUES ('1615', '濂溪区', '247', '360402', '0', '0');
INSERT INTO `area_code` VALUES ('1616', '浔阳区', '247', '360403', '0', '0');
INSERT INTO `area_code` VALUES ('1617', '柴桑区', '247', '360404', '0', '0');
INSERT INTO `area_code` VALUES ('1618', '武宁县', '247', '360423', '0', '0');
INSERT INTO `area_code` VALUES ('1619', '修水县', '247', '360424', '0', '0');
INSERT INTO `area_code` VALUES ('1620', '永修县', '247', '360425', '0', '0');
INSERT INTO `area_code` VALUES ('1621', '德安县', '247', '360426', '0', '0');
INSERT INTO `area_code` VALUES ('1622', '庐山市', '247', '360483', '0', '0');
INSERT INTO `area_code` VALUES ('1623', '都昌县', '247', '360428', '0', '0');
INSERT INTO `area_code` VALUES ('1624', '湖口县', '247', '360429', '0', '0');
INSERT INTO `area_code` VALUES ('1625', '彭泽县', '247', '360430', '0', '0');
INSERT INTO `area_code` VALUES ('1626', '瑞昌市', '247', '360481', '0', '0');
INSERT INTO `area_code` VALUES ('1627', '共青城市', '247', '360482', '0', '0');
INSERT INTO `area_code` VALUES ('1628', '渝水区', '248', '360502', '0', '0');
INSERT INTO `area_code` VALUES ('1629', '分宜县', '248', '360521', '0', '0');
INSERT INTO `area_code` VALUES ('1630', '月湖区', '249', '360602', '0', '0');
INSERT INTO `area_code` VALUES ('1631', '余江区', '249', '360603', '0', '0');
INSERT INTO `area_code` VALUES ('1632', '贵溪市', '249', '360681', '0', '0');
INSERT INTO `area_code` VALUES ('1633', '章贡区', '250', '360702', '0', '0');
INSERT INTO `area_code` VALUES ('1634', '赣县区', '250', '360704', '0', '0');
INSERT INTO `area_code` VALUES ('1635', '信丰县', '250', '360722', '0', '0');
INSERT INTO `area_code` VALUES ('1636', '大余县', '250', '360723', '0', '0');
INSERT INTO `area_code` VALUES ('1637', '上犹县', '250', '360724', '0', '0');
INSERT INTO `area_code` VALUES ('1638', '崇义县', '250', '360725', '0', '0');
INSERT INTO `area_code` VALUES ('1639', '安远县', '250', '360726', '0', '0');
INSERT INTO `area_code` VALUES ('1640', '龙南县', '250', '360727', '0', '0');
INSERT INTO `area_code` VALUES ('1641', '定南县', '250', '360728', '0', '0');
INSERT INTO `area_code` VALUES ('1642', '全南县', '250', '360729', '0', '0');
INSERT INTO `area_code` VALUES ('1643', '宁都县', '250', '360730', '0', '0');
INSERT INTO `area_code` VALUES ('1644', '于都县', '250', '360731', '0', '0');
INSERT INTO `area_code` VALUES ('1645', '兴国县', '250', '360732', '0', '0');
INSERT INTO `area_code` VALUES ('1646', '会昌县', '250', '360733', '0', '0');
INSERT INTO `area_code` VALUES ('1647', '寻乌县', '250', '360734', '0', '0');
INSERT INTO `area_code` VALUES ('1648', '石城县', '250', '360735', '0', '0');
INSERT INTO `area_code` VALUES ('1649', '瑞金市', '250', '360781', '0', '0');
INSERT INTO `area_code` VALUES ('1650', '南康区', '250', '360782', '0', '0');
INSERT INTO `area_code` VALUES ('1651', '吉州区', '251', '360802', '0', '0');
INSERT INTO `area_code` VALUES ('1652', '青原区', '251', '360803', '0', '0');
INSERT INTO `area_code` VALUES ('1653', '吉安县', '251', '360821', '0', '0');
INSERT INTO `area_code` VALUES ('1654', '吉水县', '251', '360822', '0', '0');
INSERT INTO `area_code` VALUES ('1655', '峡江县', '251', '360823', '0', '0');
INSERT INTO `area_code` VALUES ('1656', '新干县', '251', '360824', '0', '0');
INSERT INTO `area_code` VALUES ('1657', '永丰县', '251', '360825', '0', '0');
INSERT INTO `area_code` VALUES ('1658', '泰和县', '251', '360826', '0', '0');
INSERT INTO `area_code` VALUES ('1659', '遂川县', '251', '360827', '0', '0');
INSERT INTO `area_code` VALUES ('1660', '万安县', '251', '360828', '0', '0');
INSERT INTO `area_code` VALUES ('1661', '安福县', '251', '360829', '0', '0');
INSERT INTO `area_code` VALUES ('1662', '永新县', '251', '360830', '0', '0');
INSERT INTO `area_code` VALUES ('1663', '井冈山市', '251', '360881', '0', '0');
INSERT INTO `area_code` VALUES ('1664', '袁州区', '252', '360902', '0', '0');
INSERT INTO `area_code` VALUES ('1665', '奉新县', '252', '360921', '0', '0');
INSERT INTO `area_code` VALUES ('1666', '万载县', '252', '360922', '0', '0');
INSERT INTO `area_code` VALUES ('1667', '上高县', '252', '360923', '0', '0');
INSERT INTO `area_code` VALUES ('1668', '宜丰县', '252', '360924', '0', '0');
INSERT INTO `area_code` VALUES ('1669', '靖安县', '252', '360925', '0', '0');
INSERT INTO `area_code` VALUES ('1670', '铜鼓县', '252', '360926', '0', '0');
INSERT INTO `area_code` VALUES ('1671', '丰城市', '252', '360981', '0', '0');
INSERT INTO `area_code` VALUES ('1672', '樟树市', '252', '360982', '0', '0');
INSERT INTO `area_code` VALUES ('1673', '高安市', '252', '360983', '0', '0');
INSERT INTO `area_code` VALUES ('1674', '临川区', '253', '361002', '0', '0');
INSERT INTO `area_code` VALUES ('1675', '南城县', '253', '361021', '0', '0');
INSERT INTO `area_code` VALUES ('1676', '黎川县', '253', '361022', '0', '0');
INSERT INTO `area_code` VALUES ('1677', '南丰县', '253', '361023', '0', '0');
INSERT INTO `area_code` VALUES ('1678', '崇仁县', '253', '361024', '0', '0');
INSERT INTO `area_code` VALUES ('1679', '乐安县', '253', '361025', '0', '0');
INSERT INTO `area_code` VALUES ('1680', '宜黄县', '253', '361026', '0', '0');
INSERT INTO `area_code` VALUES ('1681', '金溪县', '253', '361027', '0', '0');
INSERT INTO `area_code` VALUES ('1682', '资溪县', '253', '361028', '0', '0');
INSERT INTO `area_code` VALUES ('1683', '东乡区', '253', '361003', '0', '0');
INSERT INTO `area_code` VALUES ('1684', '广昌县', '253', '361030', '0', '0');
INSERT INTO `area_code` VALUES ('1685', '信州区', '254', '361102', '0', '0');
INSERT INTO `area_code` VALUES ('1686', '广信区', '254', '361104', '0', '0');
INSERT INTO `area_code` VALUES ('1687', '广丰区', '254', '361103', '0', '0');
INSERT INTO `area_code` VALUES ('1688', '玉山县', '254', '361123', '0', '0');
INSERT INTO `area_code` VALUES ('1689', '铅山县', '254', '361124', '0', '0');
INSERT INTO `area_code` VALUES ('1690', '横峰县', '254', '361125', '0', '0');
INSERT INTO `area_code` VALUES ('1691', '弋阳县', '254', '361126', '0', '0');
INSERT INTO `area_code` VALUES ('1692', '余干县', '254', '361127', '0', '0');
INSERT INTO `area_code` VALUES ('1693', '鄱阳县', '254', '361128', '0', '0');
INSERT INTO `area_code` VALUES ('1694', '万年县', '254', '361129', '0', '0');
INSERT INTO `area_code` VALUES ('1695', '婺源县', '254', '361130', '0', '0');
INSERT INTO `area_code` VALUES ('1696', '德兴市', '254', '361181', '0', '0');
INSERT INTO `area_code` VALUES ('1697', '历下区', '255', '370102', '0', '0');
INSERT INTO `area_code` VALUES ('1698', '市中区', '255', '370103', '0', '0');
INSERT INTO `area_code` VALUES ('1699', '槐荫区', '255', '370104', '0', '0');
INSERT INTO `area_code` VALUES ('1700', '天桥区', '255', '370105', '0', '0');
INSERT INTO `area_code` VALUES ('1701', '历城区', '255', '370112', '0', '0');
INSERT INTO `area_code` VALUES ('1702', '长清区', '255', '370113', '0', '0');
INSERT INTO `area_code` VALUES ('1703', '平阴县', '255', '370124', '0', '0');
INSERT INTO `area_code` VALUES ('1704', '济阳区', '255', '370115', '0', '0');
INSERT INTO `area_code` VALUES ('1705', '商河县', '255', '370126', '0', '0');
INSERT INTO `area_code` VALUES ('1706', '章丘区', '255', '370114', '0', '0');
INSERT INTO `area_code` VALUES ('1707', '市南区', '256', '370202', '0', '0');
INSERT INTO `area_code` VALUES ('1708', '市北区', '256', '370203', '0', '0');
INSERT INTO `area_code` VALUES ('1709', '黄岛区', '256', '370211', '0', '0');
INSERT INTO `area_code` VALUES ('1710', '崂山区', '256', '370212', '0', '0');
INSERT INTO `area_code` VALUES ('1711', '李沧区', '256', '370213', '0', '0');
INSERT INTO `area_code` VALUES ('1712', '城阳区', '256', '370214', '0', '0');
INSERT INTO `area_code` VALUES ('1713', '胶州市', '256', '370281', '0', '0');
INSERT INTO `area_code` VALUES ('1714', '即墨区', '256', '370215', '0', '0');
INSERT INTO `area_code` VALUES ('1715', '平度市', '256', '370283', '0', '0');
INSERT INTO `area_code` VALUES ('1716', '莱西市', '256', '370285', '0', '0');
INSERT INTO `area_code` VALUES ('1717', '淄川区', '257', '370302', '0', '0');
INSERT INTO `area_code` VALUES ('1718', '张店区', '257', '370303', '0', '0');
INSERT INTO `area_code` VALUES ('1719', '博山区', '257', '370304', '0', '0');
INSERT INTO `area_code` VALUES ('1720', '临淄区', '257', '370305', '0', '0');
INSERT INTO `area_code` VALUES ('1721', '周村区', '257', '370306', '0', '0');
INSERT INTO `area_code` VALUES ('1722', '桓台县', '257', '370321', '0', '0');
INSERT INTO `area_code` VALUES ('1723', '高青县', '257', '370322', '0', '0');
INSERT INTO `area_code` VALUES ('1724', '沂源县', '257', '370323', '0', '0');
INSERT INTO `area_code` VALUES ('1725', '市中区', '258', '370402', '0', '0');
INSERT INTO `area_code` VALUES ('1726', '薛城区', '258', '370403', '0', '0');
INSERT INTO `area_code` VALUES ('1727', '峄城区', '258', '370404', '0', '0');
INSERT INTO `area_code` VALUES ('1728', '台儿庄区', '258', '370405', '0', '0');
INSERT INTO `area_code` VALUES ('1729', '山亭区', '258', '370406', '0', '0');
INSERT INTO `area_code` VALUES ('1730', '滕州市', '258', '370481', '0', '0');
INSERT INTO `area_code` VALUES ('1731', '东营区', '259', '370502', '0', '0');
INSERT INTO `area_code` VALUES ('1732', '河口区', '259', '370503', '0', '0');
INSERT INTO `area_code` VALUES ('1733', '垦利区', '259', '370505', '0', '0');
INSERT INTO `area_code` VALUES ('1734', '利津县', '259', '370522', '0', '0');
INSERT INTO `area_code` VALUES ('1735', '广饶县', '259', '370523', '0', '0');
INSERT INTO `area_code` VALUES ('1736', '芝罘区', '260', '370602', '0', '0');
INSERT INTO `area_code` VALUES ('1737', '福山区', '260', '370611', '0', '0');
INSERT INTO `area_code` VALUES ('1738', '牟平区', '260', '370612', '0', '0');
INSERT INTO `area_code` VALUES ('1739', '莱山区', '260', '370613', '0', '0');
INSERT INTO `area_code` VALUES ('1740', '长岛县', '260', '370634', '0', '0');
INSERT INTO `area_code` VALUES ('1741', '龙口市', '260', '370681', '0', '0');
INSERT INTO `area_code` VALUES ('1742', '莱阳市', '260', '370682', '0', '0');
INSERT INTO `area_code` VALUES ('1743', '莱州市', '260', '370683', '0', '0');
INSERT INTO `area_code` VALUES ('1744', '蓬莱市', '260', '370684', '0', '0');
INSERT INTO `area_code` VALUES ('1745', '招远市', '260', '370685', '0', '0');
INSERT INTO `area_code` VALUES ('1746', '栖霞市', '260', '370686', '0', '0');
INSERT INTO `area_code` VALUES ('1747', '海阳市', '260', '370687', '0', '0');
INSERT INTO `area_code` VALUES ('1748', '潍城区', '261', '370702', '0', '0');
INSERT INTO `area_code` VALUES ('1749', '寒亭区', '261', '370703', '0', '0');
INSERT INTO `area_code` VALUES ('1750', '坊子区', '261', '370704', '0', '0');
INSERT INTO `area_code` VALUES ('1751', '奎文区', '261', '370705', '0', '0');
INSERT INTO `area_code` VALUES ('1752', '临朐县', '261', '370724', '0', '0');
INSERT INTO `area_code` VALUES ('1753', '昌乐县', '261', '370725', '0', '0');
INSERT INTO `area_code` VALUES ('1754', '青州市', '261', '370781', '0', '0');
INSERT INTO `area_code` VALUES ('1755', '诸城市', '261', '370782', '0', '0');
INSERT INTO `area_code` VALUES ('1756', '寿光市', '261', '370783', '0', '0');
INSERT INTO `area_code` VALUES ('1757', '安丘市', '261', '370784', '0', '0');
INSERT INTO `area_code` VALUES ('1758', '高密市', '261', '370785', '0', '0');
INSERT INTO `area_code` VALUES ('1759', '昌邑市', '261', '370786', '0', '0');
INSERT INTO `area_code` VALUES ('1761', '任城区', '262', '370811', '0', '0');
INSERT INTO `area_code` VALUES ('1762', '微山县', '262', '370826', '0', '0');
INSERT INTO `area_code` VALUES ('1763', '鱼台县', '262', '370827', '0', '0');
INSERT INTO `area_code` VALUES ('1764', '金乡县', '262', '370828', '0', '0');
INSERT INTO `area_code` VALUES ('1765', '嘉祥县', '262', '370829', '0', '0');
INSERT INTO `area_code` VALUES ('1766', '汶上县', '262', '370830', '0', '0');
INSERT INTO `area_code` VALUES ('1767', '泗水县', '262', '370831', '0', '0');
INSERT INTO `area_code` VALUES ('1768', '梁山县', '262', '370832', '0', '0');
INSERT INTO `area_code` VALUES ('1769', '曲阜市', '262', '370881', '0', '0');
INSERT INTO `area_code` VALUES ('1770', '兖州区', '262', '370812', '0', '0');
INSERT INTO `area_code` VALUES ('1771', '邹城市', '262', '370883', '0', '0');
INSERT INTO `area_code` VALUES ('1772', '泰山区', '263', '370902', '0', '0');
INSERT INTO `area_code` VALUES ('1773', '岱岳区', '263', '370911', '0', '0');
INSERT INTO `area_code` VALUES ('1774', '宁阳县', '263', '370921', '0', '0');
INSERT INTO `area_code` VALUES ('1775', '东平县', '263', '370923', '0', '0');
INSERT INTO `area_code` VALUES ('1776', '新泰市', '263', '370982', '0', '0');
INSERT INTO `area_code` VALUES ('1777', '肥城市', '263', '370983', '0', '0');
INSERT INTO `area_code` VALUES ('1778', '环翠区', '264', '371002', '0', '0');
INSERT INTO `area_code` VALUES ('1779', '文登区', '264', '371003', '0', '0');
INSERT INTO `area_code` VALUES ('1780', '荣成市', '264', '371082', '0', '0');
INSERT INTO `area_code` VALUES ('1781', '乳山市', '264', '371083', '0', '0');
INSERT INTO `area_code` VALUES ('1782', '东港区', '265', '371102', '0', '0');
INSERT INTO `area_code` VALUES ('1783', '岚山区', '265', '371103', '0', '0');
INSERT INTO `area_code` VALUES ('1784', '五莲县', '265', '371121', '0', '0');
INSERT INTO `area_code` VALUES ('1785', '莒县', '265', '371122', '0', '0');
INSERT INTO `area_code` VALUES ('1786', '莱芜区', '255', '370116', '0', '0');
INSERT INTO `area_code` VALUES ('1787', '钢城区', '255', '370117', '0', '0');
INSERT INTO `area_code` VALUES ('1788', '兰山区', '267', '371302', '0', '0');
INSERT INTO `area_code` VALUES ('1789', '罗庄区', '267', '371311', '0', '0');
INSERT INTO `area_code` VALUES ('1790', '河东区', '267', '371312', '0', '0');
INSERT INTO `area_code` VALUES ('1791', '沂南县', '267', '371321', '0', '0');
INSERT INTO `area_code` VALUES ('1792', '郯城县', '267', '371322', '0', '0');
INSERT INTO `area_code` VALUES ('1793', '沂水县', '267', '371323', '0', '0');
INSERT INTO `area_code` VALUES ('1794', '兰陵县', '267', '371324', '0', '0');
INSERT INTO `area_code` VALUES ('1795', '费县', '267', '371325', '0', '0');
INSERT INTO `area_code` VALUES ('1796', '平邑县', '267', '371326', '0', '0');
INSERT INTO `area_code` VALUES ('1797', '莒南县', '267', '371327', '0', '0');
INSERT INTO `area_code` VALUES ('1798', '蒙阴县', '267', '371328', '0', '0');
INSERT INTO `area_code` VALUES ('1799', '临沭县', '267', '371329', '0', '0');
INSERT INTO `area_code` VALUES ('1800', '德城区', '268', '371402', '0', '0');
INSERT INTO `area_code` VALUES ('1801', '陵城区', '268', '371403', '0', '0');
INSERT INTO `area_code` VALUES ('1802', '宁津县', '268', '371422', '0', '0');
INSERT INTO `area_code` VALUES ('1803', '庆云县', '268', '371423', '0', '0');
INSERT INTO `area_code` VALUES ('1804', '临邑县', '268', '371424', '0', '0');
INSERT INTO `area_code` VALUES ('1805', '齐河县', '268', '371425', '0', '0');
INSERT INTO `area_code` VALUES ('1806', '平原县', '268', '371426', '0', '0');
INSERT INTO `area_code` VALUES ('1807', '夏津县', '268', '371427', '0', '0');
INSERT INTO `area_code` VALUES ('1808', '武城县', '268', '371428', '0', '0');
INSERT INTO `area_code` VALUES ('1809', '乐陵市', '268', '371481', '0', '0');
INSERT INTO `area_code` VALUES ('1810', '禹城市', '268', '371482', '0', '0');
INSERT INTO `area_code` VALUES ('1811', '东昌府区', '269', '371502', '0', '0');
INSERT INTO `area_code` VALUES ('1812', '阳谷县', '269', '371521', '0', '0');
INSERT INTO `area_code` VALUES ('1813', '莘县', '269', '371522', '0', '0');
INSERT INTO `area_code` VALUES ('1814', '茌平区', '269', '371503', '0', '0');
INSERT INTO `area_code` VALUES ('1815', '东阿县', '269', '371524', '0', '0');
INSERT INTO `area_code` VALUES ('1816', '冠县', '269', '371525', '0', '0');
INSERT INTO `area_code` VALUES ('1817', '高唐县', '269', '371526', '0', '0');
INSERT INTO `area_code` VALUES ('1818', '临清市', '269', '371581', '0', '0');
INSERT INTO `area_code` VALUES ('1819', '滨城区', '270', '371602', '0', '0');
INSERT INTO `area_code` VALUES ('1820', '惠民县', '270', '371621', '0', '0');
INSERT INTO `area_code` VALUES ('1821', '阳信县', '270', '371622', '0', '0');
INSERT INTO `area_code` VALUES ('1822', '无棣县', '270', '371623', '0', '0');
INSERT INTO `area_code` VALUES ('1823', '沾化区', '270', '371624', '0', '0');
INSERT INTO `area_code` VALUES ('1824', '博兴县', '270', '371625', '0', '0');
INSERT INTO `area_code` VALUES ('1825', '邹平市', '270', '371626', '0', '0');
INSERT INTO `area_code` VALUES ('1826', '牡丹区', '271', '371702', '0', '0');
INSERT INTO `area_code` VALUES ('1827', '曹县', '271', '371721', '0', '0');
INSERT INTO `area_code` VALUES ('1828', '单县', '271', '371722', '0', '0');
INSERT INTO `area_code` VALUES ('1829', '成武县', '271', '371723', '0', '0');
INSERT INTO `area_code` VALUES ('1830', '巨野县', '271', '371724', '0', '0');
INSERT INTO `area_code` VALUES ('1831', '郓城县', '271', '371725', '0', '0');
INSERT INTO `area_code` VALUES ('1832', '鄄城县', '271', '371726', '0', '0');
INSERT INTO `area_code` VALUES ('1833', '定陶区', '271', '371703', '0', '0');
INSERT INTO `area_code` VALUES ('1834', '东明县', '271', '371728', '0', '0');
INSERT INTO `area_code` VALUES ('1835', '中原区', '272', '410102', '0', '0');
INSERT INTO `area_code` VALUES ('1836', '二七区', '272', '410103', '0', '0');
INSERT INTO `area_code` VALUES ('1837', '管城区', '272', '410104', '0', '0');
INSERT INTO `area_code` VALUES ('1838', '金水区', '272', '410105', '0', '0');
INSERT INTO `area_code` VALUES ('1839', '上街区', '272', '410106', '0', '0');
INSERT INTO `area_code` VALUES ('1840', '惠济区', '272', '410108', '0', '0');
INSERT INTO `area_code` VALUES ('1841', '中牟县', '272', '410122', '0', '0');
INSERT INTO `area_code` VALUES ('1842', '巩义市', '272', '410181', '0', '0');
INSERT INTO `area_code` VALUES ('1843', '荥阳市', '272', '410182', '0', '0');
INSERT INTO `area_code` VALUES ('1844', '新密市', '272', '410183', '0', '0');
INSERT INTO `area_code` VALUES ('1845', '新郑市', '272', '410184', '0', '0');
INSERT INTO `area_code` VALUES ('1846', '登封市', '272', '410185', '0', '0');
INSERT INTO `area_code` VALUES ('1847', '龙亭区', '273', '410202', '0', '0');
INSERT INTO `area_code` VALUES ('1848', '顺河区', '273', '410203', '0', '0');
INSERT INTO `area_code` VALUES ('1849', '鼓楼区', '273', '410204', '0', '0');
INSERT INTO `area_code` VALUES ('1850', '禹王台区', '273', '410205', '0', '0');
INSERT INTO `area_code` VALUES ('1852', '杞县', '273', '410221', '0', '0');
INSERT INTO `area_code` VALUES ('1853', '通许县', '273', '410222', '0', '0');
INSERT INTO `area_code` VALUES ('1854', '尉氏县', '273', '410223', '0', '0');
INSERT INTO `area_code` VALUES ('1855', '祥符区', '273', '410212', '0', '0');
INSERT INTO `area_code` VALUES ('1856', '兰考县', '273', '410225', '0', '0');
INSERT INTO `area_code` VALUES ('1857', '老城区', '274', '410302', '0', '0');
INSERT INTO `area_code` VALUES ('1858', '西工区', '274', '410303', '0', '0');
INSERT INTO `area_code` VALUES ('1859', '瀍河区', '274', '410304', '0', '0');
INSERT INTO `area_code` VALUES ('1860', '涧西区', '274', '410305', '0', '0');
INSERT INTO `area_code` VALUES ('1861', '吉利区', '274', '410306', '0', '0');
INSERT INTO `area_code` VALUES ('1862', '洛龙区', '274', '410311', '0', '0');
INSERT INTO `area_code` VALUES ('1863', '孟津县', '274', '410322', '0', '0');
INSERT INTO `area_code` VALUES ('1864', '新安县', '274', '410323', '0', '0');
INSERT INTO `area_code` VALUES ('1865', '栾川县', '274', '410324', '0', '0');
INSERT INTO `area_code` VALUES ('1866', '嵩县', '274', '410325', '0', '0');
INSERT INTO `area_code` VALUES ('1867', '汝阳县', '274', '410326', '0', '0');
INSERT INTO `area_code` VALUES ('1868', '宜阳县', '274', '410327', '0', '0');
INSERT INTO `area_code` VALUES ('1869', '洛宁县', '274', '410328', '0', '0');
INSERT INTO `area_code` VALUES ('1870', '伊川县', '274', '410329', '0', '0');
INSERT INTO `area_code` VALUES ('1871', '偃师市', '274', '410381', '0', '0');
INSERT INTO `area_code` VALUES ('1872', '新华区', '275', '410402', '0', '0');
INSERT INTO `area_code` VALUES ('1873', '卫东区', '275', '410403', '0', '0');
INSERT INTO `area_code` VALUES ('1874', '石龙区', '275', '410404', '0', '0');
INSERT INTO `area_code` VALUES ('1875', '湛河区', '275', '410411', '0', '0');
INSERT INTO `area_code` VALUES ('1876', '宝丰县', '275', '410421', '0', '0');
INSERT INTO `area_code` VALUES ('1877', '叶县', '275', '410422', '0', '0');
INSERT INTO `area_code` VALUES ('1878', '鲁山县', '275', '410423', '0', '0');
INSERT INTO `area_code` VALUES ('1879', '郏县', '275', '410425', '0', '0');
INSERT INTO `area_code` VALUES ('1880', '舞钢市', '275', '410481', '0', '0');
INSERT INTO `area_code` VALUES ('1881', '汝州市', '275', '410482', '0', '0');
INSERT INTO `area_code` VALUES ('1882', '文峰区', '276', '410502', '0', '0');
INSERT INTO `area_code` VALUES ('1883', '北关区', '276', '410503', '0', '0');
INSERT INTO `area_code` VALUES ('1884', '殷都区', '276', '410505', '0', '0');
INSERT INTO `area_code` VALUES ('1885', '龙安区', '276', '410506', '0', '0');
INSERT INTO `area_code` VALUES ('1886', '安阳县', '276', '410522', '0', '0');
INSERT INTO `area_code` VALUES ('1887', '汤阴县', '276', '410523', '0', '0');
INSERT INTO `area_code` VALUES ('1888', '滑县', '276', '410526', '0', '0');
INSERT INTO `area_code` VALUES ('1889', '内黄县', '276', '410527', '0', '0');
INSERT INTO `area_code` VALUES ('1890', '林州市', '276', '410581', '0', '0');
INSERT INTO `area_code` VALUES ('1891', '鹤山区', '277', '410602', '0', '0');
INSERT INTO `area_code` VALUES ('1892', '山城区', '277', '410603', '0', '0');
INSERT INTO `area_code` VALUES ('1893', '淇滨区', '277', '410611', '0', '0');
INSERT INTO `area_code` VALUES ('1894', '浚县', '277', '410621', '0', '0');
INSERT INTO `area_code` VALUES ('1895', '淇县', '277', '410622', '0', '0');
INSERT INTO `area_code` VALUES ('1896', '红旗区', '278', '410702', '0', '0');
INSERT INTO `area_code` VALUES ('1897', '卫滨区', '278', '410703', '0', '0');
INSERT INTO `area_code` VALUES ('1898', '凤泉区', '278', '410704', '0', '0');
INSERT INTO `area_code` VALUES ('1899', '牧野区', '278', '410711', '0', '0');
INSERT INTO `area_code` VALUES ('1900', '新乡县', '278', '410721', '0', '0');
INSERT INTO `area_code` VALUES ('1901', '获嘉县', '278', '410724', '0', '0');
INSERT INTO `area_code` VALUES ('1902', '原阳县', '278', '410725', '0', '0');
INSERT INTO `area_code` VALUES ('1903', '延津县', '278', '410726', '0', '0');
INSERT INTO `area_code` VALUES ('1904', '封丘县', '278', '410727', '0', '0');
INSERT INTO `area_code` VALUES ('1905', '长垣市', '278', '410783', '0', '0');
INSERT INTO `area_code` VALUES ('1906', '卫辉市', '278', '410781', '0', '0');
INSERT INTO `area_code` VALUES ('1907', '辉县市', '278', '410782', '0', '0');
INSERT INTO `area_code` VALUES ('1908', '解放区', '279', '410802', '0', '0');
INSERT INTO `area_code` VALUES ('1909', '中站区', '279', '410803', '0', '0');
INSERT INTO `area_code` VALUES ('1910', '马村区', '279', '410804', '0', '0');
INSERT INTO `area_code` VALUES ('1911', '山阳区', '279', '410811', '0', '0');
INSERT INTO `area_code` VALUES ('1912', '修武县', '279', '410821', '0', '0');
INSERT INTO `area_code` VALUES ('1913', '博爱县', '279', '410822', '0', '0');
INSERT INTO `area_code` VALUES ('1914', '武陟县', '279', '410823', '0', '0');
INSERT INTO `area_code` VALUES ('1915', '温县', '279', '410825', '0', '0');
INSERT INTO `area_code` VALUES ('1916', '沁阳市', '279', '410882', '0', '0');
INSERT INTO `area_code` VALUES ('1917', '孟州市', '279', '410883', '0', '0');
INSERT INTO `area_code` VALUES ('1918', '华龙区', '280', '410902', '0', '0');
INSERT INTO `area_code` VALUES ('1919', '清丰县', '280', '410922', '0', '0');
INSERT INTO `area_code` VALUES ('1920', '南乐县', '280', '410923', '0', '0');
INSERT INTO `area_code` VALUES ('1921', '范县', '280', '410926', '0', '0');
INSERT INTO `area_code` VALUES ('1922', '台前县', '280', '410927', '0', '0');
INSERT INTO `area_code` VALUES ('1923', '濮阳县', '280', '410928', '0', '0');
INSERT INTO `area_code` VALUES ('1924', '魏都区', '281', '411002', '0', '0');
INSERT INTO `area_code` VALUES ('1925', '建安区', '281', '411003', '0', '0');
INSERT INTO `area_code` VALUES ('1926', '鄢陵县', '281', '411024', '0', '0');
INSERT INTO `area_code` VALUES ('1927', '襄城县', '281', '411025', '0', '0');
INSERT INTO `area_code` VALUES ('1928', '禹州市', '281', '411081', '0', '0');
INSERT INTO `area_code` VALUES ('1929', '长葛市', '281', '411082', '0', '0');
INSERT INTO `area_code` VALUES ('1930', '源汇区', '282', '411102', '0', '0');
INSERT INTO `area_code` VALUES ('1931', '郾城区', '282', '411103', '0', '0');
INSERT INTO `area_code` VALUES ('1932', '召陵区', '282', '411104', '0', '0');
INSERT INTO `area_code` VALUES ('1933', '舞阳县', '282', '411121', '0', '0');
INSERT INTO `area_code` VALUES ('1934', '临颍县', '282', '411122', '0', '0');
INSERT INTO `area_code` VALUES ('1935', '湖滨区', '283', '411202', '0', '0');
INSERT INTO `area_code` VALUES ('1936', '渑池县', '283', '411221', '0', '0');
INSERT INTO `area_code` VALUES ('1937', '陕州区', '283', '411222', '0', '0');
INSERT INTO `area_code` VALUES ('1938', '卢氏县', '283', '411224', '0', '0');
INSERT INTO `area_code` VALUES ('1939', '义马市', '283', '411281', '0', '0');
INSERT INTO `area_code` VALUES ('1940', '灵宝市', '283', '411282', '0', '0');
INSERT INTO `area_code` VALUES ('1941', '宛城区', '284', '411302', '0', '0');
INSERT INTO `area_code` VALUES ('1942', '卧龙区', '284', '411303', '0', '0');
INSERT INTO `area_code` VALUES ('1943', '南召县', '284', '411321', '0', '0');
INSERT INTO `area_code` VALUES ('1944', '方城县', '284', '411322', '0', '0');
INSERT INTO `area_code` VALUES ('1945', '西峡县', '284', '411323', '0', '0');
INSERT INTO `area_code` VALUES ('1946', '镇平县', '284', '411324', '0', '0');
INSERT INTO `area_code` VALUES ('1947', '内乡县', '284', '411325', '0', '0');
INSERT INTO `area_code` VALUES ('1948', '淅川县', '284', '411326', '0', '0');
INSERT INTO `area_code` VALUES ('1949', '社旗县', '284', '411327', '0', '0');
INSERT INTO `area_code` VALUES ('1950', '唐河县', '284', '411328', '0', '0');
INSERT INTO `area_code` VALUES ('1951', '新野县', '284', '411329', '0', '0');
INSERT INTO `area_code` VALUES ('1952', '桐柏县', '284', '411330', '0', '0');
INSERT INTO `area_code` VALUES ('1953', '邓州市', '284', '411381', '0', '0');
INSERT INTO `area_code` VALUES ('1954', '粱园区', '285', '411402', '0', '0');
INSERT INTO `area_code` VALUES ('1955', '睢阳区', '285', '411403', '0', '0');
INSERT INTO `area_code` VALUES ('1956', '民权县', '285', '411421', '0', '0');
INSERT INTO `area_code` VALUES ('1957', '睢县', '285', '411422', '0', '0');
INSERT INTO `area_code` VALUES ('1958', '宁陵县', '285', '411423', '0', '0');
INSERT INTO `area_code` VALUES ('1959', '柘城县', '285', '411424', '0', '0');
INSERT INTO `area_code` VALUES ('1960', '虞城县', '285', '411425', '0', '0');
INSERT INTO `area_code` VALUES ('1961', '夏邑县', '285', '411426', '0', '0');
INSERT INTO `area_code` VALUES ('1962', '永城市', '285', '411481', '0', '0');
INSERT INTO `area_code` VALUES ('1963', '浉河区', '286', '411502', '0', '0');
INSERT INTO `area_code` VALUES ('1964', '平桥区', '286', '411503', '0', '0');
INSERT INTO `area_code` VALUES ('1965', '罗山县', '286', '411521', '0', '0');
INSERT INTO `area_code` VALUES ('1966', '光山县', '286', '411522', '0', '0');
INSERT INTO `area_code` VALUES ('1967', '新县', '286', '411523', '0', '0');
INSERT INTO `area_code` VALUES ('1968', '商城县', '286', '411524', '0', '0');
INSERT INTO `area_code` VALUES ('1969', '固始县', '286', '411525', '0', '0');
INSERT INTO `area_code` VALUES ('1970', '潢川县', '286', '411526', '0', '0');
INSERT INTO `area_code` VALUES ('1971', '淮滨县', '286', '411527', '0', '0');
INSERT INTO `area_code` VALUES ('1972', '息县', '286', '411528', '0', '0');
INSERT INTO `area_code` VALUES ('1973', '川汇区', '287', '411602', '0', '0');
INSERT INTO `area_code` VALUES ('1974', '扶沟县', '287', '411621', '0', '0');
INSERT INTO `area_code` VALUES ('1975', '西华县', '287', '411622', '0', '0');
INSERT INTO `area_code` VALUES ('1976', '商水县', '287', '411623', '0', '0');
INSERT INTO `area_code` VALUES ('1977', '沈丘县', '287', '411624', '0', '0');
INSERT INTO `area_code` VALUES ('1978', '郸城县', '287', '411625', '0', '0');
INSERT INTO `area_code` VALUES ('1979', '淮阳区', '287', '411603', '0', '0');
INSERT INTO `area_code` VALUES ('1980', '太康县', '287', '411627', '0', '0');
INSERT INTO `area_code` VALUES ('1981', '鹿邑县', '287', '411628', '0', '0');
INSERT INTO `area_code` VALUES ('1982', '项城市', '287', '411681', '0', '0');
INSERT INTO `area_code` VALUES ('1983', '驿城区', '288', '411702', '0', '0');
INSERT INTO `area_code` VALUES ('1984', '西平县', '288', '411721', '0', '0');
INSERT INTO `area_code` VALUES ('1985', '上蔡县', '288', '411722', '0', '0');
INSERT INTO `area_code` VALUES ('1986', '平舆县', '288', '411723', '0', '0');
INSERT INTO `area_code` VALUES ('1987', '正阳县', '288', '411724', '0', '0');
INSERT INTO `area_code` VALUES ('1988', '确山县', '288', '411725', '0', '0');
INSERT INTO `area_code` VALUES ('1989', '泌阳县', '288', '411726', '0', '0');
INSERT INTO `area_code` VALUES ('1990', '汝南县', '288', '411727', '0', '0');
INSERT INTO `area_code` VALUES ('1991', '遂平县', '288', '411728', '0', '0');
INSERT INTO `area_code` VALUES ('1992', '新蔡县', '288', '411729', '0', '0');
INSERT INTO `area_code` VALUES ('1993', '江岸区', '290', '420102', '0', '0');
INSERT INTO `area_code` VALUES ('1994', '江汉区', '290', '420103', '0', '0');
INSERT INTO `area_code` VALUES ('1995', '硚口区', '290', '420104', '0', '0');
INSERT INTO `area_code` VALUES ('1996', '汉阳区', '290', '420105', '0', '0');
INSERT INTO `area_code` VALUES ('1997', '武昌区', '290', '420106', '0', '0');
INSERT INTO `area_code` VALUES ('1998', '青山区', '290', '420107', '0', '0');
INSERT INTO `area_code` VALUES ('1999', '洪山区', '290', '420111', '0', '0');
INSERT INTO `area_code` VALUES ('2000', '东西湖区', '290', '420112', '0', '0');
INSERT INTO `area_code` VALUES ('2001', '汉南区', '290', '420113', '0', '0');
INSERT INTO `area_code` VALUES ('2002', '蔡甸区', '290', '420114', '0', '0');
INSERT INTO `area_code` VALUES ('2003', '江夏区', '290', '420115', '0', '0');
INSERT INTO `area_code` VALUES ('2004', '黄陂区', '290', '420116', '0', '0');
INSERT INTO `area_code` VALUES ('2005', '新洲区', '290', '420117', '0', '0');
INSERT INTO `area_code` VALUES ('2006', '黄石港区', '291', '420202', '0', '0');
INSERT INTO `area_code` VALUES ('2007', '西塞山区', '291', '420203', '0', '0');
INSERT INTO `area_code` VALUES ('2008', '下陆区', '291', '420204', '0', '0');
INSERT INTO `area_code` VALUES ('2009', '铁山区', '291', '420205', '0', '0');
INSERT INTO `area_code` VALUES ('2010', '阳新县', '291', '420222', '0', '0');
INSERT INTO `area_code` VALUES ('2011', '大冶市', '291', '420281', '0', '0');
INSERT INTO `area_code` VALUES ('2012', '茅箭区', '292', '420302', '0', '0');
INSERT INTO `area_code` VALUES ('2013', '张湾区', '292', '420303', '0', '0');
INSERT INTO `area_code` VALUES ('2014', '郧阳区', '292', '420304', '0', '0');
INSERT INTO `area_code` VALUES ('2015', '郧西县', '292', '420322', '0', '0');
INSERT INTO `area_code` VALUES ('2016', '竹山县', '292', '420323', '0', '0');
INSERT INTO `area_code` VALUES ('2017', '竹溪县', '292', '420324', '0', '0');
INSERT INTO `area_code` VALUES ('2018', '房县', '292', '420325', '0', '0');
INSERT INTO `area_code` VALUES ('2019', '丹江口市', '292', '420381', '0', '0');
INSERT INTO `area_code` VALUES ('2020', '西陵区', '293', '420502', '0', '0');
INSERT INTO `area_code` VALUES ('2021', '伍家岗区', '293', '420503', '0', '0');
INSERT INTO `area_code` VALUES ('2022', '点军区', '293', '420504', '0', '0');
INSERT INTO `area_code` VALUES ('2023', '虢亭区', '293', '420505', '0', '0');
INSERT INTO `area_code` VALUES ('2024', '夷陵区', '293', '420506', '0', '0');
INSERT INTO `area_code` VALUES ('2025', '远安县', '293', '420525', '0', '0');
INSERT INTO `area_code` VALUES ('2026', '兴山县', '293', '420526', '0', '0');
INSERT INTO `area_code` VALUES ('2027', '秭归县', '293', '420527', '0', '0');
INSERT INTO `area_code` VALUES ('2028', '长阳自治县', '293', '420528', '0', '0');
INSERT INTO `area_code` VALUES ('2029', '五峰自治县', '293', '420529', '0', '0');
INSERT INTO `area_code` VALUES ('2030', '宜都市', '293', '420581', '0', '0');
INSERT INTO `area_code` VALUES ('2031', '当阳市', '293', '420582', '0', '0');
INSERT INTO `area_code` VALUES ('2032', '枝江市', '293', '420583', '0', '0');
INSERT INTO `area_code` VALUES ('2033', '襄城区', '294', '420602', '0', '0');
INSERT INTO `area_code` VALUES ('2034', '樊城区', '294', '420606', '0', '0');
INSERT INTO `area_code` VALUES ('2035', '襄州区', '294', '420607', '0', '0');
INSERT INTO `area_code` VALUES ('2036', '南漳县', '294', '420624', '0', '0');
INSERT INTO `area_code` VALUES ('2037', '谷城县', '294', '420625', '0', '0');
INSERT INTO `area_code` VALUES ('2038', '保康县', '294', '420626', '0', '0');
INSERT INTO `area_code` VALUES ('2039', '老河口市', '294', '420682', '0', '0');
INSERT INTO `area_code` VALUES ('2040', '枣阳市', '294', '420683', '0', '0');
INSERT INTO `area_code` VALUES ('2041', '宜城市', '294', '420684', '0', '0');
INSERT INTO `area_code` VALUES ('2042', '粱子湖区', '295', '420702', '0', '0');
INSERT INTO `area_code` VALUES ('2043', '华容区', '295', '420703', '0', '0');
INSERT INTO `area_code` VALUES ('2044', '鄂城区', '295', '420704', '0', '0');
INSERT INTO `area_code` VALUES ('2045', '东宝区', '296', '420802', '0', '0');
INSERT INTO `area_code` VALUES ('2046', '掇刀区', '296', '420804', '0', '0');
INSERT INTO `area_code` VALUES ('2047', '京山市', '296', '420882', '0', '0');
INSERT INTO `area_code` VALUES ('2048', '沙洋县', '296', '420822', '0', '0');
INSERT INTO `area_code` VALUES ('2049', '钟祥市', '296', '420881', '0', '0');
INSERT INTO `area_code` VALUES ('2050', '孝南区', '297', '420902', '0', '0');
INSERT INTO `area_code` VALUES ('2051', '大悟县', '297', '420922', '0', '0');
INSERT INTO `area_code` VALUES ('2052', '云梦县', '297', '420923', '0', '0');
INSERT INTO `area_code` VALUES ('2053', '应城市', '297', '420981', '0', '0');
INSERT INTO `area_code` VALUES ('2054', '安陆市', '297', '420982', '0', '0');
INSERT INTO `area_code` VALUES ('2055', '汉川市', '297', '420984', '0', '0');
INSERT INTO `area_code` VALUES ('2056', '沙市区', '298', '421002', '0', '0');
INSERT INTO `area_code` VALUES ('2057', '荆州区', '298', '421003', '0', '0');
INSERT INTO `area_code` VALUES ('2058', '公安县', '298', '421022', '0', '0');
INSERT INTO `area_code` VALUES ('2059', '监利县', '298', '421023', '0', '0');
INSERT INTO `area_code` VALUES ('2060', '江陵县', '298', '421024', '0', '0');
INSERT INTO `area_code` VALUES ('2061', '石首市', '298', '421081', '0', '0');
INSERT INTO `area_code` VALUES ('2062', '洪湖市', '298', '421083', '0', '0');
INSERT INTO `area_code` VALUES ('2063', '松滋市', '298', '421087', '0', '0');
INSERT INTO `area_code` VALUES ('2064', '黄州区', '299', '421102', '0', '0');
INSERT INTO `area_code` VALUES ('2065', '团风县', '299', '421121', '0', '0');
INSERT INTO `area_code` VALUES ('2066', '红安县', '299', '421122', '0', '0');
INSERT INTO `area_code` VALUES ('2067', '罗田县', '299', '421123', '0', '0');
INSERT INTO `area_code` VALUES ('2068', '英山县', '299', '421124', '0', '0');
INSERT INTO `area_code` VALUES ('2069', '浠水县', '299', '421125', '0', '0');
INSERT INTO `area_code` VALUES ('2070', '蕲春县', '299', '421126', '0', '0');
INSERT INTO `area_code` VALUES ('2071', '黄梅县', '299', '421127', '0', '0');
INSERT INTO `area_code` VALUES ('2072', '麻城市', '299', '421181', '0', '0');
INSERT INTO `area_code` VALUES ('2073', '武穴市', '299', '421182', '0', '0');
INSERT INTO `area_code` VALUES ('2074', '咸安区', '300', '421202', '0', '0');
INSERT INTO `area_code` VALUES ('2075', '嘉鱼县', '300', '421221', '0', '0');
INSERT INTO `area_code` VALUES ('2076', '通城县', '300', '421222', '0', '0');
INSERT INTO `area_code` VALUES ('2077', '崇阳县', '300', '421223', '0', '0');
INSERT INTO `area_code` VALUES ('2078', '通山县', '300', '421224', '0', '0');
INSERT INTO `area_code` VALUES ('2079', '赤壁市', '300', '421281', '0', '0');
INSERT INTO `area_code` VALUES ('2080', '曾都区', '301', '421303', '0', '0');
INSERT INTO `area_code` VALUES ('2081', '随县', '301', '421321', '0', '0');
INSERT INTO `area_code` VALUES ('2082', '广水市', '301', '421381', '0', '0');
INSERT INTO `area_code` VALUES ('2083', '恩施市', '302', '422801', '0', '0');
INSERT INTO `area_code` VALUES ('2084', '利川市', '302', '422802', '0', '0');
INSERT INTO `area_code` VALUES ('2085', '建始县', '302', '422822', '0', '0');
INSERT INTO `area_code` VALUES ('2086', '巴东县', '302', '422823', '0', '0');
INSERT INTO `area_code` VALUES ('2087', '宣恩县', '302', '422825', '0', '0');
INSERT INTO `area_code` VALUES ('2088', '咸丰县', '302', '422826', '0', '0');
INSERT INTO `area_code` VALUES ('2089', '来凤县', '302', '422827', '0', '0');
INSERT INTO `area_code` VALUES ('2090', '鹤峰县', '302', '422828', '0', '0');
INSERT INTO `area_code` VALUES ('2091', '芙蓉区', '307', '430102', '0', '0');
INSERT INTO `area_code` VALUES ('2092', '天心区', '307', '430103', '0', '0');
INSERT INTO `area_code` VALUES ('2093', '岳麓区', '307', '430104', '0', '0');
INSERT INTO `area_code` VALUES ('2094', '开福区', '307', '430105', '0', '0');
INSERT INTO `area_code` VALUES ('2095', '雨花区', '307', '430111', '0', '0');
INSERT INTO `area_code` VALUES ('2096', '望城区', '307', '430112', '0', '0');
INSERT INTO `area_code` VALUES ('2097', '长沙县', '307', '430121', '0', '0');
INSERT INTO `area_code` VALUES ('2098', '宁乡市', '307', '430182', '0', '0');
INSERT INTO `area_code` VALUES ('2099', '浏阳市', '307', '430181', '0', '0');
INSERT INTO `area_code` VALUES ('2100', '荷塘区', '308', '430202', '0', '0');
INSERT INTO `area_code` VALUES ('2101', '芦淞区', '308', '430203', '0', '0');
INSERT INTO `area_code` VALUES ('2102', '石峰区', '308', '430204', '0', '0');
INSERT INTO `area_code` VALUES ('2103', '天元区', '308', '430211', '0', '0');
INSERT INTO `area_code` VALUES ('2104', '渌口区', '308', '430212', '0', '0');
INSERT INTO `area_code` VALUES ('2105', '攸县', '308', '430223', '0', '0');
INSERT INTO `area_code` VALUES ('2106', '茶陵县', '308', '430224', '0', '0');
INSERT INTO `area_code` VALUES ('2107', '炎陵县', '308', '430225', '0', '0');
INSERT INTO `area_code` VALUES ('2108', '醴陵市', '308', '430281', '0', '0');
INSERT INTO `area_code` VALUES ('2109', '雨湖区', '309', '430302', '0', '0');
INSERT INTO `area_code` VALUES ('2110', '岳塘区', '309', '430304', '0', '0');
INSERT INTO `area_code` VALUES ('2111', '湘潭县', '309', '430321', '0', '0');
INSERT INTO `area_code` VALUES ('2112', '湘乡市', '309', '430381', '0', '0');
INSERT INTO `area_code` VALUES ('2113', '韶山市', '309', '430382', '0', '0');
INSERT INTO `area_code` VALUES ('2114', '珠晖区', '310', '430405', '0', '0');
INSERT INTO `area_code` VALUES ('2115', '雁峰区', '310', '430406', '0', '0');
INSERT INTO `area_code` VALUES ('2116', '石鼓区', '310', '430407', '0', '0');
INSERT INTO `area_code` VALUES ('2117', '蒸湘区', '310', '430408', '0', '0');
INSERT INTO `area_code` VALUES ('2118', '南岳区', '310', '430412', '0', '0');
INSERT INTO `area_code` VALUES ('2119', '衡阳县', '310', '430421', '0', '0');
INSERT INTO `area_code` VALUES ('2120', '衡南县', '310', '430422', '0', '0');
INSERT INTO `area_code` VALUES ('2121', '衡山县', '310', '430423', '0', '0');
INSERT INTO `area_code` VALUES ('2122', '衡东县', '310', '430424', '0', '0');
INSERT INTO `area_code` VALUES ('2123', '祁东县', '310', '430426', '0', '0');
INSERT INTO `area_code` VALUES ('2124', '耒阳市', '310', '430481', '0', '0');
INSERT INTO `area_code` VALUES ('2125', '常宁市', '310', '430482', '0', '0');
INSERT INTO `area_code` VALUES ('2126', '双清区', '311', '430502', '0', '0');
INSERT INTO `area_code` VALUES ('2127', '大祥区', '311', '430503', '0', '0');
INSERT INTO `area_code` VALUES ('2128', '北塔区', '311', '430511', '0', '0');
INSERT INTO `area_code` VALUES ('2129', '邵东市', '311', '430521', '0', '0');
INSERT INTO `area_code` VALUES ('2130', '新邵县', '311', '430582', '0', '0');
INSERT INTO `area_code` VALUES ('2131', '邵阳县', '311', '430523', '0', '0');
INSERT INTO `area_code` VALUES ('2132', '隆回县', '311', '430524', '0', '0');
INSERT INTO `area_code` VALUES ('2133', '洞口县', '311', '430525', '0', '0');
INSERT INTO `area_code` VALUES ('2134', '绥宁县', '311', '430527', '0', '0');
INSERT INTO `area_code` VALUES ('2135', '新宁县', '311', '430528', '0', '0');
INSERT INTO `area_code` VALUES ('2136', '城步自治县', '311', '430529', '0', '0');
INSERT INTO `area_code` VALUES ('2137', '武冈市', '311', '430581', '0', '0');
INSERT INTO `area_code` VALUES ('2138', '岳阳楼区', '312', '430602', '0', '0');
INSERT INTO `area_code` VALUES ('2139', '云溪区', '312', '430603', '0', '0');
INSERT INTO `area_code` VALUES ('2140', '君山区', '312', '430611', '0', '0');
INSERT INTO `area_code` VALUES ('2141', '岳阳县', '312', '430621', '0', '0');
INSERT INTO `area_code` VALUES ('2142', '华容县', '312', '430623', '0', '0');
INSERT INTO `area_code` VALUES ('2143', '湘阴县', '312', '430624', '0', '0');
INSERT INTO `area_code` VALUES ('2144', '平江县', '312', '430626', '0', '0');
INSERT INTO `area_code` VALUES ('2145', '汨罗市', '312', '430681', '0', '0');
INSERT INTO `area_code` VALUES ('2146', '临湘市', '312', '430682', '0', '0');
INSERT INTO `area_code` VALUES ('2147', '武陵区', '313', '430702', '0', '0');
INSERT INTO `area_code` VALUES ('2148', '鼎城区', '313', '430703', '0', '0');
INSERT INTO `area_code` VALUES ('2149', '安乡县', '313', '430721', '0', '0');
INSERT INTO `area_code` VALUES ('2150', '汉寿县', '313', '430722', '0', '0');
INSERT INTO `area_code` VALUES ('2151', '澧县', '313', '430723', '0', '0');
INSERT INTO `area_code` VALUES ('2152', '临澧县', '313', '430724', '0', '0');
INSERT INTO `area_code` VALUES ('2153', '桃源县', '313', '430725', '0', '0');
INSERT INTO `area_code` VALUES ('2154', '石门县', '313', '430726', '0', '0');
INSERT INTO `area_code` VALUES ('2155', '津市市', '313', '430781', '0', '0');
INSERT INTO `area_code` VALUES ('2156', '永定区', '314', '430802', '0', '0');
INSERT INTO `area_code` VALUES ('2157', '武陵源区', '314', '430811', '0', '0');
INSERT INTO `area_code` VALUES ('2158', '慈利县', '314', '430821', '0', '0');
INSERT INTO `area_code` VALUES ('2159', '桑植县', '314', '430822', '0', '0');
INSERT INTO `area_code` VALUES ('2160', '资阳区', '315', '430902', '0', '0');
INSERT INTO `area_code` VALUES ('2161', '赫山区', '315', '430903', '0', '0');
INSERT INTO `area_code` VALUES ('2162', '南县', '315', '430921', '0', '0');
INSERT INTO `area_code` VALUES ('2163', '桃江县', '315', '430922', '0', '0');
INSERT INTO `area_code` VALUES ('2164', '安化县', '315', '430923', '0', '0');
INSERT INTO `area_code` VALUES ('2165', '沅江市', '315', '430981', '0', '0');
INSERT INTO `area_code` VALUES ('2166', '北湖区', '316', '431002', '0', '0');
INSERT INTO `area_code` VALUES ('2167', '苏仙区', '316', '431003', '0', '0');
INSERT INTO `area_code` VALUES ('2168', '桂阳县', '316', '431021', '0', '0');
INSERT INTO `area_code` VALUES ('2169', '宜章县', '316', '431022', '0', '0');
INSERT INTO `area_code` VALUES ('2170', '永兴县', '316', '431023', '0', '0');
INSERT INTO `area_code` VALUES ('2171', '嘉禾县', '316', '431024', '0', '0');
INSERT INTO `area_code` VALUES ('2172', '临武县', '316', '431025', '0', '0');
INSERT INTO `area_code` VALUES ('2173', '汝城县', '316', '431026', '0', '0');
INSERT INTO `area_code` VALUES ('2174', '桂东县', '316', '431027', '0', '0');
INSERT INTO `area_code` VALUES ('2175', '安仁县', '316', '431028', '0', '0');
INSERT INTO `area_code` VALUES ('2176', '资兴市', '316', '431081', '0', '0');
INSERT INTO `area_code` VALUES ('2177', '零陵区', '317', '431102', '0', '0');
INSERT INTO `area_code` VALUES ('2178', '冷水滩区', '317', '431103', '0', '0');
INSERT INTO `area_code` VALUES ('2179', '祁阳县', '317', '431121', '0', '0');
INSERT INTO `area_code` VALUES ('2180', '东安县', '317', '431122', '0', '0');
INSERT INTO `area_code` VALUES ('2181', '双牌县', '317', '431123', '0', '0');
INSERT INTO `area_code` VALUES ('2182', '道县', '317', '431124', '0', '0');
INSERT INTO `area_code` VALUES ('2183', '江永县', '317', '431125', '0', '0');
INSERT INTO `area_code` VALUES ('2184', '宁远县', '317', '431126', '0', '0');
INSERT INTO `area_code` VALUES ('2185', '蓝山县', '317', '431127', '0', '0');
INSERT INTO `area_code` VALUES ('2186', '新田县', '317', '431128', '0', '0');
INSERT INTO `area_code` VALUES ('2187', '江华自治县', '317', '431129', '0', '0');
INSERT INTO `area_code` VALUES ('2188', '鹤城区', '318', '431202', '0', '0');
INSERT INTO `area_code` VALUES ('2189', '中方县', '318', '431221', '0', '0');
INSERT INTO `area_code` VALUES ('2190', '沅陵县', '318', '431222', '0', '0');
INSERT INTO `area_code` VALUES ('2191', '辰溪县', '318', '431223', '0', '0');
INSERT INTO `area_code` VALUES ('2192', '溆浦县', '318', '431224', '0', '0');
INSERT INTO `area_code` VALUES ('2193', '会同县', '318', '431225', '0', '0');
INSERT INTO `area_code` VALUES ('2194', '麻阳自治县', '318', '431226', '0', '0');
INSERT INTO `area_code` VALUES ('2195', '新晃自治县', '318', '431227', '0', '0');
INSERT INTO `area_code` VALUES ('2196', '芷江自治县', '318', '431228', '0', '0');
INSERT INTO `area_code` VALUES ('2197', '靖州自治县', '318', '431229', '0', '0');
INSERT INTO `area_code` VALUES ('2198', '通道自治县', '318', '431230', '0', '0');
INSERT INTO `area_code` VALUES ('2199', '洪江市', '318', '431281', '0', '0');
INSERT INTO `area_code` VALUES ('2200', '娄星区', '319', '431302', '0', '0');
INSERT INTO `area_code` VALUES ('2201', '双峰县', '319', '431321', '0', '0');
INSERT INTO `area_code` VALUES ('2202', '新化县', '319', '431322', '0', '0');
INSERT INTO `area_code` VALUES ('2203', '冷水江市', '319', '431381', '0', '0');
INSERT INTO `area_code` VALUES ('2204', '涟源市', '319', '431382', '0', '0');
INSERT INTO `area_code` VALUES ('2205', '吉首市', '320', '433101', '0', '0');
INSERT INTO `area_code` VALUES ('2206', '泸溪县', '320', '433122', '0', '0');
INSERT INTO `area_code` VALUES ('2207', '凤凰县', '320', '433123', '0', '0');
INSERT INTO `area_code` VALUES ('2208', '花垣县', '320', '433124', '0', '0');
INSERT INTO `area_code` VALUES ('2209', '保靖县', '320', '433125', '0', '0');
INSERT INTO `area_code` VALUES ('2210', '古丈县', '320', '433126', '0', '0');
INSERT INTO `area_code` VALUES ('2211', '永顺县', '320', '433127', '0', '0');
INSERT INTO `area_code` VALUES ('2212', '龙山县', '320', '433130', '0', '0');
INSERT INTO `area_code` VALUES ('2213', '荔湾区', '321', '440103', '0', '0');
INSERT INTO `area_code` VALUES ('2214', '越秀区', '321', '440104', '0', '0');
INSERT INTO `area_code` VALUES ('2215', '海珠区', '321', '440105', '0', '0');
INSERT INTO `area_code` VALUES ('2216', '天河区', '321', '440106', '0', '0');
INSERT INTO `area_code` VALUES ('2217', '白云区', '321', '440111', '0', '0');
INSERT INTO `area_code` VALUES ('2218', '黄埔区', '321', '440112', '0', '0');
INSERT INTO `area_code` VALUES ('2219', '番禺区', '321', '440113', '0', '0');
INSERT INTO `area_code` VALUES ('2220', '花都区', '321', '440114', '0', '0');
INSERT INTO `area_code` VALUES ('2221', '南沙区', '321', '440115', '0', '0');
INSERT INTO `area_code` VALUES ('2223', '增城区', '321', '440118', '0', '0');
INSERT INTO `area_code` VALUES ('2224', '从化区', '321', '440117', '0', '0');
INSERT INTO `area_code` VALUES ('2225', '武江区', '322', '440203', '0', '0');
INSERT INTO `area_code` VALUES ('2226', '浈江区', '322', '440204', '0', '0');
INSERT INTO `area_code` VALUES ('2227', '曲江区', '322', '440205', '0', '0');
INSERT INTO `area_code` VALUES ('2228', '始兴县', '322', '440222', '0', '0');
INSERT INTO `area_code` VALUES ('2229', '仁化县', '322', '440224', '0', '0');
INSERT INTO `area_code` VALUES ('2230', '翁源县', '322', '440229', '0', '0');
INSERT INTO `area_code` VALUES ('2231', '乳源自治县', '322', '440232', '0', '0');
INSERT INTO `area_code` VALUES ('2232', '新丰县', '322', '440233', '0', '0');
INSERT INTO `area_code` VALUES ('2233', '乐昌市', '322', '440281', '0', '0');
INSERT INTO `area_code` VALUES ('2234', '南雄市', '322', '440282', '0', '0');
INSERT INTO `area_code` VALUES ('2235', '罗湖区', '323', '440303', '0', '0');
INSERT INTO `area_code` VALUES ('2236', '福田区', '323', '440304', '0', '0');
INSERT INTO `area_code` VALUES ('2237', '南山区', '323', '440305', '0', '0');
INSERT INTO `area_code` VALUES ('2238', '宝安区', '323', '440306', '0', '0');
INSERT INTO `area_code` VALUES ('2239', '龙岗区', '323', '440307', '0', '0');
INSERT INTO `area_code` VALUES ('2240', '盐田区', '323', '440308', '0', '0');
INSERT INTO `area_code` VALUES ('2241', '香洲区', '324', '440402', '0', '0');
INSERT INTO `area_code` VALUES ('2242', '斗门区', '324', '440403', '0', '0');
INSERT INTO `area_code` VALUES ('2243', '金湾区', '324', '440404', '0', '0');
INSERT INTO `area_code` VALUES ('2244', '龙湖区', '325', '440507', '0', '0');
INSERT INTO `area_code` VALUES ('2245', '金平区', '325', '440511', '0', '0');
INSERT INTO `area_code` VALUES ('2246', '濠江区', '325', '440512', '0', '0');
INSERT INTO `area_code` VALUES ('2247', '潮阳区', '325', '440513', '0', '0');
INSERT INTO `area_code` VALUES ('2248', '潮南区', '325', '440514', '0', '0');
INSERT INTO `area_code` VALUES ('2249', '澄海区', '325', '440515', '0', '0');
INSERT INTO `area_code` VALUES ('2250', '南澳县', '325', '440523', '0', '0');
INSERT INTO `area_code` VALUES ('2251', '禅城区', '326', '440604', '0', '0');
INSERT INTO `area_code` VALUES ('2252', '南海区', '326', '440605', '0', '0');
INSERT INTO `area_code` VALUES ('2253', '顺德区', '326', '440606', '0', '0');
INSERT INTO `area_code` VALUES ('2254', '三水区', '326', '440607', '0', '0');
INSERT INTO `area_code` VALUES ('2255', '高明区', '326', '440608', '0', '0');
INSERT INTO `area_code` VALUES ('2256', '蓬江区', '327', '440703', '0', '0');
INSERT INTO `area_code` VALUES ('2257', '江海区', '327', '440704', '0', '0');
INSERT INTO `area_code` VALUES ('2258', '新会区', '327', '440705', '0', '0');
INSERT INTO `area_code` VALUES ('2259', '台山市', '327', '440781', '0', '0');
INSERT INTO `area_code` VALUES ('2260', '开平市', '327', '440783', '0', '0');
INSERT INTO `area_code` VALUES ('2261', '鹤山市', '327', '440784', '0', '0');
INSERT INTO `area_code` VALUES ('2262', '恩平市', '327', '440785', '0', '0');
INSERT INTO `area_code` VALUES ('2263', '赤坎区', '328', '440802', '0', '0');
INSERT INTO `area_code` VALUES ('2264', '霞山区', '328', '440803', '0', '0');
INSERT INTO `area_code` VALUES ('2265', '坡头区', '328', '440804', '0', '0');
INSERT INTO `area_code` VALUES ('2266', '麻章区', '328', '440811', '0', '0');
INSERT INTO `area_code` VALUES ('2267', '遂溪县', '328', '440823', '0', '0');
INSERT INTO `area_code` VALUES ('2268', '徐闻县', '328', '440825', '0', '0');
INSERT INTO `area_code` VALUES ('2269', '廉江市', '328', '440881', '0', '0');
INSERT INTO `area_code` VALUES ('2270', '雷州市', '328', '440882', '0', '0');
INSERT INTO `area_code` VALUES ('2271', '吴川市', '328', '440883', '0', '0');
INSERT INTO `area_code` VALUES ('2272', '茂南区', '329', '440902', '0', '0');
INSERT INTO `area_code` VALUES ('2274', '电白区', '329', '440904', '0', '0');
INSERT INTO `area_code` VALUES ('2275', '高州市', '329', '440981', '0', '0');
INSERT INTO `area_code` VALUES ('2276', '化州市', '329', '440982', '0', '0');
INSERT INTO `area_code` VALUES ('2277', '信宜市', '329', '440983', '0', '0');
INSERT INTO `area_code` VALUES ('2278', '端州区', '330', '441202', '0', '0');
INSERT INTO `area_code` VALUES ('2279', '鼎湖区', '330', '441203', '0', '0');
INSERT INTO `area_code` VALUES ('2280', '广宁县', '330', '441223', '0', '0');
INSERT INTO `area_code` VALUES ('2281', '怀集县', '330', '441224', '0', '0');
INSERT INTO `area_code` VALUES ('2282', '封开县', '330', '441225', '0', '0');
INSERT INTO `area_code` VALUES ('2283', '德庆县', '330', '441226', '0', '0');
INSERT INTO `area_code` VALUES ('2284', '高要区', '330', '441283', '0', '0');
INSERT INTO `area_code` VALUES ('2285', '四会市', '330', '441284', '0', '0');
INSERT INTO `area_code` VALUES ('2286', '惠城区', '331', '441302', '0', '0');
INSERT INTO `area_code` VALUES ('2287', '惠阳区', '331', '441303', '0', '0');
INSERT INTO `area_code` VALUES ('2288', '博罗县', '331', '441322', '0', '0');
INSERT INTO `area_code` VALUES ('2289', '惠东县', '331', '441323', '0', '0');
INSERT INTO `area_code` VALUES ('2290', '龙门县', '331', '441324', '0', '0');
INSERT INTO `area_code` VALUES ('2291', '梅江区', '332', '441402', '0', '0');
INSERT INTO `area_code` VALUES ('2292', '梅县区', '332', '441403', '0', '0');
INSERT INTO `area_code` VALUES ('2293', '大埔县', '332', '441422', '0', '0');
INSERT INTO `area_code` VALUES ('2294', '丰顺县', '332', '441423', '0', '0');
INSERT INTO `area_code` VALUES ('2295', '五华县', '332', '441424', '0', '0');
INSERT INTO `area_code` VALUES ('2296', '平远县', '332', '441426', '0', '0');
INSERT INTO `area_code` VALUES ('2297', '蕉岭县', '332', '441427', '0', '0');
INSERT INTO `area_code` VALUES ('2298', '兴宁市', '332', '441481', '0', '0');
INSERT INTO `area_code` VALUES ('2299', '城区区', '333', '441502', '0', '0');
INSERT INTO `area_code` VALUES ('2300', '海丰县', '333', '441521', '0', '0');
INSERT INTO `area_code` VALUES ('2301', '陆河县', '333', '441523', '0', '0');
INSERT INTO `area_code` VALUES ('2302', '陆丰市', '333', '441581', '0', '0');
INSERT INTO `area_code` VALUES ('2303', '源城区', '334', '441602', '0', '0');
INSERT INTO `area_code` VALUES ('2304', '紫金县', '334', '441621', '0', '0');
INSERT INTO `area_code` VALUES ('2305', '龙川县', '334', '441622', '0', '0');
INSERT INTO `area_code` VALUES ('2306', '连平县', '334', '441623', '0', '0');
INSERT INTO `area_code` VALUES ('2307', '和平县', '334', '441624', '0', '0');
INSERT INTO `area_code` VALUES ('2308', '东源县', '334', '441625', '0', '0');
INSERT INTO `area_code` VALUES ('2309', '江城区', '335', '441702', '0', '0');
INSERT INTO `area_code` VALUES ('2310', '阳西县', '335', '441721', '0', '0');
INSERT INTO `area_code` VALUES ('2311', '阳东区', '335', '441723', '0', '0');
INSERT INTO `area_code` VALUES ('2312', '阳春市', '335', '441781', '0', '0');
INSERT INTO `area_code` VALUES ('2313', '清城区', '336', '441802', '0', '0');
INSERT INTO `area_code` VALUES ('2314', '佛冈县', '336', '441821', '0', '0');
INSERT INTO `area_code` VALUES ('2315', '阳山县', '336', '441823', '0', '0');
INSERT INTO `area_code` VALUES ('2316', '连山自治县', '336', '441825', '0', '0');
INSERT INTO `area_code` VALUES ('2317', '连南自治县', '336', '441826', '0', '0');
INSERT INTO `area_code` VALUES ('2318', '清新县', '336', '441827', '0', '0');
INSERT INTO `area_code` VALUES ('2319', '英德市', '336', '441881', '0', '0');
INSERT INTO `area_code` VALUES ('2320', '连州市', '336', '441882', '0', '0');
INSERT INTO `area_code` VALUES ('2321', '湘桥区', '339', '445102', '0', '0');
INSERT INTO `area_code` VALUES ('2322', '潮安区', '339', '445121', '0', '0');
INSERT INTO `area_code` VALUES ('2323', '饶平县', '339', '445122', '0', '0');
INSERT INTO `area_code` VALUES ('2324', '榕城区', '340', '445202', '0', '0');
INSERT INTO `area_code` VALUES ('2325', '揭东县', '340', '445221', '0', '0');
INSERT INTO `area_code` VALUES ('2326', '揭西县', '340', '445222', '0', '0');
INSERT INTO `area_code` VALUES ('2327', '惠来县', '340', '445224', '0', '0');
INSERT INTO `area_code` VALUES ('2328', '普宁市', '340', '445281', '0', '0');
INSERT INTO `area_code` VALUES ('2329', '云城区', '341', '445302', '0', '0');
INSERT INTO `area_code` VALUES ('2330', '新兴县', '341', '445321', '0', '0');
INSERT INTO `area_code` VALUES ('2331', '郁南县', '341', '445322', '0', '0');
INSERT INTO `area_code` VALUES ('2332', '云安区', '341', '445302', '0', '0');
INSERT INTO `area_code` VALUES ('2333', '罗定市', '341', '445381', '0', '0');
INSERT INTO `area_code` VALUES ('2334', '兴宁区', '342', '450102', '0', '0');
INSERT INTO `area_code` VALUES ('2335', '青秀区', '342', '450103', '0', '0');
INSERT INTO `area_code` VALUES ('2336', '江南区', '342', '450105', '0', '0');
INSERT INTO `area_code` VALUES ('2337', '西乡塘区', '342', '450107', '0', '0');
INSERT INTO `area_code` VALUES ('2338', '良庆区', '342', '450108', '0', '0');
INSERT INTO `area_code` VALUES ('2339', '邕宁区', '342', '450109', '0', '0');
INSERT INTO `area_code` VALUES ('2340', '武鸣区', '342', '450122', '0', '0');
INSERT INTO `area_code` VALUES ('2341', '隆安县', '342', '450123', '0', '0');
INSERT INTO `area_code` VALUES ('2342', '马山县', '342', '450124', '0', '0');
INSERT INTO `area_code` VALUES ('2343', '上林县', '342', '450125', '0', '0');
INSERT INTO `area_code` VALUES ('2344', '宾阳县', '342', '450126', '0', '0');
INSERT INTO `area_code` VALUES ('2345', '横县', '342', '450127', '0', '0');
INSERT INTO `area_code` VALUES ('2346', '城中区', '343', '450202', '0', '0');
INSERT INTO `area_code` VALUES ('2347', '鱼峰区', '343', '450203', '0', '0');
INSERT INTO `area_code` VALUES ('2348', '柳南区', '343', '450204', '0', '0');
INSERT INTO `area_code` VALUES ('2349', '柳北区', '343', '450205', '0', '0');
INSERT INTO `area_code` VALUES ('2350', '柳江区', '343', '450206', '0', '0');
INSERT INTO `area_code` VALUES ('2351', '柳城县', '343', '450222', '0', '0');
INSERT INTO `area_code` VALUES ('2352', '鹿寨县', '343', '450223', '0', '0');
INSERT INTO `area_code` VALUES ('2353', '融安县', '343', '450224', '0', '0');
INSERT INTO `area_code` VALUES ('2354', '融水自治县', '343', '450225', '0', '0');
INSERT INTO `area_code` VALUES ('2355', '三江自治县', '343', '450226', '0', '0');
INSERT INTO `area_code` VALUES ('2356', '秀峰区', '344', '450302', '0', '0');
INSERT INTO `area_code` VALUES ('2357', '叠彩区', '344', '450303', '0', '0');
INSERT INTO `area_code` VALUES ('2358', '象山区', '344', '450304', '0', '0');
INSERT INTO `area_code` VALUES ('2359', '七星区', '344', '450305', '0', '0');
INSERT INTO `area_code` VALUES ('2360', '雁山区', '344', '450311', '0', '0');
INSERT INTO `area_code` VALUES ('2361', '阳朔县', '344', '450321', '0', '0');
INSERT INTO `area_code` VALUES ('2362', '临桂区', '344', '450322', '0', '0');
INSERT INTO `area_code` VALUES ('2363', '灵川县', '344', '450323', '0', '0');
INSERT INTO `area_code` VALUES ('2364', '全州县', '344', '450324', '0', '0');
INSERT INTO `area_code` VALUES ('2365', '兴安县', '344', '450325', '0', '0');
INSERT INTO `area_code` VALUES ('2366', '永福县', '344', '450326', '0', '0');
INSERT INTO `area_code` VALUES ('2367', '灌阳县', '344', '450327', '0', '0');
INSERT INTO `area_code` VALUES ('2368', '龙胜自治县', '344', '450328', '0', '0');
INSERT INTO `area_code` VALUES ('2369', '资源县', '344', '450329', '0', '0');
INSERT INTO `area_code` VALUES ('2370', '平乐县', '344', '450330', '0', '0');
INSERT INTO `area_code` VALUES ('2371', '荔浦市', '344', '450331', '0', '0');
INSERT INTO `area_code` VALUES ('2372', '恭城自治县', '344', '450332', '0', '0');
INSERT INTO `area_code` VALUES ('2373', '龙圩区', '345', null, '0', '0');
INSERT INTO `area_code` VALUES ('2374', '万秀区', '345', '450403', '0', '0');
INSERT INTO `area_code` VALUES ('2375', '长洲区', '345', '450405', '0', '0');
INSERT INTO `area_code` VALUES ('2376', '苍梧县', '345', '450421', '0', '0');
INSERT INTO `area_code` VALUES ('2377', '藤县', '345', '450422', '0', '0');
INSERT INTO `area_code` VALUES ('2378', '蒙山县', '345', '450423', '0', '0');
INSERT INTO `area_code` VALUES ('2379', '岑溪市', '345', '450481', '0', '0');
INSERT INTO `area_code` VALUES ('2380', '海城区', '346', '450502', '0', '0');
INSERT INTO `area_code` VALUES ('2381', '银海区', '346', '450503', '0', '0');
INSERT INTO `area_code` VALUES ('2382', '铁山港区', '346', '450512', '0', '0');
INSERT INTO `area_code` VALUES ('2383', '合浦县', '346', '450521', '0', '0');
INSERT INTO `area_code` VALUES ('2384', '港口区', '347', '450602', '0', '0');
INSERT INTO `area_code` VALUES ('2385', '防城区', '347', '450603', '0', '0');
INSERT INTO `area_code` VALUES ('2386', '上思县', '347', '450621', '0', '0');
INSERT INTO `area_code` VALUES ('2387', '东兴市', '347', '450681', '0', '0');
INSERT INTO `area_code` VALUES ('2388', '钦南区', '348', '450702', '0', '0');
INSERT INTO `area_code` VALUES ('2389', '钦北区', '348', '450703', '0', '0');
INSERT INTO `area_code` VALUES ('2390', '灵山县', '348', '450721', '0', '0');
INSERT INTO `area_code` VALUES ('2391', '浦北县', '348', '450722', '0', '0');
INSERT INTO `area_code` VALUES ('2392', '港北区', '349', '450802', '0', '0');
INSERT INTO `area_code` VALUES ('2393', '港南区', '349', '450803', '0', '0');
INSERT INTO `area_code` VALUES ('2394', '覃塘区', '349', '450804', '0', '0');
INSERT INTO `area_code` VALUES ('2395', '桂平市', '349', '450821', '0', '0');
INSERT INTO `area_code` VALUES ('2396', '平南县', '349', '450881', '0', '0');
INSERT INTO `area_code` VALUES ('2397', '玉州区', '350', '450902', '0', '0');
INSERT INTO `area_code` VALUES ('2398', '容县', '350', '450921', '0', '0');
INSERT INTO `area_code` VALUES ('2399', '陆川县', '350', '450922', '0', '0');
INSERT INTO `area_code` VALUES ('2400', '博白县', '350', '450923', '0', '0');
INSERT INTO `area_code` VALUES ('2401', '兴业县', '350', '450924', '0', '0');
INSERT INTO `area_code` VALUES ('2402', '北流市', '350', '450981', '0', '0');
INSERT INTO `area_code` VALUES ('2403', '右江区', '351', '451002', '0', '0');
INSERT INTO `area_code` VALUES ('2404', '田阳区', '351', '451003', '0', '0');
INSERT INTO `area_code` VALUES ('2405', '田东县', '351', '451022', '0', '0');
INSERT INTO `area_code` VALUES ('2406', '平果市', '351', '451082', '0', '0');
INSERT INTO `area_code` VALUES ('2407', '德保县', '351', '451024', '0', '0');
INSERT INTO `area_code` VALUES ('2408', '靖西市', '351', '451081', '0', '0');
INSERT INTO `area_code` VALUES ('2409', '那坡县', '351', '451026', '0', '0');
INSERT INTO `area_code` VALUES ('2410', '凌云县', '351', '451027', '0', '0');
INSERT INTO `area_code` VALUES ('2411', '乐业县', '351', '451028', '0', '0');
INSERT INTO `area_code` VALUES ('2412', '田林县', '351', '451029', '0', '0');
INSERT INTO `area_code` VALUES ('2413', '西林县', '351', '451030', '0', '0');
INSERT INTO `area_code` VALUES ('2414', '隆林自治县', '351', '451031', '0', '0');
INSERT INTO `area_code` VALUES ('2415', '八步区', '352', '451102', '0', '0');
INSERT INTO `area_code` VALUES ('2416', '昭平县', '352', '451121', '0', '0');
INSERT INTO `area_code` VALUES ('2417', '钟山县', '352', '451122', '0', '0');
INSERT INTO `area_code` VALUES ('2418', '富川自治县', '352', '451123', '0', '0');
INSERT INTO `area_code` VALUES ('2419', '金城江区', '353', '451202', '0', '0');
INSERT INTO `area_code` VALUES ('2420', '南丹县', '353', '451221', '0', '0');
INSERT INTO `area_code` VALUES ('2421', '天峨县', '353', '451222', '0', '0');
INSERT INTO `area_code` VALUES ('2422', '凤山县', '353', '451223', '0', '0');
INSERT INTO `area_code` VALUES ('2423', '东兰县', '353', '451224', '0', '0');
INSERT INTO `area_code` VALUES ('2424', '罗城自治县', '353', '451225', '0', '0');
INSERT INTO `area_code` VALUES ('2425', '环江自治县', '353', '451226', '0', '0');
INSERT INTO `area_code` VALUES ('2426', '巴马自治县', '353', '451227', '0', '0');
INSERT INTO `area_code` VALUES ('2427', '都安自治县', '353', '451228', '0', '0');
INSERT INTO `area_code` VALUES ('2428', '大化自治县', '353', '451229', '0', '0');
INSERT INTO `area_code` VALUES ('2429', '宜州区', '353', '451203', '0', '0');
INSERT INTO `area_code` VALUES ('2430', '兴宾区', '354', '451302', '0', '0');
INSERT INTO `area_code` VALUES ('2431', '忻城县', '354', '451321', '0', '0');
INSERT INTO `area_code` VALUES ('2432', '象州县', '354', '451322', '0', '0');
INSERT INTO `area_code` VALUES ('2433', '武宣县', '354', '451323', '0', '0');
INSERT INTO `area_code` VALUES ('2434', '金秀自治县', '354', '451324', '0', '0');
INSERT INTO `area_code` VALUES ('2435', '合山市', '354', '451381', '0', '0');
INSERT INTO `area_code` VALUES ('2436', '江州区', '355', '451402', '0', '0');
INSERT INTO `area_code` VALUES ('2437', '扶绥县', '355', '451421', '0', '0');
INSERT INTO `area_code` VALUES ('2438', '宁明县', '355', '451422', '0', '0');
INSERT INTO `area_code` VALUES ('2439', '龙州县', '355', '451423', '0', '0');
INSERT INTO `area_code` VALUES ('2440', '大新县', '355', '451424', '0', '0');
INSERT INTO `area_code` VALUES ('2441', '天等县', '355', '451425', '0', '0');
INSERT INTO `area_code` VALUES ('2442', '凭祥市', '355', '451481', '0', '0');
INSERT INTO `area_code` VALUES ('2443', '秀英区', '356', '460105', '0', '0');
INSERT INTO `area_code` VALUES ('2444', '龙华区', '356', '460106', '0', '0');
INSERT INTO `area_code` VALUES ('2445', '琼山区', '356', '460107', '0', '0');
INSERT INTO `area_code` VALUES ('2446', '美兰区', '356', '460108', '0', '0');
INSERT INTO `area_code` VALUES ('2447', '锦江区', '375', '510104', '0', '0');
INSERT INTO `area_code` VALUES ('2448', '青羊区', '375', '510105', '0', '0');
INSERT INTO `area_code` VALUES ('2449', '金牛区', '375', '510106', '0', '0');
INSERT INTO `area_code` VALUES ('2450', '武侯区', '375', '510107', '0', '0');
INSERT INTO `area_code` VALUES ('2451', '成华区', '375', '510108', '0', '0');
INSERT INTO `area_code` VALUES ('2452', '龙泉驿区', '375', '510112', '0', '0');
INSERT INTO `area_code` VALUES ('2453', '青白江区', '375', '510113', '0', '0');
INSERT INTO `area_code` VALUES ('2454', '新都区', '375', '510114', '0', '0');
INSERT INTO `area_code` VALUES ('2455', '温江区', '375', '510115', '0', '0');
INSERT INTO `area_code` VALUES ('2456', '金堂县', '375', '510121', '0', '0');
INSERT INTO `area_code` VALUES ('2457', '双流区', '375', '510116', '0', '0');
INSERT INTO `area_code` VALUES ('2458', '郫都区', '375', '510117', '0', '0');
INSERT INTO `area_code` VALUES ('2459', '大邑县', '375', '510129', '0', '0');
INSERT INTO `area_code` VALUES ('2460', '蒲江县', '375', '510131', '0', '0');
INSERT INTO `area_code` VALUES ('2461', '新津县', '375', '510132', '0', '0');
INSERT INTO `area_code` VALUES ('2462', '都江堰市', '375', '510181', '0', '0');
INSERT INTO `area_code` VALUES ('2463', '彭州市', '375', '510182', '0', '0');
INSERT INTO `area_code` VALUES ('2464', '邛崃市', '375', '510183', '0', '0');
INSERT INTO `area_code` VALUES ('2465', '崇州市', '375', '510184', '0', '0');
INSERT INTO `area_code` VALUES ('2466', '自流井区', '376', '510302', '0', '0');
INSERT INTO `area_code` VALUES ('2467', '贡井区', '376', '510303', '0', '0');
INSERT INTO `area_code` VALUES ('2468', '大安区', '376', '510304', '0', '0');
INSERT INTO `area_code` VALUES ('2469', '沿滩区', '376', '510311', '0', '0');
INSERT INTO `area_code` VALUES ('2470', '荣县', '376', '510321', '0', '0');
INSERT INTO `area_code` VALUES ('2471', '富顺县', '376', '510322', '0', '0');
INSERT INTO `area_code` VALUES ('2472', '东区', '377', '510402', '0', '0');
INSERT INTO `area_code` VALUES ('2473', '西区', '377', '510403', '0', '0');
INSERT INTO `area_code` VALUES ('2474', '仁和区', '377', '510411', '0', '0');
INSERT INTO `area_code` VALUES ('2475', '米易县', '377', '510421', '0', '0');
INSERT INTO `area_code` VALUES ('2476', '盐边县', '377', '510422', '0', '0');
INSERT INTO `area_code` VALUES ('2477', '江阳区', '378', '510502', '0', '0');
INSERT INTO `area_code` VALUES ('2478', '纳溪区', '378', '510503', '0', '0');
INSERT INTO `area_code` VALUES ('2479', '龙马潭区', '378', '510504', '0', '0');
INSERT INTO `area_code` VALUES ('2480', '泸县', '378', '510521', '0', '0');
INSERT INTO `area_code` VALUES ('2481', '合江县', '378', '510522', '0', '0');
INSERT INTO `area_code` VALUES ('2482', '叙永县', '378', '510524', '0', '0');
INSERT INTO `area_code` VALUES ('2483', '古蔺县', '378', '510525', '0', '0');
INSERT INTO `area_code` VALUES ('2484', '旌阳区', '379', '510603', '0', '0');
INSERT INTO `area_code` VALUES ('2485', '中江县', '379', '510623', '0', '0');
INSERT INTO `area_code` VALUES ('2486', '罗江区', '379', '510604', '0', '0');
INSERT INTO `area_code` VALUES ('2487', '广汉市', '379', '510681', '0', '0');
INSERT INTO `area_code` VALUES ('2488', '什邡市', '379', '510682', '0', '0');
INSERT INTO `area_code` VALUES ('2489', '绵竹市', '379', '510683', '0', '0');
INSERT INTO `area_code` VALUES ('2490', '涪城区', '380', '510703', '0', '0');
INSERT INTO `area_code` VALUES ('2491', '游仙区', '380', '510704', '0', '0');
INSERT INTO `area_code` VALUES ('2492', '三台县', '380', '510722', '0', '0');
INSERT INTO `area_code` VALUES ('2493', '盐亭县', '380', '510723', '0', '0');
INSERT INTO `area_code` VALUES ('2494', '安州区', '380', '510705', '0', '0');
INSERT INTO `area_code` VALUES ('2495', '梓潼县', '380', '510725', '0', '0');
INSERT INTO `area_code` VALUES ('2496', '北川自治县', '380', '510726', '0', '0');
INSERT INTO `area_code` VALUES ('2497', '平武县', '380', '510727', '0', '0');
INSERT INTO `area_code` VALUES ('2498', '江油市', '380', '510781', '0', '0');
INSERT INTO `area_code` VALUES ('2499', '利州区', '381', '510802', '0', '0');
INSERT INTO `area_code` VALUES ('2500', '昭化区', '381', '510811', '0', '0');
INSERT INTO `area_code` VALUES ('2501', '朝天区', '381', '510812', '0', '0');
INSERT INTO `area_code` VALUES ('2502', '旺苍县', '381', '510821', '0', '0');
INSERT INTO `area_code` VALUES ('2503', '青川县', '381', '510822', '0', '0');
INSERT INTO `area_code` VALUES ('2504', '剑阁县', '381', '510823', '0', '0');
INSERT INTO `area_code` VALUES ('2505', '苍溪县', '381', '510824', '0', '0');
INSERT INTO `area_code` VALUES ('2506', '船山区', '382', '510903', '0', '0');
INSERT INTO `area_code` VALUES ('2507', '安居区', '382', '510904', '0', '0');
INSERT INTO `area_code` VALUES ('2508', '蓬溪县', '382', '510921', '0', '0');
INSERT INTO `area_code` VALUES ('2509', '射洪市', '382', '510981', '0', '0');
INSERT INTO `area_code` VALUES ('2510', '大英县', '382', '510923', '0', '0');
INSERT INTO `area_code` VALUES ('2511', '市中区', '383', '511002', '0', '0');
INSERT INTO `area_code` VALUES ('2512', '东兴区', '383', '511011', '0', '0');
INSERT INTO `area_code` VALUES ('2513', '威远县', '383', '511024', '0', '0');
INSERT INTO `area_code` VALUES ('2514', '资中县', '383', '511025', '0', '0');
INSERT INTO `area_code` VALUES ('2515', '隆昌市', '383', '511083', '0', '0');
INSERT INTO `area_code` VALUES ('2516', '市中区', '384', '511102', '0', '0');
INSERT INTO `area_code` VALUES ('2517', '沙湾区', '384', '511111', '0', '0');
INSERT INTO `area_code` VALUES ('2518', '五通桥区', '384', '511112', '0', '0');
INSERT INTO `area_code` VALUES ('2519', '金口河区', '384', '511113', '0', '0');
INSERT INTO `area_code` VALUES ('2520', '犍为县', '384', '511123', '0', '0');
INSERT INTO `area_code` VALUES ('2521', '井研县', '384', '511124', '0', '0');
INSERT INTO `area_code` VALUES ('2522', '夹江县', '384', '511126', '0', '0');
INSERT INTO `area_code` VALUES ('2523', '沐川县', '384', '511129', '0', '0');
INSERT INTO `area_code` VALUES ('2524', '峨边自治县', '384', '511132', '0', '0');
INSERT INTO `area_code` VALUES ('2525', '马边自治县', '384', '511133', '0', '0');
INSERT INTO `area_code` VALUES ('2526', '峨眉山市', '384', '511181', '0', '0');
INSERT INTO `area_code` VALUES ('2527', '顺庆区', '385', '511302', '0', '0');
INSERT INTO `area_code` VALUES ('2528', '高坪区', '385', '511303', '0', '0');
INSERT INTO `area_code` VALUES ('2529', '嘉陵区', '385', '511304', '0', '0');
INSERT INTO `area_code` VALUES ('2530', '南部县', '385', '511321', '0', '0');
INSERT INTO `area_code` VALUES ('2531', '营山县', '385', '511322', '0', '0');
INSERT INTO `area_code` VALUES ('2532', '蓬安县', '385', '511323', '0', '0');
INSERT INTO `area_code` VALUES ('2533', '仪陇县', '385', '511324', '0', '0');
INSERT INTO `area_code` VALUES ('2534', '西充县', '385', '511325', '0', '0');
INSERT INTO `area_code` VALUES ('2535', '阆中市', '385', '511381', '0', '0');
INSERT INTO `area_code` VALUES ('2536', '东坡区', '386', '511402', '0', '0');
INSERT INTO `area_code` VALUES ('2537', '仁寿县', '386', '511421', '0', '0');
INSERT INTO `area_code` VALUES ('2538', '彭山区', '386', '511422', '0', '0');
INSERT INTO `area_code` VALUES ('2539', '洪雅县', '386', '511423', '0', '0');
INSERT INTO `area_code` VALUES ('2540', '丹棱县', '386', '511424', '0', '0');
INSERT INTO `area_code` VALUES ('2541', '青神县', '386', '511425', '0', '0');
INSERT INTO `area_code` VALUES ('2542', '翠屏区', '387', '511502', '0', '0');
INSERT INTO `area_code` VALUES ('2543', '南溪区', '387', '511503', '0', '0');
INSERT INTO `area_code` VALUES ('2544', '叙州区', '387', '511504', '0', '0');
INSERT INTO `area_code` VALUES ('2545', '江安县', '387', '511523', '0', '0');
INSERT INTO `area_code` VALUES ('2546', '长宁县', '387', '511524', '0', '0');
INSERT INTO `area_code` VALUES ('2547', '高县', '387', '511525', '0', '0');
INSERT INTO `area_code` VALUES ('2548', '珙县', '387', '511526', '0', '0');
INSERT INTO `area_code` VALUES ('2549', '筠连县', '387', '511527', '0', '0');
INSERT INTO `area_code` VALUES ('2550', '兴文县', '387', '511528', '0', '0');
INSERT INTO `area_code` VALUES ('2551', '屏山县', '387', '511529', '0', '0');
INSERT INTO `area_code` VALUES ('2552', '广安区', '388', '511602', '0', '0');
INSERT INTO `area_code` VALUES ('2553', '岳池县', '388', '511621', '0', '0');
INSERT INTO `area_code` VALUES ('2554', '武胜县', '388', '511622', '0', '0');
INSERT INTO `area_code` VALUES ('2555', '邻水县', '388', '511623', '0', '0');
INSERT INTO `area_code` VALUES ('2556', '华蓥市', '388', '511681', '0', '0');
INSERT INTO `area_code` VALUES ('2557', '通川区', '389', '511702', '0', '0');
INSERT INTO `area_code` VALUES ('2558', '达川区', '389', '511721', '0', '0');
INSERT INTO `area_code` VALUES ('2559', '宣汉县', '389', '511722', '0', '0');
INSERT INTO `area_code` VALUES ('2560', '开江县', '389', '511723', '0', '0');
INSERT INTO `area_code` VALUES ('2561', '大竹县', '389', '511724', '0', '0');
INSERT INTO `area_code` VALUES ('2562', '渠县', '389', '511725', '0', '0');
INSERT INTO `area_code` VALUES ('2563', '万源市', '389', '511781', '0', '0');
INSERT INTO `area_code` VALUES ('2564', '雨城区', '390', '511802', '0', '0');
INSERT INTO `area_code` VALUES ('2565', '名山区', '390', '511803', '0', '0');
INSERT INTO `area_code` VALUES ('2566', '荥经县', '390', '511822', '0', '0');
INSERT INTO `area_code` VALUES ('2567', '汉源县', '390', '511823', '0', '0');
INSERT INTO `area_code` VALUES ('2568', '石棉县', '390', '511824', '0', '0');
INSERT INTO `area_code` VALUES ('2569', '天全县', '390', '511825', '0', '0');
INSERT INTO `area_code` VALUES ('2570', '芦山县', '390', '511826', '0', '0');
INSERT INTO `area_code` VALUES ('2571', '宝兴县', '390', '511827', '0', '0');
INSERT INTO `area_code` VALUES ('2572', '巴州区', '391', '511902', '0', '0');
INSERT INTO `area_code` VALUES ('2573', '通江县', '391', '511921', '0', '0');
INSERT INTO `area_code` VALUES ('2574', '南江县', '391', '511922', '0', '0');
INSERT INTO `area_code` VALUES ('2575', '平昌县', '391', '511923', '0', '0');
INSERT INTO `area_code` VALUES ('2576', '雁江区', '392', '512002', '0', '0');
INSERT INTO `area_code` VALUES ('2577', '安岳县', '392', '512021', '0', '0');
INSERT INTO `area_code` VALUES ('2578', '乐至县', '392', '512022', '0', '0');
INSERT INTO `area_code` VALUES ('2579', '简阳市', '375', '510185', '0', '0');
INSERT INTO `area_code` VALUES ('2580', '马尔康市', '393', '513229', '0', '0');
INSERT INTO `area_code` VALUES ('2581', '汶川县', '393', '513221', '0', '0');
INSERT INTO `area_code` VALUES ('2582', '理县', '393', '513222', '0', '0');
INSERT INTO `area_code` VALUES ('2583', '茂县', '393', '513223', '0', '0');
INSERT INTO `area_code` VALUES ('2584', '松潘县', '393', '513224', '0', '0');
INSERT INTO `area_code` VALUES ('2585', '九寨沟县', '393', '513225', '0', '0');
INSERT INTO `area_code` VALUES ('2586', '金川县', '393', '513226', '0', '0');
INSERT INTO `area_code` VALUES ('2587', '小金县', '393', '513227', '0', '0');
INSERT INTO `area_code` VALUES ('2588', '黑水县', '393', '513228', '0', '0');
INSERT INTO `area_code` VALUES ('2589', '壤塘县', '393', '513230', '0', '0');
INSERT INTO `area_code` VALUES ('2590', '阿坝县', '393', '513231', '0', '0');
INSERT INTO `area_code` VALUES ('2591', '若尔盖县', '393', '513232', '0', '0');
INSERT INTO `area_code` VALUES ('2592', '红原县', '393', '513233', '0', '0');
INSERT INTO `area_code` VALUES ('2593', '康定市', '394', '513301', '0', '0');
INSERT INTO `area_code` VALUES ('2594', '泸定县', '394', '513322', '0', '0');
INSERT INTO `area_code` VALUES ('2595', '丹巴县', '394', '513323', '0', '0');
INSERT INTO `area_code` VALUES ('2596', '九龙县', '394', '513324', '0', '0');
INSERT INTO `area_code` VALUES ('2597', '雅江县', '394', '513325', '0', '0');
INSERT INTO `area_code` VALUES ('2598', '道孚县', '394', '513326', '0', '0');
INSERT INTO `area_code` VALUES ('2599', '炉霍县', '394', '513327', '0', '0');
INSERT INTO `area_code` VALUES ('2600', '甘孜县', '394', '513328', '0', '0');
INSERT INTO `area_code` VALUES ('2601', '新龙县', '394', '513329', '0', '0');
INSERT INTO `area_code` VALUES ('2602', '德格县', '394', '513330', '0', '0');
INSERT INTO `area_code` VALUES ('2603', '白玉县', '394', '513331', '0', '0');
INSERT INTO `area_code` VALUES ('2604', '石渠县', '394', '513332', '0', '0');
INSERT INTO `area_code` VALUES ('2605', '色达县', '394', '513333', '0', '0');
INSERT INTO `area_code` VALUES ('2606', '理塘县', '394', '513334', '0', '0');
INSERT INTO `area_code` VALUES ('2607', '巴塘县', '394', '513335', '0', '0');
INSERT INTO `area_code` VALUES ('2608', '乡城县', '394', '513336', '0', '0');
INSERT INTO `area_code` VALUES ('2609', '稻城县', '394', '513337', '0', '0');
INSERT INTO `area_code` VALUES ('2610', '得荣县', '394', '513338', '0', '0');
INSERT INTO `area_code` VALUES ('2611', '西昌市', '395', '513401', '0', '0');
INSERT INTO `area_code` VALUES ('2612', '木里自治县', '395', '513422', '0', '0');
INSERT INTO `area_code` VALUES ('2613', '盐源县', '395', '513423', '0', '0');
INSERT INTO `area_code` VALUES ('2614', '德昌县', '395', '513424', '0', '0');
INSERT INTO `area_code` VALUES ('2615', '会理县', '395', '513425', '0', '0');
INSERT INTO `area_code` VALUES ('2616', '会东县', '395', '513426', '0', '0');
INSERT INTO `area_code` VALUES ('2617', '宁南县', '395', '513427', '0', '0');
INSERT INTO `area_code` VALUES ('2618', '普格县', '395', '513428', '0', '0');
INSERT INTO `area_code` VALUES ('2619', '布拖县', '395', '513429', '0', '0');
INSERT INTO `area_code` VALUES ('2620', '金阳县', '395', '513430', '0', '0');
INSERT INTO `area_code` VALUES ('2621', '昭觉县', '395', '513431', '0', '0');
INSERT INTO `area_code` VALUES ('2622', '喜德县', '395', '513432', '0', '0');
INSERT INTO `area_code` VALUES ('2623', '冕宁县', '395', '513433', '0', '0');
INSERT INTO `area_code` VALUES ('2624', '越西县', '395', '513434', '0', '0');
INSERT INTO `area_code` VALUES ('2625', '甘洛县', '395', '513435', '0', '0');
INSERT INTO `area_code` VALUES ('2626', '美姑县', '395', '513436', '0', '0');
INSERT INTO `area_code` VALUES ('2627', '雷波县', '395', '513437', '0', '0');
INSERT INTO `area_code` VALUES ('2628', '观山湖区', '396', null, '0', '0');
INSERT INTO `area_code` VALUES ('2629', '南明区', '396', '520102', '0', '0');
INSERT INTO `area_code` VALUES ('2630', '云岩区', '396', '520103', '0', '0');
INSERT INTO `area_code` VALUES ('2631', '花溪区', '396', '520111', '0', '0');
INSERT INTO `area_code` VALUES ('2632', '乌当区', '396', '520112', '0', '0');
INSERT INTO `area_code` VALUES ('2633', '白云区', '396', '520113', '0', '0');
INSERT INTO `area_code` VALUES ('2634', '开阳县', '396', '520121', '0', '0');
INSERT INTO `area_code` VALUES ('2635', '息烽县', '396', '520122', '0', '0');
INSERT INTO `area_code` VALUES ('2636', '修文县', '396', '520123', '0', '0');
INSERT INTO `area_code` VALUES ('2637', '清镇市', '396', '520181', '0', '0');
INSERT INTO `area_code` VALUES ('2638', '钟山区', '397', '520201', '0', '0');
INSERT INTO `area_code` VALUES ('2639', '六枝特区', '397', '520203', '0', '0');
INSERT INTO `area_code` VALUES ('2640', '水城县', '397', '520221', '0', '0');
INSERT INTO `area_code` VALUES ('2641', '盘州市', '397', '520281', '0', '0');
INSERT INTO `area_code` VALUES ('2642', '红花岗区', '398', '520302', '0', '0');
INSERT INTO `area_code` VALUES ('2643', '汇川区', '398', '520303', '0', '0');
INSERT INTO `area_code` VALUES ('2644', '播州区', '398', '520304', '0', '0');
INSERT INTO `area_code` VALUES ('2645', '桐梓县', '398', '520322', '0', '0');
INSERT INTO `area_code` VALUES ('2646', '绥阳县', '398', '520323', '0', '0');
INSERT INTO `area_code` VALUES ('2647', '正安县', '398', '520324', '0', '0');
INSERT INTO `area_code` VALUES ('2648', '道真自治县', '398', '520325', '0', '0');
INSERT INTO `area_code` VALUES ('2649', '务川自治县', '398', '520326', '0', '0');
INSERT INTO `area_code` VALUES ('2650', '凤冈县', '398', '520327', '0', '0');
INSERT INTO `area_code` VALUES ('2651', '湄潭县', '398', '520328', '0', '0');
INSERT INTO `area_code` VALUES ('2652', '余庆县', '398', '520329', '0', '0');
INSERT INTO `area_code` VALUES ('2653', '习水县', '398', '520330', '0', '0');
INSERT INTO `area_code` VALUES ('2654', '赤水市', '398', '520381', '0', '0');
INSERT INTO `area_code` VALUES ('2655', '仁怀市', '398', '520382', '0', '0');
INSERT INTO `area_code` VALUES ('2656', '西秀区', '399', '520402', '0', '0');
INSERT INTO `area_code` VALUES ('2657', '平坝区', '399', '520403', '0', '0');
INSERT INTO `area_code` VALUES ('2658', '普定县', '399', '520422', '0', '0');
INSERT INTO `area_code` VALUES ('2659', '镇宁自治县', '399', '520423', '0', '0');
INSERT INTO `area_code` VALUES ('2660', '关岭自治县', '399', '520424', '0', '0');
INSERT INTO `area_code` VALUES ('2661', '紫云自治县', '399', '520425', '0', '0');
INSERT INTO `area_code` VALUES ('2662', '七星关区', '400', '520502', '0', '0');
INSERT INTO `area_code` VALUES ('2663', '大方县', '400', '520521', '0', '0');
INSERT INTO `area_code` VALUES ('2664', '黔西县', '400', '520522', '0', '0');
INSERT INTO `area_code` VALUES ('2665', '金沙县', '400', '520523', '0', '0');
INSERT INTO `area_code` VALUES ('2666', '织金县', '400', '520524', '0', '0');
INSERT INTO `area_code` VALUES ('2667', '纳雍县', '400', '520525', '0', '0');
INSERT INTO `area_code` VALUES ('2668', '威宁自治县', '400', '520526', '0', '0');
INSERT INTO `area_code` VALUES ('2669', '赫章县', '400', '520527', '0', '0');
INSERT INTO `area_code` VALUES ('2670', '碧江区', '401', '520602', '0', '0');
INSERT INTO `area_code` VALUES ('2671', '万山区', '401', '520603', '0', '0');
INSERT INTO `area_code` VALUES ('2672', '江口县', '401', '520621', '0', '0');
INSERT INTO `area_code` VALUES ('2673', '玉屏自治县', '401', '520622', '0', '0');
INSERT INTO `area_code` VALUES ('2674', '石阡县', '401', '520623', '0', '0');
INSERT INTO `area_code` VALUES ('2675', '思南县', '401', '520624', '0', '0');
INSERT INTO `area_code` VALUES ('2676', '印江自治县', '401', '520625', '0', '0');
INSERT INTO `area_code` VALUES ('2677', '德江县', '401', '520626', '0', '0');
INSERT INTO `area_code` VALUES ('2678', '沿河自治县', '401', '520627', '0', '0');
INSERT INTO `area_code` VALUES ('2679', '松桃自治县', '401', '520628', '0', '0');
INSERT INTO `area_code` VALUES ('2680', '兴义市', '402', '522301', '0', '0');
INSERT INTO `area_code` VALUES ('2681', '兴仁市', '402', '522322', '0', '0');
INSERT INTO `area_code` VALUES ('2682', '普安县', '402', '522323', '0', '0');
INSERT INTO `area_code` VALUES ('2683', '晴隆县', '402', '522324', '0', '0');
INSERT INTO `area_code` VALUES ('2684', '贞丰县', '402', '522325', '0', '0');
INSERT INTO `area_code` VALUES ('2685', '望谟县', '402', '522326', '0', '0');
INSERT INTO `area_code` VALUES ('2686', '册亨县', '402', '522327', '0', '0');
INSERT INTO `area_code` VALUES ('2687', '安龙县', '402', '522328', '0', '0');
INSERT INTO `area_code` VALUES ('2688', '凯里市', '403', '522601', '0', '0');
INSERT INTO `area_code` VALUES ('2689', '黄平县', '403', '522622', '0', '0');
INSERT INTO `area_code` VALUES ('2690', '施秉县', '403', '522623', '0', '0');
INSERT INTO `area_code` VALUES ('2691', '三穗县', '403', '522624', '0', '0');
INSERT INTO `area_code` VALUES ('2692', '镇远县', '403', '522625', '0', '0');
INSERT INTO `area_code` VALUES ('2693', '岑巩县', '403', '522626', '0', '0');
INSERT INTO `area_code` VALUES ('2694', '天柱县', '403', '522627', '0', '0');
INSERT INTO `area_code` VALUES ('2695', '锦屏县', '403', '522628', '0', '0');
INSERT INTO `area_code` VALUES ('2696', '剑河县', '403', '522629', '0', '0');
INSERT INTO `area_code` VALUES ('2697', '台江县', '403', '522630', '0', '0');
INSERT INTO `area_code` VALUES ('2698', '黎平县', '403', '522631', '0', '0');
INSERT INTO `area_code` VALUES ('2699', '榕江县', '403', '522632', '0', '0');
INSERT INTO `area_code` VALUES ('2700', '从江县', '403', '522633', '0', '0');
INSERT INTO `area_code` VALUES ('2701', '雷山县', '403', '522634', '0', '0');
INSERT INTO `area_code` VALUES ('2702', '麻江县', '403', '522635', '0', '0');
INSERT INTO `area_code` VALUES ('2703', '丹寨县', '403', '522636', '0', '0');
INSERT INTO `area_code` VALUES ('2704', '都匀市', '404', '522701', '0', '0');
INSERT INTO `area_code` VALUES ('2705', '福泉市', '404', '522702', '0', '0');
INSERT INTO `area_code` VALUES ('2706', '荔波县', '404', '522722', '0', '0');
INSERT INTO `area_code` VALUES ('2707', '贵定县', '404', '522723', '0', '0');
INSERT INTO `area_code` VALUES ('2708', '瓮安县', '404', '522725', '0', '0');
INSERT INTO `area_code` VALUES ('2709', '独山县', '404', '522726', '0', '0');
INSERT INTO `area_code` VALUES ('2710', '平塘县', '404', '522727', '0', '0');
INSERT INTO `area_code` VALUES ('2711', '罗甸县', '404', '522728', '0', '0');
INSERT INTO `area_code` VALUES ('2712', '长顺县', '404', '522729', '0', '0');
INSERT INTO `area_code` VALUES ('2713', '龙里县', '404', '522730', '0', '0');
INSERT INTO `area_code` VALUES ('2714', '惠水县', '404', '522731', '0', '0');
INSERT INTO `area_code` VALUES ('2715', '三都自治县', '404', '522732', '0', '0');
INSERT INTO `area_code` VALUES ('2716', '五华区', '405', '530102', '0', '0');
INSERT INTO `area_code` VALUES ('2717', '盘龙区', '405', '530103', '0', '0');
INSERT INTO `area_code` VALUES ('2718', '官渡区', '405', '530111', '0', '0');
INSERT INTO `area_code` VALUES ('2719', '西山区', '405', '530112', '0', '0');
INSERT INTO `area_code` VALUES ('2720', '东川区', '405', '530113', '0', '0');
INSERT INTO `area_code` VALUES ('2721', '呈贡区', '405', '530114', '0', '0');
INSERT INTO `area_code` VALUES ('2722', '晋宁区', '405', '530115', '0', '0');
INSERT INTO `area_code` VALUES ('2723', '富民县', '405', '530124', '0', '0');
INSERT INTO `area_code` VALUES ('2724', '宜良县', '405', '530125', '0', '0');
INSERT INTO `area_code` VALUES ('2725', '石林自治县', '405', '530126', '0', '0');
INSERT INTO `area_code` VALUES ('2726', '嵩明县', '405', '530127', '0', '0');
INSERT INTO `area_code` VALUES ('2727', '禄劝自治县', '405', '530128', '0', '0');
INSERT INTO `area_code` VALUES ('2728', '寻甸自治县', '405', '530129', '0', '0');
INSERT INTO `area_code` VALUES ('2729', '安宁市', '405', '530181', '0', '0');
INSERT INTO `area_code` VALUES ('2730', '麒麟区', '406', '530302', '0', '0');
INSERT INTO `area_code` VALUES ('2731', '马龙区', '406', '530304', '0', '0');
INSERT INTO `area_code` VALUES ('2732', '陆良县', '406', '530322', '0', '0');
INSERT INTO `area_code` VALUES ('2733', '师宗县', '406', '530323', '0', '0');
INSERT INTO `area_code` VALUES ('2734', '罗平县', '406', '530324', '0', '0');
INSERT INTO `area_code` VALUES ('2735', '富源县', '406', '530325', '0', '0');
INSERT INTO `area_code` VALUES ('2736', '会泽县', '406', '530326', '0', '0');
INSERT INTO `area_code` VALUES ('2737', '沾益区', '406', '530303', '0', '0');
INSERT INTO `area_code` VALUES ('2738', '宣威市', '406', '530381', '0', '0');
INSERT INTO `area_code` VALUES ('2739', '红塔区', '407', '530402', '0', '0');
INSERT INTO `area_code` VALUES ('2740', '江川区', '407', '530421', '0', '0');
INSERT INTO `area_code` VALUES ('2741', '澄江市', '407', '530481', '0', '0');
INSERT INTO `area_code` VALUES ('2742', '通海县', '407', '530423', '0', '0');
INSERT INTO `area_code` VALUES ('2743', '华宁县', '407', '530424', '0', '0');
INSERT INTO `area_code` VALUES ('2744', '易门县', '407', '530425', '0', '0');
INSERT INTO `area_code` VALUES ('2745', '峨山自治县', '407', '530426', '0', '0');
INSERT INTO `area_code` VALUES ('2746', '新平自治县', '407', '530427', '0', '0');
INSERT INTO `area_code` VALUES ('2747', '元江自治县', '407', '530428', '0', '0');
INSERT INTO `area_code` VALUES ('2748', '昭阳区', '408', '530602', '0', '0');
INSERT INTO `area_code` VALUES ('2749', '鲁甸县', '408', '530621', '0', '0');
INSERT INTO `area_code` VALUES ('2750', '巧家县', '408', '530622', '0', '0');
INSERT INTO `area_code` VALUES ('2751', '盐津县', '408', '530623', '0', '0');
INSERT INTO `area_code` VALUES ('2752', '大关县', '408', '530624', '0', '0');
INSERT INTO `area_code` VALUES ('2753', '永善县', '408', '530625', '0', '0');
INSERT INTO `area_code` VALUES ('2754', '绥江县', '408', '530626', '0', '0');
INSERT INTO `area_code` VALUES ('2755', '镇雄县', '408', '530627', '0', '0');
INSERT INTO `area_code` VALUES ('2756', '彝良县', '408', '530628', '0', '0');
INSERT INTO `area_code` VALUES ('2757', '威信县', '408', '530629', '0', '0');
INSERT INTO `area_code` VALUES ('2758', '水富市', '408', '530630', '0', '0');
INSERT INTO `area_code` VALUES ('2759', '古城区', '409', '530702', '0', '0');
INSERT INTO `area_code` VALUES ('2760', '玉龙自治县', '409', '530721', '0', '0');
INSERT INTO `area_code` VALUES ('2761', '永胜县', '409', '530722', '0', '0');
INSERT INTO `area_code` VALUES ('2762', '华坪县', '409', '530723', '0', '0');
INSERT INTO `area_code` VALUES ('2763', '宁蒗自治县', '409', '530724', '0', '0');
INSERT INTO `area_code` VALUES ('2764', '思茅区', '410', '530802', '0', '0');
INSERT INTO `area_code` VALUES ('2765', '宁洱县', '410', '530821', '0', '0');
INSERT INTO `area_code` VALUES ('2766', '墨江县', '410', '530822', '0', '0');
INSERT INTO `area_code` VALUES ('2767', '景东县', '410', '530823', '0', '0');
INSERT INTO `area_code` VALUES ('2768', '景谷县', '410', '530824', '0', '0');
INSERT INTO `area_code` VALUES ('2769', '镇沅县', '410', '530825', '0', '0');
INSERT INTO `area_code` VALUES ('2770', '江城县', '410', '530826', '0', '0');
INSERT INTO `area_code` VALUES ('2771', '孟连县', '410', '530827', '0', '0');
INSERT INTO `area_code` VALUES ('2772', '澜沧县', '410', '530828', '0', '0');
INSERT INTO `area_code` VALUES ('2773', '西盟县', '410', '530829', '0', '0');
INSERT INTO `area_code` VALUES ('2774', '临翔区', '411', '530902', '0', '0');
INSERT INTO `area_code` VALUES ('2775', '凤庆县', '411', '530921', '0', '0');
INSERT INTO `area_code` VALUES ('2776', '云县', '411', '530922', '0', '0');
INSERT INTO `area_code` VALUES ('2777', '永德县', '411', '530923', '0', '0');
INSERT INTO `area_code` VALUES ('2778', '镇康县', '411', '530924', '0', '0');
INSERT INTO `area_code` VALUES ('2779', '双江自治县', '411', '530925', '0', '0');
INSERT INTO `area_code` VALUES ('2780', '耿马自治县', '411', '530926', '0', '0');
INSERT INTO `area_code` VALUES ('2781', '沧源自治县', '411', '530927', '0', '0');
INSERT INTO `area_code` VALUES ('2782', '楚雄市', '412', '532301', '0', '0');
INSERT INTO `area_code` VALUES ('2783', '双柏县', '412', '532322', '0', '0');
INSERT INTO `area_code` VALUES ('2784', '牟定县', '412', '532323', '0', '0');
INSERT INTO `area_code` VALUES ('2785', '南华县', '412', '532324', '0', '0');
INSERT INTO `area_code` VALUES ('2786', '姚安县', '412', '532325', '0', '0');
INSERT INTO `area_code` VALUES ('2787', '大姚县', '412', '532326', '0', '0');
INSERT INTO `area_code` VALUES ('2788', '永仁县', '412', '532327', '0', '0');
INSERT INTO `area_code` VALUES ('2789', '元谋县', '412', '532328', '0', '0');
INSERT INTO `area_code` VALUES ('2790', '武定县', '412', '532329', '0', '0');
INSERT INTO `area_code` VALUES ('2791', '禄丰县', '412', '532331', '0', '0');
INSERT INTO `area_code` VALUES ('2792', '个旧市', '413', '532501', '0', '0');
INSERT INTO `area_code` VALUES ('2793', '开远市', '413', '532502', '0', '0');
INSERT INTO `area_code` VALUES ('2794', '蒙自市', '413', '532503', '0', '0');
INSERT INTO `area_code` VALUES ('2795', '屏边自治县', '413', '532523', '0', '0');
INSERT INTO `area_code` VALUES ('2796', '建水县', '413', '532524', '0', '0');
INSERT INTO `area_code` VALUES ('2797', '石屏县', '413', '532525', '0', '0');
INSERT INTO `area_code` VALUES ('2798', '弥勒市', '413', '532526', '0', '0');
INSERT INTO `area_code` VALUES ('2799', '泸西县', '413', '532527', '0', '0');
INSERT INTO `area_code` VALUES ('2800', '元阳县', '413', '532528', '0', '0');
INSERT INTO `area_code` VALUES ('2801', '红河县', '413', '532529', '0', '0');
INSERT INTO `area_code` VALUES ('2802', '金平自治县', '413', '532530', '0', '0');
INSERT INTO `area_code` VALUES ('2803', '绿春县', '413', '532531', '0', '0');
INSERT INTO `area_code` VALUES ('2804', '河口自治县', '413', '532532', '0', '0');
INSERT INTO `area_code` VALUES ('2805', '文山县', '414', '532601', '0', '0');
INSERT INTO `area_code` VALUES ('2806', '砚山县', '414', '532622', '0', '0');
INSERT INTO `area_code` VALUES ('2807', '西畴县', '414', '532623', '0', '0');
INSERT INTO `area_code` VALUES ('2808', '麻栗坡县', '414', '532624', '0', '0');
INSERT INTO `area_code` VALUES ('2809', '马关县', '414', '532625', '0', '0');
INSERT INTO `area_code` VALUES ('2810', '丘北县', '414', '532626', '0', '0');
INSERT INTO `area_code` VALUES ('2811', '广南县', '414', '532627', '0', '0');
INSERT INTO `area_code` VALUES ('2812', '富宁县', '414', '532628', '0', '0');
INSERT INTO `area_code` VALUES ('2813', '景洪市', '415', '532801', '0', '0');
INSERT INTO `area_code` VALUES ('2814', '勐海县', '415', '532822', '0', '0');
INSERT INTO `area_code` VALUES ('2815', '勐腊县', '415', '532823', '0', '0');
INSERT INTO `area_code` VALUES ('2816', '大理市', '416', '532901', '0', '0');
INSERT INTO `area_code` VALUES ('2817', '漾濞自治县', '416', '532922', '0', '0');
INSERT INTO `area_code` VALUES ('2818', '祥云县', '416', '532923', '0', '0');
INSERT INTO `area_code` VALUES ('2819', '宾川县', '416', '532924', '0', '0');
INSERT INTO `area_code` VALUES ('2820', '弥渡县', '416', '532925', '0', '0');
INSERT INTO `area_code` VALUES ('2821', '南涧自治县', '416', '532926', '0', '0');
INSERT INTO `area_code` VALUES ('2822', '巍山自治县', '416', '532927', '0', '0');
INSERT INTO `area_code` VALUES ('2823', '永平县', '416', '532928', '0', '0');
INSERT INTO `area_code` VALUES ('2824', '云龙县', '416', '532929', '0', '0');
INSERT INTO `area_code` VALUES ('2825', '洱源县', '416', '532930', '0', '0');
INSERT INTO `area_code` VALUES ('2826', '剑川县', '416', '532931', '0', '0');
INSERT INTO `area_code` VALUES ('2827', '鹤庆县', '416', '532932', '0', '0');
INSERT INTO `area_code` VALUES ('2828', '瑞丽市', '417', '533102', '0', '0');
INSERT INTO `area_code` VALUES ('2829', '芒市', '417', '533103', '0', '0');
INSERT INTO `area_code` VALUES ('2830', '梁河县', '417', '533122', '0', '0');
INSERT INTO `area_code` VALUES ('2831', '盈江县', '417', '533123', '0', '0');
INSERT INTO `area_code` VALUES ('2832', '陇川县', '417', '533124', '0', '0');
INSERT INTO `area_code` VALUES ('2833', '泸水市', '418', '533301', '0', '0');
INSERT INTO `area_code` VALUES ('2834', '福贡县', '418', '533323', '0', '0');
INSERT INTO `area_code` VALUES ('2835', '贡山县', '418', '533324', '0', '0');
INSERT INTO `area_code` VALUES ('2836', '兰坪县', '418', '533325', '0', '0');
INSERT INTO `area_code` VALUES ('2837', '香格里拉市', '419', '533421', '0', '0');
INSERT INTO `area_code` VALUES ('2838', '德钦县', '419', '533422', '0', '0');
INSERT INTO `area_code` VALUES ('2839', '维西县', '419', '533423', '0', '0');
INSERT INTO `area_code` VALUES ('2840', '隆阳区', '420', '530502', '0', '0');
INSERT INTO `area_code` VALUES ('2841', '施甸县', '420', '530521', '0', '0');
INSERT INTO `area_code` VALUES ('2842', '腾冲市', '420', '530522', '0', '0');
INSERT INTO `area_code` VALUES ('2843', '龙陵县', '420', '530523', '0', '0');
INSERT INTO `area_code` VALUES ('2844', '昌宁县', '420', '530524', '0', '0');
INSERT INTO `area_code` VALUES ('2845', '城关区', '421', '540102', '0', '0');
INSERT INTO `area_code` VALUES ('2846', '林周县', '421', '540121', '0', '0');
INSERT INTO `area_code` VALUES ('2847', '当雄县', '421', '540122', '0', '0');
INSERT INTO `area_code` VALUES ('2848', '尼木县', '421', '540123', '0', '0');
INSERT INTO `area_code` VALUES ('2849', '曲水县', '421', '540124', '0', '0');
INSERT INTO `area_code` VALUES ('2850', '堆龙德庆区', '421', '540125', '0', '0');
INSERT INTO `area_code` VALUES ('2851', '达孜区', '421', '540104', '0', '0');
INSERT INTO `area_code` VALUES ('2852', '墨竹工卡县', '421', '540127', '0', '0');
INSERT INTO `area_code` VALUES ('2853', '卡若区', '422', '542121', '0', '0');
INSERT INTO `area_code` VALUES ('2854', '江达县', '422', '542122', '0', '0');
INSERT INTO `area_code` VALUES ('2855', '贡觉县', '422', '542123', '0', '0');
INSERT INTO `area_code` VALUES ('2856', '类乌齐县', '422', '542124', '0', '0');
INSERT INTO `area_code` VALUES ('2857', '丁青县', '422', '542125', '0', '0');
INSERT INTO `area_code` VALUES ('2858', '察雅县', '422', '542126', '0', '0');
INSERT INTO `area_code` VALUES ('2859', '八宿县', '422', '542127', '0', '0');
INSERT INTO `area_code` VALUES ('2860', '左贡县', '422', '542128', '0', '0');
INSERT INTO `area_code` VALUES ('2861', '芒康县', '422', '542129', '0', '0');
INSERT INTO `area_code` VALUES ('2862', '洛隆县', '422', '542132', '0', '0');
INSERT INTO `area_code` VALUES ('2863', '边坝县', '422', '542133', '0', '0');
INSERT INTO `area_code` VALUES ('2864', '乃东区', '423', '540502', '0', '0');
INSERT INTO `area_code` VALUES ('2865', '扎囊县', '423', '540521', '0', '0');
INSERT INTO `area_code` VALUES ('2866', '贡嘎县', '423', '540522', '0', '0');
INSERT INTO `area_code` VALUES ('2867', '桑日县', '423', '540523', '0', '0');
INSERT INTO `area_code` VALUES ('2868', '琼结县', '423', '540524', '0', '0');
INSERT INTO `area_code` VALUES ('2869', '曲松县', '423', '540525', '0', '0');
INSERT INTO `area_code` VALUES ('2870', '措美县', '423', '540526', '0', '0');
INSERT INTO `area_code` VALUES ('2871', '洛扎县', '423', '540527', '0', '0');
INSERT INTO `area_code` VALUES ('2872', '加查县', '423', '540528', '0', '0');
INSERT INTO `area_code` VALUES ('2873', '隆子县', '423', '540529', '0', '0');
INSERT INTO `area_code` VALUES ('2874', '错那县', '423', '540530', '0', '0');
INSERT INTO `area_code` VALUES ('2875', '浪卡子县', '423', '540531', '0', '0');
INSERT INTO `area_code` VALUES ('2876', '桑珠孜区', '424', '542301', '0', '0');
INSERT INTO `area_code` VALUES ('2877', '南木林县', '424', '542322', '0', '0');
INSERT INTO `area_code` VALUES ('2878', '江孜县', '424', '542323', '0', '0');
INSERT INTO `area_code` VALUES ('2879', '定日县', '424', '542324', '0', '0');
INSERT INTO `area_code` VALUES ('2880', '萨迦县', '424', '542325', '0', '0');
INSERT INTO `area_code` VALUES ('2881', '拉孜县', '424', '542326', '0', '0');
INSERT INTO `area_code` VALUES ('2882', '昂仁县', '424', '542327', '0', '0');
INSERT INTO `area_code` VALUES ('2883', '谢通门县', '424', '542328', '0', '0');
INSERT INTO `area_code` VALUES ('2884', '白朗县', '424', '542329', '0', '0');
INSERT INTO `area_code` VALUES ('2885', '仁布县', '424', '542330', '0', '0');
INSERT INTO `area_code` VALUES ('2886', '康马县', '424', '542331', '0', '0');
INSERT INTO `area_code` VALUES ('2887', '定结县', '424', '542332', '0', '0');
INSERT INTO `area_code` VALUES ('2888', '仲巴县', '424', '542333', '0', '0');
INSERT INTO `area_code` VALUES ('2889', '亚东县', '424', '542334', '0', '0');
INSERT INTO `area_code` VALUES ('2890', '吉隆县', '424', '542335', '0', '0');
INSERT INTO `area_code` VALUES ('2891', '聂拉木县', '424', '542336', '0', '0');
INSERT INTO `area_code` VALUES ('2892', '萨嘎县', '424', '542337', '0', '0');
INSERT INTO `area_code` VALUES ('2893', '岗巴县', '424', '542338', '0', '0');
INSERT INTO `area_code` VALUES ('2894', '双湖县', '425', '540630', '0', '0');
INSERT INTO `area_code` VALUES ('2895', '色尼区', '425', '540602', '0', '0');
INSERT INTO `area_code` VALUES ('2896', '嘉黎县', '425', '540621', '0', '0');
INSERT INTO `area_code` VALUES ('2897', '比如县', '425', '540622', '0', '0');
INSERT INTO `area_code` VALUES ('2898', '聂荣县', '425', '540623', '0', '0');
INSERT INTO `area_code` VALUES ('2899', '安多县', '425', '540624', '0', '0');
INSERT INTO `area_code` VALUES ('2900', '申扎县', '425', '540625', '0', '0');
INSERT INTO `area_code` VALUES ('2901', '索县', '425', '540626', '0', '0');
INSERT INTO `area_code` VALUES ('2902', '班戈县', '425', '540627', '0', '0');
INSERT INTO `area_code` VALUES ('2903', '巴青县', '425', '540628', '0', '0');
INSERT INTO `area_code` VALUES ('2904', '尼玛县', '425', '540629', '0', '0');
INSERT INTO `area_code` VALUES ('2905', '普兰县', '426', '542521', '0', '0');
INSERT INTO `area_code` VALUES ('2906', '札达县', '426', '542522', '0', '0');
INSERT INTO `area_code` VALUES ('2907', '噶尔县', '426', '542523', '0', '0');
INSERT INTO `area_code` VALUES ('2908', '日土县', '426', '542524', '0', '0');
INSERT INTO `area_code` VALUES ('2909', '革吉县', '426', '542525', '0', '0');
INSERT INTO `area_code` VALUES ('2910', '改则县', '426', '542526', '0', '0');
INSERT INTO `area_code` VALUES ('2911', '措勤县', '426', '542527', '0', '0');
INSERT INTO `area_code` VALUES ('2912', '巴宜区', '427', '540402', '0', '0');
INSERT INTO `area_code` VALUES ('2913', '工布江达县', '427', '542621', '0', '0');
INSERT INTO `area_code` VALUES ('2914', '米林县', '427', '542621', '0', '0');
INSERT INTO `area_code` VALUES ('2915', '墨脱县', '427', '542621', '0', '0');
INSERT INTO `area_code` VALUES ('2916', '波密县', '427', '542621', '0', '0');
INSERT INTO `area_code` VALUES ('2917', '察隅县', '427', '542621', '0', '0');
INSERT INTO `area_code` VALUES ('2918', '朗县', '427', '542621', '0', '0');
INSERT INTO `area_code` VALUES ('2919', '新城区', '428', '610102', '0', '0');
INSERT INTO `area_code` VALUES ('2920', '碑林区', '428', '610103', '0', '0');
INSERT INTO `area_code` VALUES ('2921', '莲湖区', '428', '610104', '0', '0');
INSERT INTO `area_code` VALUES ('2922', '灞桥区', '428', '610111', '0', '0');
INSERT INTO `area_code` VALUES ('2923', '未央区', '428', '610112', '0', '0');
INSERT INTO `area_code` VALUES ('2924', '雁塔区', '428', '610113', '0', '0');
INSERT INTO `area_code` VALUES ('2925', '阎良区', '428', '610114', '0', '0');
INSERT INTO `area_code` VALUES ('2926', '临潼区', '428', '610115', '0', '0');
INSERT INTO `area_code` VALUES ('2927', '长安区', '428', '610116', '0', '0');
INSERT INTO `area_code` VALUES ('2928', '蓝田县', '428', '610122', '0', '0');
INSERT INTO `area_code` VALUES ('2929', '周至县', '428', '610124', '0', '0');
INSERT INTO `area_code` VALUES ('2930', '鄠邑区', '428', '610118', '0', '0');
INSERT INTO `area_code` VALUES ('2931', '高陵区', '428', '610117', '0', '0');
INSERT INTO `area_code` VALUES ('2932', '王益区', '429', '610202', '0', '0');
INSERT INTO `area_code` VALUES ('2933', '印台区', '429', '610203', '0', '0');
INSERT INTO `area_code` VALUES ('2934', '耀州区', '429', '610204', '0', '0');
INSERT INTO `area_code` VALUES ('2935', '宜君县', '429', '610222', '0', '0');
INSERT INTO `area_code` VALUES ('2936', '渭滨区', '430', '610302', '0', '0');
INSERT INTO `area_code` VALUES ('2937', '金台区', '430', '610303', '0', '0');
INSERT INTO `area_code` VALUES ('2938', '陈仓区', '430', '610304', '0', '0');
INSERT INTO `area_code` VALUES ('2939', '凤翔县', '430', '610322', '0', '0');
INSERT INTO `area_code` VALUES ('2940', '岐山县', '430', '610323', '0', '0');
INSERT INTO `area_code` VALUES ('2941', '扶风县', '430', '610324', '0', '0');
INSERT INTO `area_code` VALUES ('2942', '眉县', '430', '610326', '0', '0');
INSERT INTO `area_code` VALUES ('2943', '陇县', '430', '610327', '0', '0');
INSERT INTO `area_code` VALUES ('2944', '千阳县', '430', '610328', '0', '0');
INSERT INTO `area_code` VALUES ('2945', '麟游县', '430', '610329', '0', '0');
INSERT INTO `area_code` VALUES ('2946', '凤县', '430', '610330', '0', '0');
INSERT INTO `area_code` VALUES ('2947', '太白县', '430', '610331', '0', '0');
INSERT INTO `area_code` VALUES ('2948', '秦都区', '431', '610402', '0', '0');
INSERT INTO `area_code` VALUES ('2949', '杨陵区', '431', '610403', '0', '0');
INSERT INTO `area_code` VALUES ('2950', '渭城区', '431', '610404', '0', '0');
INSERT INTO `area_code` VALUES ('2951', '三原县', '431', '610422', '0', '0');
INSERT INTO `area_code` VALUES ('2952', '泾阳县', '431', '610423', '0', '0');
INSERT INTO `area_code` VALUES ('2953', '乾县', '431', '610424', '0', '0');
INSERT INTO `area_code` VALUES ('2954', '礼泉县', '431', '610425', '0', '0');
INSERT INTO `area_code` VALUES ('2955', '永寿县', '431', '610426', '0', '0');
INSERT INTO `area_code` VALUES ('2956', '彬州市', '431', '610482', '0', '0');
INSERT INTO `area_code` VALUES ('2957', '长武县', '431', '610428', '0', '0');
INSERT INTO `area_code` VALUES ('2958', '旬邑县', '431', '610429', '0', '0');
INSERT INTO `area_code` VALUES ('2959', '淳化县', '431', '610430', '0', '0');
INSERT INTO `area_code` VALUES ('2960', '武功县', '431', '610431', '0', '0');
INSERT INTO `area_code` VALUES ('2961', '兴平市', '431', '610481', '0', '0');
INSERT INTO `area_code` VALUES ('2962', '临渭区', '432', '610502', '0', '0');
INSERT INTO `area_code` VALUES ('2963', '华州区', '432', '610521', '0', '0');
INSERT INTO `area_code` VALUES ('2964', '潼关县', '432', '610522', '0', '0');
INSERT INTO `area_code` VALUES ('2965', '大荔县', '432', '610523', '0', '0');
INSERT INTO `area_code` VALUES ('2966', '合阳县', '432', '610524', '0', '0');
INSERT INTO `area_code` VALUES ('2967', '澄城县', '432', '610525', '0', '0');
INSERT INTO `area_code` VALUES ('2968', '蒲城县', '432', '610526', '0', '0');
INSERT INTO `area_code` VALUES ('2969', '白水县', '432', '610527', '0', '0');
INSERT INTO `area_code` VALUES ('2970', '富平县', '432', '610528', '0', '0');
INSERT INTO `area_code` VALUES ('2971', '韩城市', '432', '610581', '0', '0');
INSERT INTO `area_code` VALUES ('2972', '华阴市', '432', '610582', '0', '0');
INSERT INTO `area_code` VALUES ('2973', '宝塔区', '433', '610602', '0', '0');
INSERT INTO `area_code` VALUES ('2974', '延长县', '433', '610621', '0', '0');
INSERT INTO `area_code` VALUES ('2975', '延川县', '433', '610622', '0', '0');
INSERT INTO `area_code` VALUES ('2976', '子长市', '433', '610681', '0', '0');
INSERT INTO `area_code` VALUES ('2977', '安塞区', '433', '610603', '0', '0');
INSERT INTO `area_code` VALUES ('2978', '志丹县', '433', '610625', '0', '0');
INSERT INTO `area_code` VALUES ('2979', '吴起县', '433', '610626', '0', '0');
INSERT INTO `area_code` VALUES ('2980', '甘泉县', '433', '610627', '0', '0');
INSERT INTO `area_code` VALUES ('2981', '富县', '433', '610628', '0', '0');
INSERT INTO `area_code` VALUES ('2982', '洛川县', '433', '610629', '0', '0');
INSERT INTO `area_code` VALUES ('2983', '宜川县', '433', '610630', '0', '0');
INSERT INTO `area_code` VALUES ('2984', '黄龙县', '433', '610631', '0', '0');
INSERT INTO `area_code` VALUES ('2985', '黄陵县', '433', '610632', '0', '0');
INSERT INTO `area_code` VALUES ('2986', '汉台区', '434', '610702', '0', '0');
INSERT INTO `area_code` VALUES ('2987', '南郑区', '434', '610703', '0', '0');
INSERT INTO `area_code` VALUES ('2988', '城固县', '434', '610722', '0', '0');
INSERT INTO `area_code` VALUES ('2989', '洋县', '434', '610723', '0', '0');
INSERT INTO `area_code` VALUES ('2990', '西乡县', '434', '610724', '0', '0');
INSERT INTO `area_code` VALUES ('2991', '勉县', '434', '610725', '0', '0');
INSERT INTO `area_code` VALUES ('2992', '宁强县', '434', '610726', '0', '0');
INSERT INTO `area_code` VALUES ('2993', '略阳县', '434', '610727', '0', '0');
INSERT INTO `area_code` VALUES ('2994', '镇巴县', '434', '610728', '0', '0');
INSERT INTO `area_code` VALUES ('2995', '留坝县', '434', '610729', '0', '0');
INSERT INTO `area_code` VALUES ('2996', '佛坪县', '434', '610730', '0', '0');
INSERT INTO `area_code` VALUES ('2997', '榆阳区', '435', '610802', '0', '0');
INSERT INTO `area_code` VALUES ('2998', '神木市', '435', '610881', '0', '0');
INSERT INTO `area_code` VALUES ('2999', '府谷县', '435', '610822', '0', '0');
INSERT INTO `area_code` VALUES ('3000', '横山区', '435', '610823', '0', '0');
INSERT INTO `area_code` VALUES ('3001', '靖边县', '435', '610824', '0', '0');
INSERT INTO `area_code` VALUES ('3002', '定边县', '435', '610825', '0', '0');
INSERT INTO `area_code` VALUES ('3003', '绥德县', '435', '610826', '0', '0');
INSERT INTO `area_code` VALUES ('3004', '米脂县', '435', '610827', '0', '0');
INSERT INTO `area_code` VALUES ('3005', '佳县', '435', '610828', '0', '0');
INSERT INTO `area_code` VALUES ('3006', '吴堡县', '435', '610829', '0', '0');
INSERT INTO `area_code` VALUES ('3007', '清涧县', '435', '610830', '0', '0');
INSERT INTO `area_code` VALUES ('3008', '子洲县', '435', '610831', '0', '0');
INSERT INTO `area_code` VALUES ('3009', '汉滨区', '436', '610902', '0', '0');
INSERT INTO `area_code` VALUES ('3010', '汉阴县', '436', '610921', '0', '0');
INSERT INTO `area_code` VALUES ('3011', '石泉县', '436', '610922', '0', '0');
INSERT INTO `area_code` VALUES ('3012', '宁陕县', '436', '610923', '0', '0');
INSERT INTO `area_code` VALUES ('3013', '紫阳县', '436', '610924', '0', '0');
INSERT INTO `area_code` VALUES ('3014', '岚皋县', '436', '610925', '0', '0');
INSERT INTO `area_code` VALUES ('3015', '平利县', '436', '610926', '0', '0');
INSERT INTO `area_code` VALUES ('3016', '镇坪县', '436', '610927', '0', '0');
INSERT INTO `area_code` VALUES ('3017', '旬阳县', '436', '610928', '0', '0');
INSERT INTO `area_code` VALUES ('3018', '白河县', '436', '610929', '0', '0');
INSERT INTO `area_code` VALUES ('3019', '商州区', '437', '611002', '0', '0');
INSERT INTO `area_code` VALUES ('3020', '洛南县', '437', '611021', '0', '0');
INSERT INTO `area_code` VALUES ('3021', '丹凤县', '437', '611022', '0', '0');
INSERT INTO `area_code` VALUES ('3022', '商南县', '437', '611023', '0', '0');
INSERT INTO `area_code` VALUES ('3023', '山阳县', '437', '611024', '0', '0');
INSERT INTO `area_code` VALUES ('3024', '镇安县', '437', '611025', '0', '0');
INSERT INTO `area_code` VALUES ('3025', '柞水县', '437', '611026', '0', '0');
INSERT INTO `area_code` VALUES ('3026', '城关区', '438', '620102', '0', '0');
INSERT INTO `area_code` VALUES ('3027', '七里河区', '438', '620103', '0', '0');
INSERT INTO `area_code` VALUES ('3028', '西固区', '438', '620104', '0', '0');
INSERT INTO `area_code` VALUES ('3029', '安宁区', '438', '620105', '0', '0');
INSERT INTO `area_code` VALUES ('3030', '红古区', '438', '620111', '0', '0');
INSERT INTO `area_code` VALUES ('3031', '永登县', '438', '620121', '0', '0');
INSERT INTO `area_code` VALUES ('3032', '皋兰县', '438', '620122', '0', '0');
INSERT INTO `area_code` VALUES ('3033', '榆中县', '438', '620123', '0', '0');
INSERT INTO `area_code` VALUES ('3034', '镜铁区', '439', '620201', '0', '0');
INSERT INTO `area_code` VALUES ('3035', '长城区', '439', '620201', '0', '0');
INSERT INTO `area_code` VALUES ('3036', '雄关区', '439', '620201', '0', '0');
INSERT INTO `area_code` VALUES ('3037', '金川区', '440', '620302', '0', '0');
INSERT INTO `area_code` VALUES ('3038', '永昌县', '440', '620321', '0', '0');
INSERT INTO `area_code` VALUES ('3039', '白银区', '441', '620402', '0', '0');
INSERT INTO `area_code` VALUES ('3040', '平川区', '441', '620403', '0', '0');
INSERT INTO `area_code` VALUES ('3041', '靖远县', '441', '620421', '0', '0');
INSERT INTO `area_code` VALUES ('3042', '会宁县', '441', '620422', '0', '0');
INSERT INTO `area_code` VALUES ('3043', '景泰县', '441', '620423', '0', '0');
INSERT INTO `area_code` VALUES ('3044', '秦州区', '442', '620502', '0', '0');
INSERT INTO `area_code` VALUES ('3045', '麦积区', '442', '620503', '0', '0');
INSERT INTO `area_code` VALUES ('3046', '清水县', '442', '620521', '0', '0');
INSERT INTO `area_code` VALUES ('3047', '秦安县', '442', '620522', '0', '0');
INSERT INTO `area_code` VALUES ('3048', '甘谷县', '442', '620523', '0', '0');
INSERT INTO `area_code` VALUES ('3049', '武山县', '442', '620524', '0', '0');
INSERT INTO `area_code` VALUES ('3050', '张家川自治县', '442', '620525', '0', '0');
INSERT INTO `area_code` VALUES ('3051', '凉州区', '443', '620602', '0', '0');
INSERT INTO `area_code` VALUES ('3052', '民勤县', '443', '620621', '0', '0');
INSERT INTO `area_code` VALUES ('3053', '古浪县', '443', '620622', '0', '0');
INSERT INTO `area_code` VALUES ('3054', '天祝自治县', '443', '620623', '0', '0');
INSERT INTO `area_code` VALUES ('3055', '甘州区', '444', '620702', '0', '0');
INSERT INTO `area_code` VALUES ('3056', '肃南自治县', '444', '620721', '0', '0');
INSERT INTO `area_code` VALUES ('3057', '民乐县', '444', '620722', '0', '0');
INSERT INTO `area_code` VALUES ('3058', '临泽县', '444', '620723', '0', '0');
INSERT INTO `area_code` VALUES ('3059', '高台县', '444', '620724', '0', '0');
INSERT INTO `area_code` VALUES ('3060', '山丹县', '444', '620725', '0', '0');
INSERT INTO `area_code` VALUES ('3061', '崆峒区', '445', '620802', '0', '0');
INSERT INTO `area_code` VALUES ('3062', '泾川县', '445', '620821', '0', '0');
INSERT INTO `area_code` VALUES ('3063', '灵台县', '445', '620822', '0', '0');
INSERT INTO `area_code` VALUES ('3064', '崇信县', '445', '620823', '0', '0');
INSERT INTO `area_code` VALUES ('3065', '华亭市', '445', '620881', '0', '0');
INSERT INTO `area_code` VALUES ('3066', '庄浪县', '445', '620825', '0', '0');
INSERT INTO `area_code` VALUES ('3067', '静宁县', '445', '620826', '0', '0');
INSERT INTO `area_code` VALUES ('3068', '肃州区', '446', '620902', '0', '0');
INSERT INTO `area_code` VALUES ('3069', '金塔县', '446', '620921', '0', '0');
INSERT INTO `area_code` VALUES ('3070', '瓜州县', '446', '620922', '0', '0');
INSERT INTO `area_code` VALUES ('3071', '肃北自治县', '446', '620923', '0', '0');
INSERT INTO `area_code` VALUES ('3072', '阿克塞自治县', '446', '620924', '0', '0');
INSERT INTO `area_code` VALUES ('3073', '玉门市', '446', '620981', '0', '0');
INSERT INTO `area_code` VALUES ('3074', '敦煌市', '446', '620982', '0', '0');
INSERT INTO `area_code` VALUES ('3075', '西峰区', '447', '621002', '0', '0');
INSERT INTO `area_code` VALUES ('3076', '庆城县', '447', '621021', '0', '0');
INSERT INTO `area_code` VALUES ('3077', '环县', '447', '621022', '0', '0');
INSERT INTO `area_code` VALUES ('3078', '华池县', '447', '621023', '0', '0');
INSERT INTO `area_code` VALUES ('3079', '合水县', '447', '621024', '0', '0');
INSERT INTO `area_code` VALUES ('3080', '正宁县', '447', '621025', '0', '0');
INSERT INTO `area_code` VALUES ('3081', '宁县', '447', '621026', '0', '0');
INSERT INTO `area_code` VALUES ('3082', '镇原县', '447', '621027', '0', '0');
INSERT INTO `area_code` VALUES ('3083', '安定区', '448', '621102', '0', '0');
INSERT INTO `area_code` VALUES ('3084', '通渭县', '448', '621121', '0', '0');
INSERT INTO `area_code` VALUES ('3085', '陇西县', '448', '621122', '0', '0');
INSERT INTO `area_code` VALUES ('3086', '渭源县', '448', '621123', '0', '0');
INSERT INTO `area_code` VALUES ('3087', '临洮县', '448', '621124', '0', '0');
INSERT INTO `area_code` VALUES ('3088', '漳县', '448', '621125', '0', '0');
INSERT INTO `area_code` VALUES ('3089', '岷县', '448', '621126', '0', '0');
INSERT INTO `area_code` VALUES ('3090', '武都区', '449', '621202', '0', '0');
INSERT INTO `area_code` VALUES ('3091', '成县', '449', '621221', '0', '0');
INSERT INTO `area_code` VALUES ('3092', '文县', '449', '621222', '0', '0');
INSERT INTO `area_code` VALUES ('3093', '宕昌县', '449', '621223', '0', '0');
INSERT INTO `area_code` VALUES ('3094', '康县', '449', '621224', '0', '0');
INSERT INTO `area_code` VALUES ('3095', '西和县', '449', '621225', '0', '0');
INSERT INTO `area_code` VALUES ('3096', '礼县', '449', '621226', '0', '0');
INSERT INTO `area_code` VALUES ('3097', '徽县', '449', '621227', '0', '0');
INSERT INTO `area_code` VALUES ('3098', '两当县', '449', '621228', '0', '0');
INSERT INTO `area_code` VALUES ('3099', '临夏市', '450', '622901', '0', '0');
INSERT INTO `area_code` VALUES ('3100', '临夏县', '450', '622921', '0', '0');
INSERT INTO `area_code` VALUES ('3101', '康乐县', '450', '622922', '0', '0');
INSERT INTO `area_code` VALUES ('3102', '永靖县', '450', '622923', '0', '0');
INSERT INTO `area_code` VALUES ('3103', '广河县', '450', '622924', '0', '0');
INSERT INTO `area_code` VALUES ('3104', '和政县', '450', '622925', '0', '0');
INSERT INTO `area_code` VALUES ('3105', '东乡族自治县', '450', '622926', '0', '0');
INSERT INTO `area_code` VALUES ('3106', '积石山自治县', '450', '622927', '0', '0');
INSERT INTO `area_code` VALUES ('3107', '合作市', '451', '623001', '0', '0');
INSERT INTO `area_code` VALUES ('3108', '临潭县', '451', '623021', '0', '0');
INSERT INTO `area_code` VALUES ('3109', '卓尼县', '451', '623022', '0', '0');
INSERT INTO `area_code` VALUES ('3110', '舟曲县', '451', '623023', '0', '0');
INSERT INTO `area_code` VALUES ('3111', '迭部县', '451', '623024', '0', '0');
INSERT INTO `area_code` VALUES ('3112', '玛曲县', '451', '623025', '0', '0');
INSERT INTO `area_code` VALUES ('3113', '碌曲县', '451', '623026', '0', '0');
INSERT INTO `area_code` VALUES ('3114', '夏河县', '451', '623027', '0', '0');
INSERT INTO `area_code` VALUES ('3115', '城东区', '452', '630102', '0', '0');
INSERT INTO `area_code` VALUES ('3116', '城中区', '452', '630103', '0', '0');
INSERT INTO `area_code` VALUES ('3117', '城西区', '452', '630104', '0', '0');
INSERT INTO `area_code` VALUES ('3118', '城北区', '452', '630105', '0', '0');
INSERT INTO `area_code` VALUES ('3119', '大通自治县', '452', '630121', '0', '0');
INSERT INTO `area_code` VALUES ('3120', '湟中区', '452', '630106', '0', '0');
INSERT INTO `area_code` VALUES ('3121', '湟源县', '452', '630123', '0', '0');
INSERT INTO `area_code` VALUES ('3122', '乐都区', '453', '630202', '0', '0');
INSERT INTO `area_code` VALUES ('3123', '平安区', '453', '632121', '0', '0');
INSERT INTO `area_code` VALUES ('3124', '民和自治县', '453', '632122', '0', '0');
INSERT INTO `area_code` VALUES ('3125', '互助自治县', '453', '632126', '0', '0');
INSERT INTO `area_code` VALUES ('3126', '化隆自治县', '453', '632127', '0', '0');
INSERT INTO `area_code` VALUES ('3127', '循化自治县', '453', '632128', '0', '0');
INSERT INTO `area_code` VALUES ('3128', '门源自治县', '454', '632221', '0', '0');
INSERT INTO `area_code` VALUES ('3129', '祁连县', '454', '632222', '0', '0');
INSERT INTO `area_code` VALUES ('3130', '海晏县', '454', '632223', '0', '0');
INSERT INTO `area_code` VALUES ('3131', '刚察县', '454', '632224', '0', '0');
INSERT INTO `area_code` VALUES ('3132', '同仁县', '455', '632321', '0', '0');
INSERT INTO `area_code` VALUES ('3133', '尖扎县', '455', '632322', '0', '0');
INSERT INTO `area_code` VALUES ('3134', '泽库县', '455', '632323', '0', '0');
INSERT INTO `area_code` VALUES ('3135', '河南自治县', '455', '632324', '0', '0');
INSERT INTO `area_code` VALUES ('3136', '共和县', '456', '632521', '0', '0');
INSERT INTO `area_code` VALUES ('3137', '同德县', '456', '632522', '0', '0');
INSERT INTO `area_code` VALUES ('3138', '贵德县', '456', '632523', '0', '0');
INSERT INTO `area_code` VALUES ('3139', '兴海县', '456', '632524', '0', '0');
INSERT INTO `area_code` VALUES ('3140', '贵南县', '456', '632525', '0', '0');
INSERT INTO `area_code` VALUES ('3141', '玛沁县', '457', '632621', '0', '0');
INSERT INTO `area_code` VALUES ('3142', '班玛县', '457', '632622', '0', '0');
INSERT INTO `area_code` VALUES ('3143', '甘德县', '457', '632623', '0', '0');
INSERT INTO `area_code` VALUES ('3144', '达日县', '457', '632624', '0', '0');
INSERT INTO `area_code` VALUES ('3145', '久治县', '457', '632625', '0', '0');
INSERT INTO `area_code` VALUES ('3146', '玛多县', '457', '632626', '0', '0');
INSERT INTO `area_code` VALUES ('3147', '玉树市', '458', '632721', '0', '0');
INSERT INTO `area_code` VALUES ('3148', '杂多县', '458', '632722', '0', '0');
INSERT INTO `area_code` VALUES ('3149', '治多县', '458', '632724', '0', '0');
INSERT INTO `area_code` VALUES ('3150', '囊谦县', '458', '632725', '0', '0');
INSERT INTO `area_code` VALUES ('3151', '曲麻莱县', '458', '632726', '0', '0');
INSERT INTO `area_code` VALUES ('3154', '茫崖市', '459', '632803', '0', '0');
INSERT INTO `area_code` VALUES ('3155', '格尔木市', '459', '632801', '0', '0');
INSERT INTO `area_code` VALUES ('3156', '德令哈市', '459', '632802', '0', '0');
INSERT INTO `area_code` VALUES ('3157', '乌兰县', '459', '632821', '0', '0');
INSERT INTO `area_code` VALUES ('3158', '都兰县', '459', '632822', '0', '0');
INSERT INTO `area_code` VALUES ('3159', '天峻县', '459', '632823', '0', '0');
INSERT INTO `area_code` VALUES ('3160', '兴庆区', '460', '640104', '0', '0');
INSERT INTO `area_code` VALUES ('3161', '西夏区', '460', '640105', '0', '0');
INSERT INTO `area_code` VALUES ('3162', '金凤区', '460', '640106', '0', '0');
INSERT INTO `area_code` VALUES ('3163', '永宁县', '460', '640121', '0', '0');
INSERT INTO `area_code` VALUES ('3164', '贺兰县', '460', '640122', '0', '0');
INSERT INTO `area_code` VALUES ('3165', '灵武市', '460', '640181', '0', '0');
INSERT INTO `area_code` VALUES ('3166', '大武口区', '461', '640202', '0', '0');
INSERT INTO `area_code` VALUES ('3167', '惠农区', '461', '640205', '0', '0');
INSERT INTO `area_code` VALUES ('3168', '平罗县', '461', '640221', '0', '0');
INSERT INTO `area_code` VALUES ('3169', '红寺堡区', '462', null, '0', '0');
INSERT INTO `area_code` VALUES ('3170', '利通区', '462', '640302', '0', '0');
INSERT INTO `area_code` VALUES ('3171', '盐池县', '462', '640323', '0', '0');
INSERT INTO `area_code` VALUES ('3172', '同心县', '462', '640324', '0', '0');
INSERT INTO `area_code` VALUES ('3173', '青铜峡市', '462', '640381', '0', '0');
INSERT INTO `area_code` VALUES ('3174', '原州区', '463', '640402', '0', '0');
INSERT INTO `area_code` VALUES ('3175', '西吉县', '463', '640422', '0', '0');
INSERT INTO `area_code` VALUES ('3176', '隆德县', '463', '640423', '0', '0');
INSERT INTO `area_code` VALUES ('3177', '泾源县', '463', '640424', '0', '0');
INSERT INTO `area_code` VALUES ('3178', '彭阳县', '463', '640425', '0', '0');
INSERT INTO `area_code` VALUES ('3179', '沙坡头区', '464', '640502', '0', '0');
INSERT INTO `area_code` VALUES ('3180', '中宁县', '464', '640521', '0', '0');
INSERT INTO `area_code` VALUES ('3181', '海原县', '464', '640522', '0', '0');
INSERT INTO `area_code` VALUES ('3182', '天山区', '465', '650102', '0', '0');
INSERT INTO `area_code` VALUES ('3183', '沙依巴克区', '465', '650103', '0', '0');
INSERT INTO `area_code` VALUES ('3184', '新市区', '465', '650104', '0', '0');
INSERT INTO `area_code` VALUES ('3185', '水磨沟区', '465', '650105', '0', '0');
INSERT INTO `area_code` VALUES ('3186', '头屯河区', '465', '650106', '0', '0');
INSERT INTO `area_code` VALUES ('3187', '达坂城区', '465', '650107', '0', '0');
INSERT INTO `area_code` VALUES ('3188', '米东区', '465', '650109', '0', '0');
INSERT INTO `area_code` VALUES ('3189', '乌鲁木齐县', '465', '650121', '0', '0');
INSERT INTO `area_code` VALUES ('3190', '独山子区', '466', '650202', '0', '0');
INSERT INTO `area_code` VALUES ('3191', '克拉玛依区', '466', '650203', '0', '0');
INSERT INTO `area_code` VALUES ('3192', '白碱滩区', '466', '650204', '0', '0');
INSERT INTO `area_code` VALUES ('3193', '乌尔禾区', '466', '650205', '0', '0');
INSERT INTO `area_code` VALUES ('3194', '高昌区', '467', '652101', '0', '0');
INSERT INTO `area_code` VALUES ('3195', '鄯善县', '467', '652122', '0', '0');
INSERT INTO `area_code` VALUES ('3196', '托克逊县', '467', '652123', '0', '0');
INSERT INTO `area_code` VALUES ('3197', '伊州区', '468', '650502', '0', '0');
INSERT INTO `area_code` VALUES ('3198', '巴里坤自治县', '468', '650521', '0', '0');
INSERT INTO `area_code` VALUES ('3199', '伊吾县', '468', '650522', '0', '0');
INSERT INTO `area_code` VALUES ('3200', '昌吉市', '469', '652301', '0', '0');
INSERT INTO `area_code` VALUES ('3201', '阜康市', '469', '652302', '0', '0');
INSERT INTO `area_code` VALUES ('3202', '呼图壁县', '469', '652323', '0', '0');
INSERT INTO `area_code` VALUES ('3203', '玛纳斯县', '469', '652324', '0', '0');
INSERT INTO `area_code` VALUES ('3204', '奇台县', '469', '652325', '0', '0');
INSERT INTO `area_code` VALUES ('3205', '吉木萨尔县', '469', '652327', '0', '0');
INSERT INTO `area_code` VALUES ('3206', '木垒自治县', '469', '652328', '0', '0');
INSERT INTO `area_code` VALUES ('3207', '阿拉山口市', '470', null, '0', '0');
INSERT INTO `area_code` VALUES ('3208', '博乐市', '470', '652701', '0', '0');
INSERT INTO `area_code` VALUES ('3209', '精河县', '470', '652722', '0', '0');
INSERT INTO `area_code` VALUES ('3210', '温泉县', '470', '652723', '0', '0');
INSERT INTO `area_code` VALUES ('3211', '库尔勒市', '471', '652801', '0', '0');
INSERT INTO `area_code` VALUES ('3212', '轮台县', '471', '652822', '0', '0');
INSERT INTO `area_code` VALUES ('3213', '尉犁县', '471', '652823', '0', '0');
INSERT INTO `area_code` VALUES ('3214', '若羌县', '471', '652824', '0', '0');
INSERT INTO `area_code` VALUES ('3215', '且末县', '471', '652825', '0', '0');
INSERT INTO `area_code` VALUES ('3216', '焉耆自治县', '471', '652826', '0', '0');
INSERT INTO `area_code` VALUES ('3217', '和静县', '471', '652827', '0', '0');
INSERT INTO `area_code` VALUES ('3218', '和硕县', '471', '652828', '0', '0');
INSERT INTO `area_code` VALUES ('3219', '博湖县', '471', '652829', '0', '0');
INSERT INTO `area_code` VALUES ('3220', '阿克苏市', '472', '652901', '0', '0');
INSERT INTO `area_code` VALUES ('3221', '温宿县', '472', '652922', '0', '0');
INSERT INTO `area_code` VALUES ('3222', '库车市', '472', '652902', '0', '0');
INSERT INTO `area_code` VALUES ('3223', '沙雅县', '472', '652924', '0', '0');
INSERT INTO `area_code` VALUES ('3224', '新和县', '472', '652925', '0', '0');
INSERT INTO `area_code` VALUES ('3225', '拜城县', '472', '652926', '0', '0');
INSERT INTO `area_code` VALUES ('3226', '乌什县', '472', '652927', '0', '0');
INSERT INTO `area_code` VALUES ('3227', '阿瓦提县', '472', '652928', '0', '0');
INSERT INTO `area_code` VALUES ('3228', '柯坪县', '472', '652929', '0', '0');
INSERT INTO `area_code` VALUES ('3229', '阿图什市', '473', '653001', '0', '0');
INSERT INTO `area_code` VALUES ('3230', '阿克陶县', '473', '653022', '0', '0');
INSERT INTO `area_code` VALUES ('3231', '阿合奇县', '473', '653023', '0', '0');
INSERT INTO `area_code` VALUES ('3232', '乌恰县', '473', '653024', '0', '0');
INSERT INTO `area_code` VALUES ('3233', '喀什市', '474', '653101', '0', '0');
INSERT INTO `area_code` VALUES ('3234', '疏附县', '474', '653121', '0', '0');
INSERT INTO `area_code` VALUES ('3235', '疏勒县', '474', '653122', '0', '0');
INSERT INTO `area_code` VALUES ('3236', '英吉沙县', '474', '653123', '0', '0');
INSERT INTO `area_code` VALUES ('3237', '泽普县', '474', '653124', '0', '0');
INSERT INTO `area_code` VALUES ('3238', '莎车县', '474', '653125', '0', '0');
INSERT INTO `area_code` VALUES ('3239', '叶城县', '474', '653126', '0', '0');
INSERT INTO `area_code` VALUES ('3240', '麦盖提县', '474', '653127', '0', '0');
INSERT INTO `area_code` VALUES ('3241', '岳普湖县', '474', '653128', '0', '0');
INSERT INTO `area_code` VALUES ('3242', '伽师县', '474', '653129', '0', '0');
INSERT INTO `area_code` VALUES ('3243', '巴楚县', '474', '653130', '0', '0');
INSERT INTO `area_code` VALUES ('3244', '塔什库尔干自治县', '474', '653131', '0', '0');
INSERT INTO `area_code` VALUES ('3245', '和田市', '475', '653201', '0', '0');
INSERT INTO `area_code` VALUES ('3246', '和田县', '475', '653221', '0', '0');
INSERT INTO `area_code` VALUES ('3247', '墨玉县', '475', '653222', '0', '0');
INSERT INTO `area_code` VALUES ('3248', '皮山县', '475', '653223', '0', '0');
INSERT INTO `area_code` VALUES ('3249', '洛浦县', '475', '653224', '0', '0');
INSERT INTO `area_code` VALUES ('3250', '策勒县', '475', '653225', '0', '0');
INSERT INTO `area_code` VALUES ('3251', '于田县', '475', '653226', '0', '0');
INSERT INTO `area_code` VALUES ('3252', '民丰县', '475', '653227', '0', '0');
INSERT INTO `area_code` VALUES ('3253', '伊宁市', '476', '654002', '0', '0');
INSERT INTO `area_code` VALUES ('3254', '奎屯市', '476', '654003', '0', '0');
INSERT INTO `area_code` VALUES ('3255', '伊宁县', '476', '654021', '0', '0');
INSERT INTO `area_code` VALUES ('3256', '察布查尔锡伯自治县', '476', '654022', '0', '0');
INSERT INTO `area_code` VALUES ('3257', '霍城县', '476', '654023', '0', '0');
INSERT INTO `area_code` VALUES ('3258', '巩留县', '476', '654024', '0', '0');
INSERT INTO `area_code` VALUES ('3259', '新源县', '476', '654025', '0', '0');
INSERT INTO `area_code` VALUES ('3260', '昭苏县', '476', '654026', '0', '0');
INSERT INTO `area_code` VALUES ('3261', '特克斯县', '476', '654027', '0', '0');
INSERT INTO `area_code` VALUES ('3262', '尼勒克县', '476', '654028', '0', '0');
INSERT INTO `area_code` VALUES ('3263', '塔城市', '477', '654201', '0', '0');
INSERT INTO `area_code` VALUES ('3264', '乌苏市', '477', '654202', '0', '0');
INSERT INTO `area_code` VALUES ('3265', '额敏县', '477', '654221', '0', '0');
INSERT INTO `area_code` VALUES ('3266', '沙湾县', '477', '654223', '0', '0');
INSERT INTO `area_code` VALUES ('3267', '托里县', '477', '654224', '0', '0');
INSERT INTO `area_code` VALUES ('3268', '裕民县', '477', '654225', '0', '0');
INSERT INTO `area_code` VALUES ('3269', '和布克赛尔自治县', '477', '654226', '0', '0');
INSERT INTO `area_code` VALUES ('3270', '阿勒泰市', '478', '654301', '0', '0');
INSERT INTO `area_code` VALUES ('3271', '布尔津县', '478', '654321', '0', '0');
INSERT INTO `area_code` VALUES ('3272', '富蕴县', '478', '654322', '0', '0');
INSERT INTO `area_code` VALUES ('3273', '福海县', '478', '654323', '0', '0');
INSERT INTO `area_code` VALUES ('3274', '哈巴河县', '478', '654324', '0', '0');
INSERT INTO `area_code` VALUES ('3275', '青河县', '478', '654325', '0', '0');
INSERT INTO `area_code` VALUES ('3276', '吉木乃县', '478', '654326', '0', '0');
INSERT INTO `area_code` VALUES ('3277', '松山区', '485', '6300100', '0', '0');
INSERT INTO `area_code` VALUES ('3278', '信义区', '485', '6300200', '0', '0');
INSERT INTO `area_code` VALUES ('3279', '大安区', '485', '6300300', '0', '0');
INSERT INTO `area_code` VALUES ('3280', '中山区', '485', '6300400', '0', '0');
INSERT INTO `area_code` VALUES ('3281', '中正区', '485', '6300500', '0', '0');
INSERT INTO `area_code` VALUES ('3282', '大同区', '485', '6300600', '0', '0');
INSERT INTO `area_code` VALUES ('3283', '万华区', '485', '6300700', '0', '0');
INSERT INTO `area_code` VALUES ('3284', '文山区', '485', '6300800', '0', '0');
INSERT INTO `area_code` VALUES ('3285', '南港区', '485', '6300900', '0', '0');
INSERT INTO `area_code` VALUES ('3286', '内湖区', '485', '6301000', '0', '0');
INSERT INTO `area_code` VALUES ('3287', '士林区', '485', '6301100', '0', '0');
INSERT INTO `area_code` VALUES ('3288', '北投区', '485', '6301200', '0', '0');
INSERT INTO `area_code` VALUES ('3289', '盐埕区', '486', '6400100', '0', '0');
INSERT INTO `area_code` VALUES ('3290', '鼓山区', '486', '6400200', '0', '0');
INSERT INTO `area_code` VALUES ('3291', '左营区', '486', '6400300', '0', '0');
INSERT INTO `area_code` VALUES ('3292', '楠梓区', '486', '6400400', '0', '0');
INSERT INTO `area_code` VALUES ('3293', '三民区', '486', '6400500', '0', '0');
INSERT INTO `area_code` VALUES ('3294', '新兴区', '486', '6400600', '0', '0');
INSERT INTO `area_code` VALUES ('3295', '前金区', '486', '6400700', '0', '0');
INSERT INTO `area_code` VALUES ('3296', '苓雅区', '486', '6400800', '0', '0');
INSERT INTO `area_code` VALUES ('3297', '前镇区', '486', '6400900', '0', '0');
INSERT INTO `area_code` VALUES ('3298', '旗津区', '486', '6401000', '0', '0');
INSERT INTO `area_code` VALUES ('3299', '小港区', '486', '6401100', '0', '0');
INSERT INTO `area_code` VALUES ('3300', '中正区', '487', '1001701', '0', '0');
INSERT INTO `area_code` VALUES ('3301', '七堵区', '487', '1001702', '0', '0');
INSERT INTO `area_code` VALUES ('3302', '暖暖区', '487', '1001703', '0', '0');
INSERT INTO `area_code` VALUES ('3303', '仁爱区', '487', '1001704', '0', '0');
INSERT INTO `area_code` VALUES ('3304', '中山区', '487', '1001705', '0', '0');
INSERT INTO `area_code` VALUES ('3305', '安乐区', '487', '1001706', '0', '0');
INSERT INTO `area_code` VALUES ('3306', '信义区', '487', '1001707', '0', '0');
INSERT INTO `area_code` VALUES ('3307', '大安区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3308', '神冈区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3309', '石冈区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3310', '东势区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3311', '新社区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3312', '和平区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3313', '大肚区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3314', '沙鹿区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3315', '龙井区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3316', '梧栖区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3317', '清水区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3318', '大甲区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3319', '外埔区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3320', '大雅区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3321', '潭子区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3322', '后里区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3323', '丰原区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3324', '乌日区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3325', '雾峰区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3326', '大里区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3327', '太平区', '488', null, '0', '0');
INSERT INTO `area_code` VALUES ('3328', '中区', '488', '1001901', '0', '0');
INSERT INTO `area_code` VALUES ('3329', '东区', '488', '1001902', '0', '0');
INSERT INTO `area_code` VALUES ('3330', '南区', '488', '1001903', '0', '0');
INSERT INTO `area_code` VALUES ('3331', '西区', '488', '1001904', '0', '0');
INSERT INTO `area_code` VALUES ('3332', '北区', '488', '1001905', '0', '0');
INSERT INTO `area_code` VALUES ('3333', '西屯区', '488', '1001906', '0', '0');
INSERT INTO `area_code` VALUES ('3334', '南屯区', '488', '1001907', '0', '0');
INSERT INTO `area_code` VALUES ('3335', '北屯区', '488', '1001908', '0', '0');
INSERT INTO `area_code` VALUES ('3336', '东区', '489', '1002101', '0', '0');
INSERT INTO `area_code` VALUES ('3337', '南区', '489', '1002102', '0', '0');
INSERT INTO `area_code` VALUES ('3338', '北区', '489', '1002104', '0', '0');
INSERT INTO `area_code` VALUES ('3339', '安南区', '489', '1002106', '0', '0');
INSERT INTO `area_code` VALUES ('3340', '安平区', '489', '1002107', '0', '0');
INSERT INTO `area_code` VALUES ('3341', '中西区', '489', '1002108', '0', '0');
INSERT INTO `area_code` VALUES ('3342', '东区', '490', '1001801', '0', '0');
INSERT INTO `area_code` VALUES ('3343', '北区', '490', '1001802', '0', '0');
INSERT INTO `area_code` VALUES ('3344', '香山区', '490', '1001803', '0', '0');
INSERT INTO `area_code` VALUES ('3345', '东区', '491', '1002001', '0', '0');
INSERT INTO `area_code` VALUES ('3346', '西区', '491', '1002002', '0', '0');
INSERT INTO `area_code` VALUES ('3347', '板桥区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3348', '瑞芳区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3349', '八里区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3350', '深坑区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3351', '三芝区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3352', '金山区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3353', '万里区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3354', '贡寮区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3355', '石门区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3356', '双溪区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3357', '石碇区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3358', '坪林区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3359', '乌来区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3360', '泰山区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3361', '五股区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3362', '莺歌区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3363', '中和区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3364', '新庄区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3365', '三重区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3366', '新店区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3367', '土城区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3368', '永和区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3369', '芦洲区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3370', '汐止区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3371', '树林区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3372', '淡水区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3373', '三峡区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3374', '林口区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3375', '平溪区', '492', null, '0', '0');
INSERT INTO `area_code` VALUES ('3376', '宜兰市', '493', '1000201', '0', '0');
INSERT INTO `area_code` VALUES ('3377', '罗东镇', '493', '1000202', '0', '0');
INSERT INTO `area_code` VALUES ('3378', '苏澳镇', '493', '1000203', '0', '0');
INSERT INTO `area_code` VALUES ('3379', '头城乡', '493', '1000204', '0', '0');
INSERT INTO `area_code` VALUES ('3380', '礁溪乡', '493', '1000205', '0', '0');
INSERT INTO `area_code` VALUES ('3381', '壮围乡', '493', '1000206', '0', '0');
INSERT INTO `area_code` VALUES ('3382', '员山乡', '493', '1000207', '0', '0');
INSERT INTO `area_code` VALUES ('3383', '冬山乡', '493', '1000208', '0', '0');
INSERT INTO `area_code` VALUES ('3384', '五结乡', '493', '1000209', '0', '0');
INSERT INTO `area_code` VALUES ('3385', '三星乡', '493', '1000210', '0', '0');
INSERT INTO `area_code` VALUES ('3386', '大同乡', '493', '1000211', '0', '0');
INSERT INTO `area_code` VALUES ('3387', '南澳乡', '493', '1000212', '0', '0');
INSERT INTO `area_code` VALUES ('3388', '桃园市', '494', '1000301', '0', '0');
INSERT INTO `area_code` VALUES ('3389', '中坜市', '494', '1000302', '0', '0');
INSERT INTO `area_code` VALUES ('3390', '大溪镇', '494', '1000303', '0', '0');
INSERT INTO `area_code` VALUES ('3391', '杨梅镇', '494', '1000304', '0', '0');
INSERT INTO `area_code` VALUES ('3392', '芦竹乡', '494', '1000305', '0', '0');
INSERT INTO `area_code` VALUES ('3393', '大园乡', '494', '1000306', '0', '0');
INSERT INTO `area_code` VALUES ('3394', '龟山乡', '494', '1000307', '0', '0');
INSERT INTO `area_code` VALUES ('3395', '八德市', '494', '1000308', '0', '0');
INSERT INTO `area_code` VALUES ('3396', '龙潭乡', '494', '1000309', '0', '0');
INSERT INTO `area_code` VALUES ('3397', '平镇市', '494', '1000310', '0', '0');
INSERT INTO `area_code` VALUES ('3398', '新屋乡', '494', '1000311', '0', '0');
INSERT INTO `area_code` VALUES ('3399', '观音乡', '494', '1000312', '0', '0');
INSERT INTO `area_code` VALUES ('3400', '复兴乡', '494', '1000313', '0', '0');
INSERT INTO `area_code` VALUES ('3401', '竹北市', '495', '1000401', '0', '0');
INSERT INTO `area_code` VALUES ('3402', '竹东镇', '495', '1000402', '0', '0');
INSERT INTO `area_code` VALUES ('3403', '新埔镇', '495', '1000403', '0', '0');
INSERT INTO `area_code` VALUES ('3404', '关西镇', '495', '1000404', '0', '0');
INSERT INTO `area_code` VALUES ('3405', '湖口乡', '495', '1000405', '0', '0');
INSERT INTO `area_code` VALUES ('3406', '新丰乡', '495', '1000406', '0', '0');
INSERT INTO `area_code` VALUES ('3407', '芎林乡', '495', '1000407', '0', '0');
INSERT INTO `area_code` VALUES ('3408', '横山乡', '495', '1000408', '0', '0');
INSERT INTO `area_code` VALUES ('3409', '北埔乡', '495', '1000409', '0', '0');
INSERT INTO `area_code` VALUES ('3410', '宝山乡', '495', '1000410', '0', '0');
INSERT INTO `area_code` VALUES ('3411', '峨眉乡', '495', '1000411', '0', '0');
INSERT INTO `area_code` VALUES ('3412', '尖石乡', '495', '1000412', '0', '0');
INSERT INTO `area_code` VALUES ('3413', '五峰乡', '495', '1000413', '0', '0');
INSERT INTO `area_code` VALUES ('3414', '苗栗市', '496', '1000501', '0', '0');
INSERT INTO `area_code` VALUES ('3415', '苑里镇', '496', '1000502', '0', '0');
INSERT INTO `area_code` VALUES ('3416', '通霄镇', '496', '1000503', '0', '0');
INSERT INTO `area_code` VALUES ('3417', '竹南镇', '496', '1000504', '0', '0');
INSERT INTO `area_code` VALUES ('3418', '头份镇', '496', '1000505', '0', '0');
INSERT INTO `area_code` VALUES ('3419', '后龙镇', '496', '1000506', '0', '0');
INSERT INTO `area_code` VALUES ('3420', '卓兰镇', '496', '1000507', '0', '0');
INSERT INTO `area_code` VALUES ('3421', '大湖乡', '496', '1000508', '0', '0');
INSERT INTO `area_code` VALUES ('3422', '公馆乡', '496', '1000509', '0', '0');
INSERT INTO `area_code` VALUES ('3423', '铜锣乡', '496', '1000510', '0', '0');
INSERT INTO `area_code` VALUES ('3424', '南庄乡', '496', '1000511', '0', '0');
INSERT INTO `area_code` VALUES ('3425', '头屋乡', '496', '1000512', '0', '0');
INSERT INTO `area_code` VALUES ('3426', '三义乡', '496', '1000513', '0', '0');
INSERT INTO `area_code` VALUES ('3427', '西湖乡', '496', '1000514', '0', '0');
INSERT INTO `area_code` VALUES ('3428', '造桥乡', '496', '1000515', '0', '0');
INSERT INTO `area_code` VALUES ('3429', '三湾乡', '496', '1000516', '0', '0');
INSERT INTO `area_code` VALUES ('3430', '狮潭乡', '496', '1000517', '0', '0');
INSERT INTO `area_code` VALUES ('3431', '泰安乡', '496', '1000518', '0', '0');
INSERT INTO `area_code` VALUES ('3432', '彰化市', '497', '1000701', '0', '0');
INSERT INTO `area_code` VALUES ('3433', '鹿港镇', '497', '1000702', '0', '0');
INSERT INTO `area_code` VALUES ('3434', '和美镇', '497', '1000703', '0', '0');
INSERT INTO `area_code` VALUES ('3435', '线西乡', '497', '1000704', '0', '0');
INSERT INTO `area_code` VALUES ('3436', '伸港乡', '497', '1000705', '0', '0');
INSERT INTO `area_code` VALUES ('3437', '福兴乡', '497', '1000706', '0', '0');
INSERT INTO `area_code` VALUES ('3438', '秀水乡', '497', '1000707', '0', '0');
INSERT INTO `area_code` VALUES ('3439', '花坛乡', '497', '1000708', '0', '0');
INSERT INTO `area_code` VALUES ('3440', '芬园乡', '497', '1000709', '0', '0');
INSERT INTO `area_code` VALUES ('3441', '员林镇', '497', '1000710', '0', '0');
INSERT INTO `area_code` VALUES ('3442', '溪湖镇', '497', '1000711', '0', '0');
INSERT INTO `area_code` VALUES ('3443', '田中镇', '497', '1000712', '0', '0');
INSERT INTO `area_code` VALUES ('3444', '大村乡', '497', '1000713', '0', '0');
INSERT INTO `area_code` VALUES ('3445', '埔盐乡', '497', '1000714', '0', '0');
INSERT INTO `area_code` VALUES ('3446', '埔心乡', '497', '1000715', '0', '0');
INSERT INTO `area_code` VALUES ('3447', '永靖乡', '497', '1000716', '0', '0');
INSERT INTO `area_code` VALUES ('3448', '社头乡', '497', '1000717', '0', '0');
INSERT INTO `area_code` VALUES ('3449', '二水乡', '497', '1000718', '0', '0');
INSERT INTO `area_code` VALUES ('3450', '北斗镇', '497', '1000719', '0', '0');
INSERT INTO `area_code` VALUES ('3451', '二林镇', '497', '1000720', '0', '0');
INSERT INTO `area_code` VALUES ('3452', '田尾乡', '497', '1000721', '0', '0');
INSERT INTO `area_code` VALUES ('3453', '埤头乡', '497', '1000722', '0', '0');
INSERT INTO `area_code` VALUES ('3454', '芳苑乡', '497', '1000723', '0', '0');
INSERT INTO `area_code` VALUES ('3455', '大城乡', '497', '1000724', '0', '0');
INSERT INTO `area_code` VALUES ('3456', '竹塘乡', '497', '1000725', '0', '0');
INSERT INTO `area_code` VALUES ('3457', '溪州乡', '497', '1000726', '0', '0');
INSERT INTO `area_code` VALUES ('3458', '南投市', '498', '1000801', '0', '0');
INSERT INTO `area_code` VALUES ('3459', '南投镇', '498', '1000802', '0', '0');
INSERT INTO `area_code` VALUES ('3460', '草屯镇', '498', '1000803', '0', '0');
INSERT INTO `area_code` VALUES ('3461', '竹山镇', '498', '1000804', '0', '0');
INSERT INTO `area_code` VALUES ('3462', '集集镇', '498', '1000805', '0', '0');
INSERT INTO `area_code` VALUES ('3463', '名间乡', '498', '1000806', '0', '0');
INSERT INTO `area_code` VALUES ('3464', '鹿谷乡', '498', '1000807', '0', '0');
INSERT INTO `area_code` VALUES ('3465', '中寮乡', '498', '1000808', '0', '0');
INSERT INTO `area_code` VALUES ('3466', '鱼池乡', '498', '1000809', '0', '0');
INSERT INTO `area_code` VALUES ('3467', '国姓乡', '498', '1000810', '0', '0');
INSERT INTO `area_code` VALUES ('3468', '水里乡', '498', '1000811', '0', '0');
INSERT INTO `area_code` VALUES ('3469', '信义乡', '498', '1000812', '0', '0');
INSERT INTO `area_code` VALUES ('3470', '仁爱乡', '498', '1000813', '0', '0');
INSERT INTO `area_code` VALUES ('3471', '斗六市', '499', '1000901', '0', '0');
INSERT INTO `area_code` VALUES ('3472', '斗南镇', '499', '1000902', '0', '0');
INSERT INTO `area_code` VALUES ('3473', '虎尾镇', '499', '1000903', '0', '0');
INSERT INTO `area_code` VALUES ('3474', '西螺镇', '499', '1000904', '0', '0');
INSERT INTO `area_code` VALUES ('3475', '土库镇', '499', '1000905', '0', '0');
INSERT INTO `area_code` VALUES ('3476', '北港镇', '499', '1000906', '0', '0');
INSERT INTO `area_code` VALUES ('3477', '古坑乡', '499', '1000907', '0', '0');
INSERT INTO `area_code` VALUES ('3478', '大埤乡', '499', '1000908', '0', '0');
INSERT INTO `area_code` VALUES ('3479', '莿桐乡', '499', '1000909', '0', '0');
INSERT INTO `area_code` VALUES ('3480', '林内乡', '499', '1000910', '0', '0');
INSERT INTO `area_code` VALUES ('3481', '二仑乡', '499', '1000911', '0', '0');
INSERT INTO `area_code` VALUES ('3482', '仑背乡', '499', '1000912', '0', '0');
INSERT INTO `area_code` VALUES ('3483', '麦寮乡', '499', '1000913', '0', '0');
INSERT INTO `area_code` VALUES ('3484', '东势乡', '499', '1000914', '0', '0');
INSERT INTO `area_code` VALUES ('3485', '褒忠乡', '499', '1000915', '0', '0');
INSERT INTO `area_code` VALUES ('3486', '台西乡', '499', '1000916', '0', '0');
INSERT INTO `area_code` VALUES ('3487', '元长乡', '499', '1000917', '0', '0');
INSERT INTO `area_code` VALUES ('3488', '四湖乡', '499', '1000918', '0', '0');
INSERT INTO `area_code` VALUES ('3489', '口湖乡', '499', '1000919', '0', '0');
INSERT INTO `area_code` VALUES ('3490', '水林乡', '499', '1000920', '0', '0');
INSERT INTO `area_code` VALUES ('3491', '太保市', '500', null, '0', '0');
INSERT INTO `area_code` VALUES ('3492', '朴子市', '500', null, '0', '0');
INSERT INTO `area_code` VALUES ('3493', '布袋镇', '500', null, '0', '0');
INSERT INTO `area_code` VALUES ('3494', '大林镇', '500', '10010', '0', '0');
INSERT INTO `area_code` VALUES ('3495', '民雄乡', '500', '1001001', '0', '0');
INSERT INTO `area_code` VALUES ('3496', '溪口乡', '500', '1001002', '0', '0');
INSERT INTO `area_code` VALUES ('3497', '新港乡', '500', '1001003', '0', '0');
INSERT INTO `area_code` VALUES ('3498', '六脚乡', '500', '1001004', '0', '0');
INSERT INTO `area_code` VALUES ('3499', '东石乡', '500', '1001005', '0', '0');
INSERT INTO `area_code` VALUES ('3500', '义竹乡', '500', '1001006', '0', '0');
INSERT INTO `area_code` VALUES ('3501', '鹿草乡', '500', '1001007', '0', '0');
INSERT INTO `area_code` VALUES ('3502', '水上乡', '500', '1001008', '0', '0');
INSERT INTO `area_code` VALUES ('3503', '中埔乡', '500', '1001009', '0', '0');
INSERT INTO `area_code` VALUES ('3504', '竹崎乡', '500', '1001010', '0', '0');
INSERT INTO `area_code` VALUES ('3505', '梅山乡', '500', '1001011', '0', '0');
INSERT INTO `area_code` VALUES ('3506', '番路乡', '500', '1001012', '0', '0');
INSERT INTO `area_code` VALUES ('3507', '大埔乡', '500', '1001013', '0', '0');
INSERT INTO `area_code` VALUES ('3508', '阿里山乡', '500', '1001014', '0', '0');
INSERT INTO `area_code` VALUES ('3509', '屏东市', '501', '1001301', '0', '0');
INSERT INTO `area_code` VALUES ('3510', '潮州镇', '501', '1001302', '0', '0');
INSERT INTO `area_code` VALUES ('3511', '东港镇', '501', '1001303', '0', '0');
INSERT INTO `area_code` VALUES ('3512', '恒春镇', '501', '1001304', '0', '0');
INSERT INTO `area_code` VALUES ('3513', '万丹乡', '501', '1001305', '0', '0');
INSERT INTO `area_code` VALUES ('3514', '长治乡', '501', '1001306', '0', '0');
INSERT INTO `area_code` VALUES ('3515', '麟洛乡', '501', '1001307', '0', '0');
INSERT INTO `area_code` VALUES ('3516', '九如乡', '501', '1001308', '0', '0');
INSERT INTO `area_code` VALUES ('3517', '里港乡', '501', '1001309', '0', '0');
INSERT INTO `area_code` VALUES ('3518', '盐埔乡', '501', '1001310', '0', '0');
INSERT INTO `area_code` VALUES ('3519', '高树乡', '501', '1001311', '0', '0');
INSERT INTO `area_code` VALUES ('3520', '万峦乡', '501', '1001312', '0', '0');
INSERT INTO `area_code` VALUES ('3521', '内埔乡', '501', '1001313', '0', '0');
INSERT INTO `area_code` VALUES ('3522', '竹田乡', '501', '1001314', '0', '0');
INSERT INTO `area_code` VALUES ('3523', '新埤乡', '501', '1001315', '0', '0');
INSERT INTO `area_code` VALUES ('3524', '枋寮乡', '501', '1001316', '0', '0');
INSERT INTO `area_code` VALUES ('3525', '新园乡', '501', '1001317', '0', '0');
INSERT INTO `area_code` VALUES ('3526', '崁顶乡', '501', '1001318', '0', '0');
INSERT INTO `area_code` VALUES ('3527', '林边乡', '501', '1001319', '0', '0');
INSERT INTO `area_code` VALUES ('3528', '南州乡', '501', '1001320', '0', '0');
INSERT INTO `area_code` VALUES ('3529', '佳冬乡', '501', '1001321', '0', '0');
INSERT INTO `area_code` VALUES ('3530', '琉球乡', '501', '1001322', '0', '0');
INSERT INTO `area_code` VALUES ('3531', '车城乡', '501', '1001323', '0', '0');
INSERT INTO `area_code` VALUES ('3532', '满州乡', '501', '1001324', '0', '0');
INSERT INTO `area_code` VALUES ('3533', '枋山乡', '501', '1001325', '0', '0');
INSERT INTO `area_code` VALUES ('3534', '三地门乡', '501', '1001326', '0', '0');
INSERT INTO `area_code` VALUES ('3535', '雾台乡', '501', '1001327', '0', '0');
INSERT INTO `area_code` VALUES ('3536', '玛家乡', '501', '1001328', '0', '0');
INSERT INTO `area_code` VALUES ('3537', '泰武乡', '501', '1001329', '0', '0');
INSERT INTO `area_code` VALUES ('3538', '来义乡', '501', '1001330', '0', '0');
INSERT INTO `area_code` VALUES ('3539', '春日乡', '501', '1001331', '0', '0');
INSERT INTO `area_code` VALUES ('3540', '狮子乡', '501', '1001332', '0', '0');
INSERT INTO `area_code` VALUES ('3541', '牡丹乡', '501', '1001333', '0', '0');
INSERT INTO `area_code` VALUES ('3542', '卑南乡', '502', null, '0', '0');
INSERT INTO `area_code` VALUES ('3543', '台东市', '502', '1001401', '0', '0');
INSERT INTO `area_code` VALUES ('3544', '成功镇', '502', '1001402', '0', '0');
INSERT INTO `area_code` VALUES ('3545', '关山镇', '502', '1001403', '0', '0');
INSERT INTO `area_code` VALUES ('3546', '鹿野乡', '502', '1001405', '0', '0');
INSERT INTO `area_code` VALUES ('3547', '池上乡', '502', '1001406', '0', '0');
INSERT INTO `area_code` VALUES ('3548', '东河乡', '502', '1001407', '0', '0');
INSERT INTO `area_code` VALUES ('3549', '长滨乡', '502', '1001408', '0', '0');
INSERT INTO `area_code` VALUES ('3550', '太麻里乡', '502', '1001409', '0', '0');
INSERT INTO `area_code` VALUES ('3551', '大武乡', '502', '1001410', '0', '0');
INSERT INTO `area_code` VALUES ('3552', '绿岛乡', '502', '1001411', '0', '0');
INSERT INTO `area_code` VALUES ('3553', '海端乡', '502', '1001412', '0', '0');
INSERT INTO `area_code` VALUES ('3554', '延平乡', '502', '1001413', '0', '0');
INSERT INTO `area_code` VALUES ('3555', '金峰乡', '502', '1001414', '0', '0');
INSERT INTO `area_code` VALUES ('3556', '达仁乡', '502', '1001415', '0', '0');
INSERT INTO `area_code` VALUES ('3557', '兰屿乡', '502', '1001416', '0', '0');
INSERT INTO `area_code` VALUES ('3558', '花莲市', '503', '1001501', '0', '0');
INSERT INTO `area_code` VALUES ('3559', '凤林镇', '503', '1001502', '0', '0');
INSERT INTO `area_code` VALUES ('3560', '玉里镇', '503', '1001503', '0', '0');
INSERT INTO `area_code` VALUES ('3561', '新城乡', '503', '1001504', '0', '0');
INSERT INTO `area_code` VALUES ('3562', '吉安乡', '503', '1001505', '0', '0');
INSERT INTO `area_code` VALUES ('3563', '寿丰乡', '503', '1001506', '0', '0');
INSERT INTO `area_code` VALUES ('3564', '光复乡', '503', '1001507', '0', '0');
INSERT INTO `area_code` VALUES ('3565', '丰滨乡', '503', '1001508', '0', '0');
INSERT INTO `area_code` VALUES ('3566', '瑞穗乡', '503', '1001509', '0', '0');
INSERT INTO `area_code` VALUES ('3567', '富里乡', '503', '1001510', '0', '0');
INSERT INTO `area_code` VALUES ('3568', '秀林乡', '503', '1001511', '0', '0');
INSERT INTO `area_code` VALUES ('3569', '万荣乡', '503', '1001512', '0', '0');
INSERT INTO `area_code` VALUES ('3570', '卓溪乡', '503', '1001513', '0', '0');
INSERT INTO `area_code` VALUES ('3571', '马公市', '504', '1001601', '0', '0');
INSERT INTO `area_code` VALUES ('3572', '湖西乡', '504', '1001602', '0', '0');
INSERT INTO `area_code` VALUES ('3573', '白沙乡', '504', '1001603', '0', '0');
INSERT INTO `area_code` VALUES ('3574', '西屿乡', '504', '1001604', '0', '0');
INSERT INTO `area_code` VALUES ('3575', '望安乡', '504', '1001605', '0', '0');
INSERT INTO `area_code` VALUES ('3576', '七美乡', '504', '1001606', '0', '0');
INSERT INTO `area_code` VALUES ('3577', '双河市', '31', '659007', '0', '0');
INSERT INTO `area_code` VALUES ('3578', '海棠区', '357', null, '0', '0');
INSERT INTO `area_code` VALUES ('3579', '吉阳区', '357', null, '0', '0');
INSERT INTO `area_code` VALUES ('3580', '天涯区', '357', null, '0', '0');
INSERT INTO `area_code` VALUES ('3581', '崖州区', '357', null, '0', '0');
INSERT INTO `area_code` VALUES ('3582', '霍尔果斯市', '476', '654004', '0', '0');
INSERT INTO `area_code` VALUES ('3583', '前锋区', '388', null, '0', '0');
INSERT INTO `area_code` VALUES ('3584', '福绵区', '350', '450903', '0', '0');
INSERT INTO `area_code` VALUES ('3585', '可克达拉市', '31', '659008', '0', '0');
INSERT INTO `area_code` VALUES ('7036', '龙华区', '323', '440309', '0', '0');
INSERT INTO `area_code` VALUES ('7037', '坪山区', '323', '440310', '0', '0');
INSERT INTO `area_code` VALUES ('7038', '昆玉市', '31', '659009', '0', '0');
INSERT INTO `area_code` VALUES ('7039', '平桂区', '352', '451103', '0', '0');
INSERT INTO `area_code` VALUES ('7040', '巴什区', '152', '150603', '0', '0');
INSERT INTO `area_code` VALUES ('7041', '叶集区', '231', null, '0', '0');
INSERT INTO `area_code` VALUES ('7042', '光明区', '323', '440311', '0', '0');
INSERT INTO `area_code` VALUES ('7043', '龙港市', '210', '330383', '0', '0');
INSERT INTO `area_code` VALUES ('7044', '胡杨河市', '31', '659010', '0', '0');
INSERT INTO `area_code` VALUES ('7045', '西沙区', '358', '460300', '0', '0');
INSERT INTO `area_code` VALUES ('7046', '南沙区', '358', '460300', '0', '0');
INSERT INTO `area_code` VALUES ('7047', '北京市', '1', '110100', '0', '0');
INSERT INTO `area_code` VALUES ('7048', '天津市', '2', '120100', '0', '0');
INSERT INTO `area_code` VALUES ('7049', '上海市', '3', '310100', '0', '0');
INSERT INTO `area_code` VALUES ('7050', '重庆市', '4', '500100', '0', '0');

-- ----------------------------
-- Table structure for audit_business_credit_evaluation_info
-- ----------------------------
DROP TABLE IF EXISTS `audit_business_credit_evaluation_info`;
CREATE TABLE `audit_business_credit_evaluation_info` (
  `business_credit_evaluation_audit_id` varchar(32) NOT NULL COMMENT '审核id（uuid）',
  `checklist_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核单id',
  `fr_name` varchar(30) DEFAULT '' COMMENT '法人姓名',
  `fr_criminal_record` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '法人犯罪记录信息jpg照片',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`business_credit_evaluation_audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小商超信用评价审核信息表';

-- ----------------------------
-- Records of audit_business_credit_evaluation_info
-- ----------------------------
INSERT INTO `audit_business_credit_evaluation_info` VALUES ('026544f00b524811b115df5460e16cb3', '2166157647924000089', '小商超测试', '', '2022-08-27 13:01:19');
INSERT INTO `audit_business_credit_evaluation_info` VALUES ('107a630a80684e5c9491e31342ea94c0', '2166157370292100069', '小商超2', '', '2022-08-27 12:15:02');
INSERT INTO `audit_business_credit_evaluation_info` VALUES ('33616263a2294a0eaa9236c8d9267243', '2166157437436100035', '小商超3', '', '2022-08-27 12:26:14');
INSERT INTO `audit_business_credit_evaluation_info` VALUES ('4a2e1a510eea4be88bcfc700084d0acb', '2166157439740900093', '小商超4', '', '2022-08-27 12:26:37');
INSERT INTO `audit_business_credit_evaluation_info` VALUES ('770b4de26d31455b9233e1afcff49ea0', '2166157612023000062', '小商超测试', '', '2022-08-27 12:55:20');
INSERT INTO `audit_business_credit_evaluation_info` VALUES ('f07a9954e41045e3a9a4ad56a5f7235b', '2166157367956100098', '小商超测试1', '', '2022-08-27 12:14:39');

-- ----------------------------
-- Table structure for audit_business_license_info
-- ----------------------------
DROP TABLE IF EXISTS `audit_business_license_info`;
CREATE TABLE `audit_business_license_info` (
  `business_audit_document_id` varchar(19) NOT NULL COMMENT '审核单id',
  `business_license` varchar(100) DEFAULT '' COMMENT '个体工商户营业执照jpg照片',
  `business_license_number` varchar(18) NOT NULL COMMENT '个体工商户营业执照号码',
  `manager_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '经营者',
  `business_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '小商超名称',
  `business_place` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '经营场所位置',
  `business_form` char(1) DEFAULT '1' COMMENT '组成形式（1个人经营 2家庭经营）',
  `register_date` datetime DEFAULT NULL COMMENT '注册日期',
  `business_scope` varchar(500) DEFAULT '' COMMENT '经营范围',
  `business_certificate` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '经营许可证.jpg',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户名',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `contact_person` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '联系人姓名',
  `contact_card_type` char(1) DEFAULT '1' COMMENT '联系人证件类型: 1身份证 2港澳居民来往内地通行证 3台湾居民来往大陆通行证 4普通护照 5外国人永久居留身份证',
  `id_number` varchar(18) NOT NULL COMMENT '联系人证件号',
  `front_photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '联系人证件正面jpg照片',
  `back_photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '联系人证件反面jpg照片',
  `contact_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人手机号',
  `contact_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人邮箱',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`business_audit_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小商超审核信息表';

-- ----------------------------
-- Records of audit_business_license_info
-- ----------------------------
INSERT INTO `audit_business_license_info` VALUES ('2166157447843000080', '', '8451231', '小商超1', '小商超1', '小商超1', '1', '2022-08-27 00:00:00', '无', '', '小商超1', '小商超1', '小商超1', '1', '165632', '', '', '453453', '343434', '2022-08-27 12:27:58');
INSERT INTO `audit_business_license_info` VALUES ('2166157646613200057', '', '12313123', '小商超测试', '小商超测试', '小商超测试', '1', '2022-08-27 00:00:00', '小商超测试', '', '小商超测试', '123456', '小商超测试', '1', '56123313', '', '', '512313164', '4612313', '2022-08-27 13:01:06');

-- ----------------------------
-- Table structure for audit_documents
-- ----------------------------
DROP TABLE IF EXISTS `audit_documents`;
CREATE TABLE `audit_documents` (
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `checklist_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核单id',
  `audit_type` char(1) DEFAULT '1' COMMENT '审核类型（1供应商 2小商超）',
  `audit_status` char(1) DEFAULT '1' COMMENT '审核状态（1未审核 2审核通过）',
  `admin_id` bigint(20) unsigned NOT NULL COMMENT '管理员id',
  `audit_result` varchar(500) DEFAULT NULL COMMENT '审核结果（备注）',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`checklist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审核单据表';

-- ----------------------------
-- Records of audit_documents
-- ----------------------------
INSERT INTO `audit_documents` VALUES ('1', '1166117486330100070', '1', '1', '1', null, '2022-08-22 21:27:43', '2022-08-22 21:27:43');
INSERT INTO `audit_documents` VALUES ('1', '1166157505131400077', '1', '1', '1', null, '2022-08-27 12:37:31', '2022-08-27 12:37:31');
INSERT INTO `audit_documents` VALUES ('1', '1166157517261200083', '1', '1', '1', null, '2022-08-27 12:39:32', '2022-08-27 12:39:32');
INSERT INTO `audit_documents` VALUES ('1', '1166157522791100010', '1', '1', '1', null, '2022-08-27 12:40:27', '2022-08-27 12:40:27');
INSERT INTO `audit_documents` VALUES ('1', '1166157662374000045', '1', '1', '1', null, '2022-08-27 13:03:43', '2022-08-27 13:03:43');
INSERT INTO `audit_documents` VALUES ('1', '1166157688222100029', '1', '1', '1', null, '2022-08-27 13:08:02', '2022-08-27 13:08:02');
INSERT INTO `audit_documents` VALUES ('1', '2166117484203500023', '2', '1', '1', null, '2022-08-22 21:27:22', '2022-08-22 21:27:22');
INSERT INTO `audit_documents` VALUES ('1', '2166140910629500056', '2', '1', '1', null, '2022-08-25 14:31:46', '2022-08-25 14:31:46');
INSERT INTO `audit_documents` VALUES ('1', '2166152132708500051', '2', '1', '1', null, '2022-08-26 21:42:07', '2022-08-26 21:42:07');
INSERT INTO `audit_documents` VALUES ('1', '2166156914309000053', '2', '1', '1', null, '2022-08-27 10:59:03', '2022-08-27 10:59:03');
INSERT INTO `audit_documents` VALUES ('1', '2166156914601100068', '2', '1', '1', null, '2022-08-27 10:59:06', '2022-08-27 10:59:06');
INSERT INTO `audit_documents` VALUES ('1', '2166156961945300053', '2', '1', '1', null, '2022-08-27 11:06:59', '2022-08-27 11:06:59');
INSERT INTO `audit_documents` VALUES ('1', '2166156963400100067', '2', '1', '1', null, '2022-08-27 11:07:14', '2022-08-27 11:07:14');
INSERT INTO `audit_documents` VALUES ('1', '2166156974746300030', '2', '1', '1', null, '2022-08-27 11:09:07', '2022-08-27 11:09:07');
INSERT INTO `audit_documents` VALUES ('1', '2166156983446000066', '2', '1', '1', null, '2022-08-27 11:10:34', '2022-08-27 11:10:34');
INSERT INTO `audit_documents` VALUES ('1', '2166157319266800094', '2', '1', '1', null, '2022-08-27 12:06:32', '2022-08-27 12:06:32');
INSERT INTO `audit_documents` VALUES ('1', '2166157346713200090', '2', '1', '1', null, '2022-08-27 12:11:07', '2022-08-27 12:11:07');
INSERT INTO `audit_documents` VALUES ('1', '2166157356351400032', '2', '1', '1', null, '2022-08-27 12:12:43', '2022-08-27 12:12:43');
INSERT INTO `audit_documents` VALUES ('1', '2166157360780900018', '2', '1', '1', null, '2022-08-27 12:13:27', '2022-08-27 12:13:27');
INSERT INTO `audit_documents` VALUES ('1', '2166157367956100098', '2', '1', '1', null, '2022-08-27 12:14:39', '2022-08-27 12:14:39');
INSERT INTO `audit_documents` VALUES ('1', '2166157370292100069', '2', '1', '1', null, '2022-08-27 12:15:02', '2022-08-27 12:15:02');
INSERT INTO `audit_documents` VALUES ('1', '2166157437436100035', '2', '1', '1', null, '2022-08-27 12:26:14', '2022-08-27 12:26:14');
INSERT INTO `audit_documents` VALUES ('1', '2166157439740900093', '2', '1', '1', null, '2022-08-27 12:26:37', '2022-08-27 12:26:37');
INSERT INTO `audit_documents` VALUES ('1', '2166157447843000080', '2', '1', '1', null, '2022-08-27 12:27:58', '2022-08-27 12:27:58');
INSERT INTO `audit_documents` VALUES ('1', '2166157612023000062', '2', '1', '1', null, '2022-08-27 12:55:20', '2022-08-27 12:55:20');
INSERT INTO `audit_documents` VALUES ('1', '2166157646613200057', '2', '1', '1', null, '2022-08-27 13:01:06', '2022-08-27 13:01:06');
INSERT INTO `audit_documents` VALUES ('1', '2166157647924000089', '2', '1', '1', null, '2022-08-27 13:01:19', '2022-08-27 13:01:19');

-- ----------------------------
-- Table structure for audit_supplier_credit_evaluation_info
-- ----------------------------
DROP TABLE IF EXISTS `audit_supplier_credit_evaluation_info`;
CREATE TABLE `audit_supplier_credit_evaluation_info` (
  `supplier_credit_evaluation_audit_id` varchar(32) NOT NULL COMMENT '审核id（uuid）',
  `checklist_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核单id',
  `corporate_name` varchar(50) DEFAULT '' COMMENT '公司名称',
  `corporate_credit_info` varchar(100) DEFAULT '' COMMENT '公司征信信息jpg照片',
  `fr_name` varchar(30) DEFAULT '' COMMENT '法人姓名',
  `fr_criminal_record` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '法人犯罪记录信息jpg照片',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`supplier_credit_evaluation_audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商评价审核信息表';

-- ----------------------------
-- Records of audit_supplier_credit_evaluation_info
-- ----------------------------
INSERT INTO `audit_supplier_credit_evaluation_info` VALUES ('037a1c72c8a346868d5e092fdb05f413', '1166117486330100070', '123', '', '123', '', '2022-08-22 21:27:43');
INSERT INTO `audit_supplier_credit_evaluation_info` VALUES ('0a6515bee0bf4437a7aec41db2c8b467', '1166157505131400077', '供应商', '', '供应商', '', '2022-08-27 12:37:31');
INSERT INTO `audit_supplier_credit_evaluation_info` VALUES ('49c8a47955304328b4c87c88ab814da6', '1166157662374000045', '供应商测试', '', '供应商测试', '', '2022-08-27 13:03:43');

-- ----------------------------
-- Table structure for audit_supplier_license_info
-- ----------------------------
DROP TABLE IF EXISTS `audit_supplier_license_info`;
CREATE TABLE `audit_supplier_license_info` (
  `checklist_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核单id',
  `corporate_name` varchar(100) DEFAULT '' COMMENT '公司名称',
  `registration_number` varchar(18) NOT NULL COMMENT '全国信息代码号',
  `fr_name` varchar(30) DEFAULT '' COMMENT '法人姓名',
  `id_number` varchar(18) DEFAULT '' COMMENT '法人身份证号码',
  `front_photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '法人身份证正面jpg照片',
  `back_photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '法人身份证反面jpg照片',
  `business_license_location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '营业执照所在地',
  `business_license_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '营业执照详细地址',
  `incorporation_date` datetime DEFAULT NULL COMMENT '成立日期',
  `registered_capital` decimal(18,2) DEFAULT '0.00' COMMENT '注册资本',
  `business_scope` varchar(500) DEFAULT '' COMMENT '营业范围',
  `business_license` varchar(100) DEFAULT '' COMMENT '营业执照jpg照片',
  `office_phone` varchar(11) DEFAULT NULL COMMENT '公司电话',
  `emergency_contact` varchar(30) DEFAULT NULL COMMENT '公司紧急联系人',
  `emergency_contact_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司紧急联系人手机',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`checklist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商营业执照审核信息表';

-- ----------------------------
-- Records of audit_supplier_license_info
-- ----------------------------
INSERT INTO `audit_supplier_license_info` VALUES ('1166157517261200083', '供应商', '8451213', '供应商', '供应商', '', '', '供应商', '供应商', '2022-08-27 00:00:00', '8794123123.00', '561231', '', '供应商', '供应商', '供应商', '2022-08-27 12:39:32');
INSERT INTO `audit_supplier_license_info` VALUES ('1166157522791100010', '供应商2', '8974123123', '供应商2', '451316324654', '', '', '供应商2', '供应商2', '2022-08-27 00:00:00', '6232332.00', '供应商2', '', '5123230', '供应商2', '25133', '2022-08-27 12:40:27');
INSERT INTO `audit_supplier_license_info` VALUES ('1166157688222100029', '供应商测试', '84512131', '供应商测试', '5612312', '', '', '供应商测试', '供应商测试', '2022-08-27 00:00:00', '4520.00', '供应商测试', '', '56132', '供应商测试', '512316', '2022-08-27 13:08:02');

-- ----------------------------
-- Table structure for audit_tax_and_bank_info
-- ----------------------------
DROP TABLE IF EXISTS `audit_tax_and_bank_info`;
CREATE TABLE `audit_tax_and_bank_info` (
  `tax_and_bank_audit_id` varchar(32) NOT NULL COMMENT '审核id（uuid）',
  `checklist_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核单id',
  `taxpayer_id_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '纳税人识别号',
  `taxpayer_type` char(1) DEFAULT '1' COMMENT '纳税人类型（1自然人 2个体工商户 3法人）',
  `tax_type_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '纳税类型税码',
  `tax_registration_certificate` varchar(100) DEFAULT '' COMMENT '税务登记证电子版.jpg',
  `general_taxpayer_qualification_certificate` varchar(100) DEFAULT '' COMMENT '一般纳税人资格证电子版.jpg',
  `bank_account_name` varchar(30) DEFAULT '' COMMENT '银行开户名',
  `corporate_bank_account_number` varchar(20) DEFAULT '' COMMENT '公司银行账号',
  `bank_branch_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '开户银行支行名称',
  `bank_branch_number` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '开户银行支行联行号(3位银行代码+4位城市代码+4位银行编号+1位校验位)',
  `bank_branch_location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '开户银行支行所在地',
  `bank_account_open_license` varchar(100) DEFAULT '' COMMENT '银行开户许可证电子版jpg',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`tax_and_bank_audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='税务及银行审核信息表';

-- ----------------------------
-- Records of audit_tax_and_bank_info
-- ----------------------------

-- ----------------------------
-- Table structure for bid_winning_candidates_announcement
-- ----------------------------
DROP TABLE IF EXISTS `bid_winning_candidates_announcement`;
CREATE TABLE `bid_winning_candidates_announcement` (
  `bid_winning_candidates_announcement_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中标候选人公示公告',
  `bid_winning_candidates_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  `publicity_time` datetime NOT NULL COMMENT '公示时间',
  `deadline_time` datetime NOT NULL COMMENT '公示截止时间',
  PRIMARY KEY (`bid_winning_candidates_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='中标候选人公示公告';

-- ----------------------------
-- Records of bid_winning_candidates_announcement
-- ----------------------------

-- ----------------------------
-- Table structure for bid_winning_results_announcement
-- ----------------------------
DROP TABLE IF EXISTS `bid_winning_results_announcement`;
CREATE TABLE `bid_winning_results_announcement` (
  `bid_winning_results_announcement_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中标结果公告ID',
  `bid_winning_results_announcement_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件存储位置',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  PRIMARY KEY (`bid_winning_results_announcement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='中标结果公告';

-- ----------------------------
-- Records of bid_winning_results_announcement
-- ----------------------------

-- ----------------------------
-- Table structure for centralized_purchase_record
-- ----------------------------
DROP TABLE IF EXISTS `centralized_purchase_record`;
CREATE TABLE `centralized_purchase_record` (
  `centralized_purchase_record_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '集中采购记录ID',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  `supply_id` bigint(20) unsigned NOT NULL COMMENT '供应商ID',
  `tender_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '投标文件存储信息',
  `centralized_purchase_record_time` datetime NOT NULL COMMENT '时间',
  `is_bid` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '是否中标“0”否 “1”是',
  PRIMARY KEY (`centralized_purchase_record_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='集中采购记录';

-- ----------------------------
-- Records of centralized_purchase_record
-- ----------------------------

-- ----------------------------
-- Table structure for change_announcement
-- ----------------------------
DROP TABLE IF EXISTS `change_announcement`;
CREATE TABLE `change_announcement` (
  `change_announcement_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变更公告ID',
  `change_announcement_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变更公告文件存储位置',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  `change_time` datetime NOT NULL COMMENT '变更时间',
  PRIMARY KEY (`change_announcement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='变更公告';

-- ----------------------------
-- Records of change_announcement
-- ----------------------------

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `contract_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '合同id',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书id',
  `contract_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '0代表供应商与供销社1代表小商超与供销社',
  `contract_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '合同文件位置',
  `signature_a` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '甲方是否签名0未签1签',
  `signature_b` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '乙方是否签名0未签1签',
  `contract_time` datetime NOT NULL COMMENT '合同签定时间',
  PRIMARY KEY (`contract_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='合同';

-- ----------------------------
-- Records of contract
-- ----------------------------

-- ----------------------------
-- Table structure for cooperative
-- ----------------------------
DROP TABLE IF EXISTS `cooperative`;
CREATE TABLE `cooperative` (
  `gxs_id` varchar(19) NOT NULL COMMENT '供销社id',
  `gxs_name` varchar(255) DEFAULT NULL COMMENT '供销社名称',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `gxs_state` char(1) DEFAULT NULL COMMENT '供销社状态：0待审核，1审核通过，2审核失败，3账号异常',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login` datetime DEFAULT NULL COMMENT '上次登陆时间',
  PRIMARY KEY (`gxs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供销社角色';

-- ----------------------------
-- Records of cooperative
-- ----------------------------
INSERT INTO `cooperative` VALUES ('2166082307393112930', '供销社1', '供销社1', '供销社1', '123456', '0', '2022-08-18 19:44:34', null);
INSERT INTO `cooperative` VALUES ('2166082309210848213', '供销社2', '供销社2', '供销社2', '123456', '0', '2022-08-18 19:44:52', null);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'audit_documents', '审核单据表', '', null, 'AuditDocuments', 'crud', 'com.cps.audit', 'audit', 'auditDocumentsManage', '审核单据管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}', 'admin', '2022-08-14 00:23:42', '', '2022-08-15 23:59:55', '');
INSERT INTO `gen_table` VALUES ('2', 'audit_business_credit_evaluation_info', '小商超信用评价审核信息表', '', null, 'BusinessCreditEvaluationInfo', 'crud', 'com.cps.audit', 'audit', 'businessCreditEvaluationManage', '小商超信用评价审核管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2258\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"提交相关材料\",\"treeCode\":\"\"}', 'admin', '2022-08-14 10:07:00', '', '2022-08-25 14:20:24', '');
INSERT INTO `gen_table` VALUES ('3', 'audit_business_license_info', '小商超审核信息表', '', null, 'BusinessLicenseInfo', 'crud', 'com.cps.audit', 'audit', 'businessLicenseManage', '小商超营业执照审核管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2258\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"提交相关材料\",\"treeCode\":\"\"}', 'admin', '2022-08-14 10:07:00', '', '2022-08-25 14:20:34', '');
INSERT INTO `gen_table` VALUES ('4', 'audit_supplier_credit_evaluation_info', '供应商评价审核信息表', '', null, 'SupplierCreditEvaluationInfo', 'crud', 'com.cps.audit', 'audit', 'supplierCreditEvaluationManage', '供应商评价审核管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2258\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"提交相关材料\",\"treeCode\":\"\"}', 'admin', '2022-08-14 10:07:00', '', '2022-08-25 14:20:46', '');
INSERT INTO `gen_table` VALUES ('5', 'audit_supplier_license_info', '供应商营业执照审核信息表', '', null, 'SupplierLicenseInfo', 'crud', 'com.cps.audit', 'audit', 'supplierLicenseManage', '供应商营业执照审核管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2258\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"提交相关材料\",\"treeCode\":\"\"}', 'admin', '2022-08-14 10:07:00', '', '2022-08-25 14:21:41', '');
INSERT INTO `gen_table` VALUES ('6', 'audit_tax_and_bank_info', '税务及银行审核信息表', '', null, 'TaxAndBankInfo', 'crud', 'com.cps.audit', 'audit', 'taxAndBankManage', '税务及银行审核管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}', 'admin', '2022-08-14 10:07:00', '', '2022-08-15 23:59:47', '');
INSERT INTO `gen_table` VALUES ('18', 'cooperative', '供销社角色', '', '', 'Cooperative', 'crud', 'com.cps.user', 'user', 'cooperative', '供销社角色', 'cps', '0', '/', '{\"parentMenuId\":\"100\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"用户管理\",\"treeCode\":\"\"}', 'admin', '2022-08-18 13:01:14', '', '2022-08-24 09:58:46', '');
INSERT INTO `gen_table` VALUES ('19', 'manager', '管理员角色', '', '', 'Manager', 'crud', 'com.cps.user', 'user', 'manager', '管理员角色', 'cps', '0', '/', '{\"parentMenuId\":\"100\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"用户管理\",\"treeCode\":\"\"}', 'admin', '2022-08-18 13:01:14', '', '2022-08-24 09:54:33', '');
INSERT INTO `gen_table` VALUES ('20', 'supermarket', '超市角色', '', '', 'Supermarket', 'crud', 'com.cps.submit', 'submit', 'supermarket', '超市角色', 'cps', '0', '/', '{\"parentMenuId\":\"100\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"用户管理\",\"treeCode\":\"\"}', 'admin', '2022-08-18 13:01:14', '', '2022-08-26 11:09:41', '');
INSERT INTO `gen_table` VALUES ('21', 'supplier', '供应商角色', '', '', 'Supplier', 'crud', 'com.cps.user', 'user', 'supplier', '供应商角色', 'cps', '0', '/', '{\"parentMenuId\":\"100\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"用户管理\",\"treeCode\":\"\"}', 'admin', '2022-08-18 13:01:14', '', '2022-08-24 09:54:24', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'user_id', '用户id', 'bigint(20) unsigned', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '1', 'admin', '2022-08-14 00:23:42', null, '2022-08-15 23:59:55');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'checklist_id', '审核单id', 'varchar(19)', 'String', 'checklistId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '2', 'admin', '2022-08-14 00:23:42', null, '2022-08-15 23:59:55');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'audit_type', '审核类型（1供应商 2小商超）', 'char(1)', 'String', 'auditType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '3', 'admin', '2022-08-14 00:23:42', null, '2022-08-15 23:59:55');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'audit_status', '审核状态（1未审核 2审核通过）', 'char(1)', 'String', 'auditStatus', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '4', 'admin', '2022-08-14 00:23:42', null, '2022-08-15 23:59:55');
INSERT INTO `gen_table_column` VALUES ('5', '1', 'admin_id', '管理员id', 'bigint(20) unsigned', 'Long', 'adminId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2022-08-14 00:23:42', null, '2022-08-15 23:59:55');
INSERT INTO `gen_table_column` VALUES ('6', '1', 'audit_result', '审核结果（备注）', 'varchar(500)', 'String', 'auditResult', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '6', 'admin', '2022-08-14 00:23:42', null, '2022-08-15 23:59:55');
INSERT INTO `gen_table_column` VALUES ('7', '1', 'create_datetime', '创建时间', 'datetime', 'Date', 'createDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '7', 'admin', '2022-08-14 00:23:42', null, '2022-08-15 23:59:55');
INSERT INTO `gen_table_column` VALUES ('8', '1', 'update_datetime', '更新时间', 'datetime', 'Date', 'updateDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '8', 'admin', '2022-08-14 00:23:42', null, '2022-08-15 23:59:55');
INSERT INTO `gen_table_column` VALUES ('9', '2', 'business_credit_evaluation_audit_id', '审核id（uuid）', 'varchar(32)', 'String', 'businessCreditEvaluationAuditId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:24');
INSERT INTO `gen_table_column` VALUES ('10', '2', 'checklist_id', '审核单id', 'varchar(19)', 'String', 'checklistId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:24');
INSERT INTO `gen_table_column` VALUES ('11', '2', 'fr_name', '法人姓名', 'varchar(30)', 'String', 'frName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:24');
INSERT INTO `gen_table_column` VALUES ('12', '2', 'fr_criminal_record', '法人犯罪记录信息jpg照片', 'varchar(100)', 'String', 'frCriminalRecord', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '4', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:24');
INSERT INTO `gen_table_column` VALUES ('13', '2', 'create_datetime', '创建时间', 'datetime', 'Date', 'createDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '5', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:24');
INSERT INTO `gen_table_column` VALUES ('14', '3', 'business_audit_document_id', '审核单id', 'varchar(19)', 'String', 'businessAuditDocumentId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('15', '3', 'business_license', '个体工商户营业执照jpg照片', 'varchar(100)', 'String', 'businessLicense', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '2', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('16', '3', 'business_license_number', '个体工商户营业执照号码', 'varchar(18)', 'String', 'businessLicenseNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('17', '3', 'manager_name', '经营者', 'varchar(30)', 'String', 'managerName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('18', '3', 'business_name', '小商超名称', 'varchar(50)', 'String', 'businessName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('19', '3', 'business_place', '经营场所位置', 'varchar(200)', 'String', 'businessPlace', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('20', '3', 'business_form', '组成形式（1个人经营 2家庭经营）', 'char(1)', 'String', 'businessForm', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '7', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('21', '3', 'register_date', '注册日期', 'datetime', 'Date', 'registerDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '8', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('22', '3', 'business_scope', '经营范围', 'varchar(500)', 'String', 'businessScope', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '9', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('23', '3', 'business_certificate', '经营许可证.jpg', 'varchar(100)', 'String', 'businessCertificate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '10', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('24', '3', 'username', '用户名', 'varchar(30)', 'String', 'username', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '11', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('25', '3', 'password', '密码', 'varchar(50)', 'String', 'password', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('26', '3', 'contact_person', '联系人姓名', 'varchar(30)', 'String', 'contactPerson', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '13', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('27', '3', 'contact_card_type', '联系人证件类型: 1身份证 2港澳居民来往内地通行证 3台湾居民来往大陆通行证 4普通护照 5外国人永久居留身份证', 'char(1)', 'String', 'contactCardType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '14', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('28', '3', 'id_number', '联系人证件号', 'varchar(18)', 'String', 'idNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '15', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('29', '3', 'front_photo', '联系人证件正面jpg照片', 'varchar(100)', 'String', 'frontPhoto', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '16', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('30', '3', 'back_photo', '联系人证件反面jpg照片', 'varchar(100)', 'String', 'backPhoto', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '17', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('31', '3', 'contact_phone', '联系人手机号', 'varchar(11)', 'String', 'contactPhone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '18', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('32', '3', 'contact_email', '联系人邮箱', 'varchar(50)', 'String', 'contactEmail', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '19', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('33', '3', 'create_datetime', '创建时间', 'datetime', 'Date', 'createDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '20', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:34');
INSERT INTO `gen_table_column` VALUES ('34', '4', 'supplier_credit_evaluation_audit_id', '审核id（uuid）', 'varchar(32)', 'String', 'supplierCreditEvaluationAuditId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:46');
INSERT INTO `gen_table_column` VALUES ('35', '4', 'checklist_id', '审核单id', 'varchar(19)', 'String', 'checklistId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:46');
INSERT INTO `gen_table_column` VALUES ('36', '4', 'corporate_name', '公司名称', 'varchar(50)', 'String', 'corporateName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:46');
INSERT INTO `gen_table_column` VALUES ('37', '4', 'corporate_credit_info', '公司征信信息jpg照片', 'varchar(100)', 'String', 'corporateCreditInfo', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '4', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:46');
INSERT INTO `gen_table_column` VALUES ('38', '4', 'fr_name', '法人姓名', 'varchar(30)', 'String', 'frName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:46');
INSERT INTO `gen_table_column` VALUES ('39', '4', 'fr_criminal_record', '法人犯罪记录信息jpg照片', 'varchar(100)', 'String', 'frCriminalRecord', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '6', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:46');
INSERT INTO `gen_table_column` VALUES ('40', '4', 'create_datetime', '创建时间', 'datetime', 'Date', 'createDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '7', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:20:46');
INSERT INTO `gen_table_column` VALUES ('41', '5', 'checklist_id', '审核单id', 'varchar(19)', 'String', 'checklistId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('42', '5', 'corporate_name', '公司名称', 'varchar(100)', 'String', 'corporateName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('43', '5', 'registration_number', '全国信息代码号', 'varchar(18)', 'String', 'registrationNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('44', '5', 'fr_name', '法人姓名', 'varchar(30)', 'String', 'frName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('45', '5', 'id_number', '法人身份证号码', 'varchar(18)', 'String', 'idNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('46', '5', 'front_photo', '法人身份证正面jpg照片', 'varchar(100)', 'String', 'frontPhoto', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '6', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('47', '5', 'back_photo', '法人身份证反面jpg照片', 'varchar(100)', 'String', 'backPhoto', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '7', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('48', '5', 'business_license_location', '营业执照所在地', 'varchar(50)', 'String', 'businessLicenseLocation', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('49', '5', 'business_license_address', '营业执照详细地址', 'varchar(200)', 'String', 'businessLicenseAddress', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('50', '5', 'incorporation_date', '成立日期', 'datetime', 'Date', 'incorporationDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '10', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('51', '5', 'registered_capital', '注册资本', 'decimal(18,2)', 'BigDecimal', 'registeredCapital', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('52', '5', 'business_scope', '营业范围', 'varchar(500)', 'String', 'businessScope', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '12', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('53', '5', 'business_license', '营业执照jpg照片', 'varchar(100)', 'String', 'businessLicense', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '13', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('54', '5', 'office_phone', '公司电话', 'varchar(11)', 'String', 'officePhone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('55', '5', 'emergency_contact', '公司紧急联系人', 'varchar(30)', 'String', 'emergencyContact', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '15', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('56', '5', 'emergency_contact_phone', '公司紧急联系人手机', 'varchar(11)', 'String', 'emergencyContactPhone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '16', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('57', '5', 'create_datetime', '创建时间', 'datetime', 'Date', 'createDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '17', 'admin', '2022-08-14 10:07:00', null, '2022-08-25 14:21:41');
INSERT INTO `gen_table_column` VALUES ('58', '6', 'tax_and_bank_audit_id', '审核id（uuid）', 'varchar(32)', 'String', 'taxAndBankAuditId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('59', '6', 'checklist_id', '审核单id', 'varchar(19)', 'String', 'checklistId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('60', '6', 'taxpayer_id_number', '纳税人识别号', 'varchar(20)', 'String', 'taxpayerIdNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('61', '6', 'taxpayer_type', '纳税人类型（1自然人 2个体工商户 3法人）', 'char(1)', 'String', 'taxpayerType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '4', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('62', '6', 'tax_type_code', '纳税类型税码', 'varchar(20)', 'String', 'taxTypeCode', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('63', '6', 'tax_registration_certificate', '税务登记证电子版.jpg', 'varchar(100)', 'String', 'taxRegistrationCertificate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '6', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('64', '6', 'general_taxpayer_qualification_certificate', '一般纳税人资格证电子版.jpg', 'varchar(100)', 'String', 'generalTaxpayerQualificationCertificate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '7', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('65', '6', 'bank_account_name', '银行开户名', 'varchar(30)', 'String', 'bankAccountName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '8', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('66', '6', 'corporate_bank_account_number', '公司银行账号', 'varchar(20)', 'String', 'corporateBankAccountNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('67', '6', 'bank_branch_name', '开户银行支行名称', 'varchar(100)', 'String', 'bankBranchName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '10', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('68', '6', 'bank_branch_number', '开户银行支行联行号(3位银行代码+4位城市代码+4位银行编号+1位校验位)', 'varchar(12)', 'String', 'bankBranchNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('69', '6', 'bank_branch_location', '开户银行支行所在地', 'varchar(100)', 'String', 'bankBranchLocation', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('70', '6', 'bank_account_open_license', '银行开户许可证电子版jpg', 'varchar(100)', 'String', 'bankAccountOpenLicense', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '13', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('71', '6', 'create_datetime', '创建时间', 'datetime', 'Date', 'createDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '14', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:47');
INSERT INTO `gen_table_column` VALUES ('210', '18', 'gxs_id', '供销社id', 'bigint(20) unsigned', 'Long', 'gxsId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:58:46');
INSERT INTO `gen_table_column` VALUES ('211', '18', 'gxs_name', '供销社名称', 'varchar(255)', 'String', 'gxsName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:58:46');
INSERT INTO `gen_table_column` VALUES ('212', '18', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:58:46');
INSERT INTO `gen_table_column` VALUES ('213', '18', 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '1', '1', '1', null, '1', 'LIKE', 'input', '', '4', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:58:46');
INSERT INTO `gen_table_column` VALUES ('214', '18', 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', '1', '1', '1', null, null, 'EQ', 'input', '', '5', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:58:46');
INSERT INTO `gen_table_column` VALUES ('215', '18', 'gxs_state', '供销社状态', 'char(1)', 'String', 'gxsState', '0', '0', null, null, '1', '1', null, 'EQ', 'select', 'sys_examine_status', '6', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:58:46');
INSERT INTO `gen_table_column` VALUES ('216', '18', 'register_time', '注册时间', 'datetime', 'Date', 'registerTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '7', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:58:46');
INSERT INTO `gen_table_column` VALUES ('217', '18', 'last_login', '上次登陆时间', 'datetime', 'Date', 'lastLogin', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '8', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:58:46');
INSERT INTO `gen_table_column` VALUES ('218', '19', 'manager_id', '管理员id', 'bigint(20) unsigned', 'Long', 'managerId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('219', '19', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('220', '19', 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '1', '1', '1', null, null, 'LIKE', 'input', '', '3', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('221', '19', 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', '1', '1', '1', null, null, 'EQ', 'input', '', '4', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('222', '19', 'contact_card_type', '证件类型', 'char(1)', 'String', 'contactCardType', '0', '0', '1', '1', null, null, null, 'EQ', 'select', 'con_card_type', '5', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('223', '19', 'contact_card_id', '证件号', 'varchar(18)', 'String', 'contactCardId', '0', '0', '1', '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('224', '19', 'contact_name', '联系人姓名', 'varchar(255)', 'String', 'contactName', '0', '0', '1', '1', '1', '1', null, 'LIKE', 'input', '', '7', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('225', '19', 'contact_phone_number', '联系人电话号码', 'varchar(11)', 'String', 'contactPhoneNumber', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '8', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('226', '19', 'register_time', '注册时间', 'datetime', 'Date', 'registerTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '9', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('227', '19', 'last_login', '上次登录时间', 'datetime', 'Date', 'lastLogin', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '10', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('228', '19', 'manage_state', '角色状态', 'char(1)', 'String', 'manageState', '0', '0', null, null, '1', '1', null, 'EQ', 'select', 'sys_common_status', '11', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:33');
INSERT INTO `gen_table_column` VALUES ('229', '20', 'shop_id', '', 'bigint(20) unsigned', 'Long', 'shopId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('230', '20', 'shop_name', '超市名称', 'varchar(255)', 'String', 'shopName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('231', '20', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('232', '20', 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '1', '1', null, null, null, 'LIKE', 'input', '', '4', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('233', '20', 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', '1', '1', '1', null, null, 'EQ', 'input', '', '5', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('234', '20', 'contact_person', '联系人姓名', 'varchar(255)', 'String', 'contactPerson', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('235', '20', 'contact_card_type', '证件类型', 'char(1)', 'String', 'contactCardType', '0', '0', '1', '1', null, null, null, 'EQ', 'select', 'con_card_type', '7', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('236', '20', 'card_id', '证件号', 'varchar(18)', 'String', 'cardId', '0', '0', '1', '1', null, null, null, 'EQ', 'input', '', '8', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('237', '20', 'contact_phone', '联系人电话', 'varchar(11)', 'String', 'contactPhone', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '9', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('238', '20', 'contact_email', '联系人邮箱', 'varchar(255)', 'String', 'contactEmail', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '10', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('239', '20', 'register_time', '注册时间', 'datetime', 'Date', 'registerTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '11', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('240', '20', 'last_login', '上次登陆时间', 'datetime', 'Date', 'lastLogin', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '12', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('241', '20', 'shop_state', '角色状态', 'char(1)', 'String', 'shopState', '0', '0', null, null, '1', '1', null, 'EQ', 'select', 'sys_common_status', '13', 'admin', '2022-08-18 13:01:14', null, '2022-08-26 11:09:41');
INSERT INTO `gen_table_column` VALUES ('242', '21', 'supply_id', '', 'bigint(20) unsigned', 'Long', 'supplyId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('243', '21', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-08-18 13:01:14', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('244', '21', 'company_name', '公司名称', 'varchar(255)', 'String', 'companyName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('245', '21', 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '1', '1', null, null, null, 'LIKE', 'input', '', '4', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('246', '21', 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', '1', '1', '1', null, null, 'EQ', 'input', '', '5', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('247', '21', 'company_property', '公司性质', 'char(1)', 'String', 'companyProperty', '0', '0', '1', '1', null, '1', null, 'EQ', 'select', 'company_pro', '6', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('248', '21', 'company_type', '企业类型', 'char(1)', 'String', 'companyType', '0', '0', '1', '1', null, '1', null, 'EQ', 'select', 'company_type', '7', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('249', '21', 'use_code', '是否使用统一社会信用代码证', 'char(1)', 'String', 'useCode', '0', '0', '1', '1', null, '1', null, 'EQ', 'radio', 'sys_yes_no', '8', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('250', '21', 'code_id', '社会信用代码证号/组织机构代码证号', 'varchar(18)', 'String', 'codeId', '0', '0', null, '1', null, '1', null, 'EQ', 'input', '', '9', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('251', '21', 'contact_person', '联系人姓名', 'varchar(255)', 'String', 'contactPerson', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '10', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('252', '21', 'contact_card_type', '联系人证件类型', 'char(1)', 'String', 'contactCardType', '0', '0', '1', '1', null, '1', null, 'EQ', 'select', 'con_card_type', '11', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('253', '21', 'card_id', '联系人证件号', 'varchar(18)', 'String', 'cardId', '0', '0', '1', '1', null, '1', null, 'EQ', 'input', '', '12', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('254', '21', 'contact_phone', '联系人电话号', 'varchar(11)', 'String', 'contactPhone', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '13', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('255', '21', 'contact_email', '联系人邮箱', 'varchar(255)', 'String', 'contactEmail', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '14', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('256', '21', 'register_time', '注册时间', 'datetime', 'Date', 'registerTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '15', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('257', '21', 'last_login', '上次登陆时间', 'datetime', 'Date', 'lastLogin', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '16', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');
INSERT INTO `gen_table_column` VALUES ('258', '21', 'supply_state', '供应商状态', 'char(1)', 'String', 'supplyState', '0', '0', null, null, '1', '1', null, 'EQ', 'select', 'sys_common_status', '17', 'admin', '2022-08-18 13:01:15', null, '2022-08-24 09:54:24');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` varchar(26) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(64) NOT NULL COMMENT '商品名称',
  `sales` int(11) NOT NULL COMMENT '销量',
  `goods_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（1正常 -1删除 0下架）',
  `category_id` varchar(10) NOT NULL COMMENT '商品类别id',
  `highest_id` varchar(2) NOT NULL COMMENT '顶层商品类别id',
  `goods_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `stock` int(11) NOT NULL COMMENT '库存',
  `price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `supplier_id` bigint(20) NOT NULL COMMENT '厂家ID',
  `tender_id` varchar(22) NOT NULL COMMENT '标书ID',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `category_id` varchar(10) NOT NULL COMMENT '类别id 10位',
  `hierarchy` char(1) NOT NULL COMMENT '层级',
  `superior_id` varchar(10) NOT NULL COMMENT '父类',
  `category_name` varchar(64) DEFAULT '' COMMENT '名称',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for goods_traffic_record
-- ----------------------------
DROP TABLE IF EXISTS `goods_traffic_record`;
CREATE TABLE `goods_traffic_record` (
  `goods_traffic_record_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '货运记录ID',
  `centralized_purchase_record_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '集中采购记录ID',
  `express_delivery_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '快递单号',
  `category_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品类别id',
  `goods_id` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品编号',
  `goods_quantity` int(11) NOT NULL COMMENT '商品数量',
  `batch` int(11) NOT NULL COMMENT '批次',
  `centralized_purchase_record_time` datetime NOT NULL COMMENT '时间',
  PRIMARY KEY (`goods_traffic_record_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='货运记录';

-- ----------------------------
-- Records of goods_traffic_record
-- ----------------------------

-- ----------------------------
-- Table structure for inventory_quantity
-- ----------------------------
DROP TABLE IF EXISTS `inventory_quantity`;
CREATE TABLE `inventory_quantity` (
  `inventory_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '库存ID  uuid',
  `storehouse_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '仓库ID 省市县（6）+自增（代码）',
  `plant_num` char(1) NOT NULL COMMENT '厂房号',
  `area_num` char(1) NOT NULL COMMENT '区域号',
  `shelve_num` varchar(3) NOT NULL COMMENT '货架',
  `layer_num` char(1) NOT NULL COMMENT '层号',
  `quantity` int(11) NOT NULL COMMENT '数量',
  `goods_id` varchar(26) NOT NULL COMMENT '商品ID',
  PRIMARY KEY (`inventory_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在库记录表';

-- ----------------------------
-- Records of inventory_quantity
-- ----------------------------

-- ----------------------------
-- Table structure for inventory_records
-- ----------------------------
DROP TABLE IF EXISTS `inventory_records`;
CREATE TABLE `inventory_records` (
  `record_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '记录ID  uuid',
  `goods_id` varchar(26) NOT NULL COMMENT '商品ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` char(1) NOT NULL COMMENT '出入库状态（0入库 1出库）',
  `plant_num` char(1) NOT NULL COMMENT '厂房号',
  `area_num` char(1) NOT NULL,
  `shelve_num` varchar(3) NOT NULL COMMENT '货架',
  `layer_num` char(1) NOT NULL COMMENT '层号',
  `quantity` int(11) NOT NULL COMMENT '数量',
  `storehouse_id` varchar(32) NOT NULL COMMENT '仓库ID',
  `principal_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '负责人名称',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存记录信息表';

-- ----------------------------
-- Records of inventory_records
-- ----------------------------

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `manager_id` varchar(19) NOT NULL COMMENT '管理员id',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `contact_card_type` char(1) DEFAULT NULL COMMENT '证件类型1身份证 2港澳居民来往内地通行证 3台湾居民来往大陆通行证 4普通护照 5外国人永久居留身份证',
  `contact_card_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '证件号',
  `contact_name` varchar(255) DEFAULT NULL COMMENT '联系人姓名',
  `contact_phone_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人电话号码',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login` datetime DEFAULT NULL COMMENT '上次登录时间',
  `manage_state` char(1) DEFAULT NULL COMMENT '角色状态（0正常 1停用）',
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员角色';

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('4166082312207056866', '管理员1', '管理员1', '123456', '1', '123456', '管理员1', '123456', '2022-08-18 19:45:22', null, '0');

-- ----------------------------
-- Table structure for price_quality
-- ----------------------------
DROP TABLE IF EXISTS `price_quality`;
CREATE TABLE `price_quality` (
  `pq_id` varchar(32) NOT NULL COMMENT '比质比价ID',
  `tender_id` varchar(22) NOT NULL COMMENT '标书ID',
  `product_number` int(11) DEFAULT NULL COMMENT '产品编号',
  `supplier_id` bigint(20) NOT NULL COMMENT '供应商',
  `scores` varchar(5) DEFAULT '' COMMENT '分数',
  PRIMARY KEY (`pq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='比质比价得分表';

-- ----------------------------
-- Records of price_quality
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(20) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(20) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(20) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(20) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(20) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(20) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(20) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(20) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(20) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(20) NOT NULL COMMENT '开始时间',
  `end_time` bigint(20) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(6) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qualification_review
-- ----------------------------
DROP TABLE IF EXISTS `qualification_review`;
CREATE TABLE `qualification_review` (
  `qualification_review_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资质审核ID',
  `supply_id` bigint(20) NOT NULL COMMENT '供应商ID',
  `qualification_review_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资质审核文件存储位置',
  `goods_id` varchar(26) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品编号',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书id',
  `audit_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '审核状态“0”未审核“1”通过“2”未通过',
  `audit_explanation` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核说明',
  `submit_time` datetime NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`qualification_review_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='资质审核';

-- ----------------------------
-- Records of qualification_review
-- ----------------------------

-- ----------------------------
-- Table structure for shipping_information
-- ----------------------------
DROP TABLE IF EXISTS `shipping_information`;
CREATE TABLE `shipping_information` (
  `shipping_id` varchar(32) NOT NULL COMMENT '货运信息id',
  `record_id` varchar(32) NOT NULL COMMENT '记录id',
  `shipping_num` varchar(32) NOT NULL COMMENT '单号',
  `principal` varchar(32) NOT NULL COMMENT '负责人名称',
  `phone` varchar(11) NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`shipping_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='货运信息';

-- ----------------------------
-- Records of shipping_information
-- ----------------------------

-- ----------------------------
-- Table structure for storehouse
-- ----------------------------
DROP TABLE IF EXISTS `storehouse`;
CREATE TABLE `storehouse` (
  `storehouse_id` varchar(32) NOT NULL COMMENT '仓库ID',
  `principal` varchar(32) NOT NULL COMMENT '负责人名称',
  `phone` varchar(11) NOT NULL COMMENT '联系电话',
  `shelves_num` int(11) NOT NULL COMMENT '货架量',
  `acreage` decimal(12,4) NOT NULL COMMENT '面积',
  `position` varchar(500) NOT NULL COMMENT '位置',
  PRIMARY KEY (`storehouse_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库表';

-- ----------------------------
-- Records of storehouse
-- ----------------------------

-- ----------------------------
-- Table structure for supermarket
-- ----------------------------
DROP TABLE IF EXISTS `supermarket`;
CREATE TABLE `supermarket` (
  `shop_id` bigint(20) NOT NULL,
  `shop_name` varchar(255) DEFAULT NULL COMMENT '超市名称',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `contact_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人姓名',
  `contact_card_type` char(1) DEFAULT NULL COMMENT '证件类型1身份证 2港澳居民来往内地通行证 3台湾居民来往大陆通行证 4普通护照 5外国人永久居留身份证',
  `card_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '证件号',
  `contact_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人电话',
  `contact_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人邮箱',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login` datetime DEFAULT NULL COMMENT '上次登陆时间',
  `shop_state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色状态（0正常 1停用）',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='超市角色';

-- ----------------------------
-- Records of supermarket
-- ----------------------------
INSERT INTO `supermarket` VALUES ('3166082316425628027', '超市1', '超市1', '超市1', '123456', '超市1', '1', '123456', '123456', '123456', '2022-08-18 19:46:04', null, '0');
INSERT INTO `supermarket` VALUES ('3166082318279833066', '超市2', '超市2', '超市2', '123456', '超市2', '1', '123456', '123456', '123456', '2022-08-18 19:46:23', null, '0');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supply_id` varchar(19) NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `company_name` varchar(255) DEFAULT NULL COMMENT '公司名称',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `company_property` char(1) DEFAULT NULL COMMENT '公司性质 (0企业 1个人)',
  `company_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '企业类型(0国有企业，1集体所有制企业，2私营企业，3股份制企业)',
  `use_code` char(1) DEFAULT NULL COMMENT '是否使用统一社会信用代码证0否/1是',
  `code_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '社会信用代码证号/组织机构代码证号',
  `contact_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人姓名',
  `contact_card_type` char(1) DEFAULT NULL COMMENT '联系人证件类型: 1身份证 2港澳居民来往内地通行证 3台湾居民来往大陆通行证 4普通护照 5外国人永久居留身份证',
  `card_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人证件号',
  `contact_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人电话号',
  `contact_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人邮箱',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `last_login` datetime DEFAULT NULL COMMENT '上次登陆时间',
  `supply_state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '供应商状态（0正常 1停用）',
  PRIMARY KEY (`supply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供应商角色';

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1166082321923960199', '供应商1', '供应商1', '供应商1', '123456', '0', '0', 'Y', '123456', '供应商1', '1', '123456', '123456', '123456', '2022-08-18 19:46:59', null, '0');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES ('6', '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('7', '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('8', '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES ('9', '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES ('10', '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '是否开启菜单多页签显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-18 19:11:48', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-18 19:11:48', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-18 19:11:48', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-18 19:11:48', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-18 19:11:48', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-18 19:11:48', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-18 19:11:48', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-18 19:11:48', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-18 19:11:48', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-08-18 19:11:48', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-08-18 19:11:50', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-08-18 19:11:50', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-08-18 19:11:50', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-08-18 19:11:50', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-08-18 19:11:50', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-08-18 19:11:50', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-08-18 19:11:50', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-08-18 19:11:50', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-08-18 19:11:50', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '1', '待审核', '0', 'sys_examine_status', '', 'info', 'Y', '0', 'admin', '2022-08-16 17:31:14', 'admin', '2022-08-16 17:33:24', '');
INSERT INTO `sys_dict_data` VALUES ('101', '2', '审核通过', '1', 'sys_examine_status', '', 'success', 'Y', '0', 'admin', '2022-08-16 17:32:06', 'admin', '2022-08-16 17:33:09', '');
INSERT INTO `sys_dict_data` VALUES ('102', '3', '审核失败', '2', 'sys_examine_status', '', 'warning', 'Y', '0', 'admin', '2022-08-16 17:33:44', '', '2022-08-18 19:29:57', '');
INSERT INTO `sys_dict_data` VALUES ('103', '4', '账号异常', '3', 'sys_examine_status', '', 'danger', 'Y', '0', 'admin', '2022-08-16 17:34:15', '', '2022-08-18 19:30:03', '');
INSERT INTO `sys_dict_data` VALUES ('104', '1', '身份证', '1', 'con_card_type', '', '', 'Y', '0', 'admin', '2022-08-16 19:41:30', '', '2022-08-18 19:30:06', '');
INSERT INTO `sys_dict_data` VALUES ('105', '2', '港澳居民来往内地通行证', '2', 'con_card_type', '', '', 'Y', '0', 'admin', '2022-08-16 19:41:57', '', '2022-08-18 19:30:08', '');
INSERT INTO `sys_dict_data` VALUES ('106', '3', '台湾居民来往大陆通行证', '3', 'con_card_type', '', '', 'Y', '0', 'admin', '2022-08-16 19:42:30', '', '2022-08-18 19:30:10', '');
INSERT INTO `sys_dict_data` VALUES ('107', '4', '普通护照', '4', 'con_card_type', '', '', 'Y', '0', 'admin', '2022-08-16 19:42:40', '', '2022-08-18 19:30:13', '');
INSERT INTO `sys_dict_data` VALUES ('108', '5', '外国人永久居留身份证', '5', 'con_card_type', '', '', 'Y', '0', 'admin', '2022-08-16 19:42:52', '', '2022-08-18 19:30:15', '');
INSERT INTO `sys_dict_data` VALUES ('109', '1', '企业', '0', 'company_pro', '', 'info', 'Y', '0', 'admin', '2022-08-16 20:05:53', '', '2022-08-18 19:30:17', '');
INSERT INTO `sys_dict_data` VALUES ('110', '2', '个人', '1', 'company_pro', '', 'info', 'Y', '0', 'admin', '2022-08-16 20:06:12', '', '2022-08-18 19:30:19', '');
INSERT INTO `sys_dict_data` VALUES ('111', '1', '国有企业', '0', 'company_type', '', '', 'Y', '0', 'admin', '2022-08-16 20:08:21', '', '2022-08-18 19:30:22', '');
INSERT INTO `sys_dict_data` VALUES ('112', '2', '集体所有制企业', '1', 'company_type', '', '', 'Y', '0', 'admin', '2022-08-16 20:08:41', '', '2022-08-18 19:30:24', '');
INSERT INTO `sys_dict_data` VALUES ('113', '3', '私营企业', '2', 'company_type', '', '', 'Y', '0', 'admin', '2022-08-16 20:08:55', '', '2022-08-18 19:30:27', '');
INSERT INTO `sys_dict_data` VALUES ('114', '4', '股份制企业', '3', 'company_type', '', '', 'Y', '0', 'admin', '2022-08-16 20:09:28', '', '2022-08-18 19:30:30', '');
INSERT INTO `sys_dict_data` VALUES (200, 1, '供应商与供销社', '0', 'contract_type', '', '', 'Y', '0', 'admin', '2022-08-16 19:45:02', 'admin', '2022-08-16 19:46:52', '');
INSERT INTO `sys_dict_data` VALUES (201, 2, '小商超与供销社', '1', 'contract_type', '', '', 'Y', '0', 'admin', '2022-08-16 19:46:31', 'admin', '2022-08-16 19:47:21', '');
INSERT INTO `sys_dict_data` VALUES (202, 1, '否', '0', 'contract_signature', NULL, NULL, 'Y', '0', 'admin', '2022-08-16 19:49:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (203, 2, '是', '1', 'contract_signature', NULL, NULL, 'Y', '0', 'admin', '2022-08-16 19:49:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (204, 1, '未审核', '0', 'audit_status', NULL, NULL, 'Y', '0', 'admin', '2022-08-16 20:27:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (205, 2, '审核通过', '1', 'audit_status', NULL, NULL, 'Y', '0', 'admin', '2022-08-16 20:27:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (206, 3, '审核未通过', '2', 'audit_status', NULL, NULL, 'Y', '0', 'admin', '2022-08-16 20:28:40', '', NULL, NULL);
-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2022-08-18 19:11:50', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2022-08-18 19:11:50', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2022-08-18 19:11:50', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2022-08-18 19:11:50', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2022-08-18 19:11:50', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2022-08-18 19:11:50', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2022-08-18 19:11:50', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2022-08-18 19:11:50', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2022-08-18 19:11:50', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2022-08-18 19:11:50', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '审核状态', 'sys_examine_status', '0', 'admin', '2022-08-16 17:29:41', 'admin', '2022-08-18 19:32:15', '商家状态列表');
INSERT INTO `sys_dict_type` VALUES ('101', '证件类型', 'con_card_type', '0', 'admin', '2022-08-16 19:38:49', 'admin', '2022-08-16 19:39:47', '证件类型列表');
INSERT INTO `sys_dict_type` VALUES ('102', '公司性质', 'company_pro', '0', 'admin', '2022-08-16 20:05:19', 'admin', '2022-08-18 19:33:17', '公司性质列表');
INSERT INTO `sys_dict_type` VALUES ('103', '企业类型', 'company_type', '0', 'admin', '2022-08-16 20:08:00', 'admin', '2022-08-18 19:33:45', '企业类型列表');
INSERT INTO `sys_dict_type` VALUES (104, '合同类别', 'contract_type', '0', 'admin', '2022-08-16 19:42:11', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (105, '是否签名', 'contract_signature', '0', 'admin', '2022-08-16 19:49:23', 'admin', '2022-08-24 15:58:26', '合同签名');
INSERT INTO `sys_dict_type` VALUES (106, '审核状态', 'audit_status', '0', 'admin', '2022-08-16 20:26:14', 'admin', '2022-08-24 15:58:35', '资质审核状态');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-08-18 19:11:50', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-08-18 19:11:50', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-08-18 19:11:50', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-20 21:06:09');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-21 12:30:24');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-22 21:24:58');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 12:57:05');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 15:22:27');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 16:16:44');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-24 09:47:07');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-24 09:50:16');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-24 09:54:04');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-24 09:55:22');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-24 09:55:33');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-24 09:55:49');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-24 17:52:20');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 09:58:17');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 10:09:23');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 11:07:01');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 11:32:58');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '1', '密码输入错误1次', '2022-08-25 11:39:53');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '1', '密码输入错误2次', '2022-08-25 11:40:59');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 11:44:04');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 11:44:24');
INSERT INTO `sys_logininfor` VALUES ('121', '小商超1', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '注册成功', '2022-08-25 11:45:32');
INSERT INTO `sys_logininfor` VALUES ('122', '小商超1', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 11:45:41');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 11:46:20');
INSERT INTO `sys_logininfor` VALUES ('124', '供应商1', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '注册成功', '2022-08-25 11:54:09');
INSERT INTO `sys_logininfor` VALUES ('125', '供应商1', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 11:54:20');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 11:54:54');
INSERT INTO `sys_logininfor` VALUES ('127', '小商超1', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 12:06:54');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 12:10:07');
INSERT INTO `sys_logininfor` VALUES ('129', '测试1', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '注册成功', '2022-08-25 12:52:54');
INSERT INTO `sys_logininfor` VALUES ('130', '测试1', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 12:59:43');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:00:15');
INSERT INTO `sys_logininfor` VALUES ('132', '测试1', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:01:56');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:02:44');
INSERT INTO `sys_logininfor` VALUES ('134', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '注册成功', '2022-08-25 13:05:20');
INSERT INTO `sys_logininfor` VALUES ('135', '供应商测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '注册成功', '2022-08-25 13:06:08');
INSERT INTO `sys_logininfor` VALUES ('136', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:06:16');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:07:39');
INSERT INTO `sys_logininfor` VALUES ('138', '供应商测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:10:13');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:14:05');
INSERT INTO `sys_logininfor` VALUES ('140', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:16:26');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:19:14');
INSERT INTO `sys_logininfor` VALUES ('142', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:28:32');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '1', '密码输入错误1次', '2022-08-25 13:29:27');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:29:31');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:37:58');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 13:38:17');
INSERT INTO `sys_logininfor` VALUES ('147', '供应商1', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-25 14:26:30');
INSERT INTO `sys_logininfor` VALUES ('148', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 14:26:50');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '1', '密码输入错误1次', '2022-08-25 14:27:13');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 14:27:16');
INSERT INTO `sys_logininfor` VALUES ('151', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 14:27:37');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 14:28:00');
INSERT INTO `sys_logininfor` VALUES ('153', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 14:31:07');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 14:32:02');
INSERT INTO `sys_logininfor` VALUES ('155', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 14:34:24');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 14:38:27');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-25 15:04:41');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 09:12:20');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 09:30:41');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 09:41:16');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 09:44:01');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 09:46:33');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 09:54:45');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 10:07:40');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 10:20:43');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 10:22:48');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 10:32:34');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 10:32:56');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 10:33:27');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 10:42:16');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 10:43:18');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 10:51:10');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:00:49');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:01:13');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:02:12');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:02:55');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:04:17');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:04:48');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:13:47');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:19:41');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:26:17');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:30:41');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:31:27');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:32:25');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:32:51');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:33:23');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:35:32');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:38:41');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 11:47:35');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 12:17:42');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 12:19:40');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 12:35:32');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 13:09:49');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 13:52:35');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 13:57:53');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 14:06:10');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 14:25:41');
INSERT INTO `sys_logininfor` VALUES ('198', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 14:42:53');
INSERT INTO `sys_logininfor` VALUES ('199', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 16:11:16');
INSERT INTO `sys_logininfor` VALUES ('200', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 16:17:39');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 16:22:44');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 17:01:54');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 17:02:48');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 17:47:15');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 20:03:10');
INSERT INTO `sys_logininfor` VALUES ('206', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 20:22:30');
INSERT INTO `sys_logininfor` VALUES ('207', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 21:33:40');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 21:41:23');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 21:43:06');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 22:02:41');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-26 22:08:09');
INSERT INTO `sys_logininfor` VALUES ('212', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 09:35:21');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 10:08:41');
INSERT INTO `sys_logininfor` VALUES ('214', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 10:09:14');
INSERT INTO `sys_logininfor` VALUES ('215', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 10:15:20');
INSERT INTO `sys_logininfor` VALUES ('216', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 10:17:43');
INSERT INTO `sys_logininfor` VALUES ('217', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 10:21:23');
INSERT INTO `sys_logininfor` VALUES ('218', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 10:26:58');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 10:27:46');
INSERT INTO `sys_logininfor` VALUES ('220', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 10:53:32');
INSERT INTO `sys_logininfor` VALUES ('221', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:06:07');
INSERT INTO `sys_logininfor` VALUES ('222', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:33:33');
INSERT INTO `sys_logininfor` VALUES ('223', '小商超1', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-27 12:41:30');
INSERT INTO `sys_logininfor` VALUES ('224', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:41:50');
INSERT INTO `sys_logininfor` VALUES ('225', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:45:58');
INSERT INTO `sys_logininfor` VALUES ('226', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '1', '密码输入错误1次', '2022-08-27 12:47:26');
INSERT INTO `sys_logininfor` VALUES ('227', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '1', '密码输入错误2次', '2022-08-27 12:47:31');
INSERT INTO `sys_logininfor` VALUES ('228', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:47:35');
INSERT INTO `sys_logininfor` VALUES ('229', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:50:35');
INSERT INTO `sys_logininfor` VALUES ('230', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:51:03');
INSERT INTO `sys_logininfor` VALUES ('231', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:52:03');
INSERT INTO `sys_logininfor` VALUES ('232', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:55:02');
INSERT INTO `sys_logininfor` VALUES ('233', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:55:31');
INSERT INTO `sys_logininfor` VALUES ('234', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:57:03');
INSERT INTO `sys_logininfor` VALUES ('235', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:57:55');
INSERT INTO `sys_logininfor` VALUES ('236', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 12:58:35');
INSERT INTO `sys_logininfor` VALUES ('237', '小商超测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 13:00:19');
INSERT INTO `sys_logininfor` VALUES ('238', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 13:01:26');
INSERT INTO `sys_logininfor` VALUES ('239', '供应商测试', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 13:03:21');
INSERT INTO `sys_logininfor` VALUES ('240', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-27 13:08:12');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2022-08-18 19:11:49', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2022-08-18 19:11:49', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2022-08-18 19:11:49', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'https://www.dlut.edu.cn/', 'menuBlank', 'C', '1', '1', '', 'fa fa-location-arrow', 'admin', '2022-08-18 19:11:49', 'admin', '2022-08-25 14:19:38', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2022-08-18 19:11:49', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2022-08-18 19:11:49', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2022-08-18 19:11:49', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2022-08-18 19:11:49', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2022-08-18 19:11:49', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2022-08-18 19:11:49', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2022-08-18 19:11:49', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2022-08-18 19:11:49', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2022-08-18 19:11:49', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2022-08-18 19:11:49', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2022-08-18 19:11:49', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2022-08-18 19:11:49', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2022-08-18 19:11:49', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2022-08-18 19:11:49', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2022-08-18 19:11:49', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2022-08-18 19:11:49', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2022-08-18 19:11:49', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2022-08-18 19:11:49', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2022-08-18 19:11:49', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '在线查询', '109', '1', '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '批量强退', '109', '2', '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '单条强退', '109', '3', '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务查询', '110', '1', '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务新增', '110', '2', '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务修改', '110', '3', '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '任务删除', '110', '4', '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '状态修改', '110', '5', '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '任务详细', '110', '6', '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '任务导出', '110', '7', '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成查询', '115', '1', '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '生成修改', '115', '2', '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '生成删除', '115', '3', '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '预览代码', '115', '4', '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('1061', '生成代码', '115', '5', '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2073', '审核管理', '0', '5', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-search', 'admin', '2022-08-15 23:45:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2074', '审核单据', '2073', '1', '/audit/auditDocumentsManage', 'menuItem', 'C', '0', '1', 'audit:auditDocumentsManage:view', '#', 'admin', '2022-08-15 23:49:10', 'admin', '2022-08-23 16:20:06', '审核单据管理菜单');
INSERT INTO `sys_menu` VALUES ('2075', '审核单据管理查询', '2074', '1', '#', '', 'F', '0', '1', 'audit:auditDocumentsManage:list', '#', 'admin', '2022-08-15 23:49:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2076', '审核单据管理新增', '2074', '2', '#', '', 'F', '0', '1', 'audit:auditDocumentsManage:add', '#', 'admin', '2022-08-15 23:49:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2077', '审核单据管理修改', '2074', '3', '#', '', 'F', '0', '1', 'audit:auditDocumentsManage:edit', '#', 'admin', '2022-08-15 23:49:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2078', '审核单据管理删除', '2074', '4', '#', '', 'F', '0', '1', 'audit:auditDocumentsManage:remove', '#', 'admin', '2022-08-15 23:49:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2079', '审核单据管理导出', '2074', '5', '#', '', 'F', '0', '1', 'audit:auditDocumentsManage:export', '#', 'admin', '2022-08-15 23:49:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2080', '小商超信用评价审核', '2073', '1', '/audit/businessCreditEvaluationManage', 'menuItem', 'C', '0', '1', 'audit:businessCreditEvaluationManage:view', '#', 'admin', '2022-08-15 23:49:36', 'admin', '2022-08-25 13:50:56', '小商超信用评价审核管理菜单');
INSERT INTO `sys_menu` VALUES ('2081', '小商超信用评价审核管理查询', '2080', '1', '#', '', 'F', '0', '1', 'audit:businessCreditEvaluationManage:list', '#', 'admin', '2022-08-15 23:49:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2082', '小商超信用评价审核管理新增', '2080', '2', '#', '', 'F', '0', '1', 'audit:businessCreditEvaluationManage:add', '#', 'admin', '2022-08-15 23:49:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2083', '小商超信用评价审核管理修改', '2080', '3', '#', '', 'F', '0', '1', 'audit:businessCreditEvaluationManage:edit', '#', 'admin', '2022-08-15 23:49:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2084', '小商超信用评价审核管理删除', '2080', '4', '#', '', 'F', '0', '1', 'audit:businessCreditEvaluationManage:remove', '#', 'admin', '2022-08-15 23:49:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2085', '小商超信用评价审核管理导出', '2080', '5', '#', '', 'F', '0', '1', 'audit:businessCreditEvaluationManage:export', '#', 'admin', '2022-08-15 23:49:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2086', '供应商信用评价审核', '2073', '2', '/audit/supplierCreditEvaluationManage', 'menuItem', 'C', '0', '1', 'audit:supplierCreditEvaluationManage:view', '#', 'admin', '2022-08-15 23:50:52', 'admin', '2022-08-23 16:25:24', '供应商评价审核管理菜单');
INSERT INTO `sys_menu` VALUES ('2087', '供应商评价审核管理查询', '2086', '1', '#', '', 'F', '0', '1', 'audit:supplierCreditEvaluationManage:list', '#', 'admin', '2022-08-15 23:50:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2088', '供应商评价审核管理新增', '2086', '2', '#', '', 'F', '0', '1', 'audit:supplierCreditEvaluationManage:add', '#', 'admin', '2022-08-15 23:50:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2089', '供应商评价审核管理修改', '2086', '3', '#', '', 'F', '0', '1', 'audit:supplierCreditEvaluationManage:edit', '#', 'admin', '2022-08-15 23:50:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2090', '供应商评价审核管理删除', '2086', '4', '#', '', 'F', '0', '1', 'audit:supplierCreditEvaluationManage:remove', '#', 'admin', '2022-08-15 23:50:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2091', '供应商评价审核管理导出', '2086', '5', '#', '', 'F', '0', '1', 'audit:supplierCreditEvaluationManage:export', '#', 'admin', '2022-08-15 23:50:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2092', '小商超营业执照审核', '2073', '1', '/audit/businessLicenseManage', 'menuItem', 'C', '0', '1', 'audit:businessLicenseManage:view', '#', 'admin', '2022-08-15 23:51:02', 'admin', '2022-08-25 14:03:03', '小商超审核管理菜单');
INSERT INTO `sys_menu` VALUES ('2093', '小商超审核管理查询', '2092', '1', '#', '', 'F', '0', '1', 'audit:businessLicenseManage:list', '#', 'admin', '2022-08-15 23:51:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2094', '小商超审核管理新增', '2092', '2', '#', '', 'F', '0', '1', 'audit:businessLicenseManage:add', '#', 'admin', '2022-08-15 23:51:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2095', '小商超审核管理修改', '2092', '3', '#', '', 'F', '0', '1', 'audit:businessLicenseManage:edit', '#', 'admin', '2022-08-15 23:51:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2096', '小商超审核管理删除', '2092', '4', '#', '', 'F', '0', '1', 'audit:businessLicenseManage:remove', '#', 'admin', '2022-08-15 23:51:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2097', '小商超审核管理导出', '2092', '5', '#', '', 'F', '0', '1', 'audit:businessLicenseManage:export', '#', 'admin', '2022-08-15 23:51:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2098', '供应商营业执照审核', '2073', '1', '/audit/supplierLicenseManage', 'menuItem', 'C', '0', '1', 'audit:supplierLicenseManage:view', '#', 'admin', '2022-08-15 23:51:10', 'admin', '2022-08-23 16:22:48', '供应商营业执照审核管理菜单');
INSERT INTO `sys_menu` VALUES ('2099', '供应商营业执照审核管理查询', '2098', '1', '#', '', 'F', '0', '1', 'audit:supplierLicenseManage:list', '#', 'admin', '2022-08-15 23:51:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2100', '供应商营业执照审核管理新增', '2098', '2', '#', '', 'F', '0', '1', 'audit:supplierLicenseManage:add', '#', 'admin', '2022-08-15 23:51:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2101', '供应商营业执照审核管理修改', '2098', '3', '#', '', 'F', '0', '1', 'audit:supplierLicenseManage:edit', '#', 'admin', '2022-08-15 23:51:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2102', '供应商营业执照审核管理删除', '2098', '4', '#', '', 'F', '0', '1', 'audit:supplierLicenseManage:remove', '#', 'admin', '2022-08-15 23:51:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2103', '供应商营业执照审核管理导出', '2098', '5', '#', '', 'F', '0', '1', 'audit:supplierLicenseManage:export', '#', 'admin', '2022-08-15 23:51:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2104', '税务及银行审核', '2073', '3', '/audit/taxAndBankManage', 'menuItem', 'C', '0', '1', 'audit:taxAndBankManage:view', '#', 'admin', '2022-08-15 23:51:18', 'admin', '2022-08-23 16:25:17', '税务及银行审核管理菜单');
INSERT INTO `sys_menu` VALUES ('2105', '税务及银行审核管理查询', '2104', '1', '#', '', 'F', '0', '1', 'audit:taxAndBankManage:list', '#', 'admin', '2022-08-15 23:51:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2106', '税务及银行审核管理新增', '2104', '2', '#', '', 'F', '0', '1', 'audit:taxAndBankManage:add', '#', 'admin', '2022-08-15 23:51:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2107', '税务及银行审核管理修改', '2104', '3', '#', '', 'F', '0', '1', 'audit:taxAndBankManage:edit', '#', 'admin', '2022-08-15 23:51:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2108', '税务及银行审核管理删除', '2104', '4', '#', '', 'F', '0', '1', 'audit:taxAndBankManage:remove', '#', 'admin', '2022-08-15 23:51:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2109', '税务及银行审核管理导出', '2104', '5', '#', '', 'F', '0', '1', 'audit:taxAndBankManage:export', '#', 'admin', '2022-08-15 23:51:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2190', '管理员角色', '100', '1', '/user/manager', '', 'C', '0', '1', 'user:manager:view', '#', 'admin', '2022-08-24 09:57:51', '', null, '管理员角色菜单');
INSERT INTO `sys_menu` VALUES ('2191', '管理员角色查询', '2190', '1', '#', '', 'F', '0', '1', 'user:manager:list', '#', 'admin', '2022-08-24 09:57:51', '', null, '');
INSERT INTO `sys_menu` VALUES ('2192', '管理员角色新增', '2190', '2', '#', '', 'F', '0', '1', 'user:manager:add', '#', 'admin', '2022-08-24 09:57:51', '', null, '');
INSERT INTO `sys_menu` VALUES ('2193', '管理员角色修改', '2190', '3', '#', '', 'F', '0', '1', 'user:manager:edit', '#', 'admin', '2022-08-24 09:57:51', '', null, '');
INSERT INTO `sys_menu` VALUES ('2194', '管理员角色删除', '2190', '4', '#', '', 'F', '0', '1', 'user:manager:remove', '#', 'admin', '2022-08-24 09:57:51', '', null, '');
INSERT INTO `sys_menu` VALUES ('2195', '管理员角色导出', '2190', '5', '#', '', 'F', '0', '1', 'user:manager:export', '#', 'admin', '2022-08-24 09:57:51', '', null, '');
INSERT INTO `sys_menu` VALUES ('2196', '超市角色', '100', '1', '/user/supermarket', '', 'C', '0', '1', 'user:supermarket:view', '#', 'admin', '2022-08-24 09:57:59', '', null, '超市角色菜单');
INSERT INTO `sys_menu` VALUES ('2197', '超市角色查询', '2196', '1', '#', '', 'F', '0', '1', 'user:supermarket:list', '#', 'admin', '2022-08-24 09:57:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2198', '超市角色新增', '2196', '2', '#', '', 'F', '0', '1', 'user:supermarket:add', '#', 'admin', '2022-08-24 09:57:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2199', '超市角色修改', '2196', '3', '#', '', 'F', '0', '1', 'user:supermarket:edit', '#', 'admin', '2022-08-24 09:57:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2200', '超市角色删除', '2196', '4', '#', '', 'F', '0', '1', 'user:supermarket:remove', '#', 'admin', '2022-08-24 09:57:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2201', '超市角色导出', '2196', '5', '#', '', 'F', '0', '1', 'user:supermarket:export', '#', 'admin', '2022-08-24 09:57:59', '', null, '');
INSERT INTO `sys_menu` VALUES ('2202', '供应商角色', '100', '1', '/user/supplier', '', 'C', '0', '1', 'user:supplier:view', '#', 'admin', '2022-08-24 09:58:06', '', null, '供应商角色菜单');
INSERT INTO `sys_menu` VALUES ('2203', '供应商角色查询', '2202', '1', '#', '', 'F', '0', '1', 'user:supplier:list', '#', 'admin', '2022-08-24 09:58:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2204', '供应商角色新增', '2202', '2', '#', '', 'F', '0', '1', 'user:supplier:add', '#', 'admin', '2022-08-24 09:58:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2205', '供应商角色修改', '2202', '3', '#', '', 'F', '0', '1', 'user:supplier:edit', '#', 'admin', '2022-08-24 09:58:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2206', '供应商角色删除', '2202', '4', '#', '', 'F', '0', '1', 'user:supplier:remove', '#', 'admin', '2022-08-24 09:58:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2207', '供应商角色导出', '2202', '5', '#', '', 'F', '0', '1', 'user:supplier:export', '#', 'admin', '2022-08-24 09:58:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2208', '供销社角色', '100', '1', '/user/cooperative', '', 'C', '0', '1', 'user:cooperative:view', '#', 'admin', '2022-08-24 10:00:07', '', null, '供销社角色菜单');
INSERT INTO `sys_menu` VALUES ('2209', '供销社角色查询', '2208', '1', '#', '', 'F', '0', '1', 'user:cooperative:list', '#', 'admin', '2022-08-24 10:00:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2210', '供销社角色新增', '2208', '2', '#', '', 'F', '0', '1', 'user:cooperative:add', '#', 'admin', '2022-08-24 10:00:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2211', '供销社角色修改', '2208', '3', '#', '', 'F', '0', '1', 'user:cooperative:edit', '#', 'admin', '2022-08-24 10:00:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2212', '供销社角色删除', '2208', '4', '#', '', 'F', '0', '1', 'user:cooperative:remove', '#', 'admin', '2022-08-24 10:00:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2213', '供销社角色导出', '2208', '5', '#', '', 'F', '0', '1', 'user:cooperative:export', '#', 'admin', '2022-08-24 10:00:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2284', '小超市提交审核材料', '0', '6', '/submit/supermarket', 'menuItem', 'C', '0', '1', 'audit:businessCreditEvaluationManage:add,audit:businessLicenseManage:add', '#', 'admin', '2022-08-26 09:28:03', 'admin', '2022-08-27 12:56:29', '');
INSERT INTO `sys_menu` VALUES ('2288', '供应商提交审核材料', '0', '7', '/submit/supplier', 'menuItem', 'C', '0', '1', 'audit:supplierLicenseManage:add,audit:supplierCreditEvaluationManage:add', '#', 'admin', '2022-08-27 12:30:16', 'admin', '2022-08-27 13:02:26', '');
INSERT INTO `sys_menu` VALUES (3184, '集采', 0, 7, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-cart-plus', 'admin', '2022-08-24 11:28:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3185, '招标&竞价', 3184, 1, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-legal', 'admin', '2022-08-24 11:29:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3188, '公告', 3184, 3, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-bank', 'admin', '2022-08-24 11:32:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3191, '招标', 3185, 1, '/cp/tender1', '', 'C', '0', '1', 'cp:tender1:view', '#', 'admin', '2022-08-24 11:38:59', '', NULL, '招标菜单');
INSERT INTO `sys_menu` VALUES (3192, '招标查询', 3191, 1, '#', '', 'F', '0', '1', 'cp:tender1:list', '#', 'admin', '2022-08-24 11:38:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3193, '招标新增', 3191, 2, '#', '', 'F', '0', '1', 'cp:tender1:add', '#', 'admin', '2022-08-24 11:38:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3194, '招标修改', 3191, 3, '#', '', 'F', '0', '1', 'cp:tender1:edit', '#', 'admin', '2022-08-24 11:38:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3195, '招标删除', 3191, 4, '#', '', 'F', '0', '1', 'cp:tender1:remove', '#', 'admin', '2022-08-24 11:38:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3196, '招标导出', 3191, 5, '#', '', 'F', '0', '1', 'cp:tender1:export', '#', 'admin', '2022-08-24 11:38:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3197, '竞价', 3185, 1, '/cp/tender2', '', 'C', '0', '1', 'cp:tender2:view', '#', 'admin', '2022-08-24 11:40:42', '', NULL, '竞价菜单');
INSERT INTO `sys_menu` VALUES (3198, '竞价查询', 3197, 1, '#', '', 'F', '0', '1', 'cp:tender2:list', '#', 'admin', '2022-08-24 11:40:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3199, '竞价新增', 3197, 2, '#', '', 'F', '0', '1', 'cp:tender2:add', '#', 'admin', '2022-08-24 11:40:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3200, '竞价修改', 3197, 3, '#', '', 'F', '0', '1', 'cp:tender2:edit', '#', 'admin', '2022-08-24 11:40:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3201, '竞价删除', 3197, 4, '#', '', 'F', '0', '1', 'cp:tender2:remove', '#', 'admin', '2022-08-24 11:40:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3202, '竞价导出', 3197, 5, '#', '', 'F', '0', '1', 'cp:tender2:export', '#', 'admin', '2022-08-24 11:40:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3203, '资质审核', 3184, 2, '/cp/qualificationReview', 'menuItem', 'C', '0', '1', 'cp:qualificationReview:view', '#', 'admin', '2022-08-24 11:43:14', 'admin', '2022-08-24 11:46:07', '资质审核菜单');
INSERT INTO `sys_menu` VALUES (3204, '资质审核查询', 3203, 1, '#', '', 'F', '0', '1', 'cp:qualificationReview:list', '#', 'admin', '2022-08-24 11:43:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3205, '资质审核新增', 3203, 2, '#', '', 'F', '0', '1', 'cp:qualificationReview:add', '#', 'admin', '2022-08-24 11:43:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3206, '资质审核修改', 3203, 3, '#', '', 'F', '0', '1', 'cp:qualificationReview:edit', '#', 'admin', '2022-08-24 11:43:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3207, '资质审核删除', 3203, 4, '#', '', 'F', '0', '1', 'cp:qualificationReview:remove', '#', 'admin', '2022-08-24 11:43:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3208, '资质审核导出', 3203, 5, '#', '', 'F', '0', '1', 'cp:qualificationReview:export', '#', 'admin', '2022-08-24 11:43:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3209, '中标候选人公示公告', 3188, 1, '/cp/bidWinningCandidates', '', 'C', '0', '1', 'cp:bidWinningCandidates:view', '#', 'admin', '2022-08-24 11:49:31', '', NULL, '中标候选人公示公告菜单');
INSERT INTO `sys_menu` VALUES (3210, '中标候选人公示公告查询', 3209, 1, '#', '', 'F', '0', '1', 'cp:bidWinningCandidates:list', '#', 'admin', '2022-08-24 11:49:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3211, '中标候选人公示公告新增', 3209, 2, '#', '', 'F', '0', '1', 'cp:bidWinningCandidates:add', '#', 'admin', '2022-08-24 11:49:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3212, '中标候选人公示公告修改', 3209, 3, '#', '', 'F', '0', '1', 'cp:bidWinningCandidates:edit', '#', 'admin', '2022-08-24 11:49:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3213, '中标候选人公示公告删除', 3209, 4, '#', '', 'F', '0', '1', 'cp:bidWinningCandidates:remove', '#', 'admin', '2022-08-24 11:49:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3214, '中标候选人公示公告导出', 3209, 5, '#', '', 'F', '0', '1', 'cp:bidWinningCandidates:export', '#', 'admin', '2022-08-24 11:49:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3215, '中标结果公告', 3188, 1, '/cp/bidWinningResultsAnnouncement', '', 'C', '0', '1', 'cp:bidWinningResultsAnnouncement:view', '#', 'admin', '2022-08-24 11:51:28', '', NULL, '中标结果公告菜单');
INSERT INTO `sys_menu` VALUES (3216, '中标结果公告查询', 3215, 1, '#', '', 'F', '0', '1', 'cp:bidWinningResultsAnnouncement:list', '#', 'admin', '2022-08-24 11:51:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3217, '中标结果公告新增', 3215, 2, '#', '', 'F', '0', '1', 'cp:bidWinningResultsAnnouncement:add', '#', 'admin', '2022-08-24 11:51:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3218, '中标结果公告修改', 3215, 3, '#', '', 'F', '0', '1', 'cp:bidWinningResultsAnnouncement:edit', '#', 'admin', '2022-08-24 11:51:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3219, '中标结果公告删除', 3215, 4, '#', '', 'F', '0', '1', 'cp:bidWinningResultsAnnouncement:remove', '#', 'admin', '2022-08-24 11:51:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3220, '中标结果公告导出', 3215, 5, '#', '', 'F', '0', '1', 'cp:bidWinningResultsAnnouncement:export', '#', 'admin', '2022-08-24 11:51:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3221, '变更公告', 3188, 1, '/cp/changeAnnouncement', '', 'C', '0', '1', 'cp:changeAnnouncement:view', '#', 'admin', '2022-08-24 11:52:53', '', NULL, '变更公告菜单');
INSERT INTO `sys_menu` VALUES (3222, '变更公告查询', 3221, 1, '#', '', 'F', '0', '1', 'cp:changeAnnouncement:list', '#', 'admin', '2022-08-24 11:52:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3223, '变更公告新增', 3221, 2, '#', '', 'F', '0', '1', 'cp:changeAnnouncement:add', '#', 'admin', '2022-08-24 11:52:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3224, '变更公告修改', 3221, 3, '#', '', 'F', '0', '1', 'cp:changeAnnouncement:edit', '#', 'admin', '2022-08-24 11:52:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3225, '变更公告删除', 3221, 4, '#', '', 'F', '0', '1', 'cp:changeAnnouncement:remove', '#', 'admin', '2022-08-24 11:52:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3226, '变更公告导出', 3221, 5, '#', '', 'F', '0', '1', 'cp:changeAnnouncement:export', '#', 'admin', '2022-08-24 11:52:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3227, '终止公告', 3188, 1, '/cp/terminationAnnouncement', '', 'C', '0', '1', 'cp:terminationAnnouncement:view', '#', 'admin', '2022-08-24 11:54:57', '', NULL, '终止公告菜单');
INSERT INTO `sys_menu` VALUES (3228, '终止公告查询', 3227, 1, '#', '', 'F', '0', '1', 'cp:terminationAnnouncement:list', '#', 'admin', '2022-08-24 11:54:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3229, '终止公告新增', 3227, 2, '#', '', 'F', '0', '1', 'cp:terminationAnnouncement:add', '#', 'admin', '2022-08-24 11:54:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3230, '终止公告修改', 3227, 3, '#', '', 'F', '0', '1', 'cp:terminationAnnouncement:edit', '#', 'admin', '2022-08-24 11:54:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3231, '终止公告删除', 3227, 4, '#', '', 'F', '0', '1', 'cp:terminationAnnouncement:remove', '#', 'admin', '2022-08-24 11:54:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3232, '终止公告导出', 3227, 5, '#', '', 'F', '0', '1', 'cp:terminationAnnouncement:export', '#', 'admin', '2022-08-24 11:54:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3233, '合同', 3184, 4, '/cp/contract', 'menuItem', 'C', '0', '1', 'cp:contract:view', 'fa fa-handshake-o', 'admin', '2022-08-24 11:56:15', 'admin', '2022-08-24 11:56:40', '合同菜单');
INSERT INTO `sys_menu` VALUES (3234, '合同查询', 3233, 1, '#', '', 'F', '0', '1', 'cp:contract:list', '#', 'admin', '2022-08-24 11:56:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3235, '合同新增', 3233, 2, '#', '', 'F', '0', '1', 'cp:contract:add', '#', 'admin', '2022-08-24 11:56:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3236, '合同修改', 3233, 3, '#', '', 'F', '0', '1', 'cp:contract:edit', '#', 'admin', '2022-08-24 11:56:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3237, '合同删除', 3233, 4, '#', '', 'F', '0', '1', 'cp:contract:remove', '#', 'admin', '2022-08-24 11:56:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (3238, '合同导出', 3233, 5, '#', '', 'F', '0', '1', 'cp:contract:export', '#', 'admin', '2022-08-24 11:56:15', '', NULL, '');
-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2022-08-18 19:11:50', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2022-08-18 19:11:50', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(11) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"四种角色\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:35:34');
INSERT INTO `sys_oper_log` VALUES ('101', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2111\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"四种用户\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:37:49');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"cooperative\"],\"tableComment\":[\"供销社角色\"],\"className\":[\"Cooperative\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"210\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供销社id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gxsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"211\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供销社名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gxsName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"212\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"213\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"214\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"215\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"供销社状态\"],\"columns[5].javaType\":[\"String\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:38:06');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"manager\"],\"tableComment\":[\"管理员角色\"],\"className\":[\"Manager\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"218\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"管理员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"managerId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"219\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"220\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"用户名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"username\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"221\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"密码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"password\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"222\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"证件类型\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"contactCardType\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"con_card_type\"],\"columns[5].columnId\":[\"223\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"证件号\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactCardId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:39:39');
INSERT INTO `sys_oper_log` VALUES ('104', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"supermarket\"],\"tableComment\":[\"超市角色\"],\"className\":[\"Supermarket\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"229\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"shopId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"230\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"超市名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"shopName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"231\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"232\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"233\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"234\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"联系人姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactPerson\"],\"columns[5].isInsert\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:39:48');
INSERT INTO `sys_oper_log` VALUES ('105', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"supplier\"],\"tableComment\":[\"供应商角色\"],\"className\":[\"Supplier\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"242\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"supplyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"243\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"244\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"公司名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"companyName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"245\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"246\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"247\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司性质\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"companyProperty\"],\"columns[5].isInsert', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:39:59');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"cooperative\"],\"tableComment\":[\"供销社角色\"],\"className\":[\"Cooperative\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"210\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供销社id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gxsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"211\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供销社名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gxsName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"212\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"213\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"214\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"215\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"供销社状态\"],\"columns[5].javaType\":[\"String\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:40:08');
INSERT INTO `sys_oper_log` VALUES ('107', '代码生成', '8', 'com.cps.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/cps/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"cooperative,manager,supermarket,supplier\"]}', null, '0', null, '2022-08-18 19:40:44');
INSERT INTO `sys_oper_log` VALUES ('108', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"manager\"],\"tableComment\":[\"管理员角色\"],\"className\":[\"Manager\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"218\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"管理员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"managerId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"219\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"220\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"用户名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"username\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"221\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"密码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"password\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"222\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"证件类型\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"contactCardType\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"con_card_type\"],\"columns[5].columnId\":[\"223\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"证件号\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactCardId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:42:36');
INSERT INTO `sys_oper_log` VALUES ('109', '代码生成', '8', 'com.cps.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/cps/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"cooperative,manager,supermarket,supplier\"]}', null, '0', null, '2022-08-18 19:42:58');
INSERT INTO `sys_oper_log` VALUES ('110', '供销社角色', '1', 'com.cps.web.controller.user.CooperativeController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/user/cooperative/add', '127.0.0.1', '内网IP', '{\"gxsName\":[\"供销社1\"],\"nickname\":[\"供销社1\"],\"username\":[\"供销社1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:44:34');
INSERT INTO `sys_oper_log` VALUES ('111', '供销社角色', '1', 'com.cps.web.controller.user.CooperativeController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/user/cooperative/add', '127.0.0.1', '内网IP', '{\"gxsName\":[\"供销社2\"],\"nickname\":[\"供销社2\"],\"username\":[\"供销社2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:44:52');
INSERT INTO `sys_oper_log` VALUES ('112', '管理员角色', '1', 'com.cps.web.controller.user.ManagerController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/user/manager/add', '127.0.0.1', '内网IP', '{\"nickname\":[\"管理员1\"],\"username\":[\"管理员1\"],\"contactCardType\":[\"1\"],\"contactCardId\":[\"123456\"],\"contactName\":[\"管理员1\"],\"contactPhoneNumber\":[\"123456\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:45:22');
INSERT INTO `sys_oper_log` VALUES ('113', '管理员角色', '1', 'com.cps.web.controller.user.ManagerController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/user/manager/add', '127.0.0.1', '内网IP', '{\"nickname\":[\"管理员2\"],\"username\":[\"管理员2\"],\"contactCardType\":[\"1\"],\"contactCardId\":[\"123456\"],\"contactName\":[\"管理员2\"],\"contactPhoneNumber\":[\"123456\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:45:36');
INSERT INTO `sys_oper_log` VALUES ('114', '超市角色', '1', 'com.cps.web.controller.user.SupermarketController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/user/supermarket/add', '127.0.0.1', '内网IP', '{\"shopName\":[\"超市1\"],\"nickname\":[\"超市1\"],\"username\":[\"超市1\"],\"contactPerson\":[\"超市1\"],\"contactCardType\":[\"1\"],\"cardId\":[\"123456\"],\"contactPhone\":[\"123456\"],\"contactEmail\":[\"123456\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:46:04');
INSERT INTO `sys_oper_log` VALUES ('115', '超市角色', '1', 'com.cps.web.controller.user.SupermarketController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/user/supermarket/add', '127.0.0.1', '内网IP', '{\"shopName\":[\"超市2\"],\"nickname\":[\"超市2\"],\"username\":[\"超市2\"],\"contactPerson\":[\"超市2\"],\"contactCardType\":[\"1\"],\"cardId\":[\"123456\"],\"contactPhone\":[\"123456\"],\"contactEmail\":[\"123456\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:46:22');
INSERT INTO `sys_oper_log` VALUES ('116', '供应商角色', '1', 'com.cps.web.controller.user.SupplierController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/user/supplier/add', '127.0.0.1', '内网IP', '{\"nickname\":[\"供应商1\"],\"companyName\":[\"供应商1\"],\"username\":[\"供应商1\"],\"companyProperty\":[\"0\"],\"companyType\":[\"0\"],\"useCode\":[\"Y\"],\"codeId\":[\"123456\"],\"contactPerson\":[\"供应商1\"],\"contactCardType\":[\"1\"],\"cardId\":[\"123456\"],\"contactPhone\":[\"123456\"],\"contactEmail\":[\"123456\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:46:59');
INSERT INTO `sys_oper_log` VALUES ('117', '管理员角色', '3', 'com.cps.web.controller.user.ManagerController.remove()', 'POST', '1', 'admin', '研发部门', '/cps/user/manager/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4166082313694111757\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:47:05');
INSERT INTO `sys_oper_log` VALUES ('118', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', '0', null, '2022-08-18 19:48:45');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', '0', null, '2022-08-18 19:48:54');
INSERT INTO `sys_oper_log` VALUES ('120', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"https://www.dlut.edu.cn/\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:49:04');
INSERT INTO `sys_oper_log` VALUES ('121', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', '0', null, '2022-08-18 19:50:42');
INSERT INTO `sys_oper_log` VALUES ('122', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"https://www.dlut.edu.cn/\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-18 19:50:54');
INSERT INTO `sys_oper_log` VALUES ('123', '角色管理', '3', 'com.cps.web.controller.system.SysRoleController.remove()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', null, '1', '普通角色已分配,不能删除', '2022-08-20 21:10:34');
INSERT INTO `sys_oper_log` VALUES ('124', '用户管理', '3', 'com.cps.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '研发部门', '/cps/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-20 21:10:51');
INSERT INTO `sys_oper_log` VALUES ('125', '角色管理', '3', 'com.cps.web.controller.system.SysRoleController.remove()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-20 21:11:10');
INSERT INTO `sys_oper_log` VALUES ('126', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"123\"],\"frName\":[\"123\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-22 21:27:22');
INSERT INTO `sys_oper_log` VALUES ('127', '供应商评价审核管理', '1', 'com.cps.audit.controller.SupplierCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/supplierCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"123\"],\"corporateName\":[\"123\"],\"corporateCreditInfo\":[\"\"],\"frName\":[\"123\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-22\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-22 21:27:43');
INSERT INTO `sys_oper_log` VALUES ('128', '个人信息', '2', 'com.cps.web.controller.system.SysProfileController.updateAvatar()', 'POST', '1', 'admin', '研发部门', '/cps/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 15:28:34');
INSERT INTO `sys_oper_log` VALUES ('129', '审核单据管理', '5', 'com.cps.audit.controller.AuditDocumentsController.export()', 'POST', '1', 'admin', '研发部门', '/cps/audit/auditDocumentsManage/export', '127.0.0.1', '内网IP', '{\"userId\":[\"\"],\"adminId\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"06d49321-0a4b-45e9-a245-801155ba8f0d_审核单据管理数据.xlsx\",\"code\":0}', '0', null, '2022-08-23 15:44:38');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2074\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"审核单据\"],\"url\":[\"/audit/auditDocumentsManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:auditDocumentsManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 16:20:07');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2080\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"商超信用审核\"],\"url\":[\"/audit/businessCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessCreditEvaluationManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 16:21:10');
INSERT INTO `sys_oper_log` VALUES ('132', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2080\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"小商超信用评价审核\"],\"url\":[\"/audit/businessCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessCreditEvaluationManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 16:22:13');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2086\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"供应商信用评价审核\"],\"url\":[\"/audit/supplierCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:supplierCreditEvaluationManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 16:22:26');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2092\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"小商超营业执照审核\"],\"url\":[\"/audit/businessLicenseManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessLicenseManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 16:22:38');
INSERT INTO `sys_oper_log` VALUES ('135', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2098\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"供应商营业执照审核\"],\"url\":[\"/audit/supplierLicenseManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:supplierLicenseManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 16:22:48');
INSERT INTO `sys_oper_log` VALUES ('136', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2104\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"税务及银行审核\"],\"url\":[\"/audit/taxAndBankManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:taxAndBankManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 16:23:04');
INSERT INTO `sys_oper_log` VALUES ('137', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2086\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"供应商信用评价审核\"],\"url\":[\"/audit/supplierCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:supplierCreditEvaluationManage:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 16:24:59');
INSERT INTO `sys_oper_log` VALUES ('138', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2104\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"税务及银行审核\"],\"url\":[\"/audit/taxAndBankManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:taxAndBankManage:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 16:25:17');
INSERT INTO `sys_oper_log` VALUES ('139', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2086\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"供应商信用评价审核\"],\"url\":[\"/audit/supplierCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:supplierCreditEvaluationManage:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-23 16:25:24');
INSERT INTO `sys_oper_log` VALUES ('140', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2111', '127.0.0.1', '内网IP', '2111', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-08-24 09:47:43');
INSERT INTO `sys_oper_log` VALUES ('141', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2160', '127.0.0.1', '内网IP', '2160', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-08-24 09:47:51');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2178', '127.0.0.1', '内网IP', '2178', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-08-24 09:47:54');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2183', '127.0.0.1', '内网IP', '2183', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-24 09:48:13');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2182', '127.0.0.1', '内网IP', '2182', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-24 09:48:18');
INSERT INTO `sys_oper_log` VALUES ('145', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"audit_business_credit_evaluation_info\"],\"tableComment\":[\"小商超信用评价审核信息表\"],\"className\":[\"BusinessCreditEvaluationInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"9\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核id（uuid）\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"businessCreditEvaluationAuditId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"10\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"审核单id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"checklistId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"11\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"法人姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"frName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"12\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"法人犯罪记录信息jpg照片\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"frCriminalRecord\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"upload\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"13\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createDatetime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-24 09:53:23');
INSERT INTO `sys_oper_log` VALUES ('146', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"manager\"],\"tableComment\":[\"管理员角色\"],\"className\":[\"Manager\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"218\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"管理员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"managerId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"219\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"220\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"用户名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"username\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"221\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"密码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"password\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"222\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"证件类型\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"contactCardType\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"con_card_type\"],\"columns[5].columnId\":[\"223\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"证件号\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactCardId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-24 09:53:45');
INSERT INTO `sys_oper_log` VALUES ('147', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"supermarket\"],\"tableComment\":[\"超市角色\"],\"className\":[\"Supermarket\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"229\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"shopId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"230\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"超市名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"shopName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"231\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"232\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"233\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"234\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"联系人姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactPerson\"],\"columns[5].isInsert\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-24 09:53:54');
INSERT INTO `sys_oper_log` VALUES ('148', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"supplier\"],\"tableComment\":[\"供应商角色\"],\"className\":[\"Supplier\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"242\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"supplyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"243\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"244\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"公司名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"companyName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"245\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"246\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"247\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司性质\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"companyProperty\"],\"columns[5].isInsert', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-24 09:54:24');
INSERT INTO `sys_oper_log` VALUES ('149', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"manager\"],\"tableComment\":[\"管理员角色\"],\"className\":[\"Manager\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"218\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"管理员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"managerId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"219\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"220\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"用户名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"username\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"221\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"密码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"password\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"222\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"证件类型\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"contactCardType\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"con_card_type\"],\"columns[5].columnId\":[\"223\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"证件号\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactCardId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-24 09:54:33');
INSERT INTO `sys_oper_log` VALUES ('150', '代码生成', '8', 'com.cps.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/cps/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"cooperative,manager,supermarket,supplier\"]}', null, '0', null, '2022-08-24 09:56:03');
INSERT INTO `sys_oper_log` VALUES ('151', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"cooperative\"],\"tableComment\":[\"供销社角色\"],\"className\":[\"Cooperative\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"210\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供销社id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gxsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"211\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供销社名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gxsName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"212\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"213\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"214\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"215\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"供销社状态\"],\"columns[5].javaType\":[\"String\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-24 09:58:46');
INSERT INTO `sys_oper_log` VALUES ('152', '代码生成', '8', 'com.cps.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/cps/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"cooperative\"]}', null, '0', null, '2022-08-24 09:59:34');
INSERT INTO `sys_oper_log` VALUES ('153', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2202\"],\"menuType\":[\"F\"],\"menuName\":[\"信用评价审核\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"user:supplier:exam\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 10:08:48');
INSERT INTO `sys_oper_log` VALUES ('154', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2214\"],\"parentId\":[\"2202\"],\"menuType\":[\"F\"],\"menuName\":[\"信用评价审核\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"user:supplier:exam\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 10:11:56');
INSERT INTO `sys_oper_log` VALUES ('155', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2202\"],\"menuType\":[\"F\"],\"menuName\":[\"营业执照审核\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"user:supplier:exam\"],\"orderNum\":[\"7\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 10:16:30');
INSERT INTO `sys_oper_log` VALUES ('156', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"109\"],\"menuType\":[\"F\"],\"menuName\":[\"测试按钮\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 10:18:22');
INSERT INTO `sys_oper_log` VALUES ('157', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2216', '127.0.0.1', '内网IP', '2216', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 10:21:13');
INSERT INTO `sys_oper_log` VALUES ('158', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2215', '127.0.0.1', '内网IP', '2215', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 11:16:54');
INSERT INTO `sys_oper_log` VALUES ('159', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2214', '127.0.0.1', '内网IP', '2214', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 11:17:05');
INSERT INTO `sys_oper_log` VALUES ('160', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"超市\"],\"roleKey\":[\"Supermarket\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"小超市\"],\"menuIds\":[\"1,100,2196,2198,2199\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 11:56:50');
INSERT INTO `sys_oper_log` VALUES ('161', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"超市\"],\"roleKey\":[\"Supermarket\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"小超市\"],\"menuIds\":[\"1,100,2196,2198,2199,2073,2080,2082,2092,2094\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 11:57:16');
INSERT INTO `sys_oper_log` VALUES ('162', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"供应商\"],\"roleKey\":[\"Supplier\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"供应商角色\"],\"menuIds\":[\"1,100,2202,2204,2205,2073,2098,2100,2086,2088\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:01:33');
INSERT INTO `sys_oper_log` VALUES ('163', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"供应商\"],\"roleKey\":[\"Supplier\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"供应商角色\"],\"menuIds\":[\"2073,2098,2100,2086,2088\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:03:52');
INSERT INTO `sys_oper_log` VALUES ('164', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"超市\"],\"roleKey\":[\"Supermarket\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"小超市\"],\"menuIds\":[\"2073,2080,2082,2092,2094\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:03:56');
INSERT INTO `sys_oper_log` VALUES ('165', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2080\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"提交小商超信用评价\"],\"url\":[\"/audit/businessCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessCreditEvaluationManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:23:49');
INSERT INTO `sys_oper_log` VALUES ('166', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2092\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"提交小商超营业执照\"],\"url\":[\"/audit/businessLicenseManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessLicenseManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:26:27');
INSERT INTO `sys_oper_log` VALUES ('167', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"提交相关材料\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:47:18');
INSERT INTO `sys_oper_log` VALUES ('168', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2080\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"小商超迎接执照审核\"],\"url\":[\"/audit/businessCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessCreditEvaluationManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:48:59');
INSERT INTO `sys_oper_log` VALUES ('169', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2080\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"小商超信用审核\"],\"url\":[\"/audit/businessCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessCreditEvaluationManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:50:01');
INSERT INTO `sys_oper_log` VALUES ('170', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2080\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"小商超信用评价审核\"],\"url\":[\"/audit/businessCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessCreditEvaluationManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:50:56');
INSERT INTO `sys_oper_log` VALUES ('171', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2092\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"小商超迎接执照审核\"],\"url\":[\"/audit/businessLicenseManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessLicenseManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:51:11');
INSERT INTO `sys_oper_log` VALUES ('172', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2217\"],\"menuType\":[\"F\"],\"menuName\":[\"测试按钮\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:52:18');
INSERT INTO `sys_oper_log` VALUES ('173', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2218', '127.0.0.1', '内网IP', '2218', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:52:37');
INSERT INTO `sys_oper_log` VALUES ('174', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"audit_business_credit_evaluation_info\"],\"tableComment\":[\"小商超信用评价审核信息表\"],\"className\":[\"BusinessCreditEvaluationInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"9\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核id（uuid）\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"businessCreditEvaluationAuditId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"10\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"审核单id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"checklistId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"11\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"法人姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"frName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"12\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"法人犯罪记录信息jpg照片\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"frCriminalRecord\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"upload\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"13\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createDatetime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:54:32');
INSERT INTO `sys_oper_log` VALUES ('175', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"audit_business_license_info\"],\"tableComment\":[\"小商超审核信息表\"],\"className\":[\"BusinessLicenseInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"14\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核单id\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"businessAuditDocumentId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"15\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"个体工商户营业执照jpg照片\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"businessLicense\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"upload\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"16\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"个体工商户营业执照号码\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"businessLicenseNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"17\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"经营者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"managerName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"18\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"小商超名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"businessName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"19\"],\"columns[5].sort\":[\"6', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:54:53');
INSERT INTO `sys_oper_log` VALUES ('176', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"audit_supplier_credit_evaluation_info\"],\"tableComment\":[\"供应商评价审核信息表\"],\"className\":[\"SupplierCreditEvaluationInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核id（uuid）\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"supplierCreditEvaluationAuditId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"审核单id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"checklistId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"公司名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"corporateName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"公司征信信息jpg照片\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"corporateCreditInfo\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"upload\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"38\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"法人姓名\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"frName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"39\"],\"colum', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:55:10');
INSERT INTO `sys_oper_log` VALUES ('177', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"audit_supplier_license_info\"],\"tableComment\":[\"供应商营业执照审核信息表\"],\"className\":[\"SupplierLicenseInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"41\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核单id\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"checklistId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"42\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"公司名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"corporateName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"43\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"全国信息代码号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"registrationNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"44\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"法人姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"frName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"45\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"法人身份证号码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"46\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"法人', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 13:55:25');
INSERT INTO `sys_oper_log` VALUES ('178', '代码生成', '8', 'com.cps.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/cps/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"audit_business_credit_evaluation_info,audit_business_license_info,audit_supplier_credit_evaluation_info,audit_supplier_license_info\"]}', null, '0', null, '2022-08-25 13:55:47');
INSERT INTO `sys_oper_log` VALUES ('179', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"audit_business_license_info\"],\"tableComment\":[\"小商超审核信息表\"],\"className\":[\"BusinessLicenseInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"14\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核单id\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"businessAuditDocumentId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"15\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"个体工商户营业执照jpg照片\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"businessLicense\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"upload\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"16\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"个体工商户营业执照号码\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"businessLicenseNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"17\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"经营者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"managerName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"18\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"小商超名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"businessName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"19\"],\"columns[5].sort\":[\"6', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:02:48');
INSERT INTO `sys_oper_log` VALUES ('180', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2092\"],\"parentId\":[\"2073\"],\"menuType\":[\"C\"],\"menuName\":[\"小商超营业执照审核\"],\"url\":[\"/audit/businessLicenseManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessLicenseManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:03:03');
INSERT INTO `sys_oper_log` VALUES ('181', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2217\"],\"menuType\":[\"F\"],\"menuName\":[\"测试\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:03:55');
INSERT INTO `sys_oper_log` VALUES ('182', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2249', '127.0.0.1', '内网IP', '2249', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:04:30');
INSERT INTO `sys_oper_log` VALUES ('183', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2220', '127.0.0.1', '内网IP', '2220', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:04:39');
INSERT INTO `sys_oper_log` VALUES ('184', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2222', '127.0.0.1', '内网IP', '2222', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:04:51');
INSERT INTO `sys_oper_log` VALUES ('185', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2223', '127.0.0.1', '内网IP', '2223', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:04:58');
INSERT INTO `sys_oper_log` VALUES ('186', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2224', '127.0.0.1', '内网IP', '2224', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:05:03');
INSERT INTO `sys_oper_log` VALUES ('187', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"提交各种材料\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:10:59');
INSERT INTO `sys_oper_log` VALUES ('188', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"audit_business_credit_evaluation_info\"],\"tableComment\":[\"小商超信用评价审核信息表\"],\"className\":[\"BusinessCreditEvaluationInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"9\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核id（uuid）\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"businessCreditEvaluationAuditId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"10\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"审核单id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"checklistId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"11\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"法人姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"frName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"12\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"法人犯罪记录信息jpg照片\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"frCriminalRecord\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"upload\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"13\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createDatetime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:11:29');
INSERT INTO `sys_oper_log` VALUES ('189', '代码生成', '8', 'com.cps.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/cps/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"audit_business_credit_evaluation_info\"]}', null, '0', null, '2022-08-25 14:11:33');
INSERT INTO `sys_oper_log` VALUES ('190', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"F\"],\"menuName\":[\"测试\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:17:53');
INSERT INTO `sys_oper_log` VALUES ('191', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2257', '127.0.0.1', '内网IP', '2257', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:18:46');
INSERT INTO `sys_oper_log` VALUES ('192', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"https://www.dlut.edu.cn/\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:19:20');
INSERT INTO `sys_oper_log` VALUES ('193', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"https://www.dlut.edu.cn/\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:19:38');
INSERT INTO `sys_oper_log` VALUES ('194', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"提交相关材料\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:20:07');
INSERT INTO `sys_oper_log` VALUES ('195', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"audit_business_credit_evaluation_info\"],\"tableComment\":[\"小商超信用评价审核信息表\"],\"className\":[\"BusinessCreditEvaluationInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"9\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核id（uuid）\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"businessCreditEvaluationAuditId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"10\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"审核单id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"checklistId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"11\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"法人姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"frName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"12\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"法人犯罪记录信息jpg照片\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"frCriminalRecord\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"upload\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"13\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"createDatetime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:20:24');
INSERT INTO `sys_oper_log` VALUES ('196', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"audit_business_license_info\"],\"tableComment\":[\"小商超审核信息表\"],\"className\":[\"BusinessLicenseInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"14\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核单id\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"businessAuditDocumentId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"15\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"个体工商户营业执照jpg照片\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"businessLicense\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"upload\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"16\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"个体工商户营业执照号码\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"businessLicenseNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"17\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"经营者\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"managerName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"18\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"小商超名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"businessName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"19\"],\"columns[5].sort\":[\"6', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:20:34');
INSERT INTO `sys_oper_log` VALUES ('197', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"audit_supplier_credit_evaluation_info\"],\"tableComment\":[\"供应商评价审核信息表\"],\"className\":[\"SupplierCreditEvaluationInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核id（uuid）\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"supplierCreditEvaluationAuditId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"审核单id\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"checklistId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"公司名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"corporateName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"公司征信信息jpg照片\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"corporateCreditInfo\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"upload\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"38\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"法人姓名\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"frName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"39\"],\"colum', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:20:46');
INSERT INTO `sys_oper_log` VALUES ('198', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"audit_supplier_license_info\"],\"tableComment\":[\"供应商营业执照审核信息表\"],\"className\":[\"SupplierLicenseInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"41\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核单id\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"checklistId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"42\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"公司名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"corporateName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"43\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"全国信息代码号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"registrationNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"44\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"法人姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"frName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"45\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"法人身份证号码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"46\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"法人', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:21:13');
INSERT INTO `sys_oper_log` VALUES ('199', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"audit_supplier_license_info\"],\"tableComment\":[\"供应商营业执照审核信息表\"],\"className\":[\"SupplierLicenseInfo\"],\"functionAuthor\":[\"fmy\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"41\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"审核单id\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"checklistId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"42\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"公司名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"corporateName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"43\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"全国信息代码号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"registrationNumber\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"44\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"法人姓名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"frName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"45\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"法人身份证号码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"idNumber\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"46\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"法人', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:21:41');
INSERT INTO `sys_oper_log` VALUES ('200', '代码生成', '8', 'com.cps.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/cps/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"audit_business_credit_evaluation_info,audit_business_license_info,audit_supplier_credit_evaluation_info,audit_supplier_license_info\"]}', null, '0', null, '2022-08-25 14:21:56');
INSERT INTO `sys_oper_log` VALUES ('201', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"供应商\"],\"roleKey\":[\"Supplier\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"供应商角色\"],\"menuIds\":[\"2258,2271,2272,2273,2274,2275,2276,2277,2278,2279,2280,2281,2282\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:25:43');
INSERT INTO `sys_oper_log` VALUES ('202', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"超市\"],\"roleKey\":[\"Supermarket\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"小超市\"],\"menuIds\":[\"2258,2259,2260,2261,2262,2263,2264,2265,2266,2267,2268,2269,2270\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:25:51');
INSERT INTO `sys_oper_log` VALUES ('203', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2258\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"提交相关材料\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:26:01');
INSERT INTO `sys_oper_log` VALUES ('204', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2258\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"提交相关材料\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:27:27');
INSERT INTO `sys_oper_log` VALUES ('205', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"供应商\"],\"roleKey\":[\"Supplier\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"供应商角色\"],\"menuIds\":[\"2258,2271,2273,2277,2279\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:28:27');
INSERT INTO `sys_oper_log` VALUES ('206', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"超市\"],\"roleKey\":[\"Supermarket\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"小超市\"],\"menuIds\":[\"2258,2259,2261,2265,2267\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:30:30');
INSERT INTO `sys_oper_log` VALUES ('207', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"超市\"],\"roleKey\":[\"Supermarket\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"小超市\"],\"menuIds\":[\"2258,2259,2261,2265,2267\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:30:43');
INSERT INTO `sys_oper_log` VALUES ('208', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"供应商\"],\"roleKey\":[\"Supplier\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"供应商角色\"],\"menuIds\":[\"2258,2271,2273,2277,2279\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:30:55');
INSERT INTO `sys_oper_log` VALUES ('209', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', '小商超测试', null, '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"1223\"],\"frName\":[\"小商超1\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-25\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:31:46');
INSERT INTO `sys_oper_log` VALUES ('210', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2259\"],\"parentId\":[\"2258\"],\"menuType\":[\"C\"],\"menuName\":[\"提交小商超信用评价\"],\"url\":[\"/audit/businessCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessCreditEvaluationManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:33:04');
INSERT INTO `sys_oper_log` VALUES ('211', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2265\"],\"parentId\":[\"2258\"],\"menuType\":[\"C\"],\"menuName\":[\"提交小商超营业执照\"],\"url\":[\"/audit/businessLicenseManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessLicenseManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:33:30');
INSERT INTO `sys_oper_log` VALUES ('212', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2271\"],\"parentId\":[\"2258\"],\"menuType\":[\"C\"],\"menuName\":[\"提交供应商信用评价\"],\"url\":[\"/audit/supplierCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:supplierCreditEvaluationManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:33:50');
INSERT INTO `sys_oper_log` VALUES ('213', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2277\"],\"parentId\":[\"2258\"],\"menuType\":[\"C\"],\"menuName\":[\"提交供应商营业执照\"],\"url\":[\"/audit/supplierLicenseManage\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:supplierLicenseManage:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 14:34:09');
INSERT INTO `sys_oper_log` VALUES ('214', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2258\"],\"menuType\":[\"C\"],\"menuName\":[\"测试\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 15:39:52');
INSERT INTO `sys_oper_log` VALUES ('215', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2283\"],\"parentId\":[\"2258\"],\"menuType\":[\"C\"],\"menuName\":[\"/audit/test\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 15:40:55');
INSERT INTO `sys_oper_log` VALUES ('216', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2283\"],\"parentId\":[\"2258\"],\"menuType\":[\"C\"],\"menuName\":[\"测试\"],\"url\":[\"/audit/test\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 15:41:09');
INSERT INTO `sys_oper_log` VALUES ('217', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2283\"],\"parentId\":[\"2258\"],\"menuType\":[\"C\"],\"menuName\":[\"测试\"],\"url\":[\"/audit/businessCreditEvaluationManage\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 15:43:30');
INSERT INTO `sys_oper_log` VALUES ('218', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2283\"],\"parentId\":[\"2258\"],\"menuType\":[\"C\"],\"menuName\":[\"测试\"],\"url\":[\"/audit/businessCreditEvaluationManage\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 15:44:06');
INSERT INTO `sys_oper_log` VALUES ('219', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2283\"],\"parentId\":[\"2258\"],\"menuType\":[\"C\"],\"menuName\":[\"测试\"],\"url\":[\"/audit/test\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-25 15:45:20');
INSERT INTO `sys_oper_log` VALUES ('220', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2258', '127.0.0.1', '内网IP', '2258', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-08-26 09:14:40');
INSERT INTO `sys_oper_log` VALUES ('221', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2283', '127.0.0.1', '内网IP', '2283', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 09:14:47');
INSERT INTO `sys_oper_log` VALUES ('222', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"供应商\"],\"roleKey\":[\"Supplier\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"供应商角色\"],\"menuIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 09:15:31');
INSERT INTO `sys_oper_log` VALUES ('223', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"超市\"],\"roleKey\":[\"Supermarket\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"小超市\"],\"menuIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 09:15:35');
INSERT INTO `sys_oper_log` VALUES ('224', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/submit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 09:28:03');
INSERT INTO `sys_oper_log` VALUES ('225', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/submit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supermarket:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 09:31:39');
INSERT INTO `sys_oper_log` VALUES ('226', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"supermarketsubmit\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supermarket:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 09:45:21');
INSERT INTO `sys_oper_log` VALUES ('227', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/supermarketsubmit\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supermarket:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 09:45:44');
INSERT INTO `sys_oper_log` VALUES ('228', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/supermarketsubmit\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 09:46:43');
INSERT INTO `sys_oper_log` VALUES ('229', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/submit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supermarket:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 10:08:29');
INSERT INTO `sys_oper_log` VALUES ('230', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"提交相关材料\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"7\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 10:37:26');
INSERT INTO `sys_oper_log` VALUES ('231', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2285\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场\"],\"url\":[\"/submit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 10:37:57');
INSERT INTO `sys_oper_log` VALUES ('232', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2286\"],\"parentId\":[\"2285\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场\"],\"url\":[\"/submit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supermarket:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 10:38:24');
INSERT INTO `sys_oper_log` VALUES ('233', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2286', '127.0.0.1', '内网IP', '2286', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 10:41:04');
INSERT INTO `sys_oper_log` VALUES ('234', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2285', '127.0.0.1', '内网IP', '2285', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 10:41:06');
INSERT INTO `sys_oper_log` VALUES ('235', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"supermarket\"],\"tableComment\":[\"超市角色\"],\"className\":[\"Supermarket\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"229\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"shopId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"230\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"超市名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"shopName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"231\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"232\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"233\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"234\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"联系人姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactPerson\"],\"columns[5].isInsert\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 10:47:30');
INSERT INTO `sys_oper_log` VALUES ('236', '代码生成', '8', 'com.cps.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/cps/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"supermarket\"]}', null, '0', null, '2022-08-26 10:47:42');
INSERT INTO `sys_oper_log` VALUES ('237', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/supermarketsubmit\"],\"target\":[\"menuItem\"],\"perms\":[\"supermarketsubmit:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 11:03:18');
INSERT INTO `sys_oper_log` VALUES ('238', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"supermarket\"],\"tableComment\":[\"超市角色\"],\"className\":[\"Supermarket\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"229\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"shopId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"230\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"超市名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"shopName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"231\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"232\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"233\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"234\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"联系人姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactPerson\"],\"columns[5].isInsert\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 11:07:29');
INSERT INTO `sys_oper_log` VALUES ('239', '代码生成', '8', 'com.cps.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/cps/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"supermarket\"]}', null, '0', null, '2022-08-26 11:07:37');
INSERT INTO `sys_oper_log` VALUES ('240', '代码生成', '2', 'com.cps.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"supermarket\"],\"tableComment\":[\"超市角色\"],\"className\":[\"Supermarket\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"229\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"shopId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"230\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"超市名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"shopName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"231\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"232\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"233\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"234\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"联系人姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactPerson\"],\"columns[5].isInsert\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 11:09:41');
INSERT INTO `sys_oper_log` VALUES ('241', '代码生成', '8', 'com.cps.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/cps/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"supermarket\"]}', null, '0', null, '2022-08-26 11:09:45');
INSERT INTO `sys_oper_log` VALUES ('242', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/submit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supermarket:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 11:14:10');
INSERT INTO `sys_oper_log` VALUES ('243', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2284\"],\"menuType\":[\"F\"],\"menuName\":[\"提交\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 13:20:32');
INSERT INTO `sys_oper_log` VALUES ('244', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2287\"],\"parentId\":[\"2284\"],\"menuType\":[\"F\"],\"menuName\":[\"提交\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supermarket:add\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 13:53:48');
INSERT INTO `sys_oper_log` VALUES ('245', '菜单管理', '3', 'com.cps.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/cps/system/menu/remove/2287', '127.0.0.1', '内网IP', '2287', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 14:19:32');
INSERT INTO `sys_oper_log` VALUES ('246', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"123456\"],\"frName\":[\"法人测试\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-26\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-26 21:42:07');
INSERT INTO `sys_oper_log` VALUES ('247', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/audit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:supermarket:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 10:14:51');
INSERT INTO `sys_oper_log` VALUES ('248', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/supermarketsubmit\"],\"target\":[\"menuItem\"],\"perms\":[\"supermarketsubmit:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 10:16:36');
INSERT INTO `sys_oper_log` VALUES ('249', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/audit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"/audit/supermarket:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 10:20:00');
INSERT INTO `sys_oper_log` VALUES ('250', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/audit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:supermarket:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 10:20:12');
INSERT INTO `sys_oper_log` VALUES ('251', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小商场提交审核材料\"],\"url\":[\"/submit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supermarket:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 10:52:54');
INSERT INTO `sys_oper_log` VALUES ('252', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"894561\"],\"frName\":[\"测试1\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 10:59:03');
INSERT INTO `sys_oper_log` VALUES ('253', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"894561\"],\"frName\":[\"测试1\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 10:59:06');
INSERT INTO `sys_oper_log` VALUES ('254', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"76453\"],\"frName\":[\"测试2\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 11:06:59');
INSERT INTO `sys_oper_log` VALUES ('255', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"76453\"],\"frName\":[\"测试2\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 11:07:14');
INSERT INTO `sys_oper_log` VALUES ('256', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"434\"],\"frName\":[\"测试3\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 11:09:07');
INSERT INTO `sys_oper_log` VALUES ('257', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"963214\"],\"frName\":[\"小商超测试\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 11:10:34');
INSERT INTO `sys_oper_log` VALUES ('258', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"453\"],\"frName\":[\"小商超测试\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:06:32');
INSERT INTO `sys_oper_log` VALUES ('259', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"643\"],\"frName\":[\"\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:11:07');
INSERT INTO `sys_oper_log` VALUES ('260', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"423\"],\"frName\":[\"4756\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:12:43');
INSERT INTO `sys_oper_log` VALUES ('261', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"876\"],\"frName\":[\"233786\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:13:27');
INSERT INTO `sys_oper_log` VALUES ('262', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"85412\"],\"frName\":[\"小商超测试1\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:14:39');
INSERT INTO `sys_oper_log` VALUES ('263', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"834543633\"],\"frName\":[\"小商超2\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:15:03');
INSERT INTO `sys_oper_log` VALUES ('264', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"5634\"],\"frName\":[\"小商超3\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:26:14');
INSERT INTO `sys_oper_log` VALUES ('265', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"563413546\"],\"frName\":[\"小商超4\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:26:37');
INSERT INTO `sys_oper_log` VALUES ('266', '小商超审核管理', '1', 'com.cps.audit.controller.BusinessLicenseInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/businessLicenseManage/add', '127.0.0.1', '内网IP', '{\"businessLicense\":[\"\"],\"businessLicenseNumber\":[\"8451231\"],\"managerName\":[\"小商超1\"],\"businessName\":[\"小商超1\"],\"businessPlace\":[\"小商超1\"],\"businessForm\":[\"1\"],\"registerDate\":[\"2022-08-27\"],\"businessScope\":[\"无\"],\"businessCertificate\":[\"\"],\"username\":[\"小商超1\"],\"contactPerson\":[\"小商超1\"],\"contactCardType\":[\"1\"],\"idNumber\":[\"165632\"],\"frontPhoto\":[\"\"],\"backPhoto\":[\"\"],\"contactPhone\":[\"453453\"],\"contactEmail\":[\"343434\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:27:58');
INSERT INTO `sys_oper_log` VALUES ('267', '菜单管理', '1', 'com.cps.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"供应商提交审核材料\"],\"url\":[\"/submit/supplier\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supplier:view\"],\"orderNum\":[\"7\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:30:16');
INSERT INTO `sys_oper_log` VALUES ('268', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2288\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"供应商提交审核材料\"],\"url\":[\"/submit/supplier\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supplier:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:36:04');
INSERT INTO `sys_oper_log` VALUES ('269', '供应商评价审核管理', '1', 'com.cps.audit.controller.SupplierCreditEvaluationInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/supplierCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"845531\"],\"corporateName\":[\"供应商\"],\"corporateCreditInfo\":[\"\"],\"frName\":[\"供应商\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:37:31');
INSERT INTO `sys_oper_log` VALUES ('270', '供应商营业执照审核管理', '1', 'com.cps.audit.controller.SupplierLicenseInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/supplierLicenseManage/add', '127.0.0.1', '内网IP', '{\"corporateName\":[\"供应商\"],\"registrationNumber\":[\"8451213\"],\"frName\":[\"供应商\"],\"idNumber\":[\"供应商\"],\"frontPhoto\":[\"\"],\"backPhoto\":[\"\"],\"businessLicenseLocation\":[\"供应商\"],\"businessLicenseAddress\":[\"供应商\"],\"incorporationDate\":[\"2022-08-27\"],\"registeredCapital\":[\"8794123123\"],\"businessScope\":[\"561231\"],\"businessLicense\":[\"\"],\"officePhone\":[\"供应商\"],\"emergencyContact\":[\"供应商\"],\"emergencyContactPhone\":[\"供应商\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:39:32');
INSERT INTO `sys_oper_log` VALUES ('271', '供应商营业执照审核管理', '1', 'com.cps.audit.controller.SupplierLicenseInfoController.addSave()', 'POST', '1', 'admin', '研发部门', '/cps/audit/supplierLicenseManage/add', '127.0.0.1', '内网IP', '{\"corporateName\":[\"供应商2\"],\"registrationNumber\":[\"8974123123\"],\"frName\":[\"供应商2\"],\"idNumber\":[\"451316324654\"],\"frontPhoto\":[\"\"],\"backPhoto\":[\"\"],\"businessLicenseLocation\":[\"供应商2\"],\"businessLicenseAddress\":[\"供应商2\"],\"incorporationDate\":[\"2022-08-27\"],\"registeredCapital\":[\"6232332\"],\"businessScope\":[\"供应商2\"],\"businessLicense\":[\"\"],\"officePhone\":[\"5123230\"],\"emergencyContact\":[\"供应商2\"],\"emergencyContactPhone\":[\"25133\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:40:28');
INSERT INTO `sys_oper_log` VALUES ('272', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小超市提交审核材料\"],\"url\":[\"/submit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"submit:supermarket:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:41:00');
INSERT INTO `sys_oper_log` VALUES ('273', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"超市\"],\"roleKey\":[\"Supermarket\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"小超市\"],\"menuIds\":[\"2284\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:41:08');
INSERT INTO `sys_oper_log` VALUES ('274', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"103\"],\"roleName\":[\"供应商\"],\"roleKey\":[\"Supplier\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"供应商角色\"],\"menuIds\":[\"2288\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:41:18');
INSERT INTO `sys_oper_log` VALUES ('275', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小超市提交审核材料\"],\"url\":[\"/submit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessCreditEvaluationManage:add\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:54:06');
INSERT INTO `sys_oper_log` VALUES ('276', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', '小商超测试', null, '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"845123321\"],\"frName\":[\"小商超测试\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:55:20');
INSERT INTO `sys_oper_log` VALUES ('277', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2284\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"小超市提交审核材料\"],\"url\":[\"/submit/supermarket\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:businessCreditEvaluationManage:add,audit:businessLicenseManage:add\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:56:29');
INSERT INTO `sys_oper_log` VALUES ('278', '角色管理', '2', 'com.cps.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"102\"],\"roleName\":[\"超市\"],\"roleKey\":[\"Supermarket\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"小超市\"],\"menuIds\":[\"2284\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 12:58:13');
INSERT INTO `sys_oper_log` VALUES ('279', '小商超审核管理', '1', 'com.cps.audit.controller.BusinessLicenseInfoController.addSave()', 'POST', '1', '小商超测试', null, '/cps/audit/businessLicenseManage/add', '127.0.0.1', '内网IP', '{\"businessLicense\":[\"\"],\"businessLicenseNumber\":[\"12313123\"],\"managerName\":[\"小商超测试\"],\"businessName\":[\"小商超测试\"],\"businessPlace\":[\"小商超测试\"],\"businessForm\":[\"1\"],\"registerDate\":[\"2022-08-27\"],\"businessScope\":[\"小商超测试\"],\"businessCertificate\":[\"\"],\"username\":[\"小商超测试\"],\"contactPerson\":[\"小商超测试\"],\"contactCardType\":[\"1\"],\"idNumber\":[\"56123313\"],\"frontPhoto\":[\"\"],\"backPhoto\":[\"\"],\"contactPhone\":[\"512313164\"],\"contactEmail\":[\"4612313\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 13:01:06');
INSERT INTO `sys_oper_log` VALUES ('280', '小商超信用评价审核管理', '1', 'com.cps.audit.controller.BusinessCreditEvaluationInfoController.addSave()', 'POST', '1', '小商超测试', null, '/cps/audit/businessCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"541321164\"],\"frName\":[\"小商超测试\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 13:01:19');
INSERT INTO `sys_oper_log` VALUES ('281', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2288\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"供应商提交审核材料\"],\"url\":[\"/submit/supplier\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:supplierLicenseManage:add\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 13:02:06');
INSERT INTO `sys_oper_log` VALUES ('282', '菜单管理', '2', 'com.cps.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/cps/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2288\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"供应商提交审核材料\"],\"url\":[\"/submit/supplier\"],\"target\":[\"menuItem\"],\"perms\":[\"audit:supplierLicenseManage:add,audit:supplierCreditEvaluationManage:add\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 13:02:26');
INSERT INTO `sys_oper_log` VALUES ('283', '供应商评价审核管理', '1', 'com.cps.audit.controller.SupplierCreditEvaluationInfoController.addSave()', 'POST', '1', '供应商测试', null, '/cps/audit/supplierCreditEvaluationManage/add', '127.0.0.1', '内网IP', '{\"checklistId\":[\"供应商测试\"],\"corporateName\":[\"供应商测试\"],\"corporateCreditInfo\":[\"\"],\"frName\":[\"供应商测试\"],\"frCriminalRecord\":[\"\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 13:03:43');
INSERT INTO `sys_oper_log` VALUES ('284', '供应商营业执照审核管理', '1', 'com.cps.audit.controller.SupplierLicenseInfoController.addSave()', 'POST', '1', '供应商测试', null, '/cps/audit/supplierLicenseManage/add', '127.0.0.1', '内网IP', '{\"corporateName\":[\"供应商测试\"],\"registrationNumber\":[\"84512131\"],\"frName\":[\"供应商测试\"],\"idNumber\":[\"5612312\"],\"frontPhoto\":[\"\"],\"backPhoto\":[\"\"],\"businessLicenseLocation\":[\"供应商测试\"],\"businessLicenseAddress\":[\"供应商测试\"],\"incorporationDate\":[\"2022-08-27\"],\"registeredCapital\":[\"4520\"],\"businessScope\":[\"供应商测试\"],\"businessLicense\":[\"\"],\"officePhone\":[\"56132\"],\"emergencyContact\":[\"供应商测试\"],\"emergencyContactPhone\":[\"512316\"],\"createDatetime\":[\"2022-08-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-08-27 13:08:02');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2022-08-18 19:11:49', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2022-08-18 19:11:49', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '0', '0', 'admin', '2022-08-15 23:03:57', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('100', '供销社', 'Cooperative', '2', '1', '0', '0', 'admin', '2022-08-17 14:54:19', 'admin', '2022-08-17 14:54:45', '供销社角色');
INSERT INTO `sys_role` VALUES ('101', '管理员', 'Manager', '3', '1', '0', '0', 'admin', '2022-08-17 14:55:44', 'admin', '2022-08-17 14:56:13', '管理员角色');
INSERT INTO `sys_role` VALUES ('102', '超市', 'Supermarket', '4', '1', '0', '0', 'admin', '2022-08-17 14:58:07', 'admin', '2022-08-27 12:58:13', '小超市');
INSERT INTO `sys_role` VALUES ('103', '供应商', 'Supplier', '5', '1', '0', '0', 'admin', '2022-08-17 14:58:53', 'admin', '2022-08-27 12:41:18', '供应商角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('102', '2284');
INSERT INTO `sys_role_menu` VALUES ('103', '2288');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2022/08/23/blob_20220823152834A001.png', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2022-08-27 13:08:12', '2022-08-18 19:11:49', 'admin', '2022-08-18 19:11:49', '', '2022-08-27 13:08:12', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '2', '127.0.0.1', '2022-08-18 19:11:49', '2022-08-18 19:11:49', 'admin', '2022-08-18 19:11:49', '', null, '测试员');
INSERT INTO `sys_user` VALUES ('103', null, '小商超测试', '小商超测试', '01', '', '', '0', '', '6b7f20816cd783ee74b045f44c2c8135', 'da2d12', '0', '0', '127.0.0.1', '2022-08-27 13:00:19', '2022-08-25 13:05:20', '', '2022-08-25 13:05:20', '', '2022-08-27 13:00:19', null);
INSERT INTO `sys_user` VALUES ('104', null, '供应商测试', '供应商测试', '01', '', '', '0', '', 'd9d2029c7143571bcaf654758aecb0b2', 'cb6e2e', '0', '0', '127.0.0.1', '2022-08-27 13:03:22', '2022-08-25 13:06:08', '', '2022-08-25 13:06:07', '', '2022-08-27 13:03:21', null);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(11) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('1b639b62-bc83-44c5-bb3f-58af49dbd778', '供应商测试', null, '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', 'on_line', '2022-08-27 12:06:00', '2022-08-27 13:08:12', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('103', '102');
INSERT INTO `sys_user_role` VALUES ('104', '103');

-- ----------------------------
-- Table structure for tender
-- ----------------------------
DROP TABLE IF EXISTS `tender`;
CREATE TABLE `tender` (
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  `project_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目名称',
  `gxs_id` bigint(20) NOT NULL COMMENT '供销社id',
  `contact` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人',
  `phone_of_contact` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人手机号',
  `tender_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书存储位置',
  `bid_number` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '竞标次数:1代表招标，大于1代表竞价',
  `create_datetime` datetime NOT NULL COMMENT '创建时间',
  `dealine_for_qualification_review` datetime NOT NULL COMMENT '资质审核截止时间',
  `bid_start_time` datetime NOT NULL COMMENT '竞标开始时间',
  `bid_end_time` datetime NOT NULL COMMENT '竞标结束时间',
  `publish_time` datetime NOT NULL COMMENT '公布时间',
  PRIMARY KEY (`tender_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='集中采购标书';

-- ----------------------------
-- Records of tender
-- ----------------------------

-- ----------------------------
-- Table structure for termination_announcement
-- ----------------------------
DROP TABLE IF EXISTS `termination_announcement`;
CREATE TABLE `termination_announcement` (
  `termination_announcement_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '终止公告ID',
  `termination_announcement_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件存储位置',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  `termination_time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`termination_announcement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='终止公告';

-- ----------------------------
-- Records of termination_announcement
-- ----------------------------
