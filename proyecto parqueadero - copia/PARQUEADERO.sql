-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: parqueadero
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `ID_FACTURA` int NOT NULL AUTO_INCREMENT,
  `ID_PROP` int NOT NULL,
  `ID_VEHICULO` int NOT NULL,
  `TIPO_TARIFA` varchar(50) NOT NULL,
  `TIEMPO` varchar(50) NOT NULL,
  `TOTAL` varchar(50) NOT NULL,
  `FECHA` varchar(50) NOT NULL,
  `DIA_CORTE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_FACTURA`),
  KEY `ID_PROP` (`ID_PROP`),
  KEY `ID_VEHICULO` (`ID_VEHICULO`),
  KEY `TIPO_TARIFA` (`TIPO_TARIFA`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_PROP`) REFERENCES `propietario` (`ID_PROP`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`ID_VEHICULO`) REFERENCES `vehiculo` (`ID_VEHICULO`),
  CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`TIPO_TARIFA`) REFERENCES `tarifa` (`TIPO_TARIFA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `NUM_PAGO` int NOT NULL AUTO_INCREMENT,
  `ID_PROP` int NOT NULL,
  `ID_FACTURA` int NOT NULL,
  `DIA_PAGO` varchar(50) NOT NULL,
  PRIMARY KEY (`NUM_PAGO`),
  KEY `ID_PROP` (`ID_PROP`),
  KEY `ID_FACTURA` (`ID_FACTURA`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`ID_PROP`) REFERENCES `propietario` (`ID_PROP`),
  CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`ID_FACTURA`) REFERENCES `factura` (`ID_FACTURA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario`
--

DROP TABLE IF EXISTS `propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietario` (
  `ID_PROP` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `CONTACTO` varchar(50) NOT NULL,
  `FECHA_INICIO` varchar(50) NOT NULL,
  `DIA_CORTE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_PROP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
/*!40000 ALTER TABLE `propietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifa`
--

DROP TABLE IF EXISTS `tarifa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarifa` (
  `TIPO_TARIFA` varchar(50) NOT NULL,
  `MOTO` varchar(50) NOT NULL,
  `CARRO` varchar(50) NOT NULL,
  PRIMARY KEY (`TIPO_TARIFA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifa`
--

LOCK TABLES `tarifa` WRITE;
/*!40000 ALTER TABLE `tarifa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarifa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `ID_VEHICULO` int NOT NULL AUTO_INCREMENT,
  `ID_PROP` int NOT NULL,
  `TIPO_TARIFA` varchar(50) NOT NULL,
  `PLACA` varchar(50) NOT NULL,
  `TIEMPO` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_VEHICULO`),
  KEY `ID_PROP` (`ID_PROP`),
  KEY `TIPO_TARIFA` (`TIPO_TARIFA`),
  CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`ID_PROP`) REFERENCES `propietario` (`ID_PROP`),
  CONSTRAINT `vehiculo_ibfk_2` FOREIGN KEY (`TIPO_TARIFA`) REFERENCES `tarifa` (`TIPO_TARIFA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-15 23:41:10
