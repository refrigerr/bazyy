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
-- Table structure for table `telefon`
--

DROP TABLE IF EXISTS `telefon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefon` (
  `id_numeru_telefonu` int NOT NULL AUTO_INCREMENT,
  `nr_telefonu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_numeru_telefonu`),
  UNIQUE KEY `id_numeru_telefonu_UNIQUE` (`id_numeru_telefonu`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefon`
--

LOCK TABLES `telefon` WRITE;
/*!40000 ALTER TABLE `telefon` DISABLE KEYS */;
INSERT INTO `telefon` VALUES (1,'+48685025276'),(2,'234247015'),(3,'502971988'),(4,'013318701'),(5,'263886722'),(6,'301865720'),(7,'125817051'),(8,'958342579'),(9,'057959079'),(10,'286251216'),(11,'383990593'),(12,'881598360'),(13,'692973156'),(14,'066451828'),(15,'782849065'),(16,'+48271816275'),(17,'487856419'),(18,'539305749'),(19,'168530996'),(20,'085982538'),(21,'265004064'),(22,'661054736'),(23,'504752308'),(24,'080103292'),(25,'+48267409408'),(26,'156163564'),(27,'455215043'),(28,'858544993'),(29,'931194059'),(30,'037126389'),(31,'060247646'),(32,'487093277'),(33,'728899402'),(34,'077064726'),(35,'037406253'),(36,'743008342'),(37,'066971193'),(38,'881184692'),(39,'791449697'),(40,'767858925'),(41,'+48927562797'),(42,'+48364140860'),(43,'010007614'),(44,'458983251'),(45,'895670693'),(46,'+48349502949'),(47,'831969639'),(48,'559120113'),(49,'876583612'),(50,'370265105'),(51,'450473273'),(52,'+48562141858'),(53,'216567836'),(54,'987390831'),(55,'542165997'),(56,'+48688349636'),(57,'279253241'),(58,'875079594'),(59,'966556904'),(60,'515523882'),(61,'459389657'),(62,'143859203'),(63,'268850464'),(64,'+48819130323'),(65,'836333311'),(66,'860125935'),(67,'381863685'),(68,'366226092'),(69,'827933083'),(70,'+48492135474'),(71,'305807805'),(72,'102324793'),(73,'+48016378469'),(74,'392439214'),(75,'049285951'),(76,'806258481'),(77,'870962612'),(78,'046639177'),(79,'332726933'),(80,'964825151'),(81,'+48021611265'),(82,'414768626'),(83,'442307663'),(84,'+48885896973'),(85,'811010507'),(86,'847483171'),(87,'119888725'),(88,'491934056'),(89,'+48069483513'),(90,'953256462'),(91,'645771538'),(92,'150722457'),(93,'+48096052160'),(94,'647124767'),(95,'971362929'),(96,'854429687'),(97,'380081271'),(98,'+48898977610'),(99,'091116923'),(100,'798437168'),(101,'44444442'),(102,'46666442');
/*!40000 ALTER TABLE `telefon` ENABLE KEYS */;
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
