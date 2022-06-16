CREATE DATABASE  IF NOT EXISTS `vacation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vacation`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: vacation
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `savedvacations`
--

DROP TABLE IF EXISTS `savedvacations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savedvacations` (
  `userID` int NOT NULL,
  `vacationID` int NOT NULL,
  KEY `userID` (`userID`),
  KEY `vacationID` (`vacationID`),
  CONSTRAINT `savedvacations_ibfk_1` FOREIGN KEY (`vacationID`) REFERENCES `vacations` (`vacationID`) ON DELETE CASCADE,
  CONSTRAINT `savedvacations_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedvacations`
--

LOCK TABLES `savedvacations` WRITE;
/*!40000 ALTER TABLE `savedvacations` DISABLE KEYS */;
INSERT INTO `savedvacations` VALUES (49,36),(49,44),(49,43),(46,35),(46,37),(46,39),(49,39),(38,39),(38,35);
/*!40000 ALTER TABLE `savedvacations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (37,'Admin','Admin','Admin','admin',1),(38,'test','test','test','test',0),(46,'user','user','user','user',0),(47,'user1','user1','user1','user1',0),(48,'user2','user2','user2','user2',0),(49,'vitaly','rapoport','vruser','vruser',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacations`
--

DROP TABLE IF EXISTS `vacations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacations` (
  `vacationID` int NOT NULL AUTO_INCREMENT,
  `description` varchar(300) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`vacationID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacations`
--

LOCK TABLES `vacations` WRITE;
/*!40000 ALTER TABLE `vacations` DISABLE KEYS */;
INSERT INTO `vacations` VALUES (35,'New York City is built from hundreds of diverse communities across all five boroughs. Throughout NYC, there are experiences to thrill every visitor and cultures to discover from around the world. Are you ready to explore?','New York','cd21e60f-69d7-47cb-b194-c33417f984f8.jpg','2022-05-07','2022-05-31',600),(36,'Cancun is recognized throughout the world for its spectacular white sand beaches and its fascinating sea in blue tones. With unique natural places, Mayan culture, water activities and adventure. International cuisine,  shows, bars and nightclubs that give fame to its incomparable nightlife.','Cancun','43ee8285-e09c-4f59-bfe9-1c90c3a9e3b3.jpg','2022-05-07','2022-05-29',800),(37,'The bohemian allure and fairytale features of Prague make it a perfect destination for culture vultures who want to immerse themselves in history, art, music, and architecture. ','Prague','0bc2c839-cd76-40c2-bdc4-ece85b586930.webp','2022-05-07','2022-05-25',300),(39,'Las Vegas is an internationally renowned major resort city, known primarily for its gambling, shopping, fine dining, entertainment, and nightlife. The Las Vegas Valley as a whole serves as the leading financial, commercial, and cultural center for Nevada.','Las Vegas','695182fb-c5af-49f4-ae3d-7b8bf31e20b9.jpg','2022-05-07','2022-06-01',800),(40,'Tel Aviv is one of the most vibrant cities in the world. Titled the ‘Mediterranean Capital of Cool’ by the New York Times, this is a 24 hour city with a unique pulse, combining sandy Mediterranean beaches with a world-class nightlife, a buzzing cultural scene, incredible food.','Tel Aviv','982bf199-16c0-4347-9f4a-bef21714e5a8.jpg','2022-05-07','2022-05-15',500),(41,'Jerusalem is as unique as she is special. Beyond her religious and historic significance, Jerusalem is the capital of modern-day Israel and an advanced, dynamic city. Jerusalem has to be seen to be believed.','Jerusalem','17157094-7786-41b9-b62c-3a956bc2bbed.webp','2022-05-07','2022-05-23',400),(42,'Visit the world-famous 17th century capital of Holland. Enjoy the historic buildings, beautiful museums and pleasant ambiance. Go for a boat tour on the canals, stroll through Vondelpark, and go shopping in the inner city. Amsterdam is a unique city!','Amsterdam','cb6d8c5a-cf15-45e8-bc19-9639d92fc43f.webp','2022-05-07','2022-05-23',400),(43,'he reasons to visit the Great Wall of China are that it has a long history and a massive scale which is said to be seen from the space. Also, one can enjoy the entertainment of hiking and photography and test your courage, etc.','The Great Wall of China','d62da1d0-4b53-45b3-afb8-d4708e48698e.jpg','2022-05-07','2022-05-15',100),(44,'The small island of Bora Bora overflows with beauty. A dormant volcano rises up at its center and fans out into lush jungle before spilling into an aquamarine lagoon. In fact, author James Michener, who wrote \"Tales of the South Pacific,\" called Bora Bora \"the most beautiful island in the world.\"','Bora Bora','031d5851-5112-4186-bc07-a7793097a825.jpg','2022-05-07','2022-05-09',900);
/*!40000 ALTER TABLE `vacations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 16:06:48
