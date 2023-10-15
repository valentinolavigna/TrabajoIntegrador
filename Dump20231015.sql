-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `actores`
--

DROP TABLE IF EXISTS `actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actores` (
  `idActores` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Apellido` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idActores`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actores`
--

LOCK TABLES `actores` WRITE;
/*!40000 ALTER TABLE `actores` DISABLE KEYS */;
INSERT INTO `actores` VALUES (1,'Pedro','Pascal'),(2,'Carl','Weathers'),(3,'Misty','Rosas'),(4,'Chris','Bartlett'),(5,'Rio','Hackford'),(6,'Giancarlo','Esposito'),(7,'Tom','Hopper'),(8,'David','Castañeda'),(9,'Emmy','Raver-Lampman'),(10,'Robert','Sheehan'),(11,'Aidan','Gallagher'),(12,'Elliot','Page'),(13,'Anya','Taylor-Joy'),(14,'Thomas','Brodie-Sangster'),(15,'Harry','Melling'),(16,'Moses','Ingram'),(17,'Chloe','Pirrie'),(18,'Janina','Elkin'),(19,'Lili','Reinhart'),(20,'Casey','Cott'),(21,'Camila','Mendes'),(22,'Marisol','Nichols'),(23,'Madelaine','Petsch'),(24,'Mädchen','Amick'),(25,'Claire','Fox'),(26,'Olivia','Colman'),(27,'Matt','Smith'),(28,'Tobias','Menzies'),(29,'Vanesa','Kirby'),(30,'Helena','Bonham Carter'),(31,'Millie','Bobby Brown'),(32,'Henry','Cavill'),(33,'Sam','Claflin'),(34,'Helena','Bonham Carter'),(35,'Louis','Partridge'),(36,'Adeel','Akhtar'),(37,'Joaquin','Phoenix'),(38,'Robert','De Niro'),(39,'Zazie','Beetz'),(40,'Frances','Conroy'),(41,'Brett','Cullen'),(42,'Shea','Whigham'),(43,'Robert','Downey Jr.'),(44,'Chris','Evans'),(45,'Mark','Ruffalo'),(46,'Chris','Hemsworth'),(47,'Scarlett','Johansson'),(48,'Jeremy','Renner'),(49,'Emilia','Clarke'),(50,'Lena','Headey'),(51,'Sophie','Turner'),(52,'Kit','Harington'),(53,'Peter','Dinklage'),(54,'Nikolaj','Coster-Waldau'),(55,'Grant','Gustin'),(56,'Carlos','Valdes'),(57,'Danielle','Panabaker'),(58,'Candice','Patton'),(59,'Jesse','L. Martin'),(60,'Tom','Cavanagh'),(61,'Jim','Parsons'),(62,'Johnny','Galecki'),(63,'Kaley','Cuoco'),(64,'Simon','Helberg'),(65,'Kunal','Nayyar'),(66,'Melissa','Rauch'),(67,'Jennifer','Aniston'),(68,'Courteney','Cox'),(69,'Lisa','Kudrow'),(70,'David','Schwimmer'),(71,'Matthew','Perry'),(72,'Matt','LeBlanc'),(73,'Amybeth','McNulty'),(74,'Geraldine','James'),(75,'R. H.','Thomson'),(76,'Corrine','Koslo'),(77,'Dalila','Bela'),(78,'Lucas','Jade Zumann'),(79,'Gillian','Anderson'),(80,'David','Duchovny'),(81,'Mitch','Pileggi'),(82,'Robert','Patrick'),(83,'Tom','Braidwood'),(84,'Bruce','Harwood'),(85,'Jared','Harris'),(86,'Stellan','Skarsgård'),(87,'Emily','Watson'),(88,'Paul','Ritter'),(89,'Jessie','Buckley'),(90,'Adam','Nagaitis'),(91,'Evan Rachel','Wood'),(92,'Thandie','Newton'),(93,'Jeffrey','Wright'),(94,'Tessa','Thompson'),(95,'Ed','Harris'),(96,'Luke','Hemsworth'),(97,'Lee','Pace'),(98,'Scoot','McNairy'),(99,'Mackenzie','Davis'),(100,'Kerry','Bishé'),(101,'Toby','Huss'),(102,'Alana','Cavanaugh'),(103,'Jessica','Chastain'),(104,'John','Malkovich'),(105,'Colin','Farrell'),(106,'Commonn',''),(107,'Geena','Davis'),(108,'Ioan','Gruffudd');
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actorescatalogo`
--

DROP TABLE IF EXISTS `actorescatalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actorescatalogo` (
  `idActoresCatalogo` int NOT NULL AUTO_INCREMENT,
  `idCatalogo` int DEFAULT NULL,
  `idActores` int DEFAULT NULL,
  PRIMARY KEY (`idActoresCatalogo`),
  KEY `idCatalogo` (`idCatalogo`),
  KEY `idActores` (`idActores`),
  CONSTRAINT `actorescatalogo_ibfk_1` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo` (`idCatalogo`),
  CONSTRAINT `actorescatalogo_ibfk_2` FOREIGN KEY (`idActores`) REFERENCES `actores` (`idActores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actorescatalogo`
--

LOCK TABLES `actorescatalogo` WRITE;
/*!40000 ALTER TABLE `actorescatalogo` DISABLE KEYS */;
/*!40000 ALTER TABLE `actorescatalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo`
--

DROP TABLE IF EXISTS `catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo` (
  `idCatalogo` int NOT NULL AUTO_INCREMENT,
  `Poster` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Titulo` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idCategoria` int DEFAULT NULL,
  `Resumen` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Temporadas` int DEFAULT NULL,
  `Trailer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idCatalogo`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `catalogo_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo`
--

LOCK TABLES `catalogo` WRITE;
/*!40000 ALTER TABLE `catalogo` DISABLE KEYS */;
INSERT INTO `catalogo` VALUES (1,'/posters/1.jpg','The Crown',1,'Este drama narra las rivalidades políticas y el romance de la reina Isabel II...',4,NULL),(2,'/posters/2.jpg','Riverdale',1,'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos...',5,NULL),(3,'/posters/3.jpg','The Mandalorian',1,'Ambientada tras la caída del Imperio...',2,'https://www.youtube.com/embed/aOC8E8z_ifw'),(4,'/posters/4.jpg','The Umbrella Academy',1,'La muerte de su padre reúne a unos hermanos distanciados...',1,NULL),(5,'/posters/5.jpg','Gambito de Dama',1,'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don...',1,NULL),(6,'/posters/6.jpg','Enola Holmes',2,'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla...',NULL,NULL),(7,'/posters/7.jpg','Guasón',2,'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad...',NULL,'https://www.youtube.com/embed/zAGVQLHvwOY'),(8,'/posters/8.jpg','Avengers: End Game',2,'Después de los devastadores eventos de los Vengadores: Infinity War...',NULL,NULL),(9,'/posters/9.jpg','Juego de tronos',1,'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza...',8,NULL),(10,'/posters/10.jpg','The Flash',1,'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás...',6,NULL),(11,'/posters/11.jpg','The Big Bang Theory',1,'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento...',12,'https://www.youtube.com/embed/WBb3fojgW0Q'),(12,'/posters/12.jpg','Friends',1,'\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey...',10,NULL),(13,'/posters/13.jpg','Anne with an \'E\'',1,'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo...',2,NULL),(14,'/posters/14.jpg','Expedientes Secretos \'X\'',1,'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación...',11,'https://www.youtube.com/embed/KKziOmsJxzE'),(15,'/posters/15.jpg','Chernobyl',1,'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable...',1,'https://www.youtube.com/embed/s9APLXM9Ei8'),(16,'/posters/16.jpg','Westworld',1,'\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado...',3,'https://www.youtube.com/embed/qLFBcdd6Qw0'),(17,'/posters/17.jpg','Halt and Catch Fire',1,'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera...',4,'https://www.youtube.com/embed/pWrioRji60A'),(18,'/posters/18.jpg','Ava',2,'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas...',NULL,'https://www.youtube.com/embed/j0JVyS8fn_8');
/*!40000 ALTER TABLE `catalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Serie'),(2,'Pelicula');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `idGenero` int NOT NULL AUTO_INCREMENT,
  `Genero` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generocatalogo`
--

DROP TABLE IF EXISTS `generocatalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generocatalogo` (
  `idGeneroCatalogo` int NOT NULL AUTO_INCREMENT,
  `idCatalogo` int DEFAULT NULL,
  `idGenero` int DEFAULT NULL,
  PRIMARY KEY (`idGeneroCatalogo`),
  KEY `idCatalogo` (`idCatalogo`),
  KEY `idGenero` (`idGenero`),
  CONSTRAINT `generocatalogo_ibfk_1` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo` (`idCatalogo`),
  CONSTRAINT `generocatalogo_ibfk_2` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generocatalogo`
--

LOCK TABLES `generocatalogo` WRITE;
/*!40000 ALTER TABLE `generocatalogo` DISABLE KEYS */;
/*!40000 ALTER TABLE `generocatalogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-15 20:51:07
