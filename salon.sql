CREATE DATABASE  IF NOT EXISTS `salon` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `salon`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: salon
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `appt_id` int(11) NOT NULL AUTO_INCREMENT,
  `req_date` date NOT NULL,
  `expected_date` date NOT NULL,
  `appt_status` varchar(45) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `srvprovider_id` int(11) NOT NULL,
  PRIMARY KEY (`appt_id`),
  KEY `customer_id_idx` (`customer_id`),
  KEY `srvprovider_id_idx` (`srvprovider_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`cust_id`) ON UPDATE CASCADE,
  CONSTRAINT `srvprovider_id` FOREIGN KEY (`srvprovider_id`) REFERENCES `serviceprovider` (`sp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (400,'2017-05-12','2017-05-14','accepted',100,900),(401,'2017-05-13','2017-05-14','accepted',101,901),(402,'2017-05-14','2017-05-15','pending',100,900),(403,'2017-05-15','2017-05-16','pending',101,901);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_service`
--

DROP TABLE IF EXISTS `appointment_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_service` (
  `appointment_id` int(11) NOT NULL,
  `srv_id` int(11) NOT NULL,
  KEY `appointment_id_idx` (`appointment_id`),
  KEY `srv_id_idx` (`srv_id`),
  CONSTRAINT `appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appt_id`) ON DELETE CASCADE,
  CONSTRAINT `srv_id` FOREIGN KEY (`srv_id`) REFERENCES `service` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_service`
--

LOCK TABLES `appointment_service` WRITE;
/*!40000 ALTER TABLE `appointment_service` DISABLE KEYS */;
INSERT INTO `appointment_service` VALUES (400,300),(401,301);
/*!40000 ALTER TABLE `appointment_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_uname` varchar(45) NOT NULL,
  `cust_pssword` varchar(45) NOT NULL,
  `cust_lastname` varchar(45) NOT NULL,
  `cust_firstname` varchar(45) NOT NULL,
  `cust_address` varchar(45) NOT NULL,
  `cust_contactno` varchar(11) NOT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `cust_pssword_UNIQUE` (`cust_pssword`),
  UNIQUE KEY `cust_uname_UNIQUE` (`cust_uname`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (100,'julius01','1234','baobao','julius','baguio city','09987456123'),(101,'julia02','456','baba','julia','baguio city','09912345678');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finappointment`
--

DROP TABLE IF EXISTS `finappointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finappointment` (
  `apptID` int(11) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `serviceName` varchar(45) NOT NULL,
  `spID` int(11) NOT NULL,
  PRIMARY KEY (`apptID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finappointment`
--

LOCK TABLES `finappointment` WRITE;
/*!40000 ALTER TABLE `finappointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `finappointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_customer`
--

DROP TABLE IF EXISTS `request_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_customer` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_customer`
--

LOCK TABLES `request_customer` WRITE;
/*!40000 ALTER TABLE `request_customer` DISABLE KEYS */;
INSERT INTO `request_customer` VALUES (500,'Leo','malicdem'),(501,'cess','torres'),(502,'aira','marcelo');
/*!40000 ALTER TABLE `request_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_sp`
--

DROP TABLE IF EXISTS `request_sp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_sp` (
  `requestsp_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  PRIMARY KEY (`requestsp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_sp`
--

LOCK TABLES `request_sp` WRITE;
/*!40000 ALTER TABLE `request_sp` DISABLE KEYS */;
INSERT INTO `request_sp` VALUES (600,'david','malones'),(601,'jepanee','gonzales'),(602,'tyrone','soy');
/*!40000 ALTER TABLE `request_sp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (300,'rebond','hair',1500),(301,'manicure','nails',200),(302,'make-up','face',300),(303,'curl','hair',600);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceprovider`
--

DROP TABLE IF EXISTS `serviceprovider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceprovider` (
  `sp_id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_uname` varchar(45) NOT NULL,
  `sp_pssword` varchar(45) NOT NULL,
  `sp_lastname` varchar(45) NOT NULL,
  `sp_firstname` varchar(45) NOT NULL,
  `sp_contactno` varchar(11) NOT NULL,
  `sp_status` varchar(45) NOT NULL,
  PRIMARY KEY (`sp_id`),
  UNIQUE KEY `sp_uname_UNIQUE` (`sp_uname`),
  UNIQUE KEY `sp_pssword_UNIQUE` (`sp_pssword`),
  UNIQUE KEY `sp_contactno_UNIQUE` (`sp_contactno`)
) ENGINE=InnoDB AUTO_INCREMENT=902 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceprovider`
--

LOCK TABLES `serviceprovider` WRITE;
/*!40000 ALTER TABLE `serviceprovider` DISABLE KEYS */;
INSERT INTO `serviceprovider` VALUES (900,'Shenmoto','789','Paghad','shen','09123456789','active'),(901,'Markmoto','112','beeray','marked','09788456123','active');
/*!40000 ALTER TABLE `serviceprovider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_appointment`
--

DROP TABLE IF EXISTS `sp_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_appointment` (
  `appntment_id` int(11) NOT NULL,
  `serviceprovider_id` int(11) NOT NULL,
  KEY `appntment_id_idx` (`appntment_id`),
  KEY `serviceprovider_id_idx` (`serviceprovider_id`),
  CONSTRAINT `appntment_id` FOREIGN KEY (`appntment_id`) REFERENCES `appointment` (`appt_id`) ON DELETE CASCADE,
  CONSTRAINT `serviceprovider_id` FOREIGN KEY (`serviceprovider_id`) REFERENCES `serviceprovider` (`sp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_appointment`
--

LOCK TABLES `sp_appointment` WRITE;
/*!40000 ALTER TABLE `sp_appointment` DISABLE KEYS */;
INSERT INTO `sp_appointment` VALUES (400,900),(401,901);
/*!40000 ALTER TABLE `sp_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_service`
--

DROP TABLE IF EXISTS `sp_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_service` (
  `srvceprovider_id` int(11) NOT NULL,
  `srvice_id` int(11) NOT NULL,
  `price` double NOT NULL,
  KEY `srvceprovider_id_idx` (`srvceprovider_id`),
  KEY `srvice_id_idx` (`srvice_id`),
  CONSTRAINT `srvceprovider_id` FOREIGN KEY (`srvceprovider_id`) REFERENCES `serviceprovider` (`sp_id`) ON DELETE CASCADE,
  CONSTRAINT `srvice_id` FOREIGN KEY (`srvice_id`) REFERENCES `service` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_service`
--

LOCK TABLES `sp_service` WRITE;
/*!40000 ALTER TABLE `sp_service` DISABLE KEYS */;
INSERT INTO `sp_service` VALUES (900,300,1500),(901,301,200);
/*!40000 ALTER TABLE `sp_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprsrv`
--

DROP TABLE IF EXISTS `sprsrv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sprsrv` (
  `request_id` int(11) NOT NULL,
  `srv_id` int(11) NOT NULL,
  KEY `fk_sp_id_idx` (`request_id`),
  KEY `fk_srv_id_idx` (`srv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprsrv`
--

LOCK TABLES `sprsrv` WRITE;
/*!40000 ALTER TABLE `sprsrv` DISABLE KEYS */;
INSERT INTO `sprsrv` VALUES (600,300),(600,301),(600,303),(601,303);
/*!40000 ALTER TABLE `sprsrv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `srvc_id` int(11) NOT NULL,
  `sprovider_id` int(11) NOT NULL,
  `custo_id` int(11) NOT NULL,
  `cust_rating` int(5) DEFAULT NULL,
  `sp_rating` int(5) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `srvc_id_idx` (`srvc_id`),
  KEY `sprovider_id_idx` (`sprovider_id`),
  KEY `custo_id_idx` (`custo_id`),
  CONSTRAINT `custo_id` FOREIGN KEY (`custo_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE,
  CONSTRAINT `sprovider_id` FOREIGN KEY (`sprovider_id`) REFERENCES `serviceprovider` (`sp_id`) ON UPDATE CASCADE,
  CONSTRAINT `srvc_id` FOREIGN KEY (`srvc_id`) REFERENCES `service` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=702 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (700,1500,'2017-05-14',300,900,100,5,4),(701,200,'2017-05-14',301,901,101,3,3);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'salon'
--

--
-- Dumping routines for database 'salon'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-15 16:59:41
