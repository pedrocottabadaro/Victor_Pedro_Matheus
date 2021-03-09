-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sglfc
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pergunta`
--

DROP TABLE IF EXISTS `pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pergunta` (
  `CD_PERGUNTA` int(11) NOT NULL AUTO_INCREMENT,
  `MODULO` int(11) NOT NULL,
  `ENUNCIADO` text NOT NULL,
  `DICA` text DEFAULT NULL,
  `EXPLICACAO` text DEFAULT NULL,
  `VALOR` int(11) NOT NULL,
  PRIMARY KEY (`CD_PERGUNTA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pergunta`
--

/*!40000 ALTER TABLE `pergunta` DISABLE KEYS */;
INSERT INTO `pergunta` VALUES (1,1,'A afirmação \" A menina tem olhos azuis ou o menino é loiro\" tem como sentença logicamente equivalente:','A menina tem olhos azuis ou o menino é loiro: ~P V Q.','P é suficiente para Q; Q é necessário para P; A menina tem olhos azuis ou o menino é loiro: ~P V Q. Se a menina não tem olhos azuis, então o menino é loiro: P -->  Q.',1);
/*!40000 ALTER TABLE `pergunta` ENABLE KEYS */;

--
-- Table structure for table `resposta`
--

DROP TABLE IF EXISTS `resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resposta` (
  `CD_RESPOSTA` int(11) NOT NULL AUTO_INCREMENT,
  `CD_PERGUNTA` int(11) NOT NULL,
  `DC_ALTERNATIVA` varchar(45) NOT NULL,
  `IC_CORRETO` tinyint(4) NOT NULL,
  PRIMARY KEY (`CD_RESPOSTA`),
  KEY `resposta_0_idx` (`CD_PERGUNTA`),
  CONSTRAINT `resposta_0` FOREIGN KEY (`CD_PERGUNTA`) REFERENCES `pergunta` (`CD_PERGUNTA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta`
--

/*!40000 ALTER TABLE `resposta` DISABLE KEYS */;
INSERT INTO `resposta` VALUES (1,1,'Se o menino é loiro, então a menina tem olhos',0),(2,1,'Se a menina tem olhos azuis, então o menino é',0),(3,1,'Se a menina não tem olhos azuis, então o meni',1),(4,1,'Não é verdade que se a menina tem olhos azuis',0);
/*!40000 ALTER TABLE `resposta` ENABLE KEYS */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `CD_USUARIO` int(11) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `SENHA` varchar(45) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  `INSTITUICAO` varchar(45) NOT NULL,
  PRIMARY KEY (`CD_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

--
-- Table structure for table `usuario_pergunta`
--

DROP TABLE IF EXISTS `usuario_pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario_pergunta` (
  `CD_USUARIO_PERGUNTA` int(11) NOT NULL AUTO_INCREMENT,
  `CD_USUARIO` int(11) NOT NULL,
  `CD_PERGUNTA` int(11) NOT NULL,
  `VALOR` varchar(45) NOT NULL,
  PRIMARY KEY (`CD_USUARIO_PERGUNTA`),
  KEY `usuario_pergunta_0_idx` (`CD_USUARIO`),
  KEY `usuario_pergunta_1_idx` (`CD_PERGUNTA`),
  CONSTRAINT `usuario_pergunta_0` FOREIGN KEY (`CD_USUARIO`) REFERENCES `usuario` (`CD_USUARIO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_pergunta_1` FOREIGN KEY (`CD_PERGUNTA`) REFERENCES `pergunta` (`CD_PERGUNTA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_pergunta`
--

/*!40000 ALTER TABLE `usuario_pergunta` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_pergunta` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-09 13:50:50
