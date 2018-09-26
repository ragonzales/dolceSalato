-- MySQL dump 10.16  Distrib 10.3.9-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dolcesalato
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Bocaditos','Bocaditos',''),(2,'Combos','Combos',''),(3,'Cupckes','Cupckes',''),(4,'Festivo','Festivo',''),(5,'Postres','Postres','');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cobertura`
--

DROP TABLE IF EXISTS `cobertura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cobertura` (
  `idcobertura` int(11) NOT NULL AUTO_INCREMENT,
  `distrito` varchar(100) DEFAULT NULL,
  `activo` bit(1) DEFAULT NULL,
  `usuariocrea` varchar(15) DEFAULT NULL,
  `fechacrea` datetime DEFAULT NULL,
  `usuariobaja` varchar(15) DEFAULT NULL,
  `fechabaja` datetime DEFAULT NULL,
  PRIMARY KEY (`idcobertura`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cobertura`
--

LOCK TABLES `cobertura` WRITE;
/*!40000 ALTER TABLE `cobertura` DISABLE KEYS */;
INSERT INTO `cobertura` VALUES (9,'ASDASDASD','\0','admin','2018-09-17 11:11:43','admin','2018-09-20 16:19:57'),(10,'Lince 3','','admin','2018-09-17 14:31:25','',NULL),(11,'Miraflores','','admin','2018-09-17 15:11:40','',NULL),(12,'PRUEBA','','admin','2018-09-17 15:12:30','',NULL);
/*!40000 ALTER TABLE `cobertura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL AUTO_INCREMENT,
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `rutafoto` varchar(250) DEFAULT NULL,
  `descripcioncorta` varchar(100) NOT NULL,
  `descripcionlarga` varchar(500) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `usuariocrea` varchar(15) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  `fechabaja` datetime DEFAULT NULL,
  `usuariobaja` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `producto_categoria_fk` (`idcategoria`),
  CONSTRAINT `producto_categoria_fk` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (14,1,'PRODUCTO 1','./Upload_Bocaditos/','PRODUCTO 1','PRODUCTO 1PRODUCTO 1PRODUCTO 1PRODUCTO 1PRODUCTO 1PRODUCTO 1','','admin','2018-09-20 17:00:00',NULL,NULL),(15,1,'PRODUCTO 2','./Upload_Bocaditos/','PRODUCTO 2','PRODUCTO 2PRODUCTO 2PRODUCTO 2PRODUCTO 2','','admin','2018-09-20 17:01:57',NULL,NULL),(16,1,'PRODUCTO 3','./Upload_Bocaditos/','PRODUCTO 3','PRODUCTO 3PRODUCTO 3PRODUCTO 3','','admin','2018-09-20 17:21:51',NULL,''),(17,1,'PRODUCTO 4','./Upload_Bocaditos/','PRODUCTO 4','PRODUCTO 4PRODUCTO 4','','admin','2018-09-20 17:35:13',NULL,NULL),(18,1,'PRODUCTO 5','./Upload_Bocaditos/','PRODUCTO 5','PRODUCTO 5PRODUCTO 5PRODUCTO 5PRODUCTO 5PRODUCTO 5PRODUCTO 5PRODUCTO 5PRODUCTO 5','','admin','2018-09-20 17:41:07',NULL,NULL),(19,1,'PRODUCTO 6','./Upload_Bocaditos/','PRODUCTO 6','PRODUCTO 6PRODUCTO 6PRODUCTO 6PRODUCTO 6PRODUCTO 6PRODUCTO 6PRODUCTO 6PRODUCTO 6','','admin','2018-09-20 17:43:10',NULL,NULL),(20,1,'PRODUCTO 7','./Upload_Bocaditos/','PRODUCTO 7','PRODUCTO 7PRODUCTO 7PRODUCTO 7PRODUCTO 7PRODUCTO 7PRODUCTO 7PRODUCTO 7PRODUCTO 7','','admin','2018-09-20 17:43:47',NULL,NULL),(21,1,'PRODUCTO  8','./Upload_Bocaditos/','PRODUCTO  8','PRODUCTO  8PRODUCTO  8PRODUCTO  8PRODUCTO  8','','admin','2018-09-20 18:08:47',NULL,NULL),(22,1,'PRODUCTO 9','./Upload_Bocaditos/','PRODUCTO 9','PRODUCTO 9PRODUCTO 9PRODUCTO 9PRODUCTO 9','','admin','2018-09-20 18:13:03',NULL,''),(23,1,'PRODUCTO 9','./Upload_Bocaditos/','PRODUCTO 9','PRODUCTO 9PRODUCTO 9PRODUCTO 9PRODUCTO 9','','admin','2018-09-20 18:14:55',NULL,NULL),(24,1,'PRODUCTO 9','./Upload_Bocaditos/','PRODUCTO 9','PRODUCTO 9PRODUCTO 9PRODUCTO 9PRODUCTO 9','','admin','2018-09-20 18:17:39',NULL,NULL),(25,1,'PRODUCTO 9','./Upload_Bocaditos/Chrysanthemum5.jpg','PRODUCTO 9','PRODUCTO 9PRODUCTO 9PRODUCTO 9PRODUCTO 9','','admin','2018-09-20 18:30:22',NULL,NULL),(26,1,'PRODUCTO 9','./Upload_Bocaditos/Chrysanthemum6.jpg','PRODUCTO 9','PRODUCTO 9PRODUCTO 9PRODUCTO 9PRODUCTO 9','','admin','2018-09-20 18:35:59',NULL,NULL),(27,1,'PRODUCTO 10','./Upload_Bocaditos/Hydrangeas.jpg','PRODUCTO 10','PRODUCTO 10PRODUCTO 10PRODUCTO 10PRODUCTO 10','','admin','2018-09-20 18:37:12',NULL,NULL),(28,1,'PRODUCTO 11','./Upload_Bocaditos/Desert2.jpg','PRODUCTO 11','PRODUCTO 11','','admin','2018-09-20 18:39:31',NULL,NULL),(29,1,'PRODUCTO 12','./Upload_Bocaditos/Desert3.jpg','PRODUCTO 12','PRODUCTO 12PRODUCTO 12PRODUCTO 12','','admin','2018-09-20 18:42:21',NULL,NULL),(30,1,'PRODUCTO 13','./Upload_Bocaditos/Desert4.jpg','PRODUCTO 13','PRODUCTO 13PRODUCTO 13PRODUCTO 13PRODUCTO 13','','admin','2018-09-20 18:43:16',NULL,NULL),(31,1,'PRODUCTO 5','./Upload_Bocaditos/Desert5.jpg','PRODUCTO 5','PRODUCTO 5PRODUCTO 5PRODUCTO 5','','admin','2018-09-20 18:47:04',NULL,NULL),(32,1,'PRODUCTO 4','./Upload_Bocaditos/Desert6.jpg','PRODUCTO 4','PRODUCTO 4PRODUCTO 4PRODUCTO 4PRODUCTO 4','','admin','2018-09-20 18:47:57',NULL,NULL),(33,1,'PRODUCTO 4','./Upload_Bocaditos/Hydrangeas1.jpg','PRODUCTO 4','PRODUCTO 4PRODUCTO 4PRODUCTO 4PRODUCTO 4','','admin','2018-09-20 18:48:22',NULL,NULL),(34,1,'json_encode','./Upload_Bocaditos/Hydrangeas2.jpg','json_encode','json_encode','','admin','2018-09-20 18:49:44',NULL,NULL),(35,1,'PRODUCTO 9','./Upload_Bocaditos/Hydrangeas3.jpg','PRODUCTO 9','PRODUCTO 9PRODUCTO 9PRODUCTO 9PRODUCTO 9','','admin','2018-09-20 18:55:42',NULL,NULL),(36,1,'PRODUCTO 9','./Upload_Bocaditos/Hydrangeas4.jpg','PRODUCTO 9','PRODUCTO 9','','admin','2018-09-20 18:57:37',NULL,NULL),(37,1,'asdasd','./Upload_Bocaditos/Hydrangeas5.jpg','asdasdas','asdasd','','admin','2018-09-20 19:01:31',NULL,NULL),(38,1,'adad','./Upload_Bocaditos/Desert7.jpg','adasd','asdasdasd','','admin','2018-09-20 19:02:22',NULL,NULL),(39,1,'asd1212312','./Upload_Bocaditos/Hydrangeas6.jpg','12312','3123123','','admin','2018-09-20 19:04:07',NULL,NULL),(40,1,'adasda','./Upload_Bocaditos/Jellyfish4.jpg','s12312','31adasdasd','','admin','2018-09-20 19:05:39',NULL,NULL),(41,1,'PRODUCTOS 12S','./Upload_Bocaditos/Jellyfish5.jpg','PRODUCTOS 12S','PRODUCTOS 12SPRODUCTOS 12SPRODUCTOS 12SPRODUCTOS 12SPRODUCTOS 12S','','admin','2018-09-20 19:09:18',NULL,''),(42,1,'PRODUCTOS 12S','./Upload_Bocaditos/Jellyfish6.jpg','PRODUCTOS 12S','PRODUCTOS 12SPRODUCTOS 12SPRODUCTOS 12SPRODUCTOS 12SPRODUCTOS 12S','','admin','2018-09-20 19:09:44',NULL,''),(43,1,'block','./Upload_Bocaditos/Desert.jpg','block','block','','admin','2018-09-20 19:47:04',NULL,NULL),(44,1,'json_encode','./Upload_Bocaditos/Desert1.jpg','json_encode','json_encode','\0','admin','2018-09-20 19:47:40','2018-09-21 18:34:07','admin'),(45,1,'PRODUCTO 6','Hydrangeas.jpg','PRODUCTO 6','PRODUCTO 6 PRODUCTO 6','','admin','2018-09-21 16:58:46',NULL,NULL),(46,1,'PRODUCTO 9','C:/xampp/htdocs/dolceSalato/Upload_Bocaditos/Koala.jpg','PRODUCTO 9','PRODUCTO 9PRODUCTO 9PRODUCTO 9PRODUCTO 9','','admin','2018-09-21 17:01:19',NULL,NULL),(47,1,'directorio','./Upload_Bocaditos/Lighthouse.jpg','directorio','directorio','','admin','2018-09-21 17:05:45',NULL,NULL),(48,1,'PRUEBA 2','./Upload_Bocaditos/Lighthouse1.jpg','PRUEBA 2','PRUEBA 2','','admin','2018-09-21 18:33:03',NULL,'');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proporcionproductos`
--

DROP TABLE IF EXISTS `proporcionproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proporcionproductos` (
  `idproductoproporcion` bigint(20) NOT NULL AUTO_INCREMENT,
  `idproducto` bigint(20) NOT NULL,
  `proporcion` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `usuarioregistro` varchar(15) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  PRIMARY KEY (`idproductoproporcion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proporcionproductos`
--

LOCK TABLES `proporcionproductos` WRITE;
/*!40000 ALTER TABLE `proporcionproductos` DISABLE KEYS */;
INSERT INTO `proporcionproductos` VALUES (1,42,'10 UNIDADES',10.00,'','admin','2018-09-20 19:09:44'),(2,42,'20 UNIDADES',20.00,'','admin','2018-09-20 19:09:44'),(3,42,'30 UNIDADES',30.00,'','admin','2018-09-20 19:09:44'),(4,42,'40 UNIDADES',40.00,'','admin','2018-09-20 19:09:44');
/*!40000 ALTER TABLE `proporcionproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(15) NOT NULL,
  `contrasena` varchar(250) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `fecha_crea` datetime DEFAULT NULL,
  `usuario_crea` varchar(15) DEFAULT NULL,
  `activo` bit(1) DEFAULT NULL,
  `fechabaja` datetime DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (5,'admin','admin','Administrador','','2018-09-17 16:11:05','ratg','',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dolcesalato'
--
