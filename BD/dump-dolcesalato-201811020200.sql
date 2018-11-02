-- MySQL dump 10.16  Distrib 10.3.9-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dolcesalato
-- ------------------------------------------------------
-- Server version	10.1.35-MariaDB

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Postres y Tortas','Postres y Tortas',''),(2,'Bocaditos Salados','Bocaditos Salados',''),(3,'Bocaditos Dulces','Bocaditos Dulces',''),(4,'Piqueos','Piqueos',''),(5,'Piqueos Peruanos','Piqueos Peruanos',''),(6,'Cupckes Tradicionales','Cupckes Tradicionales',''),(7,'Cupckes Gigantes','Cupckes Gigantes',''),(8,'Combos','Combos',''),(9,'Tendencias','Tendencias',''),(10,'Festivo','Festivo',''),(11,'Cupckes Fruta','Cupckes Fruta','');
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
  `descuento` varchar(100) DEFAULT NULL,
  `rutafoto` varchar(250) DEFAULT NULL,
  `descripcioncorta` varchar(100) DEFAULT NULL,
  `descripcionlarga` varchar(500) DEFAULT NULL,
  `destacado` bit(1) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `usuariocrea` varchar(15) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  `fechabaja` datetime DEFAULT NULL,
  `usuariobaja` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `producto_categoria_fk` (`idcategoria`),
  CONSTRAINT `producto_categoria_fk` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,2,'BOLITAS DE CAUSITA','','http://localhost:8080/ModuloConfigurador/Upload_Combos/bocaditos-salados-y-dulces-pack-400-bocaditos-a-s23000-D_NQ_NP_719710-MPE25656182437_062017-F.jpg','','','','','admin','2018-11-01 18:56:49',NULL,NULL),(2,2,'BUTIFARRA DE LECHÓN, PAVO O LOMITO AHUMADO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/o.jpg','','','','','admin','2018-11-01 18:57:53',NULL,NULL),(3,2,'BUTIFARRA JAMÓN DEL PAÍS SALSA CRIOLLA','','http://localhost:8080/ModuloConfigurador/Upload_Combos/Butifarras-141.jpg','','','','','admin','2018-11-01 18:59:29',NULL,NULL),(4,2,'CAMARONES CON LIMA','','http://localhost:8080/ModuloConfigurador/Upload_Combos/Bonitos-bocaditos-frescos-de-camarones-con-lima.jpg','','','','','admin','2018-11-01 19:02:24',NULL,NULL),(5,2,'CANAPÉS CON DURAZNO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/b67e0c0b5d_Canapes_de_Pollo_y_Durazno.jpg','','','','','admin','2018-11-01 19:02:17',NULL,NULL),(6,2,'EMPANADITAS CARNE O POLLO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/Empanaditas-de-copetin.jpg','','','','','admin','2018-11-01 19:03:08',NULL,NULL),(7,2,'EMPANADITAS DE AJI DE GALLINA O LOMO SALTADO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/CdlrqPQWIAAYcM5.jpg','','','','','admin','2018-11-01 19:03:35',NULL,NULL),(8,2,'EMPANADITAS MIXTAS','','http://localhost:8080/ModuloConfigurador/Upload_Combos/7-ideas-de-rellenos-de-empanadas-para-variar-tus-comidas-3.jpg','','','','','admin','2018-11-01 19:07:21',NULL,NULL),(9,2,'ENROLLADITOS DE HOTDOG','','http://localhost:8080/ModuloConfigurador/Upload_Combos/c.jpg','','','','','admin','2018-11-01 19:08:02',NULL,NULL),(10,2,'ENROLLADITOS DE JAMÓN Y QUESO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/IMG_7601.jpg','','','','','admin','2018-11-01 19:08:25',NULL,NULL),(11,2,'ENROLLADITOS DE POLLO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/f558e827c0_Enrollado_pollo.jpg','','','','','admin','2018-11-01 19:08:41',NULL,NULL),(12,2,'GUINDONES CON TOCINO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/datiles.jpg','','','','','admin','2018-11-01 19:09:08',NULL,NULL),(13,2,'HAMBURGUESITAS','','http://localhost:8080/ModuloConfigurador/Upload_Combos/mini-hamburguesas-para-eventos-D_NQ_NP_518115-MLA25142391511_112016-F.jpg','','','','','admin','2018-11-01 19:09:25',NULL,NULL),(14,2,'HOJARASCAS AJI DE GALLINA','','http://localhost:8080/ModuloConfigurador/Upload_Combos/hojarascas-con-ají-de-gallina5.jpg','','','','','admin','2018-11-01 19:10:07',NULL,NULL),(15,2,'HUEVOS CON MAYONESA Y ENELDO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/huevos-elegantes.jpg','','','','','admin','2018-11-01 19:10:24',NULL,NULL),(16,2,'LANGOSTINOS CRUJIENTES CON SALSA DOLCE SALATO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/tempura.jpg','','','','','admin','2018-11-01 19:11:18',NULL,NULL),(17,2,'MINI PIONONO CON ACEITUNA','','http://localhost:8080/ModuloConfigurador/Upload_Combos/piqueo2.png','','','','','admin','2018-11-01 19:11:37',NULL,NULL),(18,2,'MINI PIONONO DE ESPINACA Y POLLO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/271293_original.jpg','','','','','admin','2018-11-01 19:11:58',NULL,NULL),(19,2,'MOUSSE DE ROQUEFORT','','http://localhost:8080/ModuloConfigurador/Upload_Combos/2ea6cbbd001717175c6c286b1aba172f.jpg','','','','','admin','2018-11-01 19:12:18',NULL,NULL),(20,2,'PAN AL AJO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/como-hacer-pan-de-ajo.jpg','','','','','admin','2018-11-01 19:12:49',NULL,NULL),(21,2,'PERITAS DE PAPA','','http://localhost:8080/ModuloConfigurador/Upload_Combos/peradepatata2-480x576.jpg','','','','','admin','2018-11-01 19:13:11',NULL,NULL),(22,2,'PETIT PAN DE POLLO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/Pan-con-pollo-simple.jpg','','','','','admin','2018-11-01 19:13:29',NULL,NULL),(23,2,'PIZZETAS','','http://localhost:8080/ModuloConfigurador/Upload_Combos/nnj.jpg','','','','','admin','2018-11-01 19:13:46',NULL,NULL),(24,2,'RAMON SERRANO CON MEMBRILLO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/18c22829d5149fc5c0b73f19ed35ab98.jpg','','','','','admin','2018-11-01 19:14:14',NULL,NULL),(25,2,'SANDWICHITOS DE JAMON  Y POLLO','','http://localhost:8080/ModuloConfigurador/Upload_Combos/maxresdefault.jpg','','','','','admin','2018-11-01 19:14:31',NULL,NULL),(26,2,'TOMATES RELLENOS','','http://localhost:8080/ModuloConfigurador/Upload_Combos/stuffed-tomato-appetizer-01.jpg','','','','','admin','2018-11-01 19:14:43',NULL,NULL),(27,2,'TRIPLECITOS','','http://localhost:8080/ModuloConfigurador/Upload_Combos/bocaditos-salados-y-dulces-para-toda-ocacion-D_NQ_NP_680705-MPE26600043622_012018-F.jpg','','','','','admin','2018-11-01 19:15:03',NULL,NULL),(28,3,'ALFAJORE DE MANJAR COBERTURA DE CHOCO','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/alfajores-chocolate-9_jpg_pagespeed_ce_yi6IW-Po1m.jpg','','','\0','','admin','2018-11-01 19:41:40',NULL,NULL),(29,3,'ALFAJORES CON CREMA DE MANI','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/depositphotos_109357446-stock-photo-butter-cookies-alfajores-with-caramel.jpg','','','\0','','admin','2018-11-01 19:42:29',NULL,NULL),(30,3,'ALFAJORES CON LIMÓN','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/DSC_8453.jpg','','','\0','','admin','2018-11-01 19:42:45',NULL,NULL),(31,3,'ALFAJORES CON MARACUYA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/cocomaracuya.jpg','','','\0','','admin','2018-11-01 19:42:57',NULL,NULL),(32,3,'ALFAJORES DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/f42aa3bab928c3035a9a7c6e4c2c2328.jpg','','','\0','','admin','2018-11-01 19:43:11',NULL,NULL),(33,3,'ALFAJORES DE MANJAR','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/alfajores.jpg','','','\0','','admin','2018-11-01 19:43:24',NULL,NULL),(34,3,'ALFAJORES DE NUTELLA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/Alfajors-de-nutella.jpg','','','\0','','admin','2018-11-01 19:52:23',NULL,NULL),(35,3,'BESO DE MOZA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/Besos-de-moza.jpg','','','\0','','admin','2018-11-01 19:52:35',NULL,NULL),(36,3,'BESO DE MOZA DE CHICHA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/5b8b2948cae1808854a5690f4cb7619d.jpg','','','\0','','admin','2018-11-01 19:52:50',NULL,NULL),(37,3,'BIZCOTELAS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/vv.jpg','','','\0','','admin','2018-11-01 19:53:04',NULL,NULL),(38,3,'BOLITAS DE COCO','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/bolitas_coco_2.jpg','','','\0','','admin','2018-11-01 19:53:17',NULL,NULL),(39,3,'BOMBON ROJO DE PRAILE','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/24125396_274085983115401_4605378768758898688_n.jpg','','','\0','','admin','2018-11-01 19:53:31',NULL,NULL),(40,3,'BORRACHITOS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/Tudescuenton-6540-Taller-de-chocolates-y-bombones.jpg','','','\0','','admin','2018-11-01 19:53:43',NULL,NULL),(41,3,'CACHITOS DE MANJAR','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/xMG_5354_png_pagespeed_ic_nvrmK4K7gh.jpg','','','\0','','admin','2018-11-01 19:53:59',NULL,NULL),(42,3,'CARAMELOS DE FRUTAS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/snacks-saludables-para-ninos.jpg','','','\0','','admin','2018-11-01 19:54:17',NULL,NULL),(43,3,'CHAMPU DE GUANABANA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/Cremosa_de_mango_(3).jpg','','','\0','','admin','2018-11-01 19:54:30',NULL,NULL),(44,3,'CHOCOTEJA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/chocotejas.jpg','','','\0','','admin','2018-11-01 19:54:45',NULL,NULL),(45,3,'CIGARRITOS DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/cigarrillos-duo-4-cm-caja-700g.jpg','','','\0','','admin','2018-11-01 19:54:59',NULL,NULL),(46,3,'COCADITAS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/IMG_0138.jpg','','','\0','','admin','2018-11-01 19:55:14',NULL,NULL),(47,3,'CRAQUELIN','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/10030222.jpg','','','\0','','admin','2018-11-01 19:55:32',NULL,NULL),(48,3,'DONAS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/donas-1.jpg','','','\0','','admin','2018-11-01 19:55:53',NULL,NULL),(49,3,'FRESAS DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/maxresdefault.jpg','','','\0','','admin','2018-11-01 19:56:06',NULL,NULL),(50,3,'GALLETAS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/maxresdefault1.jpg','','','\0','','admin','2018-11-01 19:56:18',NULL,NULL),(51,3,'HAMBURGUESA DE HELADO','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/sandwich-helado-victor-moreno-bms.jpg','','','\0','','admin','2018-11-01 19:56:35',NULL,NULL),(52,3,'MACARRONES','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/macaroons-2277481_1920.jpg','','','\0','','admin','2018-11-01 19:56:54',NULL,NULL),(53,3,'MAICILLOS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/nn.jpg','','','\0','','admin','2018-11-01 19:57:12',NULL,NULL),(54,3,'MANA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/37.jpg','','','\0','','admin','2018-11-01 19:57:26',NULL,NULL),(55,3,'MINI BROWNIES','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/UK_MiniChocBrownies_800x800.jpg','','','\0','','admin','2018-11-01 19:57:38',NULL,NULL),(56,3,'MINI MIL HOJAS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/1500.jpg','','','\0','','admin','2018-11-01 19:57:50',NULL,NULL),(57,3,'MINI MIL HOJAS DE FRESA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/wontons_con_mascarpone.jpg','','','\0','','admin','2018-11-01 19:58:02',NULL,NULL),(58,3,'MINI MOUSSE DE FRESA LUCUMA Y CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/Mini_mousse_grande.jpg','','','\0','','admin','2018-11-01 19:58:22',NULL,NULL),(59,3,'MINI PIE DE MANZANA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/maxresdefault2.jpg','','','\0','','admin','2018-11-01 19:59:16',NULL,NULL),(60,3,'MINI PIONONO DE MANJAR','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/340c5e96fe5bc24ee3dad519247c4984.jpg','','','\0','','admin','2018-11-01 19:59:32',NULL,NULL),(61,3,'MINI RELAMPAGOS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/By0PpdD_l.jpg','','','\0','','admin','2018-11-01 19:59:48',NULL,NULL),(62,3,'MINI TORTA RED VELVET','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/velvetok.jpg','','','\0','','admin','2018-11-01 20:00:03',NULL,NULL),(63,3,'MINI TORTAS DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/Torta-Humeda-de-Chocolate-1-e1494014028112.jpg','','','\0','','admin','2018-11-01 20:01:33',NULL,NULL),(64,3,'NIDITOS DE AMOR','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/niditos-de-amor-de-fresa.jpg','','','\0','','admin','2018-11-01 20:01:54',NULL,NULL),(65,3,'OREJITAS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/DSC03427.jpg','','','\0','','admin','2018-11-01 20:02:07',NULL,NULL),(66,3,'PALETAS DE CHOCO','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/chocolate-1145952_1920.jpg','','','\0','','admin','2018-11-01 20:02:39',NULL,NULL),(67,3,'PALETAS DE MASHMALLOW-COBERTURA DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/DSC00337.jpg','','','\0','','admin','2018-11-01 20:03:02',NULL,NULL),(68,3,'PIÑA CON CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/41860b6bb3248fc05029ba63f5206729.jpg','','','\0','','admin','2018-11-01 20:04:02',NULL,NULL),(69,3,'TARTALETA DE DURAZNO','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/8-MINI-TARTALETAS-FRUTAS-4-1.jpg','','','\0','','admin','2018-11-01 20:05:32',NULL,NULL),(70,3,'TARTALETA DE FRESA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/zoom-d1d529a94032580a61e7f1b3d26ba1e3-920-518.jpg','','','\0','','admin','2018-11-01 20:05:46',NULL,NULL),(71,3,'TARTALETAS DE FRUTAS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/15001.jpg','','','\0','','admin','2018-11-01 20:05:59',NULL,NULL),(72,3,'TRUFAS CON FRUTAS','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/78d8380822f9635680e9d7506f1fb8e5.jpg','','','\0','','admin','2018-11-01 20:06:14',NULL,NULL),(73,3,'TRUFAS D EOREO','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/12288db2c6a08687818c7cd172adc37c.png','','','\0','','admin','2018-11-01 20:06:27',NULL,NULL),(74,3,'TRUFAS DE CAFÉ','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/www_BANCODEIMAGENESGRATUITAS_com_-Fotografías_de_Chocolates_5.jpg','','','\0','','admin','2018-11-01 20:06:51',NULL,NULL),(75,3,'TRUFAS DE CHOCOLATE O CHOCOLATE BLANCO','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/trufas-de-nutella-galleta-oreo-y-chocolate.jpg','','','\0','','admin','2018-11-01 20:07:28',NULL,NULL),(76,3,'TRUFAS DE NUTELLA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/Trufas-Nutella2_PintandoUnaMama1.jpg','','','\0','','admin','2018-11-01 20:07:42',NULL,NULL),(77,3,'TRUFAS MOCACINO','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/sin-gluten-trufas.jpg','','','\0','','admin','2018-11-01 20:07:53',NULL,NULL),(78,3,'TRUFAS REDVELVET','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/trufas-7.jpg','','','\0','','admin','2018-11-01 20:08:07',NULL,NULL),(79,3,'TRUFAS SELVA NEGRA','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/Trufas-con-coco-rallado.jpg','','','\0','','admin','2018-11-01 20:08:35',NULL,NULL),(80,3,'TRUFAS SOUR','','http://localhost:8080/ModuloConfigurador/Upload_Cupckes/trufas_plato.jpg','','','\0','','admin','2018-11-01 20:08:54',NULL,NULL),(81,1,'ALFAJOR GIGANTE','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/alfajor.jpg','','','\0','','admin','2018-11-01 20:30:29',NULL,NULL),(82,1,'BIZCOCHUELO HUMEDO','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/lwmy6fytev1n014ma1mk.jpg','','','\0','','admin','2018-11-01 20:30:43',NULL,NULL),(83,1,'BRAZO GITANO DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/DSC01645.jpg','','','\0','','admin','2018-11-01 20:31:11',NULL,NULL),(84,1,'BRAZO GITANO DE DURAZNO','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/maxresdefault3.jpg','','','\0','','admin','2018-11-01 20:31:21',NULL,NULL),(85,1,'BRAZO GITANO DE FRESA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/maxresdefault4.jpg','','','\0','','admin','2018-11-01 20:31:33',NULL,NULL),(86,1,'BUDIN CON PASAS','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/budin_de_pan_con_pepitas_de_chocolate.jpg','','','\0','','admin','2018-11-01 20:31:45',NULL,NULL),(87,1,'CHEESECAKE CON BLUEBERRIE','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/IMG_6929enriquemtz-600x600.jpg','','','\0','','admin','2018-11-01 20:31:56',NULL,NULL),(88,1,'CHEESECAKE CON BROWNIE','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/deep_dish_peanut_butter_cheesecake_brownies2.jpg','','','\0','','admin','2018-11-01 20:32:13',NULL,NULL),(89,1,'CHEESECAKE CON FRESA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/cheesecake-de-fresas.jpg','','','\0','','admin','2018-11-01 20:32:29',NULL,NULL),(90,1,'CHEESECAKE CON MARACUYA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/recetas-Cheesecake-de-maracuyá-record.jpg','','','\0','','admin','2018-11-01 20:32:47',NULL,NULL),(91,1,'CHEESECAKE DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/chocolate-cheesecake-6908-1.jpg','','','\0','','admin','2018-11-01 20:33:06',NULL,NULL),(92,1,'CHEESECAKE DE OREO','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/9bff0236b3c9dcacd3e82efe832ff33c.png','','','\0','','admin','2018-11-01 20:33:19',NULL,NULL),(93,1,'CHEESECAKE DE SAUCO','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/img_3753.jpg','','','\0','','admin','2018-11-01 20:33:31',NULL,NULL),(94,1,'CREMA VOLTEADA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/0042.jpg','','','\0','','admin','2018-11-01 20:33:53',NULL,NULL),(95,1,'DULCE MANJAR','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/torta-nuez.jpg','','','\0','','admin','2018-11-01 20:34:06',NULL,NULL),(96,1,'GENOVESA DE CAFÉ','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/27578972_1602742739811932_3254286012825731072_n.jpg','','','\0','','admin','2018-11-01 20:34:30',NULL,NULL),(97,1,'IMPERIAL','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/101_0306.jpg','','','\0','','admin','2018-11-01 20:34:39',NULL,NULL),(98,1,'KEKE INGLES','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/img_queque_de_quinua_43720_600.jpg','','','\0','','admin','2018-11-01 20:34:56',NULL,NULL),(99,1,'PASTEL DE ACELGA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/tarta_acelga.jpg','','','\0','','admin','2018-11-01 20:35:08',NULL,NULL),(100,1,'PASTEL DE CHOCLO','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/56569_640x428.jpg','','','\0','','admin','2018-11-01 20:35:23',NULL,NULL),(101,1,'PIE DE LIMON','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/5118520023_31cfe93f19.jpg','','','\0','','admin','2018-11-01 20:35:37',NULL,NULL),(102,1,'PIE DE MANZANA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/item-351900.jpg','','','\0','','admin','2018-11-01 20:35:52',NULL,NULL),(103,1,'PIONONO CON HELADO','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/cam01001.jpg','','','\0','','admin','2018-11-01 20:36:14',NULL,NULL),(104,1,'PIONONO DE MANJAR','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/Brazo-Reina.jpg','','','\0','','admin','2018-11-01 20:36:31',NULL,NULL),(105,1,'QUEQUE DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/IMG_2348.jpg','','','\0','','admin','2018-11-01 20:37:02',NULL,NULL),(106,1,'QUEQUE DE NOVIA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/maxresdefault5.jpg','','','\0','','admin','2018-11-01 20:37:16',NULL,NULL),(107,1,'QUEQUE DE ZANAHORIA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/zanahoria2.png','','','\0','','admin','2018-11-01 20:37:33',NULL,NULL),(108,1,'QUICHE','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/quiche-lorraine-1-2-815x458.jpg','','','\0','','admin','2018-11-01 20:38:22',NULL,NULL),(109,1,'SELVA NEGRA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/IMG_6072_copia.jpg','','','\0','','admin','2018-11-01 20:38:35',NULL,NULL),(110,1,'SINFONIA DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/Pasteleria_12-copy-1024x768.png','','','\0','','admin','2018-11-01 20:38:52',NULL,NULL),(111,1,'SOUFFLE DE FRESA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/Souffle_de_Fresas_335135743_large.jpg','','','\0','','admin','2018-11-01 20:39:04',NULL,NULL),(112,1,'TARTALETA DE FRESA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/tarta-de-fresas-y-crema.jpg','','','\0','','admin','2018-11-01 20:39:44',NULL,NULL),(113,1,'TARTALETAS DE FRUTAS','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/maxresdefault6.jpg','','','\0','','admin','2018-11-01 20:39:57',NULL,NULL),(114,1,'TIRAMISÚ','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/13559174_1035894893131742_1149113640875487190_o.jpg','','','\0','','admin','2018-11-01 20:40:28',NULL,NULL),(115,1,'TORTA ARCOIRIS','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/rainbow-cake.jpg','','','\0','','admin','2018-11-01 20:40:47',NULL,NULL),(116,1,'TORTA DE ALFAJOR','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/31423185-torta-alfajor-l-thumb.jpg','','','\0','','admin','2018-11-01 20:41:02',NULL,NULL),(117,1,'TORTA DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/receta-torta-chocolate-negro-tortas-recetas-locos-x-las-tortas-locosxlastortas.jpg','','','\0','','admin','2018-11-01 20:41:16',NULL,NULL),(118,1,'TORTA DE GALLETAS','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/tarta_galletas_crema_chocolate_blanco.jpg','','','\0','','admin','2018-11-01 20:41:34',NULL,NULL),(119,1,'TORTA DOLCE SALATO','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/dfsf.jpg','','','\0','','admin','2018-11-01 20:41:48',NULL,NULL),(120,1,'TORTA DOÑA PEPA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/16111033_232222490562766_2564961757730701312_n.jpg','','','\0','','admin','2018-11-01 20:42:01',NULL,NULL),(121,1,'TORTA HELADA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/maxresdefault7.jpg','','','\0','','admin','2018-11-01 20:42:19',NULL,NULL),(122,1,'TORTA HELADA LIGHT','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/tortaheladaffbthumb.jpg','','','\0','','admin','2018-11-01 20:42:32',NULL,NULL),(123,1,'TORTA MOKA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/Torta-Moka.jpg','','','\0','','admin','2018-11-01 20:42:45',NULL,NULL),(124,1,'TORTA MOUSSE DE FRESA','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/como-hacer-una-torta-helada.jpg','','','\0','','admin','2018-11-01 20:42:57',NULL,NULL),(125,1,'TORTA RED VELVET','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/26173917_867490766765999_2074865828185653637_o.jpg','','','\0','','admin','2018-11-01 20:43:14',NULL,NULL),(126,1,'TORTA SELVA NEGRA LIGHT','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/tarta-selva-negra.jpg','','','\0','','admin','2018-11-01 20:43:45',NULL,NULL),(127,1,'TORTA TRES LECHES','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/1_Un,_dos,_tres,_leches_en_forma_de_torta.jpg','','','\0','','admin','2018-11-01 20:44:04',NULL,NULL),(128,1,'TORTA TRES LECHES DE CHOCOLATE','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/item-110732.jpg','','','\0','','admin','2018-11-01 20:44:20',NULL,NULL),(129,1,'TORTA TRES LECHES LIGHT','','http://localhost:8080/ModuloConfigurador/Upload_Bocaditos/pastel3leches.jpg','','','\0','','admin','2018-11-01 20:47:13',NULL,NULL),(130,4,'ALITAS BOUCHET','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/maxresdefault.jpg','','','\0','','admin','2018-11-01 20:54:16',NULL,NULL),(131,4,'BOLITAS DE YUCA CON QUESO','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/b930fd6410fe17e656fd2a806a078187.jpg','','','\0','','admin','2018-11-01 20:54:34',NULL,NULL),(132,4,'BROCHETAS DE CARNE','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/brochetas.jpg','','','\0','','admin','2018-11-01 20:54:46',NULL,NULL),(133,4,'BROCHETAS DE POLLO','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/brochetas-de-pollo-con-jengibre-1024x627.jpg','','','\0','','admin','2018-11-01 20:54:56',NULL,NULL),(134,4,'BUÑUELOS DE TOLLO','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/e12ee7cad2e7444a70080b6fdc15aed3.png','','','\0','','admin','2018-11-01 20:55:08',NULL,NULL),(135,4,'CACHANGAS','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/b7867c8daf302b4afdff4347873fc19a.jpg','','','\0','','admin','2018-11-01 20:55:22',NULL,NULL),(136,4,'CHICHARRON DE POLLO','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/chicken_fingers_page-bg_8285.jpg','','','\0','','admin','2018-11-01 20:55:32',NULL,NULL),(137,4,'MINI WANTAN FRITO','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/aa30533de70942bd7e89e9612937b677.jpg','','','\0','','admin','2018-11-01 20:55:46',NULL,NULL),(138,4,'NUGGETS','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/1428675741536.jpg','','','\0','','admin','2018-11-01 20:56:22',NULL,NULL),(139,4,'PAPITAS SERRANAS','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/ds.jpg','','','\0','','admin','2018-11-01 20:56:40',NULL,NULL),(140,4,'TEQUEÑOS DE QUESO','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/Tequeños-Colombianos-Colombian-Cheese-Sticks.jpg','','','\0','','admin','2018-11-01 20:56:52',NULL,NULL),(141,4,'TEQUEÑOS LOMO SALTADO','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/25e1e6ae-5513-4a2a-9d8a-75f3ab2234bf.jpg','','','\0','','admin','2018-11-01 20:57:09',NULL,NULL),(142,4,'TEQUEÑOS QUESO Y TOCINO','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/Guava-Bacon-Tequeño-1-1-1024x683.jpg','','','\0','','admin','2018-11-01 20:57:25',NULL,NULL),(143,4,'YUQUITAS','','http://localhost:8080/ModuloConfigurador/Upload_Festivo/Yuquitas-reyes-rojos-Martín_Yuquitas-de-aceituna-quinua.jpg','','','\0','','admin','2018-11-01 20:57:37',NULL,NULL),(144,5,'CAUSITA DE ATUN','','http://localhost:8080/ModuloConfigurador/Upload_Postres/MK-catering-corporativo-5-400x400.jpg','','','\0','','admin','2018-11-01 21:02:56',NULL,NULL),(145,5,'CAUSITA DE POLLO','','http://localhost:8080/ModuloConfigurador/Upload_Postres/atento-092.jpg','','','\0','','admin','2018-11-01 21:03:07',NULL,NULL),(146,5,'CHICA MORADA','','http://localhost:8080/ModuloConfigurador/Upload_Postres/original_53fe695dfcbd93a788c7b241627238a2.jpg','','','\0','','admin','2018-11-01 21:03:19',NULL,NULL),(147,5,'CHORITOS A LA CHALACA','','http://localhost:8080/ModuloConfigurador/Upload_Postres/cul-de-las-siguientes-es-una-comida-tpica-peruana-original.jpg','','','\0','','admin','2018-11-01 21:03:33',NULL,NULL),(148,5,'CONCHITAS ASADAS','','http://localhost:8080/ModuloConfigurador/Upload_Postres/conchas-asadas-1920x1280.jpg','','','\0','','admin','2018-11-01 21:03:44',NULL,NULL),(149,5,'MAZAMORRA MORADA VASITO','','http://localhost:8080/ModuloConfigurador/Upload_Postres/Mazamorra-Morada.jpg','','','\0','','admin','2018-11-01 21:03:55',NULL,NULL),(150,5,'MINI ANTICUCHOS','','http://localhost:8080/ModuloConfigurador/Upload_Postres/DSC06383_1365x907.jpg','','','\0','','admin','2018-11-01 21:04:05',NULL,NULL),(151,5,'MINI PICARONES','','http://localhost:8080/ModuloConfigurador/Upload_Postres/Picarones-Parque-Kenedy10.jpg','','','\0','','admin','2018-11-01 21:04:28',NULL,NULL),(152,5,'PAPITAS RELLENAS','','http://localhost:8080/ModuloConfigurador/Upload_Postres/bombas_carne.jpg','','','\0','','admin','2018-11-01 21:06:14',NULL,NULL),(153,5,'QUESO HELADO VASITO','','http://localhost:8080/ModuloConfigurador/Upload_Postres/helado-queso-3.jpg','','','\0','','admin','2018-11-01 21:06:26',NULL,NULL),(154,5,'SUSPIRO A LA LIMEÑO  VASITO','','http://localhost:8080/ModuloConfigurador/Upload_Postres/suspiro.jpg','','','\0','','admin','2018-11-01 21:07:15',NULL,NULL),(155,5,'TRES LECHES EN VASITO','','http://localhost:8080/ModuloConfigurador/Upload_Postres/arroz-con-lechE.jpg','','','\0','','admin','2018-11-01 21:07:29',NULL,NULL);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocion`
--

DROP TABLE IF EXISTS `promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocion` (
  `idpromocion` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcioncorta` varchar(100) DEFAULT NULL,
  `mensaje` varchar(100) DEFAULT NULL,
  `alineacion` int(11) DEFAULT NULL,
  `rutafoto` varchar(250) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `usuarioregistro` varchar(15) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  `usuariobaja` varchar(15) DEFAULT NULL,
  `fechabaja` datetime DEFAULT NULL,
  PRIMARY KEY (`idpromocion`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocion`
--

LOCK TABLES `promocion` WRITE;
/*!40000 ALTER TABLE `promocion` DISABLE KEYS */;
INSERT INTO `promocion` VALUES (6,'','','',0,'http://localhost:8080/dolceSalato//Upload_Promociones/12341.jpg','','admin','2018-10-14 04:07:16',NULL,NULL),(7,'','Descripcion Corta','',0,'http://localhost:8080/dolceSalato/Upload_Promociones/slider211.jpg','','admin','2018-11-01 17:19:27',NULL,NULL),(8,'','','',1,'http://localhost:8080/dolceSalato/Upload_Promociones/slider31.jpg','','admin','2018-11-01 17:19:37',NULL,NULL),(9,'','','',0,'http://localhost:8080/dolceSalato/Upload_Promociones/slider212.jpg','','admin','2018-11-01 17:19:50',NULL,NULL);
/*!40000 ALTER TABLE `promocion` ENABLE KEYS */;
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
  `precio` varchar(100) DEFAULT NULL,
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
INSERT INTO `proporcionproductos` VALUES (3,129,'20 Proporciones','58','','admin','2018-11-01 20:47:13'),(4,129,'30 Proporciones','80','','admin','2018-11-01 20:47:13');
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
