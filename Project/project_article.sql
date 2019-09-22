-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: mysql.learn.cpp.ac.nz    Database: project
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `article` (
  `articleID` int(11) NOT NULL,
  `titleID` int(11) DEFAULT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `typeID` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `born` varchar(20) DEFAULT NULL,
  `died` varchar(20) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `knownFor` varchar(100) DEFAULT NULL,
  `notableWorks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`articleID`),
  KEY `titleID` (`titleID`),
  KEY `categoryID` (`categoryID`),
  KEY `typeID` (`typeID`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`titleID`) REFERENCES `articledetails` (`titleid`),
  CONSTRAINT `article_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryid`),
  CONSTRAINT `article_ibfk_3` FOREIGN KEY (`typeID`) REFERENCES `type` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,1,1,'Claude Monet','1840','1926','French','Painter','Water Lilies'),(2,2,1,1,'Leonardo da Vinci','1452','1519','Italian','Art and Science','Mona Lisa, The Last Supper'),(3,3,1,2,'Mona Lisa',NULL,NULL,NULL,NULL,NULL),(4,4,2,3,'Pythagorean theorem',NULL,NULL,NULL,NULL,NULL),(5,5,2,1,'Euclid','4th century BC','3rd century BC',NULL,'Euclidean geometry',NULL),(6,6,2,4,'Quicksort',NULL,NULL,NULL,NULL,NULL),(7,7,3,1,'Bill Gates','1955',NULL,'USA','Founder of the Microsoft Corporation',NULL),(8,8,3,1,'Steve Jobs','1955','2011','USA','Co-cretor of the Macintosh, iPod, iPhone, iPad, and first Apple Stores',NULL),(9,9,3,5,'Java',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-19 15:40:16
