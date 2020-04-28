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
-- Table structure for table `Quadre`
--

DROP TABLE IF EXISTS `Quadre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Quadre` (
  `id_qudre` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `preu` int(11) NOT NULL,
  PRIMARY KEY (`id_qudre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quadre`
--

LOCK TABLES `Quadre` WRITE;
/*!40000 ALTER TABLE `Quadre` DISABLE KEYS */;
INSERT INTO `Quadre` VALUES (1,'No 1 (Royal Red and Blue)','Mark Rothko',75100000),(2,'Masacre de los inocentes','Peter Paul Rubens',76700000),(3,'Le Moulin de la Galette','Pierre-Auguste Renoir',78100000),(4,'Turquoise Marilyn','Andy Warhol',80000000),(5,'False Start','Jasper Johns',80000000),(6,'Retrato del Dr. Gachet','Vincent van Gogh',82500000),(7,'Retrato de Adele Bloch-Bauer II','Gustav Klimt',87900000),(8,'Garçon à la pipe','Pablo Picasso',104200000),(9,'Flag','Jasper Johns',110000000),(10,'\"El grito','Edvard Munch',119900000),(11,'No.5','Jackson Pollock',140000000),(12,'Les Joueurs de cartes','Paul Cézanne',250000000);
/*!40000 ALTER TABLE `Quadre` ENABLE KEYS */;
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
