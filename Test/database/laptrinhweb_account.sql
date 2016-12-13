-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: laptrinhweb
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `cpw` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  `quyen` int(11) NOT NULL,
  `khoa` int(11) DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'Tùng Mountain','thanhtung','12345','12345','asd@dsa','0987654321','2016-12-02',0,1,'2016-12-13 19:07:24'),(2,'Tran Cong Minh','MinhDepZai','123','123','congminhk14@gmail.com','0909821252','2016-12-02',1,1,'2016-12-13 19:26:54'),(3,'Huynh Quoc Dai','quocdai','12345','12345','Quocdai@gmail.com','0123456789','2016-12-03',1,0,'2016-12-13 19:44:34'),(4,'Admin','Admin','admin','admin','abc@gmail.com','088968641','2016-12-06',0,1,'2016-12-13 19:59:52'),(7,'Nguyen Dai Hieu','daihieu','123','123','masterchief288@gmail.com','01674988344','2016-12-07',1,1,'2016-12-13 15:23:16'),(8,'Tran Cong Minh','congminh','123','123','congminh@gmail.com','0909821252','2016-12-13',1,1,'2016-12-13 09:23:17'),(10,'test','123','123','123','kinectanubis@gmail.com','0909821252','2016-12-13',1,1,NULL),(11,'Nhom 5','nhom5','123','123','nhom5@gmail.com','012345678','2016-12-13',1,1,'2016-12-13 09:27:55'),(12,'lap trinh web','laptrinhweb','12345','12345','ltw@gmail.com','0123456789','2016-12-13',1,1,'2016-12-13 09:32:31'),(13,'Tran cong minh','demo','12345','12345','demo@gmail.com','0123456789','2016-12-13',1,1,'2016-12-13 19:57:05');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-13 20:35:21
