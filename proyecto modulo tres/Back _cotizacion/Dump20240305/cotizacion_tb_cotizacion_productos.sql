-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: cotizacion
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `tb_cotizacion_productos`
--

DROP TABLE IF EXISTS `tb_cotizacion_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cotizacion_productos` (
  `id_cotizacion` int NOT NULL,
  `id_productos` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_cotizacion`,`id_productos`),
  KEY `fk_tb_cotizacion_has_tb_productos_tb_productos1_idx` (`id_productos`),
  KEY `fk_tb_cotizacion_has_tb_productos_tb_cotizacion1_idx` (`id_cotizacion`),
  CONSTRAINT `fk_tb_cotizacion_has_tb_productos_tb_cotizacion1` FOREIGN KEY (`id_cotizacion`) REFERENCES `tb_cotizacion` (`id_cotizacion`),
  CONSTRAINT `fk_tb_cotizacion_has_tb_productos_tb_productos1` FOREIGN KEY (`id_productos`) REFERENCES `tb_productos` (`id_productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cotizacion_productos`
--

LOCK TABLES `tb_cotizacion_productos` WRITE;
/*!40000 ALTER TABLE `tb_cotizacion_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cotizacion_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-05 11:12:24
