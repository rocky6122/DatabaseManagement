CREATE DATABASE  IF NOT EXISTS `employees` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `employees`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: employees
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `eaid` int(11) NOT NULL,
  `estreet` varchar(45) NOT NULL,
  `ecity` varchar(45) NOT NULL,
  `est` char(2) NOT NULL,
  `ezip` char(5) NOT NULL,
  PRIMARY KEY (`eaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'110 Main Street','Winooski','VT','05404'),(10,'987 Forward Avenue','Augusta','ME','04330'),(100,'10 East willard street','Burlington','VT','05401'),(101,'23 South Winner Road','Enosburg Falls','VT','05450'),(102,'16 South Union Road','Halifax','MA','02338'),(103,'8 North Genius Road','Plymouth','MA','02334'),(104,'88 North Ovitt Road','Lisbon','NH','03101'),(105,'123 Fake St.','Faketown','VT','05101'),(106,'25 Winooski Falls Way','Winooski','VT','05404'),(107,'326 Quarry Hill Dr.','S. Burlington','VT','05404'),(108,'404 Notfound St.','Nowhere','VT','05404'),(109,'1 mySt.','myTown','VT','11111'),(11,'12 Lane Road','Colchester','VT','05439'),(110,'111 Main Street','Winooski','VT','05404'),(111,'11 South Evan Road','Manchester','NH','03101'),(112,'26 North Avenue','Rome','NY','13440'),(113,'985 East West Street','Providence','RI','02901'),(114,'265743214 Los Alomos Road','Bangor','ME','04401'),(115,'42 Main Street','Worcester','MA','01601'),(116,'1 Buck Street','Durham','NH','03824'),(117,'30 Hayward Steet','Burlington','VT','05401'),(118,'5 Cambell Court','Dover','NH','03820'),(119,'32 Post Road','Bangor','ME','04401'),(12,'17 Fordham Place','Hempstead','NY','11550'),(120,'64 Road Rage Lane','Wikita','VT','05859'),(121,'999 NinteyNineNine','Bubbletown','VT','05205'),(122,'One','Two','VT','05952'),(123,'40 Wowzer drive','Hineburg','VT','05505'),(124,'222 Megatown','Megaville','VT','05892'),(125,'12 Galaxy Faraway','Outerspace','NY','05403'),(126,'1 Middle Road','South Burlington','VT','21350'),(127,'1 Trump Plaza','New York','NY','11550'),(128,'777 Heaven Place','Heaven','NY','77777'),(129,'19083 Park Place','Monopoly','AK','45650'),(13,'10 East willard street','Burlington','VT','05401'),(130,'14 Round Circle','Utica','NY','12843'),(131,'123 Fake Street','Burlington','MA','02348'),(132,'90 Central Street','Natick','MA','01760'),(133,'65 Pond Road','Bath','ME','65875'),(134,'67 Lake Street','Portland','NH','12354'),(135,'450 College Street','Burlington','VT','05401'),(136,'14 South Pole Dr','North Pole','ND','05404'),(137,'89 Dogwood Dr','Townshend','VT','05114'),(139,'69 Groovy Way','Funky Town','CA','44206'),(14,'23 South Winner Road','Enosburg Falls','VT','05450'),(140,'65 South Union','Burlington','VT','05401'),(141,'1 Wayne Manor Road','Gotham City','NY','10118'),(142,'1 Amazonian trail','Amazon','VT','05401'),(143,'25 Not Superman\'s house Road ','Metropolis','CA','11550'),(144,'20 Ingram Street','Queens','NY','11428'),(145,'4 Super Villain Road ','Gotham City','NY','11550'),(146,'20 West Canal Street','Winooski','VT','05404'),(147,'17 Andy Avenue','Swanton','VT','05488'),(148,'154 Short Street','Highgate','VT','05459'),(149,'303 South Street','Multivast','TX','03784'),(15,'16 South Union Road','Halifax','MA','02338'),(150,'10 Main Street','Saint Albans','VT','05478'),(151,'13 Dogwood Drive','East Hampton','CT','06424'),(152,'2 Harlem Place','Atlanta','GA','25764'),(153,'1 Sesame Street','Cooperstown','NY','11550'),(154,'312 North James Road','Alabaster','CT','06453'),(155,'568 East Varsity Street','Albany','NY','13440'),(156,'10284 West Advantage Avenue','Northport','CA','05832'),(157,'745 Falcon Way Road','Portland','WA','68440'),(158,'496 Leftwing Circle','Cheshire','CT','06428'),(159,'17 Coll Lane','Nowhere','KY','03342'),(16,'8 North Genius Road','Plymouth','MA','02334'),(160,'20 Cherry Street','Providence','RI','02901'),(161,'47 Celtics Ave','Boston','MA','79631'),(162,'49 Hoyle Street','Norwood','MA','02062'),(17,'88 North Ovitt Road','Lisbon','NH','03101'),(18,'23 Pants Rd','Boston','MA','04424'),(19,'21 Year Old Drive','WhereDoomed','NJ','08888'),(2,'10 South Evan Road','Manchester','NH','03101'),(20,'666 Rocky Rd','DownUnder','HI','11100'),(21,'23 Whats My Age Again Rd','Johnson','VT','05439'),(22,'509 Woods Hollow Road','Westford','VT','05494'),(23,'12 Galaxy Faraway','Outerspace','NY','05403'),(24,'1 Middle Road','South Burlington','VT','21350'),(25,'1 Trump Plaza','New York','NY','11550'),(26,'19083 Park Place','Monopoly','AK','45650'),(27,'22 Fish Lane','Atlanta','GA','02345'),(28,'1964 Disney Road','Orlando','FL','68429'),(29,'60 Hall Road','East City','CT','21660'),(3,'25 North Avenue','Rome','NY','13440'),(30,'47 Known Ave','West Land','AK','93640'),(31,'12 Ride Road','Hemmingsburg','UK','00123'),(32,'1 Candy Lane','Sugar','WY','71943'),(33,'38 South Main Street','North Brookfield','MA','01535'),(34,'1 Pond Lane','Charlton','MA','04566'),(35,'146 East Northeast Avenue','Topeka','KS','89562'),(36,'987 Windy Drive','Santa Monica','CA','98960'),(37,'4592 Drive Way','Orlando','FL','78523'),(38,'182 Brook Hill Lane','Vernon Hills','IL','60061'),(39,'103 Southern Street','Winooski','VT','05404'),(4,'9875 East West Street','Providence','RI','02901'),(40,'102 Cushman Street','Waterbury','CT','06704'),(41,'120 Vista Street','San Antonio','TX','78213'),(42,'186 Devoe Avenue','Yonkers','NY','10705'),(43,'303 South Street','Multivast','TX','03784'),(44,'312 North James Road','Alabaster','CT','06453'),(45,'568 East Varsity Street','Albany','NY','13440'),(46,'10284 West Advantage Avenue','Northport','CA','05832'),(47,'745 Falcon Way Road','Portland','WA','68440'),(48,'3392 US Route 5','Westminster','VT','05158'),(49,'22 Cortland Place','Oxford','CT','06478'),(5,'23 Los Alomos Road','Bangor','ME','04401'),(50,'1 College Avenue','Factoryville','PA','18419'),(51,'1 Tesla Street','East Shoreham','NY','11786'),(52,'1531 Western Avenue','Seattle','WA','98101'),(53,'450 College Street','Burlington','VT','05401'),(54,'14 South Pole Dr','North Pole','ND','05404'),(55,'89 Dogwood Dr','Townshend','VT','05114'),(56,'69 Groovy Way','Funky Town','CA','44206'),(57,'65 South Union','Burlington','VT','05401'),(58,'25 South Road','Middletown','VA','15896'),(59,'156 Fall Drive','Freewell','WA','08964'),(6,'99 Brilliant Road','Montpelier','VT','05602'),(60,'258 Chanler Street','Arrow','NY','06874'),(61,'50 Rose Drive','Hartford','CT','06895'),(62,'7888 Fort Drive','Worthfield','VA','07854'),(63,'23 Pants Rd','Boston','MA','04424'),(64,'21 Year Old Drive','WhereDoomed','NJ','08888'),(65,'666 Rocky Rd','DownUnder','HI','11100'),(66,'1 Presidents Lane','Mount Vernon','VA','56897'),(67,'509 Woods Hollow Road','Westford','VT','05494'),(68,'1 Wayne Manor Road','Gotham City','NY','10118'),(69,'75 SpiderMan Lane','Anothercity','CT','78459'),(7,'14 Highpoint Avenue','Albany','NY','12335'),(70,'987 Super Man Street','Augusta','ME','04330'),(71,'1 Stark Towers','New York City','NY','10118'),(72,'6 Feet Under','Nowhere','NY','11550'),(73,'12 Clean Street','Madison','NY','12050'),(74,'9 Turcotte Street','Attleboro','MA','02703'),(75,'29 Beagle Club Road','Attleboro','MA','02703'),(76,'13 Greenfield Street','Attleboro','MA','02703'),(77,'2954 Pullen Ave','Fall River','MA','02720'),(78,'56 Llama Road','Bangor','ME','04401'),(79,'46 Somewhere St.','Bobsled','AZ','78956'),(8,'89-48 East 72nd Street','New York City','NY','10118'),(80,'7 Goneware Dr.','Acktid','MA','58792'),(81,'18 Zelwa Place','Yelon','TX','22356'),(82,'2 Beltham Boulevard','Taigrex','CA','33659'),(83,'37 Faylon Dr.','Einsworth','AK','11550'),(84,'38 South Main Street','North Brookfield','MA','01535'),(85,'1 Pond Lane','Charlton','MA','04566'),(86,'146 East Northeast Avenue','Topeka','KS','89562'),(87,'987 Windy Drive','Santa Monica','CA','98960'),(88,'4592 Drive Way','Orlando','FL','78523'),(89,'182 Brook Hill Lane','Vernon Hills','IL','60061'),(9,'100 Unknown Drive','Lesserknown','NH','03456'),(90,'103 Southern Street','Winooski','VT','05404'),(91,'102 Cushman Street','Waterbury','CT','06704'),(92,'120 Vista Street','San Antonio','TX','78213'),(93,'186 Devoe Avenue','Yonkers','NY','10705'),(94,'7 South Evan Road','Dover','NH','03820'),(95,'5 Linda Avenue','Portsmouth','NH','03801'),(96,'246 Soper Point Road','Old Forge','NY','13420'),(97,'32 Cranbrooke Drive','Rochester','NY','13620'),(99,'2938 River Rd.','Schennectady','NY','13264'),(138,'163 South Willard Street','Burlington','VT','05401'),(98,'1 Risky Business Avenue','Here','VT','05489');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `cid` int(11) NOT NULL,
  `contact_type` varchar(45) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Office Phone'),(2,'Company E-Mail Address');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(45) NOT NULL,
  `dept_desc` varchar(255) NOT NULL DEFAULT 'Add Description Here',
  PRIMARY KEY (`dept_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Sales','Add Description Here'),(2,'Accounting','Manages financial activity'),(3,'Operations','Add Description Here'),(4,'IT','Add Description Here'),(5,'Marketing','Add Description Here'),(6,'HR','Add Description Here'),(7,'Management','Add Description Here'),(8,'Facilities','Add Description Here'),(9,'Security','Add Description Here'),(10,'Customer Support','Add Description Here'),(11,'Inventory Control','Add Description Here'),(12,'Finance','Add Description Here'),(999,'Termination','Add Description Here');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emphistory`
--

DROP TABLE IF EXISTS `emphistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emphistory` (
  `eid` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `salary` int(7) NOT NULL,
  `comments` varchar(45) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`eid`,`pos_id`,`start_date`),
  KEY `fk_EmpHistory_Job1_idx` (`pos_id`),
  KEY `fk_EmpHistory_HistoryStatus1_idx` (`status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emphistory`
--

LOCK TABLES `emphistory` WRITE;
/*!40000 ALTER TABLE `emphistory` DISABLE KEYS */;
INSERT INTO `emphistory` VALUES (1,1,'2005-11-19',45000,'Not worth the trouble',999999),(2,1,'2003-07-26',45000,'Not worth the trouble',999999),(3,2,'2007-02-03',45000,'No idea',1),(4,2,'2004-04-30',45000,'No idea',1),(5,3,'2013-03-25',45000,'No idea',1),(6,3,'2008-07-26',45000,'No idea',1),(7,4,'2003-09-19',45000,'No idea',1),(8,4,'2002-04-24',45000,'No idea',1),(9,5,'2015-08-30',45000,'Not worth the trouble',999999),(10,5,'2015-11-27',45000,'Not worth the trouble',999999),(11,6,'2002-11-10',45000,'No idea',1),(12,6,'2015-02-11',45000,'No idea',1),(13,7,'2005-08-16',45000,'No idea',1),(14,11,'2004-05-16',45000,'No idea',1),(15,8,'2009-07-10',45000,'No idea',1),(16,4,'2007-11-02',45000,'No idea',1),(17,9,'2009-09-08',45000,'Not worth the trouble',999999),(18,7,'2017-08-14',43000,'No idea',1),(19,7,'2011-01-16',43000,'No idea',1),(20,8,'2016-08-03',43000,'No idea',1),(21,9,'2010-06-27',43000,'Not worth the trouble',999999),(22,10,'2012-12-08',43000,'No idea',1),(23,52,'2010-01-05',45000,'No idea',1),(24,48,'2002-08-01',45000,'No idea',1),(25,67,'2012-03-15',45000,'No idea',1),(26,62,'2014-01-09',45000,'No idea',1),(27,66,'2015-02-27',45000,'No idea',1),(28,49,'2002-10-29',30000,'Not worth the trouble',999999),(29,55,'2004-12-06',55000,'No idea',1),(30,39,'2007-11-23',80000,'No idea',1),(31,57,'2006-01-12',75000,'No idea',1),(32,24,'2002-07-15',110000,'No idea',1),(33,36,'2018-01-21',45000,'No idea',1),(34,50,'2016-10-12',27500,'No idea',1),(35,20,'2005-10-05',56000,'No idea',1),(36,45,'2015-02-28',42000,'Not worth the trouble',999999),(37,28,'2008-06-10',88000,'No idea',1),(38,7,'2007-10-09',32000,'No idea',1),(39,8,'2015-08-06',32000,'No idea',1),(40,9,'2004-08-02',32000,'Not worth the trouble',999999),(41,10,'2004-10-07',60000,'No idea',1),(42,11,'2015-11-14',43000,'No idea',1),(43,7,'2001-03-25',43000,'No idea',1),(44,7,'2010-12-09',43000,'No idea',1),(45,8,'2006-04-30',43000,'No idea',1),(46,9,'2015-02-06',43000,'Not worth the trouble',999999),(47,10,'2017-07-12',43000,'No idea',1),(48,10,'2011-03-04',45000,'No idea',1),(49,26,'2014-03-03',45000,'No idea',1),(50,28,'2002-10-03',45000,'No idea',1),(51,34,'2001-05-05',45000,'No idea',1),(52,18,'2003-10-29',45000,'No idea',1),(53,1,'2015-07-05',35000,'Not worth the trouble',999999),(54,5,'2002-08-02',40000,'Not worth the trouble',999999),(55,9,'2011-09-15',85000,'Not worth the trouble',999999),(56,10,'2014-05-22',90000,'No idea',1),(57,20,'2015-10-23',105000,'No idea',1),(58,1,'2017-08-18',45000,'Not worth the trouble',999999),(59,2,'2003-02-20',65000,'No idea',1),(60,3,'2005-01-19',35000,'No idea',1),(61,4,'2013-10-15',65000,'No idea',1),(62,5,'2009-03-11',35000,'Not worth the trouble',999999),(63,4,'2011-01-12',65000,'No idea',1),(64,11,'2002-07-23',55000,'No idea',1),(65,9,'2004-04-29',35000,'Not worth the trouble',999999),(66,2,'2010-10-12',70000,'No idea',1),(67,5,'2009-11-04',45000,'Not worth the trouble',999999),(68,12,'2011-10-17',90000,'No idea',1),(69,22,'2018-02-02',55000,'No idea',1),(70,48,'2003-04-17',55000,'No idea',1),(71,57,'2007-10-23',55000,'No idea',1),(72,6,'2011-01-30',35000,'No idea',1),(73,9,'2005-05-23',80000,'Not worth the trouble',999999),(74,24,'2008-05-25',72000,'No idea',1),(75,17,'2015-07-20',82143,'No idea',1),(76,51,'2006-09-13',20000,'No idea',1),(77,54,'2003-08-16',76000,'No idea',1),(78,5,'2010-10-14',65000,'Not worth the trouble',999999),(79,5,'2009-05-08',40000,'Not worth the trouble',999999),(80,6,'2010-08-20',66000,'No idea',1),(81,6,'2006-07-26',62000,'No idea',1),(82,6,'2018-04-25',61000,'No idea',1),(83,8,'2015-08-04',46000,'No idea',1),(84,2,'2001-11-09',32000,'No idea',1),(85,6,'2005-09-13',44000,'No idea',1),(86,10,'2009-12-15',45000,'No idea',1),(87,12,'2004-12-21',38000,'No idea',1),(88,9,'2004-10-11',68000,'Not worth the trouble',999999),(89,5,'2009-03-02',450000,'No idea',1),(90,4,'2006-03-29',490000,'No idea',1),(91,8,'2016-07-25',9999999,'No idea',1),(92,8,'2006-04-29',120000,'No idea',1),(93,7,'2012-08-21',42075,'No idea',1),(94,6,'2014-09-06',42100,'No idea',1),(95,5,'2014-11-26',42125,'Not worth the trouble',999999),(96,4,'2017-11-25',42150,'No idea',1),(97,3,'2017-04-13',42175,'No idea',1),(98,29,'2016-10-26',46500,'Not worth the trouble',999999),(99,49,'2016-01-06',22000,'Not worth the trouble',999999),(100,42,'2005-07-29',37000,'No idea',1),(101,21,'2005-04-21',51000,'No idea',1),(102,9,'2014-04-24',77000,'Not worth the trouble',999999),(103,16,'2010-09-27',115000,'No idea',1),(104,17,'2012-03-09',80000,'No idea',1),(105,18,'2007-12-28',83000,'No idea',1),(106,19,'2006-11-26',100000,'No idea',1),(107,20,'2017-09-17',110000,'No idea',1),(108,29,'2014-11-16',50000,'Not worth the trouble',999999),(109,41,'2012-03-23',35000,'Not worth the trouble',999999),(110,44,'2008-08-17',65000,'No idea',1),(111,30,'2015-11-15',55000,'No idea',1),(112,51,'2015-05-01',45000,'No idea',1),(113,1,'2007-05-06',50000,'Not worth the trouble',999999),(114,2,'2013-08-08',60000,'No idea',1),(115,3,'2002-10-09',100000,'No idea',1),(116,4,'2009-03-20',55000,'No idea',1),(117,5,'2009-09-25',75000,'Not worth the trouble',999999),(118,31,'2018-01-02',58000,'No idea',1),(119,20,'2007-04-23',120000,'No idea',1),(120,44,'2006-05-03',47000,'No idea',1),(121,22,'2007-05-18',63500,'No idea',1),(122,64,'2015-06-25',74000,'No idea',1),(123,26,'2015-01-25',82000,'No idea',1),(124,20,'2004-02-23',120000,'No idea',1),(125,60,'2017-12-11',64000,'No idea',1),(126,8,'2007-05-29',60000,'No idea',1),(127,49,'2016-08-07',20000,'Not worth the trouble',999999),(128,52,'2013-07-24',45000,'No idea',1),(129,61,'2008-02-29',35000,'No idea',1),(130,62,'2001-05-02',25000,'No idea',1),(131,54,'2011-07-03',41500,'No idea',1),(132,57,'2004-02-28',49000,'No idea',1),(133,52,'2012-07-01',29000,'No idea',1),(134,29,'2011-11-06',40500,'Not worth the trouble',999999),(135,36,'2016-04-09',48000,'No idea',1),(136,47,'2003-10-25',56000,'No idea',1),(137,34,'2014-05-11',31000,'No idea',1),(138,68,'2005-05-19',99999,'No idea',1),(139,44,'2018-01-13',99999,'No idea',1),(140,20,'2016-07-24',2,'No idea',1),(141,52,'2015-05-01',99999,'No idea',1),(142,63,'2007-02-23',16,'No idea',1),(143,5,'2005-11-24',45000,'Not worth the trouble',999999),(144,5,'2009-10-05',45000,'Not worth the trouble',999999),(145,6,'2015-06-15',45000,'No idea',1),(146,3,'2010-04-03',45000,'No idea',1),(147,2,'2011-09-20',45000,'No idea',1),(148,19,'2005-09-26',45000,'No idea',1),(149,44,'2007-11-17',45000,'No idea',1),(150,62,'2008-10-06',45000,'No idea',1),(151,29,'2006-06-03',45000,'Not worth the trouble',999999),(152,26,'2017-03-28',45000,'No idea',1),(153,12,'2014-07-17',30000,'No idea',1),(154,5,'2007-12-30',75000,'Not worth the trouble',999999),(155,7,'2014-08-18',99999,'No idea',1),(156,31,'2006-02-11',15000,'No idea',1),(157,10,'2002-02-10',45000,'No idea',1),(158,1,'2012-08-24',45000,'Not worth the trouble',999999),(159,2,'2014-12-25',45000,'No idea',1),(160,3,'2007-01-26',45000,'No idea',1),(161,4,'2015-10-16',45000,'No idea',1),(162,5,'2007-01-05',45000,'Not worth the trouble',999999);
/*!40000 ALTER TABLE `emphistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emplogin`
--

DROP TABLE IF EXISTS `emplogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emplogin` (
  `eid` int(11) NOT NULL,
  `euser` varchar(255) NOT NULL,
  `epswd` varchar(255) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emplogin`
--

LOCK TABLES `emplogin` WRITE;
/*!40000 ALTER TABLE `emplogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `emplogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `efn` varchar(45) NOT NULL,
  `eln` varchar(45) NOT NULL,
  `eaid` int(11) NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `fk_Employee_Address_idx` (`eaid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Bruce','Jones',1),(10,'Jane','Same',10),(100,'Emily','Bethune',100),(102,'Daisy','Flower',102),(105,'Fakey','McPhoney',105),(106,'John','Mongler',106),(107,'Dude','McBro',107),(108,'Nully','Value',108),(109,'John','Smith',109),(11,'Tom','Smythe',11),(110,'Frank','Smith',110),(111,'Rob','Bob',111),(112,'Sponge','Robert',112),(113,'Tito','Summers',113),(114,'Bo','Messier',114),(115,'Bob','Cross',115),(116,'Will','Samuel',116),(117,'John','Evans',117),(118,'Michelle','Michaels',118),(119,'Juan','Sucro',119),(12,'Kate','Abbott',12),(120,'Jonathan','Lobe',120),(121,'Jimmy','Jam',121),(122,'Onetwo','Twoone',122),(123,'Abe','Lincoln',123),(124,'Mega','Man',124),(128,'My','Wonder',128),(129,'Pass','Go',129),(13,'Bethune','Emily',13),(130,'Peter','Peterson',130),(131,'Jamie','Jamieson',131),(132,'Jordan','Berkowitz',132),(133,'John','Brown',133),(134,'Jessica','Jacket',134),(14,'Joanne','Ovitt',14),(142,'Wonder','Woman',142),(143,'Clark','Kent',143),(144,'Peter','Parker',144),(145,'Mister','Freeze',145),(146,'Barry','White',146),(147,'Jeff','Seid',147),(148,'Mark','Wahlberg',148),(15,'Flower','Daisy',15),(150,'Aziz','Shavershain',150),(151,'Henry','Quinn',151),(152,'Rick','Grimes',152),(153,'Big','Bird',153),(158,'Steve','Bates',158),(159,'Wallace','Penguin',159),(16,'Dumb','Dumber',16),(160,'Jack','Daniels',160),(161,'Anthony','Larosa',161),(162,'Hubert','Bowtie',162),(17,'Samantha','Ovitt',17),(2,'Wendy','Smith',2),(20,'Foster','Dude',20),(21,'Lily','Snyder',21),(23,'Luke','Skywalker',23),(24,'Road','Kill',24),(25,'Derek','Jeter',25),(26,'Already','Gone',26),(27,'Steve','Scuba',27),(28,'Mickey','Mouse',28),(29,'Chris','Jones',29),(3,'William','Penn',3),(30,'Mac','LeMore',30),(31,'Dag','Nabbit',31),(32,'William','Wonka',32),(34,'Samatha','Claws',34),(35,'Johnny','Roberts',35),(4,'Joan','Arc',4),(43,'James','Boiben',43),(44,'Sally','Jane',44),(45,'Amanda','Fintz',45),(46,'Marc','Bartalone',46),(47,'Brian','Parker',47),(48,'Garth','Fitzgerald',48),(49,'Barbara','Martin',49),(5,'Albert','Einstein',5),(50,'Homer','Reynolds',50),(51,'Nikola','Tesla',51),(52,'Sebastian','Alias',52),(53,'Jake','Johnson',53),(54,'Santa','Clause',54),(55,'Bruce','Jones',55),(56,'Guy','Getdown',56),(57,'Sung','Fugong',57),(58,'John','Brown',58),(59,'Peter','White',59),(6,'Marie','Currie',6),(60,'Josh','Green',60),(61,'Joan','Jacobs',61),(62,'Jennifer','Atrast',62),(63,'Taylor','Bigam',63),(64,'Dudlee','Dudders',64),(65,'Foster','Dood',65),(66,'Washington','George',66),(67,'Kat','Killinger',67),(68,'Bruce','Wayne',68),(69,'Peter','Parker',69),(7,'Margaret','Thatcher',7),(70,'Clark','Kent',70),(71,'Tony','Stark',71),(72,'Agent','Coulson',72),(73,'Oscar','Madison',73),(74,'Brianne','DeVincent',74),(75,'Richard','Teabeau',75),(76,'William','Reynolds',76),(77,'Kennedy','Tran',77),(78,'Alma','Conway',78),(79,'James','Hujjiba',79),(8,'John D.','Manchester',8),(80,'Kile','Aggot',80),(81,'Heirich','Wagner',81),(82,'Zen','Antonitii',82),(83,'Tiala','Sumardar',83),(84,'David','Jones',84),(85,'Santa','Claws',85),(86,'Johnny','Rocket',86),(87,'Rachael','Hunter',87),(88,'Easter','Bunny',88),(89,'Timothy','Smith',89),(9,'John','Doe',9),(90,'Franklin','Arts',90),(91,'Anna','Caisse',91),(92,'Eric','Olivares',92),(93,'Thomas','Sampson',93),(94,'Jason','John',94),(95,'Tom','Jane',95),(96,'Billy','Vale',96),(97,'Joey','Laskowski',97),(99,'Luke','Colletti',99),(138,'Frank','Canovatchel',138),(98,'Your','Name',98);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeecontact`
--

DROP TABLE IF EXISTS `employeecontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeecontact` (
  `eid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `contact` varchar(255) NOT NULL,
  PRIMARY KEY (`eid`,`cid`),
  KEY `fk_EmployeeContact_Contact1_idx` (`cid`),
  KEY `fk_EmployeeContact_Employee1_idx` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeecontact`
--

LOCK TABLES `employeecontact` WRITE;
/*!40000 ALTER TABLE `employeecontact` DISABLE KEYS */;
INSERT INTO `employeecontact` VALUES (1,2,'BruceJones01@neb.com'),(2,2,'WendySmith@neb.com'),(3,2,'WilliamPenn@neb.com'),(4,2,'JoanArc@neb.com'),(5,2,'AlbertEinstein@neb.com'),(6,2,'MarieCurrie@neb.com'),(7,2,'MargaretThatcher@neb.com'),(8,2,'John D.Manchester@neb.com'),(9,2,'JohnDoe@neb.com'),(10,2,'JaneSame@neb.com'),(11,2,'TomSmythe@neb.com'),(12,2,'KateAbbott@neb.com'),(13,2,'BethuneEmily@neb.com'),(14,2,'JoanneOvitt@neb.com'),(15,2,'FlowerDaisy@neb.com'),(16,2,'DumbDumber@neb.com'),(17,2,'SamanthaOvitt@neb.com'),(18,2,'TaylorBigam@neb.com'),(19,2,'DudleeDudders@neb.com'),(20,2,'FosterDood@neb.com'),(21,2,'LilySnyder@neb.com'),(22,2,'KatKillinger@neb.com'),(23,2,'LukeSkywalker@neb.com'),(24,2,'RoadKill@neb.com'),(25,2,'DerekJeter@neb.com'),(26,2,'PassGo@neb.com'),(27,2,'SteveScuba@neb.com'),(28,2,'MickeyMouse@neb.com'),(29,2,'ChrisJones@neb.com'),(30,2,'MacLeMore@neb.com'),(31,2,'DagNabbit@neb.com'),(32,2,'WilliamWonka@neb.com'),(33,2,'DavidJones@neb.com'),(34,2,'SantaClaws@neb.com'),(35,2,'JohnnyRocket@neb.com'),(36,2,'RachaelHunter@neb.com'),(37,2,'EasterBunny@neb.com'),(38,2,'TimothySmith@neb.com'),(39,2,'FranklinArts@neb.com'),(40,2,'AnnaCaisse@neb.com'),(41,2,'EricOlivares@neb.com'),(42,2,'ThomasSampson@neb.com'),(43,2,'JamesBoiben@neb.com'),(44,2,'SallyJane@neb.com'),(45,2,'AmandaFintz@neb.com'),(46,2,'MarcBartalone@neb.com'),(47,2,'BrianParker@neb.com'),(48,2,'GarthFitzgerald@neb.com'),(49,2,'BarbaraMartin@neb.com'),(50,2,'HomerReynolds@neb.com'),(51,2,'NikolaTesla@neb.com'),(52,2,'SebastianAlias@neb.com'),(53,2,'JakeJohnson@neb.com'),(54,2,'SantaClause@neb.com'),(55,2,'BruceJones@neb.com'),(56,2,'GuyGetdown@neb.com'),(57,2,'SungFugong@neb.com'),(58,2,'JohnBrown01@neb.com'),(59,2,'PeterWhite@neb.com'),(60,2,'JoshGreen@neb.com'),(61,2,'JoanJacobs@neb.com'),(62,2,'JenniferAtrast@neb.com'),(63,2,'TaylorBigam@neb.com'),(64,2,'DudleeDudders@neb.com'),(65,2,'FosterDood@neb.com'),(66,2,'GeorgeWashington@neb.com'),(67,2,'KatKillinger@neb.com'),(68,2,'BruceWayne@neb.com'),(69,2,'PeterParker01@neb.com'),(70,2,'ClarkKent01@neb.com'),(71,2,'TonyStark@neb.com'),(72,2,'AgentCoulson@neb.com'),(73,2,'OscarMadison@neb.com'),(74,2,'BrianneDeVincent@neb.com'),(75,2,'RichardTeabeau@neb.com'),(76,2,'WilliamReynolds@neb.com'),(77,2,'KennedyTran@neb.com'),(78,2,'AlmaConway@neb.com'),(79,2,'JamesHujjiba@neb.com'),(80,2,'KileAggot@neb.com'),(81,2,'HeirichWanger@neb.com'),(82,2,'ZenAntonitii@neb.com'),(83,2,'TialaSumardar@neb.com'),(84,2,'DavidJones@neb.com'),(85,2,'SantaClaws@neb.com'),(86,2,'JohnnyRocket@neb.com'),(87,2,'RachaelHunter@neb.com'),(88,2,'EasterBunny@neb.com'),(89,2,'TimothySmith@neb.com'),(90,2,'FranklinArts@neb.com'),(91,2,'AnnaCaisse@neb.com'),(92,2,'EricOlivares@neb.com'),(93,2,'ThomasSampson@neb.com'),(94,2,'JasonJohn@neb.com'),(95,2,'TomJane@neb.com'),(96,2,'BillyVale@neb.com'),(97,2,'JoeyLaskowski@neb.com'),(98,2,'YourName@neb.com'),(99,2,'LukeColletti@neb.com'),(100,2,'EmilyBethune@neb.com'),(101,2,'JoanneOvitt@neb.com'),(102,2,'DaisyFlower@neb.com'),(103,2,'DumbDumber@neb.com'),(104,2,'SamanthaOvitt@neb.com'),(105,2,'FakeyMcPhoney@neb.com'),(106,2,'JohnMongler@neb.com'),(107,2,'DudeMcBro@neb.com'),(108,2,'NullyValue@neb.com'),(109,2,'JohnSmith@neb.com'),(110,2,'FrankTank@neb.com'),(111,2,'RobBob@neb.com'),(112,2,'SpongeBob@neb.com'),(113,2,'TitoSummers@neb.com'),(114,2,'BoMessier@neb.com'),(115,2,'BobCross@neb.com'),(116,2,'WillSamuel@neb.com'),(117,2,'JohnEvans@neb.com'),(118,2,'MichelleMichael@neb.com'),(119,2,'JuanSucro@neb.com'),(120,2,'JonathanLobe@neb.com'),(121,2,'JimmyJam@neb.com'),(122,2,'OnetwoTwoone@neb.com'),(123,2,'AbeLincoln@neb.com'),(124,2,'MegaMan@neb.com'),(125,2,'LukeSkywalker@neb.com'),(126,2,'RoadKill@neb.com'),(127,2,'DerekJeter@neb.com'),(128,2,'MyWonder@neb.com'),(129,2,'PassGo@neb.com'),(130,2,'PeterPeterson@neb.com'),(131,2,'JamieJamieson@neb.com'),(132,2,'JordanBerkowitz@neb.com'),(133,2,'JohnBrown02@neb.com'),(134,2,'JessicaJacket@neb.com'),(135,2,'JakeJohnson@neb.com'),(136,2,'SantaClause@neb.com'),(137,2,'BruceJones@neb.com'),(138,2,'FrankCanovatchel@neb.com'),(139,2,'GuyGetdown@neb.com'),(140,2,'SungFugong@neb.com'),(141,2,'BruceWayne@neb.com'),(142,2,'WonderWoman@neb.com'),(143,2,'ClarkKent02@neb.com'),(144,2,'PeterParker02@neb.com'),(145,2,'MisterFreeze@neb.com'),(146,2,'BarryWhite@neb.com'),(147,2,'JeffSeid@neb.com'),(148,2,'MarkWahlberg@neb.com'),(149,2,'JamesBoiben@neb.com'),(150,2,'AzizShavershain@neb.com'),(151,2,'HenryQuinn@neb.com'),(152,2,'RickGrimes@neb.com'),(153,2,'BigBird@neb.com'),(154,2,'SallyJane@neb.com'),(155,2,'AmandaFintz@neb.com'),(156,2,'MarcBartalone@neb.com'),(157,2,'BrianParker@neb.com'),(158,2,'SteveBates@neb.com'),(159,2,'WallacePenguin@neb.com'),(160,2,'JackDaniels@neb.com'),(161,2,'AnthonyLarosa@neb.com'),(162,2,'HubertBowtie@neb.com'),(1,1,'802-365-8678'),(2,1,'802-365-3449'),(3,1,'802-365-8546'),(4,1,'802-365-4054'),(5,1,'802-365-7644'),(6,1,'802-365-9520'),(7,1,'802-365-7883'),(8,1,'802-365-5899'),(9,1,'802-365-3755'),(10,1,'802-365-8303'),(11,1,'802-365-2080'),(12,1,'802-365-3156'),(13,1,'802-365-5586'),(14,1,'802-365-6566'),(15,1,'802-365-7363'),(16,1,'802-365-9062'),(17,1,'802-365-7390'),(18,1,'802-365-1768'),(19,1,'802-365-7205'),(20,1,'802-365-4607'),(21,1,'802-365-6143'),(22,1,'802-365-1431'),(23,1,'802-365-5243'),(24,1,'802-365-4826'),(25,1,'802-365-7485'),(26,1,'802-365-1372'),(27,1,'802-365-3578'),(28,1,'802-365-7496'),(29,1,'802-365-3620'),(30,1,'802-365-4212'),(31,1,'802-365-9717'),(32,1,'802-365-7829'),(33,1,'802-365-2064'),(34,1,'802-365-4265'),(35,1,'802-365-2750'),(36,1,'802-365-2321'),(37,1,'802-365-2496'),(38,1,'802-365-9095'),(39,1,'802-365-1398'),(40,1,'802-365-1733'),(41,1,'802-365-6453'),(42,1,'802-365-1432'),(43,1,'802-365-5096'),(44,1,'802-365-5383'),(45,1,'802-365-7594'),(46,1,'802-365-2530'),(47,1,'802-365-1464'),(48,1,'802-365-5725'),(49,1,'802-365-7377'),(50,1,'802-365-3872'),(51,1,'802-365-1671'),(52,1,'802-365-6660'),(53,1,'802-365-7963'),(54,1,'802-365-7584'),(55,1,'802-365-8759'),(56,1,'802-365-3208'),(57,1,'802-365-7620'),(58,1,'802-365-6369'),(59,1,'802-365-2592'),(60,1,'802-365-1449'),(61,1,'802-365-3168'),(62,1,'802-365-6775'),(63,1,'802-365-4478'),(64,1,'802-365-2915'),(65,1,'802-365-5111'),(66,1,'802-365-2989'),(67,1,'802-365-7928'),(68,1,'802-365-2405'),(69,1,'802-365-5204'),(70,1,'802-365-3421'),(71,1,'802-365-1401'),(72,1,'802-365-4286'),(73,1,'802-365-4409'),(74,1,'802-365-2079'),(75,1,'802-365-2361'),(76,1,'802-365-2790'),(77,1,'802-365-8194'),(78,1,'802-365-7372'),(79,1,'802-365-2976'),(80,1,'802-365-6329'),(81,1,'802-365-5971'),(82,1,'802-365-9375'),(83,1,'802-365-4508'),(84,1,'802-365-4613'),(85,1,'802-365-4705'),(86,1,'802-365-4478'),(87,1,'802-365-9859'),(88,1,'802-365-3574'),(89,1,'802-365-7603'),(90,1,'802-365-7657'),(91,1,'802-365-5226'),(92,1,'802-365-9988'),(93,1,'802-365-4782'),(94,1,'802-365-8164'),(95,1,'802-365-4450'),(96,1,'802-365-6888'),(97,1,'802-365-9203'),(98,1,'802-365-4425'),(99,1,'802-365-2339'),(100,1,'802-365-8093'),(101,1,'802-365-3066'),(102,1,'802-365-5707'),(103,1,'802-365-5386'),(104,1,'802-365-8055'),(105,1,'802-365-3492'),(106,1,'802-365-8086'),(107,1,'802-365-9894'),(108,1,'802-365-4639'),(109,1,'802-365-4917'),(110,1,'802-365-1248'),(111,1,'802-365-3966'),(112,1,'802-365-8939'),(113,1,'802-365-3002'),(114,1,'802-365-8850'),(115,1,'802-365-5141'),(116,1,'802-365-6484'),(117,1,'802-365-6740'),(118,1,'802-365-5069'),(119,1,'802-365-1553'),(120,1,'802-365-8585'),(121,1,'802-365-6272'),(122,1,'802-365-6233'),(123,1,'802-365-9969'),(124,1,'802-365-9848'),(125,1,'802-365-2733'),(126,1,'802-365-2548'),(127,1,'802-365-1785'),(128,1,'802-365-5183'),(129,1,'802-365-1941'),(130,1,'802-365-3631'),(131,1,'802-365-3993'),(132,1,'802-365-8569'),(133,1,'802-365-3021'),(134,1,'802-365-9545'),(135,1,'802-365-8074'),(136,1,'802-365-1710'),(137,1,'802-365-8040'),(138,1,'802-365-9914'),(139,1,'802-365-2304'),(140,1,'802-365-5498'),(141,1,'802-365-2304'),(142,1,'802-365-8308'),(143,1,'802-365-8741'),(144,1,'802-365-5344'),(145,1,'802-365-6692'),(146,1,'802-365-8339'),(147,1,'802-365-7334'),(148,1,'802-365-6946'),(149,1,'802-365-8964'),(150,1,'802-365-9756'),(151,1,'802-365-6213'),(152,1,'802-365-9713'),(153,1,'802-365-7993'),(154,1,'802-365-9874'),(155,1,'802-365-9268'),(156,1,'802-365-4735'),(157,1,'802-365-1577'),(158,1,'802-365-7989'),(159,1,'802-365-8109'),(160,1,'802-365-3074'),(161,1,'802-365-4051'),(162,1,'802-365-7455');
/*!40000 ALTER TABLE `employeecontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historystatus`
--

DROP TABLE IF EXISTS `historystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historystatus` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historystatus`
--

LOCK TABLES `historystatus` WRITE;
/*!40000 ALTER TABLE `historystatus` DISABLE KEYS */;
INSERT INTO `historystatus` VALUES (1,'Unknown'),(111111,'Promotion'),(222222,'New Hire'),(333333,'Position Terminated'),(444444,'Changed Dept.'),(555555,'Retired'),(666666,'Demoted'),(777777,'Left Company'),(888888,'Annual Raise'),(999999,'Employee Terminated');
/*!40000 ALTER TABLE `historystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `pos_id` int(11) NOT NULL,
  `pos_name` varchar(45) NOT NULL,
  `dept_id` int(11) NOT NULL,
  PRIMARY KEY (`pos_id`),
  KEY `fk_Job_Department1_idx` (`dept_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'Accountant I',2),(2,'Accountant II',2),(3,'Accountant III',2),(4,'Senior Accountant',2),(5,'Sales Rep I',1),(6,'Sales Rep II',1),(7,'Sales Rep III',1),(8,'Senior Sales Rep III',1),(9,'DB Developer I',4),(10,'DB Developer II',4),(11,'DB Developer III',4),(12,'Senior DB Developer',4),(13,'DB Administrator I',4),(14,'DB Administrator II',4),(15,'DB Administrator III',4),(16,'Senior DB Administrator',4),(17,'Network Analyst I',4),(18,'Network Analyst II',4),(19,'Network Analyst III',4),(20,'Senior Network Analyst',4),(21,'Operations Analyst I',3),(22,'Operations Analyst II',3),(23,'Operations Analyst III',3),(24,'Senior Operations Analyst',3),(25,'Marketing Analyst I',5),(26,'Marketing Analyst II',5),(27,'Marketing Analyst III',5),(28,'Senior Marketing Analyst',5),(29,'HR Rep I',6),(30,'HR Rep II',6),(31,'HR Rep III',6),(32,'Senior HR Rep',6),(33,'Facilities Rep I',8),(34,'Facilities Rep II',8),(35,'Facilities Rep III',8),(36,'Senior Facilities Rep',8),(37,'Master Mechanic I',8),(38,'Master Mechanic II',8),(39,'Master Mechanic III',8),(40,'Senior Master Mechanic',8),(41,'Security Officer I',9),(42,'Security Officer II',9),(43,'Security Officer III',9),(44,'Senior Security Officer',9),(45,'Customer Service Agent I',10),(46,'Customer Service Agent II',10),(47,'Customer Service Agent III',10),(48,'Lead Customer Service Agent',10),(49,'Inventory Control Agent I',11),(50,'Inventory Control Agent II',11),(51,'Inventory Control Agent III',11),(52,'Senior Inventory Control Agent',11),(53,'Financial Analyst I',12),(54,'Financial Analyst II',12),(55,'Financial Analyst III',12),(56,'Senior Financial Analyst',12),(57,'Manager of Operations',7),(58,'Manager of Finance',7),(59,'Manager of Accounting',7),(60,'Manager of Facilities',7),(61,'Manager of Sales',7),(62,'Manager of Marketing',7),(63,'Manager of Customer Support',7),(64,'Manager of IT',7),(65,'Manager of HR',7),(66,'Manager of Security',7),(67,'Manager of Inventory',7),(68,'President',7);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsalary`
--

DROP TABLE IF EXISTS `jobsalary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsalary` (
  `pos_id` int(11) NOT NULL,
  `sal_id` int(11) NOT NULL,
  `sal_range` int(7) NOT NULL,
  PRIMARY KEY (`pos_id`,`sal_id`),
  KEY `fk_JobSalaryType_SalaryType1_idx` (`sal_id`),
  KEY `fk_JobSalaryType_Job1_idx` (`pos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsalary`
--

LOCK TABLES `jobsalary` WRITE;
/*!40000 ALTER TABLE `jobsalary` DISABLE KEYS */;
INSERT INTO `jobsalary` VALUES (1,1,30000),(1,2,40000),(2,1,35000),(2,2,45000),(3,1,45000),(3,2,55000),(4,1,55000),(4,2,65000),(5,1,30000),(5,2,40000),(6,1,35000),(6,2,45000),(7,1,45000),(7,2,55000),(8,1,55000),(8,2,65000),(9,1,75000),(9,2,85000),(10,1,80000),(10,2,90000),(11,1,85000),(11,2,95000),(12,1,90000),(12,2,100000),(13,1,85000),(13,2,95000),(14,1,90000),(14,2,100000),(15,1,95000),(15,2,105000),(16,1,110000),(16,2,120000),(17,1,75000),(17,2,85000),(18,1,80000),(18,2,90000),(19,1,95000),(19,2,105000),(20,1,100000),(20,2,120000),(21,1,50000),(21,2,60000),(22,1,55000),(22,2,65000),(23,1,60000),(23,2,70000),(24,1,65000),(24,2,75000),(25,1,70000),(25,2,80000),(26,1,75000),(26,2,85000),(27,1,80000),(27,2,90000),(28,1,85000),(28,2,95000),(29,1,40000),(29,2,50000),(30,1,45000),(30,2,55000),(31,1,50000),(31,2,60000),(32,1,55000),(32,2,65000),(33,1,25000),(33,2,35000),(34,1,30000),(34,2,40000),(35,1,35000),(35,2,45000),(36,1,40000),(36,2,50000),(37,1,40000),(37,2,50000),(38,1,45000),(38,2,55000),(39,1,50000),(39,2,60000),(40,1,55000),(40,2,65000),(41,1,25000),(41,2,35000),(42,1,30000),(42,2,40000),(43,1,35000),(43,2,45000),(44,1,40000),(44,2,50000),(45,1,40000),(45,2,50000),(46,1,45000),(46,2,55000),(47,1,50000),(47,2,60000),(48,1,55000),(48,2,65000),(49,1,20000),(49,2,30000),(50,1,20000),(50,2,30000),(51,1,20000),(51,2,30000),(52,1,20000),(52,2,30000),(53,1,64000),(53,2,74000),(54,1,75000),(54,2,85000),(55,1,85000),(55,2,95000),(56,1,95000),(56,2,105000),(57,1,64000),(57,2,74000),(58,1,64000),(58,2,74000),(59,1,64000),(59,2,74000),(60,1,64000),(60,2,74000),(61,1,64000),(61,2,74000),(62,1,64000),(62,2,74000),(63,1,64000),(63,2,74000),(64,1,64000),(64,2,74000),(65,1,64000),(65,2,74000),(66,1,64000),(66,2,74000),(67,1,64000),(67,2,74000),(68,1,500000),(68,2,600000);
/*!40000 ALTER TABLE `jobsalary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realdups`
--

DROP TABLE IF EXISTS `realdups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realdups` (
  `eid` int(11) NOT NULL,
  `efn` varchar(255) NOT NULL,
  `eln` varchar(255) NOT NULL,
  `estreet` varchar(255) NOT NULL,
  `ecity` varchar(255) NOT NULL,
  `est` varchar(255) NOT NULL,
  `ezip` varchar(255) NOT NULL,
  `eaid` int(11) NOT NULL,
  `contact` varchar(255) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realdups`
--

LOCK TABLES `realdups` WRITE;
/*!40000 ALTER TABLE `realdups` DISABLE KEYS */;
INSERT INTO `realdups` VALUES (18,'Taylor','Bigam','23 Pants Rd','Boston','MA','04424',18,'TaylorBigam@neb.com'),(19,'Dudlee','Dudders','21 Year Old Drive','WhereDoomed','NJ','08888',19,'DudleeDudders@neb.com'),(22,'Kat','Killinger','509 Woods Hollow Road','Westford','VT','05494',22,'KatKillinger@neb.com'),(33,'David','Jones','38 South Main Street','North Brookfield','MA','01535',33,'DavidJones@neb.com'),(36,'Rachael','Hunter','987 Windy Drive','Santa Monica','CA','98960',36,'RachaelHunter@neb.com'),(37,'Easter','Bunny','4592 Drive Way','Orlando','FL','78523',37,'EasterBunny@neb.com'),(38,'Timothy','Smith','182 Brook Hill Lane','Vernon Hills','IL','60061',38,'TimothySmith@neb.com'),(39,'Franklin','Arts','103 Southern Street','Winooski','VT','05404',39,'FranklinArts@neb.com'),(40,'Anna','Caisse','102 Cushman Street','Waterbury','CT','06704',40,'AnnaCaisse@neb.com'),(41,'Eric','Olivares','120 Vista Street','San Antonio','TX','78213',41,'EricOlivares@neb.com'),(42,'Thomas','Sampson','186 Devoe Avenue','Yonkers','NY','10705',42,'ThomasSampson@neb.com'),(101,'Joanne','Ovitt','23 South Winner Road','Enosburg Falls','VT','05450',101,'JoanneOvitt@neb.com'),(103,'Dumb','Dumber','8 North Genius Road','Plymouth','MA','02334',103,'DumbDumber@neb.com'),(104,'Samantha','Ovitt','88 North Ovitt Road','Lisbon','NH','03101',104,'SamanthaOvitt@neb.com'),(125,'Luke','Skywalker','12 Galaxy Faraway','Outerspace','NY','05403',125,'LukeSkywalker@neb.com'),(126,'Road','Kill','1 Middle Road','South Burlington','VT','21350',126,'RoadKill@neb.com'),(127,'Derek','Jeter','1 Trump Plaza','New York','NY','11550',127,'DerekJeter@neb.com'),(135,'Jake','Johnson','450 College Street','Burlington','VT','05401',135,'JakeJohnson@neb.com'),(136,'Santa','Clause','14 South Pole Dr','North Pole','ND','05404',136,'SantaClause@neb.com'),(137,'Bruce','Jones','89 Dogwood Dr','Townshend','VT','05114',137,'BruceJones@neb.com'),(139,'Guy','Getdown','69 Groovy Way','Funky Town','CA','44206',139,'GuyGetdown@neb.com'),(140,'Sung','Fugong','65 South Union','Burlington','VT','05401',140,'SungFugong@neb.com'),(141,'Bruce','Wayne','1 Wayne Manor Road','Gotham City','NY','10118',141,'BruceWayne@neb.com'),(149,'James','Boiben','303 South Street','Multivast','TX','03784',149,'JamesBoiben@neb.com'),(154,'Sally','Jane','312 North James Road','Alabaster','CT','06453',154,'SallyJane@neb.com'),(155,'Amanda','Fintz','568 East Varsity Street','Albany','NY','13440',155,'AmandaFintz@neb.com'),(156,'Marc','Bartalone','10284 West Advantage Avenue','Northport','CA','05832',156,'MarcBartalone@neb.com'),(157,'Brian','Parker','745 Falcon Way Road','Portland','WA','68440',157,'BrianParker@neb.com');
/*!40000 ALTER TABLE `realdups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarytype`
--

DROP TABLE IF EXISTS `salarytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salarytype` (
  `sal_id` int(11) NOT NULL,
  `sal_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`sal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarytype`
--

LOCK TABLES `salarytype` WRITE;
/*!40000 ALTER TABLE `salarytype` DISABLE KEYS */;
INSERT INTO `salarytype` VALUES (1,'Low Range'),(2,'High Range');
/*!40000 ALTER TABLE `salarytype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-27 11:12:37
