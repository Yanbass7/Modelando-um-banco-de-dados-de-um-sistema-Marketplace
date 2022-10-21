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
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `Id_Compra` int NOT NULL,
  `Id_Produto` int NOT NULL,
  `Id_Frete` int NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `Preco_Compra` decimal(10,0) NOT NULL,
  `Descricao_Compra` varchar(45) DEFAULT NULL,
  `Quantidade_Compra` int NOT NULL,
  PRIMARY KEY (`Id_Compra`,`Id_Produto`,`Id_Frete`,`CPF`),
  KEY `Id_Produto_idx` (`Id_Produto`),
  KEY `Id_Frete_idx` (`Id_Frete`),
  KEY `CPF_USUARIO_idx` (`CPF`),
  CONSTRAINT `CPF_USUARIO_COMPRA` FOREIGN KEY (`CPF`) REFERENCES `usuario` (`CPF`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Id_Frete` FOREIGN KEY (`Id_Frete`) REFERENCES `frete` (`Id_Frete`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Id_Produto` FOREIGN KEY (`Id_Produto`) REFERENCES `produto` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (11199,25478612,999000111,'87654327654',6,'nevando',1),(11122200,1234567,111222,'75436289043',6,'bem gelada',2),(22233311,33333127,111222333,'97564392432',25,'frito na hora e saboroso',1),(33344422,11111110,222333444,'87654327654',15,'almoco para uma pessoa',1),(44455533,11111120,333444555,'77777777771',15,'lasanha para uma pessoa',2),(55566644,12345678,444555666,'12345678901',5,'pastel frito na hora',8),(66677755,22222201,555666777,'24769087461',15,'super cremoso',2),(77788866,22222220,666777888,'44444444444',5,'Bem fritinho e da hora',4),(88899977,22222333,777888999,'43567890765',15,'macarrao ao vivo',2),(99900088,23456789,888999000,'24769087461',5,'frito na hora e sem demora',3);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15 22:06:33
