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
-- Table structure for table `adres`
--

DROP TABLE IF EXISTS `adres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adres` (
  `id_pacjenta` int NOT NULL,
  `kod_pocztowy` varchar(8) DEFAULT NULL,
  `miasto` varchar(100) DEFAULT NULL,
  `ulica` varchar(100) DEFAULT NULL,
  `nr_budynku` varchar(5) DEFAULT NULL,
  `nr_lokalu` varchar(5) DEFAULT NULL,
  UNIQUE KEY `id_pacjenta_UNIQUE` (`id_pacjenta`),
  KEY `pacjent_ibfk_2_idx` (`id_pacjenta`),
  KEY `miasto` (`miasto`),
  CONSTRAINT `adres_ibfk_1` FOREIGN KEY (`id_pacjenta`) REFERENCES `pacjent` (`id_pacjenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adres`
--

LOCK TABLES `adres` WRITE;
/*!40000 ALTER TABLE `adres` DISABLE KEYS */;
INSERT INTO `adres` VALUES (1,'67-607','Mabai','Manley','139','914'),(2,'43-251','Falun','Stephen','30','71b'),(3,'69-196','Kérkyra','Ruskin','177','373'),(4,'17-914','Kiuteta','Aberg','169','52y'),(5,'14-281','Flora','Buhler','83','371'),(6,'28-446','Cereté','Sachs','45l','25w'),(7,'41-574','Dubovka','American','10f','44j'),(8,'44-471','Maca','Little Fleur','353','038'),(9,'78-364','Ḩabbān','Kingsford','248','95z'),(10,'90-263','Huangsha','Corscot','71z','87k'),(11,'24-791','Telde','Doe Crossing','66p','891'),(12,'94-189','Huayang','Dryden','200','351'),(13,'71-737','Masina','Scofield','28u','37g'),(14,'92-658','Fès','Colorado','19k','34m'),(15,'93-760','Seixo da Beira','Pleasure','92p','486'),(16,'19-198','Selizharovo','Mcguire','318','174'),(17,'45-361','Namerikawa','Packers','100','219'),(18,'87-485','Plomárion','Moland','72y','949'),(19,'75-621','Sjöbo','Pankratz','74f','499'),(20,'57-536','Shuangzhong','Waubesa','87w','19i'),(21,'37-727','Bronnitsy','Everett','52r','80f'),(22,'37-937','Kikinda','Milwaukee','67v','68v'),(23,'96-111','Boldumsaz','Village Green','50m','85n'),(24,'61-935','Yamaguchi-shi','Lerdahl','96z','62v'),(25,'46-902','Lenghu','Kropf','562','60h'),(26,'74-918','Tobi Village','Menomonie','92r','39k'),(27,'15-053','Yirshi','East','58u','797'),(28,'26-609','Kabo','Cascade','609','74e'),(29,'83-673','Lammi','Bonner','147','286'),(30,'30-723','Madīnat ‘Īsá','East','99e','339'),(31,'30-332','Doāba','Fuller','036','36b'),(32,'63-669','Tacoma','Bowman','28q','71i'),(33,'64-799','Cicurug','Heffernan','193','22z'),(34,'86-719','Ulme','Clove','92s','51k'),(35,'82-885','Wierzchosławice','Leroy','189','792'),(36,'12-246','Ya’ergenchu','Calypso','60n','73v'),(37,'32-309','Koronadal','Rowland','75k','19e'),(38,'27-639','Falun','Sunfield','49y','42n'),(39,'77-026','Khodasy','Melvin','00c','32w'),(40,'47-157','Gonzalo','Riverside','068','016'),(41,'23-201','Indaiatuba','Hudson','569','83h'),(42,'82-364','Tëplaya Gora','Mockingbird','19u','75r'),(43,'07-922','Cipaku','Leroy','31r','89a'),(44,'46-501','Mungui','Green','459','12h'),(45,'31-638','Mollepampa','Bayside','90o','62s'),(46,'77-631','Banjar Bongangede','Longview','25a','79i'),(47,'80-725','Tong’an','Prentice','28c','39l'),(48,'50-814','Tsimasham','Sutteridge','414','27a'),(49,'74-757','Frankfort','Magdeline','56z','475'),(50,'98-262','Beicheng','Darwin','31u','64o'),(54,'11-111','veveveveve','vvvvvvvv','3','4b'),(55,'','','','',''),(56,'','','','',''),(57,'','','','',''),(58,'','','','',''),(59,'17-914','Kiuteta','Aberg','169','52y');
/*!40000 ALTER TABLE `adres` ENABLE KEYS */;
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
