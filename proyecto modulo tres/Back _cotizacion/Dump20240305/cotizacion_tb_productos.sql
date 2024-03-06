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
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_productos` (
  `id_productos` int NOT NULL AUTO_INCREMENT,
  `detalle_producto` varchar(150) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_productos`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` VALUES (1,'Portatil leno Ryzen 7 20gb 512 gb 5700u fhd ideapad 3',2189000,'1'),(2,'Portatil lenovo ideapad 5 amd ryzen 7-5700u-8gb',2699900,'1'),(3,'Portatil lenovo ideapad 3 ryzen 7 5700u ramm 8gb 5sd',2293466,'1'),(4,'Portatil lenovo ryzen 3 8b 512gb ideal pad slim 3',1699900,'1'),(5,'Portatil lenovo v14 intel core i5-1235u',5159800,'1'),(6,'Portatil Gamer  lenovo LOQ geforce Rtx 3050 itelcore i5 serie h ',5599900,'1'),(7,'Portatil Gamer HP Victus 15b GeForce RTX 3050 ',3299000,'1'),(8,'Portatil Gamer Asus TUf Dash  F 15',4299900,'1'),(9,'Tablet lenovo M9 pantalla 9 pulg cam 8mp 64gb',649900,'1'),(10,'Tablet lenovo M11 Pantalla 10.95 pilg 128gb',999990,'1'),(11,'Tablet Lenovo P12 256gb pantalla 12.7 pulg',2099900,'1'),(12,'Tablet Lenovo ta M8 4ta Gen Tb300fu 2 gb 32gb',549000,'1'),(13,'Lenovo Audifonos dispositivos ',97890,'1'),(14,'lenovo audi',27800,'1');
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
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
