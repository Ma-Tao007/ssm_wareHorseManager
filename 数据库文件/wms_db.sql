/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : wms_db

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 07/01/2021 16:18:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wms_access_record
-- ----------------------------
DROP TABLE IF EXISTS `wms_access_record`;
CREATE TABLE `wms_access_record`  (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ACCESS_TYPE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ACCESS_TIME` datetime NOT NULL,
  `ACCESS_IP` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`RECORD_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_access_record
-- ----------------------------
INSERT INTO `wms_access_record` VALUES (1, 1001, 'admin', 'login', '2021-01-07 15:41:25', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (2, 1001, 'admin', 'logout', '2021-01-07 15:45:55', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (3, 1001, 'admin', 'login', '2021-01-07 15:47:47', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (4, 1001, 'admin', 'logout', '2021-01-07 15:49:29', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (5, 1020, '小马哥', 'login', '2021-01-07 15:49:47', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (6, 1020, '小马哥', 'logout', '2021-01-07 15:50:34', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (7, 1018, '王皓', 'login', '2021-01-07 15:50:45', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (8, 1018, '王皓', 'logout', '2021-01-07 15:57:26', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (9, 1001, 'admin', 'login', '2021-01-07 15:57:37', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (10, 1001, 'admin', 'logout', '2021-01-07 15:59:09', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (11, 1018, '王皓', 'login', '2021-01-07 15:59:14', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (12, 1018, '王皓', 'logout', '2021-01-07 16:00:18', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (13, 1018, '王皓', 'login', '2021-01-07 16:00:23', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (14, 1018, '王皓', 'logout', '2021-01-07 16:00:27', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (15, 1018, '王皓', 'login', '2021-01-07 16:00:33', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (16, 1018, '王皓', 'logout', '2021-01-07 16:03:22', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (17, 1001, 'admin', 'login', '2021-01-07 16:03:49', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (18, 1001, 'admin', 'logout', '2021-01-07 16:08:54', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (19, 1001, 'admin', 'login', '2021-01-07 16:09:32', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (20, 1001, 'admin', 'logout', '2021-01-07 16:12:24', '0:0:0:0:0:0:0:1');
INSERT INTO `wms_access_record` VALUES (21, 1018, '王皓', 'login', '2021-01-07 16:12:31', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for wms_action
-- ----------------------------
DROP TABLE IF EXISTS `wms_action`;
CREATE TABLE `wms_action`  (
  `ACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTION_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ACTION_DESC` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ACTION_PARAM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ACTION_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_action
-- ----------------------------
INSERT INTO `wms_action` VALUES (1, 'addSupplier', NULL, '/supplierManage/addSupplier');
INSERT INTO `wms_action` VALUES (2, 'deleteSupplier', NULL, '/supplierManage/deleteSupplier');
INSERT INTO `wms_action` VALUES (3, 'updateSupplier', NULL, '/supplierManage/updateSupplier');
INSERT INTO `wms_action` VALUES (4, 'selectSupplier', NULL, '/supplierManage/getSupplierList');
INSERT INTO `wms_action` VALUES (5, 'getSupplierInfo', NULL, '/supplierManage/getSupplierInfo');
INSERT INTO `wms_action` VALUES (6, 'importSupplier', NULL, '/supplierManage/importSupplier');
INSERT INTO `wms_action` VALUES (7, 'exportSupplier', NULL, '/supplierManage/exportSupplier');
INSERT INTO `wms_action` VALUES (8, 'selectCustomer', NULL, '/customerManage/getCustomerList');
INSERT INTO `wms_action` VALUES (9, 'addCustomer', NULL, '/customerManage/addCustomer');
INSERT INTO `wms_action` VALUES (10, 'getCustomerInfo', NULL, '/customerManage/getCustomerInfo');
INSERT INTO `wms_action` VALUES (11, 'updateCustomer', NULL, '/customerManage/updateCustomer');
INSERT INTO `wms_action` VALUES (12, 'deleteCustomer', NULL, '/customerManage/deleteCustomer');
INSERT INTO `wms_action` VALUES (13, 'importCustomer', NULL, '/customerManage/importCustomer');
INSERT INTO `wms_action` VALUES (14, 'exportCustomer', NULL, '/customerManage/exportCustomer');
INSERT INTO `wms_action` VALUES (15, 'selectGoods', NULL, '/goodsManage/getGoodsList');
INSERT INTO `wms_action` VALUES (16, 'addGoods', NULL, '/goodsManage/addGoods');
INSERT INTO `wms_action` VALUES (17, 'getGoodsInfo', NULL, '/goodsManage/getGoodsInfo');
INSERT INTO `wms_action` VALUES (18, 'updateGoods', NULL, '/goodsManage/updateGoods');
INSERT INTO `wms_action` VALUES (19, 'deleteGoods', NULL, '/goodsManage/deleteGoods');
INSERT INTO `wms_action` VALUES (20, 'importGoods', NULL, '/goodsManage/importGoods');
INSERT INTO `wms_action` VALUES (21, 'exportGoods', NULL, '/goodsManage/exportGoods');
INSERT INTO `wms_action` VALUES (22, 'selectRepository', NULL, '/repositoryManage/getRepositoryList');
INSERT INTO `wms_action` VALUES (23, 'addRepository', NULL, '/repositoryManage/addRepository');
INSERT INTO `wms_action` VALUES (24, 'getRepositoryInfo', NULL, '/repositoryManage/getRepository');
INSERT INTO `wms_action` VALUES (25, 'updateRepository', NULL, '/repositoryManage/updateRepository');
INSERT INTO `wms_action` VALUES (26, 'deleteRepository', NULL, '/repositoryManage/deleteRepository');
INSERT INTO `wms_action` VALUES (27, 'importRepository', NULL, '/repositoryManage/importRepository');
INSERT INTO `wms_action` VALUES (28, 'exportRepository', NULL, '/repositoryManage/exportRepository');
INSERT INTO `wms_action` VALUES (29, 'selectRepositoryAdmin', NULL, '/repositoryAdminManage/getRepositoryAdminList');
INSERT INTO `wms_action` VALUES (30, 'addRepositoryAdmin', NULL, '/repositoryAdminManage/addRepositoryAdmin');
INSERT INTO `wms_action` VALUES (31, 'getRepositoryAdminInfo', NULL, '/repositoryAdminManage/getRepositoryAdminInfo');
INSERT INTO `wms_action` VALUES (32, 'updateRepositoryAdmin', NULL, '/repositoryAdminManage/updateRepositoryAdmin');
INSERT INTO `wms_action` VALUES (33, 'deleteRepositoryAdmin', NULL, '/repositoryAdminManage/deleteRepositoryAdmin');
INSERT INTO `wms_action` VALUES (34, 'importRepositoryAd,om', NULL, '/repositoryAdminManage/importRepositoryAdmin');
INSERT INTO `wms_action` VALUES (35, 'exportRepository', NULL, '/repositoryAdminManage/exportRepositoryAdmin');
INSERT INTO `wms_action` VALUES (36, 'getUnassignRepository', NULL, '/repositoryManage/getUnassignRepository');
INSERT INTO `wms_action` VALUES (37, 'getStorageListWithRepository', NULL, '/storageManage/getStorageListWithRepository');
INSERT INTO `wms_action` VALUES (38, 'getStorageList', NULL, '/storageManage/getStorageList');
INSERT INTO `wms_action` VALUES (39, 'addStorageRecord', NULL, '/storageManage/addStorageRecord');
INSERT INTO `wms_action` VALUES (40, 'updateStorageRecord', NULL, '/storageManage/updateStorageRecord');
INSERT INTO `wms_action` VALUES (41, 'deleteStorageRecord', NULL, '/storageManage/deleteStorageRecord');
INSERT INTO `wms_action` VALUES (42, 'importStorageRecord', NULL, '/storageManage/importStorageRecord');
INSERT INTO `wms_action` VALUES (43, 'exportStorageRecord', NULL, '/storageManage/exportStorageRecord');
INSERT INTO `wms_action` VALUES (44, ' stockIn', '货物进库操作', '/stockRecordManage/stockIn');
INSERT INTO `wms_action` VALUES (45, 'stockOut', '货物出库操作', '/stockRecordManage/stockOut');
INSERT INTO `wms_action` VALUES (46, 'searchStockRecord', '查询货物出入库记录', '/stockRecordManage/searchStockRecord');
INSERT INTO `wms_action` VALUES (47, 'getAccessRecords', '查询登入登出记录', '/systemLog/getAccessRecords');
INSERT INTO `wms_action` VALUES (48, 'selectUserOperationRecords', '查村用户操作记录', '/systemLog/selectUserOperationRecords');

-- ----------------------------
-- Table structure for wms_customer
-- ----------------------------
DROP TABLE IF EXISTS `wms_customer`;
CREATE TABLE `wms_customer`  (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CUSTOMER_PERSON` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CUSTOMER_TEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CUSTOMER_EMAIL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CUSTOMER_ADDRESS` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1217 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_customer
-- ----------------------------
INSERT INTO `wms_customer` VALUES (1214, '醴陵荣旗瓷业有限公司', '陈娟', '17716786888', '23369888@136.com', '中国 湖南 醴陵市 嘉树乡玉茶村柏树组');
INSERT INTO `wms_customer` VALUES (1215, '深圳市松林达电子有限公司', '刘明', '85263335-820', '85264958@126.com', '中国 广东 深圳市宝安区 深圳市宝安区福永社区桥头村桥塘路育');
INSERT INTO `wms_customer` VALUES (1216, '郑州绿之源饮品有限公司 ', '赵志敬', '87094196', '87092165@qq.com', '中国 河南 郑州市 郑州市嘉亿东方大厦609');

-- ----------------------------
-- Table structure for wms_goods
-- ----------------------------
DROP TABLE IF EXISTS `wms_goods`;
CREATE TABLE `wms_goods`  (
  `GOOD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GOOD_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GOOD_RYPE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GOOD_SIZE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GOOD_VALUE` double NOT NULL,
  PRIMARY KEY (`GOOD_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_goods
-- ----------------------------
INSERT INTO `wms_goods` VALUES (103, '五孔插座西门子墙壁开关', '电器', '86*86', 1.85);
INSERT INTO `wms_goods` VALUES (104, '陶瓷马克杯', '陶瓷', '9*9*11', 3.5);
INSERT INTO `wms_goods` VALUES (105, '精酿苹果醋', '饮料', '312ml', 300);

-- ----------------------------
-- Table structure for wms_operation_record
-- ----------------------------
DROP TABLE IF EXISTS `wms_operation_record`;
CREATE TABLE `wms_operation_record`  (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OPERATION_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `OPERATION_TIME` datetime NOT NULL,
  `OPERATION_RESULT` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`RECORD_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_operation_record
-- ----------------------------
INSERT INTO `wms_operation_record` VALUES (1, 1001, 'admin', '添加仓库管理员信息', '2021-01-07 15:49:09', '成功');

-- ----------------------------
-- Table structure for wms_record_in
-- ----------------------------
DROP TABLE IF EXISTS `wms_record_in`;
CREATE TABLE `wms_record_in`  (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_SUPPLIERID` int(11) NOT NULL,
  `RECORD_GOODID` int(11) NOT NULL,
  `RECORD_NUMBER` int(11) NOT NULL,
  `RECORD_TIME` datetime NOT NULL,
  `RECORD_PERSON` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RECORD_REPOSITORYID` int(11) NOT NULL,
  PRIMARY KEY (`RECORD_ID`) USING BTREE,
  INDEX `RECORD_SUPPLIERID`(`RECORD_SUPPLIERID`) USING BTREE,
  INDEX `RECORD_GOODID`(`RECORD_GOODID`) USING BTREE,
  INDEX `RECORD_REPOSITORYID`(`RECORD_REPOSITORYID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_record_in
-- ----------------------------
INSERT INTO `wms_record_in` VALUES (15, 1015, 105, 1000, '2016-12-31 00:00:00', 'admin', 1004);
INSERT INTO `wms_record_in` VALUES (16, 1015, 105, 200, '2017-01-02 00:00:00', 'admin', 1004);

-- ----------------------------
-- Table structure for wms_record_out
-- ----------------------------
DROP TABLE IF EXISTS `wms_record_out`;
CREATE TABLE `wms_record_out`  (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_CUSTOMERID` int(11) NOT NULL,
  `RECORD_GOODID` int(11) NOT NULL,
  `RECORD_NUMBER` int(11) NOT NULL,
  `RECORD_TIME` datetime NOT NULL,
  `RECORD_PERSON` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RECORD_REPOSITORYID` int(11) NOT NULL,
  PRIMARY KEY (`RECORD_ID`) USING BTREE,
  INDEX `RECORD_CUSTOMERID`(`RECORD_CUSTOMERID`) USING BTREE,
  INDEX `RECORD_GOODID`(`RECORD_GOODID`) USING BTREE,
  INDEX `RECORD_REPOSITORYID`(`RECORD_REPOSITORYID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_record_out
-- ----------------------------
INSERT INTO `wms_record_out` VALUES (7, 1214, 104, 750, '2016-12-31 00:00:00', 'admin', 1003);

-- ----------------------------
-- Table structure for wms_record_storage
-- ----------------------------
DROP TABLE IF EXISTS `wms_record_storage`;
CREATE TABLE `wms_record_storage`  (
  `RECORD_GOODID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_REPOSITORY` int(11) NOT NULL,
  `RECORD_NUMBER` int(11) NOT NULL,
  PRIMARY KEY (`RECORD_GOODID`, `RECORD_REPOSITORY`) USING BTREE,
  INDEX `RECORD_REPOSITORY`(`RECORD_REPOSITORY`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_record_storage
-- ----------------------------
INSERT INTO `wms_record_storage` VALUES (103, 1005, 10000);
INSERT INTO `wms_record_storage` VALUES (104, 1003, 1750);
INSERT INTO `wms_record_storage` VALUES (105, 1004, 2000);

-- ----------------------------
-- Table structure for wms_repo_admin
-- ----------------------------
DROP TABLE IF EXISTS `wms_repo_admin`;
CREATE TABLE `wms_repo_admin`  (
  `REPO_ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPO_ADMIN_NAME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPO_ADMIN_SEX` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPO_ADMIN_TEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPO_ADMIN_ADDRESS` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPO_ADMIN_BIRTH` datetime NOT NULL,
  `REPO_ADMIN_REPOID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`REPO_ADMIN_ID`) USING BTREE,
  INDEX `REPO_ADMIN_REPOID`(`REPO_ADMIN_REPOID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_repo_admin
-- ----------------------------
INSERT INTO `wms_repo_admin` VALUES (1018, '王皓', '女', '12345874526', '中国佛山', '2016-12-09 00:00:00', 1004);
INSERT INTO `wms_repo_admin` VALUES (1019, '李富荣', '男', '1234', '广州', '2016-12-07 00:00:00', 1003);
INSERT INTO `wms_repo_admin` VALUES (1020, '小马哥', '男', '110', '安徽', '2020-12-30 00:00:00', NULL);

-- ----------------------------
-- Table structure for wms_respository
-- ----------------------------
DROP TABLE IF EXISTS `wms_respository`;
CREATE TABLE `wms_respository`  (
  `REPO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPO_ADDRESS` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPO_STATUS` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPO_AREA` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPO_DESC` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`REPO_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1006 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_respository
-- ----------------------------
INSERT INTO `wms_respository` VALUES (1003, '北京顺义南彩工业园区彩祥西路9号', '可用', '11000㎡', '提供服务完整');
INSERT INTO `wms_respository` VALUES (1004, '广州白云石井石潭路大基围工业区', '可用', '1000㎡', '物流极为便利');
INSERT INTO `wms_respository` VALUES (1005, ' 香港北区文锦渡路（红桥新村）', '可用', '5000.00㎡', NULL);

-- ----------------------------
-- Table structure for wms_role_action
-- ----------------------------
DROP TABLE IF EXISTS `wms_role_action`;
CREATE TABLE `wms_role_action`  (
  `ACTION_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ACTION_ID`, `ROLE_ID`) USING BTREE,
  INDEX `ROLE_ID`(`ROLE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_role_action
-- ----------------------------
INSERT INTO `wms_role_action` VALUES (1, 1);
INSERT INTO `wms_role_action` VALUES (2, 1);
INSERT INTO `wms_role_action` VALUES (3, 1);
INSERT INTO `wms_role_action` VALUES (4, 1);
INSERT INTO `wms_role_action` VALUES (5, 1);
INSERT INTO `wms_role_action` VALUES (6, 1);
INSERT INTO `wms_role_action` VALUES (7, 1);
INSERT INTO `wms_role_action` VALUES (8, 1);
INSERT INTO `wms_role_action` VALUES (9, 1);
INSERT INTO `wms_role_action` VALUES (10, 1);
INSERT INTO `wms_role_action` VALUES (11, 1);
INSERT INTO `wms_role_action` VALUES (12, 1);
INSERT INTO `wms_role_action` VALUES (13, 1);
INSERT INTO `wms_role_action` VALUES (14, 1);
INSERT INTO `wms_role_action` VALUES (15, 1);
INSERT INTO `wms_role_action` VALUES (16, 1);
INSERT INTO `wms_role_action` VALUES (17, 1);
INSERT INTO `wms_role_action` VALUES (18, 1);
INSERT INTO `wms_role_action` VALUES (19, 1);
INSERT INTO `wms_role_action` VALUES (20, 1);
INSERT INTO `wms_role_action` VALUES (21, 1);
INSERT INTO `wms_role_action` VALUES (22, 1);
INSERT INTO `wms_role_action` VALUES (23, 1);
INSERT INTO `wms_role_action` VALUES (24, 1);
INSERT INTO `wms_role_action` VALUES (25, 1);
INSERT INTO `wms_role_action` VALUES (26, 1);
INSERT INTO `wms_role_action` VALUES (27, 1);
INSERT INTO `wms_role_action` VALUES (28, 1);
INSERT INTO `wms_role_action` VALUES (29, 1);
INSERT INTO `wms_role_action` VALUES (30, 1);
INSERT INTO `wms_role_action` VALUES (31, 1);
INSERT INTO `wms_role_action` VALUES (32, 1);
INSERT INTO `wms_role_action` VALUES (33, 1);
INSERT INTO `wms_role_action` VALUES (34, 1);
INSERT INTO `wms_role_action` VALUES (35, 1);
INSERT INTO `wms_role_action` VALUES (36, 1);
INSERT INTO `wms_role_action` VALUES (37, 1);
INSERT INTO `wms_role_action` VALUES (39, 1);
INSERT INTO `wms_role_action` VALUES (40, 1);
INSERT INTO `wms_role_action` VALUES (41, 1);
INSERT INTO `wms_role_action` VALUES (42, 1);
INSERT INTO `wms_role_action` VALUES (43, 1);
INSERT INTO `wms_role_action` VALUES (44, 1);
INSERT INTO `wms_role_action` VALUES (45, 1);
INSERT INTO `wms_role_action` VALUES (46, 1);
INSERT INTO `wms_role_action` VALUES (47, 1);
INSERT INTO `wms_role_action` VALUES (48, 1);
INSERT INTO `wms_role_action` VALUES (4, 2);
INSERT INTO `wms_role_action` VALUES (8, 2);
INSERT INTO `wms_role_action` VALUES (15, 2);
INSERT INTO `wms_role_action` VALUES (38, 2);
INSERT INTO `wms_role_action` VALUES (43, 2);
INSERT INTO `wms_role_action` VALUES (44, 2);
INSERT INTO `wms_role_action` VALUES (45, 2);

-- ----------------------------
-- Table structure for wms_roles
-- ----------------------------
DROP TABLE IF EXISTS `wms_roles`;
CREATE TABLE `wms_roles`  (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ROLE_DESC` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ROLE_URL_PREFIX` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_roles
-- ----------------------------
INSERT INTO `wms_roles` VALUES (1, 'systemAdmin', NULL, 'systemAdmin');
INSERT INTO `wms_roles` VALUES (2, 'commonsAdmin', NULL, 'commonsAdmin');

-- ----------------------------
-- Table structure for wms_supplier
-- ----------------------------
DROP TABLE IF EXISTS `wms_supplier`;
CREATE TABLE `wms_supplier`  (
  `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUPPLIER_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SUPPLIER_PERSON` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SUPPLIER_TEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SUPPLIER_EMAIL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SUPPLIER_ADDRESS` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SUPPLIER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1016 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_supplier
-- ----------------------------
INSERT INTO `wms_supplier` VALUES (1013, '浙江奇同电器有限公司', '王泽伟', '13777771126', '86827868@126.com', '中国 浙江 温州市龙湾区 龙湾区永强大道1648号');
INSERT INTO `wms_supplier` VALUES (1014, '醴陵春天陶瓷实业有限公司', '温仙容', '13974167256', '23267999@126.com', '中国 湖南 醴陵市 东正街15号');
INSERT INTO `wms_supplier` VALUES (1015, '洛阳嘉吉利饮品有限公司', '郑绮云', '26391678', '22390898@qq.com', '中国 广东 佛山市顺德区 北滘镇怡和路2号怡和中心14楼');

-- ----------------------------
-- Table structure for wms_user
-- ----------------------------
DROP TABLE IF EXISTS `wms_user`;
CREATE TABLE `wms_user`  (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_USERNAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USER_PASSWORD` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '123456',
  `USER_FIRST_LOGIN` int(11) NOT NULL,
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_user
-- ----------------------------
INSERT INTO `wms_user` VALUES (1001, 'admin', '6f5379e73c1a9eac6163ab8eaec7e41c', 0);
INSERT INTO `wms_user` VALUES (1018, '王皓', 'ec05e2df1686efec91ab9391cc8c1838', 0);
INSERT INTO `wms_user` VALUES (1019, '李富荣', 'c4b3af5a5ab3e3d5aac4c5a5436201b8', 1);
INSERT INTO `wms_user` VALUES (1020, '小马哥', '3d4fc2c439c456f51989a3b1f82870b0', 0);

-- ----------------------------
-- Table structure for wms_user_role
-- ----------------------------
DROP TABLE IF EXISTS `wms_user_role`;
CREATE TABLE `wms_user_role`  (
  `ROLE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLE_ID`, `USER_ID`) USING BTREE,
  INDEX `USER_ID`(`USER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wms_user_role
-- ----------------------------
INSERT INTO `wms_user_role` VALUES (1, 1001);
INSERT INTO `wms_user_role` VALUES (2, 1018);
INSERT INTO `wms_user_role` VALUES (2, 1019);
INSERT INTO `wms_user_role` VALUES (2, 1020);

SET FOREIGN_KEY_CHECKS = 1;
