-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ry
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area_code`
--

DROP TABLE IF EXISTS `area_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `area_code` (
  `area_id` int(11) NOT NULL COMMENT '地区编码',
  `pid` int(10) unsigned NOT NULL COMMENT '上级编码',
  `area_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区名称',
  `level` int(10) unsigned NOT NULL COMMENT '地区等级',
  `visible` int(10) unsigned NOT NULL COMMENT '是否可见',
  `displayorder` int(10) unsigned NOT NULL COMMENT '是否支持配送',
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='省市级代码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_code`
--

LOCK TABLES `area_code` WRITE;
/*!40000 ALTER TABLE `area_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `area_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_business_credit_evaluation_info`
--

DROP TABLE IF EXISTS `audit_business_credit_evaluation_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `audit_business_credit_evaluation_info` (
  `business_credit_evaluation_audit_id` varchar(32) NOT NULL COMMENT '审核id（uuid）',
  `checklist_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '审核单id',
  `fr_name` varchar(30) DEFAULT '' COMMENT '法人姓名',
  `fr_criminal_record` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '法人犯罪记录信息jpg照片',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`business_credit_evaluation_audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小商超信用评价审核信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_business_credit_evaluation_info`
--

LOCK TABLES `audit_business_credit_evaluation_info` WRITE;
/*!40000 ALTER TABLE `audit_business_credit_evaluation_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_business_credit_evaluation_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_business_license_info`
--

DROP TABLE IF EXISTS `audit_business_license_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_business_license_info`
--

LOCK TABLES `audit_business_license_info` WRITE;
/*!40000 ALTER TABLE `audit_business_license_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_business_license_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_documents`
--

DROP TABLE IF EXISTS `audit_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_documents`
--

LOCK TABLES `audit_documents` WRITE;
/*!40000 ALTER TABLE `audit_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_supplier_credit_evaluation_info`
--

DROP TABLE IF EXISTS `audit_supplier_credit_evaluation_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_supplier_credit_evaluation_info`
--

LOCK TABLES `audit_supplier_credit_evaluation_info` WRITE;
/*!40000 ALTER TABLE `audit_supplier_credit_evaluation_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_supplier_credit_evaluation_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_supplier_license_info`
--

DROP TABLE IF EXISTS `audit_supplier_license_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_supplier_license_info`
--

LOCK TABLES `audit_supplier_license_info` WRITE;
/*!40000 ALTER TABLE `audit_supplier_license_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_supplier_license_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_tax_and_bank_info`
--

DROP TABLE IF EXISTS `audit_tax_and_bank_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_tax_and_bank_info`
--

LOCK TABLES `audit_tax_and_bank_info` WRITE;
/*!40000 ALTER TABLE `audit_tax_and_bank_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_tax_and_bank_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid_winning_candidates_announcement`
--

DROP TABLE IF EXISTS `bid_winning_candidates_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bid_winning_candidates_announcement` (
  `bid_winning_candidates_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中标候选人公示公告',
  `bid_winning_candidates_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  `publicity_time` datetime NOT NULL COMMENT '公示时间',
  `deadline_time` datetime NOT NULL COMMENT '公示截止时间',
  PRIMARY KEY (`bid_winning_candidates_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='中标候选人公示公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid_winning_candidates_announcement`
--

LOCK TABLES `bid_winning_candidates_announcement` WRITE;
/*!40000 ALTER TABLE `bid_winning_candidates_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `bid_winning_candidates_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid_winning_results_announcement`
--

DROP TABLE IF EXISTS `bid_winning_results_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bid_winning_results_announcement` (
  `bid_winning_results_announcement_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中标结果公告ID',
  `bid_winning_results_announcement_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件存储位置',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  PRIMARY KEY (`bid_winning_results_announcement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='中标结果公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid_winning_results_announcement`
--

LOCK TABLES `bid_winning_results_announcement` WRITE;
/*!40000 ALTER TABLE `bid_winning_results_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `bid_winning_results_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centralized_purchase_record`
--

DROP TABLE IF EXISTS `centralized_purchase_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `centralized_purchase_record` (
  `centralized_purchase_record_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '集中采购记录ID',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  `supply_id` bigint(20) unsigned NOT NULL COMMENT '供应商ID',
  `tender_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '投标文件存储信息',
  `centralized_purchase_record_time` datetime NOT NULL COMMENT '时间',
  `is_bid` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '是否中标“0”否 “1”是',
  PRIMARY KEY (`centralized_purchase_record_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='集中采购记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centralized_purchase_record`
--

LOCK TABLES `centralized_purchase_record` WRITE;
/*!40000 ALTER TABLE `centralized_purchase_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `centralized_purchase_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_announcement`
--

DROP TABLE IF EXISTS `change_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `change_announcement` (
  `change_announcement_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变更公告ID',
  `change_announcement_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变更公告文件存储位置',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  `change_time` datetime NOT NULL COMMENT '变更时间',
  PRIMARY KEY (`change_announcement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='变更公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_announcement`
--

LOCK TABLES `change_announcement` WRITE;
/*!40000 ALTER TABLE `change_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `change_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cooperative`
--

DROP TABLE IF EXISTS `cooperative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cooperative`
--

LOCK TABLES `cooperative` WRITE;
/*!40000 ALTER TABLE `cooperative` DISABLE KEYS */;
INSERT INTO `cooperative` VALUES ('2166082307393112930','供销社1','供销社1','供销社1','123456','0','2022-08-18 19:44:34',NULL),('2166082309210848213','供销社2','供销社2','供销社2','123456','0','2022-08-18 19:44:52',NULL);
/*!40000 ALTER TABLE `cooperative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (1,'audit_documents','审核单据表','',NULL,'AuditDocuments','crud','com.cps.audit','audit','auditDocumentsManage','审核单据管理','fmy','0','/','{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}','admin','2022-08-14 00:23:42','','2022-08-15 23:59:55',''),(2,'audit_business_credit_evaluation_info','小商超信用评价审核信息表','',NULL,'BusinessCreditEvaluationInfo','crud','com.cps.audit','audit','businessCreditEvaluationManage','小商超信用评价审核管理','fmy','0','/','{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}','admin','2022-08-14 10:07:00','','2022-08-15 23:58:43',''),(3,'audit_business_license_info','小商超审核信息表','',NULL,'BusinessLicenseInfo','crud','com.cps.audit','audit','businessLicenseManage','小商超审核管理','fmy','0','/','{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}','admin','2022-08-14 10:07:00','','2022-08-15 23:58:56',''),(4,'audit_supplier_credit_evaluation_info','供应商评价审核信息表','',NULL,'SupplierCreditEvaluationInfo','crud','com.cps.audit','audit','supplierCreditEvaluationManage','供应商评价审核管理','fmy','0','/','{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}','admin','2022-08-14 10:07:00','','2022-08-15 23:59:18',''),(5,'audit_supplier_license_info','供应商营业执照审核信息表','',NULL,'SupplierLicenseInfo','crud','com.cps.audit','audit','supplierLicenseManage','供应商营业执照审核管理','fmy','0','/','{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}','admin','2022-08-14 10:07:00','','2022-08-15 23:59:36',''),(6,'audit_tax_and_bank_info','税务及银行审核信息表','',NULL,'TaxAndBankInfo','crud','com.cps.audit','audit','taxAndBankManage','税务及银行审核管理','fmy','0','/','{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"审核管理\",\"treeCode\":\"\"}','admin','2022-08-14 10:07:00','','2022-08-15 23:59:47',''),(18,'cooperative','供销社角色','','','Cooperative','crud','com.cps.user','user','cooperative','供销社角色','cps','0','/','{\"parentMenuId\":\"2111\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"四种用户\",\"treeCode\":\"\"}','admin','2022-08-18 13:01:14','','2022-08-18 19:40:08',''),(19,'manager','管理员角色','','','Manager','crud','com.cps.user','user','manager','管理员角色','cps','0','/','{\"parentMenuId\":\"2111\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"四种用户\",\"treeCode\":\"\"}','admin','2022-08-18 13:01:14','','2022-08-18 19:42:36',''),(20,'supermarket','超市角色','','','Supermarket','crud','com.cps.user','user','supermarket','超市角色','cps','0','/','{\"parentMenuId\":\"2111\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"四种用户\",\"treeCode\":\"\"}','admin','2022-08-18 13:01:14','','2022-08-18 19:39:48',''),(21,'supplier','供应商角色','','','Supplier','crud','com.cps.user','user','supplier','供应商角色','cps','0','/','{\"parentMenuId\":\"2111\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"四种用户\",\"treeCode\":\"\"}','admin','2022-08-18 13:01:14','','2022-08-18 19:39:59','');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (1,'1','user_id','用户id','bigint(20) unsigned','Long','userId','0','0','1','1','1','1','1','EQ','input','',1,'admin','2022-08-14 00:23:42',NULL,'2022-08-15 23:59:55'),(2,'1','checklist_id','审核单id','varchar(19)','String','checklistId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2022-08-14 00:23:42',NULL,'2022-08-15 23:59:55'),(3,'1','audit_type','审核类型（1供应商 2小商超）','char(1)','String','auditType','0','0',NULL,'1','1','1','1','EQ','select','',3,'admin','2022-08-14 00:23:42',NULL,'2022-08-15 23:59:55'),(4,'1','audit_status','审核状态（1未审核 2审核通过）','char(1)','String','auditStatus','0','0',NULL,'1','1','1','1','EQ','select','',4,'admin','2022-08-14 00:23:42',NULL,'2022-08-15 23:59:55'),(5,'1','admin_id','管理员id','bigint(20) unsigned','Long','adminId','0','0','1','1','1','1','1','EQ','input','',5,'admin','2022-08-14 00:23:42',NULL,'2022-08-15 23:59:55'),(6,'1','audit_result','审核结果（备注）','varchar(500)','String','auditResult','0','0',NULL,'1','1','1','1','EQ','textarea','',6,'admin','2022-08-14 00:23:42',NULL,'2022-08-15 23:59:55'),(7,'1','create_datetime','创建时间','datetime','Date','createDatetime','0','0',NULL,'1','1','1','1','EQ','datetime','',7,'admin','2022-08-14 00:23:42',NULL,'2022-08-15 23:59:55'),(8,'1','update_datetime','更新时间','datetime','Date','updateDatetime','0','0',NULL,'1','1','1','1','EQ','datetime','',8,'admin','2022-08-14 00:23:42',NULL,'2022-08-15 23:59:55'),(9,'2','business_credit_evaluation_audit_id','审核id（uuid）','varchar(32)','String','businessCreditEvaluationAuditId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:43'),(10,'2','checklist_id','审核单id','varchar(19)','String','checklistId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:43'),(11,'2','fr_name','法人姓名','varchar(30)','String','frName','0','0',NULL,'1','1','1','1','LIKE','input','',3,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:43'),(12,'2','fr_criminal_record','法人犯罪记录信息jpg照片','varchar(100)','String','frCriminalRecord','0','0',NULL,'1','1','1','1','EQ','upload','',4,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:43'),(13,'2','create_datetime','创建时间','datetime','Date','createDatetime','0','0',NULL,'1','1','1','1','EQ','datetime','',5,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:43'),(14,'3','business_audit_document_id','审核单id','varchar(19)','String','businessAuditDocumentId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(15,'3','business_license','个体工商户营业执照jpg照片','varchar(100)','String','businessLicense','0','0',NULL,'1','1','1','1','EQ','upload','',2,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(16,'3','business_license_number','个体工商户营业执照号码','varchar(18)','String','businessLicenseNumber','0','0','1','1','1','1','1','EQ','input','',3,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(17,'3','manager_name','经营者','varchar(30)','String','managerName','0','0',NULL,'1','1','1','1','LIKE','input','',4,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(18,'3','business_name','小商超名称','varchar(50)','String','businessName','0','0',NULL,'1','1','1','1','LIKE','input','',5,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(19,'3','business_place','经营场所位置','varchar(200)','String','businessPlace','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(20,'3','business_form','组成形式（1个人经营 2家庭经营）','char(1)','String','businessForm','0','0',NULL,'1','1','1','1','EQ','select','',7,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(21,'3','register_date','注册日期','datetime','Date','registerDate','0','0',NULL,'1','1','1','1','EQ','datetime','',8,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(22,'3','business_scope','经营范围','varchar(500)','String','businessScope','0','0',NULL,'1','1','1','1','EQ','textarea','',9,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(23,'3','business_certificate','经营许可证.jpg','varchar(100)','String','businessCertificate','0','0',NULL,'1','1','1','1','EQ','upload','',10,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(24,'3','username','用户名','varchar(30)','String','username','0','0',NULL,'1','1','1','1','LIKE','input','',11,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(25,'3','password','密码','varchar(50)','String','password','0','0',NULL,'1','1','1','1','EQ','input','',12,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(26,'3','contact_person','联系人姓名','varchar(30)','String','contactPerson','0','0',NULL,'1','1','1','1','EQ','input','',13,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(27,'3','contact_card_type','联系人证件类型: 1身份证 2港澳居民来往内地通行证 3台湾居民来往大陆通行证 4普通护照 5外国人永久居留身份证','char(1)','String','contactCardType','0','0',NULL,'1','1','1','1','EQ','select','',14,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(28,'3','id_number','联系人证件号','varchar(18)','String','idNumber','0','0','1','1','1','1','1','EQ','input','',15,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(29,'3','front_photo','联系人证件正面jpg照片','varchar(100)','String','frontPhoto','0','0',NULL,'1','1','1','1','EQ','upload','',16,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(30,'3','back_photo','联系人证件反面jpg照片','varchar(100)','String','backPhoto','0','0',NULL,'1','1','1','1','EQ','upload','',17,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(31,'3','contact_phone','联系人手机号','varchar(11)','String','contactPhone','0','0',NULL,'1','1','1','1','EQ','input','',18,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(32,'3','contact_email','联系人邮箱','varchar(50)','String','contactEmail','0','0',NULL,'1','1','1','1','EQ','input','',19,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(33,'3','create_datetime','创建时间','datetime','Date','createDatetime','0','0',NULL,'1','1','1','1','EQ','datetime','',20,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:58:56'),(34,'4','supplier_credit_evaluation_audit_id','审核id（uuid）','varchar(32)','String','supplierCreditEvaluationAuditId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:18'),(35,'4','checklist_id','审核单id','varchar(19)','String','checklistId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:18'),(36,'4','corporate_name','公司名称','varchar(50)','String','corporateName','0','0',NULL,'1','1','1','1','LIKE','input','',3,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:18'),(37,'4','corporate_credit_info','公司征信信息jpg照片','varchar(100)','String','corporateCreditInfo','0','0',NULL,'1','1','1','1','EQ','upload','',4,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:18'),(38,'4','fr_name','法人姓名','varchar(30)','String','frName','0','0',NULL,'1','1','1','1','LIKE','input','',5,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:18'),(39,'4','fr_criminal_record','法人犯罪记录信息jpg照片','varchar(100)','String','frCriminalRecord','0','0',NULL,'1','1','1','1','EQ','upload','',6,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:18'),(40,'4','create_datetime','创建时间','datetime','Date','createDatetime','0','0',NULL,'1','1','1','1','EQ','datetime','',7,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:18'),(41,'5','checklist_id','审核单id','varchar(19)','String','checklistId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(42,'5','corporate_name','公司名称','varchar(100)','String','corporateName','0','0',NULL,'1','1','1','1','LIKE','input','',2,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(43,'5','registration_number','全国信息代码号','varchar(18)','String','registrationNumber','0','0','1','1','1','1','1','EQ','input','',3,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(44,'5','fr_name','法人姓名','varchar(30)','String','frName','0','0',NULL,'1','1','1','1','LIKE','input','',4,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(45,'5','id_number','法人身份证号码','varchar(18)','String','idNumber','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(46,'5','front_photo','法人身份证正面jpg照片','varchar(100)','String','frontPhoto','0','0',NULL,'1','1','1','1','EQ','upload','',6,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(47,'5','back_photo','法人身份证反面jpg照片','varchar(100)','String','backPhoto','0','0',NULL,'1','1','1','1','EQ','upload','',7,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(48,'5','business_license_location','营业执照所在地','varchar(50)','String','businessLicenseLocation','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(49,'5','business_license_address','营业执照详细地址','varchar(200)','String','businessLicenseAddress','0','0',NULL,'1','1','1','1','EQ','input','',9,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(50,'5','incorporation_date','成立日期','datetime','Date','incorporationDate','0','0',NULL,'1','1','1','1','EQ','datetime','',10,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(51,'5','registered_capital','注册资本','decimal(18,2)','BigDecimal','registeredCapital','0','0',NULL,'1','1','1','1','EQ','input','',11,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(52,'5','business_scope','营业范围','varchar(500)','String','businessScope','0','0',NULL,'1','1','1','1','EQ','textarea','',12,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(53,'5','business_license','营业执照jpg照片','varchar(100)','String','businessLicense','0','0',NULL,'1','1','1','1','EQ','upload','',13,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(54,'5','office_phone','公司电话','varchar(11)','String','officePhone','0','0',NULL,'1','1','1','1','EQ','input','',14,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(55,'5','emergency_contact','公司紧急联系人','varchar(30)','String','emergencyContact','0','0',NULL,'1','1','1','1','EQ','input','',15,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(56,'5','emergency_contact_phone','公司紧急联系人手机','varchar(11)','String','emergencyContactPhone','0','0',NULL,'1','1','1','1','EQ','input','',16,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(57,'5','create_datetime','创建时间','datetime','Date','createDatetime','0','0',NULL,'1','1','1','1','EQ','datetime','',17,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:36'),(58,'6','tax_and_bank_audit_id','审核id（uuid）','varchar(32)','String','taxAndBankAuditId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(59,'6','checklist_id','审核单id','varchar(19)','String','checklistId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(60,'6','taxpayer_id_number','纳税人识别号','varchar(20)','String','taxpayerIdNumber','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(61,'6','taxpayer_type','纳税人类型（1自然人 2个体工商户 3法人）','char(1)','String','taxpayerType','0','0',NULL,'1','1','1','1','EQ','select','',4,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(62,'6','tax_type_code','纳税类型税码','varchar(20)','String','taxTypeCode','0','0',NULL,'1','1','1','1','EQ','input','',5,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(63,'6','tax_registration_certificate','税务登记证电子版.jpg','varchar(100)','String','taxRegistrationCertificate','0','0',NULL,'1','1','1','1','EQ','upload','',6,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(64,'6','general_taxpayer_qualification_certificate','一般纳税人资格证电子版.jpg','varchar(100)','String','generalTaxpayerQualificationCertificate','0','0',NULL,'1','1','1','1','EQ','upload','',7,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(65,'6','bank_account_name','银行开户名','varchar(30)','String','bankAccountName','0','0',NULL,'1','1','1','1','LIKE','input','',8,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(66,'6','corporate_bank_account_number','公司银行账号','varchar(20)','String','corporateBankAccountNumber','0','0',NULL,'1','1','1','1','EQ','input','',9,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(67,'6','bank_branch_name','开户银行支行名称','varchar(100)','String','bankBranchName','0','0',NULL,'1','1','1','1','LIKE','input','',10,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(68,'6','bank_branch_number','开户银行支行联行号(3位银行代码+4位城市代码+4位银行编号+1位校验位)','varchar(12)','String','bankBranchNumber','0','0',NULL,'1','1','1','1','EQ','input','',11,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(69,'6','bank_branch_location','开户银行支行所在地','varchar(100)','String','bankBranchLocation','0','0',NULL,'1','1','1','1','EQ','input','',12,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(70,'6','bank_account_open_license','银行开户许可证电子版jpg','varchar(100)','String','bankAccountOpenLicense','0','0',NULL,'1','1','1','1','EQ','upload','',13,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(71,'6','create_datetime','创建时间','datetime','Date','createDatetime','0','0',NULL,'1','1','1','1','EQ','datetime','',14,'admin','2022-08-14 10:07:00',NULL,'2022-08-15 23:59:47'),(210,'18','gxs_id','供销社id','bigint(20) unsigned','Long','gxsId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:40:08'),(211,'18','gxs_name','供销社名称','varchar(255)','String','gxsName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:40:08'),(212,'18','nickname','昵称','varchar(255)','String','nickname','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:40:08'),(213,'18','username','用户名','varchar(255)','String','username','0','0','1','1','1',NULL,'1','LIKE','input','',4,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:40:08'),(214,'18','password','密码','varchar(255)','String','password','0','0','1','1','1',NULL,NULL,'EQ','input','',5,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:40:08'),(215,'18','gxs_state','供销社状态','char(1)','String','gxsState','0','0',NULL,NULL,'1','1',NULL,'EQ','select','sys_examine_status',6,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:40:08'),(216,'18','register_time','注册时间','datetime','Date','registerTime','0','0',NULL,NULL,NULL,'1',NULL,'EQ','datetime','',7,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:40:08'),(217,'18','last_login','上次登陆时间','datetime','Date','lastLogin','0','0',NULL,NULL,NULL,'1',NULL,'EQ','datetime','',8,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:40:08'),(218,'19','manager_id','管理员id','bigint(20) unsigned','Long','managerId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(219,'19','nickname','昵称','varchar(255)','String','nickname','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(220,'19','username','用户名','varchar(255)','String','username','0','0','1','1','1',NULL,NULL,'LIKE','input','',3,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(221,'19','password','密码','varchar(255)','String','password','0','0','1','1','1',NULL,NULL,'EQ','input','',4,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(222,'19','contact_card_type','证件类型','char(1)','String','contactCardType','0','0','1','1',NULL,NULL,NULL,'EQ','select','con_card_type',5,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(223,'19','contact_card_id','证件号','varchar(18)','String','contactCardId','0','0','1','1',NULL,NULL,NULL,'EQ','input','',6,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(224,'19','contact_name','联系人姓名','varchar(255)','String','contactName','0','0','1','1','1','1',NULL,'LIKE','input','',7,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(225,'19','contact_phone_number','联系人电话号码','varchar(11)','String','contactPhoneNumber','0','0','1','1','1','1',NULL,'EQ','input','',8,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(226,'19','register_time','注册时间','datetime','Date','registerTime','0','0',NULL,NULL,NULL,'1',NULL,'EQ','datetime','',9,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(227,'19','last_login','上次登录时间','datetime','Date','lastLogin','0','0',NULL,NULL,NULL,'1',NULL,'EQ','datetime','',10,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(228,'19','manage_state','角色状态','char(1)','String','manageState','0','0',NULL,NULL,'1','1',NULL,'EQ','select','sys_common_status',11,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:42:36'),(229,'20','shop_id','','bigint(20) unsigned','Long','shopId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(230,'20','shop_name','超市名称','varchar(255)','String','shopName','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(231,'20','nickname','昵称','varchar(255)','String','nickname','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(232,'20','username','用户名','varchar(255)','String','username','0','0','1','1',NULL,NULL,NULL,'LIKE','input','',4,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(233,'20','password','密码','varchar(255)','String','password','0','0','1','1','1',NULL,NULL,'EQ','input','',5,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(234,'20','contact_person','联系人姓名','varchar(255)','String','contactPerson','0','0','1','1','1','1',NULL,'EQ','input','',6,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(235,'20','contact_card_type','证件类型','char(1)','String','contactCardType','0','0','1','1',NULL,NULL,NULL,'EQ','select','con_card_type',7,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(236,'20','card_id','证件号','varchar(18)','String','cardId','0','0','1','1',NULL,NULL,NULL,'EQ','input','',8,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(237,'20','contact_phone','联系人电话','varchar(11)','String','contactPhone','0','0','1','1','1','1',NULL,'EQ','input','',9,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(238,'20','contact_email','联系人邮箱','varchar(255)','String','contactEmail','0','0','1','1','1','1',NULL,'EQ','input','',10,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(239,'20','register_time','注册时间','datetime','Date','registerTime','0','0',NULL,NULL,NULL,'1',NULL,'EQ','datetime','',11,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(240,'20','last_login','上次登陆时间','datetime','Date','lastLogin','0','0',NULL,NULL,NULL,'1',NULL,'EQ','datetime','',12,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(241,'20','shop_state','角色状态','char(1)','String','shopState','0','0',NULL,NULL,'1','1',NULL,'EQ','select','sys_common_status',13,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:48'),(242,'21','supply_id','','bigint(20) unsigned','Long','supplyId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:59'),(243,'21','nickname','昵称','varchar(255)','String','nickname','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2022-08-18 13:01:14',NULL,'2022-08-18 19:39:59'),(244,'21','company_name','公司名称','varchar(255)','String','companyName','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(245,'21','username','用户名','varchar(255)','String','username','0','0','1','1',NULL,NULL,NULL,'LIKE','input','',4,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(246,'21','password','密码','varchar(255)','String','password','0','0','1','1','1',NULL,NULL,'EQ','input','',5,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(247,'21','company_property','公司性质','char(1)','String','companyProperty','0','0','1','1',NULL,'1',NULL,'EQ','select','company_pro',6,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(248,'21','company_type','企业类型','char(1)','String','companyType','0','0','1','1',NULL,'1',NULL,'EQ','select','company_type',7,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(249,'21','use_code','是否使用统一社会信用代码证','char(1)','String','useCode','0','0','1','1',NULL,'1',NULL,'EQ','radio','sys_yes_no',8,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(250,'21','code_id','社会信用代码证号/组织机构代码证号','varchar(18)','String','codeId','0','0',NULL,'1',NULL,'1',NULL,'EQ','input','',9,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(251,'21','contact_person','联系人姓名','varchar(255)','String','contactPerson','0','0','1','1','1','1',NULL,'EQ','input','',10,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(252,'21','contact_card_type','联系人证件类型','char(1)','String','contactCardType','0','0','1','1',NULL,'1',NULL,'EQ','select','con_card_type',11,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(253,'21','card_id','联系人证件号','varchar(18)','String','cardId','0','0','1','1',NULL,'1',NULL,'EQ','input','',12,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(254,'21','contact_phone','联系人电话号','varchar(11)','String','contactPhone','0','0','1','1','1','1',NULL,'EQ','input','',13,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(255,'21','contact_email','联系人邮箱','varchar(255)','String','contactEmail','0','0','1','1','1','1',NULL,'EQ','input','',14,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(256,'21','register_time','注册时间','datetime','Date','registerTime','0','0',NULL,NULL,NULL,'1',NULL,'EQ','datetime','',15,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(257,'21','last_login','上次登陆时间','datetime','Date','lastLogin','0','0',NULL,NULL,NULL,'1',NULL,'EQ','datetime','',16,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59'),(258,'21','supply_state','供应商状态','char(1)','String','supplyState','0','0',NULL,NULL,'1','1',NULL,'EQ','select','sys_common_status',17,'admin','2022-08-18 13:01:15',NULL,'2022-08-18 19:39:59');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_category`
--

DROP TABLE IF EXISTS `goods_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods_category` (
  `category_id` varchar(10) NOT NULL COMMENT '类别id 10位',
  `hierarchy` char(1) NOT NULL COMMENT '层级',
  `superior_id` varchar(10) NOT NULL COMMENT '父类',
  `category_name` varchar(64) DEFAULT '' COMMENT '名称',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_category`
--

LOCK TABLES `goods_category` WRITE;
/*!40000 ALTER TABLE `goods_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_traffic_record`
--

DROP TABLE IF EXISTS `goods_traffic_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_traffic_record`
--

LOCK TABLES `goods_traffic_record` WRITE;
/*!40000 ALTER TABLE `goods_traffic_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_traffic_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_quantity`
--

DROP TABLE IF EXISTS `inventory_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_quantity`
--

LOCK TABLES `inventory_quantity` WRITE;
/*!40000 ALTER TABLE `inventory_quantity` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_records`
--

DROP TABLE IF EXISTS `inventory_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_records`
--

LOCK TABLES `inventory_records` WRITE;
/*!40000 ALTER TABLE `inventory_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('4166082312207056866','管理员1','管理员1','123456','1','123456','管理员1','123456','2022-08-18 19:45:22',NULL,'0');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_quality`
--

DROP TABLE IF EXISTS `price_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `price_quality` (
  `pq_id` varchar(32) NOT NULL COMMENT '比质比价ID',
  `tender_id` varchar(22) NOT NULL COMMENT '标书ID',
  `product_number` int(11) DEFAULT NULL COMMENT '产品编号',
  `supplier_id` bigint(20) NOT NULL COMMENT '供应商',
  `scores` varchar(5) DEFAULT '' COMMENT '分数',
  PRIMARY KEY (`pq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='比质比价得分表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_quality`
--

LOCK TABLES `price_quality` WRITE;
/*!40000 ALTER TABLE `price_quality` DISABLE KEYS */;
/*!40000 ALTER TABLE `price_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification_review`
--

DROP TABLE IF EXISTS `qualification_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification_review`
--

LOCK TABLES `qualification_review` WRITE;
/*!40000 ALTER TABLE `qualification_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `qualification_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_information`
--

DROP TABLE IF EXISTS `shipping_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipping_information` (
  `shipping_id` varchar(32) NOT NULL COMMENT '货运信息id',
  `record_id` varchar(32) NOT NULL COMMENT '记录id',
  `shipping_num` varchar(32) NOT NULL COMMENT '单号',
  `principal` varchar(32) NOT NULL COMMENT '负责人名称',
  `phone` varchar(11) NOT NULL COMMENT '联系电话',
  PRIMARY KEY (`shipping_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='货运信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_information`
--

LOCK TABLES `shipping_information` WRITE;
/*!40000 ALTER TABLE `shipping_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouse`
--

DROP TABLE IF EXISTS `storehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `storehouse` (
  `storehouse_id` varchar(32) NOT NULL COMMENT '仓库ID',
  `principal` varchar(32) NOT NULL COMMENT '负责人名称',
  `phone` varchar(11) NOT NULL COMMENT '联系电话',
  `shelves_num` int(11) NOT NULL COMMENT '货架量',
  `acreage` decimal(12,4) NOT NULL COMMENT '面积',
  `position` varchar(500) NOT NULL COMMENT '位置',
  PRIMARY KEY (`storehouse_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='仓库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouse`
--

LOCK TABLES `storehouse` WRITE;
/*!40000 ALTER TABLE `storehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `storehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supermarket`
--

DROP TABLE IF EXISTS `supermarket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supermarket`
--

LOCK TABLES `supermarket` WRITE;
/*!40000 ALTER TABLE `supermarket` DISABLE KEYS */;
INSERT INTO `supermarket` VALUES (3166082316425628027,'超市1','超市1','超市1','123456','超市1','1','123456','123456','123456','2022-08-18 19:46:04',NULL,'0'),(3166082318279833066,'超市2','超市2','超市2','123456','超市2','1','123456','123456','123456','2022-08-18 19:46:23',NULL,'0');
/*!40000 ALTER TABLE `supermarket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('1166082321923960199','供应商1','供应商1','供应商1','123456','0','0','Y','123456','供应商1','1','123456','123456','123456','2022-08-18 19:46:59',NULL,'0');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2022-08-18 19:11:50','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2022-08-18 19:11:50','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2022-08-18 19:11:50','',NULL,'深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue'),(4,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2022-08-18 19:11:50','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(5,'用户管理-密码字符范围','sys.account.chrtype','0','Y','admin','2022-08-18 19:11:50','',NULL,'默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）'),(6,'用户管理-初始密码修改策略','sys.account.initPasswordModify','0','Y','admin','2022-08-18 19:11:50','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),(7,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2022-08-18 19:11:50','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框'),(8,'主框架页-菜单导航显示风格','sys.index.menuStyle','default','Y','admin','2022-08-18 19:11:50','',NULL,'菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）'),(9,'主框架页-是否开启页脚','sys.index.footer','true','Y','admin','2022-08-18 19:11:50','',NULL,'是否开启底部页脚显示（true显示，false隐藏）'),(10,'主框架页-是否开启页签','sys.index.tagsView','true','Y','admin','2022-08-18 19:11:50','',NULL,'是否开启菜单多页签显示（true显示，false隐藏）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2022-08-18 19:11:48','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2022-08-18 19:11:48','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2022-08-18 19:11:48','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2022-08-18 19:11:48','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2022-08-18 19:11:48','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2022-08-18 19:11:48','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2022-08-18 19:11:48','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2022-08-18 19:11:48','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2022-08-18 19:11:48','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2022-08-18 19:11:48','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2022-08-18 19:11:50','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2022-08-18 19:11:50','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2022-08-18 19:11:50','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2022-08-18 19:11:50','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2022-08-18 19:11:50','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2022-08-18 19:11:50','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2022-08-18 19:11:50','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2022-08-18 19:11:50','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2022-08-18 19:11:50','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2022-08-18 19:11:50','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2022-08-18 19:11:50','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2022-08-18 19:11:50','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2022-08-18 19:11:50','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2022-08-18 19:11:50','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2022-08-18 19:11:50','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2022-08-18 19:11:50','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2022-08-18 19:11:50','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2022-08-18 19:11:50','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2022-08-18 19:11:50','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2022-08-18 19:11:50','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2022-08-18 19:11:50','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2022-08-18 19:11:50','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2022-08-18 19:11:50','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2022-08-18 19:11:50','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2022-08-18 19:11:50','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2022-08-18 19:11:50','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2022-08-18 19:11:50','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2022-08-18 19:11:50','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2022-08-18 19:11:50','',NULL,'停用状态'),(100,1,'待审核','0','sys_examine_status','','info','Y','0','admin','2022-08-16 17:31:14','admin','2022-08-16 17:33:24',''),(101,2,'审核通过','1','sys_examine_status','','success','Y','0','admin','2022-08-16 17:32:06','admin','2022-08-16 17:33:09',''),(102,3,'审核失败','2','sys_examine_status','','warning','Y','0','admin','2022-08-16 17:33:44','','2022-08-18 19:29:57',''),(103,4,'账号异常','3','sys_examine_status','','danger','Y','0','admin','2022-08-16 17:34:15','','2022-08-18 19:30:03',''),(104,1,'身份证','1','con_card_type','','','Y','0','admin','2022-08-16 19:41:30','','2022-08-18 19:30:06',''),(105,2,'港澳居民来往内地通行证','2','con_card_type','','','Y','0','admin','2022-08-16 19:41:57','','2022-08-18 19:30:08',''),(106,3,'台湾居民来往大陆通行证','3','con_card_type','','','Y','0','admin','2022-08-16 19:42:30','','2022-08-18 19:30:10',''),(107,4,'普通护照','4','con_card_type','','','Y','0','admin','2022-08-16 19:42:40','','2022-08-18 19:30:13',''),(108,5,'外国人永久居留身份证','5','con_card_type','','','Y','0','admin','2022-08-16 19:42:52','','2022-08-18 19:30:15',''),(109,1,'企业','0','company_pro','','info','Y','0','admin','2022-08-16 20:05:53','','2022-08-18 19:30:17',''),(110,2,'个人','1','company_pro','','info','Y','0','admin','2022-08-16 20:06:12','','2022-08-18 19:30:19',''),(111,1,'国有企业','0','company_type','','','Y','0','admin','2022-08-16 20:08:21','','2022-08-18 19:30:22',''),(112,2,'集体所有制企业','1','company_type','','','Y','0','admin','2022-08-16 20:08:41','','2022-08-18 19:30:24',''),(113,3,'私营企业','2','company_type','','','Y','0','admin','2022-08-16 20:08:55','','2022-08-18 19:30:27',''),(114,4,'股份制企业','3','company_type','','','Y','0','admin','2022-08-16 20:09:28','','2022-08-18 19:30:30','');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2022-08-18 19:11:50','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2022-08-18 19:11:50','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2022-08-18 19:11:50','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2022-08-18 19:11:50','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2022-08-18 19:11:50','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2022-08-18 19:11:50','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2022-08-18 19:11:50','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2022-08-18 19:11:50','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2022-08-18 19:11:50','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2022-08-18 19:11:50','',NULL,'登录状态列表'),(100,'审核状态','sys_examine_status','0','admin','2022-08-16 17:29:41','admin','2022-08-18 19:32:15','商家状态列表'),(101,'证件类型','con_card_type','0','admin','2022-08-16 19:38:49','admin','2022-08-16 19:39:47','证件类型列表'),(102,'公司性质','company_pro','0','admin','2022-08-16 20:05:19','admin','2022-08-18 19:33:17','公司性质列表'),(103,'企业类型','company_type','0','admin','2022-08-16 20:08:00','admin','2022-08-18 19:33:45','企业类型列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2022-08-18 19:11:50','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2022-08-18 19:11:50','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2022-08-18 19:11:50','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Firefox 10','Windows 10','0','登录成功','2022-08-20 21:06:09'),(101,'admin','127.0.0.1','内网IP','Firefox 10','Windows 10','0','登录成功','2022-08-21 12:30:24');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','','M','0','1','','fa fa-gear','admin','2022-08-18 19:11:49','',NULL,'系统管理目录'),(2,'系统监控',0,2,'#','','M','0','1','','fa fa-video-camera','admin','2022-08-18 19:11:49','',NULL,'系统监控目录'),(3,'系统工具',0,3,'#','','M','0','1','','fa fa-bars','admin','2022-08-18 19:11:49','',NULL,'系统工具目录'),(4,'若依官网',0,4,'https://www.dlut.edu.cn/','menuBlank','C','1','1','','fa fa-location-arrow','admin','2022-08-18 19:11:49','admin','2022-08-18 19:50:54','若依官网地址'),(100,'用户管理',1,1,'/system/user','','C','0','1','system:user:view','fa fa-user-o','admin','2022-08-18 19:11:49','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'/system/role','','C','0','1','system:role:view','fa fa-user-secret','admin','2022-08-18 19:11:49','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','','C','0','1','system:menu:view','fa fa-th-list','admin','2022-08-18 19:11:49','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','','C','0','1','system:dept:view','fa fa-outdent','admin','2022-08-18 19:11:49','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'/system/post','','C','0','1','system:post:view','fa fa-address-card-o','admin','2022-08-18 19:11:49','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','','C','0','1','system:dict:view','fa fa-bookmark-o','admin','2022-08-18 19:11:49','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'/system/config','','C','0','1','system:config:view','fa fa-sun-o','admin','2022-08-18 19:11:49','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'/system/notice','','C','0','1','system:notice:view','fa fa-bullhorn','admin','2022-08-18 19:11:49','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'#','','M','0','1','','fa fa-pencil-square-o','admin','2022-08-18 19:11:49','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','','C','0','1','monitor:online:view','fa fa-user-circle','admin','2022-08-18 19:11:49','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','','C','0','1','monitor:job:view','fa fa-tasks','admin','2022-08-18 19:11:49','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','','C','0','1','monitor:data:view','fa fa-bug','admin','2022-08-18 19:11:49','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'/monitor/server','','C','0','1','monitor:server:view','fa fa-server','admin','2022-08-18 19:11:49','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'/monitor/cache','','C','0','1','monitor:cache:view','fa fa-cube','admin','2022-08-18 19:11:49','',NULL,'缓存监控菜单'),(114,'表单构建',3,1,'/tool/build','','C','0','1','tool:build:view','fa fa-wpforms','admin','2022-08-18 19:11:49','',NULL,'表单构建菜单'),(115,'代码生成',3,2,'/tool/gen','','C','0','1','tool:gen:view','fa fa-code','admin','2022-08-18 19:11:49','',NULL,'代码生成菜单'),(116,'系统接口',3,3,'/tool/swagger','','C','0','1','tool:swagger:view','fa fa-gg','admin','2022-08-18 19:11:49','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','','C','0','1','monitor:operlog:view','fa fa-address-book','admin','2022-08-18 19:11:49','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','','C','0','1','monitor:logininfor:view','fa fa-file-image-o','admin','2022-08-18 19:11:49','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'#','','F','0','1','system:user:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1001,'用户新增',100,2,'#','','F','0','1','system:user:add','#','admin','2022-08-18 19:11:49','',NULL,''),(1002,'用户修改',100,3,'#','','F','0','1','system:user:edit','#','admin','2022-08-18 19:11:49','',NULL,''),(1003,'用户删除',100,4,'#','','F','0','1','system:user:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1004,'用户导出',100,5,'#','','F','0','1','system:user:export','#','admin','2022-08-18 19:11:49','',NULL,''),(1005,'用户导入',100,6,'#','','F','0','1','system:user:import','#','admin','2022-08-18 19:11:49','',NULL,''),(1006,'重置密码',100,7,'#','','F','0','1','system:user:resetPwd','#','admin','2022-08-18 19:11:49','',NULL,''),(1007,'角色查询',101,1,'#','','F','0','1','system:role:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1008,'角色新增',101,2,'#','','F','0','1','system:role:add','#','admin','2022-08-18 19:11:49','',NULL,''),(1009,'角色修改',101,3,'#','','F','0','1','system:role:edit','#','admin','2022-08-18 19:11:49','',NULL,''),(1010,'角色删除',101,4,'#','','F','0','1','system:role:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1011,'角色导出',101,5,'#','','F','0','1','system:role:export','#','admin','2022-08-18 19:11:49','',NULL,''),(1012,'菜单查询',102,1,'#','','F','0','1','system:menu:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1013,'菜单新增',102,2,'#','','F','0','1','system:menu:add','#','admin','2022-08-18 19:11:49','',NULL,''),(1014,'菜单修改',102,3,'#','','F','0','1','system:menu:edit','#','admin','2022-08-18 19:11:49','',NULL,''),(1015,'菜单删除',102,4,'#','','F','0','1','system:menu:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1016,'部门查询',103,1,'#','','F','0','1','system:dept:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1017,'部门新增',103,2,'#','','F','0','1','system:dept:add','#','admin','2022-08-18 19:11:49','',NULL,''),(1018,'部门修改',103,3,'#','','F','0','1','system:dept:edit','#','admin','2022-08-18 19:11:49','',NULL,''),(1019,'部门删除',103,4,'#','','F','0','1','system:dept:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1020,'岗位查询',104,1,'#','','F','0','1','system:post:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1021,'岗位新增',104,2,'#','','F','0','1','system:post:add','#','admin','2022-08-18 19:11:49','',NULL,''),(1022,'岗位修改',104,3,'#','','F','0','1','system:post:edit','#','admin','2022-08-18 19:11:49','',NULL,''),(1023,'岗位删除',104,4,'#','','F','0','1','system:post:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1024,'岗位导出',104,5,'#','','F','0','1','system:post:export','#','admin','2022-08-18 19:11:49','',NULL,''),(1025,'字典查询',105,1,'#','','F','0','1','system:dict:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1026,'字典新增',105,2,'#','','F','0','1','system:dict:add','#','admin','2022-08-18 19:11:49','',NULL,''),(1027,'字典修改',105,3,'#','','F','0','1','system:dict:edit','#','admin','2022-08-18 19:11:49','',NULL,''),(1028,'字典删除',105,4,'#','','F','0','1','system:dict:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1029,'字典导出',105,5,'#','','F','0','1','system:dict:export','#','admin','2022-08-18 19:11:49','',NULL,''),(1030,'参数查询',106,1,'#','','F','0','1','system:config:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1031,'参数新增',106,2,'#','','F','0','1','system:config:add','#','admin','2022-08-18 19:11:49','',NULL,''),(1032,'参数修改',106,3,'#','','F','0','1','system:config:edit','#','admin','2022-08-18 19:11:49','',NULL,''),(1033,'参数删除',106,4,'#','','F','0','1','system:config:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1034,'参数导出',106,5,'#','','F','0','1','system:config:export','#','admin','2022-08-18 19:11:49','',NULL,''),(1035,'公告查询',107,1,'#','','F','0','1','system:notice:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1036,'公告新增',107,2,'#','','F','0','1','system:notice:add','#','admin','2022-08-18 19:11:49','',NULL,''),(1037,'公告修改',107,3,'#','','F','0','1','system:notice:edit','#','admin','2022-08-18 19:11:49','',NULL,''),(1038,'公告删除',107,4,'#','','F','0','1','system:notice:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1039,'操作查询',500,1,'#','','F','0','1','monitor:operlog:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1040,'操作删除',500,2,'#','','F','0','1','monitor:operlog:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1041,'详细信息',500,3,'#','','F','0','1','monitor:operlog:detail','#','admin','2022-08-18 19:11:49','',NULL,''),(1042,'日志导出',500,4,'#','','F','0','1','monitor:operlog:export','#','admin','2022-08-18 19:11:49','',NULL,''),(1043,'登录查询',501,1,'#','','F','0','1','monitor:logininfor:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1044,'登录删除',501,2,'#','','F','0','1','monitor:logininfor:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1045,'日志导出',501,3,'#','','F','0','1','monitor:logininfor:export','#','admin','2022-08-18 19:11:49','',NULL,''),(1046,'账户解锁',501,4,'#','','F','0','1','monitor:logininfor:unlock','#','admin','2022-08-18 19:11:49','',NULL,''),(1047,'在线查询',109,1,'#','','F','0','1','monitor:online:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1048,'批量强退',109,2,'#','','F','0','1','monitor:online:batchForceLogout','#','admin','2022-08-18 19:11:49','',NULL,''),(1049,'单条强退',109,3,'#','','F','0','1','monitor:online:forceLogout','#','admin','2022-08-18 19:11:49','',NULL,''),(1050,'任务查询',110,1,'#','','F','0','1','monitor:job:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1051,'任务新增',110,2,'#','','F','0','1','monitor:job:add','#','admin','2022-08-18 19:11:49','',NULL,''),(1052,'任务修改',110,3,'#','','F','0','1','monitor:job:edit','#','admin','2022-08-18 19:11:49','',NULL,''),(1053,'任务删除',110,4,'#','','F','0','1','monitor:job:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1054,'状态修改',110,5,'#','','F','0','1','monitor:job:changeStatus','#','admin','2022-08-18 19:11:49','',NULL,''),(1055,'任务详细',110,6,'#','','F','0','1','monitor:job:detail','#','admin','2022-08-18 19:11:49','',NULL,''),(1056,'任务导出',110,7,'#','','F','0','1','monitor:job:export','#','admin','2022-08-18 19:11:49','',NULL,''),(1057,'生成查询',115,1,'#','','F','0','1','tool:gen:list','#','admin','2022-08-18 19:11:49','',NULL,''),(1058,'生成修改',115,2,'#','','F','0','1','tool:gen:edit','#','admin','2022-08-18 19:11:49','',NULL,''),(1059,'生成删除',115,3,'#','','F','0','1','tool:gen:remove','#','admin','2022-08-18 19:11:49','',NULL,''),(1060,'预览代码',115,4,'#','','F','0','1','tool:gen:preview','#','admin','2022-08-18 19:11:49','',NULL,''),(1061,'生成代码',115,5,'#','','F','0','1','tool:gen:code','#','admin','2022-08-18 19:11:49','',NULL,''),(2073,'审核管理',0,5,'#','menuItem','M','0','1',NULL,'fa fa-search','admin','2022-08-15 23:45:19','',NULL,''),(2074,'审核单据管理',2073,1,'/audit/auditDocumentsManage','','C','0','1','audit:auditDocumentsManage:view','#','admin','2022-08-15 23:49:10','',NULL,'审核单据管理菜单'),(2075,'审核单据管理查询',2074,1,'#','','F','0','1','audit:auditDocumentsManage:list','#','admin','2022-08-15 23:49:10','',NULL,''),(2076,'审核单据管理新增',2074,2,'#','','F','0','1','audit:auditDocumentsManage:add','#','admin','2022-08-15 23:49:10','',NULL,''),(2077,'审核单据管理修改',2074,3,'#','','F','0','1','audit:auditDocumentsManage:edit','#','admin','2022-08-15 23:49:10','',NULL,''),(2078,'审核单据管理删除',2074,4,'#','','F','0','1','audit:auditDocumentsManage:remove','#','admin','2022-08-15 23:49:10','',NULL,''),(2079,'审核单据管理导出',2074,5,'#','','F','0','1','audit:auditDocumentsManage:export','#','admin','2022-08-15 23:49:10','',NULL,''),(2080,'小商超信用评价审核管理',2073,1,'/audit/businessCreditEvaluationManage','','C','0','1','audit:businessCreditEvaluationManage:view','#','admin','2022-08-15 23:49:36','',NULL,'小商超信用评价审核管理菜单'),(2081,'小商超信用评价审核管理查询',2080,1,'#','','F','0','1','audit:businessCreditEvaluationManage:list','#','admin','2022-08-15 23:49:37','',NULL,''),(2082,'小商超信用评价审核管理新增',2080,2,'#','','F','0','1','audit:businessCreditEvaluationManage:add','#','admin','2022-08-15 23:49:37','',NULL,''),(2083,'小商超信用评价审核管理修改',2080,3,'#','','F','0','1','audit:businessCreditEvaluationManage:edit','#','admin','2022-08-15 23:49:37','',NULL,''),(2084,'小商超信用评价审核管理删除',2080,4,'#','','F','0','1','audit:businessCreditEvaluationManage:remove','#','admin','2022-08-15 23:49:37','',NULL,''),(2085,'小商超信用评价审核管理导出',2080,5,'#','','F','0','1','audit:businessCreditEvaluationManage:export','#','admin','2022-08-15 23:49:37','',NULL,''),(2086,'供应商评价审核管理',2073,1,'/audit/supplierCreditEvaluationManage','','C','0','1','audit:supplierCreditEvaluationManage:view','#','admin','2022-08-15 23:50:52','',NULL,'供应商评价审核管理菜单'),(2087,'供应商评价审核管理查询',2086,1,'#','','F','0','1','audit:supplierCreditEvaluationManage:list','#','admin','2022-08-15 23:50:52','',NULL,''),(2088,'供应商评价审核管理新增',2086,2,'#','','F','0','1','audit:supplierCreditEvaluationManage:add','#','admin','2022-08-15 23:50:52','',NULL,''),(2089,'供应商评价审核管理修改',2086,3,'#','','F','0','1','audit:supplierCreditEvaluationManage:edit','#','admin','2022-08-15 23:50:52','',NULL,''),(2090,'供应商评价审核管理删除',2086,4,'#','','F','0','1','audit:supplierCreditEvaluationManage:remove','#','admin','2022-08-15 23:50:53','',NULL,''),(2091,'供应商评价审核管理导出',2086,5,'#','','F','0','1','audit:supplierCreditEvaluationManage:export','#','admin','2022-08-15 23:50:53','',NULL,''),(2092,'小商超审核管理',2073,1,'/audit/businessLicenseManage','','C','0','1','audit:businessLicenseManage:view','#','admin','2022-08-15 23:51:02','',NULL,'小商超审核管理菜单'),(2093,'小商超审核管理查询',2092,1,'#','','F','0','1','audit:businessLicenseManage:list','#','admin','2022-08-15 23:51:02','',NULL,''),(2094,'小商超审核管理新增',2092,2,'#','','F','0','1','audit:businessLicenseManage:add','#','admin','2022-08-15 23:51:02','',NULL,''),(2095,'小商超审核管理修改',2092,3,'#','','F','0','1','audit:businessLicenseManage:edit','#','admin','2022-08-15 23:51:02','',NULL,''),(2096,'小商超审核管理删除',2092,4,'#','','F','0','1','audit:businessLicenseManage:remove','#','admin','2022-08-15 23:51:02','',NULL,''),(2097,'小商超审核管理导出',2092,5,'#','','F','0','1','audit:businessLicenseManage:export','#','admin','2022-08-15 23:51:02','',NULL,''),(2098,'供应商营业执照审核管理',2073,1,'/audit/supplierLicenseManage','','C','0','1','audit:supplierLicenseManage:view','#','admin','2022-08-15 23:51:10','',NULL,'供应商营业执照审核管理菜单'),(2099,'供应商营业执照审核管理查询',2098,1,'#','','F','0','1','audit:supplierLicenseManage:list','#','admin','2022-08-15 23:51:10','',NULL,''),(2100,'供应商营业执照审核管理新增',2098,2,'#','','F','0','1','audit:supplierLicenseManage:add','#','admin','2022-08-15 23:51:11','',NULL,''),(2101,'供应商营业执照审核管理修改',2098,3,'#','','F','0','1','audit:supplierLicenseManage:edit','#','admin','2022-08-15 23:51:11','',NULL,''),(2102,'供应商营业执照审核管理删除',2098,4,'#','','F','0','1','audit:supplierLicenseManage:remove','#','admin','2022-08-15 23:51:11','',NULL,''),(2103,'供应商营业执照审核管理导出',2098,5,'#','','F','0','1','audit:supplierLicenseManage:export','#','admin','2022-08-15 23:51:11','',NULL,''),(2104,'税务及银行审核管理',2073,1,'/audit/taxAndBankManage','','C','0','1','audit:taxAndBankManage:view','#','admin','2022-08-15 23:51:18','',NULL,'税务及银行审核管理菜单'),(2105,'税务及银行审核管理查询',2104,1,'#','','F','0','1','audit:taxAndBankManage:list','#','admin','2022-08-15 23:51:18','',NULL,''),(2106,'税务及银行审核管理新增',2104,2,'#','','F','0','1','audit:taxAndBankManage:add','#','admin','2022-08-15 23:51:18','',NULL,''),(2107,'税务及银行审核管理修改',2104,3,'#','','F','0','1','audit:taxAndBankManage:edit','#','admin','2022-08-15 23:51:18','',NULL,''),(2108,'税务及银行审核管理删除',2104,4,'#','','F','0','1','audit:taxAndBankManage:remove','#','admin','2022-08-15 23:51:19','',NULL,''),(2109,'税务及银行审核管理导出',2104,5,'#','','F','0','1','audit:taxAndBankManage:export','#','admin','2022-08-15 23:51:19','',NULL,''),(2111,'四种用户',0,6,'#','menuItem','M','0','1','','#','admin','2022-08-18 19:35:34','admin','2022-08-18 19:37:49',''),(2160,'供销社角色',2111,1,'/user/cooperative','','C','0','1','user:cooperative:view','#','admin','2022-08-18 19:43:43','',NULL,'供销社角色菜单'),(2161,'供销社角色查询',2160,1,'#','','F','0','1','user:cooperative:list','#','admin','2022-08-18 19:43:43','',NULL,''),(2162,'供销社角色新增',2160,2,'#','','F','0','1','user:cooperative:add','#','admin','2022-08-18 19:43:43','',NULL,''),(2163,'供销社角色修改',2160,3,'#','','F','0','1','user:cooperative:edit','#','admin','2022-08-18 19:43:43','',NULL,''),(2164,'供销社角色删除',2160,4,'#','','F','0','1','user:cooperative:remove','#','admin','2022-08-18 19:43:43','',NULL,''),(2165,'供销社角色导出',2160,5,'#','','F','0','1','user:cooperative:export','#','admin','2022-08-18 19:43:43','',NULL,''),(2166,'管理员角色',2111,1,'/user/manager','','C','0','1','user:manager:view','#','admin','2022-08-18 19:43:49','',NULL,'管理员角色菜单'),(2167,'管理员角色查询',2166,1,'#','','F','0','1','user:manager:list','#','admin','2022-08-18 19:43:49','',NULL,''),(2168,'管理员角色新增',2166,2,'#','','F','0','1','user:manager:add','#','admin','2022-08-18 19:43:49','',NULL,''),(2169,'管理员角色修改',2166,3,'#','','F','0','1','user:manager:edit','#','admin','2022-08-18 19:43:49','',NULL,''),(2170,'管理员角色删除',2166,4,'#','','F','0','1','user:manager:remove','#','admin','2022-08-18 19:43:49','',NULL,''),(2171,'管理员角色导出',2166,5,'#','','F','0','1','user:manager:export','#','admin','2022-08-18 19:43:49','',NULL,''),(2172,'超市角色',2111,1,'/user/supermarket','','C','0','1','user:supermarket:view','#','admin','2022-08-18 19:43:58','',NULL,'超市角色菜单'),(2173,'超市角色查询',2172,1,'#','','F','0','1','user:supermarket:list','#','admin','2022-08-18 19:43:58','',NULL,''),(2174,'超市角色新增',2172,2,'#','','F','0','1','user:supermarket:add','#','admin','2022-08-18 19:43:58','',NULL,''),(2175,'超市角色修改',2172,3,'#','','F','0','1','user:supermarket:edit','#','admin','2022-08-18 19:43:58','',NULL,''),(2176,'超市角色删除',2172,4,'#','','F','0','1','user:supermarket:remove','#','admin','2022-08-18 19:43:58','',NULL,''),(2177,'超市角色导出',2172,5,'#','','F','0','1','user:supermarket:export','#','admin','2022-08-18 19:43:58','',NULL,''),(2178,'供应商角色',2111,1,'/user/supplier','','C','0','1','user:supplier:view','#','admin','2022-08-18 19:44:04','',NULL,'供应商角色菜单'),(2179,'供应商角色查询',2178,1,'#','','F','0','1','user:supplier:list','#','admin','2022-08-18 19:44:04','',NULL,''),(2180,'供应商角色新增',2178,2,'#','','F','0','1','user:supplier:add','#','admin','2022-08-18 19:44:04','',NULL,''),(2181,'供应商角色修改',2178,3,'#','','F','0','1','user:supplier:edit','#','admin','2022-08-18 19:44:04','',NULL,''),(2182,'供应商角色删除',2178,4,'#','','F','0','1','user:supplier:remove','#','admin','2022-08-18 19:44:04','',NULL,''),(2183,'供应商角色导出',2178,5,'#','','F','0','1','user:supplier:export','#','admin','2022-08-18 19:44:04','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2022-08-18 19:11:50','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2022-08-18 19:11:50','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'菜单管理',1,'com.cps.web.controller.system.SysMenuController.addSave()','POST',1,'admin','研发部门','/cps/system/menu/add','127.0.0.1','内网IP','{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"四种角色\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:35:34'),(101,'菜单管理',2,'com.cps.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/cps/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"2111\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"四种用户\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:37:49'),(102,'代码生成',2,'com.cps.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/cps/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"18\"],\"tableName\":[\"cooperative\"],\"tableComment\":[\"供销社角色\"],\"className\":[\"Cooperative\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"210\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供销社id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gxsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"211\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供销社名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gxsName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"212\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"213\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"214\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"215\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"供销社状态\"],\"columns[5].javaType\":[\"String\"],\"col','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:38:06'),(103,'代码生成',2,'com.cps.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/cps/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"19\"],\"tableName\":[\"manager\"],\"tableComment\":[\"管理员角色\"],\"className\":[\"Manager\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"218\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"管理员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"managerId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"219\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"220\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"用户名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"username\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"221\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"密码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"password\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"222\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"证件类型\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"contactCardType\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"con_card_type\"],\"columns[5].columnId\":[\"223\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"证件号\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactCardId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:39:39'),(104,'代码生成',2,'com.cps.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/cps/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"20\"],\"tableName\":[\"supermarket\"],\"tableComment\":[\"超市角色\"],\"className\":[\"Supermarket\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"229\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"shopId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"230\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"超市名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"shopName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"231\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"232\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"233\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"234\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"联系人姓名\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactPerson\"],\"columns[5].isInsert\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:39:48'),(105,'代码生成',2,'com.cps.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/cps/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"21\"],\"tableName\":[\"supplier\"],\"tableComment\":[\"供应商角色\"],\"className\":[\"Supplier\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"242\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"supplyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"243\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"244\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"公司名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"companyName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"245\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"246\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"247\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"公司性质\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"companyProperty\"],\"columns[5].isInsert','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:39:59'),(106,'代码生成',2,'com.cps.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/cps/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"18\"],\"tableName\":[\"cooperative\"],\"tableComment\":[\"供销社角色\"],\"className\":[\"Cooperative\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"210\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供销社id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gxsId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"211\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供销社名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gxsName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"212\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"昵称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"nickname\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"213\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"用户名\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"username\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"214\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"密码\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"password\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"215\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"供销社状态\"],\"columns[5].javaType\":[\"String\"],\"col','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:40:08'),(107,'代码生成',8,'com.cps.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/cps/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":[\"cooperative,manager,supermarket,supplier\"]}',NULL,0,NULL,'2022-08-18 19:40:44'),(108,'代码生成',2,'com.cps.generator.controller.GenController.editSave()','POST',1,'admin','研发部门','/cps/tool/gen/edit','127.0.0.1','内网IP','{\"tableId\":[\"19\"],\"tableName\":[\"manager\"],\"tableComment\":[\"管理员角色\"],\"className\":[\"Manager\"],\"functionAuthor\":[\"cps\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"218\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"管理员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"managerId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"219\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"昵称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"nickname\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"220\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"用户名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"username\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"221\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"密码\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"password\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"222\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"证件类型\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"contactCardType\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"con_card_type\"],\"columns[5].columnId\":[\"223\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"证件号\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"contactCardId\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].queryType\":[\"EQ\"','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:42:36'),(109,'代码生成',8,'com.cps.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/cps/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":[\"cooperative,manager,supermarket,supplier\"]}',NULL,0,NULL,'2022-08-18 19:42:58'),(110,'供销社角色',1,'com.cps.web.controller.user.CooperativeController.addSave()','POST',1,'admin','研发部门','/cps/user/cooperative/add','127.0.0.1','内网IP','{\"gxsName\":[\"供销社1\"],\"nickname\":[\"供销社1\"],\"username\":[\"供销社1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:44:34'),(111,'供销社角色',1,'com.cps.web.controller.user.CooperativeController.addSave()','POST',1,'admin','研发部门','/cps/user/cooperative/add','127.0.0.1','内网IP','{\"gxsName\":[\"供销社2\"],\"nickname\":[\"供销社2\"],\"username\":[\"供销社2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:44:52'),(112,'管理员角色',1,'com.cps.web.controller.user.ManagerController.addSave()','POST',1,'admin','研发部门','/cps/user/manager/add','127.0.0.1','内网IP','{\"nickname\":[\"管理员1\"],\"username\":[\"管理员1\"],\"contactCardType\":[\"1\"],\"contactCardId\":[\"123456\"],\"contactName\":[\"管理员1\"],\"contactPhoneNumber\":[\"123456\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:45:22'),(113,'管理员角色',1,'com.cps.web.controller.user.ManagerController.addSave()','POST',1,'admin','研发部门','/cps/user/manager/add','127.0.0.1','内网IP','{\"nickname\":[\"管理员2\"],\"username\":[\"管理员2\"],\"contactCardType\":[\"1\"],\"contactCardId\":[\"123456\"],\"contactName\":[\"管理员2\"],\"contactPhoneNumber\":[\"123456\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:45:36'),(114,'超市角色',1,'com.cps.web.controller.user.SupermarketController.addSave()','POST',1,'admin','研发部门','/cps/user/supermarket/add','127.0.0.1','内网IP','{\"shopName\":[\"超市1\"],\"nickname\":[\"超市1\"],\"username\":[\"超市1\"],\"contactPerson\":[\"超市1\"],\"contactCardType\":[\"1\"],\"cardId\":[\"123456\"],\"contactPhone\":[\"123456\"],\"contactEmail\":[\"123456\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:46:04'),(115,'超市角色',1,'com.cps.web.controller.user.SupermarketController.addSave()','POST',1,'admin','研发部门','/cps/user/supermarket/add','127.0.0.1','内网IP','{\"shopName\":[\"超市2\"],\"nickname\":[\"超市2\"],\"username\":[\"超市2\"],\"contactPerson\":[\"超市2\"],\"contactCardType\":[\"1\"],\"cardId\":[\"123456\"],\"contactPhone\":[\"123456\"],\"contactEmail\":[\"123456\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:46:22'),(116,'供应商角色',1,'com.cps.web.controller.user.SupplierController.addSave()','POST',1,'admin','研发部门','/cps/user/supplier/add','127.0.0.1','内网IP','{\"nickname\":[\"供应商1\"],\"companyName\":[\"供应商1\"],\"username\":[\"供应商1\"],\"companyProperty\":[\"0\"],\"companyType\":[\"0\"],\"useCode\":[\"Y\"],\"codeId\":[\"123456\"],\"contactPerson\":[\"供应商1\"],\"contactCardType\":[\"1\"],\"cardId\":[\"123456\"],\"contactPhone\":[\"123456\"],\"contactEmail\":[\"123456\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:46:59'),(117,'管理员角色',3,'com.cps.web.controller.user.ManagerController.remove()','POST',1,'admin','研发部门','/cps/user/manager/remove','127.0.0.1','内网IP','{\"ids\":[\"4166082313694111757\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:47:05'),(118,'菜单管理',3,'com.cps.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/cps/system/menu/remove/4','127.0.0.1','内网IP','4','{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}',0,NULL,'2022-08-18 19:48:45'),(119,'菜单管理',3,'com.cps.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/cps/system/menu/remove/4','127.0.0.1','内网IP','4','{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}',0,NULL,'2022-08-18 19:48:54'),(120,'菜单管理',2,'com.cps.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/cps/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"https://www.dlut.edu.cn/\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:49:04'),(121,'菜单管理',3,'com.cps.web.controller.system.SysMenuController.remove()','GET',1,'admin','研发部门','/cps/system/menu/remove/4','127.0.0.1','内网IP','4','{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}',0,NULL,'2022-08-18 19:50:42'),(122,'菜单管理',2,'com.cps.web.controller.system.SysMenuController.editSave()','POST',1,'admin','研发部门','/cps/system/menu/edit','127.0.0.1','内网IP','{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"若依官网\"],\"url\":[\"https://www.dlut.edu.cn/\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-location-arrow\"],\"visible\":[\"1\"],\"isRefresh\":[\"1\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-18 19:50:54'),(123,'角色管理',3,'com.cps.web.controller.system.SysRoleController.remove()','POST',1,'admin','研发部门','/cps/system/role/remove','127.0.0.1','内网IP','{\"ids\":[\"2\"]}',NULL,1,'普通角色已分配,不能删除','2022-08-20 21:10:34'),(124,'用户管理',3,'com.cps.web.controller.system.SysUserController.remove()','POST',1,'admin','研发部门','/cps/system/user/remove','127.0.0.1','内网IP','{\"ids\":[\"2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-20 21:10:51'),(125,'角色管理',3,'com.cps.web.controller.system.SysRoleController.remove()','POST',1,'admin','研发部门','/cps/system/role/remove','127.0.0.1','内网IP','{\"ids\":[\"2\"]}','{\"msg\":\"操作成功\",\"code\":0}',0,NULL,'2022-08-20 21:11:10');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2022-08-18 19:11:49','',NULL,''),(2,'se','项目经理',2,'0','admin','2022-08-18 19:11:49','',NULL,''),(3,'hr','人力资源',3,'0','admin','2022-08-18 19:11:49','',NULL,''),(4,'user','普通员工',4,'0','admin','2022-08-18 19:11:49','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1','0','0','admin','2022-08-15 23:03:57','',NULL,'超级管理员'),(100,'供销社','Cooperative',2,'1','0','0','admin','2022-08-17 14:54:19','admin','2022-08-17 14:54:45','供销社角色'),(101,'管理员','Manager',3,'1','0','0','admin','2022-08-17 14:55:44','admin','2022-08-17 14:56:13','管理员角色'),(102,'超市','Supermarket',4,'1','0','0','admin','2022-08-17 14:58:07','',NULL,'小超市'),(103,'供应商','Supplier',5,'1','0','0','admin','2022-08-17 14:58:53','',NULL,'供应商角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2022-08-21 12:30:24','2022-08-18 19:11:49','admin','2022-08-18 19:11:49','','2022-08-21 12:30:23','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','0','2','127.0.0.1','2022-08-18 19:11:49','2022-08-18 19:11:49','admin','2022-08-18 19:11:49','',NULL,'测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('701ba4d6-0145-4df1-801a-83639fee4250','admin','研发部门','127.0.0.1','内网IP','Firefox 10','Windows 10','on_line','2022-08-21 12:30:24','2022-08-21 12:30:24',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tender`
--

DROP TABLE IF EXISTS `tender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tender`
--

LOCK TABLES `tender` WRITE;
/*!40000 ALTER TABLE `tender` DISABLE KEYS */;
/*!40000 ALTER TABLE `tender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termination_announcement`
--

DROP TABLE IF EXISTS `termination_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `termination_announcement` (
  `termination_announcement_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '终止公告ID',
  `termination_announcement_document` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件存储位置',
  `tender_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标书ID',
  `termination_time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`termination_announcement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='终止公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termination_announcement`
--

LOCK TABLES `termination_announcement` WRITE;
/*!40000 ALTER TABLE `termination_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `termination_announcement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-22 20:21:48
