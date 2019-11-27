-- MySQL dump 10.13  Distrib 8.0.16, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: db_erp
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `tg_attr`
--

DROP TABLE IF EXISTS `tg_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tg_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `a1` varchar(40) DEFAULT NULL,
  `a10` varchar(40) DEFAULT NULL,
  `a11` varchar(40) DEFAULT NULL,
  `a12` varchar(40) DEFAULT NULL,
  `a13` varchar(40) DEFAULT NULL,
  `a14` varchar(40) DEFAULT NULL,
  `a15` varchar(40) DEFAULT NULL,
  `a2` varchar(40) DEFAULT NULL,
  `a3` varchar(40) DEFAULT NULL,
  `a4` varchar(40) DEFAULT NULL,
  `a5` varchar(40) DEFAULT NULL,
  `a6` varchar(40) DEFAULT NULL,
  `a7` varchar(40) DEFAULT NULL,
  `a8` varchar(40) DEFAULT NULL,
  `a9` varchar(40) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXpc5os457lj1emxcsqybtxu3ix` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_attr`
--

LOCK TABLES `tg_attr` WRITE;
/*!40000 ALTER TABLE `tg_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tg_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tg_attr_cnf`
--

DROP TABLE IF EXISTS `tg_attr_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tg_attr_cnf` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `col` varchar(40) DEFAULT NULL,
  `col_name` varchar(10) DEFAULT NULL,
  `kind_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXj65yuoplnq1jkw45ao2ygvtfq` (`kind_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_attr_cnf`
--

LOCK TABLES `tg_attr_cnf` WRITE;
/*!40000 ALTER TABLE `tg_attr_cnf` DISABLE KEYS */;
/*!40000 ALTER TABLE `tg_attr_cnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tg_goods`
--

DROP TABLE IF EXISTS `tg_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tg_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `gg_id` bigint(20) DEFAULT NULL,
  `kind_id` bigint(20) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `pin` double DEFAULT NULL,
  `pout` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXdb3il6d8qi7y12hbwfmyc8w18` (`kind_id`),
  KEY `IDXpmgk6gs7nqdtml8fd4upopmmb` (`brand_id`),
  KEY `IDXj7alpkv926odrmck6s01qo6ux` (`color_id`),
  KEY `IDXrmn8wmo9ypd2u045cb5tniahc` (`gg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_goods`
--

LOCK TABLES `tg_goods` WRITE;
/*!40000 ALTER TABLE `tg_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `tg_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tg_lens`
--

DROP TABLE IF EXISTS `tg_lens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tg_lens` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `cnf_id` bigint(20) DEFAULT NULL,
  `cyl` float DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `pin` double DEFAULT NULL,
  `pout` double DEFAULT NULL,
  `sph` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXp87kditr9inevi21chxsttrvf` (`cnf_id`),
  KEY `IDXpdep385vp81x3ahmgimk50ron` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_lens`
--

