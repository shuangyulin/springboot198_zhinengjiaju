/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhinengjiaju
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhinengjiaju` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhinengjiaju`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-22 11:06:59'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-22 11:06:59'),(3,'jiaju_types','家具类型',1,'家具类型1',NULL,NULL,'2022-03-22 11:06:59'),(4,'jiaju_types','家具类型',2,'家具类型2',NULL,NULL,'2022-03-22 11:06:59'),(5,'jiaju_types','家具类型',3,'家具类型3',NULL,NULL,'2022-03-22 11:06:59'),(6,'jiaju_types','家具类型',4,'家具类型4',NULL,NULL,'2022-03-22 11:06:59'),(7,'zhuangtai_types','状态',1,'开',NULL,NULL,'2022-03-22 11:06:59'),(8,'zhuangtai_types','状态',2,'关',NULL,NULL,'2022-03-22 11:06:59'),(9,'quyu_types','区域',1,'客厅',NULL,NULL,'2022-03-22 11:06:59'),(10,'quyu_types','区域',2,'大卧室',NULL,NULL,'2022-03-22 11:07:00'),(11,'quyu_types','区域',3,'小卧室',NULL,NULL,'2022-03-22 11:07:00'),(12,'quyu_types','区域',4,'阳台',NULL,NULL,'2022-03-22 11:07:00'),(13,'quyu_types','区域',5,'厨房',NULL,NULL,'2022-03-22 11:07:00'),(14,'zhixingzhuangtai_types','执行状态',1,'执行开启',NULL,NULL,'2022-03-22 11:07:00'),(15,'zhixingzhuangtai_types','执行状态',2,'执行关闭',NULL,NULL,'2022-03-22 11:07:00'),(16,'renwuzhuangtai_types','任务状态',1,'未执行',NULL,NULL,'2022-03-22 11:07:00'),(17,'renwuzhuangtai_types','任务状态',2,'已执行',NULL,NULL,'2022-03-22 11:07:00'),(18,'jiaju_types','家具类型',5,'家具类型5',NULL,'','2022-03-22 13:29:11');

/*Table structure for table `jiaju` */

DROP TABLE IF EXISTS `jiaju`;

CREATE TABLE `jiaju` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiaju_uuid_number` varchar(200) DEFAULT NULL COMMENT '家具编号  Search111 ',
  `jiaju_name` varchar(200) DEFAULT NULL COMMENT '家具名称  Search111 ',
  `jiaju_photo` varchar(200) DEFAULT NULL COMMENT '家具照片',
  `jiaju_types` int(11) DEFAULT NULL COMMENT '家具类型 Search111',
  `quyu_types` int(11) DEFAULT NULL COMMENT '区域 Search111',
  `jiaju_content` text COMMENT '家具介绍 ',
  `zhuangtai_types` int(11) DEFAULT NULL COMMENT '状态 Search111',
  `jiaju_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='家具';

/*Data for the table `jiaju` */

insert  into `jiaju`(`id`,`yonghu_id`,`jiaju_uuid_number`,`jiaju_name`,`jiaju_photo`,`jiaju_types`,`quyu_types`,`jiaju_content`,`zhuangtai_types`,`jiaju_delete`,`create_time`) values (1,3,'164791842378216','家具名称1','http://localhost:8080/zhinengjiaju/upload/jiaju1.jpg',2,4,'家具介绍1',2,1,'2022-03-22 11:07:03'),(2,2,'164791842378213','家具名称2','http://localhost:8080/zhinengjiaju/upload/jiaju2.jpg',1,1,'家具介绍2',1,1,'2022-03-22 11:07:03'),(3,3,'164791842378215','家具名称3','http://localhost:8080/zhinengjiaju/upload/jiaju3.jpg',4,3,'家具介绍3',2,1,'2022-03-22 11:07:03'),(4,1,'16479184237822','家具名称4','http://localhost:8080/zhinengjiaju/upload/jiaju4.jpg',1,2,'家具介绍4',2,1,'2022-03-22 11:07:03'),(5,2,'164791842378220','家具名称5','http://localhost:8080/zhinengjiaju/upload/jiaju5.jpg',1,1,'家具介绍5',1,1,'2022-03-22 11:07:03'),(6,1,'1647926981516','家具99','http://localhost:8080/zhinengjiaju/upload/1647926991478.jpg',4,3,'<p>大厦十多个</p>',2,1,'2022-03-22 13:30:00');

/*Table structure for table `renwu` */

DROP TABLE IF EXISTS `renwu`;

CREATE TABLE `renwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaju_id` int(11) DEFAULT NULL COMMENT '家具',
  `renwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '任务编号  Search111 ',
  `renwu_name` varchar(200) DEFAULT NULL COMMENT '任务名称  Search111 ',
  `renwu_content` text COMMENT '任务介绍 ',
  `zhixingzhuangtai_types` int(11) DEFAULT NULL COMMENT '执行状态 Search111',
  `renwuzhuangtai_types` int(11) DEFAULT NULL COMMENT '任务状态 Search111',
  `renwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `zhixing_time` timestamp NULL DEFAULT NULL COMMENT '执行时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='任务';

/*Data for the table `renwu` */

insert  into `renwu`(`id`,`jiaju_id`,`renwu_uuid_number`,`renwu_name`,`renwu_content`,`zhixingzhuangtai_types`,`renwuzhuangtai_types`,`renwu_delete`,`zhixing_time`,`insert_time`,`create_time`) values (1,1,'164791842378810','任务名称1','任务介绍1',2,1,2,'2022-03-22 11:07:03','2022-03-22 11:07:03','2022-03-22 11:07:03'),(2,2,'164791842378820','任务名称2','任务介绍2',2,2,1,'2022-03-22 11:07:03','2022-03-22 11:07:03','2022-03-22 11:07:03'),(3,3,'16479184237885','任务名称3','任务介绍3',1,2,1,'2022-03-22 11:07:03','2022-03-22 11:07:03','2022-03-22 11:07:03'),(4,4,'16479184237888','任务名称4','任务介绍4',2,2,2,'2022-03-22 11:07:03','2022-03-22 11:07:03','2022-03-22 11:07:03'),(5,5,'164791842378818','任务名称5','任务介绍5',2,2,1,'2022-03-22 11:07:03','2022-03-22 11:07:03','2022-03-22 11:07:03'),(6,4,'1647925615550','关闭家具名称4 ','<p>关闭家具名称4&nbsp;</p>',2,2,1,'2022-03-22 13:10:26','2022-03-22 13:07:37','2022-03-22 13:07:37'),(7,6,'1647927019543','家具99定时关闭','<p>家具99定时关闭</p>',2,2,1,'2022-03-22 13:32:33','2022-03-22 13:30:38','2022-03-22 13:30:38');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','sq81f2ks948pqdgfqt1w4h4tic0vawfg','2022-03-22 11:09:04','2022-03-22 14:27:50'),(2,1,'a1','yonghu','用户','otz0wjopcp5bkj9j7pify7wrik3ugy8b','2022-03-22 13:06:28','2022-03-22 14:29:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/zhinengjiaju/upload/yonghu1.jpg',2,'1@qq.com','2022-03-22 11:07:03'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/zhinengjiaju/upload/yonghu2.jpg',2,'2@qq.com','2022-03-22 11:07:03'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/zhinengjiaju/upload/yonghu3.jpg',1,'3@qq.com','2022-03-22 11:07:03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
