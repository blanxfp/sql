-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: botiga_llibres
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
-- Table structure for table `Llibre`
--

DROP TABLE IF EXISTS `Llibre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Llibre` (
  `id_llibre` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `preu` float DEFAULT NULL,
  `autor_id` int(11) NOT NULL,
  `cataleg_id` int(11) NOT NULL,
  PRIMARY KEY (`id_llibre`,`autor_id`,`cataleg_id`),
  KEY `fk_Llibre_AmazonAutor1_idx` (`autor_id`),
  KEY `fk_Llibre_Cataleg1_idx` (`cataleg_id`),
  CONSTRAINT `fk_Llibre_AmazonAutor1` FOREIGN KEY (`autor_id`) REFERENCES `amazonautor` (`id_autor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Llibre_Cataleg1` FOREIGN KEY (`cataleg_id`) REFERENCES `cataleg` (`id_cataleg`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Llibre`
--

LOCK TABLES `Llibre` WRITE;
/*!40000 ALTER TABLE `Llibre` DISABLE KEYS */;
INSERT INTO `Llibre` VALUES (1,'\nLa madre de Frankenstein',51,23.1,1,1),(2,'Los besos en el pan',101,16.55,1,1),(3,'Las legiones malditas',13,20.1,2,1),(4,'Africanus, el hijo del cónsul',23,23.15,2,1),(5,'A corazón abierto',51,21.13,3,1),(6,'Manolito Gafotas',101,15.5,3,1),(10,'Búnker',15,19.9,4,1);
/*!40000 ALTER TABLE `Llibre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 12:11:43
