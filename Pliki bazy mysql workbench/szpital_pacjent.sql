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
-- Table structure for table `pacjent`
--

DROP TABLE IF EXISTS `pacjent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacjent` (
  `id_pacjenta` int NOT NULL AUTO_INCREMENT,
  `id_osoby` int NOT NULL,
  `id_grupa_krwi` int DEFAULT NULL,
  PRIMARY KEY (`id_pacjenta`),
  UNIQUE KEY `id_pacjenta_UNIQUE` (`id_pacjenta`),
  KEY `pacjent_ibfk_1_idx` (`id_osoby`),
  KEY `pacjent_ibfk_2_idx` (`id_grupa_krwi`),
  CONSTRAINT `pacjent_ibfk_1` FOREIGN KEY (`id_osoby`) REFERENCES `osoba` (`id_osoby`),
  CONSTRAINT `pacjent_ibfk_2` FOREIGN KEY (`id_grupa_krwi`) REFERENCES `grupa_krwi` (`id_grupa_krwi`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacjent`
--

LOCK TABLES `pacjent` WRITE;
/*!40000 ALTER TABLE `pacjent` DISABLE KEYS */;
INSERT INTO `pacjent` VALUES (1,3,1),(2,4,4),(3,52,7),(4,53,7),(5,54,2),(6,55,3),(7,56,4),(8,57,4),(9,58,7),(10,59,1),(11,60,6),(12,61,3),(13,62,5),(14,63,5),(15,64,8),(16,65,6),(17,66,7),(18,67,4),(19,68,4),(20,69,6),(21,70,8),(22,71,1),(23,72,8),(24,73,7),(25,74,4),(26,75,2),(27,76,6),(28,77,7),(29,78,8),(30,79,7),(31,80,6),(32,81,3),(33,82,7),(34,83,5),(35,84,1),(36,85,4),(37,86,6),(38,87,1),(39,88,3),(40,89,3),(41,90,5),(42,91,5),(43,92,3),(44,93,4),(45,94,4),(46,95,8),(47,96,5),(48,97,7),(49,98,1),(50,99,2),(51,100,2),(52,101,3),(53,102,6),(54,103,7),(55,105,2),(56,107,1),(57,108,1),(58,109,2),(59,110,2);
/*!40000 ALTER TABLE `pacjent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 20:05:49
