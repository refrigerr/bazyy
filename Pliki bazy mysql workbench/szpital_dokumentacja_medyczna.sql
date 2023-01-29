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
-- Table structure for table `dokumentacja_medyczna`
--

DROP TABLE IF EXISTS `dokumentacja_medyczna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dokumentacja_medyczna` (
  `id_pacjenta` int NOT NULL,
  `przeprowadzone_badanie` varchar(50) DEFAULT NULL,
  `data_badania` date DEFAULT NULL,
  `diagnoza` varchar(255) DEFAULT NULL,
  `id_lekarza` int DEFAULT NULL,
  KEY `dokumentacja_medyczna_ibfk_1_idx` (`id_pacjenta`),
  KEY `dokumentacja_medyczna_ibfk_2_idx` (`id_lekarza`) /*!80000 INVISIBLE */,
  KEY `data_badania` (`data_badania`),
  CONSTRAINT `dokumentacja_medyczna_ibfk_1` FOREIGN KEY (`id_pacjenta`) REFERENCES `pacjent` (`id_pacjenta`),
  CONSTRAINT `dokumentacja_medyczna_ibfk_2` FOREIGN KEY (`id_lekarza`) REFERENCES `lekarz` (`id_lekarza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokumentacja_medyczna`
--

LOCK TABLES `dokumentacja_medyczna` WRITE;
/*!40000 ALTER TABLE `dokumentacja_medyczna` DISABLE KEYS */;
INSERT INTO `dokumentacja_medyczna` VALUES (1,'jakies badanie','2022-12-04','diagnoza',1),(1,'jakies badanie2','2022-12-05','diagnoza2',1),(2,'jakies badanieeee','1990-12-05','diagnozaa',1),(2,'jakies badanieeee','1991-01-07','diagnozaaaa',1),(1,'Mammografia','2022-11-25','Wszystko dobrze, żadnych dolegliwości',7),(2,'Badanie radiologicznych','2022-11-20','Wszystko dobrze, żadnych dolegliwości',12),(3,'Badanie ultrasonograficzne','2022-11-22','Wszystko dobrze, żadnych dolegliwości',3),(4,'Kolonoskopia','2022-11-22','Wszystko dobrze,\nżadnych dolegliwości',8),(5,'Tomografia','2022-11-22','Wszystko dobrze,\nżadnych dolegliwości',10),(6,'Endoskopia','2022-11-21','Wszystko dobrze,\nżadnych dolegliwości',9),(7,'Badanie elektrokardiograficzne','2022-11-22','Wszystko dobrze, żadnych dolegliwości',2),(8,'Kolonoskopia','2022-11-22','Wszystko\ndobrze, żadnych dolegliwości',7),(9,'Mammografia','2022-11-25','Wszystko dobrze,\nżadnych dolegliwości',5),(10,'Badanie radiologicznych','2022-11-22','Wszystko dobrze, żadnych dolegliwości',1),(11,'Spirometria','2022-11-20','Wszystko\ndobrze, żadnych dolegliwości',4),(12,'Endoskopia','2022-11-23','Wszystko dobrze,\nżadnych dolegliwości',11),(13,'Gastroskopia','2022-11-23','Wszystko\ndobrze, żadnych dolegliwości',1),(14,'Tomografia','2022-11-22','Wszystko dobrze,\nżadnych dolegliwości',5),(15,'Badanie krwi','2022-11-25','Zbyt wysoka\nzawartość limfocytów',10),(16,'Kolonoskopia','2022-11-24','Wszystko\ndobrze, żadnych dolegliwości',7),(17,'Endoskopia','2022-11-21','Wszystko dobrze,\nżadnych dolegliwości',12),(18,'Tomografia','2022-11-24','Wszystko dobrze,\nżadnych dolegliwości',3),(19,'Kolonoskopia','2022-11-22','Wszystko\ndobrze, żadnych dolegliwości',5),(20,'Spirometria','2022-11-25','Wszystko\ndobrze, żadnych dolegliwości',11),(21,'Badanie radiologicznych','2022-11-24','Wszystko dobrze, żadnych dolegliwości',11),(22,'Tomografia','2022-11-24','Wszystko dobrze,\nżadnych dolegliwości',1),(23,'Kolonoskopia','2022-11-23','Wszystko\ndobrze, żadnych dolegliwości',3),(24,'Tomografia','2022-11-21','Wszystko dobrze,\nżadnych dolegliwości',9),(25,'Badanie ultrasonograficzne','2022-11-20','Wszystko dobrze, żadnych dolegliwości',10),(26,'Rezonans magnetyczny','2022-11-22','Wszystko dobrze, żadnych dolegliwości',6),(27,'Kolonoskopia','2022-11-22','Wszystko\ndobrze, żadnych dolegliwości',1),(28,'Rezonans magnetyczny','2022-11-20','Wszystko dobrze, żadnych dolegliwości',3),(29,'Badanie radiologicznych','2022-11-22','Wszystko dobrze, żadnych dolegliwości',2),(30,'Badanie elektrokardiograficzne','2022-11-25','Wszystko dobrze, żadnych dolegliwości',6),(31,'Badanie ultrasonograficzne','2022-11-21','Wszystko dobrze, żadnych dolegliwości',2),(32,'Endoskopia','2022-11-20','Wszystko dobrze,\nżadnych dolegliwości',10),(33,'Mammografia','2022-11-22','Wszystko\ndobrze, żadnych dolegliwości',6),(34,'Tomografia','2022-11-25','Wszystko dobrze,\nżadnych dolegliwości',7),(35,'Gastroskopia','2022-11-21','Wszystko\ndobrze, żadnych dolegliwości',9),(36,'Mammografia','2022-11-23','Wszystko\ndobrze, żadnych dolegliwości',3),(37,'Endoskopia','2022-11-22','Wszystko dobrze,\nżadnych dolegliwości',12),(38,'Spirometria','2022-11-20','Wszystko\ndobrze, żadnych dolegliwości',4),(39,'Spirometria','2022-11-20','Wszystko\ndobrze, żadnych dolegliwości',3),(40,'Mammografia','2022-11-21','Wszystko\ndobrze, żadnych dolegliwości',10),(41,'Badanie elektrokardiograficzne','2022-11-24','Wszystko dobrze, żadnych dolegliwości',5),(42,'Kolonoskopia','2022-11-21','Wszystko\ndobrze, żadnych dolegliwości',4),(43,'Rezonans magnetyczny','2022-11-20','Wszystko dobrze, żadnych dolegliwości',7),(44,'Mammografia','2022-11-22','Wszystko\ndobrze, żadnych dolegliwości',3),(45,'Badanie radiologicznych','2022-11-25','Wszystko dobrze, żadnych dolegliwości',1),(46,'Badanie ultrasonograficzne','2022-11-25','Wszystko dobrze, żadnych dolegliwości',8),(47,'Tomografia','2022-11-23','Wszystko dobrze,\nżadnych dolegliwości',7),(48,'Spirometria','2022-11-23','Wszystko\ndobrze, żadnych dolegliwości',5),(49,'Badanie krwi','2022-11-20','Zbyt wysoka\nzawartość limfocytów',6),(50,'Badanie elektrokardiograficzne','2022-11-22','Wszystko dobrze, żadnych dolegliwości',8),(1,'Kolonoskopia','2022-11-23','Wszystko\ndobrze, żadnych dolegliwości',1),(2,'Badanie radiologicznych','2022-11-23','Wszystko dobrze, żadnych dolegliwości',3),(3,'Badanie ultrasonograficzne','2022-11-25','Wszystko dobrze, żadnych dolegliwości',10),(4,'Badanie krwi','2022-11-24','Zbyt wysoka\nzawartość wapnia',10),(5,'Mammografia','2022-11-22','Wszystko dobrze,\nżadnych dolegliwości',9),(6,'Badanie elektrokardiograficzne','2022-11-21','Wszystko dobrze, żadnych dolegliwości',1),(7,'Badanie ultrasonograficzne','2022-11-21','Wszystko dobrze, żadnych dolegliwości',2),(8,'Badanie radiologicznych','2022-11-24','Wszystko dobrze, żadnych dolegliwości',8),(9,'Rezonans magnetyczny','2022-11-24','Wszystko dobrze, żadnych dolegliwości',2),(10,'Badanie krwi','2022-11-21','Zbyt niska\nzawartość magnezu',3),(11,'Mammografia','2022-11-25','Wszystko\ndobrze, żadnych dolegliwości',7),(12,'Badanie radiologicznych','2022-11-22','Wszystko dobrze, żadnych dolegliwości',3),(13,'Endoskopia','2022-11-21','Wszystko dobrze,\nżadnych dolegliwości',9),(14,'Badanie elektrokardiograficzne','2022-11-24','Wszystko dobrze, żadnych dolegliwości',11),(15,'Tomografia','2022-11-23','Wszystko dobrze,\nżadnych dolegliwości',5),(16,'Endoskopia','2022-11-20','Wszystko dobrze,\nżadnych dolegliwości',4),(17,'Spirometria','2022-11-24','Wszystko\ndobrze, żadnych dolegliwości',8),(18,'Endoskopia','2022-11-20','Wszystko dobrze,\nżadnych dolegliwości',8),(19,'Mammografia','2022-11-22','Wszystko\ndobrze, żadnych dolegliwości',12),(20,'Badanie radiologicznych','2022-11-23','Wszystko dobrze, żadnych dolegliwości',1),(21,'Badanie ultrasonograficzne','2022-11-20','Wszystko dobrze, żadnych dolegliwości',2),(22,'Badanie elektrokardiograficzne','2022-11-20','Wszystko dobrze, żadnych dolegliwości',4),(23,'Badanie radiologicznych','2022-11-24','Wszystko dobrze, żadnych dolegliwości',2),(24,'Endoskopia','2022-11-25','Wszystko dobrze,\nżadnych dolegliwości',2),(25,'Tomografia','2022-11-25','Wszystko dobrze,\nżadnych dolegliwości',9),(26,'Mammografia','2022-11-22','Wszystko\ndobrze, żadnych dolegliwości',4),(27,'Endoskopia','2022-11-25','Wszystko dobrze,\nżadnych dolegliwości',4),(28,'Badanie radiologicznych','2022-11-22','Wszystko dobrze, żadnych dolegliwości',7),(29,'Badanie elektrokardiograficzne','2022-11-22','Wszystko dobrze, żadnych dolegliwości',10),(30,'Spirometria','2022-11-25','Wszystko\ndobrze, żadnych dolegliwości',3),(31,'Badanie krwi','2022-11-22','Zbyt wysoka\nzawartość wapnia',1),(32,'Badanie elektrokardiograficzne','2022-11-25','Wszystko dobrze, żadnych dolegliwości',3),(33,'Endoskopia','2022-11-21','Wszystko dobrze,\nżadnych dolegliwości',9),(34,'Endoskopia','2022-11-25','Wszystko dobrze,\nżadnych dolegliwości',3),(35,'Spirometria','2022-11-25','Wszystko\ndobrze, żadnych dolegliwości',12),(36,'Badanie ultrasonograficzne','2022-11-20','Wszystko dobrze, żadnych dolegliwości',4),(37,'Gastroskopia','2022-11-21','Wszystko\ndobrze, żadnych dolegliwości',1),(38,'Badanie krwi','2022-11-21','Zbyt niska\nzawartość hemoglobiny',11),(39,'Badanie elektrokardiograficzne','2022-11-24','Wszystko dobrze, żadnych dolegliwości',3),(40,'Gastroskopia','2022-11-23','Wszystko\ndobrze, żadnych dolegliwości',9),(41,'Endoskopia','2022-11-21','Wszystko dobrze,\nżadnych dolegliwości',6),(42,'Badanie radiologicznych','2022-11-22','Wszystko dobrze, żadnych dolegliwości',4),(43,'Badanie elektrokardiograficzne','2022-11-21','Wszystko dobrze, żadnych dolegliwości',2),(44,'Endoskopia','2022-11-24','Wszystko dobrze,\nżadnych dolegliwości',2),(45,'Badanie radiologicznych','2022-11-23','Wszystko dobrze, żadnych dolegliwości',10),(46,'Mammografia','2022-11-25','Wszystko\ndobrze, żadnych dolegliwości',10),(47,'Badanie radiologicznych','2022-11-22','Wszystko dobrze, żadnych dolegliwości',11),(48,'Gastroskopia','2022-11-20','Wszystko\ndobrze, żadnych dolegliwości',12),(49,'Spirometria','2022-11-23','Wszystko\ndobrze, żadnych dolegliwości',5),(50,'Badanie krwi','2022-11-21','Zbyt wysoka\nzawartość magnezu',12),(52,'przyjecie pacjenta','2022-12-12','brak diagnozy',3),(54,'przyjecie pacjenta','2022-12-13','brak diagnozy',NULL),(1,'pobieranie krwi','2023-01-25','smierc',NULL),(1,'badanie prostaty','2023-01-25','rak',NULL),(55,'przyjecie pacjenta','2023-01-25','brak diagnozy',NULL),(56,'przyjecie pacjenta','2023-01-26','brak diagnozy',NULL),(57,'przyjecie pacjenta','2023-01-26','brak diagnozy',NULL),(58,'przyjecie pacjenta','2023-01-26','brak diagnozy',NULL),(59,'przyjecie pacjenta','2023-01-26','brak diagnozy',NULL);
/*!40000 ALTER TABLE `dokumentacja_medyczna` ENABLE KEYS */;
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
