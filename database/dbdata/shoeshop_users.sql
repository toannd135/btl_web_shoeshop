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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` char(36) NOT NULL,
  `avatar_image` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` enum('FEMALE','MALE','OTHER') DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `status` enum('ACTIVE','DELETED','INACTIVE','SUSPENDED') NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `role_id` char(36) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  KEY `FKp56c1712k691lhsyewcssf40f` (`role_id`),
  CONSTRAINT `FKp56c1712k691lhsyewcssf40f` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('0f3de2b8-ea87-4914-a0af-fb4916030c6b','okokok.png','2026-02-05 07:44:59.055036','0f3de2b8-ea87-4914-a0af-fb4916030c6b','2005-06-18','toan22nd@gmail.com','nguyen ban','MALE','Tin','123456','0123456789','ACTIVE','2026-02-05 07:44:59.055036',NULL,'toa2nnd1315','3d0a1381-807f-4621-9487-5a53de36bdf1'),('179d9d80-25f9-4e3b-b7fb-944c0aba3357','okokok.png','2026-02-05 06:12:01.391704','179d9d80-25f9-4e3b-b7fb-944c0aba3357','2005-06-18','toannd@gmail.com','Nguyen Duc','MALE','Toan','123456','0123456789','ACTIVE','2026-02-05 06:12:01.391704',NULL,'toannd135','3d0a1381-807f-4621-9487-5a53de36bdf1'),('3aa0a487-f861-4373-8cbf-4823d9d58475','okokok1.png','2026-02-06 09:38:52.383892','3aa0a487-f861-4373-8cbf-4823d9d58475','2005-08-18','nguyenvananh.ptit@gmail.com','Nguyen Van','FEMALE','Anh','123456','012341239','DELETED','2026-02-06 09:44:03.145899',NULL,'anh1315','eb3994f4-5e45-4081-88b8-1dd52201a2e5'),('721e7627-a6a0-4479-a0b3-ef43e1db7d7f','okokok.png','2026-02-05 07:50:34.645258','721e7627-a6a0-4479-a0b3-ef43e1db7d7f','2005-06-18','toa2n22nd@gmail.com','Nguyen Ban','MALE','Tin','123456','0123456789','ACTIVE','2026-02-05 07:50:34.645258',NULL,'to3a2nnd1315','3d0a1381-807f-4621-9487-5a53de36bdf1'),('89852d12-f09d-4c2a-8474-157186dc1a56','okokok.png','2026-02-05 08:01:19.993211','89852d12-f09d-4c2a-8474-157186dc1a56','2005-06-18','tond@gmail.com','Nguyen Ban','MALE','Tin','123456','0123456789','ACTIVE','2026-02-05 08:01:19.993211',NULL,'nnd1315','3d0a1381-807f-4621-9487-5a53de36bdf1'),('b9801820-f0bf-410e-822f-177d8261dae5','okokok1.png','2026-02-08 01:47:27.623296','b9801820-f0bf-410e-822f-177d8261dae5','2005-08-18','tranvanchung.ptit@gmail.com','Trần Văn','FEMALE','Chung','123456','012341239','ACTIVE','2026-02-08 01:47:27.623296',NULL,'chung1315','eb3994f4-5e45-4081-88b8-1dd52201a2e5'),('d972990a-e39d-4daf-a0aa-079679cd5fe9','okokok.png','2026-02-05 07:43:50.691783','d972990a-e39d-4daf-a0aa-079679cd5fe9','2005-06-18','toan2nd@gmail.com','nguyen ban','MALE','Tin','123456','0123456789','ACTIVE','2026-02-05 07:43:50.691783',NULL,'toannd1315','3d0a1381-807f-4621-9487-5a53de36bdf1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
