CREATE DATABASE  IF NOT EXISTS `sglfc` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `sglfc`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sglfc
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.17-MariaDB

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
-- Table structure for table `pergunta`
--

DROP TABLE IF EXISTS `pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pergunta` (
  `CD_PERGUNTA` int(11) NOT NULL AUTO_INCREMENT,
  `MODULO` int(11) NOT NULL,
  `ENUNCIADO` text NOT NULL,
  `DICA` text DEFAULT NULL,
  `EXPLICACAO` text DEFAULT NULL,
  `VALOR` int(11) NOT NULL,
  PRIMARY KEY (`CD_PERGUNTA`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pergunta`
--

LOCK TABLES `pergunta` WRITE;
/*!40000 ALTER TABLE `pergunta` DISABLE KEYS */;
INSERT INTO `pergunta` VALUES (1,1,'A afirmação \" A menina tem olhos azuis ou o menino é loiro\" tem como sentença logicamente equivalente:','A menina tem olhos azuis ou o menino é loiro: ~P V Q.','P é suficiente para Q; Q é necessário para P; A menina tem olhos azuis ou o menino é loiro: ~P V Q. Se a menina não tem olhos azuis, então o menino é loiro: P -->  Q.',1),(2,1,'A negação da proposição F4 é logicamente equivalente à proposição \"Não havia um caixa eletrônico em frente ao banco ou o dinheiro não foi entregue a mulher de Gavião\".','Para negativar um conectivo lógico representado pelo \"ou\" é necessário negar as duas proposições separadamente e troca-se o conectivo \"ou\" pelo \"e\".','',1),(3,1,'Se as proposições \"Eu não registrei minha candidatura dentro do prazo\" e Não poderei concorrer a nenhum cargo nessas eleições\" forem falsas, também será falsa a proposição P, independentemente do valor lógico da proposição \"Eu serei barrado pela lei da ficha limpa\".','','',1),(4,2,'Uma proposição equivalente de ? → ? é: ','','',1),(5,2,'A negação da proposição “Antônio passa na prova ou vai ao cinema em Novo Horizonte” é: ','Segundo as leis de Morgan, para negar uma disjunção, negamos as proposições e trocamos o “ou” por “e”, isto é, vira uma conjunção.','',1),(6,2,'Se P, Q e S são proposições verdadeiras, então o valor lógico de (? ∨ ?) → ~? é: ','Se P e Q são verdadeiras, então ? ∨ ? é verdadeira. Como S é verdadeira, então ~S é falsa. ','',1),(7,3,'Se P, Q, R e S são proposições simples, então o número de linhas da tabela-verdade da proposição composta (? ∨ ?) ⟷ (¬? ∨ ?) é: ','Como são 4 proposições simples distintas, o número de linhas da tabela-verdade será 2^4 = 16 linhas.','',1),(8,3,'As afirmações a seguir são verdadeiras. I. Carlos é dentista ou é fisiologista. II. Carlos não é fisiologista ou é psicólogo. III. Carlos é dentista ou é psicólogo. IV. Carlos não é psicólogo.','','',1),(9,3,'Se a temperatura cair, então precisarei me agasalhar. Se me agasalhar, então não poderei correr. Se puder correr, então não chegarei tarde. A temperatura caiu. Desse modo, é correto concluir que','','',1),(10,4,'Considere as afirmações: I. Se o diretor é forte, então o secretário é fraco ou o diretor é forte. II. João é alto ou Paulo é gordo e João não é alto e Paulo não é gordo. III. Carlos não é tímido e, se Pedro é expansivo, então Carlos é tímido. Na ordem em que estão expressas, as afirmações são, respectivamente, uma:','','',1),(11,4,'Assinale a alternativa que apresenta uma tautologia.','','',1),(12,4,'É sabido que tautologia é uma proposição cuja tabela-verdade sempre resulta em valores lógicos verdadeiros. Sendo P uma proposição lógica, assinale a alternativa incorreta.','','',1),(13,5,'“Se Pedro mente, então é segunda-feira” é logicamente equivalente à afirmação','','',1),(14,5,'Considerando duas proposições simples, p e q, a proposição ~p -> p é equivalente a','','',1),(15,5,'“Se a ave voa, então o sapo pula” é equivalente a frase:','','',1),(16,6,'Se Milton ou Tomas, apenas um deles, é administrador judiciário, então Valéria é policial. Sabendo-se que Valéria não é policial, conclui-se, corretamente, que','','',1),(17,6,'Considere as seguintes afirmativas: Se X é líquido, então não é azul. Se X não é líquido, então é vegetal.Pode-se concluir logicamente que:','','',1),(18,6,'Em seu discurso de posse, determinado prefeito afirmou: “Se há incentivos fiscais, então as empresas não deixam essa cidade”. Considerando a afirmação do prefeito como verdadeira, então também é verdadeiro afirmar:','','',1),(19,7,'Demonstrar a implicação: p ∧ q ⇒ p','','',1),(20,7,'Demonstrar a implicação: p ⇒ p v q','','',1),(21,7,'Demonstrar a implicação: (p → q) ∧ p ⇒q','','',1),(22,8,'Um argumento é válido:','A verdade das premissas é incompatível com a falsidade da conclusão.','',1),(23,8,'Uma inferência lógica é uma tautologia da forma:','As inferências lógicas são representadas por p => q','',1),(24,8,'Segundo a regra Modus Tollens (MT), qual o resultado de P -> q       ~q?','','',1),(25,9,'O que são proposições inconsistentes?','','',1),(26,9,'Como chamamos uma condicional com argumento não válido?','','',1),(27,9,'Verifique a validade do argumento p -> q, q ˫ p','','',1),(28,10,'Segundo a Demonstração Condicional, como fazemos para demonstrar a validade de um argumento cuja conclusão tem forma condicional A -> B?','','',1),(29,10,'Segundo a Demonstração Indireta, como fazemos para demonstrar a validade do argumento p -> ~q, r -> q ˫ ~(p ^ r)','','',1),(30,11,'Determine a forma simbólica da preposição: Abacates e laranjas são deliciosos e nutritivos. (A(x) – x é um abacate; L(x) – x e uma laranja; D(x) – x é delicioso; N(x) – x é nutritivo)','Forma lógica: se x é um abacate ou x é uma laranja, então x é delicioso e x é nutritivo','',1),(31,11,'Determine a forma lógica da preposição: São raros os políticos que não mentem. (R(x) - x é raro; P(x) - x é político; M(x) - x mente)','Forma simbólica: P(x) ꓥ ~M(x) -> R(x)','',1),(32,11,'Determine a forma lógica da preposição: Gatos pretos são melhores caçadores que outros gatos. (G(x) - x é um gato; P(x) - x é preto; C(x,y) - x é melhor caçador que y)','Forma simbólica: G(x) ꓥ P(x) ꓥ G(y) ꓥ ~P(y) -> C(x,y)','',1),(33,12,'Considere como verdadeira a proposição: “Nenhum matemático é não dialético”. Laura enuncia que tal proposição implica, necessariamente, que:','','',1),(34,12,'Considere verdadeiras as seguintes proposições: I - Nenhum professor é fumante. II - Existem médicos fumantes. A partir dessas proposições, é correto afirmar:','','',1),(35,12,'Se todo X é Y, todo Y é Z e todo W é Y, avalie se as afirmativas a seguir são falsas (F) ou verdadeiras:','','',1);
/*!40000 ALTER TABLE `pergunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resposta`
--

DROP TABLE IF EXISTS `resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resposta` (
  `CD_RESPOSTA` int(11) NOT NULL AUTO_INCREMENT,
  `CD_PERGUNTA` int(11) NOT NULL,
  `DC_ALTERNATIVA` text NOT NULL,
  `IC_CORRETO` tinyint(4) NOT NULL,
  PRIMARY KEY (`CD_RESPOSTA`),
  KEY `resposta_0_idx` (`CD_PERGUNTA`),
  CONSTRAINT `resposta_0` FOREIGN KEY (`CD_PERGUNTA`) REFERENCES `pergunta` (`CD_PERGUNTA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta`
--

LOCK TABLES `resposta` WRITE;
/*!40000 ALTER TABLE `resposta` DISABLE KEYS */;
INSERT INTO `resposta` VALUES (1,1,'Se o menino é loiro, então a menina tem olhos',0),(2,1,'Se a menina tem olhos azuis, então o menino é',0),(3,1,'Se a menina não tem olhos azuis, então o meni',1),(4,1,'Não é verdade que se a menina tem olhos azuis',0),(5,2,'Certo',0),(6,2,'Errado',1),(7,3,'Certo',0),(8,3,'Errado',1),(9,4,'~Q → ¬P ',1),(10,4,'Q -> P',0),(11,4,'Q V P',0),(12,4,'Q ^ P',0),(13,5,'Antônio não passa na prova.',0),(14,5,'Antônio não vai ao cinema em Novo Horizonte. ',0),(15,5,'Antônio não passa na prova ou não vai ao cinema em Novo Horizonte.',0),(16,5,'Antônio não passa na prova e não vai ao cinema em Novo Horizonte.',1),(17,6,'Falso',1),(18,6,'Verdadeiro',1),(19,6,'Duvidoso',0),(20,6,'Incerto',0),(21,7,'4',0),(22,7,'8',0),(23,7,'16',1),(24,7,'32',0),(25,8,'apenas dentista',1),(26,8,'apenas fisiologista',0),(27,8,'dentista e psicólogo',0),(28,8,'dentista e fisiologista',0),(29,9,'não corri e precisei me agasalhar',1),(30,9,'corri e não cheguei tarde',0),(31,9,'não corri e não precisei me agasalhar',0),(32,9,'cheguei tarde e precisei me agasalhar',0),(33,10,'tautologia, contradição e contingência',1),(34,10,'contingência, contradição e tautologia',0),(35,10,'contradição, tautologia e contingência',0),(36,10,'contingência, tautologia e contradição',0),(37,11,'p ∧ p',0),(38,11,'p ∨ p',1),(39,11,'p ∧ ~p',0),(40,11,'p ∨ ~p',0),(41,12,'(P v ~P) é um caso de tautologia',0),(42,12,'(P ^ ~P) não é um caso de tautologia',0),(43,12,'~(P ^ ~P) não é um caso de tautologia',1),(44,12,'(P ↔ ~P) não é um caso de tautologia',0),(45,13,'Pedro mente todas as segundas-feiras.',0),(46,13,'Se Pedro não mente, então não é segunda-feira',0),(47,13,'Se não é segunda-feira, então Pedro não mente',1),(48,13,'Pedro mente, ou é segunda-feira',0),(49,14,'~p',0),(50,14,'p',1),(51,14,'~q',0),(52,14,'q',0),(53,15,'A ave não voa ou o sapo pula.',1),(54,15,'O sapo não pula ou a ave voa.',0),(55,15,'Se o sapo pula, então a ave não voa.',0),(56,15,'O sapo pula se, e somente se, a ave voa.',0),(57,16,'Milton e Tomas não são administradores judiciários.',0),(58,16,'Apenas Tomas não é administrador judiciário',0),(59,16,'Apenas Milton não é administrador judiciário',0),(60,16,'Milton é administrador judiciário se, e somente se, Tomas também for.',1),(61,17,'se X é azul, então é vegetal',1),(62,17,'se X é vegetal, então é azul',0),(63,17,'se X não é azul, então não é líquido',0),(64,17,'se X não é vegetal, então é azul',0),(65,18,'Se não há incentivos fiscais, então as empresas deixam essa cidade.',1),(66,18,'Se as empresas não deixam essa cidade, então há incentivos fiscais.',0),(67,18,'Se as empresas deixam essa cidade, então não há incentivos fiscais.',0),(68,18,'As empresas deixam essa cidade se há incentivos fiscais',0),(69,19,'p ∧ q → p ⇔ (p ∨ q) ∨ p ⇔ (~q ∨ ~q) ∨ q ⇔ (~q ∨ p) ∨ ~q ⇔ T ∨ ~q ⇔ T',0),(70,19,'p ∧ q → p ⇔ ~(p ∨ q) ∨ p ⇔ (~p ∨ ~q) ∨ p ⇔ (~p ∨ p) ∨ ~q ⇔ T ∨ ~q ⇔ T',1),(71,19,'p ∧ q → p ⇔ (p ∨ q) ∨ p ⇔ (p ∨ ~q) ∨ P ⇔ (~q ∨ p) ∨ ~q ⇔ F ∨ ~q ⇔ F',0),(72,19,'p ∧ q → p ⇔ ~(p ∨ q) ∨ q ⇔ (~p ∨ ~q) ∨ p ⇔ (~q ∨ q) ∨ ~q ⇔ T ∨ ~q ⇔ T',0),(73,20,'p → p ∨ q ⇔ ~p ∨ (p ∨ q) ⇔ (~p ∨ p) ∨ q ⇔ T ⇔ q ⇔ T',1),(74,20,'p → p ∨ q ⇔ ~ p∨ (p  ∧  q) ⇔ (~p ∨ p) ∨ q ⇔ T ⇔ q ⇔ T',0),(75,20,'p → p ∨ q ⇔ ~ p∨ (p ∨ q) ⇔ (~q ∨ q) ∨ q ⇔ T ⇔ p ⇔ T',0),(76,20,'p → p ∨ q ⇔ ~ p∨ (q ∧  p) ⇔ (~q∨ q) ∨ q ⇔ T ⇔ q ⇔ T',0),(77,21,'(p → q) ∧ p → q ⇔ ~((p → q) ∧ p) v q ⇔ ~((~p v q) ∧ p) v q ⇔ ~(~p v q) v ~p v q ⇔ (p ^ ~q) v ~p v q ⇔ (p ^ ~q ) v ~(p ^ ~q) ⇔ T',1),(78,21,'(p → q) ∧ p → q ⇔ ~((p → q) ∧ p) v p ⇔ ~((p v q) v p) v q ⇔ ~(~p v q) v ~p v q ⇔ (~p ^ ~q) v ~p v q ⇔ (p ^ ~q ) v ~(p ^ ~q) ⇔ T',0),(79,21,'(p → q) ∧ p → q ⇔ ~((p → q) ∧ p) v q ⇔ ~((~p v q) v p) v q ⇔ ~(~p v q) ∧ ~p v q ⇔ (p ^ ~q) v ~p v q ⇔ (p ^ ~q ) v ~(p ^ ~q) ⇔ T',0),(80,21,'(p → q) ∧ p → p ⇔ ~((p → q) ∧ p) v p ⇔ ~((p v q) ∧ p) v q ⇔ ~(~p v q) v ~p v p ⇔ (~p ^ ~q) v ~p v q ⇔ (p ^ ~q ) v ~(p ^ ~q) ⇔ T',0),(81,22,'se e somente se a conclusão Q é verdadeira todas as vezes que as premissas são verdadeiras',1),(82,22,'quando a conclusão Q é verdadeira pelo menos uma vez em que a premissa é verdadeira',0),(83,22,'quando a conclusão Q é verdadeira na maioria das vezes em que a premissa é verdadeira',0),(84,22,'se e somente se a conclusão Q é falsa todas as vezes que as premissas são verdadeiras',0),(85,23,'p -> q',1),(86,23,'p <- q',0),(87,23,'p ˫ q',0),(88,23,'p +q',0),(89,24,'~q',0),(90,24,'~p',1),(91,24,'p',0),(92,24,'q',0),(93,25,'Proposições que não podem ser falsar simultaneamente',0),(94,25,'Duas ou mais proposições que não poder ser simultaneamente verdadeiras',1),(95,25,'Quaisquer duas proposições simultaneamente verdadeiras',0),(96,25,'Nenhuma das anteriores',0),(97,26,'Sofisma',1),(98,26,'Tautologia',0),(99,26,'Premissa',0),(100,26,'Nenhuma das anteriores',0),(101,27,'Argumento válido',0),(102,27,'Sofisma',0),(103,27,'Tautologia',0),(104,27,'Nenhuma das anteriores',0),(105,28,'Introduzindo A como premissa adicional',1),(106,28,'Introduzindo B como premissa adicional',0),(107,28,'Introduzindo ~A como premissa adicional',0),(108,28,'Nenhuma das anteriores',0),(109,29,'Introduzindo a premissa adicional p ^ r',1),(110,29,'Introduzindo a premissa adicional ~(p ^ r)',0),(111,29,'Introduzindo a premissa adicional p V r',0),(112,29,'Nenhuma das anteriores',0),(113,30,'A(x) -> D(x) ꓥ N(x)',0),(114,30,'A(x) V L (x) -> D(x) ꓥ N(x)',1),(115,30,'A(x) -> D(x) V N(x)',0),(116,30,'A(x) ꓥ L (x) -> D(x) V N(x)',0),(117,31,'se x é político e x não mente, então x é raro',1),(118,31,'se x é raro então x não mente e x é político',0),(119,31,'se x é político e x é raro, então x não mente',0),(120,31,'se x é político então x não mente',0),(121,32,'se y é preto e x é gato, então x é melhor caçador que y',0),(122,32,'se x é preto e y não é preto, então x é gato e y é gato',0),(123,32,'se x é um gato e x é preto então x é melhor caçador que y',0),(124,32,'se x é um gato e x é preto e y é um gato e y não é preto, então x é melhor caçador que y',1),(125,33,'I e III',1),(126,33,'I e II',0),(127,33,'III e IV',0),(128,33,'II e IV',0),(129,34,'Todo médico é fumante',0),(130,34,'Nem todo médico é professor',1),(131,34,'Nem todo professor é médico',0),(132,34,'Existem médicos não fumantes',0),(133,35,'F, F e F',0),(134,35,'F, F e V',0),(135,35,'V, V e V',0),(136,35,'V, F e F',0);
/*!40000 ALTER TABLE `resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `CD_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(45) NOT NULL,
  `SENHA` varchar(45) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  `INSTITUICAO` varchar(45) NOT NULL,
  PRIMARY KEY (`CD_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'pedro@teste.com','admin','Pedro Cotta Badaro','UFJF'),(2,'pedrocottabadaro@ice.ufjf.br','teste','teste','UFJF');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_pergunta`
--

DROP TABLE IF EXISTS `usuario_pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_pergunta` (
  `CD_USUARIO_PERGUNTA` int(11) NOT NULL AUTO_INCREMENT,
  `CD_USUARIO` int(11) NOT NULL,
  `CD_PERGUNTA` int(11) NOT NULL,
  `VALOR` varchar(45) NOT NULL,
  PRIMARY KEY (`CD_USUARIO_PERGUNTA`),
  KEY `usuario_pergunta_1_idx` (`CD_PERGUNTA`),
  KEY `usuario_pergunta_0_idx` (`CD_USUARIO`),
  CONSTRAINT `usuario_pergunta_1` FOREIGN KEY (`CD_PERGUNTA`) REFERENCES `pergunta` (`CD_PERGUNTA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_pergunta`
--

LOCK TABLES `usuario_pergunta` WRITE;
/*!40000 ALTER TABLE `usuario_pergunta` DISABLE KEYS */;
INSERT INTO `usuario_pergunta` VALUES (1,2,1,'1');
/*!40000 ALTER TABLE `usuario_pergunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sglfc'
--

--
-- Dumping routines for database 'sglfc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-09 22:08:53
