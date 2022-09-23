-- MariaDB dump 10.19  Distrib 10.9.3-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: regesc_simp2
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
  `curso_idcurso` int NOT NULL,
  `student_carnetstudent` int NOT NULL,
  PRIMARY KEY (`idmatriculaestudiante`),
  UNIQUE KEY `idmatriculaestudiante_UNIQUE` (`idmatriculaestudiante`),
  KEY `fk_matriculaestudiante_curso1_idx` (`curso_idcurso`),
  KEY `fk_matriculaestudiante_student1_idx` (`student_carnetstudent`),
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
(1,'0','0','0','0',3190001,319021),
(2,'0','0','0','0',3190001,319022),
(3,'0','0','0','0',3190001,319023),
(4,'0','0','0','0',3190001,319024),
(5,'0','0','0','0',3190001,319025),
(6,'0','0','0','0',3190001,319026),
(7,'0','0','0','0',3190001,319027),
(8,'0','0','0','0',3190001,319028),
(9,'0','0','0','0',3190001,319029),
(10,'0','0','0','0',3190001,3190210),
(11,'0','0','0','0',3190002,319021),
(12,'0','0','0','0',3190002,319022),
(13,'0','0','0','0',3190002,319023),
(14,'0','0','0','0',3190002,319024),
(15,'0','0','0','0',3190002,319025),
(16,'0','0','0','0',3190002,319026),
(17,'0','0','0','0',3190002,319027),
(18,'0','0','0','0',3190002,319028),
(19,'0','0','0','0',3190002,319029),
(20,'0','0','0','0',3190002,3190210),
(21,'0','0','0','0',3190003,319021),
(22,'0','0','0','0',3190003,319022),
(23,'0','0','0','0',3190003,319023),
(24,'0','0','0','0',3190003,319024),
(25,'0','0','0','0',3190003,319025),
(26,'0','0','0','0',3190003,319026),
(27,'0','0','0','0',3190003,319027),
(28,'0','0','0','0',3190003,319028),
(29,'0','0','0','0',3190003,319029),
(30,'0','0','0','0',3190003,3190210),
(31,'0','0','0','0',3190004,319021),
(32,'0','0','0','0',3190004,319022),
(33,'0','0','0','0',3190004,319023),
(34,'0','0','0','0',3190004,319024),
(35,'0','0','0','0',3190004,319025),
(36,'0','0','0','0',3190004,319026),
(37,'0','0','0','0',3190004,319027),
(38,'0','0','0','0',3190004,319028),
(39,'0','0','0','0',3190004,319029),
(40,'0','0','0','0',3190004,3190210),
(41,'0','0','0','0',3190005,319021),
(42,'0','0','0','0',3190005,319022),
(43,'0','0','0','0',3190005,319023),
(44,'0','0','0','0',3190005,319024),
(45,'0','0','0','0',3190005,319025),
(46,'0','0','0','0',3190005,319026),
(47,'0','0','0','0',3190005,319027),
(48,'0','0','0','0',3190005,319028),
(49,'0','0','0','0',3190005,319029),
(50,'0','0','0','0',3190005,3190210);
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
  `curso_idcurso` int NOT NULL,
  `profesor_carnetprofesor` int NOT NULL,
  PRIMARY KEY (`idmatriculaprofesor`),
  UNIQUE KEY `idmatriculaprofesor_UNIQUE` (`idmatriculaprofesor`),
  KEY `fk_matriculaprofesor_curso1_idx` (`curso_idcurso`),
  KEY `fk_matriculaprofesor_profesor1_idx` (`profesor_carnetprofesor`),
  CONSTRAINT `fk_matriculaprofesor_curso1` FOREIGN KEY (`curso_idcurso`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `fk_matriculaprofesor_profesor1` FOREIGN KEY (`profesor_carnetprofesor`) REFERENCES `profesor` (`carnetprofesor`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculaprofesor`
--

LOCK TABLES `matriculaprofesor` WRITE;
/*!40000 ALTER TABLE `matriculaprofesor` DISABLE KEYS */;
INSERT INTO `matriculaprofesor` VALUES
(1,3190001,3190311),
(2,3190002,3190312),
(3,3190003,3190313),
(4,3190004,3190314),
(5,3190005,3190115),
(6,3190006,3190311),
(7,3190007,3190312),
(8,3190008,3190313),
(9,3190009,3190314),
(10,3190010,3190115),
(11,3190011,3190311),
(12,3190012,3190312),
(13,3190013,3190313),
(14,3190014,3190314),
(15,3190015,3190115),
(16,3190016,3190311),
(17,3190017,3190312),
(18,3190018,3190313),
(19,3190019,3190314),
(20,3190020,3190115),
(21,3190021,3190311),
(22,3190022,3190312),
(23,3190023,3190313),
(24,3190024,3190314),
(25,3190025,3190115),
(26,3190026,3190311),
(27,3190027,3190312),
(28,3190028,3190313),
(29,3190029,3190314),
(30,3190030,3190115),
(31,3190031,3190311),
(32,3190032,3190312),
(33,3190033,3190313),
(34,3190034,3190314),
(35,3190035,3190115),
(36,3190036,3190311),
(37,3190037,3190312),
(38,3190038,3190313),
(39,3190039,3190314),
(40,3190040,3190115),
(41,3190041,3190311),
(42,3190042,3190312),
(43,3190043,3190313),
(44,3190044,3190314),
(45,3190045,3190115),
(46,3190046,3190311),
(47,3190047,3190312),
(48,3190048,3190313),
(49,3190049,3190314),
(50,3190050,3190115);
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
  `nacimiento` timestamp NOT NULL,
  `email` varchar(45) NOT NULL,
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
(3028008180101,'Francis Javier de Jesús','Davila Lemus',46778963,'casa1','1998-06-25 06:00:00','ñlkasjdf@ñlakd.com'),
(3028008180102,'Peter','Parker',45613785,'casa2','1991-05-18 06:00:00','jgajga@jga.com'),
(3028008180103,'Brus','Banner',54625894,'casa3','1988-12-31 06:00:00','gjh@gmail.com'),
(3028008180104,'Natasha','Romanoft',48562315,'casa4','1999-07-19 06:00:00','popand@gmail.com'),
(3028008180105,'Miguel','Diaz',45613785,'casa2','2004-06-20 06:00:00','06mdiax@yahoo.com'),
(3028008180106,'Miguel','Diaz',75935164,'casa6','2000-04-17 06:00:00','06mdiax@yahoo.com'),
(3028008180107,'Samanta','Laruso',75315928,'casa7','2002-02-19 06:00:00','sla94@gmail.com'),
(3028008180108,'Samuel','Winchester',68426842,'casa8','2004-03-14 06:00:00','swin6585@outlook.com'),
(3028008180109,'Dick','Grayson',96174325,'casa9','2006-11-10 06:00:00','dgrayson85@warner.com'),
(3028008180110,'Jonh','Lunch',89456123,'casa10','2012-06-05 06:00:00','Lunch@wwe.com'),
(3028008180111,'Juan','Guti',45645652,'casa11','2014-07-19 06:00:00','gutij@gmail.com'),
(3028008180112,'Erick','Alguno',45862132,'casa12','1970-03-29 06:00:00','erick-a@gmail.com'),
(3028008180113,'Jose','Bermejo',45862138,'casa13','1998-06-25 00:00:00','jbermejo@mail.com'),
(3028008180114,'Genesis','Anton',56218935,'casa14','1995-11-23 06:00:00','ganton@gmail.com'),
(3028008180115,'Luisa','Losano',32189665,'casa15','2001-07-28 06:00:00','llosano@mail.com'),
(3030008180105,'Miguel','Diaz',45613785,'casa2','2004-06-20 06:00:00','06mdiax@yahoo.com');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `carnetprofesor` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `persona_cui` bigint NOT NULL,
  PRIMARY KEY (`carnetprofesor`),
  UNIQUE KEY `carnetprofesor_UNIQUE` (`carnetprofesor`),
  KEY `fk_profesor_persona_idx` (`persona_cui`),
  CONSTRAINT `fk_profesor_persona` FOREIGN KEY (`persona_cui`) REFERENCES `persona` (`cui`)
) ENGINE=InnoDB AUTO_INCREMENT=3190315 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `carnetstudent` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `persona_cui` bigint NOT NULL,
  PRIMARY KEY (`carnetstudent`),
  UNIQUE KEY `carnetstudent_UNIQUE` (`carnetstudent`),
  KEY `fk_student_persona1_idx` (`persona_cui`),
  CONSTRAINT `fk_student_persona1` FOREIGN KEY (`persona_cui`) REFERENCES `persona` (`cui`)
) ENGINE=InnoDB AUTO_INCREMENT=3190213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
(3190210,'3190210','password',3028008180110),
(3190211,'user16','prueba1',3028008180105),
(3190212,'user16','prueba1',3030008180105);
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

-- Dump completed on 2022-09-22 23:32:33
