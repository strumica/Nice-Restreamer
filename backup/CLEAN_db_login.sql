-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: db_login
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(4) unsigned NOT NULL DEFAULT '0',
  `cat_na` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cat_epg` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,1,'national','enter url'),(2,2,'sport','enter url'),(3,3,'cinema','enter url'),(5,4,'adult','enter url'),(6,5,'music','enter url'),(8,6,'movies','enter url'),(9,7,'radio','enter url');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `idpls` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `distri` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `dateex` int(10) unsigned NOT NULL,
  `etiket` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `numcon` int(4) unsigned NOT NULL,
  `numip` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reseller` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'example','expass','1','',1539129600,'demo user',1,'192.168.122.111,192.168.122.112',''),(2,'102017J006600','00:1A:79:44:79:00','1,2,3,4','',1526601600,'mag322 example',1,'allowed ip(s) separated by ,','');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resellers`
--

DROP TABLE IF EXISTS `resellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resellers` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `rs_name` varchar(16) NOT NULL,
  `rs_pass` varchar(32) NOT NULL,
  `rs_note` varchar(16) NOT NULL,
  `rs_idpls` varchar(100) NOT NULL,
  `rs_cred` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resellers`
--

LOCK TABLES `resellers` WRITE;
/*!40000 ALTER TABLE `resellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `resellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restream`
--

DROP TABLE IF EXISTS `restream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restream` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `ch_id` int(4) unsigned NOT NULL DEFAULT '0',
  `ch_st` varchar(512) NOT NULL,
  `ch_stbc` varchar(512) NOT NULL,
  `ch_na` varchar(32) NOT NULL,
  `ch_ff` varchar(1024) NOT NULL,
  `ch_stat` int(1) unsigned NOT NULL DEFAULT '0',
  `ch_ip` varchar(200) NOT NULL,
  `ch_cat` int(4) unsigned NOT NULL DEFAULT '0',
  `ch_note` varchar(16) NOT NULL,
  `ch_hls` int(1) unsigned NOT NULL DEFAULT '0',
  `ch_epg` varchar(512) DEFAULT NULL,
  `ch_ico` varchar(512) DEFAULT NULL,
  `ch_typ` varchar(16) DEFAULT NULL,
  `ch_uaid` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restream`
--

LOCK TABLES `restream` WRITE;
/*!40000 ALTER TABLE `restream` DISABLE KEYS */;
/*!40000 ALTER TABLE `restream` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-04  0:32:59
