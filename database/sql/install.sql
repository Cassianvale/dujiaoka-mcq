SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- 菜单
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `show` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `idx_parent_id` (`parent_id`),
  INDEX `idx_order` (`order`),
  INDEX `idx_parent_id_order` (`parent_id`, `order`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_menu` VALUES (null, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 0, 2, 'Admin', 'feather icon-settings', '', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 2, 3, 'Users', 'fa-users', 'auth/users', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 2, 4, 'Roles', 'fa-user-o', 'auth/roles', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 2, 5, 'Permission', 'fa-key', 'auth/permissions', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 2, 6, 'Menu', 'fa-list', 'auth/menu', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 2, 7, 'Extensions', 'fa-dropbox', 'auth/extensions', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 0, 10, 'Goods_Manage', 'fa-shopping-bag', NULL, '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 8, 12, 'Goods', 'fa-joomla', '/goods', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 8, 11, 'Goods_Group', 'fa-joomla', '/goods-group', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 0, 13, 'Carmis_Manage', 'fa-credit-card-alt', NULL, '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 11, 14, 'Carmis', 'fa-credit-card', '/carmis', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 11, 15, 'Import_Carmis', 'fa-plus-circle', '/import-carmis', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 15, 17, 'Coupon', 'fa-dollar', '/coupon', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 0, 16, 'Coupon_Manage', 'fa-diamond', NULL, '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 0, 19, 'Configuration', 'fa-cog', NULL, '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 16, 22, 'Email_Template_Configuration', 'fa-medium', '/emailtpl', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 16, 21, 'Pay_Configuration', 'fa-cc-visa', '/pay', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 0, 8, 'Order_Manage', 'fa-table', NULL, '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 19, 9, 'Order', 'fa-apple', '/order', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 16, 20, 'System_Setting', 'fa-cogs', '/system-setting', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 16, 23, 'Email_Test', 'fa-send', '/email-test', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 0, 18, 'Article_Manage', 'fa-pencil', '/article', '', 1, now(), NULL);
INSERT INTO `admin_menu` VALUES (null, 0, 24, 'Dcat Plus', 'feather icon-settings', 'dcat-plus/site', 'celaraze.dcat-extension-plus', 1, now(), NULL);

COMMIT;

-- ----------------------------
-- Table structure for admin_permission_menu
-- 路由匹配菜单
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu` (
  `permission_id` bigint NOT NULL,
  `menu_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_permission_menu_permission_id_menu_id_unique` (`permission_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permission_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_permission_menu` VALUES (1, 2, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (2, 4, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (3, 3, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (4, 5, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (5, 6, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (6, 7, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (7, 19, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (8, 19, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (8, 20, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (9, 8, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (10, 8, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (10, 10, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (11, 8, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (11, 9, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (12, 11, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (13, 11, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (13, 12, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (14, 11, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (14, 13, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (15, 15, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (16, 14, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (16, 15, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (17, 18, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (18, 16, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (19, 16, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (19, 17, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (20, 16, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (20, 22, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (21, 21, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (22, 23, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (23, 1, now(), NULL);
INSERT INTO `admin_permission_menu` VALUES (24, 36, now(), NULL);

COMMIT;

-- ----------------------------
-- Table structure for admin_permissions
-- 权限路由
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `parent_id` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
BEGIN;
INSERT INTO `admin_permissions` VALUES (1, '系统', 'auth-management', '', '', 2, 0, now(), NULL);
INSERT INTO `admin_permissions` VALUES (2, '角色', 'users', '', '/auth/users*', 4, 1, now(), NULL);
INSERT INTO `admin_permissions` VALUES (3, '人员', 'roles', '', '/auth/roles*', 3, 1, now(), NULL);
INSERT INTO `admin_permissions` VALUES (4, '权限', 'permissions', '', '/auth/permissions*', 5, 1, now(), NULL);
INSERT INTO `admin_permissions` VALUES (5, '菜单', 'menu', '', '/auth/menu*', 6, 1, now(), NULL);
INSERT INTO `admin_permissions` VALUES (6, '扩展', 'extension', '', '/auth/extensions*', 7, 1, now(), NULL);
INSERT INTO `admin_permissions` VALUES (7, '销售数据', 'Order_Manage', '', '', 8, 0, now(), NULL);
INSERT INTO `admin_permissions` VALUES (8, '订单列表', 'Order', '', '/order*', 9, 7, now(), NULL);
INSERT INTO `admin_permissions` VALUES (9, '商品管理', 'Good_Manage', '', '', 10, 0, now(), NULL);
INSERT INTO `admin_permissions` VALUES (10, '商品分类', 'Goods_Group', '', '/goods-group*', 11, 9, now(), NULL);
INSERT INTO `admin_permissions` VALUES (11, '商品列表', 'Goods', '', '/goods*', 12, 9, now(), NULL);
INSERT INTO `admin_permissions` VALUES (12, '卡密管理', 'Carmis_Manage', '', '', 13, 0, now(), NULL);
INSERT INTO `admin_permissions` VALUES (13, '卡密列表', 'Carmis', '', '/carmis*', 14, 12, now(), NULL);
INSERT INTO `admin_permissions` VALUES (14, '导入卡密', 'Import_Carmis', '', '/import-carmis*', 15, 12, now(), NULL);
INSERT INTO `admin_permissions` VALUES (15, '优惠管理', 'Coupon_Manage', '', '', 16, 0, now(), NULL);
INSERT INTO `admin_permissions` VALUES (16, '优惠券列表', 'Coupon', '', '/coupon*', 17, 15, now(), NULL);
INSERT INTO `admin_permissions` VALUES (17, '支付通道', 'Pay_Configuration', '', '/pay*', 21, 18, now(), NULL);
INSERT INTO `admin_permissions` VALUES (18, '配置', 'Configuration', '', '', 19, 0, now(), NULL);
INSERT INTO `admin_permissions` VALUES (19, '邮件模板配置', 'Email_Template_Configuration', '', '/emailtpl*', 22, 18, now(), NULL);
INSERT INTO `admin_permissions` VALUES (20, '邮件测试', 'Email_Test', '', '/email-test*', 23, 18, now(), NULL);
INSERT INTO `admin_permissions` VALUES (21, '系统设置', 'System_Setting', '', '/system-setting*', 20, 18, now(), NULL);
INSERT INTO `admin_permissions` VALUES (22, '文章管理', 'Article_Manage', '', '/article*', 18, 0, now(), NULL);
INSERT INTO `admin_permissions` VALUES (23, '主页', 'Index', '', '', 1, 0, now(), NULL);
INSERT INTO `admin_permissions` VALUES (24, '增强配置', 'Dcat Plus', '', '/dcat-plus/site*', 24, 0, now(), NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_role_menu 
-- 角色菜单权限
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` bigint NOT NULL,
  `menu_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_menu_role_id_menu_id_unique` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for admin_role_permissions 
-- 角色权限 默认配置demo账号
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` bigint NOT NULL,
  `permission_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_permissions` VALUES (2, 8, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 10, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 11, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 13, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 14, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 16, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 17, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 19, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 20, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 21, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 22, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 23, now(), NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 24, now(), NULL);

COMMIT;

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_users_role_id_user_id_unique` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_users` VALUES (1, 1, now(), now());
INSERT INTO `admin_role_users` VALUES (2, 2, now(), now());

COMMIT;

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
BEGIN;
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', now(), now());
COMMIT;

-- ----------------------------
-- Table structure for admin_settings
-- ----------------------------
DROP TABLE IF EXISTS `admin_settings`;
CREATE TABLE `admin_settings` (
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_settings
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$e7z99Mhxm9BOHL55xHZTx.QcNTZJC6ftRXHCR/ZkBja/jBeasVeBy', 'Administrator', NULL, '4UAXF2BEw9EL1Tr2aGmwkv5DKwxqRF6djOMAHSiBMSOrPfPNHYrjCCQMtnTC', now(), now());
INSERT INTO `admin_users` VALUES (2, 'demo', '$2y$10$FEc/DRk.ZRhqYoZyYmbgQ.LP1Vf0jn5NtUtFXRh4KzQN0hC5CLbSS', 'Demo', NULL, NULL, now(), now());
COMMIT;

-- ----------------------------
-- Table structure for carmis
-- ----------------------------
DROP TABLE IF EXISTS `carmis`;
CREATE TABLE `carmis` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_id` int NOT NULL COMMENT '所属商品',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1未售出 2已售出',
  `is_loop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '循环卡密 1是 0否',
  `carmi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '卡密',
  `info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '卡密说明',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='卡密表';

-- ----------------------------
-- Records of carmis
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠金额',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '优惠类型 1百分比优惠 2固定金额优惠',
  `is_open` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用 1是 0否',
  `coupon` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '优惠码',
  `ret` int NOT NULL DEFAULT '0' COMMENT '剩余使用次数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_coupon` (`coupon`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='优惠码表';

-- ----------------------------
-- Records of coupons
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for coupons_goods
-- ----------------------------
DROP TABLE IF EXISTS `coupons_goods`;
CREATE TABLE `coupons_goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_id` int NOT NULL COMMENT '商品id',
  `coupons_id` int NOT NULL COMMENT '优惠码id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='优惠码关联商品表';

-- ----------------------------
-- Records of coupons_goods
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for emailtpls
-- ----------------------------
DROP TABLE IF EXISTS `emailtpls`;
CREATE TABLE `emailtpls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tpl_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮件标题',
  `tpl_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮件内容',
  `tpl_token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮件标识',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_token` (`tpl_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of emailtpls
-- ----------------------------
BEGIN;
INSERT INTO `emailtpls` VALUES (2, '【{webname}】感谢您的购买，请查收您的收据', '<!DOCTYPE html>\r\n<html\r\n    style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<head>\r\n    <meta name=\"viewport\" content=\"width=device-width\"/>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\r\n    <title>Billing e.g. invoices and receipts</title>\r\n\r\n    <style type=\"text/css\">\r\n        img {\r\n            max-width: 100%;\r\n        }\r\n\r\n        body {\r\n            -webkit-font-smoothing: antialiased;\r\n            -webkit-text-size-adjust: none;\r\n            width: 100% !important;\r\n            height: 100%;\r\n            line-height: 1.6em;\r\n        }\r\n\r\n        body {\r\n            background-color: #f6f6f6;\r\n        }\r\n\r\n        @media only screen and (max-width: 640px) {\r\n            body {\r\n                padding: 0 !important;\r\n            }\r\n\r\n            h1 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h2 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h3 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h4 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h1 {\r\n                font-size: 22px !important;\r\n            }\r\n\r\n            h2 {\r\n                font-size: 18px !important;\r\n            }\r\n\r\n            h3 {\r\n                font-size: 16px !important;\r\n            }\r\n\r\n            .container {\r\n                padding: 0 !important;\r\n                width: 100% !important;\r\n            }\r\n\r\n            .content {\r\n                padding: 0 !important;\r\n            }\r\n\r\n            .content-wrap {\r\n                padding: 10px !important;\r\n            }\r\n\r\n            .invoice {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body itemscope itemtype=\"http://schema.org/EmailMessage\"\r\n      style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; -webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none; width: 100% !important; height: 100%; line-height: 1.6em; background-color: #f6f6f6; margin: 0;\"\r\n      bgcolor=\"#f6f6f6\">\r\n\r\n<table class=\"body-wrap\"\r\n       style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\"\r\n       bgcolor=\"#f6f6f6\">\r\n    <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n        <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"\r\n            valign=\"top\"></td>\r\n        <td class=\"container\" width=\"600\"\r\n            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\"\r\n            valign=\"top\">\r\n            <div class=\"content\"\r\n                 style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\">\r\n                <table class=\"main\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"\r\n                       style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\"\r\n                       bgcolor=\"#fff\">\r\n                    <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                        <td class=\"content-wrap aligncenter\"\r\n                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 20px;\"\r\n                            align=\"center\" valign=\"top\">\r\n                            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"\r\n                                   style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"\r\n                                        valign=\"top\">\r\n                                        <h1 class=\"aligncenter\"\r\n                                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,\'Lucida Grande\',sans-serif; box-sizing: border-box; font-size: 32px; color: #000; line-height: 1.2em; font-weight: 500; text-align: center; margin: 40px 0 0;\"\r\n                                            align=\"center\"> {ord_title} </h1>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"\r\n                                        valign=\"top\">\r\n                                        <h2 class=\"aligncenter\"\r\n                                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,\'Lucida Grande\',sans-serif; box-sizing: border-box; font-size: 24px; color: #000; line-height: 1.2em; font-weight: 400; text-align: center; margin: 40px 0 0;\"\r\n                                            align=\"center\">感谢您的购买。</h2>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block aligncenter\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"\r\n                                        align=\"center\" valign=\"top\">\r\n                                        <table class=\"invoice\"\r\n                                               style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 80%; margin: 40px auto;\">\r\n                                            <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\">\r\n                                                    订单号: {order_id}<br style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"/>\r\n                                                    {created_at}<br style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"/>\r\n                                                    以下是您的卡密信息：<br style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"/>\r\n                                                    {ord_info}\r\n                                                </td>\r\n                                            </tr>\r\n                                            <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\"\r\n                                                    valign=\"top\">\r\n                                                    <table class=\"invoice-items\" cellpadding=\"0\" cellspacing=\"0\"\r\n                                                           style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; margin: 0;\">\r\n                                                        <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                            <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\"\r\n                                                                valign=\"top\">{product_name}\r\n                                                            </td>\r\n                                                            <td class=\"alignright\"\r\n                                                                style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\"\r\n                                                                align=\"right\" valign=\"top\">x {buy_amount}\r\n                                                            </td>\r\n                                                        </tr>\r\n\r\n                                                        <tr class=\"total\"\r\n                                                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                            <td class=\"alignright\" width=\"80%\"\r\n                                                                style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 2px; border-top-color: #333; border-top-style: solid; border-bottom-color: #333; border-bottom-width: 2px; border-bottom-style: solid; font-weight: 700; margin: 0; padding: 5px 0;\"\r\n                                                                align=\"right\" valign=\"top\">总价\r\n                                                            </td>\r\n                                                            <td class=\"alignright\"\r\n                                                                style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 2px; border-top-color: #333; border-top-style: solid; border-bottom-color: #333; border-bottom-width: 2px; border-bottom-style: solid; font-weight: 700; margin: 0; padding: 5px 0;\"\r\n                                                                align=\"right\" valign=\"top\">{ord_price} ¥\r\n                                                            </td>\r\n                                                        </tr>\r\n                                                    </table>\r\n                                                </td>\r\n                                            </tr>\r\n                                        </table>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block aligncenter\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"\r\n                                        align=\"center\" valign=\"top\">\r\n                                        <a href=\"{weburl}\"\r\n                                           style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; color: #348eda; text-decoration: underline; margin: 0;\">{webname}</a>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block aligncenter\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"\r\n                                        align=\"center\" valign=\"top\">\r\n                                        {webname} Inc. {created_at}\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n                <div class=\"footer\"\r\n                     style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\">\r\n                    <table width=\"100%\"\r\n                           style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                        <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n\r\n                        </tr>\r\n                    </table>\r\n                </div>\r\n            </div>\r\n        </td>\r\n        <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"\r\n            valign=\"top\"></td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>', 'card_send_user_email', now(), now(), NULL);
INSERT INTO `emailtpls` VALUES (3, '【{webname}】新订单等待处理！', '<p><span style=\"\">尊敬的管理员：</span></p><p><span style=\"\">客户购买的商品：<span style=\"\"><span style=\"\">【{product_name}】</span></span> 已支付成功，请及时处理。</span></p><p>订单号：{order_id}<br></p><p>数量：{buy_amount}<br></p><p>金额：{ord_price}<br></p><p>时间：<span style=\"\">{created_at}</span><br></p><hr><p>{ord_info}</p><hr><p style=\"margin-left: 40px;\"><b>来自{webname} -{weburl}</b></p>', 'manual_send_manage_mail', now(), now(), NULL);
INSERT INTO `emailtpls` VALUES (4, '【{webname}】订单处理失败！', '<!DOCTYPE html>\r\n<html\r\n    style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<head>\r\n    <meta name=\"viewport\" content=\"width=device-width\"/>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\r\n    <title>Billing e.g. invoices and receipts</title>\r\n\r\n    <style type=\"text/css\">\r\n        img {\r\n            max-width: 100%;\r\n        }\r\n\r\n        body {\r\n            -webkit-font-smoothing: antialiased;\r\n            -webkit-text-size-adjust: none;\r\n            width: 100% !important;\r\n            height: 100%;\r\n            line-height: 1.6em;\r\n        }\r\n\r\n        body {\r\n            background-color: #f6f6f6;\r\n        }\r\n\r\n        @media only screen and (max-width: 640px) {\r\n            body {\r\n                padding: 0 !important;\r\n            }\r\n\r\n            h1 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h2 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h3 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h4 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h1 {\r\n                font-size: 22px !important;\r\n            }\r\n\r\n            h2 {\r\n                font-size: 18px !important;\r\n            }\r\n\r\n            h3 {\r\n                font-size: 16px !important;\r\n            }\r\n\r\n            .container {\r\n                padding: 0 !important;\r\n                width: 100% !important;\r\n            }\r\n\r\n            .content {\r\n                padding: 0 !important;\r\n            }\r\n\r\n            .content-wrap {\r\n                padding: 10px !important;\r\n            }\r\n\r\n            .invoice {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body itemscope itemtype=\"http://schema.org/EmailMessage\"\r\n      style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; -webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none; width: 100% !important; height: 100%; line-height: 1.6em; background-color: #f6f6f6; margin: 0;\"\r\n      bgcolor=\"#f6f6f6\">\r\n\r\n<table class=\"body-wrap\"\r\n       style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\"\r\n       bgcolor=\"#f6f6f6\">\r\n    <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n        <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"\r\n            valign=\"top\"></td>\r\n        <td class=\"container\" width=\"600\"\r\n            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\"\r\n            valign=\"top\">\r\n            <div class=\"content\"\r\n                 style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\">\r\n                <table class=\"main\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"\r\n                       style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\"\r\n                       bgcolor=\"#fff\">\r\n                    <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                        <td class=\"content-wrap aligncenter\"\r\n                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 20px;\"\r\n                            align=\"center\" valign=\"top\">\r\n                            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"\r\n                                   style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"\r\n                                        valign=\"top\">\r\n                                        <h1 class=\"aligncenter\"\r\n                                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,\'Lucida Grande\',sans-serif; box-sizing: border-box; font-size: 32px; color: #000; line-height: 1.2em; font-weight: 500; text-align: center; margin: 40px 0 0;\"\r\n                                            align=\"center\"> {ord_title} </h1>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"\r\n                                        valign=\"top\">\r\n                                        <h2 class=\"aligncenter\"\r\n                                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,\'Lucida Grande\',sans-serif; box-sizing: border-box; font-size: 24px; color: #000; line-height: 1.2em; font-weight: 400; text-align: center; margin: 40px 0 0;\"\r\n                                            align=\"center\">非常遗憾，您的订单处理失败(╥﹏╥).</h2>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block aligncenter\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"\r\n                                        align=\"center\" valign=\"top\">\r\n                                        <table class=\"invoice\"\r\n                                               style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 80%; margin: 40px auto;\">\r\n                                            <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\">\r\n                                                    订单号: {order_id}<br style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"/>\r\n                                                    {created_at}<br style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"/>\r\n                                                    尊敬的客户，十分抱歉，订单处理失败，请联系网站工作人员核查原因。\r\n                                                </td>\r\n                                            </tr>\r\n                                            <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\"\r\n                                                    valign=\"top\">\r\n                                                    <table class=\"invoice-items\" cellpadding=\"0\" cellspacing=\"0\"\r\n                                                           style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; margin: 0;\">\r\n                                                        <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                            <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\"\r\n                                                                valign=\"top\">{ord_title}\r\n                                                            </td>\r\n                                                            <td class=\"alignright\"\r\n                                                                style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\"\r\n                                                                align=\"right\" valign=\"top\">\r\n                                                            </td>\r\n                                                        </tr>\r\n\r\n                                                        <tr class=\"total\"\r\n                                                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                            <td class=\"alignright\" width=\"80%\"\r\n                                                                style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 2px; border-top-color: #333; border-top-style: solid; border-bottom-color: #333; border-bottom-width: 2px; border-bottom-style: solid; font-weight: 700; margin: 0; padding: 5px 0;\"\r\n                                                                align=\"right\" valign=\"top\">总价\r\n                                                            </td>\r\n                                                            <td class=\"alignright\"\r\n                                                                style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 2px; border-top-color: #333; border-top-style: solid; border-bottom-color: #333; border-bottom-width: 2px; border-bottom-style: solid; font-weight: 700; margin: 0; padding: 5px 0;\"\r\n                                                                align=\"right\" valign=\"top\">{ord_price} ¥\r\n                                                            </td>\r\n                                                        </tr>\r\n                                                    </table>\r\n                                                </td>\r\n                                            </tr>\r\n                                        </table>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block aligncenter\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"\r\n                                        align=\"center\" valign=\"top\">\r\n                                        <a href=\"{weburl}\"\r\n                                           style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; color: #348eda; text-decoration: underline; margin: 0;\">{webname}</a>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block aligncenter\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"\r\n                                        align=\"center\" valign=\"top\">\r\n                                        {webname} Inc. {created_at}\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n                <div class=\"footer\"\r\n                     style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\">\r\n                    <table width=\"100%\"\r\n                           style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                        <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n\r\n                        </tr>\r\n                    </table>\r\n                </div>\r\n            </div>\r\n        </td>\r\n        <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"\r\n            valign=\"top\"></td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>', 'failed_order', now(), now(), NULL);
INSERT INTO `emailtpls` VALUES (5, '【{webname}】您的订单已经处理完成！', '<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<table class=\"body-wrap\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\" bgcolor=\"#f6f6f6\">\r\n<tbody>\r\n<tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\">&nbsp;</td>\r\n<td class=\"container\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\" valign=\"top\" width=\"600\">\r\n<div class=\"content\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\">\r\n<table class=\"main\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fff\">\r\n<tbody>\r\n<tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td class=\"content-wrap aligncenter\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 20px;\" align=\"center\" valign=\"top\">\r\n<table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td class=\"content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\r\n<h1 class=\"aligncenter\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,\'Lucida Grande\',sans-serif; box-sizing: border-box; font-size: 32px; color: #000; line-height: 1.2em; font-weight: 500; text-align: center; margin: 40px 0 0;\" align=\"center\">{ord_title}</h1>\r\n</td>\r\n</tr>\r\n<tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td class=\"content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\">\r\n<h2 class=\"aligncenter\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,\'Lucida Grande\',sans-serif; box-sizing: border-box; font-size: 24px; color: #000; line-height: 1.2em; font-weight: 400; text-align: center; margin: 40px 0 0;\" align=\"center\">您的订单已完成。</h2>\r\n</td>\r\n</tr>\r\n<tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td class=\"content-block aligncenter\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\">\r\n<table class=\"invoice\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 80%; margin: 40px auto;\">\r\n<tbody>\r\n<tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\">订单号: {order_id}<br style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" />{created_at}<br style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" />尊敬的客户，您的订单已经处理完毕，请及时前往网站核对处理结果，如有疑问请联系网站工作人员！</td>\r\n</tr>\r\n<tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\">\r\n<table class=\"invoice-items\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; margin: 0;\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\" valign=\"top\"><span style=\"font-size: 14pt;\">{ord_title}</span></td>\r\n<td class=\"alignright\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\" align=\"right\" valign=\"top\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top: 1px solid #eeeeee; margin: 0px; padding: 5px 0px;\">{ord_info}</td>\r\n<td style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top: 1px solid #eeeeee; margin: 0px; padding: 5px 0px;\">&nbsp;</td>\r\n</tr>\r\n<tr class=\"total\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td class=\"alignright\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 2px; border-top-color: #333; border-top-style: solid; border-bottom-color: #333; border-bottom-width: 2px; border-bottom-style: solid; font-weight: bold; margin: 0; padding: 5px 0;\" align=\"right\" valign=\"top\" width=\"80%\">总价</td>\r\n<td class=\"alignright\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 2px; border-top-color: #333; border-top-style: solid; border-bottom-color: #333; border-bottom-width: 2px; border-bottom-style: solid; font-weight: bold; margin: 0; padding: 5px 0;\" align=\"right\" valign=\"top\">{ord_price} &yen;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td class=\"content-block aligncenter\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\"><a style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; color: #348eda; text-decoration: underline; margin: 0;\" href=\"{weburl}\">{webname}</a></td>\r\n</tr>\r\n<tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<td class=\"content-block aligncenter\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\">{webname} Inc. {created_at}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"footer\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\">&nbsp;</div>\r\n</div>\r\n</td>\r\n<td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'completed_order', now(), now(), NULL);
INSERT INTO `emailtpls` VALUES (6, '【{webname}】已收到您的订单，请等候处理', '<!DOCTYPE html>\r\n<html\r\n    style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n<head>\r\n    <meta name=\"viewport\" content=\"width=device-width\"/>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\r\n    <title>Billing e.g. invoices and receipts</title>\r\n\r\n    <style type=\"text/css\">\r\n        img {\r\n            max-width: 100%;\r\n        }\r\n\r\n        body {\r\n            -webkit-font-smoothing: antialiased;\r\n            -webkit-text-size-adjust: none;\r\n            width: 100% !important;\r\n            height: 100%;\r\n            line-height: 1.6em;\r\n        }\r\n\r\n        body {\r\n            background-color: #f6f6f6;\r\n        }\r\n\r\n        @media only screen and (max-width: 640px) {\r\n            body {\r\n                padding: 0 !important;\r\n            }\r\n\r\n            h1 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h2 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h3 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h4 {\r\n                font-weight: 800 !important;\r\n                margin: 20px 0 5px !important;\r\n            }\r\n\r\n            h1 {\r\n                font-size: 22px !important;\r\n            }\r\n\r\n            h2 {\r\n                font-size: 18px !important;\r\n            }\r\n\r\n            h3 {\r\n                font-size: 16px !important;\r\n            }\r\n\r\n            .container {\r\n                padding: 0 !important;\r\n                width: 100% !important;\r\n            }\r\n\r\n            .content {\r\n                padding: 0 !important;\r\n            }\r\n\r\n            .content-wrap {\r\n                padding: 10px !important;\r\n            }\r\n\r\n            .invoice {\r\n                width: 100% !important;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n\r\n<body itemscope itemtype=\"http://schema.org/EmailMessage\"\r\n      style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; -webkit-font-smoothing: antialiased; -webkit-text-size-adjust: none; width: 100% !important; height: 100%; line-height: 1.6em; background-color: #f6f6f6; margin: 0;\"\r\n      bgcolor=\"#f6f6f6\">\r\n\r\n<table class=\"body-wrap\"\r\n       style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\"\r\n       bgcolor=\"#f6f6f6\">\r\n    <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n        <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"\r\n            valign=\"top\"></td>\r\n        <td class=\"container\" width=\"600\"\r\n            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\"\r\n            valign=\"top\">\r\n            <div class=\"content\"\r\n                 style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\">\r\n                <table class=\"main\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"\r\n                       style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\"\r\n                       bgcolor=\"#fff\">\r\n                    <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                        <td class=\"content-wrap aligncenter\"\r\n                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 20px;\"\r\n                            align=\"center\" valign=\"top\">\r\n                            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\"\r\n                                   style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"\r\n                                        valign=\"top\">\r\n                                        <h1 class=\"aligncenter\"\r\n                                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,\'Lucida Grande\',sans-serif; box-sizing: border-box; font-size: 32px; color: #000; line-height: 1.2em; font-weight: 500; text-align: center; margin: 40px 0 0;\"\r\n                                            align=\"center\"> {ord_title} </h1>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"\r\n                                        valign=\"top\">\r\n                                        <h2 class=\"aligncenter\"\r\n                                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,\'Lucida Grande\',sans-serif; box-sizing: border-box; font-size: 24px; color: #000; line-height: 1.2em; font-weight: 400; text-align: center; margin: 40px 0 0;\"\r\n                                            align=\"center\">感谢您的惠顾。</h2>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block aligncenter\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"\r\n                                        align=\"center\" valign=\"top\">\r\n                                        <table class=\"invoice\"\r\n                                               style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 80%; margin: 40px auto;\">\r\n                                            <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\">\r\n                                                    订单号: {order_id}<br style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"/>\r\n                                                    {created_at}<br style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"/>\r\n                                                    系统已向工作人员发送订单通知，代充类商品需要工作人员手动处理，请耐心等待通知！\r\n                                                </td>\r\n                                            </tr>\r\n                                            <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\"\r\n                                                    valign=\"top\">\r\n                                                    <table class=\"invoice-items\" cellpadding=\"0\" cellspacing=\"0\"\r\n                                                           style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; margin: 0;\">\r\n                                                        <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                            <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\"\r\n                                                                valign=\"top\">{ord_title}\r\n                                                            </td>\r\n                                                            <td class=\"alignright\"\r\n                                                                style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 1px; border-top-color: #eee; border-top-style: solid; margin: 0; padding: 5px 0;\"\r\n                                                                align=\"right\" valign=\"top\">\r\n                                                            </td>\r\n                                                        </tr>\r\n\r\n                                                        <tr class=\"total\"\r\n                                                            style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                                            <td class=\"alignright\" width=\"80%\"\r\n                                                                style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 2px; border-top-color: #333; border-top-style: solid; border-bottom-color: #333; border-bottom-width: 2px; border-bottom-style: solid; font-weight: 700; margin: 0; padding: 5px 0;\"\r\n                                                                align=\"right\" valign=\"top\">总价\r\n                                                            </td>\r\n                                                            <td class=\"alignright\"\r\n                                                                style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top-width: 2px; border-top-color: #333; border-top-style: solid; border-bottom-color: #333; border-bottom-width: 2px; border-bottom-style: solid; font-weight: 700; margin: 0; padding: 5px 0;\"\r\n                                                                align=\"right\" valign=\"top\">{ord_price} ¥\r\n                                                            </td>\r\n                                                        </tr>\r\n                                                    </table>\r\n                                                </td>\r\n                                            </tr>\r\n                                        </table>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block aligncenter\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"\r\n                                        align=\"center\" valign=\"top\">\r\n                                        <a href=\"{weburl}\"\r\n                                           style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; color: #348eda; text-decoration: underline; margin: 0;\">{webname}</a>\r\n                                    </td>\r\n                                </tr>\r\n                                <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                                    <td class=\"content-block aligncenter\"\r\n                                        style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"\r\n                                        align=\"center\" valign=\"top\">\r\n                                        {webname} Inc. {created_at}\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n                <div class=\"footer\"\r\n                     style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\">\r\n                    <table width=\"100%\"\r\n                           style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n                        <tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\">\r\n\r\n                        </tr>\r\n                    </table>\r\n                </div>\r\n            </div>\r\n        </td>\r\n        <td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"\r\n            valign=\"top\"></td>\r\n    </tr>\r\n</table>\r\n</body>\r\n</html>', 'pending_order', now(), now(), NULL);
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL COMMENT '所属分类id',
  `gd_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名称',
  `gd_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品描述',
  `gd_keywords` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品关键字',
  `picture` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '商品图片',
  `sell_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '售价',
  `in_stock` int NOT NULL DEFAULT '0' COMMENT '库存',
  `sales_volume` int DEFAULT '0' COMMENT '销量',
  `ord` int DEFAULT '1' COMMENT '排序权重 越大越靠前',
  `payment_limit` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '仅允许的支付方式',
  `buy_limit_num` int NOT NULL DEFAULT '0' COMMENT '限制单次购买最大数量，0为不限制',
  `buy_prompt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '购买提示',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '商品描述',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '商品类型  1自动发货 2人工处理',
  `wholesale_price_cnf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '批发价配置',
  `other_ipu_cnf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '其他输入框配置',
  `api_hook` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '回调事件',
  `preselection` decimal(10,2) DEFAULT NULL COMMENT '自选加价',
  `is_open` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用，1是 0否',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='商品表';

-- ----------------------------
-- Records of goods
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for goods_group
-- ----------------------------
DROP TABLE IF EXISTS `goods_group`;
CREATE TABLE `goods_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gp_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '分类名称',
  `is_open` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用，1是 0否',
  `ord` int NOT NULL DEFAULT '1' COMMENT '排序权重 越大越靠前',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='商品分类表';

-- ----------------------------
-- Records of goods_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '订单号',
  `goods_id` int NOT NULL COMMENT '关联商品id',
  `coupon_id` int DEFAULT '0' COMMENT '关联优惠码id',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '订单名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1自动发货 2人工处理',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品单价',
  `buy_amount` int NOT NULL DEFAULT '1' COMMENT '购买数量',
  `coupon_discount_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠码优惠价格',
  `wholesale_discount_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '批发价优惠',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `actual_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际支付价格',
  `search_pwd` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '查询密码',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '下单邮箱',
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '订单详情',
  `pay_id` int DEFAULT NULL COMMENT '支付通道id',
  `buy_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '购买者下单IP地址',
  `trade_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '第三方支付订单号',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1待支付 2待处理 3处理中 4已完成 5处理失败 6异常 -1过期',
  `carmi_id` int COMMENT '关联预选卡密ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_order_sn` (`order_sn`) USING BTREE,
  KEY `idx_goods_id` (`goods_id`) USING BTREE,
  KEY `idex_email` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='订单表';

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for admin_extension_histories
-- ----------------------------
DROP TABLE IF EXISTS `admin_extension_histories`;
CREATE TABLE `admin_extension_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `version` varchar(20) NOT NULL DEFAULT '0',
  `detail` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for admin_extensions
-- ----------------------------
DROP TABLE IF EXISTS `admin_extensions`;
CREATE TABLE `admin_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `version` text,
  `is_enabled` tinyint(4) DEFAULT NULL,
  `options` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for pays
-- ----------------------------
DROP TABLE IF EXISTS `pays`;
CREATE TABLE `pays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pay_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付名称',
  `pay_check` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付标识',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '通道费率',
  `pay_method` tinyint(1) NOT NULL COMMENT '支付方式 1跳转 2扫码',
  `pay_client` tinyint(1) NOT NULL DEFAULT '1' COMMENT '支付场景：1电脑pc 2手机 3全部',
  `merchant_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商户 ID',
  `merchant_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '商户 KEY',
  `merchant_pem` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商户密钥',
  `pay_handleroute` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '支付处理路由',
  `is_open` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用 1是 0否',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_pay_check` (`pay_check`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pays
-- ----------------------------
BEGIN;
INSERT INTO `pays` VALUES (null, '支付宝当面付', 'zfbf2f', 0, 2, 3, '商户号', '支付宝公钥', '商户私钥', '/pay/alipay', 1, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, '支付宝 PC', 'aliweb', 0, 1, 1, '商户号', '', '密钥', '/pay/alipay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, '支付宝 WAP', 'aliwap', 0, 1, 2, '商户号', '', '密钥', '/pay/alipay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, '微信扫码', 'wescan', 0, 2, 1, '商户号', '', 'V2密钥', '/pay/wepay', 1, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, '微信小程序', 'miniapp', 0, 1, 2, '商户号', '', 'V2密钥', '/pay/wepay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, '码支付 QQ', 'mqq', 0, 1, 1, '商户号', '', '密钥', '/pay/mapay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, '码支付支付宝', 'mzfb', 0, 1, 1, '商户号', '', '密钥', '/pay/mapay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, '码支付微信', 'mwx', 0, 1, 1, '商户号', '', '密钥', '/pay/mapay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, 'Paysapi 支付宝', 'pszfb', 0, 1, 1, '商户号', '', '密钥', '/pay/paysapi', 0,now(), now(), NULL);
INSERT INTO `pays` VALUES (null, 'Paysapi 微信', 'pswx', 0, 1, 1, '商户号', '', '密钥', '/pay/paysapi', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, 'Payjs 微信扫码', 'payjswescan', 0, 1, 1, '商户号', '', '密钥', '/pay/payjs', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, '易支付-支付宝', 'alipay', 0, 1, 1, '商户号', '', '密钥', '/pay/yipay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, '易支付-微信', 'wxpay', 0, 1, 1, '商户号', NULL, '密钥', '/pay/yipay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, '易支付-QQ 钱包', 'qqpay', 0, 1, 1, '商户号', NULL, '密钥', '/pay/yipay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, 'PayPal', 'paypal', 0, 1, 1, '商户号', NULL, '密钥', '/pay/paypal', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, 'V 免签支付宝', 'vzfb', 0, 1, 1, 'V 免签通讯密钥', NULL, 'V 免签地址 例如 https://vpay.qq.com/    结尾必须有/', 'pay/vpay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, 'V 免签微信', 'vwx', 1, 0, 1, 'V 免签通讯密钥', NULL, 'V 免签地址 例如 https://vpay.qq.com/    结尾必须有/', 'pay/vpay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, 'Stripe[微信支付宝]', 'stripe', 0, 1, 1, 'pk开头的可发布密钥', NULL, 'sk开头的密钥', 'pay/stripe', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, 'Coinbase[加密货币]', 'coinbase', 0, 1, 3, '费率', 'API密钥', '共享密钥', 'pay/coinbase', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null, 'Epusdt[trc20]', 'epusdt', 0, 1, 3, 'API密钥', '不填即可', 'api请求地址', 'pay/epusdt', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null ,'USDT-TRC20', 'tokenpay-usdt-trc', 0, 1, 3, 'USDT_TRC20', '你的API密钥', 'TokenPay地址', 'pay/tokenpay', 1, now(), now(), NULL);
INSERT INTO `pays` VALUES (null ,'TRX', 'tokenpay-trx', 0, 1, 3, 'TRX', 'API密钥', 'TokenPay地址', 'pay/tokenpay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null ,'ETH', 'tokenpay-eth', 0, 1, 3, 'ETH', 'API密钥', 'TokenPay地址', 'pay/tokenpay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null ,'USDT-ERC20', 'tokenpay-usdt-erc', 0, 1, 3, 'USDT_ERC20', 'API密钥', 'TokenPay地址', 'pay/tokenpay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null ,'USDC-ERC20', 'tokenpay-usdc-erc', 0, 1, 3, 'USDC_ERC20', 'API密钥', 'TokenPay地址', 'pay/tokenpay', 0, now(), now(), NULL);
INSERT INTO `pays` VALUES (null ,'币安支付', 'binance', 0, 1, 3, 'USDT', 'API密钥', '密钥', 'pay/binance', 1, now(), now(), NULL);

-- ----------------------------
-- Table structure for articles
-- ----------------------------

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `link` varchar(255) NOT NULL COMMENT '文章链接',
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `content` text NOT NULL COMMENT '文章内容',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
BEGIN;
COMMIT;