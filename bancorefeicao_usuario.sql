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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `CPF` varchar(11) NOT NULL,
  `Nome_Completo` varchar(45) NOT NULL,
  `Super_User` tinyint NOT NULL,
  `CEP` varchar(8) DEFAULT NULL,
  `Senha` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Tel` varchar(11) NOT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('12345678901','lucas pereira doidao',0,'44056424','12345678','asrt@fdsk','98765432'),('24769087461','fabio da silva',0,'44056245','kjh@123gh','123@lkjhs.com','97542371'),('43567890765','doido da silva doido',0,'44056420','1234567','asds@gmail.com','34509769'),('44444444444','tiago pereira',0,'78632516','cftyhge','asfd@gmail.br','98765434'),('75436289043','Maria das Graças',1,'87645326','jdsga234','asdf@gmail.teste','09987642'),('77777777771','Katia Gloria',0,'75432769','45kjh','123@.com','98756432'),('87651246794','diego da silva',0,'44056231','qweq345','asd@dsa.com','43560987'),('87654327654','caio doido',0,'44056423','32456','asd@gmail','87654372'),('97534265879','Alice dias',0,'09876543','7432hfds','teste@bomba.bum','09843245'),('97564392432','Fatima dos Santos',0,'98764325','8743kjss','dsfd@gmail.com','87653276');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
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
