-- MySQL dump 10.13  Distrib 8.0.45, for Linux (x86_64)
--
-- Host: localhost    Database: shoeshop
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `permission_id` char(36) NOT NULL,
  `api_path` varchar(300) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `method` varchar(20) NOT NULL,
  `module` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE','SUSPENDED') DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES ('024a493f-26d4-466a-8771-498f64566565','/api/v1/roles','2026-02-08 02:57:08.092499','POST','PERMISSIO3N','Get Permisson1','DELETED','2026-02-08 02:58:11.677542'),('27e6ce1e-aa85-42d4-bdb7-4ca414feb867','/api/v1/users/{id}','2026-02-05 06:07:34.429719','GET','USER','get user','ACTIVE','2026-02-05 06:07:34.429719'),('4696e647-0b63-493b-95cd-286523568f9c','/api/v1/users/{id}','2026-02-05 08:35:46.639835','GET','USER','Get User','ACTIVE','2026-02-05 08:35:46.639835'),('7c8961dc-1e2c-481a-9a0c-845dee326ec7','/api/v1/users/{id}','2026-02-05 08:34:33.984392','GET','USER','api/v1/users/{id}','DELETED','2026-02-06 09:24:46.357433'),('a798eae2-4dff-4413-b764-763591369fac','/api/v1/role/{id}','2026-02-06 09:01:12.680529','GET','PERMISSIO3N','Get Permisson1','DELETED','2026-02-06 09:23:39.092860'),('e2eb4588-97ef-42cc-99d5-5555a3d6acab','/api/v1/role/{id}','2026-02-06 09:01:33.430415','GET','permissio33n','get permission123','DELETED','2026-02-06 09:24:22.801217');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-08 17:37:54
