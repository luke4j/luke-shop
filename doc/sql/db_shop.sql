-- MySQL dump 10.13  Distrib 8.0.16, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: db_shop
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
-- Table structure for table `tcw_bill`
--

DROP TABLE IF EXISTS `tcw_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tcw_bill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `day` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `proof_id` bigint(20) DEFAULT NULL,
  `send_addr` varchar(255) DEFAULT NULL,
  `send_bank` varchar(255) DEFAULT NULL,
  `send_id` bigint(20) DEFAULT NULL,
  `send_phone` varchar(255) DEFAULT NULL,
  `serial` bigint(20) DEFAULT NULL,
  `take_addr` varchar(255) DEFAULT NULL,
  `take_bank` varchar(255) DEFAULT NULL,
  `take_id` bigint(20) DEFAULT NULL,
  `take_phone` varchar(255) DEFAULT NULL,
  `xtype` varchar(255) DEFAULT NULL,
  `data_id` bigint(20) DEFAULT NULL,
  `ls_id` bigint(20) DEFAULT NULL,
  `print` bit(1) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `x_tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcw_bill`
--

LOCK TABLES `tcw_bill` WRITE;
/*!40000 ALTER TABLE `tcw_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcw_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcw_bill_list`
--

DROP TABLE IF EXISTS `tcw_bill_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tcw_bill_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `cyl` float DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `line_number` bigint(20) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `price_and_tax` double DEFAULT NULL,
  `sph` float DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `tax_rate` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcw_bill_list`
--

LOCK TABLES `tcw_bill_list` WRITE;
/*!40000 ALTER TABLE `tcw_bill_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcw_bill_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcw_km`
--

DROP TABLE IF EXISTS `tcw_km`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tcw_km` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `bm` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `scope` varchar(40) DEFAULT NULL,
  `xtype` varchar(16) NOT NULL,
  `notes` varchar(60) DEFAULT NULL,
  `ztbm` varchar(6) DEFAULT NULL,
  `ztid` bigint(20) DEFAULT NULL,
  `fx` varchar(4) DEFAULT NULL,
  `zt_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcw_km`
--

