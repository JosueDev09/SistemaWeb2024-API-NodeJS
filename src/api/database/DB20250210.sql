CREATE DATABASE  IF NOT EXISTS `dbcumtual` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbcumtual`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbcumtual
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
-- Table structure for table `tbcity`
--

DROP TABLE IF EXISTS `tbcity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcity` (
  `intCity` int(11) NOT NULL AUTO_INCREMENT,
  `strCityName` varchar(250) DEFAULT NULL,
  `intState` int(11) DEFAULT NULL,
  `intStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`intCity`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcity`
--

LOCK TABLES `tbcity` WRITE;
/*!40000 ALTER TABLE `tbcity` DISABLE KEYS */;
INSERT INTO `tbcity` VALUES (1,'Cordoba',1,1);
/*!40000 ALTER TABLE `tbcity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbclients`
--

DROP TABLE IF EXISTS `tbclients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbclients` (
  `intClient` int(11) NOT NULL AUTO_INCREMENT,
  `strFullName` varchar(250) DEFAULT NULL,
  `strPhone` varchar(50) DEFAULT NULL,
  `strEmail` varchar(50) DEFAULT NULL,
  `datDateUp` datetime DEFAULT NULL,
  `intRol` int(11) DEFAULT NULL,
  `intCity` int(11) DEFAULT NULL,
  `intState` int(11) DEFAULT NULL,
  `strAdress` varchar(250) DEFAULT NULL,
  `intCP` int(11) DEFAULT NULL,
  `strReferences` varchar(250) DEFAULT NULL,
  `intPayment` int(11) DEFAULT NULL,
  PRIMARY KEY (`intClient`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbclients`
--

