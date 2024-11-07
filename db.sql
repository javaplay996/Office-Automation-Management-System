/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm203t6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm203t6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm203t6`;

/*Table structure for table `bumen` */

DROP TABLE IF EXISTS `bumen`;

CREATE TABLE `bumen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenzhanghao` varchar(200) NOT NULL COMMENT '部门账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `bumenxingming` varchar(200) NOT NULL COMMENT '部门姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bumenzhanghao` (`bumenzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619005011539 DEFAULT CHARSET=utf8 COMMENT='部门';

/*Data for the table `bumen` */

insert  into `bumen`(`id`,`addtime`,`bumenzhanghao`,`mima`,`bumenxingming`) values (21,'2021-04-21 19:15:58','部门1','123456','部门姓名1');
insert  into `bumen`(`id`,`addtime`,`bumenzhanghao`,`mima`,`bumenxingming`) values (22,'2021-04-21 19:15:58','部门2','123456','部门姓名2');
insert  into `bumen`(`id`,`addtime`,`bumenzhanghao`,`mima`,`bumenxingming`) values (23,'2021-04-21 19:15:58','部门3','123456','部门姓名3');
insert  into `bumen`(`id`,`addtime`,`bumenzhanghao`,`mima`,`bumenxingming`) values (24,'2021-04-21 19:15:58','部门4','123456','部门姓名4');
insert  into `bumen`(`id`,`addtime`,`bumenzhanghao`,`mima`,`bumenxingming`) values (25,'2021-04-21 19:15:58','部门5','123456','部门姓名5');
insert  into `bumen`(`id`,`addtime`,`bumenzhanghao`,`mima`,`bumenxingming`) values (26,'2021-04-21 19:15:58','部门6','123456','部门姓名6');
insert  into `bumen`(`id`,`addtime`,`bumenzhanghao`,`mima`,`bumenxingming`) values (1619005011538,'2021-04-21 19:36:51','12','12','测试部门');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm203t6/upload/1619005163041.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm203t6/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm203t6/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `gongsigonggao` */

DROP TABLE IF EXISTS `gongsigonggao`;

CREATE TABLE `gongsigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `neirong` longtext COMMENT '内容',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619005128168 DEFAULT CHARSET=utf8 COMMENT='公司公告';

/*Data for the table `gongsigonggao` */

insert  into `gongsigonggao`(`id`,`addtime`,`biaoti`,`shijian`,`faburen`,`neirong`,`tupian`,`clicktime`,`clicknum`) values (91,'2021-04-21 19:15:58','标题1','2021-04-21 19:15:58','发布人1','内容1','http://localhost:8080/ssm203t6/upload/gongsigonggao_tupian1.jpg','2021-04-21 19:15:58',1);
insert  into `gongsigonggao`(`id`,`addtime`,`biaoti`,`shijian`,`faburen`,`neirong`,`tupian`,`clicktime`,`clicknum`) values (92,'2021-04-21 19:15:58','标题2','2021-04-21 19:15:58','发布人2','内容2','http://localhost:8080/ssm203t6/upload/gongsigonggao_tupian2.jpg','2021-04-21 19:15:58',2);
insert  into `gongsigonggao`(`id`,`addtime`,`biaoti`,`shijian`,`faburen`,`neirong`,`tupian`,`clicktime`,`clicknum`) values (93,'2021-04-21 19:15:58','标题3','2021-04-21 19:15:58','发布人3','内容3','http://localhost:8080/ssm203t6/upload/gongsigonggao_tupian3.jpg','2021-04-21 19:15:58',3);
insert  into `gongsigonggao`(`id`,`addtime`,`biaoti`,`shijian`,`faburen`,`neirong`,`tupian`,`clicktime`,`clicknum`) values (94,'2021-04-21 19:15:58','标题4','2021-04-21 19:15:58','发布人4','内容4','http://localhost:8080/ssm203t6/upload/gongsigonggao_tupian4.jpg','2021-04-21 19:39:47',5);
insert  into `gongsigonggao`(`id`,`addtime`,`biaoti`,`shijian`,`faburen`,`neirong`,`tupian`,`clicktime`,`clicknum`) values (95,'2021-04-21 19:15:58','标题5','2021-04-21 19:15:58','发布人5','内容5','http://localhost:8080/ssm203t6/upload/gongsigonggao_tupian5.jpg','2021-04-21 19:15:58',5);
insert  into `gongsigonggao`(`id`,`addtime`,`biaoti`,`shijian`,`faburen`,`neirong`,`tupian`,`clicktime`,`clicknum`) values (96,'2021-04-21 19:15:58','标题6','2021-04-21 19:15:58','发布人6','内容6','http://localhost:8080/ssm203t6/upload/gongsigonggao_tupian6.jpg','2021-04-21 19:15:58',6);
insert  into `gongsigonggao`(`id`,`addtime`,`biaoti`,`shijian`,`faburen`,`neirong`,`tupian`,`clicktime`,`clicknum`) values (1619005128167,'2021-04-21 19:38:48','测试','2021-03-31 00:00:00','测试','<p>测试</p>','http://localhost:8080/ssm203t6/upload/1619005125620.jpg','2021-04-21 19:39:51',1);

/*Table structure for table `gongzuobaobiao` */

DROP TABLE IF EXISTS `gongzuobaobiao`;

CREATE TABLE `gongzuobaobiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baobiaomingcheng` varchar(200) DEFAULT NULL COMMENT '报表名称',
  `tongjishijian` datetime DEFAULT NULL COMMENT '统计时间',
  `tongjineirong` varchar(200) DEFAULT NULL COMMENT '统计内容',
  `tongjiren` varchar(200) DEFAULT NULL COMMENT '统计人',
  `baobiaoneirong` longtext COMMENT '报表内容',
  `bumenzhanghao` varchar(200) DEFAULT NULL COMMENT '部门账号',
  `bumenxingming` varchar(200) DEFAULT NULL COMMENT '部门姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619005439226 DEFAULT CHARSET=utf8 COMMENT='工作报表';

/*Data for the table `gongzuobaobiao` */

insert  into `gongzuobaobiao`(`id`,`addtime`,`baobiaomingcheng`,`tongjishijian`,`tongjineirong`,`tongjiren`,`baobiaoneirong`,`bumenzhanghao`,`bumenxingming`) values (81,'2021-04-21 19:15:58','报表名称1','2021-04-21 19:15:58','统计内容1','统计人1','报表内容1','部门账号1','部门姓名1');
insert  into `gongzuobaobiao`(`id`,`addtime`,`baobiaomingcheng`,`tongjishijian`,`tongjineirong`,`tongjiren`,`baobiaoneirong`,`bumenzhanghao`,`bumenxingming`) values (82,'2021-04-21 19:15:58','报表名称2','2021-04-21 19:15:58','统计内容2','统计人2','报表内容2','部门账号2','部门姓名2');
insert  into `gongzuobaobiao`(`id`,`addtime`,`baobiaomingcheng`,`tongjishijian`,`tongjineirong`,`tongjiren`,`baobiaoneirong`,`bumenzhanghao`,`bumenxingming`) values (83,'2021-04-21 19:15:58','报表名称3','2021-04-21 19:15:58','统计内容3','统计人3','报表内容3','部门账号3','部门姓名3');
insert  into `gongzuobaobiao`(`id`,`addtime`,`baobiaomingcheng`,`tongjishijian`,`tongjineirong`,`tongjiren`,`baobiaoneirong`,`bumenzhanghao`,`bumenxingming`) values (84,'2021-04-21 19:15:58','报表名称4','2021-04-21 19:15:58','统计内容4','统计人4','报表内容4','部门账号4','部门姓名4');
insert  into `gongzuobaobiao`(`id`,`addtime`,`baobiaomingcheng`,`tongjishijian`,`tongjineirong`,`tongjiren`,`baobiaoneirong`,`bumenzhanghao`,`bumenxingming`) values (85,'2021-04-21 19:15:58','报表名称5','2021-04-21 19:15:58','统计内容5','统计人5','报表内容5','部门账号5','部门姓名5');
insert  into `gongzuobaobiao`(`id`,`addtime`,`baobiaomingcheng`,`tongjishijian`,`tongjineirong`,`tongjiren`,`baobiaoneirong`,`bumenzhanghao`,`bumenxingming`) values (86,'2021-04-21 19:15:58','报表名称6','2021-04-21 19:15:58','统计内容6','统计人6','报表内容6','部门账号6','部门姓名6');
insert  into `gongzuobaobiao`(`id`,`addtime`,`baobiaomingcheng`,`tongjishijian`,`tongjineirong`,`tongjiren`,`baobiaoneirong`,`bumenzhanghao`,`bumenxingming`) values (1619005439225,'2021-04-21 19:43:58','测试','2021-04-24 00:00:00','测试','测试','<p>测试</p>','12','测试部门');

/*Table structure for table `gongzuoneirong` */

DROP TABLE IF EXISTS `gongzuoneirong`;

CREATE TABLE `gongzuoneirong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumenzhanghao` varchar(200) DEFAULT NULL COMMENT '部门账号',
  `bumenxingming` varchar(200) DEFAULT NULL COMMENT '部门姓名',
  `gongzuobiaoti` varchar(200) DEFAULT NULL COMMENT '工作标题',
  `gongzuoshijian` datetime DEFAULT NULL COMMENT '工作时间',
  `gongzuoanpai` varchar(200) DEFAULT NULL COMMENT '工作安排',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `gongzuowenjian` varchar(200) DEFAULT NULL COMMENT '工作文件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619005419032 DEFAULT CHARSET=utf8 COMMENT='工作内容';

/*Data for the table `gongzuoneirong` */

insert  into `gongzuoneirong`(`id`,`addtime`,`bumenzhanghao`,`bumenxingming`,`gongzuobiaoti`,`gongzuoshijian`,`gongzuoanpai`,`gongzuoneirong`,`gongzuowenjian`) values (71,'2021-04-21 19:15:58','部门账号1','部门姓名1','工作标题1','2021-04-21 19:15:58','工作安排1','工作内容1','');
insert  into `gongzuoneirong`(`id`,`addtime`,`bumenzhanghao`,`bumenxingming`,`gongzuobiaoti`,`gongzuoshijian`,`gongzuoanpai`,`gongzuoneirong`,`gongzuowenjian`) values (72,'2021-04-21 19:15:58','部门账号2','部门姓名2','工作标题2','2021-04-21 19:15:58','工作安排2','工作内容2','');
insert  into `gongzuoneirong`(`id`,`addtime`,`bumenzhanghao`,`bumenxingming`,`gongzuobiaoti`,`gongzuoshijian`,`gongzuoanpai`,`gongzuoneirong`,`gongzuowenjian`) values (73,'2021-04-21 19:15:58','部门账号3','部门姓名3','工作标题3','2021-04-21 19:15:58','工作安排3','工作内容3','');
insert  into `gongzuoneirong`(`id`,`addtime`,`bumenzhanghao`,`bumenxingming`,`gongzuobiaoti`,`gongzuoshijian`,`gongzuoanpai`,`gongzuoneirong`,`gongzuowenjian`) values (74,'2021-04-21 19:15:58','部门账号4','部门姓名4','工作标题4','2021-04-21 19:15:58','工作安排4','工作内容4','');
insert  into `gongzuoneirong`(`id`,`addtime`,`bumenzhanghao`,`bumenxingming`,`gongzuobiaoti`,`gongzuoshijian`,`gongzuoanpai`,`gongzuoneirong`,`gongzuowenjian`) values (75,'2021-04-21 19:15:58','部门账号5','部门姓名5','工作标题5','2021-04-21 19:15:58','工作安排5','工作内容5','');
insert  into `gongzuoneirong`(`id`,`addtime`,`bumenzhanghao`,`bumenxingming`,`gongzuobiaoti`,`gongzuoshijian`,`gongzuoanpai`,`gongzuoneirong`,`gongzuowenjian`) values (76,'2021-04-21 19:15:58','部门账号6','部门姓名6','工作标题6','2021-04-21 19:15:58','工作安排6','工作内容6','');
insert  into `gongzuoneirong`(`id`,`addtime`,`bumenzhanghao`,`bumenxingming`,`gongzuobiaoti`,`gongzuoshijian`,`gongzuoanpai`,`gongzuoneirong`,`gongzuowenjian`) values (1619005419031,'2021-04-21 19:43:38','12','测试部门','测试','2021-04-16 00:00:00','测试','<p>测试</p>','http://localhost:8080/ssm203t6/upload/1619005415011.docx');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619005150991 DEFAULT CHARSET=utf8 COMMENT='公司新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-21 19:15:58','标题1','简介1','http://localhost:8080/ssm203t6/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-04-21 19:15:58','标题2','简介2','http://localhost:8080/ssm203t6/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-04-21 19:15:58','标题3','简介3','http://localhost:8080/ssm203t6/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-04-21 19:15:58','标题4','简介4','http://localhost:8080/ssm203t6/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-04-21 19:15:58','标题5','简介5','http://localhost:8080/ssm203t6/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-04-21 19:15:58','标题6','简介6','http://localhost:8080/ssm203t6/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619005150990,'2021-04-21 19:39:10','测试','测试','http://localhost:8080/ssm203t6/upload/1619005143742.jpg','<p>测试</p>');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','69w76rsq5syzs85azubzyaycqoa2n7d2','2021-04-21 19:35:49','2021-04-21 20:42:21');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619004987788,'11','yuangong','员工','chi3j70div9rt6ntegg3kl6j9ntgtdxz','2021-04-21 19:39:37','2021-04-21 20:41:17');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619005011538,'12','bumen','部门','vk2sxp4rl1vk97zpqvqw83nkb6v9tx6e','2021-04-21 19:43:01','2021-04-21 20:43:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-21 19:15:58');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619004987789 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`) values (11,'2021-04-21 19:15:57','员工1','123456','姓名1','男','773890001@qq.com','13823888881','http://localhost:8080/ssm203t6/upload/yuangong_zhaopian1.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`) values (12,'2021-04-21 19:15:57','员工2','123456','姓名2','男','773890002@qq.com','13823888882','http://localhost:8080/ssm203t6/upload/yuangong_zhaopian2.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`) values (13,'2021-04-21 19:15:57','员工3','123456','姓名3','男','773890003@qq.com','13823888883','http://localhost:8080/ssm203t6/upload/yuangong_zhaopian3.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`) values (14,'2021-04-21 19:15:57','员工4','123456','姓名4','男','773890004@qq.com','13823888884','http://localhost:8080/ssm203t6/upload/yuangong_zhaopian4.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`) values (15,'2021-04-21 19:15:57','员工5','123456','姓名5','男','773890005@qq.com','13823888885','http://localhost:8080/ssm203t6/upload/yuangong_zhaopian5.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`) values (16,'2021-04-21 19:15:58','员工6','123456','姓名6','男','773890006@qq.com','13823888886','http://localhost:8080/ssm203t6/upload/yuangong_zhaopian6.jpg');
insert  into `yuangong`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`youxiang`,`shouji`,`zhaopian`) values (1619004987788,'2021-04-21 19:36:27','11','11','测试员工','男','163@63.com','12345678912','http://localhost:8080/ssm203t6/upload/1619004986091.jpg');