LOCK TABLES `tcw_km` WRITE;
/*!40000 ALTER TABLE `tcw_km` DISABLE KEYS */;
INSERT INTO `tcw_km` VALUES (1,_binary '\0','2019-10-08 10:18:27','1001','库存现金','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(2,_binary '\0','2019-10-08 10:18:27','1002','银行存款','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(3,_binary '\0','2019-10-08 10:18:27','1003','存放中央银行款项','银行专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(4,_binary '\0','2019-10-08 10:18:27','1011','存放同业','银行专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(5,_binary '\0','2019-10-08 10:18:28','1015','其它货币基金','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(6,_binary '\0','2019-10-08 10:18:28','1021','结算备付金','证券专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(7,_binary '\0','2019-10-08 10:18:28','1031','存出保证金','金融共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(8,_binary '\0','2019-10-08 10:18:28','1051','拆出资金','金融共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(9,_binary '\0','2019-10-08 10:18:28','1101','交易性金融资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(10,_binary '\0','2019-10-08 10:18:28','1111','买入返售金融资产','金融共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(11,_binary '\0','2019-10-08 10:18:28','1121','应收票据','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(12,_binary '\0','2019-10-08 10:18:28','1122','应收帐款','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(13,_binary '\0','2019-10-08 10:18:28','1123','预付帐款','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(14,_binary '\0','2019-10-08 10:18:28','1131','应收股利','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(15,_binary '\0','2019-10-08 10:18:28','1132','应收利息','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(16,_binary '\0','2019-10-08 10:18:28','1211','应收保护储金','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(17,_binary '\0','2019-10-08 10:18:28','1221','应收代位追偿款','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(18,_binary '\0','2019-10-08 10:18:28','1222','应收分保帐款','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(19,_binary '\0','2019-10-08 10:18:28','1223','应收分保未到期责任准备金','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(20,_binary '\0','2019-10-08 10:18:28','1224','应收分保保险责任准备金','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(21,_binary '\0','2019-10-08 10:18:28','1231','其它应收款','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(22,_binary '\0','2019-10-08 10:18:28','1241','坏帐准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(23,_binary '\0','2019-10-08 10:18:28','1251','贴现资产','银行专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(24,_binary '\0','2019-10-08 10:18:28','1301','贷款','银行和保险共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(25,_binary '\0','2019-10-08 10:18:28','1302','贷款损失准备','银行和保险共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(26,_binary '\0','2019-10-08 10:18:28','1311','代理兑付证券','银行和保险共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(27,_binary '\0','2019-10-08 10:18:28','1321','代理业务资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(28,_binary '\0','2019-10-08 10:18:28','1401','材料采购','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(29,_binary '\0','2019-10-08 10:18:28','1402','在途物资','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(30,_binary '\0','2019-10-08 10:18:28','1403','原材料','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(31,_binary '\0','2019-10-08 10:18:28','1404','材料成本差异','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(32,_binary '\0','2019-10-08 10:18:28','1406','库存商品','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(33,_binary '\0','2019-10-08 10:18:28','1407','发出商品','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(34,_binary '\0','2019-10-08 10:18:28','1410','商品进销差价','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(35,_binary '\0','2019-10-08 10:18:28','1411','委托加工物资','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(36,_binary '\0','2019-10-08 10:18:28','1412','包装物及低值易耗品','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(37,_binary '\0','2019-10-08 10:18:28','1421','消耗性生物资产','农业专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(38,_binary '\0','2019-10-08 10:18:28','1431','周转材料','建造承包商专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(39,_binary '\0','2019-10-08 10:18:28','1441','贵金属','银行专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(40,_binary '\0','2019-10-08 10:18:28','1442','抵债资产','金融共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(41,_binary '\0','2019-10-08 10:18:29','1451','损余物资','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(42,_binary '\0','2019-10-08 10:18:29','1461','存货跌价准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(43,_binary '\0','2019-10-08 10:18:29','1501','待摊费用','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(44,_binary '\0','2019-10-08 10:18:29','1511','独立帐户资产','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(45,_binary '\0','2019-10-08 10:18:29','1521','持有至到期投资','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(46,_binary '\0','2019-10-08 10:18:29','1522','持有至到期投资减值准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(47,_binary '\0','2019-10-08 10:18:29','1523','可供出售金融资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(48,_binary '\0','2019-10-08 10:18:29','1524','长期股权投资','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(49,_binary '\0','2019-10-08 10:18:29','1525','长期股权投资减值准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(50,_binary '\0','2019-10-08 10:18:29','1526','投资性房地产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(51,_binary '\0','2019-10-08 10:18:29','1531','长期应收款','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(52,_binary '\0','2019-10-08 10:18:29','1541','未实现融资收益','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(53,_binary '\0','2019-10-08 10:18:29','1551','存出资本保证金','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(54,_binary '\0','2019-10-08 10:18:29','1601','固定资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(55,_binary '\0','2019-10-08 10:18:29','1602','累计折旧','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(56,_binary '\0','2019-10-08 10:18:29','1603','固定资产减值准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(57,_binary '\0','2019-10-08 10:18:29','1604','在建工程','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(58,_binary '\0','2019-10-08 10:18:29','1605','工程物资','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(59,_binary '\0','2019-10-08 10:18:29','1606','固定资产清理','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(60,_binary '\0','2019-10-08 10:18:29','1611','融资租赁资产','租赁专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(61,_binary '\0','2019-10-08 10:18:29','1612','未担保余值','租赁专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(62,_binary '\0','2019-10-08 10:18:29','1621','生产性生物资产','农业专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(63,_binary '\0','2019-10-08 10:18:29','1622','生产性生物资产累计折旧','农业专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(64,_binary '\0','2019-10-08 10:18:29','1623','公益性生物资产','农业专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(65,_binary '\0','2019-10-08 10:18:29','1631','油气资产','石油天然气开采专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(66,_binary '\0','2019-10-08 10:18:29','1632','累计折耗','石油天然气开采专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(67,_binary '\0','2019-10-08 10:18:29','1701','无形资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(68,_binary '\0','2019-10-08 10:18:29','1702','累计摊销','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(69,_binary '\0','2019-10-08 10:18:29','1703','无形资产减值准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(70,_binary '\0','2019-10-08 10:18:29','1711','商誉','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(71,_binary '\0','2019-10-08 10:18:29','1801','长期待摊费用','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(72,_binary '\0','2019-10-08 10:18:29','1811','递延所得资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(73,_binary '\0','2019-10-08 10:18:29','1901','待处理财产损益','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(74,_binary '\0','2019-10-08 10:18:29','2001','短期借款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(75,_binary '\0','2019-10-08 10:18:29','2002','存入保证金','金融共用','负债类 ',NULL,NULL,NULL,NULL,NULL),(76,_binary '\0','2019-10-08 10:18:29','2003','拆入资金','金融共用','负债类 ',NULL,NULL,NULL,NULL,NULL),(77,_binary '\0','2019-10-08 10:18:29','2004','向中央银行借款','银行专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(78,_binary '\0','2019-10-08 10:18:30','2011','同业存放','银行专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(79,_binary '\0','2019-10-08 10:18:30','2012','吸收存款','银行专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(80,_binary '\0','2019-10-08 10:18:30','2021','贴现负债','银行专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(81,_binary '\0','2019-10-08 10:18:30','2101','交易性金融负债','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(82,_binary '\0','2019-10-08 10:18:30','2111','专出回购金融资产款','金融共用','负债类 ',NULL,NULL,NULL,NULL,NULL),(83,_binary '\0','2019-10-08 10:18:30','2201','应付票据','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(84,_binary '\0','2019-10-08 10:18:30','2202','应付帐款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(85,_binary '\0','2019-10-08 10:18:30','2205','预收帐款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(86,_binary '\0','2019-10-08 10:18:30','2211','应付职工薪酬','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(87,_binary '\0','2019-10-08 10:18:30','2221','应交税费','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(88,_binary '\0','2019-10-08 10:18:30','2231','应付股利','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(89,_binary '\0','2019-10-08 10:18:30','2232','应付利息','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(90,_binary '\0','2019-10-08 10:18:30','2241','其他应付款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(91,_binary '\0','2019-10-08 10:18:30','2251','应付保户红利','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(92,_binary '\0','2019-10-08 10:18:30','2261','应付分保帐款','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(93,_binary '\0','2019-10-08 10:18:30','2311','代理买卖证券款','证券专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(94,_binary '\0','2019-10-08 10:18:30','2312','代理承销证券款','证券和银行共用','负债类 ',NULL,NULL,NULL,NULL,NULL),(95,_binary '\0','2019-10-08 10:18:30','2313','代理兑付证券款','证券和银行共用','负债类 ',NULL,NULL,NULL,NULL,NULL),(96,_binary '\0','2019-10-08 10:18:30','2314','代理业务负债','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(97,_binary '\0','2019-10-08 10:18:30','2401','预提费用','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(98,_binary '\0','2019-10-08 10:18:30','2411','预计负债','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(99,_binary '\0','2019-10-08 10:18:30','2501','递延收益','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(100,_binary '\0','2019-10-08 10:18:30','2601','长期借款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(101,_binary '\0','2019-10-08 10:18:30','2602','长期债券','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(102,_binary '\0','2019-10-08 10:18:30','2701','未到期责任准备金','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(103,_binary '\0','2019-10-08 10:18:30','2702','保险责任准备金','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(104,_binary '\0','2019-10-08 10:18:30','2711','保户储金','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(105,_binary '\0','2019-10-08 10:18:30','2721','独立帐户负债','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(106,_binary '\0','2019-10-08 10:18:30','2801','长期应付款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(107,_binary '\0','2019-10-08 10:18:30','2802','未确认融资费用','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(108,_binary '\0','2019-10-08 10:18:30','2811','专项应付款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(109,_binary '\0','2019-10-08 10:18:30','2901','递延所得税负债','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(110,_binary '\0','2019-10-08 10:18:30','3001','清算资金往来','银行专用','共同类 ',NULL,NULL,NULL,NULL,NULL),(111,_binary '\0','2019-10-08 10:18:30','3002','外汇买卖','金融共用','共同类 ',NULL,NULL,NULL,NULL,NULL),(112,_binary '\0','2019-10-08 10:18:31','3101','衍生工具','通用','共同类 ',NULL,NULL,NULL,NULL,NULL),(113,_binary '\0','2019-10-08 10:18:31','3201','套期工具','通用','共同类 ',NULL,NULL,NULL,NULL,NULL),(114,_binary '\0','2019-10-08 10:18:31','3202','被套期项目','通用','共同类 ',NULL,NULL,NULL,NULL,NULL),(115,_binary '\0','2019-10-08 10:18:31','4001','实收资本','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(116,_binary '\0','2019-10-08 10:18:31','4002','资本公积','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(117,_binary '\0','2019-10-08 10:18:31','4101','盈余公积','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(118,_binary '\0','2019-10-08 10:18:31','4102','一般风险准备','金融共用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(119,_binary '\0','2019-10-08 10:18:31','4103','本年利润','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(120,_binary '\0','2019-10-08 10:18:31','4104','利润分配','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(121,_binary '\0','2019-10-08 10:18:31','4201','库存股','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(122,_binary '\0','2019-10-08 10:18:31','5001','生产成本','通用','成本类 ',NULL,NULL,NULL,NULL,NULL),(123,_binary '\0','2019-10-08 10:18:31','5101','制造费用','通用','成本类 ',NULL,NULL,NULL,NULL,NULL),(124,_binary '\0','2019-10-08 10:18:31','5201','劳务成本','通用','成本类 ',NULL,NULL,NULL,NULL,NULL),(125,_binary '\0','2019-10-08 10:18:31','5301','研发支出','通用','成本类 ',NULL,NULL,NULL,NULL,NULL),(126,_binary '\0','2019-10-08 10:18:31','5401','工程施工','建造承包商专用','成本类 ',NULL,NULL,NULL,NULL,NULL),(127,_binary '\0','2019-10-08 10:18:31','5402','工程结算','建造承包商专用','成本类 ',NULL,NULL,NULL,NULL,NULL),(128,_binary '\0','2019-10-08 10:18:31','5403','机械作业','建造承包商专用','成本类 ',NULL,NULL,NULL,NULL,NULL),(129,_binary '\0','2019-10-08 10:18:31','6001','主营业务收入','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(130,_binary '\0','2019-10-08 10:18:31','6011','利息收入','金融共用','损益类 ',NULL,NULL,NULL,NULL,NULL),(131,_binary '\0','2019-10-08 10:18:31','6021','手续费收入','金融共用','损益类 ',NULL,NULL,NULL,NULL,NULL),(132,_binary '\0','2019-10-08 10:18:31','6031','保费收入','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(133,_binary '\0','2019-10-08 10:18:31','6032','分保费收入','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(134,_binary '\0','2019-10-08 10:18:31','6041','租赁收入','租赁专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(135,_binary '\0','2019-10-08 10:18:31','6051','其他业务收入','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(136,_binary '\0','2019-10-08 10:18:31','6061','汇兑损益','金融专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(137,_binary '\0','2019-10-08 10:18:31','6101','公允价值变动损益','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(138,_binary '\0','2019-10-08 10:18:31','6111','投资收益','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(139,_binary '\0','2019-10-08 10:18:31','6201','摊回保险责任准备金','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(140,_binary '\0','2019-10-08 10:18:31','6202','摊回赔付支出','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(141,_binary '\0','2019-10-08 10:18:31','6203','摊回分保费用','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(142,_binary '\0','2019-10-08 10:18:31','6301','营业外收入','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(143,_binary '\0','2019-10-08 10:18:31','6401','主营业务成本','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(144,_binary '\0','2019-10-08 10:18:31','6402','其它业务成本','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(145,_binary '\0','2019-10-08 10:18:31','6405','营业税金及附加','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(146,_binary '\0','2019-10-08 10:18:32','6411','利息支出','金融共用','损益类 ',NULL,NULL,NULL,NULL,NULL),(147,_binary '\0','2019-10-08 10:18:32','6421','手续费支出','金融共用','损益类 ',NULL,NULL,NULL,NULL,NULL),(148,_binary '\0','2019-10-08 10:18:32','6501','提取未到期责任准备金','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(149,_binary '\0','2019-10-08 10:18:32','6502','撮保险责任准备金','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(150,_binary '\0','2019-10-08 10:18:32','6511','赔付支出','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(151,_binary '\0','2019-10-08 10:18:32','6521','保户红利支出','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(152,_binary '\0','2019-10-08 10:18:32','6531','退保金','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(153,_binary '\0','2019-10-08 10:18:32','6541','分出保费','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(154,_binary '\0','2019-10-08 10:18:32','6542','分保费用','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(155,_binary '\0','2019-10-08 10:18:32','6601','销售费用','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(156,_binary '\0','2019-10-08 10:18:32','6602','管理费用','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(157,_binary '\0','2019-10-08 10:18:32','6603','财务费用','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(158,_binary '\0','2019-10-08 10:18:32','6604','勘探费用','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(159,_binary '\0','2019-10-08 10:18:32','6701','资产减值损失','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(160,_binary '\0','2019-10-08 10:18:32','6711','营业外支出','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(161,_binary '\0','2019-10-08 10:18:32','6801','所得税','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(162,_binary '\0','2019-10-08 10:18:32','6901','以前年度损益调整','通用','损益类 ',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tcw_km` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcw_lfp`
--

DROP TABLE IF EXISTS `tcw_lfp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tcw_lfp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `data_id` bigint(20) DEFAULT NULL,
  `ls_id` bigint(20) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `proof_id` bigint(20) DEFAULT NULL,
  `sj_id` bigint(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `xtable` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcw_lfp`
--

LOCK TABLES `tcw_lfp` WRITE;
/*!40000 ALTER TABLE `tcw_lfp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcw_lfp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcw_ls`
--

DROP TABLE IF EXISTS `tcw_ls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tcw_ls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL,
  `cashier_id` bigint(20) NOT NULL,
  `notes` varchar(50) NOT NULL,
  `data_id` bigint(20) DEFAULT NULL,
  `proof_id` bigint(20) DEFAULT NULL,
  `send_bank` varchar(50) NOT NULL,
  `send_or_take` varchar(2) NOT NULL,
  `serial` varchar(20) NOT NULL,
  `state` varchar(10) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `take_bank` varchar(50) NOT NULL,
  `xtype` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcw_ls`
--

LOCK TABLES `tcw_ls` WRITE;
/*!40000 ALTER TABLE `tcw_ls` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcw_ls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcw_proof`
--

DROP TABLE IF EXISTS `tcw_proof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tcw_proof` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `cashier_id` bigint(20) DEFAULT NULL,
  `admin1id` bigint(20) DEFAULT NULL,
  `admin2id` bigint(20) DEFAULT NULL,
  `admin3id` bigint(20) DEFAULT NULL,
  `cw_time` varchar(255) DEFAULT NULL,
  `make_id` bigint(20) DEFAULT NULL,
  `number` varchar(40) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zt_id` bigint(20) DEFAULT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `data_id` bigint(20) DEFAULT NULL,
  `ls_id` bigint(20) DEFAULT NULL,
  `serial` bigint(20) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `xtype` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcw_proof`
--

LOCK TABLES `tcw_proof` WRITE;
/*!40000 ALTER TABLE `tcw_proof` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcw_proof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcw_proof_list`
--

DROP TABLE IF EXISTS `tcw_proof_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tcw_proof_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `amount` double DEFAULT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `km_id` bigint(20) DEFAULT NULL,
  `line_no` int(11) DEFAULT NULL,
  `proof_id` bigint(20) DEFAULT NULL,
  `currency_type` varchar(255) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcw_proof_list`
--

LOCK TABLES `tcw_proof_list` WRITE;
/*!40000 ALTER TABLE `tcw_proof_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcw_proof_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcw_sj`
--

DROP TABLE IF EXISTS `tcw_sj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tcw_sj` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `amount` double DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `kpr_id` bigint(20) DEFAULT NULL,
  `serial` bigint(20) DEFAULT NULL,
  `xtype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcw_sj`
--

LOCK TABLES `tcw_sj` WRITE;
/*!40000 ALTER TABLE `tcw_sj` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcw_sj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcw_time`
--

DROP TABLE IF EXISTS `tcw_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tcw_time` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `jz` bit(1) DEFAULT NULL,
  `kjq` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcw_time`
--

LOCK TABLES `tcw_time` WRITE;
/*!40000 ALTER TABLE `tcw_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcw_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcw_zt`
--

DROP TABLE IF EXISTS `tcw_zt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tcw_zt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcw_zt`
--

LOCK TABLES `tcw_zt` WRITE;
/*!40000 ALTER TABLE `tcw_zt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcw_zt` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `tg_goods_attr`
--

DROP TABLE IF EXISTS `tg_goods_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tg_goods_attr` (
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
  KEY `IDXr031osnsyec7pp5m710c45mlg` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_goods_attr`
--

LOCK TABLES `tg_goods_attr` WRITE;
/*!40000 ALTER TABLE `tg_goods_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tg_goods_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tg_goods_attr_cnf`
--

DROP TABLE IF EXISTS `tg_goods_attr_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tg_goods_attr_cnf` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `col` varchar(40) DEFAULT NULL,
  `col_name` varchar(10) DEFAULT NULL,
  `kind_id` bigint(20) DEFAULT NULL,
  `fun` varchar(20) DEFAULT NULL,
  `xtype` varchar(10) DEFAULT NULL,
  `xtype_id` bigint(20) DEFAULT NULL,
  `ele_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXlse6b5taasnn44vv1mmgxs9fs` (`kind_id`),
  KEY `IDXt6hk5b49s1gqtjdpix542kcpx` (`xtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_goods_attr_cnf`
--

LOCK TABLES `tg_goods_attr_cnf` WRITE;
/*!40000 ALTER TABLE `tg_goods_attr_cnf` DISABLE KEYS */;
INSERT INTO `tg_goods_attr_cnf` VALUES (1,_binary '\0','2019-10-22 15:12:44','a1','11',NULL,'11',NULL,1,'11'),(2,_binary '\0','2019-10-22 15:12:44','a2',NULL,NULL,NULL,NULL,1,NULL),(3,_binary '\0','2019-10-22 15:12:44','a3',NULL,NULL,NULL,NULL,1,NULL),(4,_binary '\0','2019-10-22 15:12:44','a4',NULL,NULL,NULL,NULL,1,NULL),(5,_binary '\0','2019-10-22 15:12:44','a5',NULL,NULL,NULL,NULL,1,NULL),(6,_binary '\0','2019-10-22 15:12:44','a6',NULL,NULL,NULL,NULL,1,NULL),(7,_binary '\0','2019-10-22 15:12:44','a7',NULL,NULL,NULL,NULL,1,NULL),(8,_binary '\0','2019-10-22 15:12:44','a8',NULL,NULL,NULL,NULL,1,NULL),(9,_binary '\0','2019-10-22 15:12:44','a9',NULL,NULL,NULL,NULL,1,NULL),(10,_binary '\0','2019-10-22 15:12:44','a10',NULL,NULL,NULL,NULL,1,NULL),(11,_binary '\0','2019-10-22 15:12:44','a11',NULL,NULL,NULL,NULL,1,NULL),(12,_binary '\0','2019-10-22 15:12:44','a12',NULL,NULL,NULL,NULL,1,NULL),(13,_binary '\0','2019-10-22 15:12:44','a13',NULL,NULL,NULL,NULL,1,NULL),(14,_binary '\0','2019-10-22 15:12:44','a14',NULL,NULL,NULL,NULL,1,NULL),(15,_binary '\0','2019-10-22 15:12:44','a15',NULL,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `tg_goods_attr_cnf` ENABLE KEYS */;
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
  `bln_entity` bit(1) DEFAULT NULL,
  `bln_lens` bit(1) DEFAULT NULL,
  `bln_lib` bit(1) DEFAULT NULL,
  `bln_time` bit(1) DEFAULT NULL,
  `c_type` varchar(10) DEFAULT NULL,
  `fid` bigint(20) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `py` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXf611hleo091mw4yeicfko9amy` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=2714 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_type`
--

LOCK TABLES `tg_type` WRITE;
/*!40000 ALTER TABLE `tg_type` DISABLE KEYS */;
INSERT INTO `tg_type` VALUES (1,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '',_binary '',_binary '\0','品类',0,'镜片','JP'),(2,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'道具',NULL),(3,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '','品类',0,'护理液','HLY'),(4,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'泳镜',NULL),(5,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '',_binary '',_binary '\0','品类',0,'花镜','HJ'),(6,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '',_binary '',_binary '','品类',0,'隐形','YX'),(7,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'活动赠品',NULL),(8,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'其它',NULL),(9,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'耗材',NULL),(10,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'镜盒',NULL),(11,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '','品类',0,'滴眼液','DYY'),(12,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'镜架',NULL),(13,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'镜布',NULL),(14,_binary '\0','2019-11-27 10:46:05',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'太阳镜',NULL),(15,_binary '\0','2019-11-27 10:52:26',_binary '',_binary '\0',_binary '\0',_binary '\0','品类',0,'验光','YG'),(16,_binary '\0','2019-11-27 10:53:16',_binary '\0',_binary '\0',_binary '\0',_binary '\0','品类',0,'代购镜架','DGJJ'),(17,_binary '\0','2019-11-27 10:54:00',_binary '\0',_binary '',_binary '\0',_binary '\0','品类',0,'零定镜片','LDJP'),(18,_binary '\0','2019-11-27 10:54:13',_binary '\0',_binary '',_binary '\0',_binary '\0','品类',0,'车房镜片','CFJP'),(19,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',1,'明月','MY'),(20,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',1,'蔡司','CS'),(21,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',5,'宝芝林','BZL'),(22,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',5,'康星','KX'),(23,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'翻转拍','FZP'),(24,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'眼罩','YZ'),(25,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'防滑套','FHT'),(26,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'镜布','JB'),(27,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'镜盒','JH'),(28,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'美薄加工','MBJG'),(29,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'加厚中心','JHZX'),(30,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'加厚边缘','JHBY'),(31,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'棱镜','LJ'),(32,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'特殊基弯','TSJW'),(33,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'染全色','RQS'),(34,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'染渐进色','RJJS'),(35,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'染个性色','RGXS'),(36,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'特殊膜层','TSMC'),(37,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'染七彩膜','RQCM'),(38,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'升级为偏光镜片','SJWPGJP'),(39,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'明月','MY'),(40,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',8,'减薄中心','JBZX'),(41,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',10,'牛仔盒/花盒','NZH/HH'),(42,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',10,'郑州市第二人民医院','ZZSDERMYY'),(43,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',10,'奥特曼','ATM'),(44,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',10,'李维斯','LWS'),(45,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',10,'新百伦','XBL'),(46,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',10,'欧凯','OK'),(47,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'华尔诗丹','HESD'),(48,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'FLAIR','FLAIR'),(49,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'保时捷','BSJ'),(50,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'CK光学','CKGX'),(51,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'奔驰','BC'),(52,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'华尔诗丹18K','HESD18K'),(53,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'罗敦司德','LDSD'),(54,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'蔡司','CS'),(55,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'奥特曼','ATM'),(56,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'童爱','TA'),(57,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'贝秀硅胶','BXGJ'),(58,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'歌诗图','GST'),(59,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'贝秀钨钛','BXWT'),(60,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'净视明','JSM'),(61,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'麦可梦','MKM'),(62,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'新百伦','XBL'),(63,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'李维斯','LWS'),(64,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'享变','XB'),(65,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'克莱斯勒','KLSL'),(66,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'花花公子','HHGZ'),(67,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'缇凡尼','TFN'),(68,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'欧凯','OK'),(69,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'炫晶','XJ'),(70,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'印象派','YXP'),(71,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'翼博记忆','YBJY'),(72,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'加菲猫','JFM'),(73,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'蓝精灵','LJL'),(74,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'华尔顿','HED'),(75,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',12,'宝芝林','BZL'),(76,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',13,'郑州市第二人民医院','ZZSDERMYY'),(77,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'CK','CK'),(78,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'MCM','MCM'),(79,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'保时捷','BSJ'),(80,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'蔻依','KY'),(81,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'罗敦司德','LDSD'),(82,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'菲拉格慕','FLGM'),(83,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'耐克','NK'),(84,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'鳄鱼','EY'),(85,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'雷朋','LP'),(86,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'佩迪近视太阳镜','PDJSTYJ'),(87,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'佩迪','PD'),(88,_binary '\0','2019-11-27 13:44:17',NULL,NULL,NULL,NULL,'品牌',14,'李维斯','LWS'),(1777,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',69,'5803','5803'),(1776,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03059','03059'),(1775,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03059','03059'),(1774,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03059','03059'),(1773,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',69,'5002','5002'),(1772,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',69,'5004','5004'),(1771,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03042','03042'),(1770,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03042','03042'),(1769,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03042','03042'),(1768,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',69,'5003','5003'),(1767,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',69,'5801','5801'),(1766,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',69,'5001','5001'),(1765,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',69,'5802','5802'),(1764,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03041','03041'),(1763,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03041','03041'),(1762,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03041','03041'),(1761,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03038','03038'),(1760,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03038','03038'),(1759,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03038','03038'),(1758,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'92020','92020'),(1757,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'92020','92020'),(1756,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'92020','92020'),(1755,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03036','03036'),(1754,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03036','03036'),(1753,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03036','03036'),(1752,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'92026','92026'),(1751,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'92026','92026'),(1750,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'92026','92026'),(1749,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'92024','92024'),(1748,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'92024','92024'),(1747,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'92024','92024'),(1746,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'98005','98005'),(1745,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'98005','98005'),(1744,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'98005','98005'),(1743,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03085','03085'),(1742,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03085','03085'),(1741,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03085','03085'),(1740,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'99007','99007'),(1739,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'99007','99007'),(1738,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'99007','99007'),(1737,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'98014','98014'),(1736,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'98014','98014'),(1735,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'98014','98014'),(1734,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91022','91022'),(1733,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91022','91022'),(1732,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91022','91022'),(1731,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'005','005'),(1730,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'103','103'),(1729,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'106','106'),(1728,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9089','9089'),(1727,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'99027','99027'),(1726,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'99027','99027'),(1725,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'99027','99027'),(1724,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'012','012'),(1723,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'011','011'),(1722,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'001','001'),(1721,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9085','9085'),(1720,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91042','91042'),(1719,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91042','91042'),(1718,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91042','91042'),(1717,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91018','91018'),(1716,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91018','91018'),(1715,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91018','91018'),(1714,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'1002','1002'),(1713,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9065','9065'),(1712,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91020','91020'),(1711,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91020','91020'),(1710,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91020','91020'),(1709,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9058','9058'),(1708,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91073','91073'),(1707,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91073','91073'),(1706,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91073','91073'),(1705,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9059','9059'),(1704,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'807','807'),(1703,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'807','807'),(1702,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'99025','99025'),(1701,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'99025','99025'),(1700,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'99025','99025'),(1699,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'92038','92038'),(1698,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'92038','92038'),(1697,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'92038','92038'),(1696,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9009','9009'),(1695,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'808','808'),(1694,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'808','808'),(1693,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9022','9022'),(1692,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9016','9016'),(1691,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'92034','92034'),(1690,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'92034','92034'),(1689,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'92034','92034'),(1688,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9029','9029'),(1687,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'99033','99033'),(1686,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'99033','99033'),(1685,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'99033','99033'),(1684,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9026','9026'),(1683,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91011','91011'),(1682,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91011','91011'),(1681,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91011','91011'),(1680,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9020','9020'),(1679,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9028','9028'),(1678,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'98011','98011'),(1677,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'98011','98011'),(1676,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'98011','98011'),(1675,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'99032','99032'),(1674,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'99032','99032'),(1673,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'99032','99032'),(1672,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'806','806'),(1671,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'806','806'),(1670,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91047X','91047X'),(1669,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91047X','91047X'),(1668,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91047X','91047X'),(1667,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9095','9095'),(1666,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'98020X','98020X'),(1665,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'98020X','98020X'),(1664,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'98020X','98020X'),(1663,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9021','9021'),(1662,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91031','91031'),(1661,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91031','91031'),(1660,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91031','91031'),(1659,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91013','91013'),(1658,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91013','91013'),(1657,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91013','91013'),(1656,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91037','91037'),(1655,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91037','91037'),(1654,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91037','91037'),(1653,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'99013','99013'),(1652,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'99013','99013'),(1651,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'99013','99013'),(1650,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9019','9019'),(1649,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'805','805'),(1648,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'805','805'),(1647,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91036','91036'),(1646,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91036','91036'),(1645,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91036','91036'),(1644,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9105','9105'),(1643,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9055','9055'),(1642,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91029','91029'),(1641,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91029','91029'),(1640,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91029','91029'),(1639,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'1006','1006'),(1638,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'803','803'),(1637,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'803','803'),(1636,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9108','9108'),(1635,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9031','9031'),(1634,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'801','801'),(1633,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'801','801'),(1632,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'91039','91039'),(1631,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'91039','91039'),(1630,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'91039','91039'),(1629,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'908','908'),(1628,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'908','908'),(1627,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9103','9103'),(1626,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9069','9069'),(1625,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0107','0107'),(1624,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9067','9067'),(1623,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'812','812'),(1622,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'812','812'),(1621,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9090','9090'),(1620,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9107','9107'),(1619,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'811','811'),(1618,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'811','811'),(1617,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9080','9080'),(1616,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9092','9092'),(1615,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'810','810'),(1614,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'810','810'),(1613,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'10001','10001'),(1612,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'809','809'),(1611,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'809','809'),(1610,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,'809','809'),(1609,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,'809','809'),(1608,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9057','9057'),(1607,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9030','9030'),(1606,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'103','103'),(1605,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'1015','1015'),(1604,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'5006','5006'),(1603,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'5004','5004'),(1602,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'6048','6048'),(1601,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'9610','9610'),(1600,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0510','0510'),(1599,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'1057','1057'),(1598,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'6037','6037'),(1597,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'6047','6047'),(1596,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12017','12017'),(1595,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12009','12009'),(1594,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'6065','6065'),(1593,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12003','12003'),(1592,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12012','12012'),(1591,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12002','12002'),(1590,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'9441','9441'),(1589,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12004','12004'),(1588,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'6063','6063'),(1587,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12031','12031'),(1586,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'6076','6076'),(1585,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12032','12032'),(1584,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0806','0806'),(1583,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0809','0809'),(1582,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12035','12035'),(1581,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12037','12037'),(1580,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'52321','52321'),(1579,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12036','12036'),(1578,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'52182','52182'),(1577,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0805','0805'),(1576,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12034','12034'),(1575,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'52255','52255'),(1574,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'6066','6066'),(1573,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'6052','6052'),(1572,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12030','12030'),(1571,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'6060','6060'),(1570,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'6059-1','6059-1'),(1569,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'12029','12029'),(1568,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03033','03033'),(1567,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03033','03033'),(1566,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03033','03033'),(1565,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03086','03086'),(1564,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03086','03086'),(1563,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03086','03086'),(1562,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0803','0803'),(1561,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03017','03017'),(1560,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03017','03017'),(1559,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03017','03017'),(1558,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'5009','5009'),(1557,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0807','0807'),(1556,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03072','03072'),(1555,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03072','03072'),(1554,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03072','03072'),(1553,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'5011','5011'),(1552,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0811','0811'),(1551,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03080','03080'),(1550,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03080','03080'),(1549,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03080','03080'),(1548,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0804','0804'),(1547,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'05226','05226'),(1546,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'05226','05226'),(1545,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'05226','05226'),(1544,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0801','0801'),(1543,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'05227','05227'),(1542,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'05227','05227'),(1541,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'05227','05227'),(1540,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03081','03081'),(1539,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03081','03081'),(1538,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03081','03081'),(1537,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03057','03057'),(1536,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03057','03057'),(1535,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03057','03057'),(1534,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0808','0808'),(1533,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03050','03050'),(1532,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03050','03050'),(1531,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03050','03050'),(1530,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',65,'S009','S009'),(1529,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03007','03007'),(1528,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03007','03007'),(1527,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03007','03007'),(1526,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03005','03005'),(1525,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03005','03005'),(1524,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03005','03005'),(1523,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0810','0810'),(1522,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0802','0802'),(1521,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03065','03065'),(1520,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03065','03065'),(1519,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03065','03065'),(1518,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0502','0502'),(1517,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03049','03049'),(1516,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03049','03049'),(1515,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03049','03049'),(1514,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0507','0507'),(1513,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03048','03048'),(1512,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03048','03048'),(1511,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03048','03048'),(1510,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0517','0517'),(1509,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03045','03045'),(1508,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03045','03045'),(1507,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03045','03045'),(1506,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'12003','12003'),(1505,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0103','0103'),(1504,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03046','03046'),(1503,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03046','03046'),(1502,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03046','03046'),(1501,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0508','0508'),(1500,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0210','0210'),(1499,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0509','0509'),(1498,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0206','0206'),(1497,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0511','0511'),(1496,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0506','0506'),(1495,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0601','0601'),(1494,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0603','0603'),(1493,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0201','0201'),(1492,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0211','0211'),(1491,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0209','0209'),(1490,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',87,'0216','0216'),(1489,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03044','03044'),(1488,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03044','03044'),(1487,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03044','03044'),(1486,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',64,'1020','1020'),(1485,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',64,'1006','1006'),(1484,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03043','03043'),(1483,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03043','03043'),(1482,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03043','03043'),(1481,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',64,'1012','1012'),(1480,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',64,'1014','1014'),(1479,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03047','03047'),(1478,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03047','03047'),(1477,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03047','03047'),(1476,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03039','03039'),(1475,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03039','03039'),(1474,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03039','03039'),(1473,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',85,'3016  1145/17','3016  1145/17'),(1472,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03035','03035'),(1471,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03035','03035'),(1470,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03035','03035'),(1469,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',85,'3502 014/57','3502 014/57'),(1468,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03032','03032'),(1467,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03032','03032'),(1466,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03032','03032'),(1465,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',85,'3025 112/19','3025 112/19'),(1464,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03040','03040'),(1463,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03040','03040'),(1462,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03040','03040'),(1461,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',85,'3501 012/83','3501 012/83'),(1460,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09057','09057'),(1459,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09057','09057'),(1458,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09068','09068'),(1457,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09068','09068'),(1456,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09058','09058'),(1455,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09058','09058'),(1454,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09017','09017'),(1453,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09017','09017'),(1452,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09018','09018'),(1451,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09018','09018'),(1450,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09059','09059'),(1449,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09059','09059'),(1448,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09020','09020'),(1447,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09020','09020'),(1446,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09060','09060'),(1445,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09060','09060'),(1444,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09021','09021'),(1443,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09021','09021'),(1442,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09022','09022'),(1441,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09022','09022'),(1440,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09019','09019'),(1439,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09019','09019'),(1438,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'9014B','9014B'),(1437,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'9014B','9014B'),(1436,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',61,'9601','9601'),(1435,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',61,'9611','9611'),(1434,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',85,'2140-F-902','2140-F-902'),(1433,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2019','2019'),(1432,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2018','2018'),(1431,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2015','2015'),(1430,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2012','2012'),(1429,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2011','2011'),(1428,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2010','2010'),(1427,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2009','2009'),(1426,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2007','2007'),(1425,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6107','6107'),(1424,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6105','6105'),(1423,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6101','6101'),(1422,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6010','6010'),(1421,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6007','6007'),(1420,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2006','2006'),(1419,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2005','2005'),(1418,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2002','2002'),(1417,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6006','6006'),(1416,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2001','2001'),(1415,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1016','1016'),(1414,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1015','1015'),(1413,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1011','1011'),(1412,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6005','6005'),(1411,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1007','1007'),(1410,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1006','1006'),(1409,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1003','1003'),(1408,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6004','6004'),(1407,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1002','1002'),(1406,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6003','6003'),(1405,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'8038T','8038T'),(1404,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6002','6002'),(1403,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'8065B','8065B'),(1402,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'8061B','8061B'),(1401,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5070','5070'),(1400,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5066','5066'),(1399,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6001','6001'),(1398,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5067','5067'),(1397,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5037','5037'),(1396,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5025','5025'),(1395,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5095L','5095L'),(1394,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5093L','5093L'),(1393,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5092L','5092L'),(1392,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5091L','5091L'),(1391,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5117','5117'),(1390,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5113','5113'),(1389,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5109','5109'),(1388,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5102','5102'),(1387,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5101','5101'),(1386,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5100','5100'),(1385,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'101','101'),(1384,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'102','102'),(1383,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'006','006'),(1382,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'008','008'),(1381,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'009','009'),(1380,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'003','003'),(1379,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'105','105'),(1378,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'107','107'),(1377,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'007','007'),(1376,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'010','010'),(1375,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',57,'002','002'),(1374,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'216','216'),(1373,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'216','216'),(1372,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'204','204'),(1371,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'204','204'),(1370,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'203','203'),(1369,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'203','203'),(1368,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'202','202'),(1367,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'202','202'),(1366,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'201','201'),(1365,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'201','201'),(1364,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'021','021'),(1363,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'021','021'),(1362,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'020','020'),(1361,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'020','020'),(1360,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'018','018'),(1359,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'018','018'),(1358,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'015','015'),(1357,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'015','015'),(1356,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'014','014'),(1355,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'014','014'),(1354,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',56,'5038','5038'),(1353,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',56,'5019','5019'),(1352,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',56,'6204','6204'),(1351,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',56,'6221','6221'),(1350,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',56,'6217','6217'),(1349,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'013','013'),(1348,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'013','013'),(1347,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1001A','1001A'),(1346,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1001A','1001A'),(1345,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'2004A','2004A'),(1344,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'2004A','2004A'),(1343,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'3002A','3002A'),(1342,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'3002A','3002A'),(1341,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'0178','0178'),(1340,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'0178','0178'),(1339,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'0104','0104'),(1338,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'0104','0104'),(1337,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'10001A','10001A'),(1336,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'10001A','10001A'),(1335,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'2293','2293'),(1334,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'2293','2293'),(1333,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'20004A','20004A'),(1332,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'20004A','20004A'),(1331,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'0374','0374'),(1330,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'0374','0374'),(1329,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'0184','0184'),(1328,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'0184','0184'),(1327,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'20004','20004'),(1326,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'20004','20004'),(1325,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'2188','2188'),(1324,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'2188','2188'),(1323,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'0135','0135'),(1322,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'0135','0135'),(1321,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'10007','10007'),(1320,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'10007','10007'),(1319,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'2129','2129'),(1318,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'2129','2129'),(1317,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'0207','0207'),(1316,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'0207','0207'),(1315,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'0163','0163'),(1314,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'0163','0163'),(1313,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'2305','2305'),(1312,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'2305','2305'),(1311,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',52,'659-2626','659-2626'),(1310,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'2292','2292'),(1309,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'2292','2292'),(1308,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',52,'655-2934','655-2934'),(1307,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'5241','5241'),(1306,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'5241','5241'),(1305,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'5250','5250'),(1304,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'5250','5250'),(1303,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',52,'619-1137','619-1137'),(1302,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',52,'620-2289','620-2289'),(1301,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',51,'2011','2011'),(1300,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',52,'627-2390','627-2390'),(1299,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',51,'2014','2014'),(1298,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',84,'L745S','L745S'),(1296,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',84,'L823S','L823S'),(1297,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',51,'6002','6002'),(1295,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',83,'0880','0880'),(1294,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',83,'0678','0678'),(1293,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',51,'2013','2013'),(1292,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',83,'0876','0876'),(1291,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',83,'0863','0863'),(1290,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',83,'0897','0897'),(1289,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',82,'SF973S','SF973S'),(1288,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',82,'SF501S','SF501S'),(1287,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',81,'R1368C','R1368C'),(1286,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',53,'R1368C','R1368C'),(1285,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',80,'CE122S','CE122S'),(1284,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',79,'p8610','p8610'),(1283,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',49,'p8610','p8610'),(1282,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',78,'632SA','632SA'),(1281,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',51,'6011','6011'),(1280,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',51,'2005','2005'),(1279,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',51,'2020','2020'),(1278,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',51,'6019','6019'),(1277,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',51,'4012','4012'),(1276,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',51,'6014','6014'),(1275,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',77,'J798S','J798S'),(1274,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',50,'J455AF','J455AF'),(1273,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',79,'P8237','P8237'),(1272,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',49,'P8237','P8237'),(1271,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',79,'8281','8281'),(1270,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',49,'8281','8281'),(1269,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',79,'P8115','P8115'),(1268,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',49,'P8115','P8115'),(1267,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'908','908'),(1266,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'487','487'),(1265,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'869','869'),(1264,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'148','148'),(1263,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'781','781'),(1262,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'963','963'),(1261,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'488','488'),(1260,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'945','945'),(1259,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'001','001'),(1258,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'541','541'),(1257,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'927','927'),(1256,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'536','536'),(1255,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'951','951'),(1254,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'284','284'),(1253,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'156','156'),(1252,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'153','153'),(1251,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'938','938'),(1250,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'400','400'),(1249,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'147','147'),(1248,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'954','954'),(1247,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'949','949'),(1246,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'152','152'),(1245,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'787','787'),(1244,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'953','953'),(1243,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'942','942'),(1242,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'595','595'),(1241,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'965','965'),(1240,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',48,'479','479'),(1239,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'815','815'),(1238,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'6012','6012'),(1237,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'8576','8576'),(1236,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'6015','6015'),(1235,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9552','9552'),(1234,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9242','9242'),(1233,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9049','9049'),(1232,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9620','9620'),(1231,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9559','9559'),(1230,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9529','9529'),(1229,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9541','9541'),(1228,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9139','9139'),(1227,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'H-8061','H-8061'),(1226,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9307','9307'),(1225,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9020','9020'),(1224,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'8563','8563'),(1223,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9021','9021'),(1222,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9088','9088'),(1221,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9011','9011'),(1220,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9060','9060'),(1219,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9235','9235'),(1218,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'8835','8835'),(1217,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9033','9033'),(1216,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9546','9546'),(1215,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9241','9241'),(1214,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9232','9232'),(1213,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9227S','9227S'),(1212,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9228','9228'),(1211,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9043','9043'),(1210,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9066','9066'),(1209,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9305','9305'),(1208,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9303','9303'),(1207,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9306','9306'),(1206,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9600','9600'),(1205,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9037','9037'),(1204,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9252','9252'),(1203,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9607','9607'),(1202,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9041','9041'),(1201,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9536','9536'),(1200,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9119','9119'),(1199,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'6008','6008'),(1198,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9061','9061'),(1197,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'8886','8886'),(1196,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9057','9057'),(1195,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9609','9609'),(1194,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9226S','9226S'),(1193,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9229S','9229S'),(1192,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9035','9035'),(1191,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'6005','6005'),(1190,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9613','9613'),(1189,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9603','9603'),(1188,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9622','9622'),(1187,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9611','9611'),(1186,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'9580','9580'),(1185,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',47,'MOD9253','MOD9253'),(1184,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.60CZL','1.60成长乐'),(1183,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.60CZL','1.60成长乐'),(1182,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'A67plus','A67plus'),(1181,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'A67plus','A67plus'),(1180,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'A60plus','A60plus'),(1179,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'A60plus','A60plus'),(1178,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'A60Q','A60球'),(1177,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'A60Q','A60球'),(1176,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'A56F','A56非'),(1175,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'A56F','A56非'),(1174,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'A58QLH','A58球老花'),(1173,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'A58QLH','A58球老花'),(1172,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'A58QJS','A58球近视'),(1171,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'A58QJS','A58球近视'),(1170,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.74FJS','1.74非近视'),(1169,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.74FJS','1.74非近视'),(1168,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.71FJS','1.71非近视'),(1167,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.71FJS','1.71非近视'),(1166,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.60FJSGS','1.60非近视高散'),(1165,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.60FJSGS','1.60非近视高散'),(1164,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.67FJS','1.67非近视'),(1163,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.67FJS','1.67非近视'),(1162,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.60FJS','1.60非近视'),(1161,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.60FJS','1.60非近视'),(1160,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FYSCR','1.56非远视超韧'),(1159,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FYSCR','1.56非远视超韧'),(1158,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FJSCR','1.56非近视超韧'),(1157,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FJSCR','1.56非近视超韧'),(1156,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FSKXZJYGS','1.56非沙克小直径远高散'),(1155,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FSKXZJYGS','1.56非沙克小直径远高散'),(1154,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FSKXZJ','1.56非沙克小直径'),(1153,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FSKXZJ','1.56非沙克小直径'),(1152,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FHS','1.56非混散'),(1151,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FHS','1.56非混散'),(1150,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FJGS','1.56非近高散'),(1149,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FJGS','1.56非近高散'),(1148,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FYGS','1.56非远高散'),(1147,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FYGS','1.56非远高散'),(1146,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FJS','1.56非近视'),(1145,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FJS','1.56非近视'),(1144,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FYS','1.56非远视'),(1143,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FYS','1.56非远视'),(1778,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09064','09064'),(1779,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09064','09064'),(1780,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03063','03063'),(1781,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03063','03063'),(1782,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03063','03063'),(1783,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03062','03062'),(1784,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03062','03062'),(1785,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03062','03062'),(1786,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15044','15044'),(1787,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03034','03034'),(1788,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03034','03034'),(1789,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03034','03034'),(1790,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03060','03060'),(1791,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03060','03060'),(1792,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03060','03060'),(1793,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09045','09045'),(1794,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09045','09045'),(1795,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03023','03023'),(1796,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03023','03023'),(1797,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03023','03023'),(1798,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03003','03003'),(1799,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03003','03003'),(1800,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03003','03003'),(1801,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15077','15077'),(1802,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03010','03010'),(1803,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03010','03010'),(1804,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03010','03010'),(1805,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15058','15058'),(1806,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15045','15045'),(1807,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'05209','05209'),(1808,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'05209','05209'),(1809,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'05209','05209'),(1810,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09061','09061'),(1811,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09061','09061'),(1812,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'05028','05028'),(1813,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'05028','05028'),(1814,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'05028','05028'),(1815,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'05210','05210'),(1816,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'05210','05210'),(1817,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'05210','05210'),(1818,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15019','15019'),(1819,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09063','09063'),(1820,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09063','09063'),(1821,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09041','09041'),(1822,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09041','09041'),(1823,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'03025','03025'),(1824,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'03025','03025'),(1825,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'03025','03025'),(1826,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09038','09038'),(1827,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09038','09038'),(1828,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09047','09047'),(1829,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09047','09047'),(1830,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15073','15073'),(1831,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,'05212','05212'),(1832,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,'05212','05212'),(1833,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,'05212','05212'),(1834,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15006','15006'),(1835,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15074','15074'),(1836,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09042','09042'),(1837,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09042','09042'),(1838,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09064 C03','09064 C03'),(1839,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09064 C03','09064 C03'),(1840,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'Y132-C3','Y132-C3'),(1841,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'Y111-C23','Y111-C23'),(1842,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15080','15080'),(1843,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'Y120-C155','Y120-C155'),(1844,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09040','09040'),(1845,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09040','09040'),(1846,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'Y132-C6','Y132-C6'),(1847,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15010','15010'),(1848,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'Y110-C25','Y110-C25'),(1849,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09014B','09014B'),(1850,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09014B','09014B'),(1851,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'Y139-C1','Y139-C1'),(1852,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15026','15026'),(1853,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'Y119-C22','Y119-C22'),(1854,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'05130','05130'),(1855,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'05130','05130'),(1856,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15053','15053'),(1857,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'Y139-C6','Y139-C6'),(1858,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15069','15069'),(1859,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'Y111-C25','Y111-C25'),(1860,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15050','15050'),(1861,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'Y132-C12','Y132-C12'),(1862,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'05128','05128'),(1863,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'05128','05128'),(1864,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15028','15028'),(1865,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'G1008-C4','G1008-C4'),(1866,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15085','15085'),(1867,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09016B','09016B'),(1868,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09016B','09016B'),(1869,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',70,'J1008-C4','J1008-C4'),(1870,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09039','09039'),(1871,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09039','09039'),(1872,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15079','15079'),(1873,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09015B','09015B'),(1874,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09015B','09015B'),(1875,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15078','15078'),(1876,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15038','15038'),(1877,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15030','15030'),(1878,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09013B','09013B'),(1879,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09013B','09013B'),(1880,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D003','D003'),(1881,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D002','D002'),(1882,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D032','D032'),(1883,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D027','D027'),(1884,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D012','D012'),(1885,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D030','D030'),(1886,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D023','D023'),(1887,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D031','D031'),(1888,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D017','D017'),(1889,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D011','D011'),(1890,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D026','D026'),(1891,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'05127','05127'),(1892,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'05127','05127'),(1893,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D006','D006'),(1894,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D008','D008'),(1895,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'05131','05131'),(1896,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'05131','05131'),(1897,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D029','D029'),(1898,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,'09015','09015'),(1899,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,'09015','09015'),(1900,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D010','D010'),(1901,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D005','D005'),(1902,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',71,'D021','D021'),(1903,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71023','71023'),(1904,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71026','71026'),(1905,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',61,'9606','9606'),(1906,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71024','71024'),(1907,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',61,'9602','9602'),(1908,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71025','71025'),(1909,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',61,'9603','9603'),(1910,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71008','71008'),(1911,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71006','71006'),(1912,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',61,'9612','9612'),(1913,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',61,'9607','9607'),(1914,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'1031','1031'),(1915,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',61,'9069','9069'),(1916,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'1028','1028'),(1917,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'1030','1030'),(1918,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',61,'9613','9613'),(1919,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'1026','1026'),(1920,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'1027','1027'),(1921,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'1029','1029'),(1922,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71004','71004'),(1923,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71005','71005'),(1924,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71018','71018'),(1925,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71016','71016'),(1926,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',61,'9605','9605'),(1927,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71011','71011'),(1928,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71019','71019'),(1929,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71020','71020'),(1930,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71007','71007'),(1931,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'1036','1036'),(1932,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71036','71036'),(1933,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71015','71015'),(1934,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71027','71027'),(1935,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71017','71017'),(1936,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71009','71009'),(1937,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71028','71028'),(1938,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71035','71035'),(1939,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71012','71012'),(1940,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71010','71010'),(1941,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71037','71037'),(1942,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71032','71032'),(1943,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71030','71030'),(1944,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71029','71029'),(1945,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71033','71033'),(1946,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71034','71034'),(1947,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71031','71031'),(1948,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'239','239'),(1949,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71002','71002'),(1950,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'71003','71003'),(1951,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'232','232'),(1952,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'302','302'),(1953,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'307','307'),(1954,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'5543','5543'),(1955,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',72,'240','240'),(1956,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15029','15029'),(1957,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',66,'15056','15056'),(1958,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9061','9061'),(1959,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9097','9097'),(1960,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9088','9088'),(1961,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'1017','1017'),(1962,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9100','9100'),(1963,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'1010','1010'),(1964,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9053','9053'),(1965,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9079','9079'),(1966,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9011','9011'),(1967,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9091','9091'),(1968,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9051','9051'),(1969,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9101','9101'),(1970,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9081','9081'),(1971,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9018','9018'),(1972,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9086','9086'),(1973,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9036','9036'),(1974,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9006','9006'),(1975,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9056','9056'),(1976,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9096','9096'),(1977,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9063','9063'),(1978,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5065','5065'),(1979,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'1020','1020'),(1980,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9037','9037'),(1981,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9099','9099'),(1982,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9015','9015'),(1983,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9093','9093'),(1984,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9027','9027'),(1985,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5021','5021'),(1986,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5080','5080'),(1987,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5115','5115'),(1988,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9098','9098'),(1989,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5119','5119'),(1990,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5118','5118'),(1991,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9072','9072'),(1992,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9082','9082'),(1993,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',67,'9106','9106'),(1994,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5069','5069'),(1995,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'V-015','V-015'),(1996,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'V-015','V-015'),(1997,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'V-021','V-021'),(1998,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'V-021','V-021'),(1999,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'V-014','V-014'),(2000,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'V-014','V-014'),(2001,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5012','5012'),(2002,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5099','5099'),(2003,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'C-020','C-020'),(2004,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'C-020','C-020'),(2005,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5033','5033'),(2006,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5031','5031'),(2007,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'V-022','V-022'),(2008,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'V-022','V-022'),(2009,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'V-013','V-013'),(2010,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'V-013','V-013'),(2011,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'V-020','V-020'),(2012,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'V-020','V-020'),(2013,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5110','5110'),(2014,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'612','612'),(2015,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5098','5098'),(2016,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6156','6156'),(2017,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6154','6154'),(2018,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5068','5068'),(2019,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6135','6135'),(2020,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'V-018','V-018'),(2021,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'V-018','V-018'),(2022,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6087','6087'),(2023,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6131','6131'),(2024,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6142','6142'),(2025,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6143','6143'),(2026,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5106','5106'),(2027,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6068','6068'),(2028,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5035','5035'),(2029,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'V-019','V-019'),(2030,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'V-019','V-019'),(2031,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'V-023','V-023'),(2032,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'V-023','V-023'),(2033,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1005','1005'),(2034,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1008','1008'),(2035,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1009','1009'),(2036,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1010','1010'),(2037,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1012','1012'),(2038,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5036','5036'),(2039,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-021','U-021'),(2040,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-021','U-021'),(2041,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5027','5027'),(2042,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-023','U-023'),(2043,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-023','U-023'),(2044,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1017','1017'),(2045,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5103','5103'),(2046,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-201','U-201'),(2047,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-201','U-201'),(2048,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-203','U-203'),(2049,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-203','U-203'),(2050,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-204','U-204'),(2051,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-204','U-204'),(2052,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'1001','1001'),(2053,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5107','5107'),(2054,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-205','U-205'),(2055,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-205','U-205'),(2056,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-211','U-211'),(2057,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-211','U-211'),(2058,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5090L','5090L'),(2059,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2003','2003'),(2060,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-212','U-212'),(2061,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-212','U-212'),(2062,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-213','U-213'),(2063,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-213','U-213'),(2064,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2008','2008'),(2065,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-206','U-206'),(2066,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-206','U-206'),(2067,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5086','5086'),(2068,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-210','U-210'),(2069,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-210','U-210'),(2070,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-217','U-217'),(2071,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-217','U-217'),(2072,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5085','5085'),(2073,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5079','5079'),(2074,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,'U-103','U-103'),(2075,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,'U-103','U-103'),(2076,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2013','2013'),(2077,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'8081B','8081B'),(2078,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'8083B','8083B'),(2079,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'8060B','8060B'),(2080,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'8066B','8066B'),(2081,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',58,'5108','5108'),(2082,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6102','6102'),(2083,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2016','2016'),(2084,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',60,'2017','2017'),(2085,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6009','6009'),(2086,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'666','666'),(2087,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',59,'6008','6008'),(2088,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'9020','9020'),(2089,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5062','5062'),(2090,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7018','7018'),(2091,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7050','7050'),(2092,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7097','7097'),(2093,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7093','7093'),(2094,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'8009','8009'),(2095,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5222','5222'),(2096,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5007','5007'),(2097,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'8008','8008'),(2098,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5058','5058'),(2099,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'1084','1084'),(2100,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7100','7100'),(2101,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7030','7030'),(2102,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5020','5020'),(2103,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5070','5070'),(2104,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5033','5033'),(2105,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'1075','1075'),(2106,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5050','5050'),(2107,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7009','7009'),(2108,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6167','6167'),(2109,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'657','657'),(2110,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6151','6151'),(2111,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6118','6118'),(2112,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6107','6107'),(2113,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6147','6147'),(2114,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'660','660'),(2115,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6166','6166'),(2116,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6144','6144'),(2117,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6086','6086'),(2118,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6096','6096'),(2119,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5224','5224'),(2120,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6116','6116'),(2121,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6137','6137'),(2122,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'9021','9021'),(2123,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6070','6070'),(2124,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6110','6110'),(2125,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6146','6146'),(2126,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'622','622'),(2127,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6148','6148'),(2128,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6159','6159'),(2129,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6121','6121'),(2130,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7137','7137'),(2131,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6044','6044'),(2132,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6078','6078'),(2133,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7132','7132'),(2134,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5099','5099'),(2135,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5105','5105'),(2136,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5053','5053'),(2137,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5100','5100'),(2138,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5109','5109'),(2139,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'6210','6210'),(2140,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6100','6100'),(2141,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5011','5011'),(2142,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6160','6160'),(2143,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6150','6150'),(2144,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5212','5212'),(2145,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6149','6149'),(2146,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6076','6076'),(2147,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5030','5030'),(2148,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5215','5215'),(2149,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5066','5066'),(2150,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6158','6158'),(2151,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'3206','3206'),(2152,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5096','5096'),(2153,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6145','6145'),(2154,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'9004','9004'),(2155,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6141','6141'),(2156,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'2011','2011'),(2157,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5095','5095'),(2158,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6139','6139'),(2159,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5214','5214'),(2160,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6134','6134'),(2161,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7075','7075'),(2162,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5087','5087'),(2163,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5006','5006'),(2164,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'9015','9015'),(2165,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5068','5068'),(2166,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'8012','8012'),(2167,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'7150','7150'),(2168,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6125','6125'),(2169,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5019','5019'),(2170,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'8007','8007'),(2171,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6085','6085'),(2172,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5090','5090'),(2173,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'5082','5082'),(2174,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',74,'627','627'),(2175,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6138','6138'),(2176,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6098','6098'),(2177,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6161','6161'),(2178,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6077','6077'),(2179,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6155','6155'),(2180,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6094','6094'),(2181,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6080','6080'),(2182,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6111','6111'),(2183,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',73,'6095','6095'),(2184,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'8805','8805'),(2185,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'8805','8805'),(2186,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'655','655'),(2187,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'655','655'),(2188,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'8025','8025'),(2189,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'8025','8025'),(2190,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'8021','8021'),(2191,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'8021','8021'),(2192,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'8012','8012'),(2193,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'8012','8012'),(2194,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'6122','6122'),(2195,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'6122','6122'),(2196,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'8623','8623'),(2197,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'8623','8623'),(2198,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'8988','8988'),(2199,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'8988','8988'),(2200,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'655H','655红'),(2201,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'655H','655红'),(2202,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'9918','9918'),(2203,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'9918','9918'),(2204,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'3001','3001'),(2205,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'3001','3001'),(2206,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'1306','1306'),(2207,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'1306','1306'),(2208,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'1306H','1306黑'),(2209,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'1306H','1306黑'),(2210,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'1306K','1306咖'),(2211,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'1306K','1306咖'),(2212,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'2616','2616'),(2213,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'2616','2616'),(2214,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'86005H','86005黑'),(2215,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'86005H','86005黑'),(2216,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'008','008'),(2217,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'008','008'),(2218,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'8026','8026'),(2219,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'8026','8026'),(2220,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'007H','007灰'),(2221,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'007H','007灰'),(2222,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'007C','007茶'),(2223,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'007C','007茶'),(2224,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'007Z','007紫'),(2225,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'007Z','007紫'),(2226,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'8003','8003'),(2227,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'8003','8003'),(2228,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'823','823'),(2229,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'823','823'),(2230,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'3002','3002'),(2231,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'3002','3002'),(2232,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',22,'8905','8905'),(2233,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',22,'827H','827红'),(2234,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',22,'827H','827黑'),(2235,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',22,'K827H','K827黑'),(2236,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',22,'811H','811黑'),(2237,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',22,'825','825'),(2238,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',22,'8601','8601'),(2239,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,'8601','8601'),(2240,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,'8601','8601'),(2241,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.50CZL：R','1.50成长乐：R'),(2242,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.50CZL：R','1.50成长乐：R'),(2243,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.50CZL：L','1.50成长乐：L'),(2244,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.50CZL：L','1.50成长乐：L'),(2245,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.60CZL：L','1.60成长乐：L'),(2246,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.60CZL：L','1.60成长乐：L'),(2247,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.60CZL：R','1.60成长乐：R'),(2248,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.60CZL：R','1.60成长乐：R'),(2249,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FYSDZ','1.56非远视定制'),(2250,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FYSDZ','1.56非远视定制'),(2251,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.60FYSDZ','1.60非远视定制'),(2252,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.60FYSDZ','1.60非远视定制'),(2253,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.60FJSDZ','1.60非近视定制'),(2254,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.60FJSDZ','1.60非近视定制'),(2255,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'A60QDZ','A60球定制'),(2256,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'A60QDZ','A60球定制'),(2257,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'A60plusDZ','A60plus定制'),(2258,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'A60plusDZ','A60plus定制'),(2259,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'A67plusDZ','A67plus定制'),(2260,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'A67plusDZ','A67plus定制'),(2261,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56FJSDZ','1.56非近视定制'),(2262,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56FJSDZ','1.56非近视定制'),(2263,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.50QMAXLBH','1.50球面A系列变灰'),(2264,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.50QMAXLBH','1.50球面A系列变灰'),(2265,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.50FQMBH','1.50非球面变灰'),(2266,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.50FQMBH','1.50非球面变灰'),(2267,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.60AXLFQMBH','1.60A系列非球面变灰'),(2268,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.60AXLFQMBH','1.60A系列非球面变灰'),(2269,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.60AXLFQMBHDZ','1.60A系列非球面变灰定制'),(2270,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.60AXLFQMBHDZ','1.60A系列非球面变灰定制'),(2271,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67AXLFQMBH','1.67A系列非球面变灰'),(2272,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67AXLFQMBH','1.67A系列非球面变灰'),(2273,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.67FDZ','1.67非定制'),(2274,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.67FDZ','1.67非定制'),(2275,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6AXLQMSSXDG','1.6A系列球面时尚型单光'),(2276,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6AXLQMSSXDG','1.6A系列球面时尚型单光'),(2277,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67AXLQMSSXDG','1.67A系列球面时尚型单光'),(2278,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67AXLQMSSXDG','1.67A系列球面时尚型单光'),(2279,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.71FDZ','1.71非定制'),(2280,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.71FDZ','1.71非定制'),(2281,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.74FDZ','1.74非定制'),(2282,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.74FDZ','1.74非定制'),(2283,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.50BZJSMX','1.50标准级数码型'),(2284,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.50BZJSMX','1.50标准级数码型'),(2285,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.50BZJSMXDZ','1.50标准级数码型定制'),(2286,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.50BZJSMXDZ','1.50标准级数码型定制'),(2287,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6BZJSMX','1.6标准级数码型'),(2288,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6BZJSMX','1.6标准级数码型'),(2289,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6BZJSMXDZ','1.6标准级数码型定制'),(2290,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6BZJSMXDZ','1.6标准级数码型定制'),(2291,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5AXLJJ','1.5A系列渐进'),(2292,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5AXLJJ','1.5A系列渐进'),(2293,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5AXLJJHSSJ','1.5A系列渐进焕色视界'),(2294,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5AXLJJHSSJ','1.5A系列渐进焕色视界'),(2295,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6AXLJJHSSJ','1.6A系列渐进焕色视界'),(2296,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6AXLJJHSSJ','1.6A系列渐进焕色视界'),(2297,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6AXLJJ','1.6A系列渐进'),(2298,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6AXLJJ','1.6A系列渐进'),(2299,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67AXLJJ','1.67A系列渐进'),(2300,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67AXLJJ','1.67A系列渐进'),(2301,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67AXLJJHSSJ','1.67A系列渐进焕色视界'),(2302,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67AXLJJHSSJ','1.67A系列渐进焕色视界'),(2303,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.56QRFQM','1.56清锐非球面'),(2304,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.56QRFQM','1.56清锐非球面'),(2305,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6QRFQM','1.6清锐非球面'),(2306,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6QRFQM','1.6清锐非球面'),(2307,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67QRFQM','1.67清锐非球面'),(2308,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67QRFQM','1.67清锐非球面'),(2309,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74QRFQM','1.74清锐非球面'),(2310,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74QRFQM','1.74清锐非球面'),(2311,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.56XQRFQM','1.56新清锐非球面'),(2312,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.56XQRFQM','1.56新清锐非球面'),(2313,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.60XQRFQM','1.60新清锐非球面'),(2314,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.60XQRFQM','1.60新清锐非球面'),(2315,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.60XQRFQMDZ','1.60新清锐非球面定制'),(2316,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.60XQRFQMDZ','1.60新清锐非球面定制'),(2317,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XQRFQM','1.67新清锐非球面'),(2318,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XQRFQM','1.67新清锐非球面'),(2319,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XQRFQMDZ','1.67新清锐非球面定制'),(2320,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XQRFQMDZ','1.67新清锐非球面定制'),(2321,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74XQRFQM','1.74新清锐非球面'),(2322,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74XQRFQM','1.74新清锐非球面'),(2323,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.56XQRFQMHSSJ','1.56新清锐非球面焕色视界'),(2324,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.56XQRFQMHSSJ','1.56新清锐非球面焕色视界'),(2325,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XQRFQMHSSJ','1.6新清锐非球面焕色视界'),(2326,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XQRFQMHSSJ','1.6新清锐非球面焕色视界'),(2327,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.60XQRFQMHSSJDZ','1.60新清锐非球面焕色视界定制'),(2328,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.60XQRFQMHSSJDZ','1.60新清锐非球面焕色视界定制'),(2329,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XQRFQMHSSJDZ','1.67新清锐非球面焕色视界定制'),(2330,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XQRFQMHSSJDZ','1.67新清锐非球面焕色视界定制'),(2331,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'QJMB7D','全季膜变7代'),(2332,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'QJMB7D','全季膜变7代'),(2333,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XMRFQM','1.6新铭锐非球面'),(2334,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XMRFQM','1.6新铭锐非球面'),(2335,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XMRFQM','1.67新铭锐非球面'),(2336,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XMRFQM','1.67新铭锐非球面'),(2337,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74XMRFQM','1.74新铭锐非球面'),(2338,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74XMRFQM','1.74新铭锐非球面'),(2339,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XSWBRDG','1.5新三维博锐单光'),(2340,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XSWBRDG','1.5新三维博锐单光'),(2341,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XSWBRDGHSSJ','1.5新三维博锐单光焕色视界'),(2342,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XSWBRDGHSSJ','1.5新三维博锐单光焕色视界'),(2343,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XSWBRDG','1.6新三维博锐单光'),(2344,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XSWBRDG','1.6新三维博锐单光'),(2345,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XSWBRDGHSSJ','1.6新三维博锐单光焕色视界'),(2346,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XSWBRDGHSSJ','1.6新三维博锐单光焕色视界'),(2347,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'FLG1.56F','防蓝光1.56非'),(2348,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'FLG1.56F','防蓝光1.56非'),(2349,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'CS1.67XSWBRDG','蔡司1.67新三维博锐单光'),(2350,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'CS1.67XSWBRDG','蔡司1.67新三维博锐单光'),(2351,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XSWBRHSSJ','1.67新三维博锐焕色视界'),(2352,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XSWBRHSSJ','1.67新三维博锐焕色视界'),(2353,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74XSWBRDG','1.74新三维博锐单光'),(2354,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74XSWBRDG','1.74新三维博锐单光'),(2355,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'FLG1.60F','防蓝光1.60非'),(2356,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'FLG1.60F','防蓝光1.60非'),(2357,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XSWBRSSXDG','1.5新三维博锐时尚型单光'),(2358,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XSWBRSSXDG','1.5新三维博锐时尚型单光'),(2359,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XSWBRSSXDGHSSJ','1.5新三维博锐时尚型单光焕色视界'),(2360,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XSWBRSSXDGHSSJ','1.5新三维博锐时尚型单光焕色视界'),(2361,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XSWBRSSXDGPG','1.5新三维博锐时尚型单光偏光'),(2362,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XSWBRSSXDGPG','1.5新三维博锐时尚型单光偏光'),(2363,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XSWBRSSXDG','1.6新三维博锐时尚型单光'),(2364,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XSWBRSSXDG','1.6新三维博锐时尚型单光'),(2365,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XSWBRSSXDGHSSJ','1.6新三维博锐时尚型单光焕色视界'),(2366,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XSWBRSSXDGHSSJ','1.6新三维博锐时尚型单光焕色视界'),(2367,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XSWBRSSXDGPG','1.6新三维博锐时尚型单光偏光'),(2368,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XSWBRSSXDGPG','1.6新三维博锐时尚型单光偏光'),(2369,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XSWBRSSXDG','1.67新三维博锐时尚型单光'),(2370,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XSWBRSSXDG','1.67新三维博锐时尚型单光'),(2371,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XSWBRSSXDGHSSJ','1.67新三维博锐时尚型单光焕色视界'),(2372,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XSWBRSSXDGHSSJ','1.67新三维博锐时尚型单光焕色视界'),(2373,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5ZRDG','1.5臻锐单光'),(2374,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5ZRDG','1.5臻锐单光'),(2375,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5ZRDGHSSJ','1.5臻锐单光焕色视界'),(2376,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5ZRDGHSSJ','1.5臻锐单光焕色视界'),(2377,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6ZRDG','1.6臻锐单光'),(2378,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6ZRDG','1.6臻锐单光'),(2379,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6ZRDGHSSJ','1.6臻锐单光焕色视界'),(2380,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6ZRDGHSSJ','1.6臻锐单光焕色视界'),(2381,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67ZRDG','1.67臻锐单光'),(2382,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67ZRDG','1.67臻锐单光'),(2383,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67ZRDGHSSJ','1.67臻锐单光焕色视界'),(2384,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67ZRDGHSSJ','1.67臻锐单光焕色视界'),(2385,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74ZRDG','1.74臻锐单光'),(2386,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74ZRDG','1.74臻锐单光'),(2387,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5ZRSSXDG','1.5臻锐时尚型单光'),(2388,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5ZRSSXDG','1.5臻锐时尚型单光'),(2389,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5ZRSSXDGHSSJ','1.5臻锐时尚型单光焕色视界'),(2390,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5ZRSSXDGHSSJ','1.5臻锐时尚型单光焕色视界'),(2391,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5ZRSSXPG','1.5臻锐时尚型偏光'),(2392,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5ZRSSXPG','1.5臻锐时尚型偏光'),(2393,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6ZRSSXDG','1.6臻锐时尚型单光'),(2394,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6ZRSSXDG','1.6臻锐时尚型单光'),(2395,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6ZRSSXDGHSSJ','1.6臻锐时尚型单光焕色视界'),(2396,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6ZRSSXDGHSSJ','1.6臻锐时尚型单光焕色视界'),(2397,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6ZRSSXPG','1.6臻锐时尚型偏光'),(2398,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6ZRSSXPG','1.6臻锐时尚型偏光'),(2399,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67ZRSSXDG','1.67臻锐时尚型单光'),(2400,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67ZRSSXDG','1.67臻锐时尚型单光'),(2401,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67ZRSSXDGHSSJ','1.67臻锐时尚型单光焕色视界'),(2402,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67ZRSSXDGHSSJ','1.67臻锐时尚型单光焕色视界'),(2403,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.60FHSDZ','1.60非混散定制'),(2404,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.60FHSDZ','1.60非混散定制'),(2405,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5JSXDG','1.5驾驶型单光'),(2406,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5JSXDG','1.5驾驶型单光'),(2407,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5JSXDGHSSJ','1.5驾驶型单光焕色视界'),(2408,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5JSXDGHSSJ','1.5驾驶型单光焕色视界'),(2409,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6JSXDG','1.6驾驶型单光'),(2410,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6JSXDG','1.6驾驶型单光'),(2411,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6JSXDGHSSJ','1.6驾驶型单光焕色视界'),(2412,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6JSXDGHSSJ','1.6驾驶型单光焕色视界'),(2413,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67JSXDG','1.67驾驶型单光'),(2414,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67JSXDG','1.67驾驶型单光'),(2415,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67JSXDGHSSJ','1.67驾驶型单光焕色视界'),(2416,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67JSXDGHSSJ','1.67驾驶型单光焕色视界'),(2417,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74JSXDG','1.74驾驶型单光'),(2418,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74JSXDG','1.74驾驶型单光'),(2419,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5JSXJPJJ','1.5驾驶型镜片渐进'),(2420,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5JSXJPJJ','1.5驾驶型镜片渐进'),(2421,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5JSXJJHSSJ','1.5驾驶型渐进焕色视界'),(2422,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5JSXJJHSSJ','1.5驾驶型渐进焕色视界'),(2423,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6JSXJJ','1.6驾驶型渐进'),(2424,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6JSXJJ','1.6驾驶型渐进'),(2425,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6JSXJJHSSJ','1.6驾驶型渐进焕色视界'),(2426,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6JSXJJHSSJ','1.6驾驶型渐进焕色视界'),(2427,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67JSXJJ','1.67驾驶型渐进'),(2428,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67JSXJJ','1.67驾驶型渐进'),(2429,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67JSXJJHSSJ','1.67驾驶型渐进焕色视界'),(2430,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67JSXJJHSSJ','1.67驾驶型渐进焕色视界'),(2431,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74JSXJJ','1.74驾驶型渐进'),(2432,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74JSXJJ','1.74驾驶型渐进'),(2433,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5SMXGHB','1.5数码型个化版'),(2434,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5SMXGHB','1.5数码型个化版'),(2435,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5SMXGHBHSSJ','1.5数码型个化版焕色视界'),(2436,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5SMXGHBHSSJ','1.5数码型个化版焕色视界'),(2437,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6SMXGHB','1.6数码型个化版'),(2438,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6SMXGHB','1.6数码型个化版'),(2439,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6SMXGHBHSSJ','1.6数码型个化版焕色视界'),(2440,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6SMXGHBHSSJ','1.6数码型个化版焕色视界'),(2441,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67SMXGHB','1.67数码型个化版'),(2442,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67SMXGHB','1.67数码型个化版'),(2443,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67SMXGHBHSSJ','1.67数码型个化版焕色视界'),(2444,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67SMXGHBHSSJ','1.67数码型个化版焕色视界'),(2445,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74SMXGHB','1.74数码型个化版'),(2446,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74SMXGHB','1.74数码型个化版'),(2447,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5FLGQM','1.5防蓝光球面'),(2448,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5FLGQM','1.5防蓝光球面'),(2449,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.56FLGFQM','1.56防蓝光非球面'),(2450,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.56FLGFQM','1.56防蓝光非球面'),(2451,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6FLGFQM','1.6防蓝光非球面'),(2452,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6FLGFQM','1.6防蓝光非球面'),(2453,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67FLGFQM','1.67防蓝光非球面'),(2454,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67FLGFQM','1.67防蓝光非球面'),(2455,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74FLGFQM','1.74防蓝光非球面'),(2456,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74FLGFQM','1.74防蓝光非球面'),(2457,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5CZL','1.5成长乐'),(2458,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5CZL','1.5成长乐'),(2459,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6CZL','1.6成长乐'),(2460,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6CZL','1.6成长乐'),(2461,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67CZL','1.67成长乐'),(2462,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67CZL','1.67成长乐'),(2463,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5SNXCR','1.5室内型纯锐'),(2464,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5SNXCR','1.5室内型纯锐'),(2465,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6SNXCR','1.6室内型纯锐'),(2466,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6SNXCR','1.6室内型纯锐'),(2467,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67SNXCR','1.67室内型纯锐'),(2468,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67SNXCR','1.67室内型纯锐'),(2469,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5SNXSWBR2.0','1.5室内型三维博锐2.0'),(2470,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5SNXSWBR2.0','1.5室内型三维博锐2.0'),(2471,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6SNXSWBR2.0','1.6室内型三维博锐2.0'),(2472,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6SNXSWBR2.0','1.6室内型三维博锐2.0'),(2473,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67SNXSWBR2.0','1.67室内型三维博锐2.0'),(2474,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67SNXSWBR2.0','1.67室内型三维博锐2.0'),(2475,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5SNXZR','1.5室内型臻锐'),(2476,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5SNXZR','1.5室内型臻锐'),(2477,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6SNXZR','1.6室内型臻锐'),(2478,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6SNXZR','1.6室内型臻锐'),(2479,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67SNXZR','1.67室内型臻锐'),(2480,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67SNXZR','1.67室内型臻锐'),(2481,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5JYHLX','1.5菁悦活力型'),(2482,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5JYHLX','1.5菁悦活力型'),(2483,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5JYHLXHSSJ','1.5菁悦活力型焕色视界'),(2484,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5JYHLXHSSJ','1.5菁悦活力型焕色视界'),(2485,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6JYHLX','1.6菁悦活力型'),(2486,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6JYHLX','1.6菁悦活力型'),(2487,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6JYHLXHSSJ','1.6菁悦活力型焕色视界'),(2488,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6JYHLXHSSJ','1.6菁悦活力型焕色视界'),(2489,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67JYHLX','1.67菁悦活力型'),(2490,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67JYHLX','1.67菁悦活力型'),(2491,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67JYHLXHSSJ','1.67菁悦活力型焕色视界'),(2492,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67JYHLXHSSJ','1.67菁悦活力型焕色视界'),(2493,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74JYHLX','1.74菁悦活力型'),(2494,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74JYHLX','1.74菁悦活力型'),(2495,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'CR1.56Q','超韧1.56球'),(2496,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'CR1.56Q','超韧1.56球'),(2497,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'CR1.56F','超韧1.56非'),(2498,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'CR1.56F','超韧1.56非'),(2499,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'CR1.60F','超韧1.60非'),(2500,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'CR1.60F','超韧1.60非'),(2501,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'CR1.60QM','超韧1.60球面'),(2502,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'CR1.60QM','超韧1.60球面'),(2503,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'FLG1.67F','防蓝光1.67非'),(2504,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'FLG1.67F','防蓝光1.67非'),(2505,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'FLG1.71F','防蓝光1.71非'),(2506,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'FLG1.71F','防蓝光1.71非'),(2507,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'QJBS1.56QQB','全季变色1.56球浅变'),(2508,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'QJBS1.56QQB','全季变色1.56球浅变'),(2509,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'QJBS1.56QSH/C','全季变色1.56球深灰/茶'),(2510,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'QJBS1.56QSH/C','全季变色1.56球深灰/茶'),(2511,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'QJBS1.60FSH/C','全季变色1.60非深灰/茶'),(2512,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'QJBS1.60FSH/C','全季变色1.60非深灰/茶'),(2513,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'QCXL1.56QM','七彩系列1.56球面'),(2514,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'QCXL1.56QM','七彩系列1.56球面'),(2515,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'QJMB7DFLG','全季膜变7代防蓝光'),(2516,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'QJMB7DFLG','全季膜变7代防蓝光'),(2517,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5JYSMX','1.5菁悦数码型'),(2518,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5JYSMX','1.5菁悦数码型'),(2519,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5JYSMXHSSJ','1.5菁悦数码型焕色视界'),(2520,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5JYSMXHSSJ','1.5菁悦数码型焕色视界'),(2521,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6JYSMX','1.6菁悦数码型'),(2522,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6JYSMX','1.6菁悦数码型'),(2523,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6JYSMXHSSJ','1.6菁悦数码型焕色视界'),(2524,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6JYSMXHSSJ','1.6菁悦数码型焕色视界'),(2525,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67JYSMX','1.67菁悦数码型'),(2526,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67JYSMX','1.67菁悦数码型'),(2527,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67JYSMXHSSJ','1.67菁悦数码型焕色视界'),(2528,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67JYSMXHSSJ','1.67菁悦数码型焕色视界'),(2529,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74JYSMX','1.74菁悦数码型'),(2530,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74JYSMX','1.74菁悦数码型'),(2531,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5JYJJX','1.5菁悦渐进型'),(2532,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5JYJJX','1.5菁悦渐进型'),(2533,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5JYJJXHSSJ','1.5菁悦渐进型焕色视界'),(2534,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5JYJJXHSSJ','1.5菁悦渐进型焕色视界'),(2535,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6JYJJX','1.6菁悦渐进型'),(2536,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6JYJJX','1.6菁悦渐进型'),(2537,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6JYJJXHSSJ','1.6菁悦渐进型焕色视界'),(2538,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6JYJJXHSSJ','1.6菁悦渐进型焕色视界'),(2539,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67JYJJX','1.67菁悦渐进型'),(2540,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67JYJJX','1.67菁悦渐进型'),(2541,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67JYJJXHSSJ','1.67菁悦渐进型焕色视界'),(2542,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67JYJJXHSSJ','1.67菁悦渐进型焕色视界'),(2543,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74JYJJX','1.74菁悦渐进型'),(2544,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74JYJJX','1.74菁悦渐进型'),(2545,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'0','0'),(2546,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'0','0'),(2547,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'QCSS（TYJP）','七彩时尚（太阳镜片）'),(2548,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'QCSS（TYJP）','七彩时尚（太阳镜片）'),(2549,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.56QM','1.56球面'),(2550,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.56QM','1.56球面'),(2551,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.501TMPGTYJP','1.501天幕偏光太阳镜片'),(2552,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.501TMPGTYJP','1.501天幕偏光太阳镜片'),(2553,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.501TMPGTYJPS2D','1.501天幕偏光太阳镜片散2D'),(2554,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.501TMPGTYJPS2D','1.501天幕偏光太阳镜片散2D'),(2555,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.501TMPGTYJPS4D','1.501天幕偏光太阳镜片散4D'),(2556,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.501TMPGTYJPS4D','1.501天幕偏光太阳镜片散4D'),(2557,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5LGD','1.5睐光D'),(2558,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5LGD','1.5睐光D'),(2559,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5LGDHSSJ','1.5睐光D焕色视界'),(2560,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5LGDHSSJ','1.5睐光D焕色视界'),(2561,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6LGD','1.6睐光D'),(2562,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6LGD','1.6睐光D'),(2563,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6LGDHSSJ','1.6睐光D焕色视界'),(2564,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6LGDHSSJ','1.6睐光D焕色视界'),(2565,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67LGD','1.67睐光D'),(2566,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67LGD','1.67睐光D'),(2567,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67LGDHSSJ','1.67睐光D焕色视界'),(2568,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67LGDHSSJ','1.67睐光D焕色视界'),(2569,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'QCJS（PG）','七彩驾驶（偏光）'),(2570,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'QCJS（PG）','七彩驾驶（偏光）'),(2571,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'WJJ','外渐进'),(2572,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'WJJ','外渐进'),(2573,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5LG3D','1.5睐光3D'),(2574,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5LG3D','1.5睐光3D'),(2575,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5LG3DHSSJ','1.5睐光3D焕色视界'),(2576,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5LG3DHSSJ','1.5睐光3D焕色视界'),(2577,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6LG3D','1.6睐光3D'),(2578,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6LG3D','1.6睐光3D'),(2579,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6LG3DHSSJ','1.6睐光3D焕色视界'),(2580,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6LG3DHSSJ','1.6睐光3D焕色视界'),(2581,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67LG3D','1.67睐光3D'),(2582,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67LG3D','1.67睐光3D'),(2583,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67LG3DHSSJ','1.67睐光3D焕色视界'),(2584,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67LG3DHSSJ','1.67睐光3D焕色视界'),(2585,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5LG3Dv','1.5睐光3Dv'),(2586,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5LG3Dv','1.5睐光3Dv'),(2587,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5LG3DvHSSJ','1.5睐光3Dv焕色视界'),(2588,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5LG3DvHSSJ','1.5睐光3Dv焕色视界'),(2589,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6LG3Dv','1.6睐光3Dv'),(2590,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6LG3Dv','1.6睐光3Dv'),(2591,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6LG3DvHSSJ','1.6睐光3Dv焕色视界'),(2592,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6LG3DvHSSJ','1.6睐光3Dv焕色视界'),(2593,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67LG3Dv','1.67睐光3Dv'),(2594,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67LG3Dv','1.67睐光3Dv'),(2595,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'NJJ','内渐进'),(2596,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'NJJ','内渐进'),(2597,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67LG3DvHSSJ','1.67睐光3Dv焕色视界'),(2598,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67LG3DvHSSJ','1.67睐光3Dv焕色视界'),(2599,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74LG3Dv','1.74睐光3Dv'),(2600,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74LG3Dv','1.74睐光3Dv'),(2601,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XDRJJ','1.5新典锐渐进'),(2602,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XDRJJ','1.5新典锐渐进'),(2603,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XDRJJHSSJ','1.5新典锐渐进焕色视界'),(2604,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XDRJJHSSJ','1.5新典锐渐进焕色视界'),(2605,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XDRJJ','1.6新典锐渐进'),(2606,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XDRJJ','1.6新典锐渐进'),(2607,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XDRJJHSSJ','1.6新典锐渐进焕色视界'),(2608,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XDRJJHSSJ','1.6新典锐渐进焕色视界'),(2609,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XDRJJ','1.67新典锐渐进'),(2610,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XDRJJ','1.67新典锐渐进'),(2611,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XDRJJHSSJ','1.67新典锐渐进焕色视界'),(2612,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XDRJJHSSJ','1.67新典锐渐进焕色视界'),(2613,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XCRJJ','1.5新纯锐渐进'),(2614,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XCRJJ','1.5新纯锐渐进'),(2615,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XCRJJHSSJ','1.5新纯锐渐进焕色视界'),(2616,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XCRJJHSSJ','1.5新纯锐渐进焕色视界'),(2617,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XCRJJ','1.6新纯锐渐进'),(2618,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XCRJJ','1.6新纯锐渐进'),(2619,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XCRJJHSSJ','1.6新纯锐渐进焕色视界'),(2620,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XCRJJHSSJ','1.6新纯锐渐进焕色视界'),(2621,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XCRJJ','1.67新纯锐渐进'),(2622,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XCRJJ','1.67新纯锐渐进'),(2623,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XCRJJHSSJ','1.67新纯锐渐进焕色视界'),(2624,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XCRJJHSSJ','1.67新纯锐渐进焕色视界'),(2625,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74XCRJJ','1.74新纯锐渐进'),(2626,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74XCRJJ','1.74新纯锐渐进'),(2627,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.60Q','1.60球'),(2628,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.60Q','1.60球'),(2629,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XSWBRJJ','1.5新三维博锐渐进'),(2630,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XSWBRJJ','1.5新三维博锐渐进'),(2631,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XSWBRJJHSSJ','1.5新三维博锐渐进焕色视界'),(2632,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XSWBRJJHSSJ','1.5新三维博锐渐进焕色视界'),(2633,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XSWBRJJ','1.6新三维博锐渐进'),(2634,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XSWBRJJ','1.6新三维博锐渐进'),(2635,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XSWBRJJHSSJ','1.6新三维博锐渐进焕色视界'),(2636,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XSWBRJJHSSJ','1.6新三维博锐渐进焕色视界'),(2637,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XSWBRJJ','1.67新三维博锐渐进'),(2638,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XSWBRJJ','1.67新三维博锐渐进'),(2639,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XSWBRJJHSSJ','1.67新三维博锐渐进焕色视界'),(2640,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XSWBRJJHSSJ','1.67新三维博锐渐进焕色视界'),(2641,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74XSWBRJJ','1.74新三维博锐渐进'),(2642,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74XSWBRJJ','1.74新三维博锐渐进'),(2643,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XZR2.0JJ','1.5新臻锐2.0渐进'),(2644,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XZR2.0JJ','1.5新臻锐2.0渐进'),(2645,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.5XZR2.0JJHSSJ','1.5新臻锐2.0渐进焕色视界'),(2646,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.5XZR2.0JJHSSJ','1.5新臻锐2.0渐进焕色视界'),(2647,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XZR2.0JJ','1.6新臻锐2.0渐进'),(2648,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XZR2.0JJ','1.6新臻锐2.0渐进'),(2649,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.6XZR2.0JJHSSJ','1.6新臻锐2.0渐进焕色视界'),(2650,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.6XZR2.0JJHSSJ','1.6新臻锐2.0渐进焕色视界'),(2651,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XZR2.0JJ','1.67新臻锐2.0渐进'),(2652,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XZR2.0JJ','1.67新臻锐2.0渐进'),(2653,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.67XZR2.0JJHSSJ','1.67新臻锐2.0渐进焕色视界'),(2654,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.67XZR2.0JJHSSJ','1.67新臻锐2.0渐进焕色视界'),(2655,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.74XZR2.0JJ','1.74新臻锐2.0渐进'),(2656,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.74XZR2.0JJ','1.74新臻锐2.0渐进'),(2657,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'1.604BLQMDGJP','1.604玻璃球面单光镜片'),(2658,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'1.604BLQMDGJP','1.604玻璃球面单光镜片'),(2659,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',40,'JBZX','减薄中心'),(2660,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'CS1.5CZY','蔡司1.5成长悦'),(2661,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'CS1.5CZY','蔡司1.5成长悦'),(2662,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'CS1.6CZY','蔡司1.6成长悦'),(2663,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'CS1.6CZY','蔡司1.6成长悦'),(2664,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'CS1.67CZY','蔡司1.67成长悦'),(2665,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'CS1.67CZY','蔡司1.67成长悦'),(2666,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'CS1.706BLQMDGJP','蔡司1.706玻璃球面单光镜片'),(2667,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'CS1.706BLQMDGJP','蔡司1.706玻璃球面单光镜片'),(2668,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'CS1.8BLQMDGJP','蔡司1.8玻璃球面单光镜片'),(2669,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'CS1.8BLQMDGJP','蔡司1.8玻璃球面单光镜片'),(2670,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',20,'CS1.89BLQMDGJP','蔡司1.89玻璃球面单光镜片'),(2671,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',54,'CS1.89BLQMDGJP','蔡司1.89玻璃球面单光镜片'),(2672,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',40,'ZZJ','指正镜'),(2673,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',29,'ZQGCCPBZ','指屈光参差配比重'),(2674,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',30,'YYWK、BK','用于无框、半框'),(2675,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',31,'0~5LJ','0~5棱镜'),(2676,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'',''),(2677,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'',''),(2678,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.60FJSDZRSP','1.60非近视定制染色片'),(2679,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.60FJSDZRSP','1.60非近视定制染色片'),(2680,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,'1.60FYSDZRSP','1.60非远视定制染色片'),(2681,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,'1.60FYSDZRSP','1.60非远视定制染色片'),(2682,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',19,NULL,NULL),(2683,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',21,NULL,NULL),(2684,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',23,NULL,NULL),(2685,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',24,NULL,NULL),(2686,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',25,NULL,NULL),(2687,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',26,NULL,NULL),(2688,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',27,NULL,NULL),(2689,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',28,NULL,NULL),(2690,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',32,NULL,NULL),(2691,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',33,NULL,NULL),(2692,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',34,NULL,NULL),(2693,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',35,NULL,NULL),(2694,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',36,NULL,NULL),(2695,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',37,NULL,NULL),(2696,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',38,NULL,NULL),(2697,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',39,NULL,NULL),(2698,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',41,NULL,NULL),(2699,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',42,NULL,NULL),(2700,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',42,NULL,NULL),(2701,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',43,NULL,NULL),(2702,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',44,NULL,NULL),(2703,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',45,NULL,NULL),(2704,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',46,NULL,NULL),(2705,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',55,NULL,NULL),(2706,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',62,NULL,NULL),(2707,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',63,NULL,NULL),(2708,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',68,NULL,NULL),(2709,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',75,NULL,NULL),(2710,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',76,NULL,NULL),(2711,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',76,NULL,NULL),(2712,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',86,NULL,NULL),(2713,_binary '\0','2019-11-27 14:16:24',NULL,NULL,NULL,NULL,'型号',88,NULL,NULL);
/*!40000 ALTER TABLE `tg_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tg_type_bak`
--

DROP TABLE IF EXISTS `tg_type_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tg_type_bak` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `bln_entity` bit(1) DEFAULT NULL,
  `bln_lens` bit(1) DEFAULT NULL,
  `bln_lib` bit(1) DEFAULT NULL,
  `bln_time` bit(1) DEFAULT NULL,
  `c_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fid` bigint(20) DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `py` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_type_bak`
--

LOCK TABLES `tg_type_bak` WRITE;
/*!40000 ALTER TABLE `tg_type_bak` DISABLE KEYS */;
INSERT INTO `tg_type_bak` VALUES (1,_binary '\0','2019-10-15 13:34:07',_binary '\0',_binary '',_binary '',_binary '\0','品类',0,'库存镜片','KCJP'),(2,_binary '\0','2019-10-15 13:34:21',_binary '\0',_binary '',_binary '\0',_binary '\0','品类',0,'零订镜片','LDJP'),(3,_binary '\0','2019-10-15 13:34:29',_binary '\0',_binary '',_binary '\0',_binary '\0','品类',0,'车房镜片','CFJP'),(4,_binary '\0','2019-10-15 13:36:13',NULL,NULL,NULL,NULL,'品牌',1,'蔡司','CS'),(5,_binary '\0','2019-10-15 13:36:30',NULL,NULL,NULL,NULL,'品牌',1,'依视路','YSL'),(6,_binary '\0','2019-10-22 09:48:43',_binary '',_binary '\0',_binary '\0',_binary '\0','品类',0,'一般验光','YBYG'),(7,_binary '\0','2019-10-22 09:48:50',_binary '',_binary '\0',_binary '\0',_binary '\0','品类',0,'全面验光','QMYG'),(8,_binary '\0','2019-10-22 09:49:50',_binary '\0',_binary '',_binary '',_binary '','品类',0,'现库隐形','XKYX'),(9,_binary '\0','2019-10-22 09:50:06',_binary '\0',_binary '',_binary '\0',_binary '','品类',0,'零订隐形','LDYX'),(10,_binary '\0','2019-10-22 09:50:32',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'镜架','JJ'),(11,_binary '\0','2019-10-22 09:50:45',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'太阳镜','TYJ'),(12,_binary '\0','2019-10-22 09:51:13',_binary '\0',_binary '',_binary '',_binary '\0','品类',0,'花镜','HJ'),(13,_binary '\0','2019-10-22 09:51:34',_binary '\0',_binary '\0',_binary '',_binary '','品类',0,'护理液','HLY'),(14,_binary '\0','2019-10-22 09:51:49',_binary '\0',_binary '\0',_binary '',_binary '\0','品类',0,'耗材','HC'),(15,_binary '','2019-10-22 10:40:40',NULL,NULL,NULL,NULL,'型号',4,'1.56','1.56'),(16,_binary '\0','2019-10-22 10:42:01',NULL,NULL,NULL,NULL,'型号',4,'新锐','XR'),(17,_binary '\0','2019-10-22 10:42:30',NULL,NULL,NULL,NULL,'颜色',16,'1.56','1.56'),(18,_binary '\0','2019-10-22 10:47:43',NULL,NULL,NULL,NULL,'颜色',16,'1.73','1.73'),(19,_binary '\0','2019-10-22 10:47:49',NULL,NULL,NULL,NULL,'颜色',16,'1.92','1.92'),(20,_binary '','2019-10-22 16:12:41',NULL,NULL,NULL,NULL,'品牌',3,'暴龙','BL'),(21,_binary '','2019-10-22 16:12:53',NULL,NULL,NULL,NULL,'品牌',3,'警察','JC'),(22,_binary '\0','2019-10-22 16:13:36',NULL,NULL,NULL,NULL,'品牌',3,'暴龙','BL'),(23,_binary '\0','2019-10-22 16:13:43',NULL,NULL,NULL,NULL,'品牌',3,'警察','JC'),(24,_binary '\0','2019-10-22 16:14:23',NULL,NULL,NULL,NULL,'品牌',3,'123','123');
/*!40000 ALTER TABLE `tg_type_bak` ENABLE KEYS */;
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
-- Table structure for table `tlogin_user`
--

DROP TABLE IF EXISTS `tlogin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tlogin_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `_token` varchar(255) DEFAULT NULL,
  `cw_ids` varchar(255) DEFAULT NULL,
  `item_ids` varchar(255) DEFAULT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `login_pwd` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `v_out_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKq6jii4vi3eofoou63vt3fq8w2` (`_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tlogin_user`
--

LOCK TABLES `tlogin_user` WRITE;
/*!40000 ALTER TABLE `tlogin_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tlogin_user` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_store`
--

LOCK TABLES `ts_store` WRITE;
/*!40000 ALTER TABLE `ts_store` DISABLE KEYS */;
INSERT INTO `ts_store` VALUES (1,_binary '\0','2019-09-23 10:22:43','北京',1,'直属',0,'0','总公司','0100',NULL),(2,_binary '\0','2019-09-23 11:26:58','北京',1,'直属',1,'1','加工中心','0102',NULL),(3,_binary '\0','2019-09-23 11:27:20','北京',1,'直属',2,'0','北京通州店','0103',NULL),(4,_binary '\0','2019-09-23 11:27:37','北京',1,'直属',2,'0','北京大兴店','010',NULL),(5,_binary '\0','2019-09-23 11:27:52','北京',1,'非直属',2,'0','北京房山店','221',NULL),(30,_binary '','2019-10-14 13:56:29','房山1店',1,'非直属',5,'0','房山1店','','FS1D');
/*!40000 ALTER TABLE `ts_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsys_account_title`
--

DROP TABLE IF EXISTS `tsys_account_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tsys_account_title` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `bm` varchar(20) NOT NULL,
  `fx` varchar(4) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `scope` varchar(40) DEFAULT NULL,
  `xtype` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsys_account_title`
--

LOCK TABLES `tsys_account_title` WRITE;
/*!40000 ALTER TABLE `tsys_account_title` DISABLE KEYS */;
INSERT INTO `tsys_account_title` VALUES (1,_binary '\0','2019-10-08 15:50:03','1001','借方','库存现金','','资产类 '),(2,_binary '\0','2019-10-08 15:50:03','1002','借方','银行存款','','资产类 '),(3,_binary '\0','2019-10-08 15:50:03','1003','借方','存放中央银行款项','银行专用','资产类 '),(4,_binary '\0','2019-10-08 15:50:03','1011','借方','存放同业','银行专用','资产类 '),(5,_binary '\0','2019-10-08 15:50:03','1015','借方','其它货币基金','','资产类 '),(6,_binary '\0','2019-10-08 15:50:03','1021','借方','结算备付金','证券专用','资产类 '),(7,_binary '\0','2019-10-08 15:50:03','1031','借方','存出保证金','金融共用','资产类 '),(8,_binary '\0','2019-10-08 15:50:03','1051','借方','拆出资金','金融共用','资产类 '),(9,_binary '\0','2019-10-08 15:50:03','1101','借方','交易性金融资产','','资产类 '),(10,_binary '\0','2019-10-08 15:50:03','1111','借方','买入返售金融资产','金融共用','资产类 '),(11,_binary '\0','2019-10-08 15:50:04','1121','借方','应收票据','','资产类 '),(12,_binary '\0','2019-10-08 15:50:04','1122','借方','应收帐款','','资产类 '),(13,_binary '\0','2019-10-08 15:50:04','1123','借方','预付帐款','','资产类 '),(14,_binary '\0','2019-10-08 15:50:04','1131','借方','应收股利','','资产类 '),(15,_binary '\0','2019-10-08 15:50:04','1132','借方','应收利息','','资产类 '),(16,_binary '\0','2019-10-08 15:50:04','1211','借方','应收保护储金','保险专用','资产类 '),(17,_binary '\0','2019-10-08 15:50:04','1221','借方','应收代位追偿款','保险专用','资产类 '),(18,_binary '\0','2019-10-08 15:50:04','1222','借方','应收分保帐款','保险专用','资产类 '),(19,_binary '\0','2019-10-08 15:50:04','1223','借方','应收分保未到期责任准备金','保险专用','资产类 '),(20,_binary '\0','2019-10-08 15:50:04','1224','借方','应收分保保险责任准备金','保险专用','资产类 '),(21,_binary '\0','2019-10-08 15:50:04','1231','借方','其它应收款','','资产类 '),(22,_binary '\0','2019-10-08 15:50:04','1241','借方','坏帐准备','','资产类 '),(23,_binary '\0','2019-10-08 15:50:04','1251','借方','贴现资产','银行专用','资产类 '),(24,_binary '\0','2019-10-08 15:50:04','1301','借方','贷款','银行和保险共用','资产类 '),(25,_binary '\0','2019-10-08 15:50:04','1302','借方','贷款损失准备','银行和保险共用','资产类 '),(26,_binary '\0','2019-10-08 15:50:04','1311','借方','代理兑付证券','银行和保险共用','资产类 '),(27,_binary '\0','2019-10-08 15:50:04','1321','借方','代理业务资产','','资产类 '),(28,_binary '\0','2019-10-08 15:50:04','1401','借方','材料采购','','资产类 '),(29,_binary '\0','2019-10-08 15:50:04','1402','借方','在途物资','','资产类 '),(30,_binary '\0','2019-10-08 15:50:04','1403','借方','原材料','','资产类 '),(31,_binary '\0','2019-10-08 15:50:04','1404','借方','材料成本差异','','资产类 '),(32,_binary '\0','2019-10-08 15:50:04','1406','借方','库存商品','','资产类 '),(33,_binary '\0','2019-10-08 15:50:04','1407','借方','发出商品','','资产类 '),(34,_binary '\0','2019-10-08 15:50:04','1410','借方','商品进销差价','','资产类 '),(35,_binary '\0','2019-10-08 15:50:04','1411','借方','委托加工物资','','资产类 '),(36,_binary '\0','2019-10-08 15:50:04','1412','借方','包装物及低值易耗品','','资产类 '),(37,_binary '\0','2019-10-08 15:50:04','1421','借方','消耗性生物资产','农业专用','资产类 '),(38,_binary '\0','2019-10-08 15:50:04','1431','借方','周转材料','建造承包商专用','资产类 '),(39,_binary '\0','2019-10-08 15:50:04','1441','借方','贵金属','银行专用','资产类 '),(40,_binary '\0','2019-10-08 15:50:04','1442','借方','抵债资产','金融共用','资产类 '),(41,_binary '\0','2019-10-08 15:50:04','1451','借方','损余物资','保险专用','资产类 '),(42,_binary '\0','2019-10-08 15:50:04','1461','借方','存货跌价准备','','资产类 '),(43,_binary '\0','2019-10-08 15:50:04','1501','借方','待摊费用','','资产类 '),(44,_binary '\0','2019-10-08 15:50:04','1511','借方','独立帐户资产','保险专用','资产类 '),(45,_binary '\0','2019-10-08 15:50:05','1521','借方','持有至到期投资','','资产类 '),(46,_binary '\0','2019-10-08 15:50:05','1522','借方','持有至到期投资减值准备','','资产类 '),(47,_binary '\0','2019-10-08 15:50:05','1523','借方','可供出售金融资产','','资产类 '),(48,_binary '\0','2019-10-08 15:50:05','1524','借方','长期股权投资','','资产类 '),(49,_binary '\0','2019-10-08 15:50:05','1525','借方','长期股权投资减值准备','','资产类 '),(50,_binary '\0','2019-10-08 15:50:05','1526','借方','投资性房地产','','资产类 '),(51,_binary '\0','2019-10-08 15:50:05','1531','借方','长期应收款','','资产类 '),(52,_binary '\0','2019-10-08 15:50:05','1541','借方','未实现融资收益','','资产类 '),(53,_binary '\0','2019-10-08 15:50:05','1551','借方','存出资本保证金','保险专用','资产类 '),(54,_binary '\0','2019-10-08 15:50:05','1601','借方','固定资产','','资产类 '),(55,_binary '\0','2019-10-08 15:50:05','1602','借方','累计折旧','','资产类 '),(56,_binary '\0','2019-10-08 15:50:05','1603','借方','固定资产减值准备','','资产类 '),(57,_binary '\0','2019-10-08 15:50:05','1604','借方','在建工程','','资产类 '),(58,_binary '\0','2019-10-08 15:50:05','1605','借方','工程物资','','资产类 '),(59,_binary '\0','2019-10-08 15:50:05','1606','借方','固定资产清理','','资产类 '),(60,_binary '\0','2019-10-08 15:50:05','1611','借方','融资租赁资产','租赁专用','资产类 '),(61,_binary '\0','2019-10-08 15:50:05','1612','借方','未担保余值','租赁专用','资产类 '),(62,_binary '\0','2019-10-08 15:50:05','1621','借方','生产性生物资产','农业专用','资产类 '),(63,_binary '\0','2019-10-08 15:50:05','1622','借方','生产性生物资产累计折旧','农业专用','资产类 '),(64,_binary '\0','2019-10-08 15:50:05','1623','借方','公益性生物资产','农业专用','资产类 '),(65,_binary '\0','2019-10-08 15:50:05','1631','借方','油气资产','石油天然气开采专用','资产类 '),(66,_binary '\0','2019-10-08 15:50:05','1632','借方','累计折耗','石油天然气开采专用','资产类 '),(67,_binary '\0','2019-10-08 15:50:05','1701','借方','无形资产','','资产类 '),(68,_binary '\0','2019-10-08 15:50:05','1702','借方','累计摊销','','资产类 '),(69,_binary '\0','2019-10-08 15:50:05','1703','借方','无形资产减值准备','','资产类 '),(70,_binary '\0','2019-10-08 15:50:05','1711','借方','商誉','','资产类 '),(71,_binary '\0','2019-10-08 15:50:05','1801','借方','长期待摊费用','','资产类 '),(72,_binary '\0','2019-10-08 15:50:05','1811','借方','递延所得资产','','资产类 '),(73,_binary '\0','2019-10-08 15:50:05','1901','借方','待处理财产损益','','资产类 '),(74,_binary '\0','2019-10-08 15:50:05','2001','贷方','短期借款','','负债类 '),(75,_binary '\0','2019-10-08 15:50:05','2002','贷方','存入保证金','金融共用','负债类 '),(76,_binary '\0','2019-10-08 15:50:05','2003','贷方','拆入资金','金融共用','负债类 '),(77,_binary '\0','2019-10-08 15:50:05','2004','贷方','向中央银行借款','银行专用','负债类 '),(78,_binary '\0','2019-10-08 15:50:05','2011','贷方','同业存放','银行专用','负债类 '),(79,_binary '\0','2019-10-08 15:50:06','2012','贷方','吸收存款','银行专用','负债类 '),(80,_binary '\0','2019-10-08 15:50:06','2021','贷方','贴现负债','银行专用','负债类 '),(81,_binary '\0','2019-10-08 15:50:06','2101','贷方','交易性金融负债','','负债类 '),(82,_binary '\0','2019-10-08 15:50:06','2111','贷方','专出回购金融资产款','金融共用','负债类 '),(83,_binary '\0','2019-10-08 15:50:06','2201','贷方','应付票据','','负债类 '),(84,_binary '\0','2019-10-08 15:50:06','2202','贷方','应付帐款','','负债类 '),(85,_binary '\0','2019-10-08 15:50:06','2205','贷方','预收帐款','','负债类 '),(86,_binary '\0','2019-10-08 15:50:06','2211','贷方','应付职工薪酬','','负债类 '),(87,_binary '\0','2019-10-08 15:50:06','2221','贷方','应交税费','','负债类 '),(88,_binary '\0','2019-10-08 15:50:06','2231','贷方','应付股利','','负债类 '),(89,_binary '\0','2019-10-08 15:50:06','2232','贷方','应付利息','','负债类 '),(90,_binary '\0','2019-10-08 15:50:06','2241','贷方','其他应付款','','负债类 '),(91,_binary '\0','2019-10-08 15:50:06','2251','贷方','应付保户红利','保险专用','负债类 '),(92,_binary '\0','2019-10-08 15:50:06','2261','贷方','应付分保帐款','保险专用','负债类 '),(93,_binary '\0','2019-10-08 15:50:06','2311','贷方','代理买卖证券款','证券专用','负债类 '),(94,_binary '\0','2019-10-08 15:50:06','2312','贷方','代理承销证券款','证券和银行共用','负债类 '),(95,_binary '\0','2019-10-08 15:50:06','2313','贷方','代理兑付证券款','证券和银行共用','负债类 '),(96,_binary '\0','2019-10-08 15:50:06','2314','贷方','代理业务负债','','负债类 '),(97,_binary '\0','2019-10-08 15:50:06','2401','借方','预提费用','','负债类 '),(98,_binary '\0','2019-10-08 15:50:06','2411','贷方','预计负债','','负债类 '),(99,_binary '\0','2019-10-08 15:50:06','2501','贷方','递延收益','','负债类 '),(100,_binary '\0','2019-10-08 15:50:06','2601','贷方','长期借款','','负债类 '),(101,_binary '\0','2019-10-08 15:50:06','2602','贷方','长期债券','','负债类 '),(102,_binary '\0','2019-10-08 15:50:06','2701','贷方','未到期责任准备金','保险专用','负债类 '),(103,_binary '\0','2019-10-08 15:50:06','2702','贷方','保险责任准备金','保险专用','负债类 '),(104,_binary '\0','2019-10-08 15:50:06','2711','贷方','保户储金','保险专用','负债类 '),(105,_binary '\0','2019-10-08 15:50:06','2721','贷方','独立帐户负债','保险专用','负债类 '),(106,_binary '\0','2019-10-08 15:50:06','2801','贷方','长期应付款','','负债类 '),(107,_binary '\0','2019-10-08 15:50:06','2802','借方','未确认融资费用','','负债类 '),(108,_binary '\0','2019-10-08 15:50:06','2811','贷方','专项应付款','','负债类 '),(109,_binary '\0','2019-10-08 15:50:06','2901','贷方','递延所得税负债','','负债类 '),(110,_binary '\0','2019-10-08 15:50:06','3001',NULL,'清算资金往来','银行专用','共同类 '),(111,_binary '\0','2019-10-08 15:50:06','3002',NULL,'外汇买卖','金融共用','共同类 '),(112,_binary '\0','2019-10-08 15:50:06','3101',NULL,'衍生工具','','共同类 '),(113,_binary '\0','2019-10-08 15:50:07','3201',NULL,'套期工具','','共同类 '),(114,_binary '\0','2019-10-08 15:50:07','3202',NULL,'被套期项目','','共同类 '),(115,_binary '\0','2019-10-08 15:50:07','4001','贷方','实收资本','','所有者权益类 '),(116,_binary '\0','2019-10-08 15:50:07','4002','贷方','资本公积','','所有者权益类 '),(117,_binary '\0','2019-10-08 15:50:07','4101','贷方','盈余公积','','所有者权益类 '),(118,_binary '\0','2019-10-08 15:50:07','4102','贷方','一般风险准备','金融共用','所有者权益类 '),(119,_binary '\0','2019-10-08 15:50:07','4103','贷方','本年利润','','所有者权益类 '),(120,_binary '\0','2019-10-08 15:50:07','4104','贷方','利润分配','','所有者权益类 '),(121,_binary '\0','2019-10-08 15:50:07','4201','贷方','库存股','','所有者权益类 '),(122,_binary '\0','2019-10-08 15:50:07','5001','借方','生产成本','','成本类 '),(123,_binary '\0','2019-10-08 15:50:07','5101','借方','制造费用','','成本类 '),(124,_binary '\0','2019-10-08 15:50:07','5201','借方','劳务成本','','成本类 '),(125,_binary '\0','2019-10-08 15:50:07','5301','借方','研发支出','','成本类 '),(126,_binary '\0','2019-10-08 15:50:07','5401','借方','工程施工','建造承包商专用','成本类 '),(127,_binary '\0','2019-10-08 15:50:07','5402','借方','工程结算','建造承包商专用','成本类 '),(128,_binary '\0','2019-10-08 15:50:07','5403','借方','机械作业','建造承包商专用','成本类 '),(129,_binary '\0','2019-10-08 15:50:07','6001','贷方','主营业务收入','','损益类 '),(130,_binary '\0','2019-10-08 15:50:07','6011','贷方','利息收入','金融共用','损益类 '),(131,_binary '\0','2019-10-08 15:50:07','6021','贷方','手续费收入','金融共用','损益类 '),(132,_binary '\0','2019-10-08 15:50:07','6031','贷方','保费收入','保险专用','损益类 '),(133,_binary '\0','2019-10-08 15:50:07','6032','贷方','分保费收入','保险专用','损益类 '),(134,_binary '\0','2019-10-08 15:50:07','6041','贷方','租赁收入','租赁专用','损益类 '),(135,_binary '\0','2019-10-08 15:50:07','6051','贷方','其他业务收入','','损益类 '),(136,_binary '\0','2019-10-08 15:50:07','6061',NULL,'汇兑损益','金融专用','损益类 '),(137,_binary '\0','2019-10-08 15:50:07','6101',NULL,'公允价值变动损益','','损益类 '),(138,_binary '\0','2019-10-08 15:50:07','6111',NULL,'投资收益','','损益类 '),(139,_binary '\0','2019-10-08 15:50:07','6201',NULL,'摊回保险责任准备金','保险专用','损益类 '),(140,_binary '\0','2019-10-08 15:50:07','6202','借方','摊回赔付支出','保险专用','损益类 '),(141,_binary '\0','2019-10-08 15:50:07','6203','借方','摊回分保费用','保险专用','损益类 '),(142,_binary '\0','2019-10-08 15:50:07','6301','贷方','营业外收入','','损益类 '),(143,_binary '\0','2019-10-08 15:50:07','6401','借方','主营业务成本','','损益类 '),(144,_binary '\0','2019-10-08 15:50:07','6402','借方','其它业务成本','','损益类 '),(145,_binary '\0','2019-10-08 15:50:07','6405',NULL,'营业税金及附加','','损益类 '),(146,_binary '\0','2019-10-08 15:50:07','6411','借方','利息支出','金融共用','损益类 '),(147,_binary '\0','2019-10-08 15:50:07','6421','借方','手续费支出','金融共用','损益类 '),(148,_binary '\0','2019-10-08 15:50:08','6501',NULL,'提取未到期责任准备金','保险专用','损益类 '),(149,_binary '\0','2019-10-08 15:50:08','6502',NULL,'撮保险责任准备金','保险专用','损益类 '),(150,_binary '\0','2019-10-08 15:50:08','6511','借方','赔付支出','保险专用','损益类 '),(151,_binary '\0','2019-10-08 15:50:08','6521','借方','保户红利支出','保险专用','损益类 '),(152,_binary '\0','2019-10-08 15:50:08','6531',NULL,'退保金','保险专用','损益类 '),(153,_binary '\0','2019-10-08 15:50:08','6541',NULL,'分出保费','保险专用','损益类 '),(154,_binary '\0','2019-10-08 15:50:08','6542','借方','分保费用','保险专用','损益类 '),(155,_binary '\0','2019-10-08 15:50:08','6601','借方','销售费用','','损益类 '),(156,_binary '\0','2019-10-08 15:50:08','6602','借方','管理费用','','损益类 '),(157,_binary '\0','2019-10-08 15:50:08','6603','借方','财务费用','','损益类 '),(158,_binary '\0','2019-10-08 15:50:08','6604','借方','勘探费用','','损益类 '),(159,_binary '\0','2019-10-08 15:50:08','6701',NULL,'资产减值损失','','损益类 '),(160,_binary '\0','2019-10-08 15:50:08','6711','借方','营业外支出','','损益类 '),(161,_binary '\0','2019-10-08 15:50:08','6801',NULL,'所得税','','损益类 '),(162,_binary '\0','2019-10-08 15:50:08','6901',NULL,'以前年度损益调整','','损益类 ');
/*!40000 ALTER TABLE `tsys_account_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsys_business_type`
--

DROP TABLE IF EXISTS `tsys_business_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tsys_business_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `bm` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `operate` varchar(255) DEFAULT NULL,
  `xtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsys_business_type`
--

LOCK TABLES `tsys_business_type` WRITE;
/*!40000 ALTER TABLE `tsys_business_type` DISABLE KEYS */;
INSERT INTO `tsys_business_type` VALUES (1,_binary '\0','2019-10-08 09:20:30','0','添加商品时，添加商品默认库存','添加商品默认库存','+','默认'),(2,_binary '\0','2019-10-08 09:20:30','100001001','盘点后，正品盘盈，添加库存','盘点添加正品','+','正'),(3,_binary '\0','2019-10-08 09:20:30','100001002','盘点后，次品盘盈，添加库存','盘点添加次品','+','次品'),(4,_binary '\0','2019-10-08 09:20:30','100001003','盘点后，残品盘盈，添加库存','盘点添加残品','+','残'),(5,_binary '\0','2019-10-08 09:20:30','100002001','购入入库','入库正品','+','正'),(6,_binary '\0','2019-10-08 09:20:30','100002002','正品转次','正品转次','+','次品'),(7,_binary '\0','2019-10-08 09:20:30','100002003','次品转残','次品转残','+','残'),(8,_binary '\0','2019-10-08 09:20:30','100002004','赠品转正','赠品转正','+','正'),(9,_binary '\0','2019-10-08 09:20:30','100003001','正品调拨入库','调拨正品入库','+','正'),(10,_binary '\0','2019-10-08 09:20:30','100003002','次品调拨入库','调拨次品入库','+','次'),(11,_binary '\0','2019-10-08 09:20:30','100003003','残品调拨入库','调拨残品入库','+','残'),(12,_binary '\0','2019-10-08 09:20:30','100004001','结算后退货，商品没有改变','结算退货','+','正'),(13,_binary '\0','2019-10-08 09:20:30','100004002','配送退货，商品没有改变','配送退货','+','正'),(14,_binary '\0','2019-10-08 09:20:30','100004003','配料退货，商品没有改变','配料退货','+','正'),(15,_binary '\0','2019-10-08 09:20:30','100004004','初检退货，商品没有改变','初检退货','+','正'),(16,_binary '\0','2019-10-08 09:20:30','100004005','加工退货，被加工商品已改变','加工退货-镜片','+','残'),(17,_binary '\0','2019-10-08 09:20:30','100004006','加工退货，被加工商品没改变','加工退货-镜架','+','正'),(18,_binary '\0','2019-10-08 09:20:30','100004007','终检退货，被加工商品已改变','终检退货-镜片','+','残'),(19,_binary '\0','2019-10-08 09:20:30','100004008','终检退货，被加工商品没改变','终检退货-镜架','+','正'),(20,_binary '\0','2019-10-08 09:20:30','100004009','终检退货，被加工商品已改变','取镜退货-镜片','+','残'),(21,_binary '\0','2019-10-08 09:20:30','100004010','终检退货，被加工商品没改变','取镜退货-镜架','+','正'),(22,_binary '\0','2019-10-08 09:20:30','100004011','完成退货，被加工商品已改变','完成退货-镜片','+','残'),(23,_binary '\0','2019-10-08 09:20:30','100004012','完成退货，被加工商品没改变','完成退货-镜架','+','正'),(24,_binary '\0','2019-10-08 09:20:30','100004013','完成退货，被加工商品没改变','完成退货-成品','+','次'),(25,_binary '\0','2019-10-08 09:20:30','200001001','盘点后，正品盘亏，减少库存','盘亏正品','-','正'),(26,_binary '\0','2019-10-08 09:20:30','200001002','盘点后，次品盘亏，减少库存','盘亏次品','-','次'),(27,_binary '\0','2019-10-08 09:20:30','200001003','盘点后，残品盘亏，减少库存','盘亏残品','-','残'),(28,_binary '\0','2019-10-08 09:20:30','200002001','正品转次','正品转次','-','正'),(29,_binary '\0','2019-10-08 09:20:30','200002002','次品转残','次品转残','-','次'),(30,_binary '\0','2019-10-08 09:20:30','200002003','残品退出库存处理','残品处理','-','残'),(31,_binary '\0','2019-10-08 09:20:30','200002004','正品转赠','正品转赠','-','正'),(32,_binary '\0','2019-10-08 09:20:30','200003001','调拨到其它站点','调拨正品出库','-','正'),(33,_binary '\0','2019-10-08 09:20:30','200003002','调拨到其它站点','调拨次品出库','-','次'),(34,_binary '\0','2019-10-08 09:20:30','200003003','调拨到其它站点','调拨残品出库','-','残'),(35,_binary '\0','2019-10-08 09:20:30','200004001','销售结算后减少库存','销售正品','-','正');
/*!40000 ALTER TABLE `tsys_business_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsys_number`
--

DROP TABLE IF EXISTS `tsys_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tsys_number` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `max_num` bigint(20) DEFAULT NULL,
  `xtype` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsys_number`
--

LOCK TABLES `tsys_number` WRITE;
/*!40000 ALTER TABLE `tsys_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `tsys_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsys_system_value`
--

DROP TABLE IF EXISTS `tsys_system_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tsys_system_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_is_del` bit(1) NOT NULL,
  `_wtime` datetime NOT NULL,
  `fid` bigint(20) DEFAULT NULL,
  `x_text` varchar(30) DEFAULT NULL,
  `x_value` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsys_system_value`
--

LOCK TABLES `tsys_system_value` WRITE;
/*!40000 ALTER TABLE `tsys_system_value` DISABLE KEYS */;
INSERT INTO `tsys_system_value` VALUES (1,_binary '\0','2019-09-25 10:22:26',0,'性别','性别'),(2,_binary '\0','2019-09-25 10:24:20',1,'男','男'),(3,_binary '\0','2019-09-25 10:24:35',1,'女','女'),(5,_binary '\0','2019-09-25 10:51:48',0,'职务','职务'),(6,_binary '\0','2019-09-25 10:59:57',5,'总经理','总经理'),(7,_binary '\0','2019-09-25 11:00:25',5,'副总经理','副总经理'),(8,_binary '\0','2019-09-25 11:00:55',5,'加工中心店长','加工中心店长'),(9,_binary '\0','2019-09-25 11:01:10',5,'加工师','加工师'),(10,_binary '\0','2019-09-25 11:01:19',5,'销售员','销售员'),(11,_binary '\0','2019-09-25 11:01:28',5,'库管员','库管员'),(12,_binary '\0','2019-09-25 11:01:40',5,'出纳','出纳'),(13,_binary '\0','2019-09-25 11:01:56',5,'收入会计','收入会计'),(14,_binary '\0','2019-09-25 11:02:04',5,'支出会计','支出会计'),(15,_binary '\0','2019-09-25 11:02:35',5,'店长','店长'),(16,_binary '\0','2019-09-25 11:57:17',0,'学历','学历'),(17,_binary '\0','2019-09-25 11:57:53',16,'大学','大学'),(18,_binary '\0','2019-09-25 11:58:22',16,'高中','高中'),(24,_binary '\0','2019-09-25 16:05:13',16,'中学','中学'),(25,_binary '\0','2019-09-25 16:05:21',16,'小学','小学'),(26,_binary '','2019-09-25 17:59:50',0,'1','1'),(27,_binary '\0','2019-09-26 13:22:04',0,'政治面貌','政治面貌'),(28,_binary '\0','2019-09-26 13:22:20',27,'党员','党员'),(29,_binary '\0','2019-09-26 13:22:29',27,'团员','团员'),(30,_binary '\0','2019-09-26 13:22:36',27,'群众','群众'),(31,_binary '\0','2019-09-26 13:25:47',0,'会计角色','会计角色'),(32,_binary '\0','2019-09-26 13:25:58',31,'出纳','出纳'),(33,_binary '\0','2019-09-26 13:26:08',31,'支出会计','支出会计'),(34,_binary '\0','2019-09-26 13:26:17',31,'收入会计','收入会计'),(35,_binary '\0','2019-09-26 13:26:31',31,'审核','审核');
/*!40000 ALTER TABLE `tsys_system_value` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_info`
--

LOCK TABLES `tu_info` WRITE;
/*!40000 ALTER TABLE `tu_info` DISABLE KEYS */;
INSERT INTO `tu_info` VALUES (1,_binary '\0','2019-07-22 12:02:30','1984-01-16 00:00:00',NULL,'2003-09-01 00:00:00','于洋',NULL,1,'男',NULL,'18613806246',1,'幼儿园','小工','群众'),(17,_binary '\0','2019-09-26 13:35:05','2019-09-26 00:00:00',NULL,'2019-10-03 00:00:00','于洋',NULL,18,'男',2,'18613806246',17,'小学','店长','群众'),(18,_binary '','2019-09-26 13:46:22','2019-09-26 00:00:00',NULL,'2019-09-26 00:00:00','小易',NULL,1,'女',3,'110112',18,'小学','店长','群众'),(19,_binary '\0','2019-10-14 10:26:14','2019-10-14 00:00:00',NULL,'2019-10-14 00:00:00','小易',NULL,18,'男',5,'110110',19,'小学','店长','群众'),(20,_binary '\0','2019-10-15 11:40:24',NULL,NULL,NULL,'镜片',NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL),(21,_binary '\0','2019-10-15 11:41:40',NULL,NULL,NULL,'镜片',NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,NULL),(22,_binary '\0','2019-10-15 11:43:25',NULL,NULL,NULL,'镜片',NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_item`
--

LOCK TABLES `tu_item` WRITE;
/*!40000 ALTER TABLE `tu_item` DISABLE KEYS */;
INSERT INTO `tu_item` VALUES (22,_binary '\0','2019-08-09 11:17:45','btn',5,'','','删除',3,'ShanChu'),(21,_binary '\0','2019-08-09 11:17:29','btn',5,'','','修改',2,'XiuGai'),(18,_binary '\0','2019-07-22 12:02:30','btn',16,'','','刷新',5,'ShuaXin'),(17,_binary '\0','2019-07-22 12:02:30','btn',16,'','','新增',1,'XinZeng'),(16,_binary '\0','2019-07-22 12:02:30','menu',4,'','app/store/store','站点数据',2,'zdsj'),(14,_binary '\0','2019-07-22 12:02:30','btn',10,'','','查询',4,'ChaXun'),(11,_binary '\0','2019-07-22 12:02:30','btn',10,'','','新增',1,'XinZeng'),(10,_binary '\0','2019-07-22 12:02:30','menu',4,'','app/user/user','用户数据',2,'yhsj'),(9,_binary '\0','2019-07-22 12:02:30','btn',5,'','','查询',4,'ChaXun'),(6,_binary '\0','2019-07-22 12:02:30','btn',5,'','','新增',1,'XinZeng'),(5,_binary '\0','2019-07-22 12:02:30','menu',4,'','app/role/role','角色数据',1,'jssj'),(4,_binary '\0','2019-07-22 12:02:30','group',0,'','','系统数据',2,'XiTongShuJu'),(15,_binary '\0','2019-07-22 12:02:30','btn',2,'','','刷新',2,'ShuaXin'),(3,_binary '\0','2019-07-22 12:02:30','btn',2,'','','新增',1,'XinZeng'),(2,_binary '\0','2019-07-22 12:02:30','menu',1,'','app/dev/dev','开发功能',1,'kfgn'),(1,_binary '\0','2019-07-22 12:02:30','group',0,'','','开发管理',1,'kfgl'),(23,_binary '\0','2019-08-09 11:18:04','btn',10,'','','修改',2,'XiuGai'),(24,_binary '\0','2019-08-09 11:18:20','btn',10,'','','删除',3,'ShanChu'),(25,_binary '\0','2019-09-17 08:56:59','group',0,'','','基础数据',3,'JiChuShuJu'),(26,_binary '\0','2019-09-17 08:58:00','menu',25,'','goods/goods/goods','商品维护',2,'ShangPinWeiHu'),(27,_binary '\0','2019-09-17 09:03:07','menu',25,'','app/xtype/xtype','品类维护',1,'PinLeiWeiHu'),(28,_binary '\0','2019-09-17 09:03:35','menu',25,'','goods/lens/lens','度数维护',3,'DuShuWeiHu'),(29,_binary '\0','2019-09-17 09:04:06','menu',25,'','goods/price/price','价格维护',5,'JiaGeWeiHu'),(30,_binary '\0','2019-09-17 09:04:53','group',0,'','','库存管理',4,'KuCunGuanLi'),(31,_binary '\0','2019-09-17 09:05:36','menu',25,'','','客户维护',5,'KeHuWeiHu'),(32,_binary '\0','2019-09-17 09:05:51','menu',25,'','','供货商维护',6,'GongHuoShangWeiHu'),(33,_binary '\0','2019-09-17 09:07:07','menu',30,'','kc/init/init','初始库存',1,'ChuShiKuCun'),(34,_binary '\0','2019-09-17 09:07:42','menu',30,'','kc/pd/pd','库存盘点',2,'KuCunPanDian'),(35,_binary '\0','2019-09-17 09:09:08','menu',30,'','kc/change/change','类型转换',3,'LeiXingZhuanHuan'),(36,_binary '\0','2019-09-17 09:09:38','menu',30,'','kc/find/find','库存查询',4,'KuCunChaXun'),(37,_binary '\0','2019-09-17 09:14:36','group',0,'','','工作流程',6,'GongZuoLiuCheng'),(85,_binary '\0','2019-09-17 10:13:07','btn',84,'','','试算平衡',1,'ShiSuanPingHeng'),(40,_binary '\0','2019-09-17 09:17:27','menu',37,'','lc/sell/bill','销售-单据操作',1,'XiaoShou-DanJuCaoZuo'),(41,_binary '\0','2019-09-17 09:19:43','menu',4,'','app/ywbm/ywbm','业务编码',4,'YeWuBianMa'),(42,_binary '\0','2019-09-17 09:20:23','menu',4,'','app/cw/km','会计科目',5,'HuiJiKeMu'),(43,_binary '\0','2019-09-17 09:21:43','menu',4,'','app/gs/gs','特定公式',6,'TeDingGongShi'),(44,_binary '\0','2019-09-17 09:22:30','group',0,'','','财务',7,'CaiWu'),(45,_binary '\0','2019-09-17 09:23:06','menu',44,'','cw/pztz/pztz','凭证填制',1,'PingZhengTianZhi'),(46,_binary '','2019-09-17 09:23:49','menu',44,'','cw/pzsh/pzsh','凭证审核',2,'PingZhengShenHe'),(47,_binary '\0','2019-09-17 09:24:19','menu',44,'','cw/pzcx/pzcx','凭证查询',3,'PingZhengChaXun'),(48,_binary '\0','2019-09-17 09:33:12','menu',44,'','','销售凭证',4,'XiaoShouPingZheng'),(49,_binary '\0','2019-09-17 09:34:02','menu',37,'','','配送-单据操作',3,'PeiSong-DanJuCaoZuo'),(84,_binary '\0','2019-09-17 10:12:50','menu',44,'','','试算平衡',9,'ShiSuanPingHeng'),(51,_binary '\0','2019-09-17 09:35:37','menu',37,'','','配送-单据查询',4,'PeiSong-DanJuChaXun'),(52,_binary '\0','2019-09-17 09:39:17','btn',40,'','','选商品',1,'XuanShangPin'),(53,_binary '\0','2019-09-17 09:39:36','btn',40,'','','制单',2,'ZhiDan'),(54,_binary '\0','2019-09-17 09:39:50','btn',40,'','','审核',3,'ShenHe'),(55,_binary '\0','2019-09-17 09:40:06','btn',40,'','','收费',4,'ShouFei'),(56,_binary '\0','2019-09-17 09:41:41','menu',37,'','','销售-单据查询',2,'XiaoShou-DanJuChaXun'),(57,_binary '\0','2019-09-17 09:42:19','btn',56,'','','查询',1,'ChaXun'),(58,_binary '\0','2019-09-17 09:43:47','btn',49,'','','选货',1,'XuanHuo'),(59,_binary '\0','2019-09-17 09:43:55','btn',49,'','','制单',2,'ZhiDan'),(83,_binary '\0','2019-09-17 10:12:00','btn',48,'','','生成',1,'ShengCheng'),(82,_binary '\0','2019-09-17 10:11:32','btn',47,'','','审核',1,'ShenHe'),(81,_binary '\0','2019-09-17 10:11:10','btn',45,'','','保存',1,'BaoCun'),(63,_binary '\0','2019-09-17 09:46:33','btn',51,'','','查询',1,'ChaXun'),(64,_binary '\0','2019-09-17 09:46:51','btn',51,'','','审核',2,'ShenHe'),(65,_binary '\0','2019-09-17 09:47:03','btn',51,'','','接单',3,'JieDan'),(66,_binary '\0','2019-09-17 09:47:12','btn',51,'','','收货',4,'ShouHuo'),(67,_binary '\0','2019-09-17 09:47:43','btn',49,'','','审核',3,'ShenHe'),(68,_binary '\0','2019-09-17 09:49:27','menu',37,'','','进货-订货单操作',5,'JinHuo-DingHuoDan'),(69,_binary '\0','2019-09-17 09:50:32','menu',37,'','','进货-订货单查询',6,'JinHuo-DingHuoDanChaXun'),(70,_binary '\0','2019-09-17 09:54:51','btn',68,'','','选货',1,'XuanHuo'),(71,_binary '\0','2019-09-17 09:54:58','btn',68,'','','制单',2,'ZhiDan'),(72,_binary '\0','2019-09-17 09:55:07','btn',68,'','','审核',3,'ShenHe'),(73,_binary '\0','2019-09-17 09:56:16','btn',69,'','','查询',1,'ChaXun'),(74,_binary '\0','2019-09-17 09:56:23','btn',69,'','','下单',2,'XiaDan'),(75,_binary '\0','2019-09-17 09:58:16','menu',37,'','','进货-到货单操作',7,'JinHuo-DaoHuoDanCaoZuo'),(76,_binary '\0','2019-09-17 09:58:26','menu',37,'','','进货-到货单查询',8,'JinHuo-DaoHuoDanChaXun'),(77,_binary '\0','2019-09-17 09:58:40','btn',76,'','','查询',1,'ChaXun'),(78,_binary '\0','2019-09-17 09:59:50','btn',75,'','','制单',1,'ZhiDan'),(79,_binary '\0','2019-09-17 10:00:02','btn',75,'','','审核',2,'ShenHe'),(80,_binary '\0','2019-09-17 10:00:27','btn',76,'','','入库',2,'RuKu'),(86,_binary '\0','2019-09-17 10:13:30','menu',44,'','','报表',10,'BaoBiao'),(87,_binary '\0','2019-09-17 10:13:43','btn',86,'','','生成',1,'ShengCheng'),(92,_binary '\0','2019-09-17 10:16:56','menu',44,'','','查询流水',8,'ChaXunLiuShui'),(91,_binary '\0','2019-09-17 10:16:46','menu',44,'','','填写流水',6,'TianXieLiuShui'),(93,_binary '\0','2019-09-17 10:17:12','btn',91,'','','保存',1,'BaoCun'),(94,_binary '\0','2019-09-17 10:17:23','btn',92,'','','查询',1,'ChaXun'),(95,_binary '\0','2019-09-17 10:18:42','btn',34,'','','导出盘点单',1,'DaoChuPanDianDan'),(96,_binary '\0','2019-09-17 10:18:49','btn',34,'','','导入盘点单',2,'DaoRuPanDianDan'),(97,_binary '\0','2019-09-17 10:19:22','btn',34,'','','审核',3,'ShenHe'),(98,_binary '','2019-09-17 10:20:25','btn',35,'','','正转次',1,'ZhengZhuanCi'),(99,_binary '','2019-09-17 10:20:35','btn',35,'','','次转残',2,'CiZhuanCan'),(100,_binary '','2019-09-17 10:21:39','btn',35,'','','残转次',3,'CanZhuanCi'),(101,_binary '','2019-09-17 10:21:50','btn',35,'','','次转正',4,'CiZhuanZheng'),(102,_binary '\0','2019-09-17 10:22:09','btn',36,'','','查询',1,'ChaXun'),(103,_binary '\0','2019-09-17 10:22:48','btn',33,'','','查询',1,'ChaXun'),(104,_binary '\0','2019-09-17 10:23:48','btn',26,'','','保存',1,'BaoCun'),(105,_binary '\0','2019-09-17 10:23:57','btn',26,'','','修改',2,'XiuGai'),(106,_binary '\0','2019-09-17 10:24:05','btn',26,'','','删除',3,'ShanChu'),(107,_binary '\0','2019-09-17 10:24:41','btn',27,'','','新增',1,'XinZeng'),(108,_binary '\0','2019-09-17 10:24:47','btn',27,'','','修改',3,'XiuGai'),(109,_binary '\0','2019-09-17 10:24:56','btn',27,'','','删除',4,'ShanChu'),(110,_binary '','2019-09-17 10:25:40','btn',28,'','','保存参数',1,'BaoCunCanShu'),(111,_binary '\0','2019-09-17 10:25:53','btn',28,'','','保存度数',2,'BaoCunDuShu'),(112,_binary '\0','2019-09-17 10:26:56','btn',28,'','','打印条码',2,'DaYinTiaoMa'),(113,_binary '\0','2019-09-17 10:27:05','btn',28,'','','打印二维码',3,'DaYinErWeiMa'),(114,_binary '\0','2019-09-17 10:27:37','btn',31,'','','保存',1,'BaoCun'),(115,_binary '\0','2019-09-17 10:27:43','btn',31,'','','修改',2,'XiuGai'),(116,_binary '\0','2019-09-17 10:28:08','btn',29,'','','保存',1,'BaoCun'),(117,_binary '\0','2019-09-17 10:28:36','btn',32,'','','保存',1,'BaoCun'),(118,_binary '\0','2019-09-17 10:28:42','btn',32,'','','修改',2,'XiuGai'),(119,_binary '\0','2019-09-17 10:29:14','menu',25,'','','客户查询',7,'KeHuChaXun'),(120,_binary '\0','2019-09-17 10:29:28','menu',25,'','','供货商查询',8,'GongHuoShangChaXun'),(121,_binary '\0','2019-09-17 10:34:41','btn',36,'','','正转次',2,'ZhengZhuanCi'),(122,_binary '\0','2019-09-17 10:34:59','btn',36,'','','次转残',3,'CiZhuanCan'),(123,_binary '\0','2019-09-17 10:35:10','btn',36,'','','残转次',4,'CanZhuanCi'),(124,_binary '\0','2019-09-17 10:35:18','btn',36,'','','次转正',5,'CiZhuanZheng'),(125,_binary '\0','2019-09-17 13:05:36','btn',86,'','','导出',1,'DaoChu'),(126,_binary '\0','2019-09-17 13:06:52','menu',44,'','','结转',11,'JieZhuan'),(127,_binary '\0','2019-09-17 13:07:10','btn',126,'','','日结',1,'RiJie'),(128,_binary '\0','2019-09-17 13:07:18','btn',126,'','','月结',2,'YueJie'),(129,_binary '\0','2019-09-17 13:07:30','btn',126,'','','季节',3,'JiJie'),(130,_binary '\0','2019-09-17 13:07:38','btn',126,'','','半年结',4,'BanNianJie'),(131,_binary '\0','2019-09-17 13:07:47','btn',126,'','','年结',5,'NianJie'),(132,_binary '\0','2019-09-17 13:08:14','menu',44,'','','设置',100,'SheZhi'),(133,_binary '\0','2019-09-17 13:09:06','btn',132,'','','帐套',1,'ZhangTao'),(134,_binary '\0','2019-09-17 13:09:15','btn',132,'','','会计月',1,'HuiJiYue'),(135,_binary '\0','2019-09-23 11:46:35','btn',16,'','','修改',2,'XiuGai'),(136,_binary '\0','2019-09-23 11:46:47','btn',16,'','','删除',3,'ShanChu'),(137,_binary '\0','2019-09-23 11:46:58','btn',16,'','','添加子项',4,'TianJiaZiXiang'),(138,_binary '\0','2019-09-24 10:46:22','menu',4,'','app/systemValue/systemValue','系统变量',7,'XiTongBianLiang'),(139,_binary '\0','2019-09-24 10:46:57','btn',138,'','','添加子项',2,'TianJiaZiXiang'),(140,_binary '\0','2019-09-24 10:50:24','btn',138,'','','修改',3,'XiuGai'),(141,_binary '\0','2019-09-24 10:50:30','btn',138,'','','删除',4,'ShanChu'),(142,_binary '\0','2019-09-25 09:42:40','btn',138,'','','新增',1,'XinZeng'),(143,_binary '\0','2019-10-15 10:55:59','btn',27,'','','刷新',5,'ShuaXin'),(144,_binary '\0','2019-10-15 11:46:35','btn',27,'','','属性维护',2,'ShuXingWeiHu'),(145,_binary '\0','2019-10-15 14:16:21','btn',27,'','','折叠',6,'ZheDie'),(146,_binary '\0','2019-10-15 14:16:29','btn',27,'','','展开',7,'ZhanKai');
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_role`
--

LOCK TABLES `tu_role` WRITE;
/*!40000 ALTER TABLE `tu_role` DISABLE KEYS */;
INSERT INTO `tu_role` VALUES (1,_binary '\0','2019-07-22 12:02:30','4,16,18,17,135,136,137,10,14,11,23,24,5,22,21,9,6,138,139,140,141,142,1,2,15,3,25,26,104,105,106,27,107,108,109,143,144,145,146,28,111,112,113,29,116,31,114,115,32,117,118,30,33,103,34,95,96,97,36,102,121,122,123,124,37,40,52,53,54,55,49,58,59,67,51,63,64,65,66,56,57,68,70,71,72,69,73,74,75,78,79,76,77,80,44,45,81,47,82,48,83,84,85,86,87,125,92,94,91,93,126,127,128,129,130,131,132,133,134','admin'),(18,_binary '\0','2019-10-09 13:14:52','4,16,18,17,135,136,137,10,14,11,23,24,5,22,21,9,6,41,42,43,138,139,140,141,142,25,26,104,105,106,27,107,108,109,28,111,112,113,29,116,31,114,115,32,117,118,119,120,30,33,103,34,95,96,97,35,36,102,121,122,123,124,37,40,52,53,54,55,49,58,59,67,51,63,64,65,66,56,57,68,70,71,72,69,73,74,75,78,79,76,77,80,44,45,81,47,82,48,83,84,85,86,87,125,92,94,91,93,126,127,128,129,130,131,132,133,134','运行测试');
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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tu_user`
--

LOCK TABLES `tu_user` WRITE;
/*!40000 ALTER TABLE `tu_user` DISABLE KEYS */;
INSERT INTO `tu_user` VALUES (1,_binary '\0','2019-07-22 12:02:30','admin','21232f297a57a5a743894a0e4a801fc3'),(17,_binary '\0','2019-09-26 13:35:05','luke','E10ADC3949BA59ABBE56E057F20F883E'),(18,_binary '','2019-09-26 13:46:22','liana','E10ADC3949BA59ABBE56E057F20F883E'),(19,_binary '\0','2019-10-14 10:26:14','yi','E10ADC3949BA59ABBE56E057F20F883E');
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

-- Dump completed on 2019-11-28 10:08:41
