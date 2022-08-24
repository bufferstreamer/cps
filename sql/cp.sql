/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : cps_test

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 24/08/2022 17:41:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (200, 1, '供应商与供销社', '0', 'contract_type', '', '', 'Y', '0', 'admin', '2022-08-16 19:45:02', 'admin', '2022-08-16 19:46:52', '');
INSERT INTO `sys_dict_data` VALUES (201, 2, '小商超与供销社', '1', 'contract_type', '', '', 'Y', '0', 'admin', '2022-08-16 19:46:31', 'admin', '2022-08-16 19:47:21', '');
INSERT INTO `sys_dict_data` VALUES (202, 1, '否', '0', 'contract_signature', NULL, NULL, 'Y', '0', 'admin', '2022-08-16 19:49:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (203, 2, '是', '1', 'contract_signature', NULL, NULL, 'Y', '0', 'admin', '2022-08-16 19:49:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (204, 1, '未审核', '0', 'audit_status', NULL, NULL, 'Y', '0', 'admin', '2022-08-16 20:27:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (205, 2, '审核通过', '1', 'audit_status', NULL, NULL, 'Y', '0', 'admin', '2022-08-16 20:27:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (206, 3, '审核未通过', '2', 'audit_status', NULL, NULL, 'Y', '0', 'admin', '2022-08-16 20:28:40', '', NULL, NULL);

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (104, '合同类别', 'contract_type', '0', 'admin', '2022-08-16 19:42:11', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (105, '是否签名', 'contract_signature', '0', 'admin', '2022-08-16 19:49:23', 'admin', '2022-08-24 15:58:26', '合同签名');
INSERT INTO `sys_dict_type` VALUES (106, '审核状态', 'audit_status', '0', 'admin', '2022-08-16 20:26:14', 'admin', '2022-08-24 15:58:35', '资质审核状态');

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
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

SET FOREIGN_KEY_CHECKS = 1;