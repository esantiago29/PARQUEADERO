CREATE DATABASE  IF NOT EXISTS `parqueadero` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `parqueadero`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: parqueadero
-- ------------------------------------------------------
-- Server version	8.0.35

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
  `TIEMPO` int NOT NULL,
  `TOTAL` int NOT NULL,
  `FECHA` varchar(50) NOT NULL,
  `DIA_CORTE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_FACTURA`),
  KEY `ID_PROP` (`ID_PROP`),
  KEY `ID_VEHICULO` (`ID_VEHICULO`),
  KEY `TIPO_TARIFA` (`TIPO_TARIFA`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_PROP`) REFERENCES `propietario` (`ID_PROP`),
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`ID_VEHICULO`) REFERENCES `vehiculo` (`ID_VEHICULO`),
  CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`TIPO_TARIFA`) REFERENCES `tarifa` (`TIPO_TARIFA`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,1,1,'MENSUALIDAD',0,140000,'01/02/2023','1'),(2,2,2,'MENSUALIDAD',0,80000,'01/02/2023','1'),(3,3,3,'MENSUALIDAD',0,140000,'01/02/2023','1'),(4,4,4,'MENSUALIDAD',0,140000,'01/02/2023','1'),(5,5,5,'MENSUALIDAD',0,140000,'01/02/2023','1'),(6,6,6,'MENSUALIDAD',0,140000,'01/02/2023','1'),(7,7,7,'MENSUALIDAD',0,140000,'01/02/2023','1'),(8,8,8,'MENSUALIDAD',0,140000,'01/02/2023','1'),(9,9,9,'MENSUALIDAD',0,140000,'01/02/2023','1'),(10,10,10,'MENSUALIDAD',0,140000,'01/02/2023','1'),(11,11,11,'MENSUALIDAD',0,80000,'03/02/2023','3'),(12,12,12,'MENSUALIDAD',0,80000,'04/02/2023','4'),(13,13,13,'MENSUALIDAD',0,80000,'05/02/2023','5'),(14,14,14,'MENSUALIDAD',0,80000,'06/02/2023','6'),(15,15,15,'MENSUALIDAD',0,80000,'07/02/2023','7'),(16,16,16,'MENSUALIDAD',0,140000,'08/02/2023','8'),(17,17,17,'MENSUALIDAD',0,140000,'08/02/2023','8'),(18,18,18,'MENSUALIDAD',0,140000,'08/02/2023','8'),(19,19,19,'MENSUALIDAD',0,140000,'09/02/2023','9'),(20,20,20,'MENSUALIDAD',0,140000,'09/02/2023','9'),(21,21,21,'DIARIO',60,3000,'07/02/2023',''),(22,22,22,'DIARIO',120,6000,'08/02/2023',''),(23,23,23,'DIARIO',120,6000,'08/02/2023',''),(24,24,24,'DIARIO',60,5400,'08/02/2023',''),(25,25,25,'DIARIO',120,10800,'09/02/2023','');
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
  CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`ID_FACTURA`) REFERENCES `factura` (`ID_FACTURA`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,1,1,'01/02/2023'),(2,2,2,'01/02/2023'),(3,3,3,'01/02/2023'),(4,4,4,'01/02/2023'),(5,5,5,'01/02/2023'),(6,6,6,'01/02/2023'),(7,7,7,'01/02/2023'),(8,8,8,'01/02/2023'),(9,9,9,'01/02/2023'),(10,10,10,'01/02/2023'),(11,11,11,'01/02/2023'),(12,12,12,'01/02/2023'),(13,13,13,'01/02/2023'),(14,14,14,'01/02/2023'),(15,15,15,'01/02/2023'),(16,16,16,'01/02/2023'),(17,17,17,'01/02/2023'),(18,18,18,'01/02/2023'),(19,19,19,'01/02/2023'),(20,20,20,'01/02/2023'),(21,21,21,'07/02/2023'),(22,22,22,'08/02/2023'),(23,23,23,'08/02/2023'),(24,24,24,'09/02/2023'),(25,25,25,'09/02/2023');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
INSERT INTO `propietario` VALUES (1,'EDUARD','BASTIDAS','3132977352','2023-01-01','1'),(2,'SANTIAGO','BASTIDAS','3142977352','2023-01-01','1'),(3,'JOHAN','GUERRERO','3006105831','2023-01-01','1'),(4,'JUAN','CHACON','3135223639','2023-01-01','1'),(5,'JULIAN','JIMENEZ','3208866632','2023-01-01','1'),(6,'ALBERTO','GIL','3142986652','2023-01-01','1'),(7,'LUNA','GALVIS','3105122831','2023-01-01','1'),(8,'DAVID','ORTIZ','3135344639','2023-01-01','1'),(9,'NEYDA','CHACON','3202785122','2023-01-01','1'),(10,'LUIS','CADAVID','3178978939','2023-01-01','1'),(11,'NICOLAS','JIMENEZ','3204566632','2023-03-01','3'),(12,'SANTIAGO','GIL','3142988352','2023-04-01','4'),(13,'DAVID','GALVIS','3105105831','2023-05-01','5'),(14,'SAMUEL','ORTIZ','3135332639','2023-03-01','6'),(15,'MARGARITA','CHACON','3202175122','2023-07-01','7'),(16,'MARLON','CADAVID','3178278939','2023-08-01','8'),(17,'KEVIN','MONGUI','3142067977','2023-08-01','8'),(18,'GUILLERMO','SANTAMARIA','3175624456','2023-08-01','8'),(19,'VICTOR','MOSQUERA','3204398637','2023-09-01','9'),(20,'LUISA','CAPERA','3014947963','2023-09-01','9'),(21,'JIMENA','ESCOBAR','3222053851','0-0-0','0'),(22,'LUISA','DOMIGUEZ','3014947963','0-0-0','0'),(23,'JUAN','CAPERA','31035897422','0-0-0','0'),(24,'LIUS','CARDOZO','3142048798','0-0-0','0'),(25,'LUNA','PEREZ','3114949863','0-0-0','0');
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
INSERT INTO `tarifa` VALUES ('DIARIO','50','90'),('MENSUALIDAD','80000','140000');
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
  CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`TIPO_TARIFA`) REFERENCES `tarifa` (`TIPO_TARIFA`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (1,1,'MENSUALIDAD','RZK-849','0'),(2,2,'MENSUALIDAD','YDZ-25C','0'),(3,3,'MENSUALIDAD','RBQ-868','0'),(4,4,'MENSUALIDAD','TTT-777','0'),(5,5,'MENSUALIDAD','TTT-888','0'),(6,6,'MENSUALIDAD','TMT-777','0'),(7,7,'MENSUALIDAD','SWT-777','0'),(8,8,'MENSUALIDAD','SER-877','0'),(9,9,'MENSUALIDAD','PPO-755','0'),(10,10,'MENSUALIDAD','RRR-798','0'),(11,11,'MENSUALIDAD','REE-78A','0'),(12,12,'MENSUALIDAD','OPQ-55B','0'),(13,13,'MENSUALIDAD','STP-87C','0'),(14,14,'MENSUALIDAD','OOT-77D','0'),(15,15,'MENSUALIDAD','TKL-88E','0'),(16,16,'MENSUALIDAD','POP-577','0'),(17,17,'MENSUALIDAD','SET-661','0'),(18,18,'MENSUALIDAD','SOR-877','0'),(19,19,'MENSUALIDAD','ADC-785','0'),(20,20,'MENSUALIDAD','RAM-988','0'),(21,21,'DIARIO','RAM-77L','60'),(22,22,'DIARIO','FJH-74L','120'),(23,23,'DIARIO','RAM-77L','120'),(24,24,'DIARIO','RRF-778','60'),(25,25,'DIARIO','WER-456','120');
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'parqueadero'
--

--
-- Dumping routines for database 'parqueadero'
--
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarFactura`(
    IN nuevo_id_fac INT, 
    IN nuevo_id_prop INT, 
    IN nuevo_id_vehiculo INT, 
    IN nuevo_tipo_tarifa VARCHAR(50), 
    IN nuevo_tiempo INT,
    IN nuevo_total INT, 
    IN nuevo_fecha VARCHAR(50),
    IN nuevo_dia_corte VARCHAR(50)
)
BEGIN
    UPDATE factura
    SET 
        ID_PROP = nuevo_id_prop,
        ID_VEHICULO = nuevo_id_vehiculo,
        TIPO_TARIFA = nuevo_tipo_tarifa,
        TIEMPO = nuevo_tiempo,
        TOTAL = nuevo_total,
        FECHA = nuevo_fecha,
        DIA_CORTE = nuevo_dia_corte
    WHERE ID_FACTURA = nuevo_id_fac;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarPagos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarPagos`(
    IN nuevo_num_pago INT, 
	IN nuevo_id_prop int,
    In nuevo_id_fac int,
    IN nuevo_dia_pago VARCHAR(50)
)
BEGIN
    UPDATE factura
    SET 
		ID_PROP = nuevo_id_prop,
		ID_FACTURA = nuevo_id_fac,
		DIA_PAGO = nuevo_dia_pago
    WHERE NUM_PAGO = nuevo_num_pago;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarPropietario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarPropietario`(IN nuevo_id_prop int, 
										nuevo_nombre varchar(50), 
										nuevo_apellido varchar(50), 
                                        nuevo_contacto varchar(50), 
                                        nuevo_fecha_inicio varchar(50), 
                                        nuevo_dia_corte varchar(50))
BEGIN

	UPDATE propietario
    SET NOMBRE = nuevo_nombre, 
		APELLIDO = nuevo_apellido,
        CONTACTO = nuevo_contacto,
        FECHA_INICIO = nuevo_fecha_inicio,
        DIA_CORTE = nuevo_dia_corte
	WHERE ID_PROP = nuevo_id_prop;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarVehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarVehiculo`(IN nuevo_id_vehiculo int, 
										nuevo_propietario int, 
										nuevo_tarifa varchar(50), 
                                        nuevo_placa varchar(50), 
                                        nuevo_tiempo varchar(50))
BEGIN
	
	UPDATE vehiculo
    SET ID_PROP = nuevo_propietario, 
		TIPO_TARIFA = nuevo_tarifa,
        PLACA = nuevo_placa,
        TIEMPO = nuevo_tiempo
	WHERE ID_VEHICULO = nuevo_id_vehiculo;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CrearFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearFactura`(IN id_prop int, id_vehiculo int, tipo_tarifa varchar(50), tiempo int, total int, fecha varchar(50), dia_corte varchar(50))
BEGIN	
    INSERT INTO factura (ID_PROP, ID_VEHICULO,  TIPO_TARIFA, TIEMPO, TOTAL, FECHA, DIA_CORTE )
    VALUES
		(id_prop, id_vehiculo, tipo_tarifa, tiempo, total, fecha, dia_corte);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CrearPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearPago`(IN id_prop int, id_factura int, dia_pago varchar(50))
BEGIN	
    INSERT INTO factura (ID_PROP, ID_FACTURA, DIA_PAGO)
    VALUES
		(id_prop, id_factura, dia_pago);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CrearPropietario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearPropietario`(IN nombre varchar(50), apellido varchar(50), contacto varchar(50), fecha_inicio varchar(50), dia_corte varchar(50))
BEGIN	
    INSERT INTO propietario (NOMBRE, APELLIDO, CONTACTO, FECHA_INICIO, DIA_CORTE)
    VALUES
    (nombre, apellido, contacto, fecha_inicio, dia_corte);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CrearVehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CrearVehiculo`(IN id_prop int , tipo_tarifa varchar(50), placa varchar(50), tiempo varchar(50) )
BEGIN	
    INSERT INTO vehiculo (ID_PROP, TIPO_TARIFA, PLACA, TIEMPO)
    VALUES
    (id_prop, tipo_tarifa, placa, tiempo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarFactura`(in id_delete_fac int)
BEGIN

	DELETE FROM factura
    WHERE ID_FACTURA = id_delete_fac;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarPago`(in num_pago_delete int)
BEGIN

	DELETE FROM propietario
    WHERE NUM_PAGO = num_pago_delete;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarPropietario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarPropietario`(in id_delete_prop int)
BEGIN

	DELETE FROM propietario
    WHERE ID_PROP = id_delete_prop;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarVehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarVehiculo`(in id_delete_vehiculo int)
BEGIN

	DELETE FROM vehiculo
    WHERE ID_PROP = id_delete_vehiculo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MostrarFactura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarFactura`()
BEGIN
	SELECT * FROM factura;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MostrarPagos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarPagos`()
BEGIN
	SELECT * FROM pagos;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MostrarPropietarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarPropietarios`()
BEGIN	
    SELECT * FROM propietario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MostrarTarifa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarTarifa`()
BEGIN
	SELECT * FROM tarifa;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MostrarVehiculos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MostrarVehiculos`()
BEGIN	
    SELECT * FROM vehiculo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 15:46:37
