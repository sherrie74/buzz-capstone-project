CREATE DATABASE  IF NOT EXISTS `greatgr2_buzz` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `greatgr2_buzz`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: greatgr2_buzz
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `couponsissued`
--

DROP TABLE IF EXISTS `couponsissued`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `couponsissued` (
  `issueID` int(11) NOT NULL AUTO_INCREMENT,
  `dateIssued` date NOT NULL,
  `accountID` int(11) NOT NULL,
  `sentTo` varchar(45) NOT NULL,
  `dateRedeemed` date DEFAULT NULL,
  `RedeemedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couponsissued`
--

LOCK TABLES `couponsissued` WRITE;
/*!40000 ALTER TABLE `couponsissued` DISABLE KEYS */;
INSERT INTO `couponsissued` VALUES (17,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(18,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(19,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(20,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(21,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(22,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(23,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(24,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(25,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(26,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(27,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(28,'2016-10-25',104,'jbrentonphillips@gmail.com',NULL,NULL),(29,'2016-10-26',104,'jbrentonphillips@gmail.com',NULL,NULL),(30,'2016-10-30',104,'jbrentonphillips@gmail.com',NULL,NULL),(31,'2016-10-30',104,'jbrentonphillips@gmail.com',NULL,NULL),(32,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(33,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(34,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(35,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(36,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(37,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(38,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(39,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(40,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(41,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(42,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(43,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(44,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(45,'2016-10-31',104,'jbrentonphillips@gmail.com',NULL,NULL),(46,'2016-11-02',104,'jbrentonphillips@gmail.com',NULL,NULL),(47,'2016-11-20',104,'jbrentonphillips@gmail.com',NULL,NULL),(48,'2016-11-20',104,'jbrentonphillips@gmail.com',NULL,NULL),(49,'2016-11-21',104,'jbrentonphillips@gmail.com',NULL,NULL),(50,'2016-11-20',104,'jbrentonphillips@gmail.com',NULL,NULL),(51,'2016-11-20',104,'jbrentonphillips@gmail.com',NULL,NULL),(52,'2016-12-04',104,'jbrentonphillips@gmail.com',NULL,NULL),(53,'2016-12-04',104,'jbrentonphillips@gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `couponsissued` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multisurvey`
--

DROP TABLE IF EXISTS `multisurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multisurvey` (
  `userid` int(11) DEFAULT NULL,
  `surveyID` int(11) NOT NULL AUTO_INCREMENT,
  `QRPath` varchar(250) DEFAULT NULL,
  `SurveyCode` varchar(45) DEFAULT NULL,
  `couponPath` varchar(250) DEFAULT NULL,
  `responseID` int(11) DEFAULT NULL,
  PRIMARY KEY (`surveyID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multisurvey`
--

LOCK TABLES `multisurvey` WRITE;
/*!40000 ALTER TABLE `multisurvey` DISABLE KEYS */;
INSERT INTO `multisurvey` VALUES (104,1,'whatsthebuzz/qrImages/JonesVille2_b7edbed7f96fc6dd200a5ff4cdc8076f.png','JON5800C10FAA733','uploads/buffalos-coupon-stub.png',NULL),(105,2,'whatsthebuzz/qrImages/Wileys_00b5fe6f3be3705d789134ae76ab24f1.png','WIL582BA06DE2B78',NULL,NULL),(104,5,NULL,NULL,NULL,NULL),(104,14,'whatsthebuzz/qrImages/Wileys_00b5fe6f3be3705d789134ae76ab24f1.png','WIL582BA06DE2B78',NULL,NULL),(104,15,'whatsthebuzz/qrImages/Wileys_00b5fe6f3be3705d789134ae76ab24f1.png','WIL582BA06DE2B78',NULL,NULL);
/*!40000 ALTER TABLE `multisurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `normalcoupon`
--

DROP TABLE IF EXISTS `normalcoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `normalcoupon` (
  `couponID` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `condreq` varchar(255) DEFAULT NULL,
  `expires` date DEFAULT NULL,
  PRIMARY KEY (`couponID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `normalcoupon`
--

LOCK TABLES `normalcoupon` WRITE;
/*!40000 ALTER TABLE `normalcoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `normalcoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ohm`
--

DROP TABLE IF EXISTS `ohm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ohm` (
  `ohmid` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ohmid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ohm`
--

LOCK TABLES `ohm` WRITE;
/*!40000 ALTER TABLE `ohm` DISABLE KEYS */;
INSERT INTO `ohm` VALUES (1,'jbrentonphillips@gmail.com','SAk3tp8h6lFnU');
/*!40000 ALTER TABLE `ohm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `qID` int(11) NOT NULL,
  `PossQuestion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`qID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table holds survey questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Overall Quality'),(2,'How comfortable were you during your visit'),(3,'Food Quality'),(4,'Server Quality'),(5,'Overall Value'),(6,'Overall Cleaniness'),(7,'Environment (Lighting/Seating)'),(8,'Was your food delivered in a timely manner?'),(9,'How was the temperature of your food?'),(10,'How was the waiting time?');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rateplans`
--

DROP TABLE IF EXISTS `rateplans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rateplans` (
  `planID` int(11) NOT NULL,
  `planDescription` varchar(45) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `ratequal` varchar(45) DEFAULT NULL,
  `planStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`planID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rateplans`
--

LOCK TABLES `rateplans` WRITE;
/*!40000 ALTER TABLE `rateplans` DISABLE KEYS */;
INSERT INTO `rateplans` VALUES (100000,'Per Month',20,'','ACTIVE'),(100010,'Per Quarter',54,'10% annual savings','ACTIVE'),(100020,'Per Year',192,'20% annual savings','ACTIVE');
/*!40000 ALTER TABLE `rateplans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responses` (
  `responseID` int(11) NOT NULL AUTO_INCREMENT,
  `accountID` int(11) DEFAULT NULL,
  `respEmail` varchar(90) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `clean` int(11) DEFAULT NULL,
  `recommend` int(11) DEFAULT NULL,
  `server` varchar(45) DEFAULT NULL,
  `verbatim` text,
  `googleID` varchar(45) DEFAULT NULL,
  `fourSquareID` varchar(45) DEFAULT NULL,
  `busname` varchar(100) DEFAULT NULL,
  `dtCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `msgManager` int(11) DEFAULT NULL,
  `msgRespondent` int(11) DEFAULT NULL,
  PRIMARY KEY (`responseID`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
INSERT INTO `responses` VALUES (28,104,'jbrentonphillips@gmail.com',2,3,4,4,5,NULL,'','',NULL,'Jones','2016-10-15 11:33:39',NULL,NULL),(29,104,'jbrentonphillips@gmail.com',3,4,4,3,2,NULL,'test','',NULL,'Jones','2016-10-15 11:35:10',NULL,NULL),(30,104,'jbrentonphillips@gmail.com',4,4,4,5,9,'Alex','Great steaks','',NULL,'Jones','2016-10-22 22:36:32',NULL,NULL),(31,104,'jbrentonphillips@gmail.com',2,5,4,5,3,'Todd','Maybe','',NULL,'Jones','2016-10-24 15:16:16',NULL,NULL),(32,104,'jbrentonphillips@gmail.com',4,5,4,3,8,'Ted','Not at this time','',NULL,'Jones','2016-10-25 18:38:18',NULL,NULL),(33,104,'jbrentonphillips@gmail.com',3,4,4,4,9,'Bob','testing this out','',NULL,'Jones','2016-10-25 18:43:00',NULL,NULL),(34,104,'jbrentonphillips@gmail.com',5,5,4,5,9,'Davie','Testing again','',NULL,'Jones','2016-10-25 18:46:44',NULL,NULL),(35,104,'jbrentonphillips@gmail.com',4,5,5,4,10,'Dan','One more time','',NULL,'Jones','2016-10-25 18:51:36',NULL,NULL),(36,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','holla','',NULL,'Jones','2016-10-25 19:02:29',NULL,NULL),(37,104,'jbrentonphillips@gmail.com',3,4,5,3,6,'Bob','testing','',NULL,'Jones','2016-10-25 19:15:51',NULL,NULL),(38,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','','',NULL,'Jones','2016-10-25 19:17:02',NULL,NULL),(39,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','','',NULL,'Jones','2016-10-25 19:17:22',NULL,NULL),(40,104,'jbrentonphillips@gmail.com',5,99,99,99,0,'','testting','',NULL,'Jones','2016-10-25 19:18:44',NULL,NULL),(41,104,'jbrentonphillips@gmail.com',5,99,4,99,0,'','testing lots','',NULL,'Jones','2016-10-25 19:20:34',NULL,NULL),(42,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','','',NULL,'Jones','2016-10-25 19:21:44',NULL,NULL),(43,104,'jbrentonphillips@gmail.com',4,99,99,99,0,'','nope','',NULL,'Jones','2016-10-25 19:22:40',NULL,NULL),(44,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','Wonderful','',NULL,'Jones','2016-10-25 19:23:34',NULL,NULL),(45,104,'jbrentonphillips@gmail.com',4,3,5,5,10,'Donna','Nope','',NULL,'Jones','2016-10-26 16:58:33',NULL,NULL),(46,104,'jbrentonphillips@gmail.com',2,3,2,5,10,'Barry','Chick and Waffles','',NULL,'Jones','2016-10-30 17:56:32',NULL,NULL),(47,104,'jbrentonphillips@gmail.com',4,5,3,5,8,'Aaron','Great food, slow service.','',NULL,'Jones','2016-10-30 18:09:35',NULL,NULL),(48,104,'jbrentonphillips@gmail.com',5,5,5,5,10,'Blossom','Testing','',NULL,'Jones','2016-10-30 20:05:49',NULL,NULL),(49,104,'jbrentonphillips@gmail.com',4,3,5,5,7,'Wanda','totally rad','',NULL,'Jones','2016-10-30 20:13:41',NULL,NULL),(50,104,'jbrentonphillips@gmail.com',5,4,3,3,8,'Bob','testing','',NULL,'Jones','2016-10-30 20:15:40',NULL,NULL),(51,104,'jbrentonphillips@gmail.com',5,5,4,5,10,'Todd','maybe','',NULL,'Jones','2016-10-30 20:28:20',NULL,NULL),(52,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'Brent','what','',NULL,'Jones','2016-10-30 20:29:29',NULL,NULL),(53,104,'jbrentonphillips@gmail.com',5,5,4,3,8,'jeb','maybe','',NULL,'Jones','2016-10-30 20:30:52',NULL,NULL),(54,104,'',99,99,99,99,0,'','','',NULL,'Jones','2016-10-30 20:31:16',NULL,NULL),(55,104,'jbrentonphillips@gmail.com',4,5,5,4,10,'Dave','totally','',NULL,'Jones','2016-10-30 20:33:02',NULL,NULL),(56,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','','',NULL,'Jones','2016-10-30 20:33:28',NULL,NULL),(57,104,'jbrentonphillips@gmail.com',5,4,2,5,10,'Barry','wonderful','',NULL,'Jones','2016-10-30 20:34:54',NULL,NULL),(58,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'Demitrius','taco paco','',NULL,'Jones','2016-10-30 20:36:06',NULL,NULL),(59,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','boo','',NULL,'Jones','2016-10-30 20:36:56',NULL,NULL),(60,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','boom','',NULL,'Jones','2016-10-30 20:43:39',NULL,NULL),(61,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','','',NULL,'Jones','2016-10-30 20:45:10',NULL,NULL),(62,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','Taco sauce','',NULL,'Jones','2016-10-30 20:49:37',NULL,NULL),(63,104,'jbrentonphillips@gmail.com',4,4,3,5,9,'Bob','Not yet','',NULL,'Jones','2016-11-02 18:12:20',NULL,NULL),(64,104,'jbrentonphillips@gmail.com',3,2,4,5,10,'Dave','Super service','',NULL,'Jones','2016-11-20 18:40:04',NULL,NULL),(65,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','test','',NULL,'Jones','2016-11-20 18:57:21',NULL,NULL),(66,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','','',NULL,'Jones','2016-11-20 19:01:14',NULL,NULL),(67,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','','',NULL,'Jones','2016-11-20 19:04:52',NULL,NULL),(68,104,'jbrentonphillips@gmail.com',99,99,99,99,0,'','','',NULL,'Jones','2016-11-20 19:07:06',NULL,NULL),(69,104,'jbrentonphillips@gmail.com',1,3,5,3,2,'Dave','nope','',NULL,'Jones','2016-12-04 14:27:16',NULL,NULL),(70,104,'',5,5,5,5,5,'','','',NULL,'Jones','2016-12-04 14:29:06',NULL,NULL),(71,104,'jbrentonphillips@gmail.com',4,4,3,4,1,'Tom','Great service!','',NULL,'Jones','2016-12-04 14:30:26',NULL,NULL),(72,104,'',5,5,5,5,5,'','','',NULL,'Jones','2016-12-04 14:34:03',NULL,NULL),(73,104,'',5,5,5,5,5,'','','',NULL,'Jones','2016-12-04 14:49:11',NULL,NULL),(74,104,'',5,5,5,5,5,'','','',NULL,'Jones','2016-12-04 14:51:02',NULL,NULL),(75,104,'',2,1,3,2,2,'','','',NULL,'Jones','2016-12-08 19:24:07',NULL,NULL),(76,105,'briarlight@yahoo.com',5,3,5,2,2,'meow','woof','',NULL,'Temp','2017-01-29 16:01:56',NULL,NULL),(77,105,'neisha0501@yahoo.com',5,5,5,5,4,'','','',NULL,'Temp','2017-01-29 16:02:40',NULL,NULL),(78,105,'meow@yahoo.com',3,3,3,2,5,'','','',NULL,'Temp','2017-01-31 15:59:00',NULL,NULL);
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selectedq`
--

DROP TABLE IF EXISTS `selectedq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selectedq` (
  `surveyID` int(11) NOT NULL,
  `first` int(11) DEFAULT NULL,
  `second` int(11) DEFAULT NULL,
  `third` int(11) DEFAULT NULL,
  `fourth` int(11) DEFAULT NULL,
  `fifth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selectedq`
--

LOCK TABLES `selectedq` WRITE;
/*!40000 ALTER TABLE `selectedq` DISABLE KEYS */;
INSERT INTO `selectedq` VALUES (1,2,4,6,8,10),(5,1,3,5,7,9),(14,1,3,5,7,9),(15,1,3,5,7,9);
/*!40000 ALTER TABLE `selectedq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsites`
--

DROP TABLE IF EXISTS `subsites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subsites` (
  `siteid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `sitename` varchar(45) DEFAULT NULL,
  `sublabel` varchar(45) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `zipfour` int(11) DEFAULT NULL,
  `logopath` varchar(100) DEFAULT NULL,
  `qrpath` varchar(100) DEFAULT NULL,
  `couponpath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsites`
--

LOCK TABLES `subsites` WRITE;
/*!40000 ALTER TABLE `subsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `subsites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wtbmembers`
--

DROP TABLE IF EXISTS `wtbmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wtbmembers` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `joined` date DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `pword` varchar(160) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `busURL` varchar(45) DEFAULT NULL,
  `busname` varchar(45) DEFAULT NULL,
  `logoPath` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `pmtcode` varchar(12) DEFAULT NULL,
  `googleID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wtbmembers`
--

LOCK TABLES `wtbmembers` WRITE;
/*!40000 ALTER TABLE `wtbmembers` DISABLE KEYS */;
INSERT INTO `wtbmembers` VALUES (104,'2016-10-14','testuser@demo.com','SAk3tp8h6lFnU','John','Jones','JonesVille2','Jones','uploads/Buffalos-logo.jpg','ACTIVE',10100,'',''),(105,'2016-11-15','dave@wiley.com','SAuVAxHm1kat2','Dave','Wiley','Wileys','Temp',NULL,'ACTIVE',100000,'','');
/*!40000 ALTER TABLE `wtbmembers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-14 19:13:45
