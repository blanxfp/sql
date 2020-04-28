-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
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
-- Table structure for table `ulleres`
--

DROP TABLE IF EXISTS `ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulleres` (
  `id_ulleres` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  `graduacio_esquerra` varchar(45) DEFAULT NULL,
  `graduacio_dreta` varchar(45) DEFAULT NULL,
  `montura` varchar(45) NOT NULL,
  `color_montura` varchar(45) DEFAULT NULL,
  `color_vidre_esquerra` varchar(45) DEFAULT NULL,
  `color_vidre_dret` varchar(45) DEFAULT NULL,
  `preu` varchar(45) NOT NULL,
  `empleat_id` int(11) NOT NULL,
  `proveidor_nif` varchar(10) NOT NULL,
  `empleats_id` int(11) NOT NULL,
  PRIMARY KEY (`id_ulleres`,`proveidor_nif`,`empleats_id`),
  KEY `fk_ulleres_proveidor1_idx` (`proveidor_nif`),
  KEY `fk_ulleres_empleats1_idx` (`empleats_id`),
  CONSTRAINT `fk_ulleres_empleats1` FOREIGN KEY (`empleats_id`) REFERENCES `empleats` (`id_empleat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ulleres_proveidor1` FOREIGN KEY (`proveidor_nif`) REFERENCES `proveidor` (`nif_proveidor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulleres`
--

LOCK TABLES `ulleres` WRITE;
/*!40000 ALTER TABLE `ulleres` DISABLE KEYS */;
INSERT INTO `ulleres` VALUES (6,'Adidas','-2.75','-1.25','metal·lica','negra','polaritzada','polaritzada','145.50',1,'A08119687',1),(7,'Adidas','+1.25','+2.00','pasta','rosa','verda','verda','125.30',1,'A08119687',2),(8,'Arnette','-3.25 (-0.75) 110º','-2.25 (-1.25) 90º','metal·lica','gris','polaritzada','polaritzada','150.55',2,'A08119687',3),(9,'Bvlgari','+1.20','+1.20','pasta','rosa','amarilla','amarilla','111.11',3,'A08119687',1),(10,'Ray Ban','-2.15','-1.20','pasta','coral','verda','verda','210.15',2,'F28465193',1);
/*!40000 ALTER TABLE `ulleres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 12:09:05
