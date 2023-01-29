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
-- Table structure for table `profesja`
--

DROP TABLE IF EXISTS `profesja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesja` (
  `id_specjalizacji` int NOT NULL,
  `id_lekarza` int NOT NULL,
  KEY `profesja_ibfk_1_idx` (`id_specjalizacji`),
  KEY `profesja_ibfk_2_idx` (`id_lekarza`),
  CONSTRAINT `profesja_ibfk_1` FOREIGN KEY (`id_specjalizacji`) REFERENCES `specjalizacja` (`id_specjalizacji`),
  CONSTRAINT `profesja_ibfk_2` FOREIGN KEY (`id_lekarza`) REFERENCES `lekarz` (`id_lekarza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesja`
--

LOCK TABLES `profesja` WRITE;
/*!40000 ALTER TABLE `profesja` DISABLE KEYS */;
INSERT INTO `profesja` VALUES (2,1),(3,2),(1,3),(6,4),(2,5),(3,6),(2,7),(4,8),(6,9),(3,10),(4,11),(5,12),(2,2),(3,3),(1,4),(6,3),(2,3),(3,7),(2,8),(4,10),(6,2),(3,12),(4,12),(5,11);
/*!40000 ALTER TABLE `profesja` ENABLE KEYS */;
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
