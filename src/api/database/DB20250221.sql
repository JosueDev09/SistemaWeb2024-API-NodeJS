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
-- Table structure for table `tbcategories`
--

DROP TABLE IF EXISTS `tbcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcategories` (
  `intCategorie` int(11) NOT NULL AUTO_INCREMENT,
  `strCategorieName` varchar(250) DEFAULT NULL,
  `strDescription` varchar(250) DEFAULT NULL,
  `intStatus` int(11) DEFAULT NULL,
  `datDateUp` datetime DEFAULT NULL,
  PRIMARY KEY (`intCategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcategories`
--

LOCK TABLES `tbcategories` WRITE;
/*!40000 ALTER TABLE `tbcategories` DISABLE KEYS */;
INSERT INTO `tbcategories` VALUES (1,'Hombre','Todo de hombre',1,'2025-02-17 00:00:00'),(2,'Mujer','Todo de mujer',1,'2025-02-17 00:00:00');
/*!40000 ALTER TABLE `tbcategories` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbclients`
--

LOCK TABLES `tbclients` WRITE;
/*!40000 ALTER TABLE `tbclients` DISABLE KEYS */;
INSERT INTO `tbclients` VALUES (1,'Alex Marquez','5584893998','alex@gmail.com','2025-02-06 00:00:00',3,1,1,'Monterrey NL',64000,'Juarez',2),(2,'Rodolfo Flores','5584893998','fito@gmail.com','2025-02-12 00:00:00',3,1,1,'Cordoba',94510,'Filtros',3);
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
  `intProductColor` int(11) DEFAULT NULL,
  `intProductSize` int(11) DEFAULT NULL,
  PRIMARY KEY (`intOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tborders`
--

LOCK TABLES `tborders` WRITE;
/*!40000 ALTER TABLE `tborders` DISABLE KEYS */;
INSERT INTO `tborders` VALUES (1,1,1,1,150.000,1,4,'2025-02-10',2,3),(2,2,2,2,200.000,1,2,'2025-02-12',1,2);
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
  `intSizeProduct` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbproducts`
--

LOCK TABLES `tbproducts` WRITE;
/*!40000 ALTER TABLE `tbproducts` DISABLE KEYS */;
INSERT INTO `tbproducts` VALUES (1,'awmm24kar98','Playera',250.00,5,1,1,'2024-10-30 00:00:00','Prueba',1,3),(2,'1234','Shorts',150.00,10,1,1,'2025-02-12 00:00:00','Prueba',1,3),(3,'RQF-2347','Gorras',249.00,5,1,1,'2025-02-17 17:36:59','PRUEBA',1,2),(4,'NHW-5223','Over-Size',399.00,5,1,1,'2025-02-17 17:50:25','Prueba',1,4);
/*!40000 ALTER TABLE `tbproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbproducts_inventory`
--

DROP TABLE IF EXISTS `tbproducts_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbproducts_inventory` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intProducto` int(11) DEFAULT NULL,
  `intColor` int(11) DEFAULT NULL,
  `intSize` int(11) DEFAULT NULL,
  `intQuantity` int(11) DEFAULT NULL,
  `intStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbproducts_inventory`
--

LOCK TABLES `tbproducts_inventory` WRITE;
/*!40000 ALTER TABLE `tbproducts_inventory` DISABLE KEYS */;
INSERT INTO `tbproducts_inventory` VALUES (1,1,1,1,5,1),(2,1,1,2,10,1),(3,1,1,3,5,1),(4,1,1,4,8,1),(5,1,2,1,8,1),(6,1,2,2,7,1),(7,1,2,3,6,1),(8,1,2,4,0,1);
/*!40000 ALTER TABLE `tbproducts_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbproductscolor`
--

DROP TABLE IF EXISTS `tbproductscolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbproductscolor` (
  `intColor` int(11) NOT NULL AUTO_INCREMENT,
  `strColorName` varchar(250) DEFAULT NULL,
  `intStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`intColor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbproductscolor`
--

LOCK TABLES `tbproductscolor` WRITE;
/*!40000 ALTER TABLE `tbproductscolor` DISABLE KEYS */;
INSERT INTO `tbproductscolor` VALUES (1,'Negro',1),(2,'Blanco',1),(3,'Azul',1),(4,'Verde',1);
/*!40000 ALTER TABLE `tbproductscolor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbproductssize`
--

DROP TABLE IF EXISTS `tbproductssize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbproductssize` (
  `intSize` int(11) NOT NULL AUTO_INCREMENT,
  `strSizeName` varchar(250) DEFAULT NULL,
  `intStatus` int(11) DEFAULT NULL,
  `strCodeSize` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`intSize`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbproductssize`
--

LOCK TABLES `tbproductssize` WRITE;
/*!40000 ALTER TABLE `tbproductssize` DISABLE KEYS */;
INSERT INTO `tbproductssize` VALUES (1,'Chica',1,'S'),(2,'Mediana',1,'M'),(3,'Grande',1,'L'),(4,'Extra-Grande',1,'XL');
/*!40000 ALTER TABLE `tbproductssize` ENABLE KEYS */;
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

--
-- Dumping routines for database 'dbcumtual'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_authLoginUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_authLoginUsuario`(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(255)
)
BEGIN
   

    -- Verificar si el usuario existe
    IF EXISTS(SELECT 1 FROM tbusers WHERE strUser = p_username AND strPassword = p_password)
    THEN
		SELECT strUser, strPassword, intRolId FROM tbusers 
		WHERE strUser = p_username AND strPassword = p_password;
    ELSE
		SELECT "User not found";
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SaveEmployees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_SaveEmployees`(
	IN p_strFullName VARCHAR(50),
	IN p_strUser VARCHAR(255),
	IN p_strPassword VARCHAR(50),
    IN p_strPhoneNumber VARCHAR(255),
	IN p_strEmail VARCHAR(50),
    IN p_intRolId VARCHAR(255),
	IN p_intStatus int
	
)
BEGIN
	
    
    -- Verificar si el usuario existe
    IF NOT EXISTS(SELECT 1 FROM tbusers WHERE strUser = p_strUser AND strEmail = p_strEmail)
    THEN
		INSERT INTO tbUsers(strFullName, strUser,strPassword,strPhoneNumber, strEmail, intRolId, intEstatus, datDate)
        VALUES(p_strFullName, p_strUser, p_strPassword,p_strPhoneNumber,p_strEmail,p_intRolId, p_intStatus,now());
    ELSE
		SELECT 'ALREADY EXISTS EMPLOYEE';
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbcategories_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbcategories_list`()
BEGIN
	SELECT 
		intCategorie,
        strCategorieName
    FROM tbCategories ;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbClients_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbClients_list`(
)
BEGIN
	SELECT 
    c.intClient,
    SUBSTRING_INDEX(c.strFullName, ' ', 1) AS strFullName,
    SUBSTRING_INDEX(SUBSTRING_INDEX(c.strFullName, ' ', -1), ' ', 1) AS strLastName,
    c.strPhone,
    c.strEmail,
    r.strRolName,
	DATE_FORMAT(c.datDateUp , '%d %b DEL %Y') AS datDateUp,
    ci.strCityName,
    c.intCP,
    c.strAdress,
    c.strReferences,
    pm.strPaymentMethod 
    FROM tbClients C
    INNER JOIN tbRol r ON r.intRolId = C.intRol
    INNER JOIN tbCity ci ON ci.intCity = c.intCity
    INNER JOIN tbPaymentsMethod pm ON pm.intPayment = c.intPayment;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbColors_available_products` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbColors_available_products`(
IN p_stProduct varchar(50)
)
BEGIN

   SET @p_intProduct = (SELECT idProduct FROM tbproducts WHERE strNameProduct = p_stProduct); -- ASI ES CUANDO QUIERO PONER UN DATO DE UNA TABLA EN UNA VARIABLE 
    
	SELECT 
	pi.intColor,
	pc.strColorName
    FROM tbProducts_Inventory pi
    INNER JOIN tbproductscolor pc ON pc.intColor = pi.intColor
    WHERE intProducto = @p_intProduct
    GROUP BY pi.intColor, pc.strColorName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbColors_available_size` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbColors_available_size`(
IN p_stProduct varchar(50),
IN p_intColor int
)
BEGIN

    SET @p_intProduct = (SELECT idProduct FROM tbproducts WHERE strNameProduct = p_stProduct); -- ASI ES CUANDO QUIERO PONER UN DATO DE UNA TABLA EN UNA VARIABLE 
    
    
    SELECT @p_intProduct;
	SELECT 
	pi.intSize,
	ps.strSizeName,
    CASE WHEN pi.intQuantity < 5 AND  pi.intQuantity > 3 THEN '¡QUEDAN POCAS PZAS' ELSE CASE WHEN  pi.intQuantity < 3 THEN 'NO HAY DISPONIBLES' ELSE 'DISPONIBLE' END END AS strAvaible
    FROM tbProducts_Inventory pi
    INNER JOIN tbproductssize ps ON ps.intSize = pi.intSize
    WHERE pi.intProducto = @p_intProduct AND pi.intColor = p_intColor;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbColor_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbColor_list`()
BEGIN
	SELECT 
		intColor,
        strColorName
	FROM tbproductscolor;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbInventory_Products_List` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbInventory_Products_List`(
IN p_idProduct INT
)
BEGIN
	
    CREATE TEMPORARY TABLE tbColores_Temp(intColor int, strNombreColor varchar(50));
    
    INSERT INTO tbColores_Temp(intColor, strNombreColor) 	
	SELECT  intColor,strColorName 
	FROM tbproductscolor;

	 SELECT 
		pi.intProducto,  -- ID del producto
		p.strNameProduct,  -- Nombre del producto,
		p.intQuantity,
		c.intColor,  -- ID del color
		c.strNombreColor as strColorName,  -- Nombre del color
		-- Aquí usamos CASE para obtener la cantidad por cada talla
		SUM(CASE WHEN pi.intSize = 1 THEN pi.intQuantity ELSE 0 END) AS Quantity_S,  -- Talla S
		SUM(CASE WHEN pi.intSize = 2 THEN pi.intQuantity ELSE 0 END) AS Quantity_M,  -- Talla M
		SUM(CASE WHEN pi.intSize = 3 THEN pi.intQuantity ELSE 0 END) AS Quantity_L,  -- Talla L
		SUM(CASE WHEN pi.intSize = 4 THEN pi.intQuantity ELSE 0 END) AS Quantity_XL, -- Talla XL
		CASE WHEN SUM(pi.intQuantity) = 1 THEN 0 ELSE 1 END AS intStatus  -- Estado del producto
	FROM tbColores_Temp c
	LEFT JOIN tbProducts_Inventory pi ON pi.intColor = c.intColor AND pi.intProducto = p_idProduct
	LEFT JOIN tbProducts p ON p.idProduct = pi.intProducto

	GROUP BY c.intColor, c.strNombreColor, pi.intProducto, p.strNameProduct;
    
    DROP TEMPORARY TABLE tbColores_Temp;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbordersproducts_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbordersproducts_list`(
	IN p_intClient int,
	IN p_intOrder int
)
BEGIN
	SELECT 
		pro.strNameProduct,
		o.intProducts,
		pro.strCodeProduct,
		o.intQuantityProducts,
        o.dblTotal,
        ps.strSizeName,
        pc.strColorName
    FROM tborders o
    INNER JOIN tbClients c ON c.intClient = o.intClient
    INNER JOIN tbProducts pro ON pro.idProduct = o.intProducts
    INNER JOIN tbProductsColor pc ON pc.intColor = o.intProductColor
    INNER JOIN tbProductsSize ps ON ps.intSize = o.intProductSize
    WHERE o.intOrder = p_intOrder AND o.intClient = p_intClient;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbOrders_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbOrders_list`()
BEGIN
	SELECT
    o.intOrder,
    o.intClient,
    c.strFullName as strClientName,
    c.strPhone,
    c.strEmail,
    c.strAdress,
    c.strReferences,
    c.intCP,
    ci.strCityName,
    DATE_FORMAT(o.datDateUp , '%d %b DEL %Y') AS datDateUp,
    p.strPaymentMethod,
    so.strStatusName
    FROM tbOrders o
    INNER JOIN tbClients c ON c.intClient = o.intClient
    INNER JOIN tbPaymentsMethod p ON p.intPayment =c.intPayment
    INNER JOIN tbStatusOrders so ON so.intStatusOrder = o.intStatusOrder 
    INNER JOIN tbCity ci ON ci.intCity = c.intCity;
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbProducto_Detalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbProducto_Detalle`(
IN p_strNombreCategoria VARCHAR(250),
IN p_strNombreProducto VARCHAR(250)

)
BEGIN
	SELECT 
    strCodeProduct,
    strNameProduct,
    dblPrice,
    strDescriptionProduct
    FROM tbproducts p
    INNER JOIN tbCategories c ON c.intCategorie = p.intCategorie
    WHERE p.strNameProduct = p_strNombreProducto AND c.strCategorieName = p_strNombreCategoria;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbProductsSize_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbProductsSize_list`()
BEGIN
	SELECT
		intSize,
        strSizeName
    FROM tbProductsSize;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbProducts_Inventory_Save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbProducts_Inventory_Save`( 
IN p_intProducto int,
IN p_strColorName VARCHAR(120),
IN p_intSize int,
IN p_intQuantity int
)
BEGIN

	DECLARE p_intColor int;
    SELECT p_intColor = intColor FROM tbproductscolor WHERE strColorName = p_strColorName;
    
	
    IF EXISTS(SELECT 1 FROM tbProducts WHERE intproduct = p_intProducto)
		THEN
			INSERT INTO tbProducts_Inventory(intProducto,intColor, intSize, intQuantity, intStatus)
			VALUES(p_intProducto,p_intColor,p_intSize ,p_intQuantity );
		END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbproducts_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbproducts_list`(
)
BEGIN
   SELECT 
   p.idProduct as intProduct,
   p.strCodeProduct,
   P.strNameProduct,
   p.strDescriptionProduct,
   P.dblPrice,
   p.intCategorie,
   p.intColorProduct as intColor,
   p.intQuantity,
   p.intSizeProduct as intSize,
   c.strCategorieName,
   CASE WHEN p.intStatus = 1 THEN 'ACTIVE' ELSE 'INACTIVE' END strStatus,
   p.intStatus
   FROM tbproducts p 
   INNER JOIN tbCategories c ON c.intCategorie = p.intCategorie;
   
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbproducts_save` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbproducts_save`(
    IN p_strProductName VARCHAR(250),
    IN p_strDescription VARCHAR(250),
    IN p_intCategorie INT,
    IN p_intColor INT,
    IN p_intSize INT,
    IN p_dblPrice DECIMAL(10,2),  -- Cambié el tipo a DECIMAL por la naturaleza del precio
    IN p_intQuantity INT,
    IN p_intStatus INT
)
BEGIN
    -- Declaración de la variable para el código de producto
    DECLARE p_strCodeProduct VARCHAR(250);

    -- Generación del código de producto aleatorio
    SET p_strCodeProduct = CONCAT(
        CHAR(65 + FLOOR(RAND() * 26)),  -- Letra aleatoria entre A y Z
        CHAR(65 + FLOOR(RAND() * 26)),  -- Letra aleatoria entre A y Z
        CHAR(65 + FLOOR(RAND() * 26)),  -- Letra aleatoria entre A y Z
        '-',                           -- Guion separador
        FLOOR(1000 + (RAND() * 9000))   -- Número aleatorio de 4 dígitos
    );

    -- Verificación si el producto ya existe
    IF NOT EXISTS(SELECT 1 FROM tbProducts WHERE strCodeProduct = p_strCodeProduct) THEN
        -- Insertar el producto si no existe
        INSERT INTO tbProducts (
            strCodeProduct, 
            strNameproduct, 
            dblPrice, 
            intQuantity, 
            intCategorie, 
            intStatus, 
            datDate, 
            strDescriptionProduct, 
            intColorProduct, 
            intSizeProduct
        )
        VALUES (
            p_strCodeProduct, 
            p_strProductName, 
            p_dblPrice, 
            p_intQuantity, 
            p_intCategorie, 
            p_intStatus, 
            NOW(), 
            p_strDescription, 
            p_intColor, 
            p_intSize
        );
    ELSE
        -- Lanzar un error si el producto ya existe
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'EL PRODUCTO YA EXISTE';
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbSize_available_products` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbSize_available_products`(
IN p_stProduct varchar(50),
IN p_strColor varchar(50)
)
BEGIN

    SET @p_intProduct = (SELECT idProduct FROM tbproducts WHERE strNameProduct = p_stProduct); -- ASI ES CUANDO QUIERO PONER UN DATO DE UNA TABLA EN UNA VARIABLE
    SET @p_intColor = (SELECT intColor FROM tbproductsColor where strColorName = p_strColor);
    
    
	SELECT 
	pi.intSize,
	ps.strSizeName,
    CASE WHEN pi.intQuantity < 5 AND  pi.intQuantity > 3 THEN '¡QUEDAN POCAS PZAS' ELSE CASE WHEN  pi.intQuantity < 3 THEN 'NO HAY DISPONIBLES' ELSE 'DISPONIBLE' END END AS strAvaible
    FROM tbProducts_Inventory pi
    INNER JOIN tbproductssize ps ON ps.intSize = pi.intSize
    WHERE pi.intProducto = @p_intProduct AND pi.intColor = @p_intColor;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_tbusers_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbusers_list`(

)
BEGIN
   SELECT 
   u.intUserId intUser,
   u.strFullName strFullName,
   u.intRolId,
   r.strRolName,
   u.strPhoneNumber strPhone,
   u.strEmail strEmail,
   u.intEstatus,
   CASE WHEN u.intEstatus = 1 THEN 'ACTIVE' ELSE 'INACTIVE' END strStatus
   
   FROM tbusers u
   INNER JOIN tbrol r ON r.intRolId = u.intRolId;
    
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

-- Dump completed on 2025-02-21 18:06:08
