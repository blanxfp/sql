-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: botiga_quadres
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `CompradorQuadre`
--

DROP TABLE IF EXISTS `CompradorQuadre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CompradorQuadre` (
  `DNI` varchar(45) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `cognom` varchar(45) NOT NULL,
  `quadre_id` int(11) NOT NULL,
  PRIMARY KEY (`DNI`,`quadre_id`),
  KEY `fk_CompradorQuadre_Quadre_idx` (`quadre_id`),
  CONSTRAINT `fk_CompradorQuadre_Quadre` FOREIGN KEY (`quadre_id`) REFERENCES `quadre` (`id_qudre`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompradorQuadre`
--

LOCK TABLES `CompradorQuadre` WRITE;
/*!40000 ALTER TABLE `CompradorQuadre` DISABLE KEYS */;
INSERT INTO `CompradorQuadre` VALUES ('098789765R','Ariadna','Herrera',5),('40365527K','Blanca','Frade',1),('40365527K','Blanca','Frade',8),('40365528E','Laura','Frade',2),('40376628O','Pere','Cortina',4),('438274483J','Josep','Conill',3),('574839987i','Julia','Hernandez',6),('876493098G','Gerard','Poll',7);
/*!40000 ALTER TABLE `CompradorQuadre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 12:10:59
