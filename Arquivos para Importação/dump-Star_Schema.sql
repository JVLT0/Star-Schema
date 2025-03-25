-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: star_schema
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `d_curso`
--

DROP TABLE IF EXISTS `d_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d_curso` (
  `ID_Curso` int NOT NULL AUTO_INCREMENT,
  `C_Nome` varchar(50) NOT NULL,
  `C_Area_Estudo` varchar(50) NOT NULL,
  `C_Nivel` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_curso`
--

LOCK TABLES `d_curso` WRITE;
/*!40000 ALTER TABLE `d_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_data`
--

DROP TABLE IF EXISTS `d_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d_data` (
  `ID_Data` int NOT NULL,
  `Data_Oferta` date NOT NULL,
  `Ano` int NOT NULL,
  `Mes` int NOT NULL,
  `Nome_Mes` varchar(10) NOT NULL,
  `Trimestre` int NOT NULL,
  `Dia_Semana` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_Data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_data`
--

LOCK TABLES `d_data` WRITE;
/*!40000 ALTER TABLE `d_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_departamento`
--

DROP TABLE IF EXISTS `d_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d_departamento` (
  `ID_Departamento` int NOT NULL AUTO_INCREMENT,
  `D_Nome` varchar(50) NOT NULL,
  `D_Coordenador` varchar(50) NOT NULL,
  `D_Localizacao` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_departamento`
--

LOCK TABLES `d_departamento` WRITE;
/*!40000 ALTER TABLE `d_departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_professor`
--

DROP TABLE IF EXISTS `d_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `d_professor` (
  `ID_Professor` int NOT NULL AUTO_INCREMENT,
  `P_Nome` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_professor`
--

LOCK TABLES `d_professor` WRITE;
/*!40000 ALTER TABLE `d_professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `d_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_cursos_professores`
--

DROP TABLE IF EXISTS `f_cursos_professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `f_cursos_professores` (
  `ID_Fato` int NOT NULL AUTO_INCREMENT,
  `Quantidade_Cursos` int NOT NULL,
  `Carga_Horaria` double NOT NULL,
  `ID_Professor` int NOT NULL,
  `ID_Curso` int NOT NULL,
  `ID_Departamento` int NOT NULL,
  `ID_Data_Oferta` int NOT NULL,
  PRIMARY KEY (`ID_Fato`),
  KEY `ID_Professor` (`ID_Professor`),
  KEY `ID_Curso` (`ID_Curso`),
  KEY `ID_Departamento` (`ID_Departamento`),
  KEY `ID_Data_Oferta` (`ID_Data_Oferta`),
  CONSTRAINT `f_cursos_professores_ibfk_1` FOREIGN KEY (`ID_Professor`) REFERENCES `d_professor` (`ID_Professor`),
  CONSTRAINT `f_cursos_professores_ibfk_2` FOREIGN KEY (`ID_Curso`) REFERENCES `d_curso` (`ID_Curso`),
  CONSTRAINT `f_cursos_professores_ibfk_3` FOREIGN KEY (`ID_Departamento`) REFERENCES `d_departamento` (`ID_Departamento`),
  CONSTRAINT `f_cursos_professores_ibfk_4` FOREIGN KEY (`ID_Data_Oferta`) REFERENCES `d_data` (`ID_Data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_cursos_professores`
--

LOCK TABLES `f_cursos_professores` WRITE;
/*!40000 ALTER TABLE `f_cursos_professores` DISABLE KEYS */;
/*!40000 ALTER TABLE `f_cursos_professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'star_schema'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-25 15:00:15