/*Table structure for table `yuangongdangan` */

DROP TABLE IF EXISTS `yuangongdangan`;

CREATE TABLE `yuangongdangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `minzu` varchar(200) DEFAULT NULL COMMENT '民族',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `hunyinzhuangkuang` varchar(200) DEFAULT NULL COMMENT '婚姻状况',
  `biyexuexiao` varchar(200) DEFAULT NULL COMMENT '毕业学校',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `rugongsishijian` date DEFAULT NULL COMMENT '入公司时间',
  `zhuanzhengshijian` date DEFAULT NULL COMMENT '转正时间',
  `pinyongxingshi` varchar(200) DEFAULT NULL COMMENT '聘用形式',
  `hetongdaoqishijian` date DEFAULT NULL COMMENT '合同到期时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619005092237 DEFAULT CHARSET=utf8 COMMENT='员工档案';

/*Data for the table `yuangongdangan` */

insert  into `yuangongdangan`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`minzu`,`chushengriqi`,`shenfenzheng`,`zhengzhimianmao`,`hunyinzhuangkuang`,`biyexuexiao`,`xueli`,`bumen`,`zhiwu`,`rugongsishijian`,`zhuanzhengshijian`,`pinyongxingshi`,`hetongdaoqishijian`,`beizhu`) values (31,'2021-04-21 19:15:58','账号1','姓名1','男','民族1','2021-04-21','440300199101010001','政治面貌1','婚姻状况1','毕业学校1','学历1','部门1','职务1','2021-04-21','2021-04-21','聘用形式1','2021-04-21','备注1');
insert  into `yuangongdangan`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`minzu`,`chushengriqi`,`shenfenzheng`,`zhengzhimianmao`,`hunyinzhuangkuang`,`biyexuexiao`,`xueli`,`bumen`,`zhiwu`,`rugongsishijian`,`zhuanzhengshijian`,`pinyongxingshi`,`hetongdaoqishijian`,`beizhu`) values (32,'2021-04-21 19:15:58','账号2','姓名2','男','民族2','2021-04-21','440300199202020002','政治面貌2','婚姻状况2','毕业学校2','学历2','部门2','职务2','2021-04-21','2021-04-21','聘用形式2','2021-04-21','备注2');
insert  into `yuangongdangan`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`minzu`,`chushengriqi`,`shenfenzheng`,`zhengzhimianmao`,`hunyinzhuangkuang`,`biyexuexiao`,`xueli`,`bumen`,`zhiwu`,`rugongsishijian`,`zhuanzhengshijian`,`pinyongxingshi`,`hetongdaoqishijian`,`beizhu`) values (33,'2021-04-21 19:15:58','账号3','姓名3','男','民族3','2021-04-21','440300199303030003','政治面貌3','婚姻状况3','毕业学校3','学历3','部门3','职务3','2021-04-21','2021-04-21','聘用形式3','2021-04-21','备注3');
insert  into `yuangongdangan`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`minzu`,`chushengriqi`,`shenfenzheng`,`zhengzhimianmao`,`hunyinzhuangkuang`,`biyexuexiao`,`xueli`,`bumen`,`zhiwu`,`rugongsishijian`,`zhuanzhengshijian`,`pinyongxingshi`,`hetongdaoqishijian`,`beizhu`) values (34,'2021-04-21 19:15:58','账号4','姓名4','男','民族4','2021-04-21','440300199404040004','政治面貌4','婚姻状况4','毕业学校4','学历4','部门4','职务4','2021-04-21','2021-04-21','聘用形式4','2021-04-21','备注4');
insert  into `yuangongdangan`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`minzu`,`chushengriqi`,`shenfenzheng`,`zhengzhimianmao`,`hunyinzhuangkuang`,`biyexuexiao`,`xueli`,`bumen`,`zhiwu`,`rugongsishijian`,`zhuanzhengshijian`,`pinyongxingshi`,`hetongdaoqishijian`,`beizhu`) values (35,'2021-04-21 19:15:58','账号5','姓名5','男','民族5','2021-04-21','440300199505050005','政治面貌5','婚姻状况5','毕业学校5','学历5','部门5','职务5','2021-04-21','2021-04-21','聘用形式5','2021-04-21','备注5');
insert  into `yuangongdangan`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`minzu`,`chushengriqi`,`shenfenzheng`,`zhengzhimianmao`,`hunyinzhuangkuang`,`biyexuexiao`,`xueli`,`bumen`,`zhiwu`,`rugongsishijian`,`zhuanzhengshijian`,`pinyongxingshi`,`hetongdaoqishijian`,`beizhu`) values (36,'2021-04-21 19:15:58','账号6','姓名6','男','民族6','2021-04-21','440300199606060006','政治面貌6','婚姻状况6','毕业学校6','学历6','部门6','职务6','2021-04-21','2021-04-21','聘用形式6','2021-04-21','备注6');
insert  into `yuangongdangan`(`id`,`addtime`,`zhanghao`,`xingming`,`xingbie`,`minzu`,`chushengriqi`,`shenfenzheng`,`zhengzhimianmao`,`hunyinzhuangkuang`,`biyexuexiao`,`xueli`,`bumen`,`zhiwu`,`rugongsishijian`,`zhuanzhengshijian`,`pinyongxingshi`,`hetongdaoqishijian`,`beizhu`) values (1619005092236,'2021-04-21 19:38:12','11','11','男','汉族','2021-04-22','440000000000000000','党员','未婚','测试学院','本科','测试部门','测试职务','2021-03-31','2021-04-14','测试 ','2021-04-07','测试');

/*Table structure for table `yuangongkaoqin` */

DROP TABLE IF EXISTS `yuangongkaoqin`;

CREATE TABLE `yuangongkaoqin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `kaoqinleixing` varchar(200) DEFAULT NULL COMMENT '考勤类型',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619005229845 DEFAULT CHARSET=utf8 COMMENT='员工考勤';

