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
-- Table structure for table `dyzur`
--

DROP TABLE IF EXISTS `dyzur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dyzur` (
  `id_dyzuru` int NOT NULL AUTO_INCREMENT,
  `dzien_dyzuru` date NOT NULL,
  `godzina_rozpoczecia` time NOT NULL,
  `godzina_zakonczenia` time NOT NULL,
  PRIMARY KEY (`id_dyzuru`),
  UNIQUE KEY `id_dyzuru_UNIQUE` (`id_dyzuru`),
  KEY `dzien_dyzuru` (`dzien_dyzuru`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dyzur`
--

LOCK TABLES `dyzur` WRITE;
/*!40000 ALTER TABLE `dyzur` DISABLE KEYS */;
INSERT INTO `dyzur` VALUES (1,'2022-11-20','00:00:00','08:00:00'),(2,'2022-11-20','08:00:00','16:00:00'),(3,'2022-11-20','16:00:00','00:00:00'),(4,'2022-11-21','00:00:00','08:00:00'),(5,'2022-11-21','08:00:00','16:00:00'),(6,'2022-11-21','16:00:00','00:00:00'),(7,'2022-11-22','00:00:00','08:00:00'),(8,'2022-11-22','08:00:00','16:00:00'),(9,'2022-11-22','16:00:00','00:00:00'),(10,'2022-11-23','00:00:00','08:00:00'),(11,'2022-11-23','08:00:00','16:00:00'),(12,'2022-11-23','16:00:00','00:00:00'),(13,'2022-11-24','00:00:00','08:00:00'),(14,'2022-11-24','08:00:00','16:00:00'),(15,'2022-11-24','16:00:00','00:00:00'),(16,'2022-11-25','00:00:00','08:00:00'),(17,'2022-11-25','08:00:00','16:00:00'),(18,'2022-11-25','16:00:00','00:00:00'),(19,'2022-11-26','00:00:00','08:00:00'),(20,'2022-11-26','08:00:00','16:00:00'),(21,'2022-11-26','16:00:00','00:00:00');
/*!40000 ALTER TABLE `dyzur` ENABLE KEYS */;
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
