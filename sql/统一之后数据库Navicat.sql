/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2022-08-22 19:27:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area_code
-- ----------------------------
use database `ry_temp`
DROP TABLE IF EXISTS `area_code`;
CREATE TABLE `area_code` (
  `area_id` int(11) NOT NULL COMMENT '地区编码',
  `pid` int(10) unsigned NOT NULL COMMENT '上级编码',
  `area_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区名称',
  `level` int(10) unsigned NOT NULL COMMENT '地区等级',
  `visible` int(10) unsigned NOT NULL COMMENT '是否可见',
  `displayorder` int(10) unsigned NOT NULL COMMENT '是否支持配送',
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='省市级代码表';

-- ----------------------------
-- Records of area_code
-- ----------------------------

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
  `bid_winning_candidates_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中标候选人公示公告',
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
INSERT INTO `gen_table` VALUES ('2', 'audit_business_credit_evaluation_info', '小商超信用评价审核信息表', '', null, 'BusinessCreditEvaluationInfo', 'crud', 'com.cps.audit', 'audit', 'businessCreditEvaluationManage', '小商超信用评价审核管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}', 'admin', '2022-08-14 10:07:00', '', '2022-08-15 23:58:43', '');
INSERT INTO `gen_table` VALUES ('3', 'audit_business_license_info', '小商超审核信息表', '', null, 'BusinessLicenseInfo', 'crud', 'com.cps.audit', 'audit', 'businessLicenseManage', '小商超审核管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}', 'admin', '2022-08-14 10:07:00', '', '2022-08-15 23:58:56', '');
INSERT INTO `gen_table` VALUES ('4', 'audit_supplier_credit_evaluation_info', '供应商评价审核信息表', '', null, 'SupplierCreditEvaluationInfo', 'crud', 'com.cps.audit', 'audit', 'supplierCreditEvaluationManage', '供应商评价审核管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}', 'admin', '2022-08-14 10:07:00', '', '2022-08-15 23:59:18', '');
INSERT INTO `gen_table` VALUES ('5', 'audit_supplier_license_info', '供应商营业执照审核信息表', '', null, 'SupplierLicenseInfo', 'crud', 'com.cps.audit', 'audit', 'supplierLicenseManage', '供应商营业执照审核管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}', 'admin', '2022-08-14 10:07:00', '', '2022-08-15 23:59:36', '');
INSERT INTO `gen_table` VALUES ('6', 'audit_tax_and_bank_info', '税务及银行审核信息表', '', null, 'TaxAndBankInfo', 'crud', 'com.cps.audit', 'audit', 'taxAndBankManage', '税务及银行审核管理', 'fmy', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}', 'admin', '2022-08-14 10:07:00', '', '2022-08-15 23:59:47', '');
INSERT INTO `gen_table` VALUES ('18', 'cooperative', '供销社角色', '', '', 'Cooperative', 'crud', 'com.cps.user', 'user', 'cooperative', '供销社角色', 'cps', '0', '/', '{\"parentMenuId\":\"2111\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"四种用户\",\"treeCode\":\"\"}', 'admin', '2022-08-18 13:01:14', '', '2022-08-18 19:40:08', '');
INSERT INTO `gen_table` VALUES ('19', 'manager', '管理员角色', '', '', 'Manager', 'crud', 'com.cps.user', 'user', 'manager', '管理员角色', 'cps', '0', '/', '{\"parentMenuId\":\"2111\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"四种用户\",\"treeCode\":\"\"}', 'admin', '2022-08-18 13:01:14', '', '2022-08-18 19:42:36', '');
INSERT INTO `gen_table` VALUES ('20', 'supermarket', '超市角色', '', '', 'Supermarket', 'crud', 'com.cps.user', 'user', 'supermarket', '超市角色', 'cps', '0', '/', '{\"parentMenuId\":\"2111\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"四种用户\",\"treeCode\":\"\"}', 'admin', '2022-08-18 13:01:14', '', '2022-08-18 19:39:48', '');
INSERT INTO `gen_table` VALUES ('21', 'supplier', '供应商角色', '', '', 'Supplier', 'crud', 'com.cps.user', 'user', 'supplier', '供应商角色', 'cps', '0', '/', '{\"parentMenuId\":\"2111\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"四种用户\",\"treeCode\":\"\"}', 'admin', '2022-08-18 13:01:14', '', '2022-08-18 19:39:59', '');

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
INSERT INTO `gen_table_column` VALUES ('9', '2', 'business_credit_evaluation_audit_id', '审核id（uuid）', 'varchar(32)', 'String', 'businessCreditEvaluationAuditId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:43');
INSERT INTO `gen_table_column` VALUES ('10', '2', 'checklist_id', '审核单id', 'varchar(19)', 'String', 'checklistId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:43');
INSERT INTO `gen_table_column` VALUES ('11', '2', 'fr_name', '法人姓名', 'varchar(30)', 'String', 'frName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:43');
INSERT INTO `gen_table_column` VALUES ('12', '2', 'fr_criminal_record', '法人犯罪记录信息jpg照片', 'varchar(100)', 'String', 'frCriminalRecord', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '4', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:43');
INSERT INTO `gen_table_column` VALUES ('13', '2', 'create_datetime', '创建时间', 'datetime', 'Date', 'createDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '5', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:43');
INSERT INTO `gen_table_column` VALUES ('14', '3', 'business_audit_document_id', '审核单id', 'varchar(19)', 'String', 'businessAuditDocumentId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('15', '3', 'business_license', '个体工商户营业执照jpg照片', 'varchar(100)', 'String', 'businessLicense', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '2', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('16', '3', 'business_license_number', '个体工商户营业执照号码', 'varchar(18)', 'String', 'businessLicenseNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('17', '3', 'manager_name', '经营者', 'varchar(30)', 'String', 'managerName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('18', '3', 'business_name', '小商超名称', 'varchar(50)', 'String', 'businessName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('19', '3', 'business_place', '经营场所位置', 'varchar(200)', 'String', 'businessPlace', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('20', '3', 'business_form', '组成形式（1个人经营 2家庭经营）', 'char(1)', 'String', 'businessForm', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '7', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('21', '3', 'register_date', '注册日期', 'datetime', 'Date', 'registerDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '8', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('22', '3', 'business_scope', '经营范围', 'varchar(500)', 'String', 'businessScope', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '9', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('23', '3', 'business_certificate', '经营许可证.jpg', 'varchar(100)', 'String', 'businessCertificate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '10', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('24', '3', 'username', '用户名', 'varchar(30)', 'String', 'username', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '11', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('25', '3', 'password', '密码', 'varchar(50)', 'String', 'password', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('26', '3', 'contact_person', '联系人姓名', 'varchar(30)', 'String', 'contactPerson', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '13', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('27', '3', 'contact_card_type', '联系人证件类型: 1身份证 2港澳居民来往内地通行证 3台湾居民来往大陆通行证 4普通护照 5外国人永久居留身份证', 'char(1)', 'String', 'contactCardType', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '14', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('28', '3', 'id_number', '联系人证件号', 'varchar(18)', 'String', 'idNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '15', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('29', '3', 'front_photo', '联系人证件正面jpg照片', 'varchar(100)', 'String', 'frontPhoto', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '16', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('30', '3', 'back_photo', '联系人证件反面jpg照片', 'varchar(100)', 'String', 'backPhoto', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '17', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('31', '3', 'contact_phone', '联系人手机号', 'varchar(11)', 'String', 'contactPhone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '18', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('32', '3', 'contact_email', '联系人邮箱', 'varchar(50)', 'String', 'contactEmail', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '19', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('33', '3', 'create_datetime', '创建时间', 'datetime', 'Date', 'createDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '20', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:58:56');
INSERT INTO `gen_table_column` VALUES ('34', '4', 'supplier_credit_evaluation_audit_id', '审核id（uuid）', 'varchar(32)', 'String', 'supplierCreditEvaluationAuditId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:18');
INSERT INTO `gen_table_column` VALUES ('35', '4', 'checklist_id', '审核单id', 'varchar(19)', 'String', 'checklistId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:18');
INSERT INTO `gen_table_column` VALUES ('36', '4', 'corporate_name', '公司名称', 'varchar(50)', 'String', 'corporateName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:18');
INSERT INTO `gen_table_column` VALUES ('37', '4', 'corporate_credit_info', '公司征信信息jpg照片', 'varchar(100)', 'String', 'corporateCreditInfo', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '4', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:18');
INSERT INTO `gen_table_column` VALUES ('38', '4', 'fr_name', '法人姓名', 'varchar(30)', 'String', 'frName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:18');
INSERT INTO `gen_table_column` VALUES ('39', '4', 'fr_criminal_record', '法人犯罪记录信息jpg照片', 'varchar(100)', 'String', 'frCriminalRecord', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '6', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:18');
INSERT INTO `gen_table_column` VALUES ('40', '4', 'create_datetime', '创建时间', 'datetime', 'Date', 'createDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '7', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:18');
INSERT INTO `gen_table_column` VALUES ('41', '5', 'checklist_id', '审核单id', 'varchar(19)', 'String', 'checklistId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('42', '5', 'corporate_name', '公司名称', 'varchar(100)', 'String', 'corporateName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('43', '5', 'registration_number', '全国信息代码号', 'varchar(18)', 'String', 'registrationNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('44', '5', 'fr_name', '法人姓名', 'varchar(30)', 'String', 'frName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('45', '5', 'id_number', '法人身份证号码', 'varchar(18)', 'String', 'idNumber', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('46', '5', 'front_photo', '法人身份证正面jpg照片', 'varchar(100)', 'String', 'frontPhoto', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '6', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('47', '5', 'back_photo', '法人身份证反面jpg照片', 'varchar(100)', 'String', 'backPhoto', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '7', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('48', '5', 'business_license_location', '营业执照所在地', 'varchar(50)', 'String', 'businessLicenseLocation', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('49', '5', 'business_license_address', '营业执照详细地址', 'varchar(200)', 'String', 'businessLicenseAddress', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('50', '5', 'incorporation_date', '成立日期', 'datetime', 'Date', 'incorporationDate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '10', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('51', '5', 'registered_capital', '注册资本', 'decimal(18,2)', 'BigDecimal', 'registeredCapital', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('52', '5', 'business_scope', '营业范围', 'varchar(500)', 'String', 'businessScope', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '12', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('53', '5', 'business_license', '营业执照jpg照片', 'varchar(100)', 'String', 'businessLicense', '0', '0', null, '1', '1', '1', '1', 'EQ', 'upload', '', '13', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('54', '5', 'office_phone', '公司电话', 'varchar(11)', 'String', 'officePhone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '14', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('55', '5', 'emergency_contact', '公司紧急联系人', 'varchar(30)', 'String', 'emergencyContact', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '15', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('56', '5', 'emergency_contact_phone', '公司紧急联系人手机', 'varchar(11)', 'String', 'emergencyContactPhone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '16', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
INSERT INTO `gen_table_column` VALUES ('57', '5', 'create_datetime', '创建时间', 'datetime', 'Date', 'createDatetime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '17', 'admin', '2022-08-14 10:07:00', null, '2022-08-15 23:59:36');
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
INSERT INTO `gen_table_column` VALUES ('210', '18', 'gxs_id', '供销社id', 'bigint(20) unsigned', 'Long', 'gxsId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:40:08');
INSERT INTO `gen_table_column` VALUES ('211', '18', 'gxs_name', '供销社名称', 'varchar(255)', 'String', 'gxsName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:40:08');
INSERT INTO `gen_table_column` VALUES ('212', '18', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:40:08');
INSERT INTO `gen_table_column` VALUES ('213', '18', 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '1', '1', '1', null, '1', 'LIKE', 'input', '', '4', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:40:08');
INSERT INTO `gen_table_column` VALUES ('214', '18', 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', '1', '1', '1', null, null, 'EQ', 'input', '', '5', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:40:08');
INSERT INTO `gen_table_column` VALUES ('215', '18', 'gxs_state', '供销社状态', 'char(1)', 'String', 'gxsState', '0', '0', null, null, '1', '1', null, 'EQ', 'select', 'sys_examine_status', '6', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:40:08');
INSERT INTO `gen_table_column` VALUES ('216', '18', 'register_time', '注册时间', 'datetime', 'Date', 'registerTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '7', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:40:08');
INSERT INTO `gen_table_column` VALUES ('217', '18', 'last_login', '上次登陆时间', 'datetime', 'Date', 'lastLogin', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '8', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:40:08');
INSERT INTO `gen_table_column` VALUES ('218', '19', 'manager_id', '管理员id', 'bigint(20) unsigned', 'Long', 'managerId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('219', '19', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('220', '19', 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '1', '1', '1', null, null, 'LIKE', 'input', '', '3', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('221', '19', 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', '1', '1', '1', null, null, 'EQ', 'input', '', '4', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('222', '19', 'contact_card_type', '证件类型', 'char(1)', 'String', 'contactCardType', '0', '0', '1', '1', null, null, null, 'EQ', 'select', 'con_card_type', '5', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('223', '19', 'contact_card_id', '证件号', 'varchar(18)', 'String', 'contactCardId', '0', '0', '1', '1', null, null, null, 'EQ', 'input', '', '6', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('224', '19', 'contact_name', '联系人姓名', 'varchar(255)', 'String', 'contactName', '0', '0', '1', '1', '1', '1', null, 'LIKE', 'input', '', '7', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('225', '19', 'contact_phone_number', '联系人电话号码', 'varchar(11)', 'String', 'contactPhoneNumber', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '8', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('226', '19', 'register_time', '注册时间', 'datetime', 'Date', 'registerTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '9', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('227', '19', 'last_login', '上次登录时间', 'datetime', 'Date', 'lastLogin', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '10', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('228', '19', 'manage_state', '角色状态', 'char(1)', 'String', 'manageState', '0', '0', null, null, '1', '1', null, 'EQ', 'select', 'sys_common_status', '11', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:42:36');
INSERT INTO `gen_table_column` VALUES ('229', '20', 'shop_id', '', 'bigint(20) unsigned', 'Long', 'shopId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('230', '20', 'shop_name', '超市名称', 'varchar(255)', 'String', 'shopName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('231', '20', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('232', '20', 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '1', '1', null, null, null, 'LIKE', 'input', '', '4', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('233', '20', 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', '1', '1', '1', null, null, 'EQ', 'input', '', '5', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('234', '20', 'contact_person', '联系人姓名', 'varchar(255)', 'String', 'contactPerson', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('235', '20', 'contact_card_type', '证件类型', 'char(1)', 'String', 'contactCardType', '0', '0', '1', '1', null, null, null, 'EQ', 'select', 'con_card_type', '7', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('236', '20', 'card_id', '证件号', 'varchar(18)', 'String', 'cardId', '0', '0', '1', '1', null, null, null, 'EQ', 'input', '', '8', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('237', '20', 'contact_phone', '联系人电话', 'varchar(11)', 'String', 'contactPhone', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '9', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('238', '20', 'contact_email', '联系人邮箱', 'varchar(255)', 'String', 'contactEmail', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '10', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('239', '20', 'register_time', '注册时间', 'datetime', 'Date', 'registerTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '11', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('240', '20', 'last_login', '上次登陆时间', 'datetime', 'Date', 'lastLogin', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '12', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('241', '20', 'shop_state', '角色状态', 'char(1)', 'String', 'shopState', '0', '0', null, null, '1', '1', null, 'EQ', 'select', 'sys_common_status', '13', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:48');
INSERT INTO `gen_table_column` VALUES ('242', '21', 'supply_id', '', 'bigint(20) unsigned', 'Long', 'supplyId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('243', '21', 'nickname', '昵称', 'varchar(255)', 'String', 'nickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-08-18 13:01:14', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('244', '21', 'company_name', '公司名称', 'varchar(255)', 'String', 'companyName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('245', '21', 'username', '用户名', 'varchar(255)', 'String', 'username', '0', '0', '1', '1', null, null, null, 'LIKE', 'input', '', '4', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('246', '21', 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', '1', '1', '1', null, null, 'EQ', 'input', '', '5', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('247', '21', 'company_property', '公司性质', 'char(1)', 'String', 'companyProperty', '0', '0', '1', '1', null, '1', null, 'EQ', 'select', 'company_pro', '6', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('248', '21', 'company_type', '企业类型', 'char(1)', 'String', 'companyType', '0', '0', '1', '1', null, '1', null, 'EQ', 'select', 'company_type', '7', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('249', '21', 'use_code', '是否使用统一社会信用代码证', 'char(1)', 'String', 'useCode', '0', '0', '1', '1', null, '1', null, 'EQ', 'radio', 'sys_yes_no', '8', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('250', '21', 'code_id', '社会信用代码证号/组织机构代码证号', 'varchar(18)', 'String', 'codeId', '0', '0', null, '1', null, '1', null, 'EQ', 'input', '', '9', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('251', '21', 'contact_person', '联系人姓名', 'varchar(255)', 'String', 'contactPerson', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '10', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('252', '21', 'contact_card_type', '联系人证件类型', 'char(1)', 'String', 'contactCardType', '0', '0', '1', '1', null, '1', null, 'EQ', 'select', 'con_card_type', '11', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('253', '21', 'card_id', '联系人证件号', 'varchar(18)', 'String', 'cardId', '0', '0', '1', '1', null, '1', null, 'EQ', 'input', '', '12', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('254', '21', 'contact_phone', '联系人电话号', 'varchar(11)', 'String', 'contactPhone', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '13', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('255', '21', 'contact_email', '联系人邮箱', 'varchar(255)', 'String', 'contactEmail', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '14', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('256', '21', 'register_time', '注册时间', 'datetime', 'Date', 'registerTime', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '15', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('257', '21', 'last_login', '上次登陆时间', 'datetime', 'Date', 'lastLogin', '0', '0', null, null, null, '1', null, 'EQ', 'datetime', '', '16', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');
INSERT INTO `gen_table_column` VALUES ('258', '21', 'supply_state', '供应商状态', 'char(1)', 'String', 'supplyState', '0', '0', null, null, '1', '1', null, 'EQ', 'select', 'sys_common_status', '17', 'admin', '2022-08-18 13:01:15', null, '2022-08-18 19:39:59');

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
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
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
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
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
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
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
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
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
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
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
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-08-18 19:11:50', '', null, '是否开启注册用户功能（true开启，false关闭）');
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
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
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
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-20 21:06:09');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-08-21 12:30:24');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
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
) ENGINE=InnoDB AUTO_INCREMENT=2184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2022-08-18 19:11:49', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2022-08-18 19:11:49', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2022-08-18 19:11:49', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'https://www.dlut.edu.cn/', 'menuBlank', 'C', '1', '1', '', 'fa fa-location-arrow', 'admin', '2022-08-18 19:11:49', 'admin', '2022-08-18 19:50:54', '若依官网地址');
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
INSERT INTO `sys_menu` VALUES ('2074', '审核单据管理', '2073', '1', '/audit/auditDocumentsManage', '', 'C', '0', '1', 'audit:auditDocumentsManage:view', '#', 'admin', '2022-08-15 23:49:10', '', null, '审核单据管理菜单');
INSERT INTO `sys_menu` VALUES ('2075', '审核单据管理查询', '2074', '1', '#', '', 'F', '0', '1', 'audit:auditDocumentsManage:list', '#', 'admin', '2022-08-15 23:49:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2076', '审核单据管理新增', '2074', '2', '#', '', 'F', '0', '1', 'audit:auditDocumentsManage:add', '#', 'admin', '2022-08-15 23:49:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2077', '审核单据管理修改', '2074', '3', '#', '', 'F', '0', '1', 'audit:auditDocumentsManage:edit', '#', 'admin', '2022-08-15 23:49:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2078', '审核单据管理删除', '2074', '4', '#', '', 'F', '0', '1', 'audit:auditDocumentsManage:remove', '#', 'admin', '2022-08-15 23:49:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2079', '审核单据管理导出', '2074', '5', '#', '', 'F', '0', '1', 'audit:auditDocumentsManage:export', '#', 'admin', '2022-08-15 23:49:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2080', '小商超信用评价审核管理', '2073', '1', '/audit/businessCreditEvaluationManage', '', 'C', '0', '1', 'audit:businessCreditEvaluationManage:view', '#', 'admin', '2022-08-15 23:49:36', '', null, '小商超信用评价审核管理菜单');
INSERT INTO `sys_menu` VALUES ('2081', '小商超信用评价审核管理查询', '2080', '1', '#', '', 'F', '0', '1', 'audit:businessCreditEvaluationManage:list', '#', 'admin', '2022-08-15 23:49:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2082', '小商超信用评价审核管理新增', '2080', '2', '#', '', 'F', '0', '1', 'audit:businessCreditEvaluationManage:add', '#', 'admin', '2022-08-15 23:49:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2083', '小商超信用评价审核管理修改', '2080', '3', '#', '', 'F', '0', '1', 'audit:businessCreditEvaluationManage:edit', '#', 'admin', '2022-08-15 23:49:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2084', '小商超信用评价审核管理删除', '2080', '4', '#', '', 'F', '0', '1', 'audit:businessCreditEvaluationManage:remove', '#', 'admin', '2022-08-15 23:49:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2085', '小商超信用评价审核管理导出', '2080', '5', '#', '', 'F', '0', '1', 'audit:businessCreditEvaluationManage:export', '#', 'admin', '2022-08-15 23:49:37', '', null, '');
INSERT INTO `sys_menu` VALUES ('2086', '供应商评价审核管理', '2073', '1', '/audit/supplierCreditEvaluationManage', '', 'C', '0', '1', 'audit:supplierCreditEvaluationManage:view', '#', 'admin', '2022-08-15 23:50:52', '', null, '供应商评价审核管理菜单');
INSERT INTO `sys_menu` VALUES ('2087', '供应商评价审核管理查询', '2086', '1', '#', '', 'F', '0', '1', 'audit:supplierCreditEvaluationManage:list', '#', 'admin', '2022-08-15 23:50:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2088', '供应商评价审核管理新增', '2086', '2', '#', '', 'F', '0', '1', 'audit:supplierCreditEvaluationManage:add', '#', 'admin', '2022-08-15 23:50:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2089', '供应商评价审核管理修改', '2086', '3', '#', '', 'F', '0', '1', 'audit:supplierCreditEvaluationManage:edit', '#', 'admin', '2022-08-15 23:50:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2090', '供应商评价审核管理删除', '2086', '4', '#', '', 'F', '0', '1', 'audit:supplierCreditEvaluationManage:remove', '#', 'admin', '2022-08-15 23:50:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2091', '供应商评价审核管理导出', '2086', '5', '#', '', 'F', '0', '1', 'audit:supplierCreditEvaluationManage:export', '#', 'admin', '2022-08-15 23:50:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2092', '小商超审核管理', '2073', '1', '/audit/businessLicenseManage', '', 'C', '0', '1', 'audit:businessLicenseManage:view', '#', 'admin', '2022-08-15 23:51:02', '', null, '小商超审核管理菜单');
INSERT INTO `sys_menu` VALUES ('2093', '小商超审核管理查询', '2092', '1', '#', '', 'F', '0', '1', 'audit:businessLicenseManage:list', '#', 'admin', '2022-08-15 23:51:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2094', '小商超审核管理新增', '2092', '2', '#', '', 'F', '0', '1', 'audit:businessLicenseManage:add', '#', 'admin', '2022-08-15 23:51:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2095', '小商超审核管理修改', '2092', '3', '#', '', 'F', '0', '1', 'audit:businessLicenseManage:edit', '#', 'admin', '2022-08-15 23:51:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2096', '小商超审核管理删除', '2092', '4', '#', '', 'F', '0', '1', 'audit:businessLicenseManage:remove', '#', 'admin', '2022-08-15 23:51:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2097', '小商超审核管理导出', '2092', '5', '#', '', 'F', '0', '1', 'audit:businessLicenseManage:export', '#', 'admin', '2022-08-15 23:51:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2098', '供应商营业执照审核管理', '2073', '1', '/audit/supplierLicenseManage', '', 'C', '0', '1', 'audit:supplierLicenseManage:view', '#', 'admin', '2022-08-15 23:51:10', '', null, '供应商营业执照审核管理菜单');
INSERT INTO `sys_menu` VALUES ('2099', '供应商营业执照审核管理查询', '2098', '1', '#', '', 'F', '0', '1', 'audit:supplierLicenseManage:list', '#', 'admin', '2022-08-15 23:51:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2100', '供应商营业执照审核管理新增', '2098', '2', '#', '', 'F', '0', '1', 'audit:supplierLicenseManage:add', '#', 'admin', '2022-08-15 23:51:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2101', '供应商营业执照审核管理修改', '2098', '3', '#', '', 'F', '0', '1', 'audit:supplierLicenseManage:edit', '#', 'admin', '2022-08-15 23:51:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2102', '供应商营业执照审核管理删除', '2098', '4', '#', '', 'F', '0', '1', 'audit:supplierLicenseManage:remove', '#', 'admin', '2022-08-15 23:51:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2103', '供应商营业执照审核管理导出', '2098', '5', '#', '', 'F', '0', '1', 'audit:supplierLicenseManage:export', '#', 'admin', '2022-08-15 23:51:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2104', '税务及银行审核管理', '2073', '1', '/audit/taxAndBankManage', '', 'C', '0', '1', 'audit:taxAndBankManage:view', '#', 'admin', '2022-08-15 23:51:18', '', null, '税务及银行审核管理菜单');
INSERT INTO `sys_menu` VALUES ('2105', '税务及银行审核管理查询', '2104', '1', '#', '', 'F', '0', '1', 'audit:taxAndBankManage:list', '#', 'admin', '2022-08-15 23:51:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2106', '税务及银行审核管理新增', '2104', '2', '#', '', 'F', '0', '1', 'audit:taxAndBankManage:add', '#', 'admin', '2022-08-15 23:51:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2107', '税务及银行审核管理修改', '2104', '3', '#', '', 'F', '0', '1', 'audit:taxAndBankManage:edit', '#', 'admin', '2022-08-15 23:51:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2108', '税务及银行审核管理删除', '2104', '4', '#', '', 'F', '0', '1', 'audit:taxAndBankManage:remove', '#', 'admin', '2022-08-15 23:51:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2109', '税务及银行审核管理导出', '2104', '5', '#', '', 'F', '0', '1', 'audit:taxAndBankManage:export', '#', 'admin', '2022-08-15 23:51:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2111', '四种用户', '0', '6', '#', 'menuItem', 'M', '0', '1', '', '#', 'admin', '2022-08-18 19:35:34', 'admin', '2022-08-18 19:37:49', '');
INSERT INTO `sys_menu` VALUES ('2160', '供销社角色', '2111', '1', '/user/cooperative', '', 'C', '0', '1', 'user:cooperative:view', '#', 'admin', '2022-08-18 19:43:43', '', null, '供销社角色菜单');
INSERT INTO `sys_menu` VALUES ('2161', '供销社角色查询', '2160', '1', '#', '', 'F', '0', '1', 'user:cooperative:list', '#', 'admin', '2022-08-18 19:43:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2162', '供销社角色新增', '2160', '2', '#', '', 'F', '0', '1', 'user:cooperative:add', '#', 'admin', '2022-08-18 19:43:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2163', '供销社角色修改', '2160', '3', '#', '', 'F', '0', '1', 'user:cooperative:edit', '#', 'admin', '2022-08-18 19:43:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2164', '供销社角色删除', '2160', '4', '#', '', 'F', '0', '1', 'user:cooperative:remove', '#', 'admin', '2022-08-18 19:43:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2165', '供销社角色导出', '2160', '5', '#', '', 'F', '0', '1', 'user:cooperative:export', '#', 'admin', '2022-08-18 19:43:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2166', '管理员角色', '2111', '1', '/user/manager', '', 'C', '0', '1', 'user:manager:view', '#', 'admin', '2022-08-18 19:43:49', '', null, '管理员角色菜单');
INSERT INTO `sys_menu` VALUES ('2167', '管理员角色查询', '2166', '1', '#', '', 'F', '0', '1', 'user:manager:list', '#', 'admin', '2022-08-18 19:43:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2168', '管理员角色新增', '2166', '2', '#', '', 'F', '0', '1', 'user:manager:add', '#', 'admin', '2022-08-18 19:43:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2169', '管理员角色修改', '2166', '3', '#', '', 'F', '0', '1', 'user:manager:edit', '#', 'admin', '2022-08-18 19:43:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2170', '管理员角色删除', '2166', '4', '#', '', 'F', '0', '1', 'user:manager:remove', '#', 'admin', '2022-08-18 19:43:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2171', '管理员角色导出', '2166', '5', '#', '', 'F', '0', '1', 'user:manager:export', '#', 'admin', '2022-08-18 19:43:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2172', '超市角色', '2111', '1', '/user/supermarket', '', 'C', '0', '1', 'user:supermarket:view', '#', 'admin', '2022-08-18 19:43:58', '', null, '超市角色菜单');
INSERT INTO `sys_menu` VALUES ('2173', '超市角色查询', '2172', '1', '#', '', 'F', '0', '1', 'user:supermarket:list', '#', 'admin', '2022-08-18 19:43:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2174', '超市角色新增', '2172', '2', '#', '', 'F', '0', '1', 'user:supermarket:add', '#', 'admin', '2022-08-18 19:43:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2175', '超市角色修改', '2172', '3', '#', '', 'F', '0', '1', 'user:supermarket:edit', '#', 'admin', '2022-08-18 19:43:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2176', '超市角色删除', '2172', '4', '#', '', 'F', '0', '1', 'user:supermarket:remove', '#', 'admin', '2022-08-18 19:43:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2177', '超市角色导出', '2172', '5', '#', '', 'F', '0', '1', 'user:supermarket:export', '#', 'admin', '2022-08-18 19:43:58', '', null, '');
INSERT INTO `sys_menu` VALUES ('2178', '供应商角色', '2111', '1', '/user/supplier', '', 'C', '0', '1', 'user:supplier:view', '#', 'admin', '2022-08-18 19:44:04', '', null, '供应商角色菜单');
INSERT INTO `sys_menu` VALUES ('2179', '供应商角色查询', '2178', '1', '#', '', 'F', '0', '1', 'user:supplier:list', '#', 'admin', '2022-08-18 19:44:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2180', '供应商角色新增', '2178', '2', '#', '', 'F', '0', '1', 'user:supplier:add', '#', 'admin', '2022-08-18 19:44:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2181', '供应商角色修改', '2178', '3', '#', '', 'F', '0', '1', 'user:supplier:edit', '#', 'admin', '2022-08-18 19:44:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2182', '供应商角色删除', '2178', '4', '#', '', 'F', '0', '1', 'user:supplier:remove', '#', 'admin', '2022-08-18 19:44:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2183', '供应商角色导出', '2178', '5', '#', '', 'F', '0', '1', 'user:supplier:export', '#', 'admin', '2022-08-18 19:44:04', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
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
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';

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

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
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
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
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
INSERT INTO `sys_role` VALUES ('102', '超市', 'Supermarket', '4', '1', '0', '0', 'admin', '2022-08-17 14:58:07', '', null, '小超市');
INSERT INTO `sys_role` VALUES ('103', '供应商', 'Supplier', '5', '1', '0', '0', 'admin', '2022-08-17 14:58:53', '', null, '供应商角色');

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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2022-08-21 12:30:24', '2022-08-18 19:11:49', 'admin', '2022-08-18 19:11:49', '', '2022-08-21 12:30:23', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '2', '127.0.0.1', '2022-08-18 19:11:49', '2022-08-18 19:11:49', 'admin', '2022-08-18 19:11:49', '', null, '测试员');

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
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('701ba4d6-0145-4df1-801a-83639fee4250', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Firefox 10', 'Windows 10', 'on_line', '2022-08-21 12:30:24', '2022-08-21 12:30:24', '1800000');

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
