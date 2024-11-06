CREATE DATABASE  IF NOT EXISTS `shop_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shop_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_db
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (10,2,1,'TRANSACTIONAL ACCOUNTING (APS)',122,1,'No_image_available.svg.webp'),(11,2,2,'iphone',1111,1,'OIP.jpg');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int NOT NULL,
  `placed_on` date NOT NULL DEFAULT (cast(now() as date)),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'ssdfsd','fsdfs','jamespiso@gmail.com','gcash','sdfddfg, dfg, 56, 7567','r55 (5 x 1) - ',5,'2024-09-24','Completed'),(2,1,'hbhjb','9897','jamespiso@gmail.com','credit card','dd, dd, d, 23','r55 (5 x 1) - ',5,'2024-09-26','pending'),(3,1,'FDG','DFG','jamespiso@gmail.com','credit card','567, 567, 567, 57','r55 (5 x 5) - ',25,'2024-09-26','pending'),(4,1,'sdf','345345','admin@gmail.com','credit card','345, 345, 345354, 345','r55 (5 x 1) - ',5,'2024-09-28','pending'),(5,1,'hdfjh','0965656565','admin@gmail.com','credit card','khahsdhjagsjdh, ashdkjashd, jhjsakd, 6512','r55 (5 x 10) - ',50,'2024-09-28','pending'),(6,1,'sdf','sdf','admin@gmail.com','credit card','345, 345, 35, 345','r55 (5 x 1) - ',5,'2024-09-28','pending'),(7,1,'sdf','sdf','admin@gmail.com','credit card','sdf, sdf, sfd, 546','r55 (5 x 1) - ',5,'2024-09-28','pending');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cid` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL,
  `technology` varchar(255) DEFAULT NULL,
  `announced` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `build` varchar(255) DEFAULT NULL,
  `sim` longtext,
  `display_type` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `protection` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `gpu` varchar(255) DEFAULT NULL,
  `mem_card_slot` varchar(255) DEFAULT NULL,
  `mem_internal` varchar(255) DEFAULT NULL,
  `mc_modules` varchar(255) DEFAULT NULL,
  `mc_features` varchar(255) DEFAULT NULL,
  `mc_video` varchar(255) DEFAULT NULL,
  `sc_modules` varchar(255) DEFAULT NULL,
  `sc_features` varchar(255) DEFAULT NULL,
  `sc_video` varchar(255) DEFAULT NULL,
  `loudspeaker` varchar(255) DEFAULT NULL,
  `sound_jack` varchar(255) DEFAULT NULL,
  `wlan` varchar(255) DEFAULT NULL,
  `bluetooth` varchar(255) DEFAULT NULL,
  `positioning` varchar(255) DEFAULT NULL,
  `nfc` varchar(255) DEFAULT NULL,
  `infrared_port` varchar(255) DEFAULT NULL,
  `radio` varchar(255) DEFAULT NULL,
  `usb` varchar(255) DEFAULT NULL,
  `sensors` varchar(255) DEFAULT NULL,
  `battery_type` varchar(255) DEFAULT NULL,
  `charging` varchar(255) DEFAULT NULL,
  `colors` varchar(255) DEFAULT NULL,
  `models` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_idx` (`cid`),
  CONSTRAINT `fk_category` FOREIGN KEY (`cid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,NULL,'TRANSACTIONAL ACCOUNTING (APS)','Romil Entino',122,'No_image_available.svg.webp','logo.png','ddc_connect3_carnage_red.png','technology','announced','status','dimensions','weight','buils','sim','D TYPE','size','res','PRO','os','cs','cpu','gpu','cs','internal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'iphone','new',1111,'OIP.jpg','OIP.jpg','OIP.jpg','tech 1','ann 1','stat 1','dimension 1','weight 1','build 1','sim 1','type 1','size 1','resolution 1','protection 1','mac ','chipset 1','cpu 1','gpu 1','card slot 1','internal 1','mc module 1','mc features 1','mc video 1','mc module 1','mc features 1','mc video 1','sc loudspeaker','sc jack','wlan 1','bluetooth 1','positioning 1','nfc 1','infrared 1','radio 1','usb 1','sensors 1','type 1','b charging 1','colors 1','model 1'),(3,NULL,'samsung','old',123,'OIP (1).jpg','OIP (1).jpg','OIP (1).jpg','tech 2','ann 2','stat 2','dimension 2','weight 2','build 2','sim 2','type 2','size 2','resolution 2','protection 2','android','chipset 2','cpu 2','gpu 2','card slot 2','internal 2','mc module 2','mc features 2','mc video 2','sc module 2','sc features 2','sc vidoe 2','sc loudspeaker 2','sc jack 2','wlan 2','bluetooth 2','positioning 2','nfc 2','infrared 2','radio 2','usb 2','sensors 2','b type 2','b charging 2','colors 2','model 2'),(4,NULL,'Huawie','old',1335,'OIP (2).jpg','OIP (2).jpg','OIP (2).jpg','tech 3','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(5,NULL,'HP Laptop','You can really go places with this portable 14&rdquo; laptop that&rsquo;s only 16.9mm thin and features an integrated 4G LTE&sup3; connection.',50000,'gBeu6qgL4pc8K7HEjw4Kok.jpg','gBeu6qgL4pc8K7HEjw4Kok.jpg','gBeu6qgL4pc8K7HEjw4Kok.jpg','TECH USED','SEPTEMBER 12, 2019','AVAILABLE ON SEPTEMBER 2022','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(6,NULL,'MAC BOOK ','You can really go places with this portable 14&rdquo; laptop that&rsquo;s only 16.9mm thin and features an integrated 4G LTE&sup3; connection.',89000,'e3ced41b-70f0-4afa-813a-6aa923980501_2.0388a3cf5a00012a75f3d3898a4d1062.webp','e3ced41b-70f0-4afa-813a-6aa923980501_2.0388a3cf5a00012a75f3d3898a4d1062.webp','e3ced41b-70f0-4afa-813a-6aa923980501_2.0388a3cf5a00012a75f3d3898a4d1062.webp','MAC OS','OCTOBER 12, 2009','AVAILABLE ON JANUARY 2022','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(7,NULL,'MAC BOOK 22','You can really go places with this portable 14&rdquo; laptop that&rsquo;s only 16.9mm thin and features an integrated 4G LTE&sup3; connection.',89000,'Screenshot 2024-06-20 022612.png','Screenshot 2024-06-20 022612.png','Screenshot 2024-06-20 022612.png','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics_tbl`
--

DROP TABLE IF EXISTS `statistics_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `type` tinyint NOT NULL COMMENT '0 => PAGE VIEW, 1 => ADD TO CART, 2 => ADD TO WISHLIST, 3 => ORDERED',
  `created_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `type` (`type`),
  KEY `fk_product_id_idx` (`product_id`),
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_tbl`
--

LOCK TABLES `statistics_tbl` WRITE;
/*!40000 ALTER TABLE `statistics_tbl` DISABLE KEYS */;
INSERT INTO `statistics_tbl` VALUES (1,1,1,'2024-09-28 09:55:57'),(2,2,2,'2024-09-28 09:56:31'),(3,1,0,'2024-09-28 09:57:33'),(4,1,0,'2024-09-28 09:58:18'),(5,1,1,'2024-09-28 10:01:14'),(6,2,3,'2024-09-28 10:01:45');
/*!40000 ALTER TABLE `statistics_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@gmail.com','7c222fb2927d828af22f592134e8932480637c0d'),(2,'admin','lhimortinoen007@gmail.com','6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shop_db'
--

--
-- Dumping routines for database 'shop_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 21:18:00
