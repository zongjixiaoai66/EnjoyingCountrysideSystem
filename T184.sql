/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t184`;
CREATE DATABASE IF NOT EXISTS `t184` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t184`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/lexiangtianyuan/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/lexiangtianyuan/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/lexiangtianyuan/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-11 02:14:30'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-11 02:14:30'),
	(3, 'shangjia_xingji_types', '农民信用类型', 1, '一级', NULL, NULL, '2022-03-11 02:14:30'),
	(4, 'shangjia_xingji_types', '农民信用类型', 2, '二级', NULL, NULL, '2022-03-11 02:14:30'),
	(5, 'shangjia_xingji_types', '农民信用类型', 3, '三级', NULL, NULL, '2022-03-11 02:14:30'),
	(6, 'tudi_zulin_types', '是否租赁', 1, '在租赁', NULL, NULL, '2022-03-11 02:14:30'),
	(7, 'tudi_zulin_types', '是否租赁', 2, '未租赁', NULL, NULL, '2022-03-11 02:14:30'),
	(8, 'tudi_haohuai_types', '土地状态', 1, '好地', NULL, NULL, '2022-03-11 02:14:30'),
	(9, 'tudi_haohuai_types', '土地状态', 2, '坏地', NULL, NULL, '2022-03-11 02:14:30'),
	(10, 'tudi_shumu_types', '有无树', 1, '有树', NULL, NULL, '2022-03-11 02:14:30'),
	(11, 'tudi_shumu_types', '有无树', 2, '无树', NULL, NULL, '2022-03-11 02:14:30'),
	(12, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-11 02:14:30'),
	(13, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-11 02:14:30'),
	(14, 'tudi_types', '土地类型', 1, '土地类型1', NULL, NULL, '2022-03-11 02:14:30'),
	(15, 'tudi_types', '土地类型', 2, '土地类型2', NULL, NULL, '2022-03-11 02:14:30'),
	(16, 'tudi_types', '土地类型', 3, '土地类型3', NULL, NULL, '2022-03-11 02:14:30'),
	(17, 'tudi_types', '土地类型', 4, '土地类型4', NULL, NULL, '2022-03-11 02:14:30'),
	(18, 'tudi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-11 02:14:30'),
	(19, 'pingjia_types', '是否评价', 1, '未评价', NULL, NULL, '2022-03-11 02:14:30'),
	(20, 'pingjia_types', '是否评价', 2, '已评价', NULL, NULL, '2022-03-11 02:14:30');

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '农民名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '头像 ',
  `shangjia_xingji_types` int DEFAULT NULL COMMENT '农民信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '农民介绍',
  `shangjia_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='农民';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `username`, `password`, `shangjia_name`, `shangjia_phone`, `shangjia_email`, `shangjia_photo`, `shangjia_xingji_types`, `new_money`, `shangjia_content`, `shangjia_delete`, `create_time`) VALUES
	(1, '农民1', '123456', '农民名称1', '17703786901', '1@qq.com', 'http://localhost:8080/lexiangtianyuan/upload/shangjia1.jpg', 3, 1530.80, '农民介绍1', 1, '2022-03-11 02:14:34'),
	(2, '农民2', '123456', '农民名称2', '17703786902', '2@qq.com', 'http://localhost:8080/lexiangtianyuan/upload/shangjia2.jpg', 2, 95.99, '农民介绍2', 1, '2022-03-11 02:14:34'),
	(3, '农民3', '123456', '农民名称3', '17703786903', '3@qq.com', 'http://localhost:8080/lexiangtianyuan/upload/shangjia3.jpg', 3, 582.42, '农民介绍3', 1, '2022-03-11 02:14:34');

DROP TABLE IF EXISTS `shangjiajianyi`;
CREATE TABLE IF NOT EXISTS `shangjiajianyi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangjia_id` int DEFAULT NULL COMMENT '农民',
  `shangjiajianyi_name` varchar(200) DEFAULT NULL COMMENT '建议标题 Search111  ',
  `shangjiajianyi_content` text COMMENT '建议详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '建议时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='农民建议';

DELETE FROM `shangjiajianyi`;
INSERT INTO `shangjiajianyi` (`id`, `shangjia_id`, `shangjiajianyi_name`, `shangjiajianyi_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '建议标题1', '建议详情1', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(2, 2, '建议标题2', '建议详情2', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(3, 1, '建议标题3', '建议详情3', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(4, 2, '建议标题4', '建议详情4', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(5, 1, '建议标题5', '建议详情5', '2022-03-11 02:14:34', '2022-03-11 02:14:34');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', '12s2n6v0wrg4z8al2eibs6xb8c8xzgz2', '2022-03-11 02:11:34', '2024-05-14 08:44:45'),
	(2, 1, 'a1', 'yonghu', '用户', 'xb6zdoh0jf21aqw4lvg96a4auix1owiz', '2022-03-11 02:27:55', '2024-05-14 08:46:08'),
	(3, 2, 'a2', 'yonghu', '用户', 'uvhzjs6ggm782z4x77m1gwenoczj5uo2', '2022-03-11 05:15:16', '2022-03-11 06:15:16'),
	(4, 1, 'a1', 'shangjia', '农民', '1y37jdcznbpf1t3xqa68pyyd0sc7opo2', '2022-03-11 05:17:29', '2024-05-14 08:45:47');

DROP TABLE IF EXISTS `tudi`;
CREATE TABLE IF NOT EXISTS `tudi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int DEFAULT NULL COMMENT '农民',
  `tudi_name` varchar(200) DEFAULT NULL COMMENT '土地名称  Search111 ',
  `tudi_photo` varchar(200) DEFAULT NULL COMMENT '土地照片',
  `tudi_file` varchar(200) DEFAULT NULL COMMENT '合同',
  `tudi_address` varchar(200) DEFAULT NULL COMMENT '所在地址',
  `tudi_types` int DEFAULT NULL COMMENT '土地类型 Search111',
  `tudi_shumu_types` int DEFAULT NULL COMMENT '有无树 Search111',
  `tudi_haohuai_types` int DEFAULT NULL COMMENT '土地状态 Search111',
  `tudi_old_money` decimal(10,2) DEFAULT NULL COMMENT '土地原价/月 ',
  `tudi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/月',
  `tudi_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `tudi_content` text COMMENT '土地介绍 ',
  `tudi_zulin_types` int DEFAULT NULL COMMENT '是否租赁 Search111',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `tudi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='土地';

DELETE FROM `tudi`;
INSERT INTO `tudi` (`id`, `shangjia_id`, `tudi_name`, `tudi_photo`, `tudi_file`, `tudi_address`, `tudi_types`, `tudi_shumu_types`, `tudi_haohuai_types`, `tudi_old_money`, `tudi_new_money`, `tudi_clicknum`, `tudi_content`, `tudi_zulin_types`, `shangxia_types`, `tudi_delete`, `create_time`) VALUES
	(1, 2, '土地名称1', 'http://localhost:8080/lexiangtianyuan/upload/tudi1.jpg', 'http://localhost:8080/lexiangtianyuan/upload/file.rar', '所在地址1', 3, 2, 2, 599.69, 183.93, 414, '土地介绍1', 2, 1, 1, '2022-03-11 02:14:34'),
	(2, 3, '土地名称2', 'http://localhost:8080/lexiangtianyuan/upload/tudi2.jpg', 'http://localhost:8080/lexiangtianyuan/upload/file.rar', '所在地址2', 4, 2, 1, 863.94, 111.44, 133, '土地介绍2', 2, 1, 1, '2022-03-11 02:14:34'),
	(3, 2, '土地名称3', 'http://localhost:8080/lexiangtianyuan/upload/tudi3.jpg', 'http://localhost:8080/lexiangtianyuan/upload/file.rar', '所在地址3', 4, 2, 2, 816.98, 29.43, 337, '土地介绍3', 2, 1, 1, '2022-03-11 02:14:34'),
	(4, 3, '土地名称4', 'http://localhost:8080/lexiangtianyuan/upload/tudi4.jpg', 'http://localhost:8080/lexiangtianyuan/upload/file.rar', '所在地址4', 1, 2, 2, 879.30, 72.26, 361, '土地介绍4', 1, 1, 1, '2022-03-11 02:14:34'),
	(5, 1, '土地名称5', 'http://localhost:8080/lexiangtianyuan/upload/tudi5.jpg', 'http://localhost:8080/lexiangtianyuan/upload/file.rar', '所在地址5', 3, 1, 1, 782.28, 474.88, 396, '土地介绍5', 1, 1, 1, '2022-03-11 02:14:34');

DROP TABLE IF EXISTS `tudi_collection`;
CREATE TABLE IF NOT EXISTS `tudi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tudi_id` int DEFAULT NULL COMMENT '土地',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tudi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='土地收藏';

DELETE FROM `tudi_collection`;
INSERT INTO `tudi_collection` (`id`, `tudi_id`, `yonghu_id`, `tudi_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(2, 2, 1, 1, '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(3, 3, 2, 1, '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(4, 4, 2, 1, '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(5, 5, 1, 1, '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(6, 4, 1, 1, '2024-05-14 07:46:23', '2024-05-14 07:46:23');

DROP TABLE IF EXISTS `tudi_commentback`;
CREATE TABLE IF NOT EXISTS `tudi_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tudi_id` int DEFAULT NULL COMMENT '土地',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tudi_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='土地评价';

DELETE FROM `tudi_commentback`;
INSERT INTO `tudi_commentback` (`id`, `tudi_id`, `yonghu_id`, `tudi_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2022-03-11 02:14:34', '回复信息1', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(2, 2, 3, '评价内容2', '2022-03-11 02:14:34', '回复信息2', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(3, 3, 2, '评价内容3', '2022-03-11 02:14:34', '回复信息3', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(4, 4, 2, '评价内容4', '2022-03-11 02:14:34', '回复信息4', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(5, 5, 1, '评价内容5', '2022-03-11 02:14:34', '回复信息5', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(6, 4, 1, '222', '2022-03-11 03:43:29', NULL, NULL, '2022-03-11 03:43:29'),
	(7, 5, 2, 'enenn', '2022-03-11 05:16:22', '451', '2022-03-11 05:18:00', '2022-03-11 05:16:22');

DROP TABLE IF EXISTS `tudi_order`;
CREATE TABLE IF NOT EXISTS `tudi_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tudi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '租赁单号',
  `tudi_id` int DEFAULT NULL COMMENT '土地',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '租赁时间',
  `daoqi_time` timestamp NULL DEFAULT NULL COMMENT '到期时间',
  `pingjia_types` int DEFAULT NULL COMMENT '是否评价',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='土地租赁订单';

DELETE FROM `tudi_order`;
INSERT INTO `tudi_order` (`id`, `tudi_order_uuid_number`, `tudi_id`, `yonghu_id`, `insert_time`, `daoqi_time`, `pingjia_types`, `create_time`) VALUES
	(2, '1646967364519', 4, 1, '2022-03-11 02:56:05', '2022-07-11 02:56:05', 2, '2022-03-11 02:56:05'),
	(3, '1646975730568', 5, 2, '2022-03-11 05:15:31', '2022-06-11 05:15:31', 2, '2022-03-11 05:15:31');

DROP TABLE IF EXISTS `tudi_zhongzhi`;
CREATE TABLE IF NOT EXISTS `tudi_zhongzhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tudi_order_id` int DEFAULT NULL COMMENT '土地订单',
  `shangjia_id` int DEFAULT NULL COMMENT '用户',
  `tudi_zhongzhi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111  ',
  `tudi_zhongzhi_photo` varchar(200) DEFAULT NULL COMMENT '照片 ',
  `tudi_zhongzhi_video` varchar(200) DEFAULT NULL COMMENT '视频 ',
  `tudi_zhongzhi_content` text COMMENT '详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='种植详情';

DELETE FROM `tudi_zhongzhi`;
INSERT INTO `tudi_zhongzhi` (`id`, `tudi_order_id`, `shangjia_id`, `tudi_zhongzhi_name`, `tudi_zhongzhi_photo`, `tudi_zhongzhi_video`, `tudi_zhongzhi_content`, `insert_time`, `create_time`) VALUES
	(6, 2, 3, 'sss', 'http://localhost:8080/lexiangtianyuan/upload/1646971005360.jpg', 'http://localhost:8080/lexiangtianyuan/upload/1646971008586.mp4', '<p>ss</p>', '2022-03-11 03:56:51', '2022-03-11 03:56:51'),
	(7, 3, 1, '开始种植', 'http://localhost:8080/lexiangtianyuan/upload/1646975911967.jpg', 'http://localhost:8080/lexiangtianyuan/upload/1646975915887.mp4', '<p>231</p>', '2022-03-11 05:18:39', '2022-03-11 05:18:39');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/lexiangtianyuan/upload/yonghu1.jpg', 1, '1@qq.com', 215.48, '2022-03-11 02:14:34'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/lexiangtianyuan/upload/yonghu2.jpg', 1, '2@qq.com', 9095.71, '2022-03-11 02:14:34'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/lexiangtianyuan/upload/yonghu3.jpg', 1, '3@qq.com', 515.03, '2022-03-11 02:14:34');

DROP TABLE IF EXISTS `yonghujianyi`;
CREATE TABLE IF NOT EXISTS `yonghujianyi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yonghujianyi_name` varchar(200) DEFAULT NULL COMMENT '建议标题 Search111  ',
  `yonghujianyi_content` text COMMENT '建议详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '建议时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='用户建议';

DELETE FROM `yonghujianyi`;
INSERT INTO `yonghujianyi` (`id`, `yonghu_id`, `yonghujianyi_name`, `yonghujianyi_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '建议标题1', '建议详情1', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(2, 3, '建议标题2', '建议详情2', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(3, 1, '建议标题3', '建议详情3', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(4, 2, '建议标题4', '建议详情4', '2022-03-11 02:14:34', '2022-03-11 02:14:34'),
	(5, 3, '建议标题5', '建议详情5', '2022-03-11 02:14:34', '2022-03-11 02:14:34');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
