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
-- Table structure for table `osoba`
--

DROP TABLE IF EXISTS `osoba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `osoba` (
  `id_osoby` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(100) DEFAULT NULL,
  `plec` tinyint(1) NOT NULL,
  `pesel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_osoby`),
  UNIQUE KEY `id_osoby_UNIQUE` (`id_osoby`),
  KEY `imie` (`imie`) /*!80000 INVISIBLE */,
  KEY `nazwisko` (`nazwisko`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osoba`
--

LOCK TABLES `osoba` WRITE;
/*!40000 ALTER TABLE `osoba` DISABLE KEYS */;
INSERT INTO `osoba` VALUES (1,'maciek','nowak',0,'12345678912'),(2,'jan','kowalski',0,'11111111111'),(3,'krzysiek','makłowicz',0,'12121212121'),(4,'Jan','Nowak',0,'95051807177'),(5,'Christiane','Faircliff',1,'30348532971'),(6,'Beverly','Scopham',0,'77260571405'),(7,'Corly','Chetwin',1,'28104869453'),(8,'Faye','Hessing',0,'56041632779'),(9,'Marcy','Picker',1,'55779420499'),(10,'Jeanine','Semper',1,'08189660276'),(11,'Monroe','Oaker',1,'30990232889'),(12,'Hattie','Van de Vlies',1,'45369762988'),(13,'Adelheid','Welland',1,'01870034828'),(14,'Heda','Dobinson',0,'95127271306'),(15,'Meredith','Meeland',0,'41040030135'),(16,'Bria','Berrycloth',1,'90478407159'),(17,'Samson','Doak',1,'73479980667'),(18,'Micky','Rubens',0,'93284377202'),(19,'Reginauld','Bruntje',1,'45857367723'),(20,'Evy','Brand-Hardy',0,'27581668986'),(21,'Reggie','Roskilly',0,'42725217701'),(22,'Jodi','Skillings',1,'12763493515'),(23,'Katrina','Favelle',1,'23295071180'),(24,'Huntley','Mahmood',0,'22849586284'),(25,'Shandy','Sainter',0,'99888663189'),(26,'Ingeborg','Good',1,'86874439960'),(27,'Marnia','Blennerhassett',0,'88865210988'),(28,'Larissa','Brunicke',0,'37495733524'),(29,'L;urette','Hanner',1,'54782897273'),(30,'Stanwood','Wemes',1,'31044720652'),(31,'Issi','Raddan',1,'21404472748'),(32,'Rosalie','Bridgeman',1,'22989001828'),(33,'Moe','Farrar',1,'75656636746'),(34,'Adelaide','Fripp',1,'17005401266'),(35,'Harlene','Finlayson',1,'21930775345'),(36,'Lind','Killeen',0,'82717425936'),(37,'Lewes','Henke',1,'25531369337'),(38,'Lucilia','Kinnier',0,'14617992251'),(39,'Tracie','Jenik',1,'03841294449'),(40,'Ag','Abramowitz',0,'93993268637'),(41,'Aarika','Portwain',1,'70464071799'),(42,'Sid','Adams',0,'57871410947'),(43,'Kendal','Keme',0,'31517907470'),(44,'Roscoe','Gladdin',0,'46784417522'),(45,'Sampson','Prickett',0,'64914430599'),(46,'Karola','Mollett',0,'94695913214'),(47,'Gisela','Brissenden',1,'81596879007'),(48,'Lucio','McCrackem',0,'04776000044'),(49,'Fern','Molan',0,'14680310099'),(50,'Ninnette','Breagan',1,'84550905518'),(51,'Anny','Adamini',1,'84765430823'),(52,'Aron','Sproson',1,'39805457870'),(53,'Jannel','Thorneley',0,'03199419011'),(54,'Krissie','Hatfield',1,'13872803578'),(55,'Sande','Patchett',1,'29207003954'),(56,'Rora','Vaar',0,'33845617785'),(57,'Emlyn','Favela',1,'39496361836'),(58,'Culley','MacCahey',0,'59426357058'),(59,'Matty','Dive',1,'61346030445'),(60,'Tuck','Timms',0,'34253363721'),(61,'Wally','Skillen',0,'03268630465'),(62,'Rosy','Kaindl',0,'28861010098'),(63,'Reba','MacLure',0,'09781143942'),(64,'Melvin','Rylatt',0,'58457101110'),(65,'Neill','Gonsalvo',1,'99430050404'),(66,'Winny','Brogioni',0,'57987885742'),(67,'Dodi','Hastler',1,'21271675004'),(68,'Etheline','Walrond',0,'72259666621'),(69,'Giulietta','Whate',1,'49063150724'),(70,'Idette','Maultby',0,'22608308027'),(71,'Munroe','Wyant',1,'33571797298'),(72,'Alli','Szymon',0,'44954614226'),(73,'Sibyl','Lugsdin',1,'59467354030'),(74,'Stanislaus','Snoxall',1,'86976551469'),(75,'Graig','Kilmurray',0,'46715090262'),(76,'Bettine','Ravelus',1,'47945240357'),(77,'Gualterio','Bouzek',1,'22880852867'),(78,'Norri','Sanchis',1,'45064653832'),(79,'Elfrida','Bartosinski',0,'36682653433'),(80,'Philbert','Ducrow',0,'93525794507'),(81,'Darryl','Lenormand',0,'57603336142'),(82,'Loella','Allone',1,'44303056052'),(83,'Aloin','Gilbank',1,'18626415789'),(84,'Marleah','Weber',1,'07505928683'),(85,'Ahmad','Coping',1,'01962330762'),(86,'Lilas','McPartling',0,'99742441775'),(87,'Margy','Coonan',1,'81552303744'),(88,'Clarette','Tovey',0,'86295503055'),(89,'Mac','Melling',1,'27296467339'),(90,'Susy','Blyth',1,'72697250738'),(91,'Al','Purdon',1,'98231241007'),(92,'Kore','Dunphie',0,'35554892268'),(93,'Dana','Zamboniari',1,'84675649628'),(94,'Layla','Kinnon',1,'77608367824'),(95,'Licha','Adey',1,'73066298374'),(96,'Odelia','Spargo',0,'93475985008'),(97,'Edi','Grayland',1,'41840671672'),(98,'Tedi','Keyes',1,'39986953129'),(99,'Aubrey','Rofe',0,'81903061841'),(100,'Fons','Keune',1,'71857490047'),(101,'imiee','nazwiskoo',1,'1233232122'),(102,'im','imm',1,'43424'),(103,'cos','jeszczecos',0,'46624'),(105,'','',0,'6969696969'),(107,'test','test',1,'613127613'),(108,'123','123',0,'123'),(109,'pusto','',0,''),(110,'Janne','Thorneley',-1,'03199419011');
/*!40000 ALTER TABLE `osoba` ENABLE KEYS */;
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
