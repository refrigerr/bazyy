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
-- Table structure for table `grafik`
--

DROP TABLE IF EXISTS `grafik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grafik` (
  `id_dyzuru` int NOT NULL,
  `id_pracownika` int NOT NULL,
  KEY `grafik_ibfk_1_idx` (`id_dyzuru`),
  KEY `grafik_ibfk_2_idx` (`id_pracownika`),
  CONSTRAINT `grafik_ibfk_1` FOREIGN KEY (`id_dyzuru`) REFERENCES `dyzur` (`id_dyzuru`),
  CONSTRAINT `grafik_ibfk_2` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownik_szpitala` (`id_pracownika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grafik`
--

LOCK TABLES `grafik` WRITE;
/*!40000 ALTER TABLE `grafik` DISABLE KEYS */;
INSERT INTO `grafik` VALUES (13,1),(6,2),(21,3),(13,4),(3,5),(9,6),(15,7),(15,8),(15,9),(17,10),(17,11),(9,12),(7,13),(4,14),(18,15),(21,16),(20,17),(1,18),(20,19),(2,20),(12,21),(14,22),(15,23),(5,24),(8,25),(20,26),(12,27),(16,28),(17,29),(9,30),(20,31),(1,32),(15,33),(7,34),(5,35),(21,36),(16,37),(16,38),(4,39),(13,40),(9,41),(5,42),(10,43),(6,44),(1,45);
/*!40000 ALTER TABLE `grafik` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 20:05:47
