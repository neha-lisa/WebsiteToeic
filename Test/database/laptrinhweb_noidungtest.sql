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
-- Table structure for table `noidungtest`
--

DROP TABLE IF EXISTS `noidungtest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noidungtest` (
  `idnoidungtest` int(100) unsigned NOT NULL,
  `idbaitap` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `cauhoi` varchar(100) NOT NULL,
  `dapan` varchar(100) NOT NULL,
  PRIMARY KEY (`idnoidungtest`),
  KEY `idbaitap` (`idbaitap`),
  CONSTRAINT `noidungtest_ibfk_1` FOREIGN KEY (`idbaitap`) REFERENCES `baitap` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noidungtest`
--

LOCK TABLES `noidungtest` WRITE;
/*!40000 ALTER TABLE `noidungtest` DISABLE KEYS */;
INSERT INTO `noidungtest` VALUES (1,1,'1','A'),(2,1,'2','A'),(3,1,'3','c'),(4,1,'4','D'),(5,1,'5','B'),(6,1,'6','C'),(7,1,'7','A'),(8,1,'8','D'),(9,1,'9','B'),(10,1,'10','B'),(11,1,'11','C'),(12,1,'12','A'),(13,1,'13','C');
/*!40000 ALTER TABLE `noidungtest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-13 20:35:22
