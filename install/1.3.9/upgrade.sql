ALTER TABLE `t_config` CHANGE `value` `value` TEXT  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置内容';
ALTER TABLE `t_config` CHANGE `tag` `tag` TEXT  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注';
ALTER TABLE `t_config` CHANGE `name` `name` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置名';
ALTER TABLE `t_config_cat` CHANGE `catname` `catname` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置分类名';
ALTER TABLE `t_config_cat` CHANGE `key` `key` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置分类KEY';
ALTER TABLE `t_email` CHANGE `mailaddress` `mailaddress` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱地址';
ALTER TABLE `t_email` CHANGE `sendmail` `sendmail` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT ' 发件人emal ';
ALTER TABLE `t_email` CHANGE `sendname` `sendname` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发送人昵称';
ALTER TABLE `t_email` CHANGE `host` `host` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发送邮件服务端';
ALTER TABLE `t_email_code` CHANGE `email` `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱';
ALTER TABLE `t_email_code` CHANGE `result` `result` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '结果';
ALTER TABLE `t_email_queue` CHANGE `subject` `subject` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题';
ALTER TABLE `t_order` CHANGE `email` `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱';
ALTER TABLE `t_payment` CHANGE `payimage` `payimage` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片';
ALTER TABLE `t_payment` CHANGE `app_id` `app_id` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `t_payment` CHANGE `app_secret` `app_secret` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `t_products` CHANGE `name` `name` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品名';
ALTER TABLE `t_user` CHANGE `nickname` `nickname` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名';
ALTER TABLE `t_user` CHANGE `email` `email` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱';
ALTER TABLE `t_user` CHANGE `password` `password` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码';
ALTER TABLE `t_payment` ADD `configure4` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '配置4' AFTER `configure3`;
UPDATE `t_payment` SET `configure3` = 'https://codepay.zlkb.net/api/order' WHERE `t_payment`.`id` = 8;
UPDATE `t_payment` SET `configure3` = 'https://codepay.zlkb.net/api/order' WHERE `t_payment`.`id` = 9;
UPDATE `t_payment` SET `configure3` = 'https://codepay.zlkb.net/api/order' WHERE `t_payment`.`id` = 10;
UPDATE `t_payment` SET `configure4` = '0' WHERE `t_payment`.`id` = 8;
UPDATE `t_payment` SET `configure4` = '0' WHERE `t_payment`.`id` = 9;
UPDATE `t_payment` SET `configure4` = '0' WHERE `t_payment`.`id` = 10;
UPDATE `t_payment` SET `payment` = '支付宝电脑网站支付(WEB)' WHERE `t_payment`.`id` = 5;
