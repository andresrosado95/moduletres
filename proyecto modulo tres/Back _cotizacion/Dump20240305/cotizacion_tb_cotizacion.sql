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
-- Table structure for table `tb_cotizacion`
--

DROP TABLE IF EXISTS `tb_cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cotizacion` (
  `id_cotizacion` int NOT NULL,
  `id_usuario` int NOT NULL,
  `fecha_cotizacion` date DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `subtotal` decimal(12,0) DEFAULT NULL,
  `descuento` decimal(12,0) DEFAULT NULL,
  `tipo_descuento` char(1) DEFAULT NULL,
  `valor_total` decimal(12,0) DEFAULT NULL,
  PRIMARY KEY (`id_cotizacion`),
  KEY `fk_tb_carrito_tb_usuarios1_idx` (`id_usuario`),
  CONSTRAINT `fk_tb_carrito_tb_usuarios1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cotizacion`
--

LOCK TABLES `tb_cotizacion` WRITE;
/*!40000 ALTER TABLE `tb_cotizacion` DISABLE KEYS */;
INSERT INTO `tb_cotizacion` VALUES (1,1,'2024-02-02','1',25000,10,'a',678887),(2,3,'2024-02-02','1',29000,12,'b',22890),(3,2,'2024-02-02','1',25000,18,'c',22345),(4,3,'2024-02-02','1',25000,12,'b',22600),(5,3,'2024-02-02','1',25000,12,'a',24251),(6,3,'2024-02-03','1',28000,12,'c',29000),(7,2,'2024-02-03','0',23,1,'b',123);
/*!40000 ALTER TABLE `tb_cotizacion` ENABLE KEYS */;
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