/*Data for the table `yuangongkaoqin` */

insert  into `yuangongkaoqin`(`id`,`addtime`,`zhanghao`,`xingming`,`dakashijian`,`kaoqinleixing`,`longitude`,`latitude`,`fulladdress`) values (41,'2021-04-21 19:15:58','账号1','姓名1','2021-04-21 19:15:58','上班',1,1,'宇宙银河系地球1号');
insert  into `yuangongkaoqin`(`id`,`addtime`,`zhanghao`,`xingming`,`dakashijian`,`kaoqinleixing`,`longitude`,`latitude`,`fulladdress`) values (42,'2021-04-21 19:15:58','账号2','姓名2','2021-04-21 19:15:58','上班',2,2,'宇宙银河系地球2号');
insert  into `yuangongkaoqin`(`id`,`addtime`,`zhanghao`,`xingming`,`dakashijian`,`kaoqinleixing`,`longitude`,`latitude`,`fulladdress`) values (43,'2021-04-21 19:15:58','账号3','姓名3','2021-04-21 19:15:58','上班',3,3,'宇宙银河系地球3号');
insert  into `yuangongkaoqin`(`id`,`addtime`,`zhanghao`,`xingming`,`dakashijian`,`kaoqinleixing`,`longitude`,`latitude`,`fulladdress`) values (44,'2021-04-21 19:15:58','账号4','姓名4','2021-04-21 19:15:58','上班',4,4,'宇宙银河系地球4号');
insert  into `yuangongkaoqin`(`id`,`addtime`,`zhanghao`,`xingming`,`dakashijian`,`kaoqinleixing`,`longitude`,`latitude`,`fulladdress`) values (45,'2021-04-21 19:15:58','账号5','姓名5','2021-04-21 19:15:58','上班',5,5,'宇宙银河系地球5号');
insert  into `yuangongkaoqin`(`id`,`addtime`,`zhanghao`,`xingming`,`dakashijian`,`kaoqinleixing`,`longitude`,`latitude`,`fulladdress`) values (46,'2021-04-21 19:15:58','账号6','姓名6','2021-04-21 19:15:58','上班',6,6,'宇宙银河系地球6号');
insert  into `yuangongkaoqin`(`id`,`addtime`,`zhanghao`,`xingming`,`dakashijian`,`kaoqinleixing`,`longitude`,`latitude`,`fulladdress`) values (1619005229844,'2021-04-21 19:40:29','11','11','2021-04-29 00:00:00','上班',116.559,39.8969,'北京市朝阳区高碑店镇金卫路百花公园东区');

