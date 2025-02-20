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
INSERT INTO `tbproducts` VALUES (1,'awmm24kar98','Shirt',250.00,5,1,1,'2024-10-30 00:00:00','Prueba',1,3),(2,'1234','shorts',150.00,10,1,1,'2025-02-12 00:00:00','Prueba',1,3),(3,'RQF-2347','CAP',249.00,5,1,1,'2025-02-17 17:36:59','PRUEBA',1,2),(4,'NHW-5223','Over-Size',399.00,5,1,1,'2025-02-17 17:50:25','Prueba',1,4);
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
INSERT INTO `tbproductscolor` VALUES (1,'Black',1),(2,'White',1),(3,'Blue',1),(4,'Green',1);
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
INSERT INTO `tbproductssize` VALUES (1,'Small',1,'S'),(2,'Medium',1,'M'),(3,'Large',1,'L'),(4,'Extra-Large',1,'XL');
/*!40000 ALTER TABLE `tbproductssize` ENABLE KEYS */;
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
IN p_intColor int,
IN p_intSize int,
IN p_intQuantity int ,
IN p_intStatus int
)
BEGIN
	
    IF EXISTS(SELECT 1 FROM tbProducts WHERE intproduct = p_intProducto)
		THEN
			INSERT INTO tbProducts_Inventory(intProducto,intColor, intSize, intQuantity, intStatus)
			VALUES(p_intProducto,p_intColor,p_intSize ,p_intQuantity ,p_intStatus);
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

-- Dump completed on 2025-02-19 17:59:55
