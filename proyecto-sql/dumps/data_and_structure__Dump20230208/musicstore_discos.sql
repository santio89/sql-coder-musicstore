-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: musicstore
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `discos`
--

DROP TABLE IF EXISTS `discos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discos` (
  `id_disco` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `banda` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `sello` varchar(100) NOT NULL,
  `fecha_album` date NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `fecha_carga` date NOT NULL,
  `active_status` tinyint NOT NULL,
  PRIMARY KEY (`id_disco`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discos`
--

LOCK TABLES `discos` WRITE;
/*!40000 ALTER TABLE `discos` DISABLE KEYS */;
INSERT INTO `discos` VALUES (1,'Fear of the Dark','Iron Maiden','Descripcion Disco','Rock','EMI','1992-01-01',140,'2022-10-11',1),(2,'Use Your Illussion I','Guns N\' Roses','Descripcion Disco','Rock','Geffen Records','1991-01-01',120,'2021-10-11',1),(3,'Use Your Illussion II','Guns N\' Roses','Descripcion Disco','Rock','Geffen Records','1991-01-01',120,'2021-10-11',1),(4,'Physical Graffiti','Led Zeppelin','Descripcion Disco','Rock','Swan Song','1975-01-01',90,'2020-12-07',1),(5,'Star People','Miles Davis','Descripcion Disco','Jazz','Columbia','1983-01-01',80,'2020-01-09',1),(6,'Stones','Neil Diamond','Descripcion Disco','Rock','MCA','1980-01-01',140,'2022-10-02',1),(7,'Pretty Monster','The Blue Stones','Descripcion Disco','Rock','MNRK','2022-01-01',85,'2022-11-11',1),(8,'Aftermath','The Rolling Stones','Descripcion Disco','Rock','ABKCO','1966-01-01',70,'2019-11-11',1),(9,'Revolver','The Beatles','Descripcion Disco','Rock','Apple Records','1966-01-01',95,'2019-12-07',1),(10,'Master of Puppets','Metallica','Descripcion Disco','Metal','Blackened','1986-01-01',90,'2020-01-09',1),(11,'Backless','Eric Clapton','Descripcion Disco','Rock','RSO','1978-01-01',110,'2022-10-11',1),(12,'Return of the Dream Canteen','Red Hot Chili Peppers','Descripcion Disco','Rock','Warner Records','2022-01-01',120,'2022-11-11',1),(13,'Strictly Elvis','Elvis Presley','Descripcion Disco','Rock','RCA','1965-01-01',120,'2018-07-11',1),(14,'Burning Desire','Jimi Hendrix','Descripcion Disco','Rock','Dagger Records','2006-01-01',90,'2021-05-04',1),(15,'Rastaman Vibration','Bob Marley & The Wailers','Descripcion Disco','Reggae','Analogue Productions','1976-01-01',80,'2020-08-09',1);
/*!40000 ALTER TABLE `discos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_after_insertDisco_bkp` AFTER INSERT ON `discos` FOR EACH ROW INSERT INTO bkp_discos VALUES (NULL, NEW.id_disco, NEW.nombre, NEW.banda, NEW.descripcion, NEW.genero, NEW.sello, NEW.fecha_album, NEW.precio, NEW.fecha_carga, NEW.active_status) */;;
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

-- Dump completed on 2023-02-08  0:21:24