/*Table structure for table `yuangongqingjia` */

DROP TABLE IF EXISTS `yuangongqingjia`;

CREATE TABLE `yuangongqingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `qingjiatianshu` int(11) NOT NULL COMMENT '请假天数',
  `qingjiayuanyin` longtext COMMENT '请假原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619005306151 DEFAULT CHARSET=utf8 COMMENT='员工请假';

/*Data for the table `yuangongqingjia` */

insert  into `yuangongqingjia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`sfsh`,`shhf`) values (51,'2021-04-21 19:15:58','账号1','姓名1','部门1','职务1','2021-04-21 19:15:58',1,'请假原因1','是','');
insert  into `yuangongqingjia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`sfsh`,`shhf`) values (52,'2021-04-21 19:15:58','账号2','姓名2','部门2','职务2','2021-04-21 19:15:58',2,'请假原因2','是','');
insert  into `yuangongqingjia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`sfsh`,`shhf`) values (53,'2021-04-21 19:15:58','账号3','姓名3','部门3','职务3','2021-04-21 19:15:58',3,'请假原因3','是','');
insert  into `yuangongqingjia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`sfsh`,`shhf`) values (54,'2021-04-21 19:15:58','账号4','姓名4','部门4','职务4','2021-04-21 19:15:58',4,'请假原因4','是','');
insert  into `yuangongqingjia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`sfsh`,`shhf`) values (55,'2021-04-21 19:15:58','账号5','姓名5','部门5','职务5','2021-04-21 19:15:58',5,'请假原因5','是','');
insert  into `yuangongqingjia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`sfsh`,`shhf`) values (56,'2021-04-21 19:15:58','账号6','姓名6','部门6','职务6','2021-04-21 19:15:58',6,'请假原因6','是','');
insert  into `yuangongqingjia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`sfsh`,`shhf`) values (1619005306150,'2021-04-21 19:41:45','11','测试员工','测试','测试','2021-04-23 00:00:00',2,'<p>测试</p>','是','');

