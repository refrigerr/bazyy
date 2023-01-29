-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: szpital
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `gdzie_kto_lezal`
--

DROP TABLE IF EXISTS `gdzie_kto_lezal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gdzie_kto_lezal` (
  `id_pacjenta` int NOT NULL,
  `id_oddzialu` int NOT NULL,
  `nr_pokoju` int NOT NULL,
  `nr_lozka` int NOT NULL,
  `poczatek` date NOT NULL,
  `koniec` date DEFAULT NULL,
  KEY `gdzie_kto_lezal_ibfk_1_idx` (`id_pacjenta`),
  KEY `gdzie_kto_lezal_ibfk_2_idx` (`id_oddzialu`),
  KEY `poczatek` (`poczatek`) /*!80000 INVISIBLE */,
  KEY `koniec` (`koniec`),
  CONSTRAINT `gdzie_kto_lezal_ibfk_1` FOREIGN KEY (`id_pacjenta`) REFERENCES `pacjent` (`id_pacjenta`),
  CONSTRAINT `gdzie_kto_lezal_ibfk_2` FOREIGN KEY (`id_oddzialu`) REFERENCES `oddzial` (`id_oddzialu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gdzie_kto_lezal`
--

LOCK TABLES `gdzie_kto_lezal` WRITE;
/*!40000 ALTER TABLE `gdzie_kto_lezal` DISABLE KEYS */;
INSERT INTO `gdzie_kto_lezal` VALUES (1,4,10,2,'2022-11-22','2022-11-25'),(2,1,3,2,'2022-11-21','2022-11-23'),(3,4,14,3,'2022-11-21','2022-11-23'),(4,3,11,5,'2022-11-21','2022-11-25'),(5,4,20,2,'2022-11-22','2022-11-23'),(6,1,13,1,'2022-11-21','2022-11-24'),(7,5,7,5,'2022-11-22','2022-11-23'),(8,4,3,2,'2022-11-22','2022-11-24'),(9,5,11,2,'2022-11-21','2022-11-25'),(10,1,5,1,'2022-11-21','2022-11-24'),(11,1,1,2,'2022-11-21','2022-11-25'),(12,1,20,2,'2022-11-22','2022-11-24'),(13,3,3,1,'2022-11-21','2022-11-24'),(14,3,13,2,'2022-11-21','2022-11-25'),(15,1,7,1,'2022-11-22','2022-11-23'),(16,3,14,5,'2022-11-22','2022-11-25'),(17,1,5,5,'2022-11-21','2022-11-24'),(18,4,2,2,'2022-11-21','2022-11-24'),(19,5,7,1,'2022-11-22','2022-11-24'),(20,1,3,5,'2022-11-22','2022-11-25'),(21,1,4,4,'2022-11-22','2022-11-24'),(22,3,11,4,'2022-11-22','2022-11-24'),(23,2,12,1,'2022-11-22','2022-11-23'),(24,1,13,3,'2022-11-21','2022-11-23'),(25,3,16,3,'2022-11-22','2022-11-23'),(26,1,6,3,'2022-11-21','2022-11-24'),(27,3,3,4,'2022-11-22','2022-11-25'),(28,1,3,3,'2022-11-21','2022-11-23'),(29,1,12,2,'2022-11-22','2022-11-24'),(30,1,18,4,'2022-11-21','2022-11-23'),(31,3,16,5,'2022-11-22','2022-11-25'),(32,3,5,1,'2022-11-22','2022-11-24'),(33,3,1,1,'2022-11-21','2022-11-24'),(34,5,15,1,'2022-11-21','2022-11-24'),(35,3,17,1,'2022-11-21','2022-11-25'),(36,3,15,5,'2022-11-22','2022-11-25'),(37,2,3,3,'2022-11-21','2022-11-23'),(38,3,12,4,'2022-11-21','2022-11-23'),(39,1,2,4,'2022-11-21','2022-11-23'),(40,1,18,4,'2022-11-22','2022-11-23'),(41,1,13,4,'2022-11-21','2022-11-23'),(42,5,6,1,'2022-11-22','2022-11-24'),(43,1,14,5,'2022-11-22','2022-11-24'),(44,4,15,1,'2022-11-22','2022-11-24'),(45,4,12,3,'2022-11-21','2022-11-24'),(46,2,5,5,'2022-11-22','2022-11-25'),(47,1,20,2,'2022-11-21','2022-11-25'),(48,3,12,1,'2022-11-21','2022-11-25'),(49,5,19,1,'2022-11-22','2022-11-25'),(50,3,16,4,'2022-11-22','2022-11-23'),(51,5,20,4,'2022-11-21','2022-11-23'),(1,5,2,1,'2022-11-25',NULL),(4,2,8,2,'2022-11-25',NULL),(9,6,9,2,'2022-11-25',NULL),(11,4,5,1,'2022-11-25',NULL),(14,3,7,5,'2022-11-25',NULL),(16,4,8,1,'2022-11-25',NULL),(20,2,5,1,'2022-11-25',NULL),(27,3,10,4,'2022-11-25',NULL),(31,2,4,1,'2022-11-25',NULL),(35,2,5,5,'2022-11-25',NULL),(36,5,3,2,'2022-11-25',NULL),(46,2,9,1,'2022-11-25',NULL),(47,3,2,4,'2022-11-25',NULL),(48,5,9,1,'2022-11-25',NULL),(49,6,7,2,'2022-11-25',NULL),(52,3,3,3,'2022-12-12',NULL),(54,2,2,1,'2022-12-13',NULL);
/*!40000 ALTER TABLE `gdzie_kto_lezal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 20:05:48
