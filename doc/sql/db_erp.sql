-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: db_erp
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_store`
--

LOCK TABLES `ts_store` WRITE;
/*!40000 ALTER TABLE `ts_store` DISABLE KEYS */;
INSERT INTO `ts_store` VALUES (1,'\0','2019-09-23 10:22:43','北京',1,'直属',0,'0','总公司','0100',NULL),(2,'\0','2019-09-23 11:26:58','北京',1,'直属',1,'1','加工中心','0102',NULL),(3,'\0','2019-09-23 11:27:20','北京',1,'直属',2,'0','店1','0103',NULL),(4,'\0','2019-09-23 11:27:37','北京',1,'直属',2,'0','店2','010','D2'),(5,'\0','2019-09-23 11:27:52','北京',1,'非直属',2,'0','店3','221','D3');
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_info`
--

LOCK TABLES `tu_info` WRITE;
/*!40000 ALTER TABLE `tu_info` DISABLE KEYS */;
INSERT INTO `tu_info` VALUES (1,'\0','2019-07-22 12:02:30','1984-01-16 00:00:00',NULL,'2003-09-01 00:00:00','于洋',NULL,1,'男',NULL,'18613806246',1,'幼儿园','小工','群众');
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
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_item`
--

LOCK TABLES `tu_item` WRITE;
/*!40000 ALTER TABLE `tu_item` DISABLE KEYS */;
INSERT INTO `tu_item` VALUES (22,'\0','2019-08-09 11:17:45','btn',5,'','','删除',3,'ShanChu'),(21,'\0','2019-08-09 11:17:29','btn',5,'','','修改',2,'XiuGai'),(18,'\0','2019-07-22 12:02:30','btn',16,'','','刷新',5,'ShuaXin'),(17,'\0','2019-07-22 12:02:30','btn',16,'','','新增',1,'XinZeng'),(16,'\0','2019-07-22 12:02:30','menu',4,'','app/store/store','站点数据',2,'zdsj'),(14,'\0','2019-07-22 12:02:30','btn',10,'','','查询',4,'ChaXun'),(11,'\0','2019-07-22 12:02:30','btn',10,'','','新增',1,'XinZeng'),(10,'\0','2019-07-22 12:02:30','menu',4,'','app/user/user','用户数据',2,'yhsj'),(9,'\0','2019-07-22 12:02:30','btn',5,'','','查询',4,'ChaXun'),(6,'\0','2019-07-22 12:02:30','btn',5,'','','新增',1,'XinZeng'),(5,'\0','2019-07-22 12:02:30','menu',4,'','app/role/role','角色数据',1,'jssj'),(4,'\0','2019-07-22 12:02:30','group',0,'','','系统数据',2,'XiTongShuJu'),(15,'\0','2019-07-22 12:02:30','btn',2,'','','刷新',2,'ShuaXin'),(3,'\0','2019-07-22 12:02:30','btn',2,'','','新增',1,'XinZeng'),(2,'\0','2019-07-22 12:02:30','menu',1,'','app/dev/dev','开发功能',1,'kfgn'),(1,'\0','2019-07-22 12:02:30','group',0,'','','开发管理',1,'kfgl'),(23,'\0','2019-08-09 11:18:04','btn',10,'','','修改',2,'XiuGai'),(24,'\0','2019-08-09 11:18:20','btn',10,'','','删除',3,'ShanChu'),(25,'\0','2019-09-17 08:56:59','group',0,'','','基础数据',3,'JiChuShuJu'),(26,'\0','2019-09-17 08:58:00','menu',25,'','goods/goods/goods','商品维护',1,'ShangPinWeiHu'),(27,'\0','2019-09-17 09:03:07','menu',25,'','goods/sx/sx','主属性维护',2,'ZhuShuXingWeiHu'),(28,'\0','2019-09-17 09:03:35','menu',25,'','goods/lens/lens','度数维护',3,'DuShuWeiHu'),(29,'\0','2019-09-17 09:04:06','menu',25,'','goods/price/price','价格维护',5,'JiaGeWeiHu'),(30,'\0','2019-09-17 09:04:53','group',0,'','','库存管理',4,'KuCunGuanLi'),(31,'\0','2019-09-17 09:05:36','menu',25,'','','客户维护',5,'KeHuWeiHu'),(32,'\0','2019-09-17 09:05:51','menu',25,'','','供货商维护',6,'GongHuoShangWeiHu'),(33,'\0','2019-09-17 09:07:07','menu',30,'','kc/init/init','初始库存',1,'ChuShiKuCun'),(34,'\0','2019-09-17 09:07:42','menu',30,'','kc/pd/pd','库存盘点',2,'KuCunPanDian'),(35,'\0','2019-09-17 09:09:08','menu',30,'','kc/change/change','类型转换',3,'LeiXingZhuanHuan'),(36,'\0','2019-09-17 09:09:38','menu',30,'','kc/find/find','库存查询',4,'KuCunChaXun'),(37,'\0','2019-09-17 09:14:36','group',0,'','','工作流程',6,'GongZuoLiuCheng'),(85,'\0','2019-09-17 10:13:07','btn',84,'','','试算平衡',1,'ShiSuanPingHeng'),(40,'\0','2019-09-17 09:17:27','menu',37,'','lc/sell/bill','销售-单据操作',1,'XiaoShou-DanJuCaoZuo'),(41,'\0','2019-09-17 09:19:43','menu',4,'','app/ywbm/ywbm','业务编码',4,'YeWuBianMa'),(42,'\0','2019-09-17 09:20:23','menu',4,'','app/cw/km','会计科目',5,'HuiJiKeMu'),(43,'\0','2019-09-17 09:21:43','menu',4,'','app/gs/gs','特定公式',6,'TeDingGongShi'),(44,'\0','2019-09-17 09:22:30','group',0,'','','财务',7,'CaiWu'),(45,'\0','2019-09-17 09:23:06','menu',44,'','cw/pztz/pztz','凭证填制',1,'PingZhengTianZhi'),(46,'','2019-09-17 09:23:49','menu',44,'','cw/pzsh/pzsh','凭证审核',2,'PingZhengShenHe'),(47,'\0','2019-09-17 09:24:19','menu',44,'','cw/pzcx/pzcx','凭证查询',3,'PingZhengChaXun'),(48,'\0','2019-09-17 09:33:12','menu',44,'','','销售凭证',4,'XiaoShouPingZheng'),(49,'\0','2019-09-17 09:34:02','menu',37,'','','配送-单据操作',3,'PeiSong-DanJuCaoZuo'),(84,'\0','2019-09-17 10:12:50','menu',44,'','','试算平衡',9,'ShiSuanPingHeng'),(51,'\0','2019-09-17 09:35:37','menu',37,'','','配送-单据查询',4,'PeiSong-DanJuChaXun'),(52,'\0','2019-09-17 09:39:17','btn',40,'','','选商品',1,'XuanShangPin'),(53,'\0','2019-09-17 09:39:36','btn',40,'','','制单',2,'ZhiDan'),(54,'\0','2019-09-17 09:39:50','btn',40,'','','审核',3,'ShenHe'),(55,'\0','2019-09-17 09:40:06','btn',40,'','','收费',4,'ShouFei'),(56,'\0','2019-09-17 09:41:41','menu',37,'','','销售-单据查询',2,'XiaoShou-DanJuChaXun'),(57,'\0','2019-09-17 09:42:19','btn',56,'','','查询',1,'ChaXun'),(58,'\0','2019-09-17 09:43:47','btn',49,'','','选货',1,'XuanHuo'),(59,'\0','2019-09-17 09:43:55','btn',49,'','','制单',2,'ZhiDan'),(83,'\0','2019-09-17 10:12:00','btn',48,'','','生成',1,'ShengCheng'),(82,'\0','2019-09-17 10:11:32','btn',47,'','','审核',1,'ShenHe'),(81,'\0','2019-09-17 10:11:10','btn',45,'','','保存',1,'BaoCun'),(63,'\0','2019-09-17 09:46:33','btn',51,'','','查询',1,'ChaXun'),(64,'\0','2019-09-17 09:46:51','btn',51,'','','审核',2,'ShenHe'),(65,'\0','2019-09-17 09:47:03','btn',51,'','','接单',3,'JieDan'),(66,'\0','2019-09-17 09:47:12','btn',51,'','','收货',4,'ShouHuo'),(67,'\0','2019-09-17 09:47:43','btn',49,'','','审核',3,'ShenHe'),(68,'\0','2019-09-17 09:49:27','menu',37,'','','进货-订货单操作',5,'JinHuo-DingHuoDan'),(69,'\0','2019-09-17 09:50:32','menu',37,'','','进货-订货单查询',6,'JinHuo-DingHuoDanChaXun'),(70,'\0','2019-09-17 09:54:51','btn',68,'','','选货',1,'XuanHuo'),(71,'\0','2019-09-17 09:54:58','btn',68,'','','制单',2,'ZhiDan'),(72,'\0','2019-09-17 09:55:07','btn',68,'','','审核',3,'ShenHe'),(73,'\0','2019-09-17 09:56:16','btn',69,'','','查询',1,'ChaXun'),(74,'\0','2019-09-17 09:56:23','btn',69,'','','下单',2,'XiaDan'),(75,'\0','2019-09-17 09:58:16','menu',37,'','','进货-到货单操作',7,'JinHuo-DaoHuoDanCaoZuo'),(76,'\0','2019-09-17 09:58:26','menu',37,'','','进货-到货单查询',8,'JinHuo-DaoHuoDanChaXun'),(77,'\0','2019-09-17 09:58:40','btn',76,'','','查询',1,'ChaXun'),(78,'\0','2019-09-17 09:59:50','btn',75,'','','制单',1,'ZhiDan'),(79,'\0','2019-09-17 10:00:02','btn',75,'','','审核',2,'ShenHe'),(80,'\0','2019-09-17 10:00:27','btn',76,'','','入库',2,'RuKu'),(86,'\0','2019-09-17 10:13:30','menu',44,'','','报表',10,'BaoBiao'),(87,'\0','2019-09-17 10:13:43','btn',86,'','','生成',1,'ShengCheng'),(92,'\0','2019-09-17 10:16:56','menu',44,'','','查询流水',8,'ChaXunLiuShui'),(91,'\0','2019-09-17 10:16:46','menu',44,'','','填写流水',6,'TianXieLiuShui'),(93,'\0','2019-09-17 10:17:12','btn',91,'','','保存',1,'BaoCun'),(94,'\0','2019-09-17 10:17:23','btn',92,'','','查询',1,'ChaXun'),(95,'\0','2019-09-17 10:18:42','btn',34,'','','导出盘点单',1,'DaoChuPanDianDan'),(96,'\0','2019-09-17 10:18:49','btn',34,'','','导入盘点单',2,'DaoRuPanDianDan'),(97,'\0','2019-09-17 10:19:22','btn',34,'','','审核',3,'ShenHe'),(98,'','2019-09-17 10:20:25','btn',35,'','','正转次',1,'ZhengZhuanCi'),(99,'','2019-09-17 10:20:35','btn',35,'','','次转残',2,'CiZhuanCan'),(100,'','2019-09-17 10:21:39','btn',35,'','','残转次',3,'CanZhuanCi'),(101,'','2019-09-17 10:21:50','btn',35,'','','次转正',4,'CiZhuanZheng'),(102,'\0','2019-09-17 10:22:09','btn',36,'','','查询',1,'ChaXun'),(103,'\0','2019-09-17 10:22:48','btn',33,'','','查询',1,'ChaXun'),(104,'\0','2019-09-17 10:23:48','btn',26,'','','保存',1,'BaoCun'),(105,'\0','2019-09-17 10:23:57','btn',26,'','','修改',2,'XiuGai'),(106,'\0','2019-09-17 10:24:05','btn',26,'','','删除',3,'ShanChu'),(107,'\0','2019-09-17 10:24:41','btn',27,'','','保存',1,'BaoCun'),(108,'\0','2019-09-17 10:24:47','btn',27,'','','修改',2,'XiuGai'),(109,'\0','2019-09-17 10:24:56','btn',27,'','','删除',3,'ShanChu'),(110,'','2019-09-17 10:25:40','btn',28,'','','保存参数',1,'BaoCunCanShu'),(111,'\0','2019-09-17 10:25:53','btn',28,'','','保存度数',2,'BaoCunDuShu'),(112,'\0','2019-09-17 10:26:56','btn',28,'','','打印条码',2,'DaYinTiaoMa'),(113,'\0','2019-09-17 10:27:05','btn',28,'','','打印二维码',3,'DaYinErWeiMa'),(114,'\0','2019-09-17 10:27:37','btn',31,'','','保存',1,'BaoCun'),(115,'\0','2019-09-17 10:27:43','btn',31,'','','修改',2,'XiuGai'),(116,'\0','2019-09-17 10:28:08','btn',29,'','','保存',1,'BaoCun'),(117,'\0','2019-09-17 10:28:36','btn',32,'','','保存',1,'BaoCun'),(118,'\0','2019-09-17 10:28:42','btn',32,'','','修改',2,'XiuGai'),(119,'\0','2019-09-17 10:29:14','menu',25,'','','客户查询',7,'KeHuChaXun'),(120,'\0','2019-09-17 10:29:28','menu',25,'','','供货商查询',8,'GongHuoShangChaXun'),(121,'\0','2019-09-17 10:34:41','btn',36,'','','正转次',2,'ZhengZhuanCi'),(122,'\0','2019-09-17 10:34:59','btn',36,'','','次转残',3,'CiZhuanCan'),(123,'\0','2019-09-17 10:35:10','btn',36,'','','残转次',4,'CanZhuanCi'),(124,'\0','2019-09-17 10:35:18','btn',36,'','','次转正',5,'CiZhuanZheng'),(125,'\0','2019-09-17 13:05:36','btn',86,'','','导出',1,'DaoChu'),(126,'\0','2019-09-17 13:06:52','menu',44,'','','结转',11,'JieZhuan'),(127,'\0','2019-09-17 13:07:10','btn',126,'','','日结',1,'RiJie'),(128,'\0','2019-09-17 13:07:18','btn',126,'','','月结',2,'YueJie'),(129,'\0','2019-09-17 13:07:30','btn',126,'','','季节',3,'JiJie'),(130,'\0','2019-09-17 13:07:38','btn',126,'','','半年结',4,'BanNianJie'),(131,'\0','2019-09-17 13:07:47','btn',126,'','','年结',5,'NianJie'),(132,'\0','2019-09-17 13:08:14','menu',44,'','','设置',100,'SheZhi'),(133,'\0','2019-09-17 13:09:06','btn',132,'','','帐套',1,'ZhangTao'),(134,'\0','2019-09-17 13:09:15','btn',132,'','','会计月',1,'HuiJiYue'),(135,'\0','2019-09-23 11:46:35','btn',16,'','','修改',2,'XiuGai'),(136,'\0','2019-09-23 11:46:47','btn',16,'','','删除',3,'ShanChu'),(137,'\0','2019-09-23 11:46:58','btn',16,'','','添加子项',4,'TianJiaZiXiang');
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_role`
--

LOCK TABLES `tu_role` WRITE;
/*!40000 ALTER TABLE `tu_role` DISABLE KEYS */;
INSERT INTO `tu_role` VALUES (1,'\0','2019-07-22 12:02:30','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140','admin'),(17,'\0','2019-08-09 14:38:30','4,5,6','4'),(14,'\0','2019-08-09 14:20:03','4,16,17','1'),(15,'\0','2019-08-09 14:31:18','4,16,18,17,10,24,5,22,21,9,6,1,2,15','2'),(16,'\0','2019-08-09 14:34:34','4,16,17,10,14,11,23,24,5,22,21,9,6','3');
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_user`
--

LOCK TABLES `tu_user` WRITE;
/*!40000 ALTER TABLE `tu_user` DISABLE KEYS */;
INSERT INTO `tu_user` VALUES (1,'\0','2019-07-22 12:02:30','admin','21232f297a57a5a743894a0e4a801fc3');
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

-- Dump completed on 2019-09-23 16:18:09