/*Table structure for table `yuangongxiaojia` */

DROP TABLE IF EXISTS `yuangongxiaojia`;

CREATE TABLE `yuangongxiaojia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `qingjiashijian` datetime DEFAULT NULL COMMENT '请假时间',
  `qingjiatianshu` int(11) NOT NULL COMMENT '请假天数',
  `qingjiayuanyin` longtext COMMENT '请假原因',
  `xiaojiashijian` date DEFAULT NULL COMMENT '销假时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619005329997 DEFAULT CHARSET=utf8 COMMENT='员工销假';

/*Data for the table `yuangongxiaojia` */

insert  into `yuangongxiaojia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`xiaojiashijian`,`sfsh`,`shhf`) values (61,'2021-04-21 19:15:58','账号1','姓名1','部门1','职务1','2021-04-21 19:15:58',1,'请假原因1','2021-04-21','是','');
insert  into `yuangongxiaojia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`xiaojiashijian`,`sfsh`,`shhf`) values (62,'2021-04-21 19:15:58','账号2','姓名2','部门2','职务2','2021-04-21 19:15:58',2,'请假原因2','2021-04-21','是','');
insert  into `yuangongxiaojia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`xiaojiashijian`,`sfsh`,`shhf`) values (63,'2021-04-21 19:15:58','账号3','姓名3','部门3','职务3','2021-04-21 19:15:58',3,'请假原因3','2021-04-21','是','');
insert  into `yuangongxiaojia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`xiaojiashijian`,`sfsh`,`shhf`) values (64,'2021-04-21 19:15:58','账号4','姓名4','部门4','职务4','2021-04-21 19:15:58',4,'请假原因4','2021-04-21','是','');
insert  into `yuangongxiaojia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`xiaojiashijian`,`sfsh`,`shhf`) values (65,'2021-04-21 19:15:58','账号5','姓名5','部门5','职务5','2021-04-21 19:15:58',5,'请假原因5','2021-04-21','是','');
insert  into `yuangongxiaojia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`xiaojiashijian`,`sfsh`,`shhf`) values (66,'2021-04-21 19:15:58','账号6','姓名6','部门6','职务6','2021-04-21 19:15:58',6,'请假原因6','2021-04-21','是','');
insert  into `yuangongxiaojia`(`id`,`addtime`,`zhanghao`,`xingming`,`bumen`,`zhiwu`,`qingjiashijian`,`qingjiatianshu`,`qingjiayuanyin`,`xiaojiashijian`,`sfsh`,`shhf`) values (1619005329996,'2021-04-21 19:42:09','11','11','测试','测试','2021-04-30 00:00:00',2,'<p>测试</p>','2021-04-30','是','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
