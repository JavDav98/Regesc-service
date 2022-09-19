-- MariaDB dump 10.19  Distrib 10.9.2-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: regesc_simp
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idcurso` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `seccion` varchar(45) NOT NULL,
  `horario` varchar(45) NOT NULL,
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `idcurso_UNIQUE` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=3190051 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES
(3190001,'DESARROLLO HUMANO Y PROFESIONAL','a','07:00 - 09:00'),
(3190002,'METODOLOGÍA DE LA INVESTIGACIÓN','a','09:00 - 11:00'),
(3190003,'CONTABILIDAD I ','a','11:00 - 13:00'),
(3190004,'INTRODUCCION A LOS SISTEMAS DE COMPUTO','a','14:00 - 16:00'),
(3190005,'LÓGICA DE SISTEMAS','a','16:00 - 18:00'),
(3190006,'PRECÁLCULO','b','07:00 - 09:00'),
(3190007,'ÁLGEBRA LINEAL','b','09:00 - 11:00'),
(3190008,'ALGORITMOS','b','11:00 - 13:00'),
(3190009,'CONTABILIDAD II','b','14:00 - 16:00'),
(3190010,'MATEMÁTICA DISCRETA','b','16:00 - 18:00'),
(3190011,'FÍSICA I','c','07:00 - 09:00'),
(3190012,'PROGRAMACIÓN I','c','09:00 - 11:00'),
(3190013,'CÁLCULO I','c','11:00 - 13:00'),
(3190014,'PROCESO ADMINISTRATIVO','c','14:00 - 16:00'),
(3190015,'DERECHO INFORMÁTICO','c','16:00 - 18:00'),
(3190016,'MICROECONOMÍA','d','07:00 - 09:00'),
(3190017,'PROGRAMACIÓN II','d','09:00 - 11:00'),
(3190018,'CÁLCULO II','d','11:00 - 13:00'),
(3190019,'ESTADÍSTICA I','d','14:00 - 16:00'),
(3190020,'FÍSICA II','d','16:00 - 18:00'),
(3190021,'MÉTODOS NUMÉRICOS','e','07:00 - 09:00'),
(3190022,'PROGRAMACIÓN III','e','09:00 - 11:00'),
(3190023,'EMPRENDEDORES DE NEGOCIOS','e','11:00 - 13:00'),
(3190024,'ELECTRÓNICA ANALÓGICA','e','14:00 - 16:00'),
(3190025,'ESTADÍSTICA II','e','16:00 - 18:00'),
(3190026,'INVESTIGACIÓN DE OPERACIONES','a','07:00 - 09:00'),
(3190027,'BASES DE DATOS I','a','09:00 - 11:00'),
(3190028,'AUTÓMATAS Y LENGUAJES FORMALES','a','11:00 - 13:00'),
(3190029,'SISTEMAS OPERATIVOS I ','a','14:00 - 16:00'),
(3190030,'ELECTRÓNICA DIGITAL','b','16:00 - 18:00'),
(3190031,'BASES DE DATOS II','b','07:00 - 09:00'),
(3190032,'ANÁLISIS DE SISTEMAS I','b','09:00 - 11:00'),
(3190033,'SISTEMAS OPERATIVOS II','b','11:00 - 13:00'),
(3190034,'ARQUITECTURA DE COMPUTADORAS I ','b','14:00 - 16:00'),
(3190035,'COMPILADORES','b','16:00 - 18:00'),
(3190036,'DESARROLLO WEB','c','07:00 - 09:00'),
(3190037,'ANÁLISIS DE SISTEMAS II','c','09:00 - 11:00'),
(3190038,'ARQUITECTURA DE COMPUTADORAS I ','c','11:00 - 13:00'),
(3190039,'ÉTICA PROFESIONAL','c','14:00 - 16:00'),
(3190040,'ARQUITECTURA DE COMPUTADORAS II','c','16:00 - 18:00'),
(3190041,'ADMINISTRACIÓN DE TECNOLOGÍAS DE INFORMACIÓN','d','07:00 - 09:00'),
(3190042,'INGENIERÍA DE SOFTWARE','d','09:00 - 11:00'),
(3190043,'PROYECTO DE GRADUACIÓN I','d','11:00 - 13:00'),
(3190044,'REDES DE COMPUTADORAS II ','d','14:00 - 16:00'),
(3190045,'INTELIGENCIA ARTIFICIAL','d','16:00 - 18:00'),
(3190046,'TELECOMUNICACIONES','e','07:00 - 09:00'),
(3190047,'SEMINARIO DE TECNOLOGÍAS DE INFORMACIÓN','e','09:00 - 11:00'),
(3190048,'ASEGURAMIENTO DE LA CALIDAD DE SOFTWARE','e','11:00 - 13:00'),
(3190049,'PROYECTO DE GRADUACIÓN II ','e','14:00 - 16:00'),
(3190050,'SEGURIDAD Y AUDITORÍA DE SISTEMAS','e','16:00 - 18:00');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculaestudiante`
--

