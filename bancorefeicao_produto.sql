-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bancorefeicao
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `Id` int NOT NULL,
  `Descricao` varchar(250) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `Peso` decimal(10,0) NOT NULL,
  `Quantidade_Produto` int NOT NULL,
  `Anuncio` varchar(250) NOT NULL,
  `Foto` blob,
  `Preco_Produto` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CPF_idx` (`CPF`),
  CONSTRAINT `CPF_USUARIO_PRODUTO` FOREIGN KEY (`CPF`) REFERENCES `usuario` (`CPF`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1234567,'\"cerveja lager\"','97564392432',350,1,'muito bom',NULL,6),(9764823,'\"cerveja pilsen\"','87654327654',350,3,'bom',NULL,6),(11111110,'\"pf\"','87654327654',400,30,'perfeito',NULL,15),(11111120,'\"lasanha cremosa\"','77777777771',400,28,'perfeito',NULL,15),(12345678,'\"pastel frito\"','12345678901',200,2,'muito bom',NULL,5),(22222201,'\"escondidinho cremoso\"','24769087461',400,12,'perfeito',NULL,15),(22222220,'\"quibe\"','44444444444',300,30,'gostoso',NULL,5),(22222333,'\"macarronada ao vivo\"','43567890765',400,40,'perfeito',NULL,15),(23456789,'\"pastel assado\"','24769087461',200,1,'muito bom',NULL,5),(25478612,'\"cerveja pilsen\"','87654327654',350,9,'bom',NULL,6),(33333127,'\"peixe assado\"','97564392432',400,18,'perfeito',NULL,25),(33388889,'\"empanada\"','75436289043',300,20,'gostoso',NULL,5),(34567890,'\"banana real\"','43567890765',200,1,'muito bom',NULL,5),(44443332,'\"sonho\"','43567890765',300,10,'gostoso',NULL,5),(44444490,'\"camarao alho e oleo\"','87654327654',400,11,'perfeito',NULL,35),(45678901,'\"suco natural\"','44444444444',300,1,'refrescante',NULL,3),(46378091,'\"cerveja pilsen\"','87654327654',350,4,'bom',NULL,6),(55555547,'\"camarao cremoso\"','97534265879',400,11,'perfeito',NULL,35),(56789012,'\"refrigerante de cola\"','75436289043',350,1,'refrescante',NULL,3),(66666669,'\"almondegas molho vermelho\"','24769087461',400,12,'perfeito',NULL,28),(67890123,'\"agua mineral\"','77777777771',500,2,'refrescante',NULL,3),(76548390,'\"cerveja pilsen\"','87654327654',350,8,'bom',NULL,6),(77755533,'\"turco\"','87654327654',300,9,'gostoso',NULL,5),(77774343,'\"carne assada\"','77777777771',400,20,'perfeito',NULL,15),(78901234,'\"pizza crocante\"','87651246794',500,1,'deliciosa',NULL,30),(88822334,'\"esfirra\"','24769087461',300,15,'gostoso',NULL,5),(88888819,'\"churrasco misto\"','87654327654',400,50,'perfeito',NULL,50),(88899922,'\"enrroladinho frito\"','24769087461',300,4,'gostoso',NULL,5),(89012345,'\"vinho seco\"','87654327654',750,3,'muito bom',NULL,30),(90123456,'\"cerveja pilsen\"','97534265879',350,1,'muito bom',NULL,6);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15 22:06:34
