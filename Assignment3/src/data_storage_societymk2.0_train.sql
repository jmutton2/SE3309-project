CREATE DATABASE  IF NOT EXISTS `data_storage_societymk2.0` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `data_storage_societymk2.0`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: data_storage_societymk2.0
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `trainNo` bigint NOT NULL,
  `rdyForUtil` enum('Yes','yes','no','No') COLLATE utf8mb4_bin NOT NULL DEFAULT 'No',
  `stationName` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`trainNo`),
  KEY `stationName` (`stationName`),
  CONSTRAINT `stationName` FOREIGN KEY (`stationName`) REFERENCES `station` (`stationName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (1,'Yes','Rostov Station'),(2,'No','Poggiodomo Station'),(3,'Yes','Monte Giberto Station'),(4,'Yes','Ararat Station'),(5,'No','Pereira Station'),(6,'Yes','Iquitos Station'),(7,'Yes','Guadalajara Station'),(8,'Yes','Gjoa Haven Station'),(9,'Yes','Ryazan Station'),(10,'Yes','Puntarenas Station'),(11,'No','Warszawa Station'),(12,'Yes','Bridgend Station'),(13,'No','Korolyov Station'),(14,'Yes','Murcia Station'),(15,'Yes','A CoruÃƒÂ±a Station'),(16,'Yes','Douai Station'),(17,'Yes','Punta Arenas Station'),(18,'Yes','Buguma Station'),(19,'Yes','Heide Station'),(20,'No','Piedras Negras Station'),(21,'Yes','Chepstow Station'),(22,'Yes','Le Havre Station'),(23,'Yes','Seongnam Station'),(24,'Yes','Palmerston Station'),(25,'Yes','Daman Station'),(26,'Yes','Bucheon Station'),(27,'Yes','KÃƒÂ¶flach Station'),(28,'Yes','Rostov Station'),(29,'Yes','Pacasmayo Station'),(30,'Yes','Toronto'),(31,'Yes','Poggiodomo Station'),(32,'Yes','Monte Giberto Station'),(33,'No','San Felipe Station'),(34,'Yes','Guadalajara Station'),(35,'Yes','Puntarenas Station'),(36,'Yes','Chongqing Station'),(37,'Yes','Bengkulu Station'),(38,'Yes','Punta Arenas Station'),(39,'Yes','General Lagos Station'),(40,'No','Stargard SzczeciÃ…â€žski Station'),(41,'Yes','Frankfurt am Main Station'),(42,'Yes','Daman Station'),(43,'Yes','KÃƒÂ¶flach Station'),(44,'No','Port Harcourt Station'),(45,'Yes','Andacollo Station'),(46,'Yes','Passau Station'),(47,'Yes','Berlin Station'),(48,'Yes','Clydebank Station'),(49,'Yes','Wedel Station'),(50,'No','Ceuta Station'),(51,'Yes','Monte Giberto Station'),(52,'Yes','MjÃƒÂ¶lby Station'),(53,'Yes','Munich Station'),(54,'Yes','Ararat Station'),(55,'Yes','San Felipe Station'),(56,'Yes','CriciÃƒÂºma Station'),(57,'Yes','SkÃƒÂ¶vde Station'),(58,'Yes','Guadalajara Station'),(59,'Yes','Konin Station'),(60,'Yes','Iquique Station'),(61,'No','Bengkulu Station'),(62,'Yes','BiaÃ…â€šystok Station'),(63,'Yes','A CoruÃƒÂ±a Station'),(64,'Yes','Nogales Station'),(65,'Yes','Punta Arenas Station'),(66,'No','Buguma Station'),(67,'Yes','DoÃƒÂ±ihue Station'),(68,'Yes','Heide Station'),(69,'Yes','Shikarpur Station'),(70,'Yes','Piedras Negras Station'),(71,'Yes','Nova IguaÃƒÂ§u Station'),(72,'Yes','Campinas Station'),(73,'Yes','EÃ…â€šk Station'),(74,'Yes','Nicoya Station'),(75,'Yes','Seongnam Station'),(76,'No','Saint-Remy Station'),(77,'No','KÃƒÂ¶flach Station'),(78,'Yes','Palopo Station'),(79,'Yes','Andacollo Station'),(80,'Yes','Passau Station'),(81,'Yes','Clydebank Station'),(82,'Yes','MjÃƒÂ¶lby Station'),(83,'Yes','Ararat Station'),(84,'Yes','Hard Station'),(85,'Yes','CriciÃƒÂºma Station'),(86,'Yes','Iquitos Station'),(87,'No','Guadalajara Station'),(88,'Yes','Cambridge Bay Station'),(89,'Yes','Nogales Station'),(90,'Yes','Punta Arenas Station'),(91,'Yes','DoÃƒÂ±ihue Station'),(92,'Yes','Shikarpur Station'),(93,'No','Nova IguaÃƒÂ§u Station'),(94,'Yes','Arequipa Station'),(95,'Yes','Araban Station'),(96,'Yes','Jinju Station'),(97,'Yes','Nicoya Station'),(98,'Yes','Oaxaca Station'),(99,'Yes','Palmerston Station'),(100,'Yes','Daman Station');
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26 12:37:02
