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
-- Table structure for table `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(60) NOT NULL,
  `estado` char(1) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `correo_usuario` varchar(45) NOT NULL,
  `contraseña_usuario` varchar(500) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuarios`
--

LOCK TABLES `tb_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` VALUES (1,'MARY ROMERO','1','kra 81 a # 5-1','mary1@gmail.com','123456m','3027944255'),(2,'Andres Lugo','1','Kra 1 # 25-1','andre1@gmail.com','123456an','3074325674'),(3,'Ale Lopez','1','kra 2 # 5-2','alex1@gmail.com','123456Ale','3021547897'),(4,'Nelson Ramirez','1','cll 5 # 24-1','nelson35@gamail.com','123456nel','3084563214'),(5,'Diego Parrita','1','cll 9 # 32-2','diego51@gmail.com','12345r','3027651986'),(6,'Jesus Labarca','1','cll 45 a # 5 -2','susj1@gmail.com','123456jes','3016572893'),(7,'lania Rivas','1','cll 3 # 2 -1','lexne1@gmail.com','123456lexne','3098654292'),(8,'Lisbeth Morillo','1','Cll 7 # 23-78 s','mor23@gmail.com','123456lisbr','3018736674'),(9,'liany Cueto','1','cll 5 # 21 - 2','cueto12@gmail.com','123456cue','3218987763'),(10,'Pedro Perez','1','Cll 3 # 22-9','perez1@gmail.com','123456perz','3245689010'),(11,'Laudy Pereira','1','Cll 2 # 5-1 ','Perei34@gmail.com','123456pere','3098626625'),(12,'Chicho Palote','1','Cll 1 # 5 -6s','','123456chi','3098776616'),(13,'Jesus ope','1','cll 2','lop@gmail.com','12345','321456789');
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;
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
