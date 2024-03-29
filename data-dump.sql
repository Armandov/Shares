-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
-- mysqldump -u root -p app > dump.sql  
-- mysql -u root -p < data-dump.sql
-- mysql -u root -p dd < data-dump.sql
https://github.com/Armandov/pub
-- 
CREATE USER 'armand'@'localhost' IDENTIFIED BY 'dbs';
GRANT ALL PRIVILEGES ON *.* TO 'armand'@'localhost' WITH GRANT OPTION;

CREATE USER 'armand'@'%' IDENTIFIED BY 'dbs';
GRANT ALL PRIVILEGES ON *.* TO 'armand'@'%' WITH GRANT OPTION;

-- scp *.html armand@192.168.1.2:~/k/
-- scp *.webm armand@192.168.1.2:~/k
-- https://docs.oracle.com/cd/E37929_01/html/E36611/remotehowtoaccess-55154.html#:~:text=El%20comando%20scp%20copia%20archivos,para%20la%20transferencia%20de%20datos.

-- Host: localhost    Database: app
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(11) DEFAULT NULL,
  `imagen` varchar(256) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Acer',21000,'/img/acer.jpg'),(2,'Dell',22000,'/img/dell.jpg'),(4,'Hewlett-Packard',23000,'/img/hp.jpg'),(5,'Huawei',24000,'/img/huawei.jpg'),(6,'Lenovo',25000,'/img/lenovo.jpg'),(7,'Samsung',26000,'/img/samsung.jpg'),(9,'Mac Book',3000,'/img/apple.jpg'),(10,'imac',3800,'https://m.media-amazon.com/images/I/81blwMhVV8L._AC_SL1500_.jpg');
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `pedido` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Walmart','Cdmx',15000),(2,'Soriana','Leon',20000),(3,'Sears','Veracruz',30000),(4,'Sanborns','Cdmx',40000),(5,'Comercial','Nuevo Leon',50000),(6,'Aurrera','cdmx',60000),(8,'Sumesa','cdmx',80000);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-26 22:44:46