DROP TABLE IF EXISTS `matriculaestudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriculaestudiante` (
  `idmatriculaestudiante` int NOT NULL AUTO_INCREMENT,
  `nota1` varchar(45) NOT NULL DEFAULT '0',
  `nota2` varchar(45) NOT NULL DEFAULT '0',
  `nota3` varchar(45) NOT NULL DEFAULT '0',
  `notafinal` varchar(45) NOT NULL DEFAULT '0',
  `student_carnetstudent` int NOT NULL,
  `curso_idcurso` int NOT NULL,
  PRIMARY KEY (`idmatriculaestudiante`),
  UNIQUE KEY `idmatriculaestudiante_UNIQUE` (`idmatriculaestudiante`),
  KEY `fk_matriculaestudiante_student1_idx` (`student_carnetstudent`),
  KEY `fk_matriculaestudiante_curso1_idx` (`curso_idcurso`),
  CONSTRAINT `fk_matriculaestudiante_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `fk_matriculaestudiante_student1` FOREIGN KEY (`student_carnetstudent`) REFERENCES `student` (`carnetstudent`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculaestudiante`
--

LOCK TABLES `matriculaestudiante` WRITE;
/*!40000 ALTER TABLE `matriculaestudiante` DISABLE KEYS */;
INSERT INTO `matriculaestudiante` VALUES
(1,'0','0','0','0',319021,3190001),
(2,'0','0','0','0',319022,3190001),
(3,'0','0','0','0',319023,3190001),
(4,'0','0','0','0',319024,3190001),
(5,'0','0','0','0',319025,3190001),
(6,'0','0','0','0',319026,3190001),
(7,'0','0','0','0',319027,3190001),
(8,'0','0','0','0',319028,3190001),
(9,'0','0','0','0',319029,3190001),
(10,'0','0','0','0',3190210,3190001),
(11,'0','0','0','0',319021,3190002),
(12,'0','0','0','0',319022,3190002),
(13,'0','0','0','0',319023,3190002),
(14,'0','0','0','0',319024,3190002),
(15,'0','0','0','0',319025,3190002),
(16,'0','0','0','0',319026,3190002),
(17,'0','0','0','0',319027,3190002),
(18,'0','0','0','0',319028,3190002),
(19,'0','0','0','0',319029,3190002),
(20,'0','0','0','0',3190210,3190002),
(21,'0','0','0','0',319021,3190003),
(22,'0','0','0','0',319022,3190003),
(23,'0','0','0','0',319023,3190003),
(24,'0','0','0','0',319024,3190003),
(25,'0','0','0','0',319025,3190003),
(26,'0','0','0','0',319026,3190003),
(27,'0','0','0','0',319027,3190003),
(28,'0','0','0','0',319028,3190003),
(29,'0','0','0','0',319029,3190003),
(30,'0','0','0','0',3190210,3190003),
(31,'0','0','0','0',319021,3190004),
(32,'0','0','0','0',319022,3190004),
(33,'0','0','0','0',319023,3190004),
(34,'0','0','0','0',319024,3190004),
(35,'0','0','0','0',319025,3190004),
(36,'0','0','0','0',319026,3190004),
(37,'0','0','0','0',319027,3190004),
(38,'0','0','0','0',319028,3190004),
(39,'0','0','0','0',319029,3190004),
(40,'0','0','0','0',3190210,3190004),
(41,'0','0','0','0',319021,3190005),
(42,'0','0','0','0',319022,3190005),
(43,'0','0','0','0',319023,3190005),
(44,'0','0','0','0',319024,3190005),
(45,'0','0','0','0',319025,3190005),
(46,'0','0','0','0',319026,3190005),
(47,'0','0','0','0',319027,3190005),
(48,'0','0','0','0',319028,3190005),
(49,'0','0','0','0',319029,3190005),
(50,'0','0','0','0',3190210,3190005);
/*!40000 ALTER TABLE `matriculaestudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculaprofesor`
--

DROP TABLE IF EXISTS `matriculaprofesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriculaprofesor` (
  `idmatriculaprofesor` int NOT NULL AUTO_INCREMENT,
  `profesor_carnetprofesor` int NOT NULL,
  `curso_idcurso` int NOT NULL,
  PRIMARY KEY (`idmatriculaprofesor`),
  UNIQUE KEY `idmatriculaprofesor_UNIQUE` (`idmatriculaprofesor`),
  KEY `fk_matriculaprofesor_profesor1_idx` (`profesor_carnetprofesor`),
  KEY `fk_matriculaprofesor_curso1_idx` (`curso_idcurso`),
  CONSTRAINT `fk_matriculaprofesor_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `fk_matriculaprofesor_profesor1` FOREIGN KEY (`profesor_carnetprofesor`) REFERENCES `profesor` (`carnetprofesor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculaprofesor`
--

LOCK TABLES `matriculaprofesor` WRITE;
/*!40000 ALTER TABLE `matriculaprofesor` DISABLE KEYS */;
INSERT INTO `matriculaprofesor` VALUES
(1,3190311,3190001),
(2,3190312,3190002),
(3,3190313,3190003),
(4,3190314,3190004),
(5,3190115,3190005);
/*!40000 ALTER TABLE `matriculaprofesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `cui` bigint NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` int NOT NULL,
  `direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`cui`),
  UNIQUE KEY `cui_UNIQUE` (`cui`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES
(3028008180101,'Francis Javier de Jesús','Davila Lemus',46778963,'casa1'),
(3028008180102,'Peter','Parker',45613785,'casa2'),
(3028008180103,'Brus','Banner',54625894,'casa3'),
(3028008180104,'Natasha','Romanoft',48562315,'casa4'),
(3028008180105,'Homero','Adams',48562135,'casa5'),
(3028008180106,'Miguel','Diaz',75935164,'casa6'),
(3028008180107,'Samanta','Laruso',75315928,'casa7'),
(3028008180108,'Samuel','Winchester',68426842,'casa8'),
(3028008180109,'Dick','Grayson',96174325,'casa9'),
(3028008180110,'Jonh','Lunch',89456123,'casa10'),
(3028008180111,'Juan','Guti',45645652,'casa11'),
(3028008180112,'Erick','Alguno',45862132,'casa12'),
(3028008180113,'Jose','Bermejo',45862138,'casa13'),
(3028008180114,'Genesis','Anton',56218935,'casa14'),
(3028008180115,'Luisa','Losano',32189665,'casa15');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `carnetprofesor` int NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `persona_cui` bigint NOT NULL,
  PRIMARY KEY (`carnetprofesor`),
  KEY `fk_profesor_persona_idx` (`persona_cui`),
  CONSTRAINT `fk_profesor_persona` FOREIGN KEY (`persona_cui`) REFERENCES `persona` (`cui`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES
(3190115,'3190115','password',3028008180115),
(3190311,'3190311','password',3028008180111),
(3190312,'3190312','password',3028008180112),
(3190313,'3190313','password',3028008180113),
(3190314,'3190314','password',3028008180114);
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `carnetstudent` int NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `persona_cui` bigint NOT NULL,
  PRIMARY KEY (`carnetstudent`),
  KEY `fk_student_persona1_idx` (`persona_cui`),
  CONSTRAINT `fk_student_persona1` FOREIGN KEY (`persona_cui`) REFERENCES `persona` (`cui`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES
(319021,'319021','password',3028008180101),
(319022,'319022','password',3028008180102),
(319023,'319023','password',3028008180103),
(319024,'319024','password',3028008180104),
(319025,'319025','password',3028008180105),
(319026,'319026','password',3028008180106),
(319027,'319027','password',3028008180107),
(319028,'319028','password',3028008180108),
(319029,'319029','password',3028008180109),
(3190210,'3190210','password',3028008180110);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-18 20:21:59
