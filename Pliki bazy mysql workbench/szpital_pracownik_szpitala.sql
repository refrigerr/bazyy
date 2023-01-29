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
-- Table structure for table `pracownik_szpitala`
--

DROP TABLE IF EXISTS `pracownik_szpitala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownik_szpitala` (
  `id_pracownika` int NOT NULL AUTO_INCREMENT,
  `id_oddzialu` int DEFAULT NULL,
  `haslo` varchar(20) DEFAULT NULL,
  `id_osoby` int NOT NULL,
  PRIMARY KEY (`id_pracownika`),
  UNIQUE KEY `id_pracownika_UNIQUE` (`id_pracownika`),
  KEY `pracownik_szpitala_ibfk_2_idx` (`id_osoby`),
  KEY `pracownik_szpitala_ibfk_3_idx` (`id_oddzialu`),
  CONSTRAINT `pracownik_szpitala_ibfk_2` FOREIGN KEY (`id_osoby`) REFERENCES `osoba` (`id_osoby`),
  CONSTRAINT `pracownik_szpitala_ibfk_3` FOREIGN KEY (`id_oddzialu`) REFERENCES `oddzial` (`id_oddzialu`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownik_szpitala`
--

LOCK TABLES `pracownik_szpitala` WRITE;
/*!40000 ALTER TABLE `pracownik_szpitala` DISABLE KEYS */;
INSERT INTO `pracownik_szpitala` VALUES (1,1,'haslo',1),(2,5,'KbYnElxo',45),(3,4,'4xcp7SNzBRg',2),(4,1,'hNVzHDUVXtX5',3),(5,2,'Wwc9FfoS',4),(6,5,'uvjDSm',5),(7,3,'0LNRYoRY',6),(8,5,'rJZ048ntupbO',7),(9,1,'tBrT4Q',8),(10,5,'mcVjMf1YnF6',9),(11,1,'kiMwHshha',10),(12,1,'JZTjg2f2Dd',11),(13,2,'oBaHEKR8',12),(14,3,'rB1Fch',13),(15,4,'mEpSJkxKS9lA',14),(16,3,'VZXQ8ds8DC2',15),(17,1,'rQg0qQJamM',16),(18,3,'1U775rXC',17),(19,1,'LfRLVe',18),(20,5,'lQhtoTekUD',19),(21,2,'v6VaFgGVDKGE',20),(22,4,'D2AphrNt',21),(23,5,'3OQgLsO',22),(24,3,'CDNMAwSJVw',23),(25,4,'ZoJVXL',24),(26,3,'XWxIFMcKx',25),(27,3,'fiM7lu',26),(28,4,'omHD9vAZQl',27),(29,5,'CORW08dxY',28),(30,5,'ARtYh9nSvNT',29),(31,4,'PLxaHsD',30),(32,5,'BMgVcySTWU1',31),(33,1,'epL4poRtq',32),(34,2,'lekarz',33),(35,3,'DTU9gHuFJA',34),(36,2,'mRLqnwDGnL',35),(37,2,'9qkt2MM0JLJq',36),(38,1,'wTTdUeREA',37),(39,4,'mWJFueAcx',38),(40,5,'iB42Pq',39),(41,2,'yhU0jUf',40),(42,3,'zodwa2nc',41),(43,4,'hxPYHkTVI',42),(44,4,'itt6OQ',43),(45,2,'fdsafsdafsdaf',44);
/*!40000 ALTER TABLE `pracownik_szpitala` ENABLE KEYS */;
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
