-- MySQL dump 10.16  Distrib 10.3.9-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dolcesalato
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
INSERT INTO `producto` VALUES (1,2,'BOLITAS DE CAUSITA','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/bocaditos-salados-y-dulces-pack-400-bocaditos-a-s23000-D_NQ_NP_719710-MPE25656182437_062017-F.jpg','','','','','admin','2018-11-02 15:14:44',NULL,NULL),(2,2,'BUTIFARRA DE LECHÓN, PAVO O LOMITO AHUMADO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/o.jpg','','','','','admin','2018-11-02 15:14:57',NULL,NULL),(3,2,'BUTIFARRA JAMÓN DEL PAÍS SALSA CRIOLLA','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/Butifarras-141.jpg','','','','','admin','2018-11-02 15:15:13',NULL,NULL),(4,2,'CAMARONES CON LIMA','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/Bonitos-bocaditos-frescos-de-camarones-con-lima.jpg','','','','','admin','2018-11-02 15:15:31',NULL,NULL),(5,2,'CANAPÉS CON DURAZNO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/b67e0c0b5d_Canapes_de_Pollo_y_Durazno.jpg','','','','','admin','2018-11-02 15:16:26',NULL,NULL),(6,2,'EMPANADITAS CARNE O POLLO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/Empanaditas-de-copetin.jpg','','','','','admin','2018-11-02 15:18:02',NULL,NULL),(7,2,'EMPANADITAS DE AJI DE GALLINA O LOMO SALTADO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/CdlrqPQWIAAYcM5.jpg','','','','','admin','2018-11-02 15:18:47',NULL,NULL),(8,2,'EMPANADITAS MIXTAS','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/7-ideas-de-rellenos-de-empanadas-para-variar-tus-comidas-3.jpg','','','','','admin','2018-11-02 15:19:23',NULL,NULL),(9,2,'ENROLLADITOS DE HOTDOG','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/c.jpg','','','','','admin','2018-11-02 15:19:57',NULL,NULL),(10,2,'ENROLLADITOS DE JAMÓN Y QUESO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/IMG_7601.jpg','','','','','admin','2018-11-02 15:33:18',NULL,NULL),(11,2,'ENROLLADITOS DE POLLO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/f558e827c0_Enrollado_pollo.jpg','','','','','admin','2018-11-02 15:20:21',NULL,NULL),(12,2,'GUINDONES CON TOCINO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/datiles.jpg','','','','','admin','2018-11-02 15:20:40',NULL,NULL),(13,2,'HAMBURGUESITAS','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/mini-hamburguesas-para-eventos-D_NQ_NP_518115-MLA25142391511_112016-F.jpg','','','','','admin','2018-11-02 15:21:09',NULL,NULL),(14,2,'HOJARASCAS AJI DE GALLINA','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/hojarascas-con-ají-de-gallina5.jpg','','','','','admin','2018-11-02 15:21:23',NULL,NULL),(15,2,'HUEVOS CON MAYONESA Y ENELDO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/huevos-elegantes.jpg','','','','','admin','2018-11-02 15:22:16',NULL,NULL),(16,2,'LANGOSTINOS CRUJIENTES CON SALSA DOLCE SALATO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/tempura.jpg','','','','','admin','2018-11-02 15:22:29',NULL,NULL),(17,2,'MINI PIONONO CON ACEITUNA','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/piqueo2.png','','','','','admin','2018-11-02 15:22:52',NULL,NULL),(18,2,'MINI PIONONO DE ESPINACA Y POLLO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/271293_original.jpg','','','','','admin','2018-11-02 15:23:09',NULL,NULL),(19,2,'MOUSSE DE ROQUEFORT','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/2ea6cbbd001717175c6c286b1aba172f.jpg','','','','','admin','2018-11-02 15:23:23',NULL,NULL),(20,2,'PAN AL AJO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/como-hacer-pan-de-ajo.jpg','','','','','admin','2018-11-02 15:23:37',NULL,NULL),(21,2,'PERITAS DE PAPA','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/peradepatata2-480x576.jpg','','','','','admin','2018-11-02 15:23:47',NULL,NULL),(22,2,'PETIT PAN DE POLLO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/Pan-con-pollo-simple.jpg','','','','','admin','2018-11-02 15:24:03',NULL,NULL),(23,2,'PIZZETAS','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/nnj.jpg','','','','','admin','2018-11-02 15:24:20',NULL,NULL),(24,2,'RAMON SERRANO CON MEMBRILLO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/18c22829d5149fc5c0b73f19ed35ab98.jpg','','','','','admin','2018-11-02 15:24:45',NULL,NULL),(25,2,'SANDWICHITOS DE JAMON  Y POLLO','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/maxresdefault.jpg','','','','','admin','2018-11-02 15:25:00',NULL,NULL),(26,2,'TOMATES RELLENOS','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/stuffed-tomato-appetizer-01.jpg','','','','','admin','2018-11-02 15:25:14',NULL,NULL),(27,2,'TRIPLECITOS','','http://localhost:80/dolceSalato/Upload_Bocaditos_Salados/img669.jpg','','','','','admin','2018-11-02 15:25:32',NULL,NULL),(28,3,'ALFAJORE DE MANJAR COBERTURA DE CHOCO','','http://localhost:80/dolceSalato/Upload_Cupckes/alfajores-chocolate-9_jpg_pagespeed_ce_yi6IW-Po1m.jpg','','','','','admin','2018-11-01 19:41:40',NULL,NULL),(29,3,'ALFAJORES CON CREMA DE MANI','','http://localhost:80/dolceSalato/Upload_Cupckes/depositphotos_109357446-stock-photo-butter-cookies-alfajores-with-caramel.jpg','','','','','admin','2018-11-01 19:42:29',NULL,NULL),(30,3,'ALFAJORES CON LIMÓN','','http://localhost:80/dolceSalato/Upload_Cupckes/DSC_8453.jpg','','','','','admin','2018-11-01 19:42:45',NULL,NULL),(31,3,'ALFAJORES CON MARACUYA','','http://localhost:80/dolceSalato/Upload_Cupckes/cocomaracuya.jpg','','','','','admin','2018-11-01 19:42:57',NULL,NULL),(32,3,'ALFAJORES DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Cupckes/f42aa3bab928c3035a9a7c6e4c2c2328.jpg','','','','','admin','2018-11-01 19:43:11',NULL,NULL),(33,3,'ALFAJORES DE MANJAR','','http://localhost:80/dolceSalato/Upload_Cupckes/alfajores.jpg','','','','','admin','2018-11-01 19:43:24',NULL,NULL),(34,3,'ALFAJORES DE NUTELLA','','http://localhost:80/dolceSalato/Upload_Cupckes/Alfajors-de-nutella.jpg','','','','','admin','2018-11-01 19:52:23',NULL,NULL),(35,3,'BESO DE MOZA','','http://localhost:80/dolceSalato/Upload_Cupckes/Besos-de-moza.jpg','','','','','admin','2018-11-01 19:52:35',NULL,NULL),(36,3,'BESO DE MOZA DE CHICHA','','http://localhost:80/dolceSalato/Upload_Cupckes/5b8b2948cae1808854a5690f4cb7619d.jpg','','','','','admin','2018-11-01 19:52:50',NULL,NULL),(37,3,'BIZCOTELAS','','http://localhost:80/dolceSalato/Upload_Cupckes/vv.jpg','','','','','admin','2018-11-01 19:53:04',NULL,NULL),(38,3,'BOLITAS DE COCO','','http://localhost:80/dolceSalato/Upload_Cupckes/bolitas_coco_2.jpg','','','','','admin','2018-11-01 19:53:17',NULL,NULL),(39,3,'BOMBON ROJO DE PRAILE','','http://localhost:80/dolceSalato/Upload_Cupckes/24125396_274085983115401_4605378768758898688_n.jpg','','','','','admin','2018-11-01 19:53:31',NULL,NULL),(40,3,'BORRACHITOS','','http://localhost:80/dolceSalato/Upload_Cupckes/Tudescuenton-6540-Taller-de-chocolates-y-bombones.jpg','','','','','admin','2018-11-01 19:53:43',NULL,NULL),(41,3,'CACHITOS DE MANJAR','','http://localhost:80/dolceSalato/Upload_Cupckes/xMG_5354_png_pagespeed_ic_nvrmK4K7gh.jpg','','','','','admin','2018-11-01 19:53:59',NULL,NULL),(42,3,'CARAMELOS DE FRUTAS','','http://localhost:80/dolceSalato/Upload_Cupckes/snacks-saludables-para-ninos.jpg','','','','','admin','2018-11-01 19:54:17',NULL,NULL),(43,3,'CHAMPU DE GUANABANA','','http://localhost:80/dolceSalato/Upload_Cupckes/Cremosa_de_mango_(3).jpg','','','','','admin','2018-11-01 19:54:30',NULL,NULL),(44,3,'CHOCOTEJA','','http://localhost:80/dolceSalato/Upload_Cupckes/chocotejas.jpg','','','','','admin','2018-11-01 19:54:45',NULL,NULL),(45,3,'CIGARRITOS DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Cupckes/cigarrillos-duo-4-cm-caja-700g.jpg','','','','','admin','2018-11-01 19:54:59',NULL,NULL),(46,3,'COCADITAS','','http://localhost:80/dolceSalato/Upload_Cupckes/IMG_0138.jpg','','','','','admin','2018-11-01 19:55:14',NULL,NULL),(47,3,'CRAQUELIN','','http://localhost:80/dolceSalato/Upload_Cupckes/10030222.jpg','','','','','admin','2018-11-01 19:55:32',NULL,NULL),(48,3,'DONAS','','http://localhost:80/dolceSalato/Upload_Cupckes/donas-1.jpg','','','','','admin','2018-11-01 19:55:53',NULL,NULL),(49,3,'FRESAS DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Cupckes/maxresdefault.jpg','','','','','admin','2018-11-01 19:56:06',NULL,NULL),(50,3,'GALLETAS','','http://localhost:80/dolceSalato/Upload_Cupckes/maxresdefault1.jpg','','','','','admin','2018-11-01 19:56:18',NULL,NULL),(51,3,'HAMBURGUESA DE HELADO','','http://localhost:80/dolceSalato/Upload_Cupckes/sandwich-helado-victor-moreno-bms.jpg','','','','','admin','2018-11-01 19:56:35',NULL,NULL),(52,3,'MACARRONES','','http://localhost:80/dolceSalato/Upload_Cupckes/macaroons-2277481_1920.jpg','','','','','admin','2018-11-01 19:56:54',NULL,NULL),(53,3,'MAICILLOS','','http://localhost:80/dolceSalato/Upload_Cupckes/nn.jpg','','','','','admin','2018-11-01 19:57:12',NULL,NULL),(54,3,'MANA','','http://localhost:80/dolceSalato/Upload_Cupckes/37.jpg','','','','','admin','2018-11-01 19:57:26',NULL,NULL),(55,3,'MINI BROWNIES','','http://localhost:80/dolceSalato/Upload_Cupckes/UK_MiniChocBrownies_800x800.jpg','','','','','admin','2018-11-01 19:57:38',NULL,NULL),(56,3,'MINI MIL HOJAS','','http://localhost:80/dolceSalato/Upload_Cupckes/1500.jpg','','','','','admin','2018-11-01 19:57:50',NULL,NULL),(57,3,'MINI MIL HOJAS DE FRESA','','http://localhost:80/dolceSalato/Upload_Cupckes/wontons_con_mascarpone.jpg','','','','','admin','2018-11-01 19:58:02',NULL,NULL),(58,3,'MINI MOUSSE DE FRESA LUCUMA Y CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Cupckes/Mini_mousse_grande.jpg','','','','','admin','2018-11-01 19:58:22',NULL,NULL),(59,3,'MINI PIE DE MANZANA','','http://localhost:80/dolceSalato/Upload_Cupckes/maxresdefault2.jpg','','','','','admin','2018-11-01 19:59:16',NULL,NULL),(60,3,'MINI PIONONO DE MANJAR','','http://localhost:80/dolceSalato/Upload_Cupckes/340c5e96fe5bc24ee3dad519247c4984.jpg','','','','','admin','2018-11-01 19:59:32',NULL,NULL),(61,3,'MINI RELAMPAGOS','','http://localhost:80/dolceSalato/Upload_Cupckes/By0PpdD_l.jpg','','','','','admin','2018-11-01 19:59:48',NULL,NULL),(62,3,'MINI TORTA RED VELVET','','http://localhost:80/dolceSalato/Upload_Cupckes/velvetok.jpg','','','','','admin','2018-11-01 20:00:03',NULL,NULL),(63,3,'MINI TORTAS DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Cupckes/Torta-Humeda-de-Chocolate-1-e1494014028112.jpg','','','','','admin','2018-11-01 20:01:33',NULL,NULL),(64,3,'NIDITOS DE AMOR','','http://localhost:80/dolceSalato/Upload_Cupckes/niditos-de-amor-de-fresa.jpg','','','','','admin','2018-11-01 20:01:54',NULL,NULL),(65,3,'OREJITAS','','http://localhost:80/dolceSalato/Upload_Cupckes/DSC03427.jpg','','','','','admin','2018-11-01 20:02:07',NULL,NULL),(66,3,'PALETAS DE CHOCO','','http://localhost:80/dolceSalato/Upload_Cupckes/chocolate-1145952_1920.jpg','','','','','admin','2018-11-01 20:02:39',NULL,NULL),(67,3,'PALETAS DE MASHMALLOW-COBERTURA DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Cupckes/DSC00337.jpg','','','','','admin','2018-11-01 20:03:02',NULL,NULL),(68,3,'PIÑA CON CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Cupckes/41860b6bb3248fc05029ba63f5206729.jpg','','','','','admin','2018-11-01 20:04:02',NULL,NULL),(69,3,'TARTALETA DE DURAZNO','','http://localhost:80/dolceSalato/Upload_Cupckes/8-MINI-TARTALETAS-FRUTAS-4-1.jpg','','','','','admin','2018-11-01 20:05:32',NULL,NULL),(70,3,'TARTALETA DE FRESA','','http://localhost:80/dolceSalato/Upload_Cupckes/zoom-d1d529a94032580a61e7f1b3d26ba1e3-920-518.jpg','','','','','admin','2018-11-01 20:05:46',NULL,NULL),(71,3,'TARTALETAS DE FRUTAS','','http://localhost:80/dolceSalato/Upload_Cupckes/15001.jpg','','','','','admin','2018-11-01 20:05:59',NULL,NULL),(72,3,'TRUFAS CON FRUTAS','','http://localhost:80/dolceSalato/Upload_Cupckes/78d8380822f9635680e9d7506f1fb8e5.jpg','','','','','admin','2018-11-01 20:06:14',NULL,NULL),(73,3,'TRUFAS D EOREO','','http://localhost:80/dolceSalato/Upload_Cupckes/12288db2c6a08687818c7cd172adc37c.png','','','','','admin','2018-11-01 20:06:27',NULL,NULL),(74,3,'TRUFAS DE CAFÉ','','http://localhost:80/dolceSalato/Upload_Cupckes/www_BANCODEIMAGENESGRATUITAS_com_-Fotografías_de_Chocolates_5.jpg','','','','','admin','2018-11-01 20:06:51',NULL,NULL),(75,3,'TRUFAS DE CHOCOLATE O CHOCOLATE BLANCO','','http://localhost:80/dolceSalato/Upload_Cupckes/trufas-de-nutella-galleta-oreo-y-chocolate.jpg','','','','','admin','2018-11-01 20:07:28',NULL,NULL),(76,3,'TRUFAS DE NUTELLA','','http://localhost:80/dolceSalato/Upload_Cupckes/Trufas-Nutella2_PintandoUnaMama1.jpg','','','','','admin','2018-11-01 20:07:42',NULL,NULL),(77,3,'TRUFAS MOCACINO','','http://localhost:80/dolceSalato/Upload_Cupckes/sin-gluten-trufas.jpg','','','','','admin','2018-11-01 20:07:53',NULL,NULL),(78,3,'TRUFAS REDVELVET','','http://localhost:80/dolceSalato/Upload_Cupckes/trufas-7.jpg','','','','','admin','2018-11-01 20:08:07',NULL,NULL),(79,3,'TRUFAS SELVA NEGRA','','http://localhost:80/dolceSalato/Upload_Cupckes/Trufas-con-coco-rallado.jpg','','','','','admin','2018-11-01 20:08:35',NULL,NULL),(80,3,'TRUFAS SOUR','','http://localhost:80/dolceSalato/Upload_Cupckes/trufas_plato.jpg','','','','','admin','2018-11-01 20:08:54',NULL,NULL),(81,1,'ALFAJOR GIGANTE','','http://localhost:80/dolceSalato/Upload_Postres/alfajor.jpg','','','','','admin','2018-11-02 10:51:56',NULL,NULL),(82,1,'BIZCOCHUELO HUMEDO','','http://localhost:80/dolceSalato/Upload_Postres/lwmy6fytev1n014ma1mk.jpg','','','','','admin','2018-11-02 10:52:50',NULL,NULL),(83,1,'BRAZO GITANO DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Postres/DSC01645.jpg','','','','','admin','2018-11-02 10:53:54',NULL,NULL),(84,1,'BRAZO GITANO DE DURAZNO','','http://localhost:80/dolceSalato/Upload_Postres/maxresdefault.jpg','','','','','admin','2018-11-02 10:55:04',NULL,NULL),(85,1,'BRAZO GITANO DE FRESA','','http://localhost:80/dolceSalato/Upload_Postres/maxresdefault1.jpg','','','','','admin','2018-11-02 10:56:02',NULL,NULL),(86,1,'BUDIN CON PASAS','','http://localhost:80/dolceSalato/Upload_Postres/budin_de_pan_con_pepitas_de_chocolate.jpg','','','','','admin','2018-11-02 10:57:17',NULL,NULL),(87,1,'CHEESECAKE CON BLUEBERRIE','','http://localhost:80/dolceSalato/Upload_Postres/IMG_6929enriquemtz-600x600.jpg','','','','','admin','2018-11-02 10:58:33',NULL,NULL),(88,1,'CHEESECAKE CON BROWNIE','','http://localhost:80/dolceSalato/Upload_Postres/Brownie-Bite-Cheesecake4-600x900.jpg','','','','','admin','2018-11-02 11:09:12',NULL,NULL),(89,1,'CHEESECAKE CON FRESA','','http://localhost:80/dolceSalato/Upload_Postres/cheesecake-de-fresas.jpg','','','','','admin','2018-11-02 11:10:00',NULL,NULL),(90,1,'CHEESECAKE CON MARACUYA','','http://localhost:80/dolceSalato/Upload_Postres/1t1bxm43v4e3_IHgNeHVAgEwK2CuE0eK6Y_cheesecake-de-maracuya_landscapeThumbnail_es.jpg','','','','','admin','2018-11-02 11:11:11',NULL,NULL),(91,1,'CHEESECAKE DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Postres/chocolate-cheesecake-6908-1.jpg','','','','','admin','2018-11-02 11:13:32',NULL,NULL),(92,1,'CHEESECAKE DE OREO','','http://localhost:80/dolceSalato/Upload_Postres/9bff0236b3c9dcacd3e82efe832ff33c.png','','','','','admin','2018-11-02 11:15:49',NULL,NULL),(93,1,'CHEESECAKE DE SAUCO','','http://localhost:80/dolceSalato/Upload_Postres/img_3753.jpg','','','','','admin','2018-11-02 11:17:03',NULL,NULL),(94,1,'CREMA VOLTEADA','','http://localhost:80/dolceSalato/Upload_Postres/0042.jpg','','','','','admin','2018-11-02 11:18:07',NULL,NULL),(95,1,'DULCE MANJAR','','http://localhost:80/dolceSalato/Upload_Postres/torta-nuez.jpg','','','','','admin','2018-11-02 11:19:33',NULL,NULL),(96,1,'GENOVESA DE CAFÉ','','http://localhost:80/dolceSalato/Upload_Postres/27578972_1602742739811932_3254286012825731072_n.jpg','','','','','admin','2018-11-02 11:20:39',NULL,NULL),(97,1,'IMPERIAL','','http://localhost:80/dolceSalato/Upload_Postres/101_0306.jpg','','','','','admin','2018-11-02 11:22:12',NULL,NULL),(98,1,'KEKE INGLES','','http://localhost:80/dolceSalato/Upload_Postres/img_queque_de_quinua_43720_600.jpg','','','','','admin','2018-11-02 11:22:59',NULL,NULL),(99,1,'PASTEL DE ACELGA','','http://localhost:80/dolceSalato/Upload_Postres/tarta_acelga.jpg','','','','','admin','2018-11-02 11:23:49',NULL,NULL),(100,1,'PASTEL DE CHOCLO','','http://localhost:80/dolceSalato/Upload_Postres/56569_640x428.jpg','','','','','admin','2018-11-02 11:24:36',NULL,NULL),(101,1,'PIE DE LIMON','','http://localhost:80/dolceSalato/Upload_Postres/0847d5211daa2cfcfde28d825aa07d5d_XL.jpg','','','','','admin','2018-11-02 11:25:45',NULL,NULL),(102,1,'PIE DE MANZANA','','http://localhost:80/dolceSalato/Upload_Postres/item-351900.jpg','','','','','admin','2018-11-02 11:26:18',NULL,NULL),(103,1,'PIONONO CON HELADO','','http://localhost:80/dolceSalato/Upload_Postres/cam01001.jpg','','','','','admin','2018-11-02 11:27:15',NULL,NULL),(104,1,'PIONONO DE MANJAR','','http://localhost:80/dolceSalato/Upload_Postres/Brazo-Reina.jpg','','','','','admin','2018-11-02 11:29:11',NULL,NULL),(105,1,'QUEQUE DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Postres/IMG_2348.jpg','','','','','admin','2018-11-02 11:30:28',NULL,NULL),(106,1,'QUEQUE DE NOVIA','','http://localhost:80/dolceSalato/Upload_Postres/maxresdefault2.jpg','','','','','admin','2018-11-02 11:33:21',NULL,NULL),(107,1,'QUEQUE DE ZANAHORIA','','http://localhost:80/dolceSalato/Upload_Postres/zanahoria2.png','','','','','admin','2018-11-02 11:34:14',NULL,NULL),(108,1,'QUICHE','','http://localhost:80/dolceSalato/Upload_Postres/quiche-lorraine-1-2-815x458.jpg','','','','','admin','2018-11-02 11:37:22',NULL,NULL),(109,1,'SELVA NEGRA','','http://localhost:80/dolceSalato/Upload_Postres/IMG_6072_copia.jpg','','','','','admin','2018-11-02 11:39:58',NULL,NULL),(110,1,'SINFONIA DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Postres/Pasteleria_12-copy-1024x768.png','','','','','admin','2018-11-02 11:41:08',NULL,NULL),(111,1,'SOUFFLE DE FRESA','','http://localhost:80/dolceSalato/Upload_Postres/Souffle_de_Fresas_335135743_large.jpg','','','','','admin','2018-11-02 11:41:53',NULL,NULL),(112,1,'TARTALETA DE FRESA','','http://localhost:80/dolceSalato/Upload_Postres/tarta-de-fresas-y-crema.jpg','','','','','admin','2018-11-02 11:44:02',NULL,NULL),(113,1,'TARTALETAS DE FRUTAS','','http://localhost:80/dolceSalato/Upload_Postres/maxresdefault3.jpg','','','','','admin','2018-11-02 11:45:09',NULL,NULL),(114,1,'TIRAMISÚ','','http://localhost:80/dolceSalato/Upload_Postres/13559174_1035894893131742_1149113640875487190_o.jpg','','','','','admin','2018-11-02 11:46:15',NULL,NULL),(115,1,'TORTA ARCOIRIS','','http://localhost:80/dolceSalato/Upload_Postres/rainbow-cake.jpg','','','','','admin','2018-11-02 11:47:54',NULL,NULL),(116,1,'TORTA DE ALFAJOR','','http://localhost:80/dolceSalato/Upload_Postres/31423185-torta-alfajor-l-thumb.jpg','','','','','admin','2018-11-02 14:53:41',NULL,NULL),(117,1,'TORTA DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Postres/receta-torta-chocolate-negro-tortas-recetas-locos-x-las-tortas-locosxlastortas.jpg','','','','','admin','2018-11-02 14:55:50',NULL,NULL),(118,1,'TORTA DE GALLETAS','','http://localhost:80/dolceSalato/Upload_Postres/tarta_galletas_cafe-525x360.jpg','','','','','admin','2018-11-02 14:57:17',NULL,NULL),(119,1,'TORTA DOLCE SALATO','','http://localhost:80/dolceSalato/Upload_Postres/dfsf.jpg','','','','','admin','2018-11-02 14:58:15',NULL,NULL),(120,1,'TORTA DOÑA PEPA','','http://localhost:80/dolceSalato/Upload_Postres/16111033_232222490562766_2564961757730701312_n.jpg','','','','','admin','2018-11-02 14:59:51',NULL,NULL),(121,1,'TORTA HELADA','','http://localhost:80/dolceSalato/Upload_Postres/maxresdefault4.jpg','','','','','admin','2018-11-02 15:01:17',NULL,NULL),(122,1,'TORTA HELADA LIGHT','','http://localhost:80/dolceSalato/Upload_Postres/tortaheladaffbthumb.jpg','','','','','admin','2018-11-02 15:02:37',NULL,NULL),(123,1,'TORTA MOKA','','http://localhost:80/dolceSalato/Upload_Postres/Torta-Moka.jpg','','','','','admin','2018-11-02 15:04:03',NULL,NULL),(124,1,'TORTA MOUSSE DE FRESA','','http://localhost:80/dolceSalato/Upload_Postres/como-hacer-una-torta-helada.jpg','','','','','admin','2018-11-02 15:05:46',NULL,NULL),(125,1,'TORTA RED VELVET','','http://localhost:80/dolceSalato/Upload_Postres/26173917_867490766765999_2074865828185653637_o.jpg','','','','','admin','2018-11-02 15:06:59',NULL,NULL),(126,1,'TORTA SELVA NEGRA LIGHT','','http://localhost:80/dolceSalato/Upload_Postres/tarta-selva-negra.jpg','','','','','admin','2018-11-02 15:08:25',NULL,NULL),(127,1,'TORTA TRES LECHES','','http://localhost:80/dolceSalato/Upload_Postres/DSCF7833.jpg','','','','','admin','2018-11-02 15:09:28',NULL,NULL),(128,1,'TORTA TRES LECHES DE CHOCOLATE','','http://localhost:80/dolceSalato/Upload_Postres/item-110732.jpg','','','','','admin','2018-11-02 15:10:24',NULL,NULL),(129,1,'TORTA TRES LECHES LIGHT','','http://localhost:80/dolceSalato/Upload_Postres/pastel3leches.jpg','','','','','admin','2018-11-02 15:12:10',NULL,NULL),(130,4,'ALITAS BOUCHET','','http://localhost:80/dolceSalato/Upload_Festivo/maxresdefault.jpg','','','','','admin','2018-11-01 20:54:16',NULL,NULL),(131,4,'BOLITAS DE YUCA CON QUESO','','http://localhost:80/dolceSalato/Upload_Festivo/b930fd6410fe17e656fd2a806a078187.jpg','','','','','admin','2018-11-01 20:54:34',NULL,NULL),(132,4,'BROCHETAS DE CARNE','','http://localhost:80/dolceSalato/Upload_Festivo/brochetas.jpg','','','','','admin','2018-11-01 20:54:46',NULL,NULL),(133,4,'BROCHETAS DE POLLO','','http://localhost:80/dolceSalato/Upload_Festivo/brochetas-de-pollo-con-jengibre-1024x627.jpg','','','','','admin','2018-11-01 20:54:56',NULL,NULL),(134,4,'BUÑUELOS DE TOLLO','','http://localhost:80/dolceSalato/Upload_Festivo/e12ee7cad2e7444a70080b6fdc15aed3.png','','','','','admin','2018-11-01 20:55:08',NULL,NULL),(135,4,'CACHANGAS','','http://localhost:80/dolceSalato/Upload_Festivo/b7867c8daf302b4afdff4347873fc19a.jpg','','','','','admin','2018-11-01 20:55:22',NULL,NULL),(136,4,'CHICHARRON DE POLLO','','http://localhost:80/dolceSalato/Upload_Festivo/chicken_fingers_page-bg_8285.jpg','','','','','admin','2018-11-01 20:55:32',NULL,NULL),(137,4,'MINI WANTAN FRITO','','http://localhost:80/dolceSalato/Upload_Festivo/aa30533de70942bd7e89e9612937b677.jpg','','','','','admin','2018-11-01 20:55:46',NULL,NULL),(138,4,'NUGGETS','','http://localhost:80/dolceSalato/Upload_Festivo/1428675741536.jpg','','','','','admin','2018-11-01 20:56:22',NULL,NULL),(139,4,'PAPITAS SERRANAS','','http://localhost:80/dolceSalato/Upload_Festivo/ds.jpg','','','','','admin','2018-11-01 20:56:40',NULL,NULL),(140,4,'TEQUEÑOS DE QUESO','','http://localhost:80/dolceSalato/Upload_Festivo/Tequeños-Colombianos-Colombian-Cheese-Sticks.jpg','','','','','admin','2018-11-01 20:56:52',NULL,NULL),(141,4,'TEQUEÑOS LOMO SALTADO','','http://localhost:80/dolceSalato/Upload_Festivo/25e1e6ae-5513-4a2a-9d8a-75f3ab2234bf.jpg','','','','','admin','2018-11-01 20:57:09',NULL,NULL),(142,4,'TEQUEÑOS QUESO Y TOCINO','','http://localhost:80/dolceSalato/Upload_Festivo/Guava-Bacon-Tequeño-1-1-1024x683.jpg','','','','','admin','2018-11-01 20:57:25',NULL,NULL),(143,4,'YUQUITAS','','http://localhost:80/dolceSalato/Upload_Festivo/Yuquitas-reyes-rojos-Martín_Yuquitas-de-aceituna-quinua.jpg','','','','','admin','2018-11-01 20:57:37',NULL,NULL),(144,5,'CAUSITA DE ATUN','','http://localhost:80/dolceSalato/Upload_Postres/MK-catering-corporativo-5-400x400.jpg','','','','','admin','2018-11-01 21:02:56',NULL,NULL),(145,5,'CAUSITA DE POLLO','','http://localhost:80/dolceSalato/Upload_Postres/atento-092.jpg','','','','','admin','2018-11-01 21:03:07',NULL,NULL),(146,5,'CHICA MORADA','','http://localhost:80/dolceSalato/Upload_Postres/original_53fe695dfcbd93a788c7b241627238a2.jpg','','','','','admin','2018-11-01 21:03:19',NULL,NULL),(147,5,'CHORITOS A LA CHALACA','','http://localhost:80/dolceSalato/Upload_Postres/cul-de-las-siguientes-es-una-comida-tpica-peruana-original.jpg','','','','','admin','2018-11-01 21:03:33',NULL,NULL),(148,5,'CONCHITAS ASADAS','','http://localhost:80/dolceSalato/Upload_Postres/conchas-asadas-1920x1280.jpg','','','','','admin','2018-11-01 21:03:44',NULL,NULL),(149,5,'MAZAMORRA MORADA VASITO','','http://localhost:80/dolceSalato/Upload_Postres/Mazamorra-Morada.jpg','','','','','admin','2018-11-01 21:03:55',NULL,NULL),(150,5,'MINI ANTICUCHOS','','http://localhost:80/dolceSalato/Upload_Postres/DSC06383_1365x907.jpg','','','','','admin','2018-11-01 21:04:05',NULL,NULL),(151,5,'MINI PICARONES','','http://localhost:80/dolceSalato/Upload_Postres/Picarones-Parque-Kenedy10.jpg','','','','','admin','2018-11-01 21:04:28',NULL,NULL),(152,5,'PAPITAS RELLENAS','','http://localhost:80/dolceSalato/Upload_Postres/bombas_carne.jpg','','','','','admin','2018-11-01 21:06:14',NULL,NULL),(153,5,'QUESO HELADO VASITO','','http://localhost:80/dolceSalato/Upload_Postres/helado-queso-3.jpg','','','','','admin','2018-11-01 21:06:26',NULL,NULL),(154,5,'SUSPIRO A LA LIMEÑO  VASITO','','http://localhost:80/dolceSalato/Upload_Postres/suspiro.jpg','','','','','admin','2018-11-01 21:07:15',NULL,NULL),(155,5,'TRES LECHES EN VASITO','','http://localhost:80/dolceSalato/Upload_Postres/arroz-con-lechE.jpg','','','','','admin','2018-11-01 21:07:29',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proporcionproductos`
--

LOCK TABLES `proporcionproductos` WRITE;
/*!40000 ALTER TABLE `proporcionproductos` DISABLE KEYS */;
INSERT INTO `proporcionproductos` VALUES (5,81,'18 Proporciones','40','','admin','2018-11-02 10:51:56'),(6,82,'20 Proporciones','40','','admin','2018-11-02 10:52:50'),(7,83,'15 Proporciones','40','','admin','2018-11-02 10:53:54'),(8,84,'15 Proporciones','40','','admin','2018-11-02 10:55:04'),(9,85,'15 Proporciones','40','','admin','2018-11-02 10:56:02'),(10,86,'24 Proporciones','28','','admin','2018-11-02 10:57:17'),(11,87,'20 Proporciones','70','','admin','2018-11-02 10:58:33'),(12,87,'30 Proporciones','85','','admin','2018-11-02 10:58:33'),(13,87,'40 Proporciones','120','','admin','2018-11-02 10:58:33'),(14,88,'20 Proporciones','70','','admin','2018-11-02 11:09:12'),(15,88,'30 Proporciones','85','','admin','2018-11-02 11:09:12'),(16,88,'40 Proporciones','120','','admin','2018-11-02 11:09:12'),(17,89,'10 Proporciones','38','','admin','2018-11-02 11:10:00'),(18,89,'20 Proporciones','58','','admin','2018-11-02 11:10:00'),(19,89,'40 Proporciones','88','','admin','2018-11-02 11:10:00'),(20,90,'10 Proporciones','38','','admin','2018-11-02 11:11:11'),(21,90,'20 Proporciones','58','','admin','2018-11-02 11:11:11'),(22,90,'40 Proporciones','88','','admin','2018-11-02 11:11:11'),(23,91,'10 Proporciones','38','','admin','2018-11-02 11:13:32'),(24,91,'20 Proporciones','58','','admin','2018-11-02 11:13:32'),(25,91,'40 Proporciones','88','','admin','2018-11-02 11:13:32'),(26,92,'20 Proporciones','70','','admin','2018-11-02 11:15:49'),(27,92,'30 Proporciones','85','','admin','2018-11-02 11:15:49'),(28,92,'40 Proporciones','120','','admin','2018-11-02 11:15:49'),(29,93,'10 Proporciones','38','','admin','2018-11-02 11:17:03'),(30,93,'20 Proporciones','58','','admin','2018-11-02 11:17:03'),(31,93,'40 Proporciones','88','','admin','2018-11-02 11:17:03'),(32,94,'24 Proporciones','40','','admin','2018-11-02 11:18:07'),(33,95,'20 Proporciones','55','','admin','2018-11-02 11:19:33'),(34,95,'30 Proporciones','75','','admin','2018-11-02 11:19:33'),(35,95,'40 Proporciones','100','','admin','2018-11-02 11:19:33'),(36,96,'20 Proporciones','55','','admin','2018-11-02 11:20:39'),(37,96,'30 Proporciones','75','','admin','2018-11-02 11:20:39'),(38,96,'40 Proporciones','100','','admin','2018-11-02 11:20:39'),(39,97,'20 Proporciones','55','','admin','2018-11-02 11:22:12'),(40,97,'30 Proporciones','75','','admin','2018-11-02 11:22:13'),(41,97,'40 Proporciones','100','','admin','2018-11-02 11:22:13'),(42,98,'20 Proporciones','40','','admin','2018-11-02 11:22:59'),(43,99,'20 Proporciones','48','','admin','2018-11-02 11:23:49'),(44,100,'20 Proporciones','60','','admin','2018-11-02 11:24:36'),(45,101,'24 Proporciones','38','','admin','2018-11-02 11:25:45'),(46,102,'24 Proporciones','30','','admin','2018-11-02 11:26:18'),(47,103,'15 Proporciones','48','','admin','2018-11-02 11:27:15'),(48,104,'15 Proporciones','32','','admin','2018-11-02 11:29:11'),(49,105,'20 Proporciones','34','','admin','2018-11-02 11:30:28'),(50,105,'30 Proporciones','45','','admin','2018-11-02 11:30:28'),(51,105,'40 Proporciones','60','','admin','2018-11-02 11:30:28'),(52,106,'100 Unidades','70','','admin','2018-11-02 11:33:21'),(53,106,'50 Unidades','35','','admin','2018-11-02 11:33:21'),(54,107,'100 Unidades','70','','admin','2018-11-02 11:34:14'),(55,107,'50 Unidades','35','','admin','2018-11-02 11:34:14'),(56,108,'20 Proporciones','48','','admin','2018-11-02 11:37:22'),(57,109,'20 Porciones','55','','admin','2018-11-02 11:39:58'),(58,109,'30 Porciones','75','','admin','2018-11-02 11:39:59'),(59,109,'40 Porciones','100','','admin','2018-11-02 11:39:59'),(60,110,'20 Porciones','48','','admin','2018-11-02 11:41:08'),(61,110,'30 Porciones','70','','admin','2018-11-02 11:41:08'),(62,110,'40 Porciones','90','','admin','2018-11-02 11:41:08'),(63,111,'20 Porciones','42','','admin','2018-11-02 11:41:53'),(64,112,'24 Porciones','48','','admin','2018-11-02 11:44:02'),(65,113,'20 Porciones','54','','admin','2018-11-02 11:45:09'),(66,114,'20 Porciones','55','','admin','2018-11-02 11:46:15'),(67,114,'320 Porciones','75','','admin','2018-11-02 11:46:15'),(68,114,'40 Porciones','100','','admin','2018-11-02 11:46:15'),(69,115,'20 Porciones','70','','admin','2018-11-02 11:47:54'),(70,115,'40 Porciones','95','','admin','2018-11-02 11:47:54'),(71,116,'20 Porciones','60','','admin','2018-11-02 14:53:41'),(72,117,'20 Porciones','40','','admin','2018-11-02 14:55:50'),(73,117,'30 Porciones','60','','admin','2018-11-02 14:55:50'),(74,117,'40 Porciones','80','','admin','2018-11-02 14:55:50'),(75,118,'24 Porciones','35','','admin','2018-11-02 14:57:17'),(76,119,'20 Porciones','55','','admin','2018-11-02 14:58:15'),(77,119,'30 Porciones','75','','admin','2018-11-02 14:58:15'),(78,119,'40 Porciones','100','','admin','2018-11-02 14:58:15'),(79,120,'20 Porciones','55','','admin','2018-11-02 14:59:51'),(80,121,'20 Porciones','40','','admin','2018-11-02 15:01:17'),(81,121,'40 Porciones','60','','admin','2018-11-02 15:01:17'),(82,122,'20 Porciones','50','','admin','2018-11-02 15:02:37'),(83,122,'40 Porciones','70','','admin','2018-11-02 15:02:37'),(84,123,'20 Porciones','55','','admin','2018-11-02 15:04:04'),(85,123,'30 Porciones','75','','admin','2018-11-02 15:04:04'),(86,123,'40 Porciones','100','','admin','2018-11-02 15:04:04'),(87,124,'20 Porciones','60','','admin','2018-11-02 15:05:46'),(88,124,'40 Porciones','80','','admin','2018-11-02 15:05:46'),(89,125,'20 Porciones','55','','admin','2018-11-02 15:06:59'),(90,125,'30 Porciones','75','','admin','2018-11-02 15:06:59'),(91,125,'40 Porciones','100','','admin','2018-11-02 15:06:59'),(92,126,'20 Porciones','65','','admin','2018-11-02 15:08:25'),(93,126,'30 Porciones','85','','admin','2018-11-02 15:08:25'),(94,127,'20 Porciones','48','','admin','2018-11-02 15:09:28'),(95,127,'30 Porciones','70','','admin','2018-11-02 15:09:28'),(96,127,'40 Porciones','90','','admin','2018-11-02 15:09:28'),(97,128,'20 Porciones','55','','admin','2018-11-02 15:10:24'),(98,128,'30 Porciones','75','','admin','2018-11-02 15:10:24'),(99,128,'40 Porciones','100','','admin','2018-11-02 15:10:24'),(100,129,'20 Porciones','58','','admin','2018-11-02 15:12:10'),(101,129,'30 Proporciones','80','','admin','2018-11-02 15:12:10'),(102,5,'100 Unidades','80','','admin','2018-11-02 15:16:26'),(103,5,'50 Unidades','40','','admin','2018-11-02 15:16:26'),(104,6,'100 Unidades','50','','admin','2018-11-02 15:18:02'),(105,6,'50 Unidades','30','','admin','2018-11-02 15:18:02'),(106,7,'100 Unidades','55','','admin','2018-11-02 15:18:47'),(107,7,'50 Unidades','35','','admin','2018-11-02 15:18:47'),(108,8,'100 Unidades','50','','admin','2018-11-02 15:19:23'),(109,8,'50 Unidades','25','','admin','2018-11-02 15:19:23');
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
