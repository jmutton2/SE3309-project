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
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `stationName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'London Station',
  `location` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`stationName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES ('',''),('A CoruÃƒÂ±a Station','A CoruÃƒÂ±a'),('Alexandra Station','Alexandra'),('Andacollo Station','Andacollo'),('Anhui Station','Anhui'),('Anklam Station','Anklam'),('Araban Station','Araban'),('Ararat Station','Ararat'),('Arequipa Station','Arequipa'),('Atlanta Station','Atlanta'),('Belfast Station','Belfast'),('Bengkulu Station','Bengkulu'),('Berlin Station','Berlin'),('BiaÃ…â€šystok Station','BiaÃ…â€šystok'),('Bridgend Station','Bridgend'),('Bucheon Station','Bucheon'),('Buguma Station','Buguma'),('Cambridge Bay Station','Cambridge Bay'),('Campinas Station','Campinas'),('Canora Station','Canora'),('Casciana Terme Station','Casciana Terme'),('Ceuta Station','Ceuta'),('Chepstow Station','Chepstow'),('Chongqing Station','Chongqing'),('Clydebank Station','Clydebank'),('Cork Station','Cork'),('CriciÃƒÂºma Station','CriciÃƒÂºma'),('Daman Station','Daman'),('Dokkum Station','Dokkum'),('Douai Station','Douai'),('DoÃƒÂ±ihue Station','DoÃƒÂ±ihue'),('Duque de Caxias Station','Duque de Caxias'),('Elmshorn Station','Elmshorn'),('EÃ…â€šk Station','EÃ…â€šk'),('Frankfurt am Main Station','Frankfurt am Main'),('Fraserburgh Station','Fraserburgh'),('General Lagos Station','General Lagos'),('Gjoa Haven Station','Gjoa Haven'),('GorzÃƒÂ³w Wielkopolski Station','GorzÃƒÂ³w Wielkopolski'),('Guadalajara Station','Guadalajara'),('Hard Station','Hard'),('Hattian Bala Station','Hattian Bala'),('Heide Station','Heide'),('Huesca Station','Huesca'),('Iquique Station','Iquique'),('Iquitos Station','Iquitos'),('Jinju Station','Jinju'),('Kaliningrad Station','Kaliningrad'),('Kingston-on-Thames Station','Kingston-on-Thames'),('Konin Station','Konin'),('Korolyov Station','Korolyov'),('KÃƒÂ¶flach Station','KÃƒÂ¶flach'),('Le Havre Station','Le Havre'),('Liberia Station','Liberia'),('Manisa Station','Manisa'),('Manokwari Station','Manokwari'),('MjÃƒÂ¶lby Station','MjÃƒÂ¶lby'),('Monte Giberto Station','Monte Giberto'),('Moscow Station','Moscow'),('Munich Station','Munich'),('Murcia Station','Murcia'),('Nicoya Station','Nicoya'),('Nogales Station','Nogales'),('Nova IguaÃƒÂ§u Station','Nova IguaÃƒÂ§u'),('NÃƒÂ¤ssjÃƒÂ¶ Station','NÃƒÂ¤ssjÃƒÂ¶'),('Oaxaca Station','Oaxaca'),('Oldenzaal Station','Oldenzaal'),('Ortonovo Station','Ortonovo'),('Pacasmayo Station','Pacasmayo'),('Padre Hurtado Station','Padre Hurtado'),('Palmerston Station','Palmerston'),('Palopo Station','Palopo'),('Passau Station','Passau'),('Pereira Station','Pereira'),('Piedras Negras Station','Piedras Negras'),('Poggiodomo Station','Poggiodomo'),('Port Harcourt Station','Port Harcourt'),('Punta Arenas Station','Punta Arenas'),('Puntarenas Station','Puntarenas'),('Roccanova Station','Roccanova'),('Rostov Station','Rostov'),('Ryazan Station','Ryazan'),('Saint-Remy Station','Saint-Remy'),('San Felipe Station','San Felipe'),('Seogwipo Station','Seogwipo'),('Seongnam Station','Seongnam'),('Shikarpur Station','Shikarpur'),('SkÃƒÂ¶vde Station','SkÃƒÂ¶vde'),('Stargard SzczeciÃ…â€žski Station','Stargard SzczeciÃ…â€žski'),('Toronto','Toronto'),('Vienna Station','Vienna'),('Vladimir Station','Vladimir'),('Warrnambool Station','Warrnambool'),('Warszawa Station','Warszawa'),('Wedel Station','Wedel'),('Zaria Station','Zaria'),('ï»¿stationName','location');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26 12:37:03
