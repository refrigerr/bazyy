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
-- Table structure for table `pokoj`
--

DROP TABLE IF EXISTS `pokoj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokoj` (
  `id_oddzialu` int NOT NULL,
  `nr_pokoju` int NOT NULL,
  `liczba_lozek` int NOT NULL,
  KEY `pokoj_ibfk_1_idx` (`id_oddzialu`),
  CONSTRAINT `pokoj_ibfk_1` FOREIGN KEY (`id_oddzialu`) REFERENCES `oddzial` (`id_oddzialu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokoj`
--

LOCK TABLES `pokoj` WRITE;
/*!40000 ALTER TABLE `pokoj` DISABLE KEYS */;
INSERT INTO `pokoj` VALUES (2,1,5),(3,1,5),(1,1,5),(1,2,5),(1,3,5),(1,4,5),(1,5,5),(1,6,5),(1,7,5),(1,8,5),(1,9,5),(1,10,5),(1,11,5),(1,12,5),(1,13,5),(1,14,5),(1,15,5),(1,16,5),(1,17,5),(1,18,5),(1,19,5),(1,20,5),(2,21,5),(2,22,5),(2,23,5),(2,24,5),(2,25,5),(2,26,5),(2,27,5),(2,28,5),(2,29,5),(2,30,5),(2,31,5),(2,32,5),(2,33,5),(2,34,5),(2,35,5),(2,36,5),(2,37,5),(2,38,5),(2,39,5),(2,40,5),(3,41,5),(3,42,5),(3,43,5),(3,44,5),(3,45,5),(3,46,5),(3,47,5),(3,48,5),(3,49,5),(3,50,5),(3,51,5),(3,52,5),(3,53,5),(3,54,5),(3,55,5),(3,56,5),(3,57,5),(3,58,5),(3,59,5),(3,60,5),(4,61,5),(4,62,5),(4,63,5),(4,64,5),(4,65,5),(4,66,5),(4,67,5),(4,68,5),(4,69,5),(4,70,5),(4,71,5),(4,72,5),(4,73,5),(4,74,5),(4,75,5),(4,76,5),(4,77,5),(4,78,5),(4,79,5),(4,80,5),(5,81,5),(5,82,5),(5,83,5),(5,84,5),(5,85,5),(5,86,5),(5,87,5),(5,88,5),(5,89,5),(5,90,5),(5,91,5),(5,92,5),(5,93,5),(5,94,5),(5,95,5),(5,96,5),(5,97,5),(5,98,5),(5,99,5),(5,100,5),(1,1,1),(1,1,1),(3,60,15),(3,61,15);
/*!40000 ALTER TABLE `pokoj` ENABLE KEYS */;
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
