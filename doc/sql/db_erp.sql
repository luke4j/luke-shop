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
INSERT INTO `tcw_km` VALUES (1,'\0','2019-10-08 10:18:27','1001','库存现金','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(2,'\0','2019-10-08 10:18:27','1002','银行存款','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(3,'\0','2019-10-08 10:18:27','1003','存放中央银行款项','银行专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(4,'\0','2019-10-08 10:18:27','1011','存放同业','银行专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(5,'\0','2019-10-08 10:18:28','1015','其它货币基金','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(6,'\0','2019-10-08 10:18:28','1021','结算备付金','证券专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(7,'\0','2019-10-08 10:18:28','1031','存出保证金','金融共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(8,'\0','2019-10-08 10:18:28','1051','拆出资金','金融共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(9,'\0','2019-10-08 10:18:28','1101','交易性金融资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(10,'\0','2019-10-08 10:18:28','1111','买入返售金融资产','金融共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(11,'\0','2019-10-08 10:18:28','1121','应收票据','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(12,'\0','2019-10-08 10:18:28','1122','应收帐款','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(13,'\0','2019-10-08 10:18:28','1123','预付帐款','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(14,'\0','2019-10-08 10:18:28','1131','应收股利','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(15,'\0','2019-10-08 10:18:28','1132','应收利息','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(16,'\0','2019-10-08 10:18:28','1211','应收保护储金','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(17,'\0','2019-10-08 10:18:28','1221','应收代位追偿款','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(18,'\0','2019-10-08 10:18:28','1222','应收分保帐款','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(19,'\0','2019-10-08 10:18:28','1223','应收分保未到期责任准备金','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(20,'\0','2019-10-08 10:18:28','1224','应收分保保险责任准备金','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(21,'\0','2019-10-08 10:18:28','1231','其它应收款','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(22,'\0','2019-10-08 10:18:28','1241','坏帐准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(23,'\0','2019-10-08 10:18:28','1251','贴现资产','银行专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(24,'\0','2019-10-08 10:18:28','1301','贷款','银行和保险共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(25,'\0','2019-10-08 10:18:28','1302','贷款损失准备','银行和保险共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(26,'\0','2019-10-08 10:18:28','1311','代理兑付证券','银行和保险共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(27,'\0','2019-10-08 10:18:28','1321','代理业务资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(28,'\0','2019-10-08 10:18:28','1401','材料采购','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(29,'\0','2019-10-08 10:18:28','1402','在途物资','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(30,'\0','2019-10-08 10:18:28','1403','原材料','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(31,'\0','2019-10-08 10:18:28','1404','材料成本差异','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(32,'\0','2019-10-08 10:18:28','1406','库存商品','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(33,'\0','2019-10-08 10:18:28','1407','发出商品','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(34,'\0','2019-10-08 10:18:28','1410','商品进销差价','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(35,'\0','2019-10-08 10:18:28','1411','委托加工物资','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(36,'\0','2019-10-08 10:18:28','1412','包装物及低值易耗品','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(37,'\0','2019-10-08 10:18:28','1421','消耗性生物资产','农业专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(38,'\0','2019-10-08 10:18:28','1431','周转材料','建造承包商专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(39,'\0','2019-10-08 10:18:28','1441','贵金属','银行专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(40,'\0','2019-10-08 10:18:28','1442','抵债资产','金融共用','资产类 ',NULL,NULL,NULL,NULL,NULL),(41,'\0','2019-10-08 10:18:29','1451','损余物资','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(42,'\0','2019-10-08 10:18:29','1461','存货跌价准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(43,'\0','2019-10-08 10:18:29','1501','待摊费用','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(44,'\0','2019-10-08 10:18:29','1511','独立帐户资产','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(45,'\0','2019-10-08 10:18:29','1521','持有至到期投资','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(46,'\0','2019-10-08 10:18:29','1522','持有至到期投资减值准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(47,'\0','2019-10-08 10:18:29','1523','可供出售金融资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(48,'\0','2019-10-08 10:18:29','1524','长期股权投资','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(49,'\0','2019-10-08 10:18:29','1525','长期股权投资减值准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(50,'\0','2019-10-08 10:18:29','1526','投资性房地产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(51,'\0','2019-10-08 10:18:29','1531','长期应收款','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(52,'\0','2019-10-08 10:18:29','1541','未实现融资收益','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(53,'\0','2019-10-08 10:18:29','1551','存出资本保证金','保险专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(54,'\0','2019-10-08 10:18:29','1601','固定资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(55,'\0','2019-10-08 10:18:29','1602','累计折旧','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(56,'\0','2019-10-08 10:18:29','1603','固定资产减值准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(57,'\0','2019-10-08 10:18:29','1604','在建工程','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(58,'\0','2019-10-08 10:18:29','1605','工程物资','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(59,'\0','2019-10-08 10:18:29','1606','固定资产清理','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(60,'\0','2019-10-08 10:18:29','1611','融资租赁资产','租赁专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(61,'\0','2019-10-08 10:18:29','1612','未担保余值','租赁专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(62,'\0','2019-10-08 10:18:29','1621','生产性生物资产','农业专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(63,'\0','2019-10-08 10:18:29','1622','生产性生物资产累计折旧','农业专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(64,'\0','2019-10-08 10:18:29','1623','公益性生物资产','农业专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(65,'\0','2019-10-08 10:18:29','1631','油气资产','石油天然气开采专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(66,'\0','2019-10-08 10:18:29','1632','累计折耗','石油天然气开采专用','资产类 ',NULL,NULL,NULL,NULL,NULL),(67,'\0','2019-10-08 10:18:29','1701','无形资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(68,'\0','2019-10-08 10:18:29','1702','累计摊销','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(69,'\0','2019-10-08 10:18:29','1703','无形资产减值准备','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(70,'\0','2019-10-08 10:18:29','1711','商誉','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(71,'\0','2019-10-08 10:18:29','1801','长期待摊费用','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(72,'\0','2019-10-08 10:18:29','1811','递延所得资产','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(73,'\0','2019-10-08 10:18:29','1901','待处理财产损益','通用','资产类 ',NULL,NULL,NULL,NULL,NULL),(74,'\0','2019-10-08 10:18:29','2001','短期借款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(75,'\0','2019-10-08 10:18:29','2002','存入保证金','金融共用','负债类 ',NULL,NULL,NULL,NULL,NULL),(76,'\0','2019-10-08 10:18:29','2003','拆入资金','金融共用','负债类 ',NULL,NULL,NULL,NULL,NULL),(77,'\0','2019-10-08 10:18:29','2004','向中央银行借款','银行专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(78,'\0','2019-10-08 10:18:30','2011','同业存放','银行专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(79,'\0','2019-10-08 10:18:30','2012','吸收存款','银行专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(80,'\0','2019-10-08 10:18:30','2021','贴现负债','银行专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(81,'\0','2019-10-08 10:18:30','2101','交易性金融负债','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(82,'\0','2019-10-08 10:18:30','2111','专出回购金融资产款','金融共用','负债类 ',NULL,NULL,NULL,NULL,NULL),(83,'\0','2019-10-08 10:18:30','2201','应付票据','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(84,'\0','2019-10-08 10:18:30','2202','应付帐款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(85,'\0','2019-10-08 10:18:30','2205','预收帐款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(86,'\0','2019-10-08 10:18:30','2211','应付职工薪酬','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(87,'\0','2019-10-08 10:18:30','2221','应交税费','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(88,'\0','2019-10-08 10:18:30','2231','应付股利','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(89,'\0','2019-10-08 10:18:30','2232','应付利息','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(90,'\0','2019-10-08 10:18:30','2241','其他应付款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(91,'\0','2019-10-08 10:18:30','2251','应付保户红利','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(92,'\0','2019-10-08 10:18:30','2261','应付分保帐款','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(93,'\0','2019-10-08 10:18:30','2311','代理买卖证券款','证券专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(94,'\0','2019-10-08 10:18:30','2312','代理承销证券款','证券和银行共用','负债类 ',NULL,NULL,NULL,NULL,NULL),(95,'\0','2019-10-08 10:18:30','2313','代理兑付证券款','证券和银行共用','负债类 ',NULL,NULL,NULL,NULL,NULL),(96,'\0','2019-10-08 10:18:30','2314','代理业务负债','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(97,'\0','2019-10-08 10:18:30','2401','预提费用','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(98,'\0','2019-10-08 10:18:30','2411','预计负债','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(99,'\0','2019-10-08 10:18:30','2501','递延收益','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(100,'\0','2019-10-08 10:18:30','2601','长期借款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(101,'\0','2019-10-08 10:18:30','2602','长期债券','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(102,'\0','2019-10-08 10:18:30','2701','未到期责任准备金','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(103,'\0','2019-10-08 10:18:30','2702','保险责任准备金','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(104,'\0','2019-10-08 10:18:30','2711','保户储金','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(105,'\0','2019-10-08 10:18:30','2721','独立帐户负债','保险专用','负债类 ',NULL,NULL,NULL,NULL,NULL),(106,'\0','2019-10-08 10:18:30','2801','长期应付款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(107,'\0','2019-10-08 10:18:30','2802','未确认融资费用','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(108,'\0','2019-10-08 10:18:30','2811','专项应付款','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(109,'\0','2019-10-08 10:18:30','2901','递延所得税负债','通用','负债类 ',NULL,NULL,NULL,NULL,NULL),(110,'\0','2019-10-08 10:18:30','3001','清算资金往来','银行专用','共同类 ',NULL,NULL,NULL,NULL,NULL),(111,'\0','2019-10-08 10:18:30','3002','外汇买卖','金融共用','共同类 ',NULL,NULL,NULL,NULL,NULL),(112,'\0','2019-10-08 10:18:31','3101','衍生工具','通用','共同类 ',NULL,NULL,NULL,NULL,NULL),(113,'\0','2019-10-08 10:18:31','3201','套期工具','通用','共同类 ',NULL,NULL,NULL,NULL,NULL),(114,'\0','2019-10-08 10:18:31','3202','被套期项目','通用','共同类 ',NULL,NULL,NULL,NULL,NULL),(115,'\0','2019-10-08 10:18:31','4001','实收资本','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(116,'\0','2019-10-08 10:18:31','4002','资本公积','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(117,'\0','2019-10-08 10:18:31','4101','盈余公积','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(118,'\0','2019-10-08 10:18:31','4102','一般风险准备','金融共用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(119,'\0','2019-10-08 10:18:31','4103','本年利润','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(120,'\0','2019-10-08 10:18:31','4104','利润分配','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(121,'\0','2019-10-08 10:18:31','4201','库存股','通用','所有者权益类 ',NULL,NULL,NULL,NULL,NULL),(122,'\0','2019-10-08 10:18:31','5001','生产成本','通用','成本类 ',NULL,NULL,NULL,NULL,NULL),(123,'\0','2019-10-08 10:18:31','5101','制造费用','通用','成本类 ',NULL,NULL,NULL,NULL,NULL),(124,'\0','2019-10-08 10:18:31','5201','劳务成本','通用','成本类 ',NULL,NULL,NULL,NULL,NULL),(125,'\0','2019-10-08 10:18:31','5301','研发支出','通用','成本类 ',NULL,NULL,NULL,NULL,NULL),(126,'\0','2019-10-08 10:18:31','5401','工程施工','建造承包商专用','成本类 ',NULL,NULL,NULL,NULL,NULL),(127,'\0','2019-10-08 10:18:31','5402','工程结算','建造承包商专用','成本类 ',NULL,NULL,NULL,NULL,NULL),(128,'\0','2019-10-08 10:18:31','5403','机械作业','建造承包商专用','成本类 ',NULL,NULL,NULL,NULL,NULL),(129,'\0','2019-10-08 10:18:31','6001','主营业务收入','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(130,'\0','2019-10-08 10:18:31','6011','利息收入','金融共用','损益类 ',NULL,NULL,NULL,NULL,NULL),(131,'\0','2019-10-08 10:18:31','6021','手续费收入','金融共用','损益类 ',NULL,NULL,NULL,NULL,NULL),(132,'\0','2019-10-08 10:18:31','6031','保费收入','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(133,'\0','2019-10-08 10:18:31','6032','分保费收入','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(134,'\0','2019-10-08 10:18:31','6041','租赁收入','租赁专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(135,'\0','2019-10-08 10:18:31','6051','其他业务收入','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(136,'\0','2019-10-08 10:18:31','6061','汇兑损益','金融专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(137,'\0','2019-10-08 10:18:31','6101','公允价值变动损益','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(138,'\0','2019-10-08 10:18:31','6111','投资收益','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(139,'\0','2019-10-08 10:18:31','6201','摊回保险责任准备金','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(140,'\0','2019-10-08 10:18:31','6202','摊回赔付支出','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(141,'\0','2019-10-08 10:18:31','6203','摊回分保费用','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(142,'\0','2019-10-08 10:18:31','6301','营业外收入','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(143,'\0','2019-10-08 10:18:31','6401','主营业务成本','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(144,'\0','2019-10-08 10:18:31','6402','其它业务成本','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(145,'\0','2019-10-08 10:18:31','6405','营业税金及附加','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(146,'\0','2019-10-08 10:18:32','6411','利息支出','金融共用','损益类 ',NULL,NULL,NULL,NULL,NULL),(147,'\0','2019-10-08 10:18:32','6421','手续费支出','金融共用','损益类 ',NULL,NULL,NULL,NULL,NULL),(148,'\0','2019-10-08 10:18:32','6501','提取未到期责任准备金','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(149,'\0','2019-10-08 10:18:32','6502','撮保险责任准备金','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(150,'\0','2019-10-08 10:18:32','6511','赔付支出','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(151,'\0','2019-10-08 10:18:32','6521','保户红利支出','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(152,'\0','2019-10-08 10:18:32','6531','退保金','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(153,'\0','2019-10-08 10:18:32','6541','分出保费','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(154,'\0','2019-10-08 10:18:32','6542','分保费用','保险专用','损益类 ',NULL,NULL,NULL,NULL,NULL),(155,'\0','2019-10-08 10:18:32','6601','销售费用','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(156,'\0','2019-10-08 10:18:32','6602','管理费用','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(157,'\0','2019-10-08 10:18:32','6603','财务费用','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(158,'\0','2019-10-08 10:18:32','6604','勘探费用','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(159,'\0','2019-10-08 10:18:32','6701','资产减值损失','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(160,'\0','2019-10-08 10:18:32','6711','营业外支出','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(161,'\0','2019-10-08 10:18:32','6801','所得税','通用','损益类 ',NULL,NULL,NULL,NULL,NULL),(162,'\0','2019-10-08 10:18:32','6901','以前年度损益调整','通用','损益类 ',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `tg_goods_attr_cnf` VALUES (1,'\0','2019-10-22 15:12:44','a1','11',NULL,'11',NULL,1,'11'),(2,'\0','2019-10-22 15:12:44','a2',NULL,NULL,NULL,NULL,1,NULL),(3,'\0','2019-10-22 15:12:44','a3',NULL,NULL,NULL,NULL,1,NULL),(4,'\0','2019-10-22 15:12:44','a4',NULL,NULL,NULL,NULL,1,NULL),(5,'\0','2019-10-22 15:12:44','a5',NULL,NULL,NULL,NULL,1,NULL),(6,'\0','2019-10-22 15:12:44','a6',NULL,NULL,NULL,NULL,1,NULL),(7,'\0','2019-10-22 15:12:44','a7',NULL,NULL,NULL,NULL,1,NULL),(8,'\0','2019-10-22 15:12:44','a8',NULL,NULL,NULL,NULL,1,NULL),(9,'\0','2019-10-22 15:12:44','a9',NULL,NULL,NULL,NULL,1,NULL),(10,'\0','2019-10-22 15:12:44','a10',NULL,NULL,NULL,NULL,1,NULL),(11,'\0','2019-10-22 15:12:44','a11',NULL,NULL,NULL,NULL,1,NULL),(12,'\0','2019-10-22 15:12:44','a12',NULL,NULL,NULL,NULL,1,NULL),(13,'\0','2019-10-22 15:12:44','a13',NULL,NULL,NULL,NULL,1,NULL),(14,'\0','2019-10-22 15:12:44','a14',NULL,NULL,NULL,NULL,1,NULL),(15,'\0','2019-10-22 15:12:44','a15',NULL,NULL,NULL,NULL,1,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tg_type`
--

LOCK TABLES `tg_type` WRITE;
/*!40000 ALTER TABLE `tg_type` DISABLE KEYS */;
INSERT INTO `tg_type` VALUES (1,'\0','2019-10-15 13:34:07','\0','','','\0','品类',0,'库存镜片','KCJP'),(2,'\0','2019-10-15 13:34:21','\0','','\0','\0','品类',0,'零订镜片','LDJP'),(3,'\0','2019-10-15 13:34:29','\0','','\0','\0','品类',0,'车房镜片','CFJP'),(4,'\0','2019-10-15 13:36:13',NULL,NULL,NULL,NULL,'品牌',1,'蔡司','CS'),(5,'\0','2019-10-15 13:36:30',NULL,NULL,NULL,NULL,'品牌',1,'依视路','YSL'),(6,'\0','2019-10-22 09:48:43','','\0','\0','\0','品类',0,'一般验光','YBYG'),(7,'\0','2019-10-22 09:48:50','','\0','\0','\0','品类',0,'全面验光','QMYG'),(8,'\0','2019-10-22 09:49:50','\0','','','','品类',0,'现库隐形','XKYX'),(9,'\0','2019-10-22 09:50:06','\0','','\0','','品类',0,'零订隐形','LDYX'),(10,'\0','2019-10-22 09:50:32','\0','\0','','\0','品类',0,'镜架','JJ'),(11,'\0','2019-10-22 09:50:45','\0','\0','','\0','品类',0,'太阳镜','TYJ'),(12,'\0','2019-10-22 09:51:13','\0','','','\0','品类',0,'花镜','HJ'),(13,'\0','2019-10-22 09:51:34','\0','\0','','','品类',0,'护理液','HLY'),(14,'\0','2019-10-22 09:51:49','\0','\0','','\0','品类',0,'耗材','HC'),(15,'','2019-10-22 10:40:40',NULL,NULL,NULL,NULL,'型号',4,'1.56','1.56'),(16,'\0','2019-10-22 10:42:01',NULL,NULL,NULL,NULL,'型号',4,'新锐','XR'),(17,'\0','2019-10-22 10:42:30',NULL,NULL,NULL,NULL,'颜色',16,'1.56','1.56'),(18,'\0','2019-10-22 10:47:43',NULL,NULL,NULL,NULL,'颜色',16,'1.73','1.73'),(19,'\0','2019-10-22 10:47:49',NULL,NULL,NULL,NULL,'颜色',16,'1.92','1.92'),(20,'','2019-10-22 16:12:41',NULL,NULL,NULL,NULL,'品牌',3,'暴龙','BL'),(21,'','2019-10-22 16:12:53',NULL,NULL,NULL,NULL,'品牌',3,'警察','JC'),(22,'\0','2019-10-22 16:13:36',NULL,NULL,NULL,NULL,'品牌',3,'暴龙','BL'),(23,'\0','2019-10-22 16:13:43',NULL,NULL,NULL,NULL,'品牌',3,'警察','JC'),(24,'\0','2019-10-22 16:14:23',NULL,NULL,NULL,NULL,'品牌',3,'123','123');
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ts_store`
--

LOCK TABLES `ts_store` WRITE;
/*!40000 ALTER TABLE `ts_store` DISABLE KEYS */;
INSERT INTO `ts_store` VALUES (1,'\0','2019-09-23 10:22:43','北京',1,'直属',0,'0','总公司','0100',NULL),(2,'\0','2019-09-23 11:26:58','北京',1,'直属',1,'1','加工中心','0102',NULL),(3,'\0','2019-09-23 11:27:20','北京',1,'直属',2,'0','北京通州店','0103',NULL),(4,'\0','2019-09-23 11:27:37','北京',1,'直属',2,'0','北京大兴店','010',NULL),(5,'\0','2019-09-23 11:27:52','北京',1,'非直属',2,'0','北京房山店','221',NULL),(30,'','2019-10-14 13:56:29','房山1店',1,'非直属',5,'0','房山1店','','FS1D');
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
INSERT INTO `tsys_account_title` VALUES (1,'\0','2019-10-08 15:50:03','1001','借方','库存现金','','资产类 '),(2,'\0','2019-10-08 15:50:03','1002','借方','银行存款','','资产类 '),(3,'\0','2019-10-08 15:50:03','1003','借方','存放中央银行款项','银行专用','资产类 '),(4,'\0','2019-10-08 15:50:03','1011','借方','存放同业','银行专用','资产类 '),(5,'\0','2019-10-08 15:50:03','1015','借方','其它货币基金','','资产类 '),(6,'\0','2019-10-08 15:50:03','1021','借方','结算备付金','证券专用','资产类 '),(7,'\0','2019-10-08 15:50:03','1031','借方','存出保证金','金融共用','资产类 '),(8,'\0','2019-10-08 15:50:03','1051','借方','拆出资金','金融共用','资产类 '),(9,'\0','2019-10-08 15:50:03','1101','借方','交易性金融资产','','资产类 '),(10,'\0','2019-10-08 15:50:03','1111','借方','买入返售金融资产','金融共用','资产类 '),(11,'\0','2019-10-08 15:50:04','1121','借方','应收票据','','资产类 '),(12,'\0','2019-10-08 15:50:04','1122','借方','应收帐款','','资产类 '),(13,'\0','2019-10-08 15:50:04','1123','借方','预付帐款','','资产类 '),(14,'\0','2019-10-08 15:50:04','1131','借方','应收股利','','资产类 '),(15,'\0','2019-10-08 15:50:04','1132','借方','应收利息','','资产类 '),(16,'\0','2019-10-08 15:50:04','1211','借方','应收保护储金','保险专用','资产类 '),(17,'\0','2019-10-08 15:50:04','1221','借方','应收代位追偿款','保险专用','资产类 '),(18,'\0','2019-10-08 15:50:04','1222','借方','应收分保帐款','保险专用','资产类 '),(19,'\0','2019-10-08 15:50:04','1223','借方','应收分保未到期责任准备金','保险专用','资产类 '),(20,'\0','2019-10-08 15:50:04','1224','借方','应收分保保险责任准备金','保险专用','资产类 '),(21,'\0','2019-10-08 15:50:04','1231','借方','其它应收款','','资产类 '),(22,'\0','2019-10-08 15:50:04','1241','借方','坏帐准备','','资产类 '),(23,'\0','2019-10-08 15:50:04','1251','借方','贴现资产','银行专用','资产类 '),(24,'\0','2019-10-08 15:50:04','1301','借方','贷款','银行和保险共用','资产类 '),(25,'\0','2019-10-08 15:50:04','1302','借方','贷款损失准备','银行和保险共用','资产类 '),(26,'\0','2019-10-08 15:50:04','1311','借方','代理兑付证券','银行和保险共用','资产类 '),(27,'\0','2019-10-08 15:50:04','1321','借方','代理业务资产','','资产类 '),(28,'\0','2019-10-08 15:50:04','1401','借方','材料采购','','资产类 '),(29,'\0','2019-10-08 15:50:04','1402','借方','在途物资','','资产类 '),(30,'\0','2019-10-08 15:50:04','1403','借方','原材料','','资产类 '),(31,'\0','2019-10-08 15:50:04','1404','借方','材料成本差异','','资产类 '),(32,'\0','2019-10-08 15:50:04','1406','借方','库存商品','','资产类 '),(33,'\0','2019-10-08 15:50:04','1407','借方','发出商品','','资产类 '),(34,'\0','2019-10-08 15:50:04','1410','借方','商品进销差价','','资产类 '),(35,'\0','2019-10-08 15:50:04','1411','借方','委托加工物资','','资产类 '),(36,'\0','2019-10-08 15:50:04','1412','借方','包装物及低值易耗品','','资产类 '),(37,'\0','2019-10-08 15:50:04','1421','借方','消耗性生物资产','农业专用','资产类 '),(38,'\0','2019-10-08 15:50:04','1431','借方','周转材料','建造承包商专用','资产类 '),(39,'\0','2019-10-08 15:50:04','1441','借方','贵金属','银行专用','资产类 '),(40,'\0','2019-10-08 15:50:04','1442','借方','抵债资产','金融共用','资产类 '),(41,'\0','2019-10-08 15:50:04','1451','借方','损余物资','保险专用','资产类 '),(42,'\0','2019-10-08 15:50:04','1461','借方','存货跌价准备','','资产类 '),(43,'\0','2019-10-08 15:50:04','1501','借方','待摊费用','','资产类 '),(44,'\0','2019-10-08 15:50:04','1511','借方','独立帐户资产','保险专用','资产类 '),(45,'\0','2019-10-08 15:50:05','1521','借方','持有至到期投资','','资产类 '),(46,'\0','2019-10-08 15:50:05','1522','借方','持有至到期投资减值准备','','资产类 '),(47,'\0','2019-10-08 15:50:05','1523','借方','可供出售金融资产','','资产类 '),(48,'\0','2019-10-08 15:50:05','1524','借方','长期股权投资','','资产类 '),(49,'\0','2019-10-08 15:50:05','1525','借方','长期股权投资减值准备','','资产类 '),(50,'\0','2019-10-08 15:50:05','1526','借方','投资性房地产','','资产类 '),(51,'\0','2019-10-08 15:50:05','1531','借方','长期应收款','','资产类 '),(52,'\0','2019-10-08 15:50:05','1541','借方','未实现融资收益','','资产类 '),(53,'\0','2019-10-08 15:50:05','1551','借方','存出资本保证金','保险专用','资产类 '),(54,'\0','2019-10-08 15:50:05','1601','借方','固定资产','','资产类 '),(55,'\0','2019-10-08 15:50:05','1602','借方','累计折旧','','资产类 '),(56,'\0','2019-10-08 15:50:05','1603','借方','固定资产减值准备','','资产类 '),(57,'\0','2019-10-08 15:50:05','1604','借方','在建工程','','资产类 '),(58,'\0','2019-10-08 15:50:05','1605','借方','工程物资','','资产类 '),(59,'\0','2019-10-08 15:50:05','1606','借方','固定资产清理','','资产类 '),(60,'\0','2019-10-08 15:50:05','1611','借方','融资租赁资产','租赁专用','资产类 '),(61,'\0','2019-10-08 15:50:05','1612','借方','未担保余值','租赁专用','资产类 '),(62,'\0','2019-10-08 15:50:05','1621','借方','生产性生物资产','农业专用','资产类 '),(63,'\0','2019-10-08 15:50:05','1622','借方','生产性生物资产累计折旧','农业专用','资产类 '),(64,'\0','2019-10-08 15:50:05','1623','借方','公益性生物资产','农业专用','资产类 '),(65,'\0','2019-10-08 15:50:05','1631','借方','油气资产','石油天然气开采专用','资产类 '),(66,'\0','2019-10-08 15:50:05','1632','借方','累计折耗','石油天然气开采专用','资产类 '),(67,'\0','2019-10-08 15:50:05','1701','借方','无形资产','','资产类 '),(68,'\0','2019-10-08 15:50:05','1702','借方','累计摊销','','资产类 '),(69,'\0','2019-10-08 15:50:05','1703','借方','无形资产减值准备','','资产类 '),(70,'\0','2019-10-08 15:50:05','1711','借方','商誉','','资产类 '),(71,'\0','2019-10-08 15:50:05','1801','借方','长期待摊费用','','资产类 '),(72,'\0','2019-10-08 15:50:05','1811','借方','递延所得资产','','资产类 '),(73,'\0','2019-10-08 15:50:05','1901','借方','待处理财产损益','','资产类 '),(74,'\0','2019-10-08 15:50:05','2001','贷方','短期借款','','负债类 '),(75,'\0','2019-10-08 15:50:05','2002','贷方','存入保证金','金融共用','负债类 '),(76,'\0','2019-10-08 15:50:05','2003','贷方','拆入资金','金融共用','负债类 '),(77,'\0','2019-10-08 15:50:05','2004','贷方','向中央银行借款','银行专用','负债类 '),(78,'\0','2019-10-08 15:50:05','2011','贷方','同业存放','银行专用','负债类 '),(79,'\0','2019-10-08 15:50:06','2012','贷方','吸收存款','银行专用','负债类 '),(80,'\0','2019-10-08 15:50:06','2021','贷方','贴现负债','银行专用','负债类 '),(81,'\0','2019-10-08 15:50:06','2101','贷方','交易性金融负债','','负债类 '),(82,'\0','2019-10-08 15:50:06','2111','贷方','专出回购金融资产款','金融共用','负债类 '),(83,'\0','2019-10-08 15:50:06','2201','贷方','应付票据','','负债类 '),(84,'\0','2019-10-08 15:50:06','2202','贷方','应付帐款','','负债类 '),(85,'\0','2019-10-08 15:50:06','2205','贷方','预收帐款','','负债类 '),(86,'\0','2019-10-08 15:50:06','2211','贷方','应付职工薪酬','','负债类 '),(87,'\0','2019-10-08 15:50:06','2221','贷方','应交税费','','负债类 '),(88,'\0','2019-10-08 15:50:06','2231','贷方','应付股利','','负债类 '),(89,'\0','2019-10-08 15:50:06','2232','贷方','应付利息','','负债类 '),(90,'\0','2019-10-08 15:50:06','2241','贷方','其他应付款','','负债类 '),(91,'\0','2019-10-08 15:50:06','2251','贷方','应付保户红利','保险专用','负债类 '),(92,'\0','2019-10-08 15:50:06','2261','贷方','应付分保帐款','保险专用','负债类 '),(93,'\0','2019-10-08 15:50:06','2311','贷方','代理买卖证券款','证券专用','负债类 '),(94,'\0','2019-10-08 15:50:06','2312','贷方','代理承销证券款','证券和银行共用','负债类 '),(95,'\0','2019-10-08 15:50:06','2313','贷方','代理兑付证券款','证券和银行共用','负债类 '),(96,'\0','2019-10-08 15:50:06','2314','贷方','代理业务负债','','负债类 '),(97,'\0','2019-10-08 15:50:06','2401','借方','预提费用','','负债类 '),(98,'\0','2019-10-08 15:50:06','2411','贷方','预计负债','','负债类 '),(99,'\0','2019-10-08 15:50:06','2501','贷方','递延收益','','负债类 '),(100,'\0','2019-10-08 15:50:06','2601','贷方','长期借款','','负债类 '),(101,'\0','2019-10-08 15:50:06','2602','贷方','长期债券','','负债类 '),(102,'\0','2019-10-08 15:50:06','2701','贷方','未到期责任准备金','保险专用','负债类 '),(103,'\0','2019-10-08 15:50:06','2702','贷方','保险责任准备金','保险专用','负债类 '),(104,'\0','2019-10-08 15:50:06','2711','贷方','保户储金','保险专用','负债类 '),(105,'\0','2019-10-08 15:50:06','2721','贷方','独立帐户负债','保险专用','负债类 '),(106,'\0','2019-10-08 15:50:06','2801','贷方','长期应付款','','负债类 '),(107,'\0','2019-10-08 15:50:06','2802','借方','未确认融资费用','','负债类 '),(108,'\0','2019-10-08 15:50:06','2811','贷方','专项应付款','','负债类 '),(109,'\0','2019-10-08 15:50:06','2901','贷方','递延所得税负债','','负债类 '),(110,'\0','2019-10-08 15:50:06','3001',NULL,'清算资金往来','银行专用','共同类 '),(111,'\0','2019-10-08 15:50:06','3002',NULL,'外汇买卖','金融共用','共同类 '),(112,'\0','2019-10-08 15:50:06','3101',NULL,'衍生工具','','共同类 '),(113,'\0','2019-10-08 15:50:07','3201',NULL,'套期工具','','共同类 '),(114,'\0','2019-10-08 15:50:07','3202',NULL,'被套期项目','','共同类 '),(115,'\0','2019-10-08 15:50:07','4001','贷方','实收资本','','所有者权益类 '),(116,'\0','2019-10-08 15:50:07','4002','贷方','资本公积','','所有者权益类 '),(117,'\0','2019-10-08 15:50:07','4101','贷方','盈余公积','','所有者权益类 '),(118,'\0','2019-10-08 15:50:07','4102','贷方','一般风险准备','金融共用','所有者权益类 '),(119,'\0','2019-10-08 15:50:07','4103','贷方','本年利润','','所有者权益类 '),(120,'\0','2019-10-08 15:50:07','4104','贷方','利润分配','','所有者权益类 '),(121,'\0','2019-10-08 15:50:07','4201','贷方','库存股','','所有者权益类 '),(122,'\0','2019-10-08 15:50:07','5001','借方','生产成本','','成本类 '),(123,'\0','2019-10-08 15:50:07','5101','借方','制造费用','','成本类 '),(124,'\0','2019-10-08 15:50:07','5201','借方','劳务成本','','成本类 '),(125,'\0','2019-10-08 15:50:07','5301','借方','研发支出','','成本类 '),(126,'\0','2019-10-08 15:50:07','5401','借方','工程施工','建造承包商专用','成本类 '),(127,'\0','2019-10-08 15:50:07','5402','借方','工程结算','建造承包商专用','成本类 '),(128,'\0','2019-10-08 15:50:07','5403','借方','机械作业','建造承包商专用','成本类 '),(129,'\0','2019-10-08 15:50:07','6001','贷方','主营业务收入','','损益类 '),(130,'\0','2019-10-08 15:50:07','6011','贷方','利息收入','金融共用','损益类 '),(131,'\0','2019-10-08 15:50:07','6021','贷方','手续费收入','金融共用','损益类 '),(132,'\0','2019-10-08 15:50:07','6031','贷方','保费收入','保险专用','损益类 '),(133,'\0','2019-10-08 15:50:07','6032','贷方','分保费收入','保险专用','损益类 '),(134,'\0','2019-10-08 15:50:07','6041','贷方','租赁收入','租赁专用','损益类 '),(135,'\0','2019-10-08 15:50:07','6051','贷方','其他业务收入','','损益类 '),(136,'\0','2019-10-08 15:50:07','6061',NULL,'汇兑损益','金融专用','损益类 '),(137,'\0','2019-10-08 15:50:07','6101',NULL,'公允价值变动损益','','损益类 '),(138,'\0','2019-10-08 15:50:07','6111',NULL,'投资收益','','损益类 '),(139,'\0','2019-10-08 15:50:07','6201',NULL,'摊回保险责任准备金','保险专用','损益类 '),(140,'\0','2019-10-08 15:50:07','6202','借方','摊回赔付支出','保险专用','损益类 '),(141,'\0','2019-10-08 15:50:07','6203','借方','摊回分保费用','保险专用','损益类 '),(142,'\0','2019-10-08 15:50:07','6301','贷方','营业外收入','','损益类 '),(143,'\0','2019-10-08 15:50:07','6401','借方','主营业务成本','','损益类 '),(144,'\0','2019-10-08 15:50:07','6402','借方','其它业务成本','','损益类 '),(145,'\0','2019-10-08 15:50:07','6405',NULL,'营业税金及附加','','损益类 '),(146,'\0','2019-10-08 15:50:07','6411','借方','利息支出','金融共用','损益类 '),(147,'\0','2019-10-08 15:50:07','6421','借方','手续费支出','金融共用','损益类 '),(148,'\0','2019-10-08 15:50:08','6501',NULL,'提取未到期责任准备金','保险专用','损益类 '),(149,'\0','2019-10-08 15:50:08','6502',NULL,'撮保险责任准备金','保险专用','损益类 '),(150,'\0','2019-10-08 15:50:08','6511','借方','赔付支出','保险专用','损益类 '),(151,'\0','2019-10-08 15:50:08','6521','借方','保户红利支出','保险专用','损益类 '),(152,'\0','2019-10-08 15:50:08','6531',NULL,'退保金','保险专用','损益类 '),(153,'\0','2019-10-08 15:50:08','6541',NULL,'分出保费','保险专用','损益类 '),(154,'\0','2019-10-08 15:50:08','6542','借方','分保费用','保险专用','损益类 '),(155,'\0','2019-10-08 15:50:08','6601','借方','销售费用','','损益类 '),(156,'\0','2019-10-08 15:50:08','6602','借方','管理费用','','损益类 '),(157,'\0','2019-10-08 15:50:08','6603','借方','财务费用','','损益类 '),(158,'\0','2019-10-08 15:50:08','6604','借方','勘探费用','','损益类 '),(159,'\0','2019-10-08 15:50:08','6701',NULL,'资产减值损失','','损益类 '),(160,'\0','2019-10-08 15:50:08','6711','借方','营业外支出','','损益类 '),(161,'\0','2019-10-08 15:50:08','6801',NULL,'所得税','','损益类 '),(162,'\0','2019-10-08 15:50:08','6901',NULL,'以前年度损益调整','','损益类 ');
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
INSERT INTO `tsys_business_type` VALUES (1,'\0','2019-10-08 09:20:30','0','添加商品时，添加商品默认库存','添加商品默认库存','+','默认'),(2,'\0','2019-10-08 09:20:30','100001001','盘点后，正品盘盈，添加库存','盘点添加正品','+','正'),(3,'\0','2019-10-08 09:20:30','100001002','盘点后，次品盘盈，添加库存','盘点添加次品','+','次品'),(4,'\0','2019-10-08 09:20:30','100001003','盘点后，残品盘盈，添加库存','盘点添加残品','+','残'),(5,'\0','2019-10-08 09:20:30','100002001','购入入库','入库正品','+','正'),(6,'\0','2019-10-08 09:20:30','100002002','正品转次','正品转次','+','次品'),(7,'\0','2019-10-08 09:20:30','100002003','次品转残','次品转残','+','残'),(8,'\0','2019-10-08 09:20:30','100002004','赠品转正','赠品转正','+','正'),(9,'\0','2019-10-08 09:20:30','100003001','正品调拨入库','调拨正品入库','+','正'),(10,'\0','2019-10-08 09:20:30','100003002','次品调拨入库','调拨次品入库','+','次'),(11,'\0','2019-10-08 09:20:30','100003003','残品调拨入库','调拨残品入库','+','残'),(12,'\0','2019-10-08 09:20:30','100004001','结算后退货，商品没有改变','结算退货','+','正'),(13,'\0','2019-10-08 09:20:30','100004002','配送退货，商品没有改变','配送退货','+','正'),(14,'\0','2019-10-08 09:20:30','100004003','配料退货，商品没有改变','配料退货','+','正'),(15,'\0','2019-10-08 09:20:30','100004004','初检退货，商品没有改变','初检退货','+','正'),(16,'\0','2019-10-08 09:20:30','100004005','加工退货，被加工商品已改变','加工退货-镜片','+','残'),(17,'\0','2019-10-08 09:20:30','100004006','加工退货，被加工商品没改变','加工退货-镜架','+','正'),(18,'\0','2019-10-08 09:20:30','100004007','终检退货，被加工商品已改变','终检退货-镜片','+','残'),(19,'\0','2019-10-08 09:20:30','100004008','终检退货，被加工商品没改变','终检退货-镜架','+','正'),(20,'\0','2019-10-08 09:20:30','100004009','终检退货，被加工商品已改变','取镜退货-镜片','+','残'),(21,'\0','2019-10-08 09:20:30','100004010','终检退货，被加工商品没改变','取镜退货-镜架','+','正'),(22,'\0','2019-10-08 09:20:30','100004011','完成退货，被加工商品已改变','完成退货-镜片','+','残'),(23,'\0','2019-10-08 09:20:30','100004012','完成退货，被加工商品没改变','完成退货-镜架','+','正'),(24,'\0','2019-10-08 09:20:30','100004013','完成退货，被加工商品没改变','完成退货-成品','+','次'),(25,'\0','2019-10-08 09:20:30','200001001','盘点后，正品盘亏，减少库存','盘亏正品','-','正'),(26,'\0','2019-10-08 09:20:30','200001002','盘点后，次品盘亏，减少库存','盘亏次品','-','次'),(27,'\0','2019-10-08 09:20:30','200001003','盘点后，残品盘亏，减少库存','盘亏残品','-','残'),(28,'\0','2019-10-08 09:20:30','200002001','正品转次','正品转次','-','正'),(29,'\0','2019-10-08 09:20:30','200002002','次品转残','次品转残','-','次'),(30,'\0','2019-10-08 09:20:30','200002003','残品退出库存处理','残品处理','-','残'),(31,'\0','2019-10-08 09:20:30','200002004','正品转赠','正品转赠','-','正'),(32,'\0','2019-10-08 09:20:30','200003001','调拨到其它站点','调拨正品出库','-','正'),(33,'\0','2019-10-08 09:20:30','200003002','调拨到其它站点','调拨次品出库','-','次'),(34,'\0','2019-10-08 09:20:30','200003003','调拨到其它站点','调拨残品出库','-','残'),(35,'\0','2019-10-08 09:20:30','200004001','销售结算后减少库存','销售正品','-','正');
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
INSERT INTO `tsys_system_value` VALUES (1,'\0','2019-09-25 10:22:26',0,'性别','性别'),(2,'\0','2019-09-25 10:24:20',1,'男','男'),(3,'\0','2019-09-25 10:24:35',1,'女','女'),(5,'\0','2019-09-25 10:51:48',0,'职务','职务'),(6,'\0','2019-09-25 10:59:57',5,'总经理','总经理'),(7,'\0','2019-09-25 11:00:25',5,'副总经理','副总经理'),(8,'\0','2019-09-25 11:00:55',5,'加工中心店长','加工中心店长'),(9,'\0','2019-09-25 11:01:10',5,'加工师','加工师'),(10,'\0','2019-09-25 11:01:19',5,'销售员','销售员'),(11,'\0','2019-09-25 11:01:28',5,'库管员','库管员'),(12,'\0','2019-09-25 11:01:40',5,'出纳','出纳'),(13,'\0','2019-09-25 11:01:56',5,'收入会计','收入会计'),(14,'\0','2019-09-25 11:02:04',5,'支出会计','支出会计'),(15,'\0','2019-09-25 11:02:35',5,'店长','店长'),(16,'\0','2019-09-25 11:57:17',0,'学历','学历'),(17,'\0','2019-09-25 11:57:53',16,'大学','大学'),(18,'\0','2019-09-25 11:58:22',16,'高中','高中'),(24,'\0','2019-09-25 16:05:13',16,'中学','中学'),(25,'\0','2019-09-25 16:05:21',16,'小学','小学'),(26,'','2019-09-25 17:59:50',0,'1','1'),(27,'\0','2019-09-26 13:22:04',0,'政治面貌','政治面貌'),(28,'\0','2019-09-26 13:22:20',27,'党员','党员'),(29,'\0','2019-09-26 13:22:29',27,'团员','团员'),(30,'\0','2019-09-26 13:22:36',27,'群众','群众'),(31,'\0','2019-09-26 13:25:47',0,'会计角色','会计角色'),(32,'\0','2019-09-26 13:25:58',31,'出纳','出纳'),(33,'\0','2019-09-26 13:26:08',31,'支出会计','支出会计'),(34,'\0','2019-09-26 13:26:17',31,'收入会计','收入会计'),(35,'\0','2019-09-26 13:26:31',31,'审核','审核');
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
INSERT INTO `tu_info` VALUES (1,'\0','2019-07-22 12:02:30','1984-01-16 00:00:00',NULL,'2003-09-01 00:00:00','于洋',NULL,1,'男',NULL,'18613806246',1,'幼儿园','小工','群众'),(17,'\0','2019-09-26 13:35:05','2019-09-26 00:00:00',NULL,'2019-10-03 00:00:00','于洋',NULL,18,'男',2,'18613806246',17,'小学','店长','群众'),(18,'','2019-09-26 13:46:22','2019-09-26 00:00:00',NULL,'2019-09-26 00:00:00','小易',NULL,1,'女',3,'110112',18,'小学','店长','群众'),(19,'\0','2019-10-14 10:26:14','2019-10-14 00:00:00',NULL,'2019-10-14 00:00:00','小易',NULL,18,'男',5,'110110',19,'小学','店长','群众'),(20,'\0','2019-10-15 11:40:24',NULL,NULL,NULL,'镜片',NULL,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL),(21,'\0','2019-10-15 11:41:40',NULL,NULL,NULL,'镜片',NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,NULL),(22,'\0','2019-10-15 11:43:25',NULL,NULL,NULL,'镜片',NULL,NULL,NULL,NULL,NULL,22,NULL,NULL,NULL);
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
INSERT INTO `tu_item` VALUES (22,'\0','2019-08-09 11:17:45','btn',5,'','','删除',3,'ShanChu'),(21,'\0','2019-08-09 11:17:29','btn',5,'','','修改',2,'XiuGai'),(18,'\0','2019-07-22 12:02:30','btn',16,'','','刷新',5,'ShuaXin'),(17,'\0','2019-07-22 12:02:30','btn',16,'','','新增',1,'XinZeng'),(16,'\0','2019-07-22 12:02:30','menu',4,'','app/store/store','站点数据',2,'zdsj'),(14,'\0','2019-07-22 12:02:30','btn',10,'','','查询',4,'ChaXun'),(11,'\0','2019-07-22 12:02:30','btn',10,'','','新增',1,'XinZeng'),(10,'\0','2019-07-22 12:02:30','menu',4,'','app/user/user','用户数据',2,'yhsj'),(9,'\0','2019-07-22 12:02:30','btn',5,'','','查询',4,'ChaXun'),(6,'\0','2019-07-22 12:02:30','btn',5,'','','新增',1,'XinZeng'),(5,'\0','2019-07-22 12:02:30','menu',4,'','app/role/role','角色数据',1,'jssj'),(4,'\0','2019-07-22 12:02:30','group',0,'','','系统数据',2,'XiTongShuJu'),(15,'\0','2019-07-22 12:02:30','btn',2,'','','刷新',2,'ShuaXin'),(3,'\0','2019-07-22 12:02:30','btn',2,'','','新增',1,'XinZeng'),(2,'\0','2019-07-22 12:02:30','menu',1,'','app/dev/dev','开发功能',1,'kfgn'),(1,'\0','2019-07-22 12:02:30','group',0,'','','开发管理',1,'kfgl'),(23,'\0','2019-08-09 11:18:04','btn',10,'','','修改',2,'XiuGai'),(24,'\0','2019-08-09 11:18:20','btn',10,'','','删除',3,'ShanChu'),(25,'\0','2019-09-17 08:56:59','group',0,'','','基础数据',3,'JiChuShuJu'),(26,'\0','2019-09-17 08:58:00','menu',25,'','goods/goods/goods','商品维护',2,'ShangPinWeiHu'),(27,'\0','2019-09-17 09:03:07','menu',25,'','app/type/type','品类维护',1,'PinLeiWeiHu'),(28,'\0','2019-09-17 09:03:35','menu',25,'','goods/lens/lens','度数维护',3,'DuShuWeiHu'),(29,'\0','2019-09-17 09:04:06','menu',25,'','goods/price/price','价格维护',5,'JiaGeWeiHu'),(30,'\0','2019-09-17 09:04:53','group',0,'','','库存管理',4,'KuCunGuanLi'),(31,'\0','2019-09-17 09:05:36','menu',25,'','','客户维护',5,'KeHuWeiHu'),(32,'\0','2019-09-17 09:05:51','menu',25,'','','供货商维护',6,'GongHuoShangWeiHu'),(33,'\0','2019-09-17 09:07:07','menu',30,'','kc/init/init','初始库存',1,'ChuShiKuCun'),(34,'\0','2019-09-17 09:07:42','menu',30,'','kc/pd/pd','库存盘点',2,'KuCunPanDian'),(35,'\0','2019-09-17 09:09:08','menu',30,'','kc/change/change','类型转换',3,'LeiXingZhuanHuan'),(36,'\0','2019-09-17 09:09:38','menu',30,'','kc/find/find','库存查询',4,'KuCunChaXun'),(37,'\0','2019-09-17 09:14:36','group',0,'','','工作流程',6,'GongZuoLiuCheng'),(85,'\0','2019-09-17 10:13:07','btn',84,'','','试算平衡',1,'ShiSuanPingHeng'),(40,'\0','2019-09-17 09:17:27','menu',37,'','lc/sell/bill','销售-单据操作',1,'XiaoShou-DanJuCaoZuo'),(41,'\0','2019-09-17 09:19:43','menu',4,'','app/ywbm/ywbm','业务编码',4,'YeWuBianMa'),(42,'\0','2019-09-17 09:20:23','menu',4,'','app/cw/km','会计科目',5,'HuiJiKeMu'),(43,'\0','2019-09-17 09:21:43','menu',4,'','app/gs/gs','特定公式',6,'TeDingGongShi'),(44,'\0','2019-09-17 09:22:30','group',0,'','','财务',7,'CaiWu'),(45,'\0','2019-09-17 09:23:06','menu',44,'','cw/pztz/pztz','凭证填制',1,'PingZhengTianZhi'),(46,'','2019-09-17 09:23:49','menu',44,'','cw/pzsh/pzsh','凭证审核',2,'PingZhengShenHe'),(47,'\0','2019-09-17 09:24:19','menu',44,'','cw/pzcx/pzcx','凭证查询',3,'PingZhengChaXun'),(48,'\0','2019-09-17 09:33:12','menu',44,'','','销售凭证',4,'XiaoShouPingZheng'),(49,'\0','2019-09-17 09:34:02','menu',37,'','','配送-单据操作',3,'PeiSong-DanJuCaoZuo'),(84,'\0','2019-09-17 10:12:50','menu',44,'','','试算平衡',9,'ShiSuanPingHeng'),(51,'\0','2019-09-17 09:35:37','menu',37,'','','配送-单据查询',4,'PeiSong-DanJuChaXun'),(52,'\0','2019-09-17 09:39:17','btn',40,'','','选商品',1,'XuanShangPin'),(53,'\0','2019-09-17 09:39:36','btn',40,'','','制单',2,'ZhiDan'),(54,'\0','2019-09-17 09:39:50','btn',40,'','','审核',3,'ShenHe'),(55,'\0','2019-09-17 09:40:06','btn',40,'','','收费',4,'ShouFei'),(56,'\0','2019-09-17 09:41:41','menu',37,'','','销售-单据查询',2,'XiaoShou-DanJuChaXun'),(57,'\0','2019-09-17 09:42:19','btn',56,'','','查询',1,'ChaXun'),(58,'\0','2019-09-17 09:43:47','btn',49,'','','选货',1,'XuanHuo'),(59,'\0','2019-09-17 09:43:55','btn',49,'','','制单',2,'ZhiDan'),(83,'\0','2019-09-17 10:12:00','btn',48,'','','生成',1,'ShengCheng'),(82,'\0','2019-09-17 10:11:32','btn',47,'','','审核',1,'ShenHe'),(81,'\0','2019-09-17 10:11:10','btn',45,'','','保存',1,'BaoCun'),(63,'\0','2019-09-17 09:46:33','btn',51,'','','查询',1,'ChaXun'),(64,'\0','2019-09-17 09:46:51','btn',51,'','','审核',2,'ShenHe'),(65,'\0','2019-09-17 09:47:03','btn',51,'','','接单',3,'JieDan'),(66,'\0','2019-09-17 09:47:12','btn',51,'','','收货',4,'ShouHuo'),(67,'\0','2019-09-17 09:47:43','btn',49,'','','审核',3,'ShenHe'),(68,'\0','2019-09-17 09:49:27','menu',37,'','','进货-订货单操作',5,'JinHuo-DingHuoDan'),(69,'\0','2019-09-17 09:50:32','menu',37,'','','进货-订货单查询',6,'JinHuo-DingHuoDanChaXun'),(70,'\0','2019-09-17 09:54:51','btn',68,'','','选货',1,'XuanHuo'),(71,'\0','2019-09-17 09:54:58','btn',68,'','','制单',2,'ZhiDan'),(72,'\0','2019-09-17 09:55:07','btn',68,'','','审核',3,'ShenHe'),(73,'\0','2019-09-17 09:56:16','btn',69,'','','查询',1,'ChaXun'),(74,'\0','2019-09-17 09:56:23','btn',69,'','','下单',2,'XiaDan'),(75,'\0','2019-09-17 09:58:16','menu',37,'','','进货-到货单操作',7,'JinHuo-DaoHuoDanCaoZuo'),(76,'\0','2019-09-17 09:58:26','menu',37,'','','进货-到货单查询',8,'JinHuo-DaoHuoDanChaXun'),(77,'\0','2019-09-17 09:58:40','btn',76,'','','查询',1,'ChaXun'),(78,'\0','2019-09-17 09:59:50','btn',75,'','','制单',1,'ZhiDan'),(79,'\0','2019-09-17 10:00:02','btn',75,'','','审核',2,'ShenHe'),(80,'\0','2019-09-17 10:00:27','btn',76,'','','入库',2,'RuKu'),(86,'\0','2019-09-17 10:13:30','menu',44,'','','报表',10,'BaoBiao'),(87,'\0','2019-09-17 10:13:43','btn',86,'','','生成',1,'ShengCheng'),(92,'\0','2019-09-17 10:16:56','menu',44,'','','查询流水',8,'ChaXunLiuShui'),(91,'\0','2019-09-17 10:16:46','menu',44,'','','填写流水',6,'TianXieLiuShui'),(93,'\0','2019-09-17 10:17:12','btn',91,'','','保存',1,'BaoCun'),(94,'\0','2019-09-17 10:17:23','btn',92,'','','查询',1,'ChaXun'),(95,'\0','2019-09-17 10:18:42','btn',34,'','','导出盘点单',1,'DaoChuPanDianDan'),(96,'\0','2019-09-17 10:18:49','btn',34,'','','导入盘点单',2,'DaoRuPanDianDan'),(97,'\0','2019-09-17 10:19:22','btn',34,'','','审核',3,'ShenHe'),(98,'','2019-09-17 10:20:25','btn',35,'','','正转次',1,'ZhengZhuanCi'),(99,'','2019-09-17 10:20:35','btn',35,'','','次转残',2,'CiZhuanCan'),(100,'','2019-09-17 10:21:39','btn',35,'','','残转次',3,'CanZhuanCi'),(101,'','2019-09-17 10:21:50','btn',35,'','','次转正',4,'CiZhuanZheng'),(102,'\0','2019-09-17 10:22:09','btn',36,'','','查询',1,'ChaXun'),(103,'\0','2019-09-17 10:22:48','btn',33,'','','查询',1,'ChaXun'),(104,'\0','2019-09-17 10:23:48','btn',26,'','','保存',1,'BaoCun'),(105,'\0','2019-09-17 10:23:57','btn',26,'','','修改',2,'XiuGai'),(106,'\0','2019-09-17 10:24:05','btn',26,'','','删除',3,'ShanChu'),(107,'\0','2019-09-17 10:24:41','btn',27,'','','新增',1,'XinZeng'),(108,'\0','2019-09-17 10:24:47','btn',27,'','','修改',3,'XiuGai'),(109,'\0','2019-09-17 10:24:56','btn',27,'','','删除',4,'ShanChu'),(110,'','2019-09-17 10:25:40','btn',28,'','','保存参数',1,'BaoCunCanShu'),(111,'\0','2019-09-17 10:25:53','btn',28,'','','保存度数',2,'BaoCunDuShu'),(112,'\0','2019-09-17 10:26:56','btn',28,'','','打印条码',2,'DaYinTiaoMa'),(113,'\0','2019-09-17 10:27:05','btn',28,'','','打印二维码',3,'DaYinErWeiMa'),(114,'\0','2019-09-17 10:27:37','btn',31,'','','保存',1,'BaoCun'),(115,'\0','2019-09-17 10:27:43','btn',31,'','','修改',2,'XiuGai'),(116,'\0','2019-09-17 10:28:08','btn',29,'','','保存',1,'BaoCun'),(117,'\0','2019-09-17 10:28:36','btn',32,'','','保存',1,'BaoCun'),(118,'\0','2019-09-17 10:28:42','btn',32,'','','修改',2,'XiuGai'),(119,'\0','2019-09-17 10:29:14','menu',25,'','','客户查询',7,'KeHuChaXun'),(120,'\0','2019-09-17 10:29:28','menu',25,'','','供货商查询',8,'GongHuoShangChaXun'),(121,'\0','2019-09-17 10:34:41','btn',36,'','','正转次',2,'ZhengZhuanCi'),(122,'\0','2019-09-17 10:34:59','btn',36,'','','次转残',3,'CiZhuanCan'),(123,'\0','2019-09-17 10:35:10','btn',36,'','','残转次',4,'CanZhuanCi'),(124,'\0','2019-09-17 10:35:18','btn',36,'','','次转正',5,'CiZhuanZheng'),(125,'\0','2019-09-17 13:05:36','btn',86,'','','导出',1,'DaoChu'),(126,'\0','2019-09-17 13:06:52','menu',44,'','','结转',11,'JieZhuan'),(127,'\0','2019-09-17 13:07:10','btn',126,'','','日结',1,'RiJie'),(128,'\0','2019-09-17 13:07:18','btn',126,'','','月结',2,'YueJie'),(129,'\0','2019-09-17 13:07:30','btn',126,'','','季节',3,'JiJie'),(130,'\0','2019-09-17 13:07:38','btn',126,'','','半年结',4,'BanNianJie'),(131,'\0','2019-09-17 13:07:47','btn',126,'','','年结',5,'NianJie'),(132,'\0','2019-09-17 13:08:14','menu',44,'','','设置',100,'SheZhi'),(133,'\0','2019-09-17 13:09:06','btn',132,'','','帐套',1,'ZhangTao'),(134,'\0','2019-09-17 13:09:15','btn',132,'','','会计月',1,'HuiJiYue'),(135,'\0','2019-09-23 11:46:35','btn',16,'','','修改',2,'XiuGai'),(136,'\0','2019-09-23 11:46:47','btn',16,'','','删除',3,'ShanChu'),(137,'\0','2019-09-23 11:46:58','btn',16,'','','添加子项',4,'TianJiaZiXiang'),(138,'\0','2019-09-24 10:46:22','menu',4,'','app/systemValue/systemValue','系统变量',7,'XiTongBianLiang'),(139,'\0','2019-09-24 10:46:57','btn',138,'','','添加子项',2,'TianJiaZiXiang'),(140,'\0','2019-09-24 10:50:24','btn',138,'','','修改',3,'XiuGai'),(141,'\0','2019-09-24 10:50:30','btn',138,'','','删除',4,'ShanChu'),(142,'\0','2019-09-25 09:42:40','btn',138,'','','新增',1,'XinZeng'),(143,'\0','2019-10-15 10:55:59','btn',27,'','','刷新',5,'ShuaXin'),(144,'\0','2019-10-15 11:46:35','btn',27,'','','属性维护',2,'ShuXingWeiHu'),(145,'\0','2019-10-15 14:16:21','btn',27,'','','折叠',6,'ZheDie'),(146,'\0','2019-10-15 14:16:29','btn',27,'','','展开',7,'ZhanKai');
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
INSERT INTO `tu_role` VALUES (1,'\0','2019-07-22 12:02:30','4,16,18,17,135,136,137,10,14,11,23,24,5,22,21,9,6,138,139,140,141,142,1,2,15,3,25,26,104,105,106,27,107,108,109,143,144,145,146,28,111,112,113,29,116,31,114,115,32,117,118,30,33,103,34,95,96,97,36,102,121,122,123,124,37,40,52,53,54,55,49,58,59,67,51,63,64,65,66,56,57,68,70,71,72,69,73,74,75,78,79,76,77,80,44,45,81,47,82,48,83,84,85,86,87,125,92,94,91,93,126,127,128,129,130,131,132,133,134','admin'),(18,'\0','2019-10-09 13:14:52','4,16,18,17,135,136,137,10,14,11,23,24,5,22,21,9,6,41,42,43,138,139,140,141,142,25,26,104,105,106,27,107,108,109,28,111,112,113,29,116,31,114,115,32,117,118,119,120,30,33,103,34,95,96,97,35,36,102,121,122,123,124,37,40,52,53,54,55,49,58,59,67,51,63,64,65,66,56,57,68,70,71,72,69,73,74,75,78,79,76,77,80,44,45,81,47,82,48,83,84,85,86,87,125,92,94,91,93,126,127,128,129,130,131,132,133,134','运行测试');
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
INSERT INTO `tu_user` VALUES (1,'\0','2019-07-22 12:02:30','admin','21232f297a57a5a743894a0e4a801fc3'),(17,'\0','2019-09-26 13:35:05','luke','E10ADC3949BA59ABBE56E057F20F883E'),(18,'','2019-09-26 13:46:22','liana','E10ADC3949BA59ABBE56E057F20F883E'),(19,'\0','2019-10-14 10:26:14','yi','E10ADC3949BA59ABBE56E057F20F883E');
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

-- Dump completed on 2019-10-22 16:17:12
