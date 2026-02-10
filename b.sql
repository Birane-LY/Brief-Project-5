-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: boutique_gestion_systeme
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categorie`),
  UNIQUE KEY `nom_categorie` (`nom_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (5,'Électronique'),(1,'Informatique'),(6,'Matériel'),(4,'Mobilier'),(3,'Papeterie');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mouvements`
--

DROP TABLE IF EXISTS `Mouvements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mouvements` (
  `id_mouvement` int NOT NULL AUTO_INCREMENT,
  `nature_mouvement` enum('Achat','Vente') NOT NULL,
  `quantite_mouv` int NOT NULL,
  `date_mouvement` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_produit` int DEFAULT NULL,
  PRIMARY KEY (`id_mouvement`),
  KEY `id_produit` (`id_produit`),
  CONSTRAINT `Mouvements_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `Produits` (`id_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mouvements`
--

LOCK TABLES `Mouvements` WRITE;
/*!40000 ALTER TABLE `Mouvements` DISABLE KEYS */;
INSERT INTO `Mouvements` VALUES (1,'Achat',15,'2026-02-10 07:43:38',1),(2,'Achat',10,'2026-02-10 08:47:30',2),(3,'Vente',12,'2026-02-10 10:33:19',1),(4,'Vente',3,'2026-02-10 10:35:06',1),(5,'Achat',10,'2026-02-10 10:52:19',3),(6,'Achat',20,'2026-02-10 11:21:54',4);
/*!40000 ALTER TABLE `Mouvements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produits`
--

DROP TABLE IF EXISTS `Produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produits` (
  `id_produit` int NOT NULL AUTO_INCREMENT,
  `code_produit` varchar(20) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `quantite` int DEFAULT '0',
  `statut_produit` enum('Disponible','En rupture') DEFAULT 'Disponible',
  `id_categorie` int DEFAULT NULL,
  PRIMARY KEY (`id_produit`),
  UNIQUE KEY `code_produit` (`code_produit`),
  KEY `id_categorie` (`id_categorie`),
  CONSTRAINT `Produits_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `Categories` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produits`
--

LOCK TABLES `Produits` WRITE;
/*!40000 ALTER TABLE `Produits` DISABLE KEYS */;
INSERT INTO `Produits` VALUES (1,'P001','Ordinateur',150000,0,'En rupture',5),(2,'P002','Souris portable',6000,10,'Disponible',5),(3,'P003','Sandales',1000,10,'Disponible',6),(4,'P004','Pack crayon',800,20,'Disponible',3);
/*!40000 ALTER TABLE `Produits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-10 12:36:56