LOCK TABLES `tg_lens` WRITE;
/*!40000 ALTER TABLE `tg_lens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tg_lens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tg_lens_cnf`
--

DROP TABLE IF EXISTS `tg_lens_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tg_lens_cnf` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `cyl_pool` float DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `max_cyl` float DEFAULT NULL,
  `max_sph` float DEFAULT NULL,
  `min_cyl` float DEFAULT NULL,
  `min_sph` float DEFAULT NULL,
  `sph_pool` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXi4k6hrrwwqctab4noc5f3u0ua` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_lens_cnf`
--

LOCK TABLES `tg_lens_cnf` WRITE;
/*!40000 ALTER TABLE `tg_lens_cnf` DISABLE KEYS */;
/*!40000 ALTER TABLE `tg_lens_cnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tg_type`
--

DROP TABLE IF EXISTS `tg_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tg_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `c_type` varchar(10) DEFAULT NULL,
  `fid` bigint(20) DEFAULT NULL,
  `is_lens` bit(1) DEFAULT NULL,
  `is_lib` bit(1) DEFAULT NULL,
  `is_time` bit(1) DEFAULT NULL,
  `isdo` bit(1) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXf611hleo091mw4yeicfko9amy` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_type`
--

LOCK TABLES `tg_type` WRITE;
/*!40000 ALTER TABLE `tg_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tg_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_ghs`
--

DROP TABLE IF EXISTS `tk_ghs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tk_ghs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `addr` varchar(80) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `kind_id` bigint(20) DEFAULT NULL,
  `lsr_name` varchar(20) DEFAULT NULL,
  `lsr_name_tel` varchar(20) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXmais43t7rbv90g5i5rl901hxu` (`kind_id`),
  KEY `IDX29g9hb0vyc506f4noin7etvq1` (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_ghs`
--

LOCK TABLES `tk_ghs` WRITE;
/*!40000 ALTER TABLE `tk_ghs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_ghs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kc`
--

DROP TABLE IF EXISTS `tk_kc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tk_kc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `canpin` bigint(20) DEFAULT NULL,
  `cipin` bigint(20) DEFAULT NULL,
  `cyl` float DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `num` bigint(20) DEFAULT NULL,
  `pin` double DEFAULT NULL,
  `pout` double DEFAULT NULL,
  `sph` float DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXldk1l5fl7a2ojb69nym6ynsp5` (`goods_id`),
  KEY `IDXo2feis5x5k99i3mwbqar1jntk` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kc`
--

LOCK TABLES `tk_kc` WRITE;
/*!40000 ALTER TABLE `tk_kc` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_kc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kcls`
--

DROP TABLE IF EXISTS `tk_kcls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tk_kcls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `canpin` bigint(20) DEFAULT NULL,
  `cipin` bigint(20) DEFAULT NULL,
  `dh` bigint(20) DEFAULT NULL,
  `kc_id` bigint(20) DEFAULT NULL,
  `num` bigint(20) DEFAULT NULL,
  `sl` bigint(20) DEFAULT NULL,
  `yw_id` bigint(20) DEFAULT NULL,
  `yw_table` varchar(40) DEFAULT NULL,
  `yw_table_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXkc1aphh6rxydqkry6gx6hdxir` (`kc_id`),
  KEY `IDXhdo5pgmeldv25rghnq8g09sty` (`yw_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kcls`
--

LOCK TABLES `tk_kcls` WRITE;
/*!40000 ALTER TABLE `tk_kcls` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_kcls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kctime`
--

DROP TABLE IF EXISTS `tk_kctime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tk_kctime` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `cyl` float DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `gqsj` datetime DEFAULT NULL,
  `ph` varchar(255) DEFAULT NULL,
  `scrq` datetime DEFAULT NULL,
  `sph` float DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `uuid` varchar(40) DEFAULT NULL,
  `yxq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXj0qss4vmkpmoqo20y0b7klnaa` (`goods_id`),
  KEY `IDX5al2aln7bvt2hdtb0swrcliij` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kctime`
--

LOCK TABLES `tk_kctime` WRITE;
/*!40000 ALTER TABLE `tk_kctime` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_kctime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_kctimels`
--

DROP TABLE IF EXISTS `tk_kctimels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tk_kctimels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `kctime_id` bigint(20) DEFAULT NULL,
  `table_id` bigint(20) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `uuid` varchar(40) DEFAULT NULL,
  `yw_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_kctimels`
--

LOCK TABLES `tk_kctimels` WRITE;
/*!40000 ALTER TABLE `tk_kctimels` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_kctimels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_order`
--

DROP TABLE IF EXISTS `tk_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tk_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `bz` varchar(150) DEFAULT NULL,
  `dh` varchar(40) DEFAULT NULL,
  `ghs_id` bigint(20) DEFAULT NULL,
  `is_fk` bit(1) DEFAULT NULL,
  `qtfy` bigint(20) DEFAULT NULL,
  `shr_id` bigint(20) DEFAULT NULL,
  `zdr_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXcf7pppar0tovdcdraw3e9w733` (`zdr_id`),
  KEY `IDXir86te54ylondo5dfh3yw8jnu` (`ghs_id`),
  KEY `IDXdqmofmuppgr2fdofvecuhyd0w` (`dh`),
  KEY `IDXt4yp6f47mmqpn8eh93oboaqvd` (`shr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_order`
--

LOCK TABLES `tk_order` WRITE;
/*!40000 ALTER TABLE `tk_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tk_order_list`
--

DROP TABLE IF EXISTS `tk_order_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tk_order_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `num` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXmv3hknntg4rmts99862w23ngj` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tk_order_list`
--

LOCK TABLES `tk_order_list` WRITE;
/*!40000 ALTER TABLE `tk_order_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `tk_order_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ts_store`
--

DROP TABLE IF EXISTS `ts_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ts_store` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `c_type` varchar(255) DEFAULT NULL,
  `fid` bigint(20) DEFAULT NULL,
  `isdo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `py` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX9cw2tphgw397l39p94n9vc88t` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_store`
--

LOCK TABLES `ts_store` WRITE;
/*!40000 ALTER TABLE `ts_store` DISABLE KEYS */;
INSERT INTO `ts_store` VALUES (4,_binary '\0','2019-07-15 14:51:19','北京',1,'直属',0,'0','总公司1','18613806246',NULL),(5,_binary '\0','2019-07-15 14:54:21','北京',1,'直属',4,'0','财务部','18613806246',NULL),(6,_binary '','2019-07-17 11:47:10','2',1,'直属',4,'1','123','','1'),(7,_binary '','2019-07-17 11:53:22','123',1,'直属',5,'1','123','123',NULL);
/*!40000 ALTER TABLE `ts_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tu_cwrole`
--

DROP TABLE IF EXISTS `tu_cwrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tu_cwrole` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `cw_ids` varchar(4000) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_cwrole`
--

LOCK TABLES `tu_cwrole` WRITE;
/*!40000 ALTER TABLE `tu_cwrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `tu_cwrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tu_gz`
--

DROP TABLE IF EXISTS `tu_gz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tu_gz` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `bl` float DEFAULT NULL,
  `is_try` bit(1) DEFAULT NULL,
  `money` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_gz`
--

LOCK TABLES `tu_gz` WRITE;
/*!40000 ALTER TABLE `tu_gz` DISABLE KEYS */;
/*!40000 ALTER TABLE `tu_gz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tu_info`
--

DROP TABLE IF EXISTS `tu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tu_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `cw_role_id` bigint(20) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `xl` varchar(10) DEFAULT NULL,
  `zw` varchar(40) DEFAULT NULL,
  `zzmm` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKo0pxudd0fjn581rkmf70m61k1` (`user_id`),
  KEY `IDXh2skfyxcybbmwa1h7pt0e36l8` (`store_id`),
  KEY `IDXj9d0b3va0101i3xhhacqikr96` (`role_id`),
  KEY `IDX5lsj2oomryf0i86o63bswoj7` (`cw_role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_info`
--

LOCK TABLES `tu_info` WRITE;
/*!40000 ALTER TABLE `tu_info` DISABLE KEYS */;
INSERT INTO `tu_info` VALUES (1,_binary '\0','2019-07-15 08:24:16','1984-01-16 00:00:00',NULL,'2003-09-01 00:00:00','于洋',NULL,1,'男',NULL,'18613806246',1,'幼儿园','小工','群众');
/*!40000 ALTER TABLE `tu_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tu_item`
--

DROP TABLE IF EXISTS `tu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tu_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `c_type` varchar(10) DEFAULT NULL,
  `fid` bigint(20) DEFAULT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `js` varchar(120) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `px` int(11) DEFAULT NULL,
  `py` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_item`
--

LOCK TABLES `tu_item` WRITE;
/*!40000 ALTER TABLE `tu_item` DISABLE KEYS */;
INSERT INTO `tu_item` VALUES (17,_binary '\0','2019-07-15 08:24:16','btn',16,'','','新增',1,'XinZeng'),(18,_binary '\0','2019-07-15 08:24:16','btn',16,'','','刷新',2,'ShuaXin'),(14,_binary '\0','2019-07-15 08:24:16','btn',10,'','','查询',4,'ChaXun'),(16,_binary '\0','2019-07-15 08:24:16','menu',4,'','app/store/store','站点数据',2,'zdsj'),(13,_binary '','2019-07-15 08:24:16','btn',10,'','','删除',3,'ShanChu'),(12,_binary '','2019-07-15 08:24:16','btn',10,'','','修改',2,'XiuGai'),(11,_binary '\0','2019-07-15 08:24:16','btn',10,'','','新增',1,'XinZeng'),(6,_binary '\0','2019-07-15 08:24:16','btn',5,'','','新增',1,'XinZeng'),(7,_binary '','2019-07-15 08:24:16','btn',5,'','','修改',2,'XiuGai'),(8,_binary '','2019-07-15 08:24:16','btn',5,'','','删除',3,'ShanChu'),(9,_binary '\0','2019-07-15 08:24:16','btn',5,'','','查询',4,'ChaXun'),(10,_binary '\0','2019-07-15 08:24:16','menu',4,'','app/user/user','用户数据',2,'yhsj'),(5,_binary '\0','2019-07-15 08:24:16','menu',4,'','app/role/role','角色数据',1,'jssj'),(3,_binary '\0','2019-07-15 08:24:16','btn',2,'','','新增',1,'XinZeng'),(15,_binary '\0','2019-07-15 08:24:16','btn',2,'','','刷新',2,'ShuaXin'),(4,_binary '\0','2019-07-15 08:24:16','group',0,'','','基本数据',2,'yhgl'),(2,_binary '\0','2019-07-15 08:24:16','menu',1,'','app/dev/dev','开发功能',1,'kfgn'),(1,_binary '\0','2019-07-15 08:24:16','group',0,'','','开发管理',1,'kfgl');
/*!40000 ALTER TABLE `tu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tu_role`
--

DROP TABLE IF EXISTS `tu_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tu_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `item_ids` varchar(4000) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_role`
--

LOCK TABLES `tu_role` WRITE;
/*!40000 ALTER TABLE `tu_role` DISABLE KEYS */;
INSERT INTO `tu_role` VALUES (1,_binary '\0','2019-07-19 13:44:50','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60','admin'),(2,_binary '\0','2019-07-19 13:45:11','1,2,3,15,4,5,6,9,10,11,14,16,17,18','管理员2'),(6,_binary '\0','2019-07-19 13:51:48','1,2,3,15,4,5,6,9,10,11,14,16,17,18','33'),(8,_binary '\0','2019-07-19 14:01:11','1,2,3,15,4,5,6,9,10,11,14,16,17,18','jqk'),(9,_binary '\0','2019-07-19 14:01:46','1,2,3','qka'),(10,_binary '\0','2019-07-19 14:54:27','1,2,3,15,4','nmb'),(11,_binary '\0','2019-07-19 14:55:01','','kfgl-1'),(12,_binary '\0','2019-07-19 14:55:03','','2'),(13,_binary '\0','2019-07-19 14:55:05','','3'),(14,_binary '\0','2019-07-19 14:55:09','','4'),(15,_binary '\0','2019-07-19 14:55:11','1','5'),(16,_binary '\0','2019-07-19 14:55:15','1','6'),(17,_binary '\0','2019-07-19 14:55:19','1','7'),(18,_binary '\0','2019-07-19 15:21:04','1,2,3,15,4,5,6,9,10,11,14,16,17,18','abc');
/*!40000 ALTER TABLE `tu_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tu_user`
--

DROP TABLE IF EXISTS `tu_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tu_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `login_pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKfin3buubdojnnsmyduts9tx16` (`login_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_user`
--

LOCK TABLES `tu_user` WRITE;
/*!40000 ALTER TABLE `tu_user` DISABLE KEYS */;
INSERT INTO `tu_user` VALUES (1,_binary '\0','2019-07-15 08:24:16','admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `tu_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-27 15:15:18
