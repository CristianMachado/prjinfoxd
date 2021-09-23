CREATE DATABASE  IF NOT EXISTS `dbinfoxd3` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `dbinfoxd3`;
-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: dbinfoxd
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbclientes`
--

DROP TABLE IF EXISTS `tbclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbclientes` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCli` varchar(100) NOT NULL,
  `endCli` varchar(100) DEFAULT NULL,
  `foneCli` varchar(50) DEFAULT NULL,
  `emailCli` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbclientes`
--

LOCK TABLES `tbclientes` WRITE;
/*!40000 ALTER TABLE `tbclientes` DISABLE KEYS */;
INSERT INTO `tbclientes` VALUES (1,'Devid','Rua trindade, 1003','99993333','devid@teste.com'),(2,'Guilherme','Rua santa fé, 165','887774452','guilherme@teste.com'),(3,'Luiz','Rua são luiz, 1022','555448852','luiz@teste.com');
/*!40000 ALTER TABLE `tbclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbos`
--

DROP TABLE IF EXISTS `tbos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbos` (
  `idos` int(11) NOT NULL AUTO_INCREMENT,
  `data_os` timestamp NOT NULL DEFAULT current_timestamp(),
  `equipamento` varchar(100) NOT NULL,
  `defeito` varchar(150) NOT NULL,
  `servico` varchar(150) DEFAULT NULL,
  `tecnico` varchar(30) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `idcliente` int(11) NOT NULL,
  PRIMARY KEY (`idos`),
  KEY `idcliente` (`idcliente`),
  CONSTRAINT `tbos_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `tbclientes` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbos`
--

LOCK TABLES `tbos` WRITE;
/*!40000 ALTER TABLE `tbos` DISABLE KEYS */;
INSERT INTO `tbos` VALUES (1,'2021-09-10 19:51:27','Notebook','Não liga','Troca Bateria','Cristian',350.00,1),(2,'2021-09-10 19:51:27','Desktop','Liga sem Imagem','Troca Memoria Ram','Cristian',150.00,2),(3,'2021-09-10 19:51:27','Desktop Gamer','Liga mais sem SO','Formatar','Cristian',120.00,3),(4,'2021-09-10 19:52:26','Notebook','Não liga','Troca Bateria','Cristian',350.00,1),(5,'2021-09-10 19:52:26','Desktop','Liga sem Imagem','Troca Memoria Ram','Cristian',150.00,2),(6,'2021-09-10 19:52:26','Desktop Gamer','Liga mais sem SO','Formatar','Cristian',120.00,3);
/*!40000 ALTER TABLE `tbos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbusuario`
--

DROP TABLE IF EXISTS `tbusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbusuario` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `fone` varchar(15) DEFAULT NULL,
  `login` varchar(15) NOT NULL,
  `senha` varchar(15) NOT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbusuario`
--

LOCK TABLES `tbusuario` WRITE;
/*!40000 ALTER TABLE `tbusuario` DISABLE KEYS */;
INSERT INTO `tbusuario` VALUES (1,'Cristian','99401-764','cristian858','123'),(2,'Tiane','98403-794','tiane69','123'),(3,'Ana','99852-853','mãe','123'),(4,'Administrador','88888888','admin','admin');
/*!40000 ALTER TABLE `tbusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbinfoxd'
--

--
-- Dumping routines for database 'dbinfoxd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-17 14:04:47