LOCK TABLES `tbclients` WRITE;
/*!40000 ALTER TABLE `tbclients` DISABLE KEYS */;
INSERT INTO `tbclients` VALUES (1,'Alex Marquez','5584893998','alex@gmail.com','2025-02-06 00:00:00',3,1,1,'Monterrey NL',64000,'Juarez',2);
/*!40000 ALTER TABLE `tbclients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tborders`
--

DROP TABLE IF EXISTS `tborders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tborders` (
  `intOrder` int(11) NOT NULL AUTO_INCREMENT,
  `intClient` int(11) DEFAULT NULL,
  `intProducts` int(11) DEFAULT NULL,
  `intPayment` int(11) DEFAULT NULL,
  `dblTotal` decimal(18,3) DEFAULT NULL,
  `intStatusOrder` int(11) DEFAULT NULL,
  `intQuantityProducts` int(11) DEFAULT NULL,
  `datDateUp` date DEFAULT NULL,
  PRIMARY KEY (`intOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tborders`
--

LOCK TABLES `tborders` WRITE;
/*!40000 ALTER TABLE `tborders` DISABLE KEYS */;
INSERT INTO `tborders` VALUES (1,1,1,1,150.000,1,4,'2025-02-10');
/*!40000 ALTER TABLE `tborders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpaymentsmethod`
--

DROP TABLE IF EXISTS `tbpaymentsmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbpaymentsmethod` (
  `intPayment` int(11) NOT NULL AUTO_INCREMENT,
  `strPaymentMethod` varchar(250) DEFAULT NULL,
  `intStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`intPayment`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpaymentsmethod`
--

LOCK TABLES `tbpaymentsmethod` WRITE;
/*!40000 ALTER TABLE `tbpaymentsmethod` DISABLE KEYS */;
INSERT INTO `tbpaymentsmethod` VALUES (1,'Debit Card',1),(2,'Credit Card',1),(3,'Efective',1),(4,'SPEI',1);
/*!40000 ALTER TABLE `tbpaymentsmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbproducts`
--

DROP TABLE IF EXISTS `tbproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbproducts` (
  `idProduct` int(11) NOT NULL AUTO_INCREMENT,
  `strCodeProduct` varchar(250) DEFAULT NULL,
  `strNameProduct` varchar(250) DEFAULT NULL,
  `dblPrice` decimal(18,2) DEFAULT NULL,
  `intQuantity` int(11) DEFAULT NULL,
  `intCategorie` int(11) DEFAULT NULL,
  `intStatus` int(11) DEFAULT NULL,
  `datDate` datetime DEFAULT NULL,
  `strDescriptionProduct` varchar(250) DEFAULT NULL,
  `intColorProduct` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbproducts`
--

LOCK TABLES `tbproducts` WRITE;
/*!40000 ALTER TABLE `tbproducts` DISABLE KEYS */;
INSERT INTO `tbproducts` VALUES (1,'awmm24kar98','Shirt',250.00,5,1,1,'2024-10-30 00:00:00','Prueba',NULL);
/*!40000 ALTER TABLE `tbproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbrol`
--

DROP TABLE IF EXISTS `tbrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbrol` (
  `intRolId` int(11) NOT NULL AUTO_INCREMENT,
  `strRolName` varchar(250) DEFAULT NULL,
  `intEstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`intRolId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbrol`
--

LOCK TABLES `tbrol` WRITE;
/*!40000 ALTER TABLE `tbrol` DISABLE KEYS */;
INSERT INTO `tbrol` VALUES (1,'SUPER ADMIN',1),(2,'DIRECTOR',1),(3,'CLIENT',1);
/*!40000 ALTER TABLE `tbrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbstate`
--

DROP TABLE IF EXISTS `tbstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbstate` (
  `intState` int(11) NOT NULL AUTO_INCREMENT,
  `strStateName` varchar(250) DEFAULT NULL,
  `intStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`intState`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbstate`
--

LOCK TABLES `tbstate` WRITE;
/*!40000 ALTER TABLE `tbstate` DISABLE KEYS */;
INSERT INTO `tbstate` VALUES (1,'Veracruz',1);
/*!40000 ALTER TABLE `tbstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbstatusorders`
--

DROP TABLE IF EXISTS `tbstatusorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbstatusorders` (
  `intStatusOrder` int(11) NOT NULL AUTO_INCREMENT,
  `strStatusName` varchar(250) DEFAULT NULL,
  `strDescriptionStatus` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`intStatusOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbstatusorders`
--

LOCK TABLES `tbstatusorders` WRITE;
/*!40000 ALTER TABLE `tbstatusorders` DISABLE KEYS */;
INSERT INTO `tbstatusorders` VALUES (1,'Pendiente','El pedido ha sido creado pero no se ha procesado aún. El pago o la confirmación aún están pendientes.'),(2,'Procesando','	El pedido ha sido confirmado y está siendo procesado. El pago ha sido recibido (o está en proceso) y los productos están siendo preparados para el envío.'),(3,'Enviado','	El pedido ha sido empaquetado y ha sido enviado al cliente. En este estado, el pedido está en tránsito hacia la dirección de envío.'),(4,'Entregado','El pedido ha sido entregado al cliente. Se ha completado el proceso de envío y el cliente ha recibido los productos.'),(5,'Cancelado','El pedido ha sido cancelado, ya sea por el cliente o por el sistema (por ejemplo, debido a problemas con el pago, stock agotado, etc.).'),(6,'En espera','El pedido está pendiente de alguna acción adicional (por ejemplo, falta la confirmación de pago, o se está esperando stock de algún producto).'),(7,'Pago fallido','El pago del pedido no se pudo procesar con éxito. Puede ser por un error con la tarjeta de crédito, saldo insuficiente, o problemas técnicos con el sistema de pagos.'),(8,'Confirmado','El pedido ha sido confirmado por el sistema, pero aún no se ha comenzado el procesamiento. El cliente ha completado la compra y el pedido está registrado.'),(9,'Completado','	El pedido se ha completado con éxito. Todos los pasos del proceso de compra, envío y pago se han finalizado correctamente.');
/*!40000 ALTER TABLE `tbstatusorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbusers`
--

DROP TABLE IF EXISTS `tbusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbusers` (
  `intUserId` int(11) NOT NULL AUTO_INCREMENT,
  `strFullName` varchar(250) DEFAULT NULL,
  `strUser` varchar(250) DEFAULT NULL,
  `strPassword` varchar(250) DEFAULT NULL,
  `strPhoneNumber` varchar(250) DEFAULT NULL,
  `strEmail` varchar(250) DEFAULT NULL,
  `intRolId` int(11) DEFAULT NULL,
  `intEstatus` int(11) DEFAULT NULL,
  `datDate` datetime DEFAULT NULL,
  PRIMARY KEY (`intUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbusers`
--

LOCK TABLES `tbusers` WRITE;
/*!40000 ALTER TABLE `tbusers` DISABLE KEYS */;
INSERT INTO `tbusers` VALUES (1,'Josue Flores','JosueFg','admin','5584893998','josue@gmail.com',1,1,'2025-02-10 12:43:58'),(2,'Fito Flores','FitoFg','admin1','5584893998','fito@gmail.com',2,1,'2025-02-10 12:44:21');
/*!40000 ALTER TABLE `tbusers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10 17:56:18
