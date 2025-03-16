-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm6011w
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm6011w/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm6011w/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm6011w/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspm6011w/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspm6011w/upload/picture5.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuotixinxi`
--

DROP TABLE IF EXISTS `cuotixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuotixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `timu` varchar(200) NOT NULL COMMENT '题目',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `daan` longtext COMMENT '答案',
  `jiexi` longtext COMMENT '解析',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609135048256 DEFAULT CHARSET=utf8 COMMENT='错题信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuotixinxi`
--

LOCK TABLES `cuotixinxi` WRITE;
/*!40000 ALTER TABLE `cuotixinxi` DISABLE KEYS */;
INSERT INTO `cuotixinxi` VALUES (1,'2020-12-28 05:39:21','题目1','学号1','姓名1','答案1','解析1','2020-12-28','工号1'),(2,'2020-12-28 05:39:21','题目2','学号2','姓名2','答案2','解析2','2020-12-28','工号2'),(3,'2020-12-28 05:39:21','题目3','学号3','姓名3','答案3','解析3','2020-12-28','工号3'),(4,'2020-12-28 05:39:21','题目4','学号4','姓名4','答案4','解析4','2020-12-28','工号4'),(5,'2020-12-28 05:39:21','题目5','学号5','姓名5','答案5','解析5','2020-12-28','工号5'),(6,'2020-12-28 05:39:21','题目6','学号6','姓名6','答案6','解析6','2020-12-28','工号6'),(1609135048255,'2020-12-28 05:57:27','1+1=几','001','刘倩','2','应该是要这样。。。','2020-11-29','001');
/*!40000 ALTER TABLE `cuotixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609134931510 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1,'2020-12-28 05:39:21','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(2,'2020-12-28 05:39:21','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(3,'2020-12-28 05:39:21','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(4,'2020-12-28 05:39:21','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(5,'2020-12-28 05:39:21','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(6,'2020-12-28 05:39:21','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1609134901358,'2020-12-28 05:55:00','抛物线大家是怎么理解的','<p>大家都来分享下</p>',0,1,'001','开放'),(1609134931509,'2020-12-28 05:55:31',NULL,'其他同学可以进行评论交流',1609134901358,1,'001',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609134623301 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (1,'2020-12-28 05:39:21','001','001','王老师','男','http://localhost:8080/jspm6011w/upload/jiaoshi_touxiang1.jpg','上海大学','201','13823888881'),(2,'2020-12-28 05:39:21','教师2','123456','姓名2','男','http://localhost:8080/jspm6011w/upload/jiaoshi_touxiang2.jpg','学院2','班级2','13823888882'),(3,'2020-12-28 05:39:21','教师3','123456','姓名3','男','http://localhost:8080/jspm6011w/upload/jiaoshi_touxiang3.jpg','学院3','班级3','13823888883'),(4,'2020-12-28 05:39:21','教师4','123456','姓名4','男','http://localhost:8080/jspm6011w/upload/jiaoshi_touxiang4.jpg','学院4','班级4','13823888884'),(5,'2020-12-28 05:39:21','教师5','123456','姓名5','男','http://localhost:8080/jspm6011w/upload/jiaoshi_touxiang5.jpg','学院5','班级5','13823888885'),(6,'2020-12-28 05:39:21','教师6','123456','姓名6','男','http://localhost:8080/jspm6011w/upload/jiaoshi_touxiang6.jpg','学院6','班级6','13823888886'),(1609134623300,'2020-12-28 05:50:23','1','1','李老师',' ','','','','');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liaotianxinxi`
--

DROP TABLE IF EXISTS `liaotianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liaotianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `liaotianneirong` longtext COMMENT '聊天内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609134740119 DEFAULT CHARSET=utf8 COMMENT='聊天信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liaotianxinxi`
--

LOCK TABLES `liaotianxinxi` WRITE;
/*!40000 ALTER TABLE `liaotianxinxi` DISABLE KEYS */;
INSERT INTO `liaotianxinxi` VALUES (1,'2020-12-28 05:39:21','标题1','聊天内容1','2020-12-28','工号1','姓名1'),(2,'2020-12-28 05:39:21','标题2','聊天内容2','2020-12-28','工号2','姓名2'),(3,'2020-12-28 05:39:21','标题3','聊天内容3','2020-12-28','工号3','姓名3'),(4,'2020-12-28 05:39:21','标题4','聊天内容4','2020-12-28','工号4','姓名4'),(5,'2020-12-28 05:39:21','标题5','聊天内容5','2020-12-28','工号5','姓名5'),(6,'2020-12-28 05:39:21','标题6','聊天内容6','2020-12-28','工号6','姓名6'),(1609134740118,'2020-12-28 05:52:19','老师们好','各位老师们有什么好的数学题吗','2020-11-29','001','王老师');
/*!40000 ALTER TABLE `liaotianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mingtixinxi`
--

DROP TABLE IF EXISTS `mingtixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mingtixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `timu` varchar(200) NOT NULL COMMENT '题目',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `daan` longtext COMMENT '答案',
  `fenxi` longtext COMMENT '分析',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609134588947 DEFAULT CHARSET=utf8 COMMENT='命题信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mingtixinxi`
--

LOCK TABLES `mingtixinxi` WRITE;
/*!40000 ALTER TABLE `mingtixinxi` DISABLE KEYS */;
INSERT INTO `mingtixinxi` VALUES (1,'2020-12-28 05:39:21','编号1','题目1','科目1','答案1','分析1','2020-12-28','工号1','姓名1','否',''),(2,'2020-12-28 05:39:21','编号2','题目2','科目2','答案2','分析2','2020-12-28','工号2','姓名2','否',''),(3,'2020-12-28 05:39:21','编号3','题目3','科目3','答案3','分析3','2020-12-28','工号3','姓名3','否',''),(4,'2020-12-28 05:39:21','编号4','题目4','科目4','答案4','分析4','2020-12-28','工号4','姓名4','否',''),(5,'2020-12-28 05:39:21','编号5','题目5','科目5','答案5','分析5','2020-12-28','工号5','姓名5','否',''),(6,'2020-12-28 05:39:21','编号6','题目6','科目6','答案6','分析6','2020-12-28','工号6','姓名6','否',''),(1609134588946,'2020-12-28 05:49:48','1','1+1=几','数学','2','121212','2020-11-29','001','李老师','否',NULL);
/*!40000 ALTER TABLE `mingtixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shijuanpigai`
--

DROP TABLE IF EXISTS `shijuanpigai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shijuanpigai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `timu` varchar(200) DEFAULT NULL COMMENT '题目',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `fenshu` varchar(200) DEFAULT NULL COMMENT '分数',
  `pingyu` longtext COMMENT '评语',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609135003616 DEFAULT CHARSET=utf8 COMMENT='试卷批改';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shijuanpigai`
--

LOCK TABLES `shijuanpigai` WRITE;
/*!40000 ALTER TABLE `shijuanpigai` DISABLE KEYS */;
INSERT INTO `shijuanpigai` VALUES (1,'2020-12-28 05:39:21','编号1','题目1','科目1','学号1','姓名1','分数1','评语1','工号1'),(2,'2020-12-28 05:39:21','编号2','题目2','科目2','学号2','姓名2','分数2','评语2','工号2'),(3,'2020-12-28 05:39:21','编号3','题目3','科目3','学号3','姓名3','分数3','评语3','工号3'),(4,'2020-12-28 05:39:21','编号4','题目4','科目4','学号4','姓名4','分数4','评语4','工号4'),(5,'2020-12-28 05:39:21','编号5','题目5','科目5','学号5','姓名5','分数5','评语5','工号5'),(6,'2020-12-28 05:39:21','编号6','题目6','科目6','学号6','姓名6','分数6','评语6','工号6'),(1609135003615,'2020-12-28 05:56:42','1','抛物线','物理','001','刘倩','80','总体来说做的还可以，就是哪些还有待提高 继续努力','001');
/*!40000 ALTER TABLE `shijuanpigai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shijuantijiao`
--

DROP TABLE IF EXISTS `shijuantijiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shijuantijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `timu` varchar(200) DEFAULT NULL COMMENT '题目',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `shangjiaoshijuan` varchar(200) DEFAULT NULL COMMENT '上交试卷',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609134874309 DEFAULT CHARSET=utf8 COMMENT='试卷提交';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shijuantijiao`
--

LOCK TABLES `shijuantijiao` WRITE;
/*!40000 ALTER TABLE `shijuantijiao` DISABLE KEYS */;
INSERT INTO `shijuantijiao` VALUES (1,'2020-12-28 05:39:21','编号1','题目1','科目1','工号1','','2020-12-28','学号1','姓名1'),(2,'2020-12-28 05:39:21','编号2','题目2','科目2','工号2','','2020-12-28','学号2','姓名2'),(3,'2020-12-28 05:39:21','编号3','题目3','科目3','工号3','','2020-12-28','学号3','姓名3'),(4,'2020-12-28 05:39:21','编号4','题目4','科目4','工号4','','2020-12-28','学号4','姓名4'),(5,'2020-12-28 05:39:21','编号5','题目5','科目5','工号5','','2020-12-28','学号5','姓名5'),(6,'2020-12-28 05:39:21','编号6','题目6','科目6','工号6','','2020-12-28','学号6','姓名6'),(1609134874308,'2020-12-28 05:54:34','1','抛物线','物理','001','http://localhost:8080/jspm6011w/upload/1609134870616.doc','2020-11-29','001','刘倩');
/*!40000 ALTER TABLE `shijuantijiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shitixinxi`
--

DROP TABLE IF EXISTS `shitixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shitixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `timu` varchar(200) DEFAULT NULL COMMENT '题目',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shijuanwenjian` varchar(200) DEFAULT NULL COMMENT '试卷文件',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='试题信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shitixinxi`
--

LOCK TABLES `shitixinxi` WRITE;
/*!40000 ALTER TABLE `shitixinxi` DISABLE KEYS */;
INSERT INTO `shitixinxi` VALUES (1,'2020-12-28 05:39:21','1','抛物线','物理','http://localhost:8080/jspm6011w/upload/1609134224298.jpg','http://localhost:8080/jspm6011w/file/download?fileName=1609134761275.doc','2020-11-29','001','王老师'),(2,'2020-12-28 05:39:21','2','英语基础','英语','http://localhost:8080/jspm6011w/upload/1609134244630.jpg','','2020-11-29','002','姓名2'),(3,'2020-12-28 05:39:21','3','宏观经济学·','宏观经济学·','http://localhost:8080/jspm6011w/upload/1609134268259.jpg','','2020-12-28','001','姓名3'),(4,'2020-12-28 05:39:21','编号4','科学','科学','http://localhost:8080/jspm6011w/upload/1609134305413.jpg','','2020-11-29','002','姓名4'),(5,'2020-12-28 05:39:21','5','药物化学','化学','http://localhost:8080/jspm6011w/upload/1609134333958.jpg','','2020-11-29','003','姓名5');
/*!40000 ALTER TABLE `shitixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','fc2ots514kl5ndznklw29iu1gxua2zsj','2020-12-28 05:39:59','2020-12-28 06:46:10'),(2,1,'001','jiaoshi','教师','eefo7zqjjcibbrrxa8drsz4fk00kr33i','2020-12-28 05:40:28','2020-12-28 06:56:09'),(3,1609134623300,'1','jiaoshi','教师','fu542x72fkzuruva90xp27pz6fiezzou','2020-12-28 05:50:28','2020-12-28 06:50:28'),(4,1,'001','xuesheng','学生','dexbp2rvnks3ri5m9iemrmtbn3d7l9ip','2020-12-28 05:53:08','2020-12-28 06:57:35');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-12-28 05:39:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (1,'2020-12-28 05:39:21','001','001','刘倩','女','http://localhost:8080/jspm6011w/upload/xuesheng_touxiang1.jpg','上海大学','201','13823888881'),(2,'2020-12-28 05:39:21','学生2','123456','姓名2','男','http://localhost:8080/jspm6011w/upload/xuesheng_touxiang2.jpg','学院2','班级2','13823888882'),(3,'2020-12-28 05:39:21','学生3','123456','姓名3','男','http://localhost:8080/jspm6011w/upload/xuesheng_touxiang3.jpg','学院3','班级3','13823888883'),(4,'2020-12-28 05:39:21','学生4','123456','姓名4','男','http://localhost:8080/jspm6011w/upload/xuesheng_touxiang4.jpg','学院4','班级4','13823888884'),(5,'2020-12-28 05:39:21','学生5','123456','姓名5','男','http://localhost:8080/jspm6011w/upload/xuesheng_touxiang5.jpg','学院5','班级5','13823888885'),(6,'2020-12-28 05:39:21','学生6','123456','姓名6','男','http://localhost:8080/jspm6011w/upload/xuesheng_touxiang6.jpg','学院6','班级6','13823888886');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiaogonggao`
--

DROP TABLE IF EXISTS `xuexiaogonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiaogonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='学校公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiaogonggao`
--

LOCK TABLES `xuexiaogonggao` WRITE;
/*!40000 ALTER TABLE `xuexiaogonggao` DISABLE KEYS */;
INSERT INTO `xuexiaogonggao` VALUES (1,'2020-12-28 05:39:21','公告信息','http://localhost:8080/jspm6011w/upload/1609134064667.jpg','学校公告，内容都是用于测试的，可以自行添加修改删除','2020-11-29 05:33:21'),(2,'2020-12-28 05:39:21','标题2','http://localhost:8080/jspm6011w/upload/1609134086152.jpg','公告内容2','2020-12-28 13:39:21'),(3,'2020-12-28 05:39:21','标题3','http://localhost:8080/jspm6011w/upload/1609134198439.jpg','公告内容3','2020-12-28 13:39:21'),(4,'2020-12-28 05:39:21','标题4','http://localhost:8080/jspm6011w/upload/1609134150117.jpg','公告内容4','2020-12-28 13:39:21'),(5,'2020-12-28 05:39:21','标题5','http://localhost:8080/jspm6011w/upload/1609134181621.jpg','公告内容5','2020-12-28 13:39:21'),(6,'2020-12-28 05:39:21','标题6','http://localhost:8080/jspm6011w/upload/1609134116370.jpg','公告内容6','2020-12-28 13:39:21');
/*!40000 ALTER TABLE `xuexiaogonggao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-28 14:01:25
