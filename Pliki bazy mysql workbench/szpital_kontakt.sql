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
-- Table structure for table `kontakt`
--

DROP TABLE IF EXISTS `kontakt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kontakt` (
  `id_osoby` int NOT NULL,
  `id_numeru_telefonu` int NOT NULL,
  KEY `kontakt_ibfk_1_idx` (`id_osoby`),
  KEY `kontakt_ibfk_2_idx` (`id_numeru_telefonu`),
  CONSTRAINT `kontakt_ibfk_1` FOREIGN KEY (`id_osoby`) REFERENCES `osoba` (`id_osoby`),
  CONSTRAINT `kontakt_ibfk_2` FOREIGN KEY (`id_numeru_telefonu`) REFERENCES `telefon` (`id_numeru_telefonu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kontakt`
--

LOCK TABLES `kontakt` WRITE;
/*!40000 ALTER TABLE `kontakt` DISABLE KEYS */;
INSERT INTO `kontakt` VALUES (1,36),(2,13),(3,10),(4,34),(5,31),(6,35),(7,28),(8,28),(9,3),(10,38),(11,3),(12,33),(13,17),(14,43),(15,42),(16,44),(17,43),(18,31),(19,41),(20,34),(21,5),(22,31),(23,38),(24,27),(25,11),(26,9),(27,17),(28,15),(29,46),(30,3),(31,5),(32,3),(33,47),(34,5),(35,6),(36,36),(37,40),(38,16),(39,38),(40,6),(41,41),(42,29),(43,26),(44,10),(45,33),(46,42),(47,11),(48,38),(49,28),(50,25),(51,46),(52,40),(53,68),(54,24),(55,67),(56,9),(57,54),(58,47),(59,4),(60,81),(61,2),(62,85),(63,80),(64,56),(65,26),(66,75),(67,60),(68,25),(69,57),(70,59),(71,79),(72,91),(73,38),(74,37),(75,47),(76,92),(77,17),(78,1),(79,27),(80,11),(81,78),(82,75),(83,16),(84,30),(85,93),(86,41),(87,65),(88,43),(89,43),(90,12),(91,56),(92,41),(93,72),(94,67),(95,20),(96,15),(97,79),(98,37),(99,30),(100,83),(102,101),(103,102);
/*!40000 ALTER TABLE `kontakt` ENABLE KEYS */;
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
