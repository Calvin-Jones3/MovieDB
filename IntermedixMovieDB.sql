-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: intermedixmoviebackenddb
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) NOT NULL,
  `Length` int(11) NOT NULL,
  `Rating` varchar(5) NOT NULL,
  `Genre` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Title_UNIQUE` (`Title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Toy Story',90,'G','Childrens'),(2,'Lord of the Rings',180,'PG-13','Fantasy'),(3,'Jaws',123,'PG','Thriller'),(4,'Captain America: Civil War',148,'PG-13','Action'),(5,'Bad Santa',91,'R','Comedy');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showtimes`
--

DROP TABLE IF EXISTS `showtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showtimes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ShowDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `MovieID` int(11) NOT NULL,
  `TheaterID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `TheaterID_idx` (`TheaterID`),
  KEY `MovieID_idx` (`MovieID`),
  CONSTRAINT `MovieID` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TheaterID` FOREIGN KEY (`TheaterID`) REFERENCES `theaters` (`ScreenNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showtimes`
--

LOCK TABLES `showtimes` WRITE;
/*!40000 ALTER TABLE `showtimes` DISABLE KEYS */;
INSERT INTO `showtimes` VALUES (61,'2018-01-26','10:00:00',1,1),(62,'2018-01-26','12:00:00',2,1),(63,'2018-01-26','15:00:00',3,1),(64,'2018-01-26','17:00:00',4,1),(65,'2018-01-26','20:00:00',5,1),(66,'2018-01-26','12:30:00',1,2),(67,'2018-01-26','09:30:00',2,2),(68,'2018-01-26','14:30:00',3,2),(69,'2018-01-26','16:30:00',4,2),(70,'2018-01-26','19:30:00',5,2),(71,'2018-01-26','10:00:00',5,3),(72,'2018-01-26','12:00:00',3,3),(73,'2018-01-26','15:00:00',4,3),(74,'2018-01-26','17:00:00',2,3),(75,'2018-01-26','20:00:00',1,3),(76,'2018-01-26','12:30:00',5,4),(77,'2018-01-26','09:30:00',3,4),(78,'2018-01-26','14:30:00',4,4),(79,'2018-01-26','16:30:00',2,4),(80,'2018-01-26','19:30:00',1,4),(81,'2018-01-27','10:00:00',1,1),(82,'2018-01-27','12:00:00',2,1),(83,'2018-01-27','15:00:00',3,1),(84,'2018-01-27','17:00:00',4,1),(85,'2018-01-27','20:00:00',5,1),(86,'2018-01-27','12:30:00',1,2),(87,'2018-01-27','09:30:00',2,2),(88,'2018-01-27','14:30:00',3,2),(89,'2018-01-27','16:30:00',4,2),(90,'2018-01-27','19:30:00',5,2),(91,'2018-01-27','10:00:00',5,3),(92,'2018-01-27','12:00:00',3,3),(93,'2018-01-27','15:00:00',4,3),(94,'2018-01-27','17:00:00',2,3),(95,'2018-01-27','20:00:00',1,3),(96,'2018-01-27','12:30:00',5,4),(97,'2018-01-27','09:30:00',3,4),(98,'2018-01-27','14:30:00',4,4),(99,'2018-01-27','16:30:00',2,4),(100,'2018-01-27','19:30:00',1,4),(101,'2018-01-28','10:00:00',1,1),(102,'2018-01-28','12:00:00',2,1),(103,'2018-01-28','15:00:00',3,1),(104,'2018-01-28','17:00:00',4,1),(105,'2018-01-28','20:00:00',5,1),(106,'2018-01-28','12:30:00',1,2),(107,'2018-01-28','09:30:00',2,2),(108,'2018-01-28','14:30:00',3,2),(109,'2018-01-28','16:30:00',4,2),(110,'2018-01-28','19:30:00',5,2),(111,'2018-01-28','10:00:00',5,3),(112,'2018-01-28','12:00:00',3,3),(113,'2018-01-28','15:00:00',4,3),(114,'2018-01-28','17:00:00',2,3),(115,'2018-01-28','20:00:00',1,3),(116,'2018-01-28','12:30:00',5,4),(117,'2018-01-28','09:30:00',3,4),(118,'2018-01-28','14:30:00',4,4),(119,'2018-01-28','16:30:00',2,4),(120,'2018-01-28','19:30:00',1,4);
/*!40000 ALTER TABLE `showtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theaters`
--

DROP TABLE IF EXISTS `theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theaters` (
  `ScreenNumber` int(11) NOT NULL AUTO_INCREMENT,
  `Seats` int(11) NOT NULL,
  `HandicapAccess` tinyint(1) NOT NULL,
  PRIMARY KEY (`ScreenNumber`),
  UNIQUE KEY `ScreenNumber_UNIQUE` (`ScreenNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theaters`
--

LOCK TABLES `theaters` WRITE;
/*!40000 ALTER TABLE `theaters` DISABLE KEYS */;
INSERT INTO `theaters` VALUES (1,50,1),(2,40,0),(3,45,1),(4,25,0);
/*!40000 ALTER TABLE `theaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'intermedixmoviebackenddb'
--
/*!50003 DROP PROCEDURE IF EXISTS `HandicapShows` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `HandicapShows`()
BEGIN
select m.Title, s.StartTime
from movies m inner join screenings s
on m.ID = s.MovieID
where s.theaterID in
(select ScreenNumber from theaters where HandicapAccess = 1)
order by m.title ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-26  2:10:21
