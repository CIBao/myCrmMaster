-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: crm
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(255) DEFAULT NULL COMMENT '部门名字',
  `createMan` varchar(255) DEFAULT NULL COMMENT '创建人',
  `createTime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `state` tinyint(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'业务部','lisi','',0),(2,'资源部','lisi','2018-12-11 02:24:06',1),(4,'财务部','lisi','2018-12-11 11:04:11',1),(5,'销售部','lisi','2018-12-11 11:04:50',1),(6,'人事部','lisi','2018-12-11 11:05:00',1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `userNumber` varchar(255) DEFAULT NULL COMMENT '用户编号',
  `department` varchar(255) DEFAULT NULL COMMENT '部门',
  `module` varchar(255) DEFAULT NULL COMMENT '模块',
  `ip` varchar(255) DEFAULT NULL COMMENT 'IP地址',
  `loginTime` varchar(255) DEFAULT NULL COMMENT '登入时间',
  `opera` varchar(255) DEFAULT NULL COMMENT '操作',
  `operaTime` varchar(255) DEFAULT NULL COMMENT '操作时间',
  `state` tinyint(1) DEFAULT NULL COMMENT '操作状态',
  `logoutTime` varchar(255) DEFAULT NULL COMMENT '退出时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'lisi','9527',NULL,'客户管理','127.0.0.1','1','创建','2',1,'3'),(2,'lisi','9527','销售部','用户管理','127.0.0.1','2018-12-11 20:16:20','增加用户','2018-12-11 20:17:05',1,NULL),(3,'lisi','9527','销售部','用户管理','127.0.0.1','2018-12-11 20:25:46','增加用户','2018-12-11 20:26:09',1,NULL),(4,'lisi','9527','销售部','用户管理','127.0.0.1','2018-12-11 23:42:19','修改用户','2018-12-11 23:42:27',1,NULL),(5,'lisi','9527','销售部','用户管理','127.0.0.1','2018-12-11 23:42:19','删除用户','2018-12-11 23:43:09',1,NULL),(6,'lisi','9527','销售部','用户管理','127.0.0.1','2018-12-11 23:45:28','修改用户','2018-12-11 23:46:01',1,NULL),(7,'lisi','9527','销售部','权限管理','127.0.0.1','2018-12-11 23:45:28','修改权限','2018-12-11 23:46:30',1,NULL),(8,'lisi','9527','销售部','用户管理','127.0.0.1','2018-12-11 23:45:28','修改用户','2018-12-11 23:47:40',1,NULL),(9,'lisi','9527','销售部','权限管理','127.0.0.1','2018-12-11 23:45:28','删除权限','2018-12-11 23:48:16',1,NULL),(10,'lisi','9527','销售部','','127.0.0.1','2018-12-11 23:45:28','退出','2018-12-11 23:48:44',1,NULL),(11,'lisi','9527','业务部','','127.0.0.1','2018-12-11 23:48:50','退出','2018-12-11 23:49:10',1,NULL),(12,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-11 23:49:14','增加部门','2018-12-11 23:50:48',1,NULL),(13,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-11 23:49:14','增加部门','2018-12-11 23:50:52',1,NULL),(14,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-11 23:49:14','增加部门','2018-12-11 23:50:56',1,NULL),(15,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-11 23:49:14','增加部门','2018-12-11 23:50:59',1,NULL),(16,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-11 23:49:14','增加部门','2018-12-11 23:51:03',1,NULL),(17,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-11 23:49:14','删除部门','2018-12-11 23:51:11',1,NULL),(18,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-11 23:49:14','删除部门','2018-12-11 23:51:26',1,NULL),(19,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-11 23:49:14','删除部门','2018-12-11 23:51:29',1,NULL),(20,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-11 23:49:14','删除部门','2018-12-11 23:51:32',1,NULL),(21,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-11 23:49:14','删除部门','2018-12-11 23:51:35',1,NULL),(22,'lisi','9527','业务部','','127.0.0.1','2018-12-11 23:49:14','退出','2018-12-11 23:54:15',1,NULL),(23,'zhangsan','3362','财务部','','127.0.0.1','2018-12-11 23:54:24','退出','2018-12-11 23:54:36',1,NULL),(24,'lisi','9527','业务部','权限管理','127.0.0.1','2018-12-11 23:54:40','修改权限','2018-12-11 23:54:56',1,NULL),(25,'lisi','9527','业务部','权限管理','127.0.0.1','2018-12-11 23:54:40','修改权限','2018-12-11 23:55:17',1,NULL),(26,'lisi','9527','业务部','','127.0.0.1','2018-12-11 23:54:40','退出','2018-12-11 23:55:20',1,NULL),(27,'zhangsan','3362','财务部','用户管理','127.0.0.1','2018-12-11 23:55:25','增加用户','2018-12-12 00:01:53',1,NULL),(28,'zhangsan','3362','财务部','','127.0.0.1','2018-12-11 23:55:25','退出','2018-12-12 00:05:17',1,NULL),(29,'lisi','9527','业务部','','127.0.0.1','2018-12-12 00:05:31','退出','2018-12-12 00:05:50',1,NULL),(30,'lisi','9527','业务部','','127.0.0.1','2018-12-12 00:06:22','退出','2018-12-12 00:07:29',1,NULL),(31,'zhangsan','3362','财务部','','127.0.0.1','2018-12-12 00:07:38','退出','2018-12-12 00:21:19',1,NULL),(32,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-12 15:16:22','修改部门','2018-12-12 15:16:45',1,NULL),(33,'lisi','9527','业务部','权限管理','127.0.0.1','2018-12-12 15:16:22','增加权限','2018-12-12 15:19:38',1,NULL),(34,'lisi','9527','业务部','','127.0.0.1','2018-12-13 10:43:39','退出','2018-12-13 10:44:42',1,NULL),(35,'zhangsan','3362','财务部','用户管理','127.0.0.1','2018-12-13 10:44:49','查看用户','2018-12-13 10:45:03',1,NULL),(36,'zhangsan','3362','财务部','','127.0.0.1','2018-12-13 10:44:49','退出','2018-12-13 10:45:52',1,NULL),(37,'lisi','9527','业务部','权限管理','127.0.0.1','2018-12-13 10:45:56','修改权限','2018-12-13 10:46:38',1,NULL),(38,'lisi','9527','业务部','权限管理','127.0.0.1','2018-12-13 10:45:56','修改权限','2018-12-13 10:47:26',1,NULL),(39,'zhangsan','3362','财务部','','127.0.0.1','2018-12-13 11:02:57','退出','2018-12-13 11:05:00',1,NULL),(40,'lisi','9527','业务部','部门管理','127.0.0.1','2018-12-13 11:05:04','删除部门','2018-12-13 11:05:12',1,NULL);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `custManage` tinyint(1) DEFAULT NULL COMMENT '是否拥有客户管理权限',
  `custInfo` tinyint(1) DEFAULT NULL COMMENT '是否拥有客户跟进权限',
  `userManage` tinyint(1) DEFAULT NULL COMMENT '是否拥有用户管理权限',
  `permissionManage` tinyint(1) DEFAULT NULL COMMENT '是否拥有权限管理权限',
  `departmentManage` tinyint(1) DEFAULT NULL COMMENT '是否拥有部门管理权限',
  `createTime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `state` tinyint(1) DEFAULT NULL COMMENT '权限是否可用',
  `log` tinyint(1) DEFAULT NULL COMMENT '是否拥有操作日志权限',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_permissionName_uindex` (`permissionName`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'超级管理员',1,1,1,1,1,NULL,1,1),(2,'管理员',1,1,1,0,1,NULL,1,0),(3,'管理员7',1,1,1,0,1,NULL,1,0),(6,'管理员2',1,0,0,1,1,'2018-12-10 11:21:11',1,1),(7,'管理员4',1,1,1,0,0,'2018-12-10 11:21:16',1,1),(8,'管理员5',1,0,1,1,0,'2018-12-10 11:21:24',1,0),(9,'管理员11',0,0,1,1,1,'2018-12-10 11:21:29',1,0),(10,'管理员14',0,1,1,0,1,'2018-12-10 11:21:33',1,0),(11,'管理员12',0,1,1,1,1,'2018-12-10 11:21:37',1,0),(14,'管理员76',1,0,0,0,0,'2018-12-10 16:46:56',1,0),(15,'管理员1',1,1,1,0,NULL,'2018-12-11 01:11:20',1,1),(16,'管理员32',0,1,1,1,1,'2018-12-11 01:11:51',1,1),(17,'管理员123',0,0,0,0,1,'2018-12-11 01:20:29',1,0),(18,'WHE',1,1,0,1,1,'2018-12-11 01:23:13',1,1),(19,'ffdfds',0,1,1,1,0,'2018-12-12 15:19:38',1,1);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `passwd` varchar(255) DEFAULT NULL COMMENT '密码',
  `department` varchar(255) DEFAULT NULL COMMENT '部门',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限',
  `jobCategory` varchar(255) DEFAULT NULL COMMENT '工作类别',
  `jobRank` varchar(255) DEFAULT NULL COMMENT '工作级别',
  `staffState` tinyint(1) DEFAULT NULL COMMENT '员工状态',
  `jobState` tinyint(1) DEFAULT NULL COMMENT '工作状态',
  `workNumber` varchar(255) DEFAULT NULL COMMENT '工作电话',
  `phoneNumber` varchar(255) DEFAULT NULL COMMENT '手机电话',
  `createTime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `comment` varchar(255) DEFAULT NULL COMMENT '备注',
  `workName` varchar(255) DEFAULT NULL COMMENT '工作名称',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(255) DEFAULT NULL COMMENT 'qq',
  `staffNumber` varchar(255) DEFAULT NULL COMMENT '员工编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'lisi','lisi','业务部','超级管理员','人事经理','经理',1,1,'123314','123123123','2019:23:23','','销售代表','M','123123123@qq.com','13888622','9527'),(2,'zhangsan','zhangsan','财务部','管理员4','财务代表','总管',1,1,'1340200200','1388888888','213:123:23','','经理','W','123481284@qq.com','123123412','3362'),(27,'wangwu','123456','人事部','管理员','总经理','副总经理',1,1,'1388888222','1388888333','2018-12-08 16:03:11','嘻嘻嘻','人事代表','男','10086','10001','9527'),(28,'qwqwe','123456','销售部','超级管理员','总经理','副总经理',1,1,'d','f','2018-12-08 16:24:54','ddd','h','M','aa','sss','g'),(41,'wangwuh','123456','财务部','管理员','销售经理','总经理',0,0,'13899992222f','13888888388e','2018-12-08 17:45:32','ds','技术代表g','','999000222w','10086asa','9527g'),(45,'2861596304@qq.com','123456','销售部','管理员5','测试员','副总监',1,1,'sdfsd','sdfsdf','2018-12-10 18:53:27','dfs','dsa','男','sdff','fds','231231'),(47,'ClearLove','123456','资源部','超级管理员','总经理','总经理',1,1,'777','777','2018-12-11 19:53:11','777','777','男','777','777','777'),(48,'dsada','123456','资源部','','副经理','副总经理',1,1,'','','2018-12-11 19:54:12','','','','','',''),(49,'asdasdx','123456','资源部','','','',1,1,'','','2018-12-11 20:17:05','','','','','',''),(50,'dsads','123456','资源部','','','',1,1,'','','2018-12-11 20:26:09','','','','','',''),(51,'沙雕','123456','','超级管理员','技术经理','总监',1,1,'7777777','8888888','2018-12-12 00:01:53','呵呵','AV男优','女','shadiao@sd.com','9999999','007');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-15 22:06:02
