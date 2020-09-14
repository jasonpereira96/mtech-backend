-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: Students
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Current Database: `Students`
--

DROP DATABASE IF EXISTS `Students`;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Students` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Students`;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `cgpa` float NOT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (1,'Daniel DSliva','Electronics','Borivali','9321524870',6.48,'BTECH','2'),(2,'Karan Mamaniya','Electronics','Mahim','1234345343',7.8,'BTECH','2'),(3,'Jason Pereira','Computer Science','Borivali','9769190949',7.1,'BE','4'),(4,'Sneha Joshi','Computer Science','Malad','9869815863',8.2,'BTECH','4'),(5,'Praveen Pacha','Electronics','Borivali','8897458125',7.7,'MTECH','1'),(6,'Rohit Sharma','Mechanical','Andheri','8896574932',8,'MTECH','2'),(7,'Reshma Samuel','Electronics','Kandivali','9784210520',7.5,'BTECH','2'),(8,'Kaustubh Mhatre','Mechanical','Borivali','9192138460',6.9,'MTECH','1'),(9,'Abhishek Kargutkar','Mechanical','Dahisar','9993652014',7.8,'BE','3'),(10,'Shilpi Sharma','Computer Science','Matunga','7894581250',9.2,'BE','3'),(11,'Karan Singh','Eletronics','Kandivali','9475612224',8.4,'BTECH','3');
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-14 18:44:08
