-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: finalproject
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_pid` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `replied_id` int(11) DEFAULT NULL,
  `replied_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,18,1,'my first comment','2017-04-25 19:42:21','2017-04-25 19:42:26',NULL,NULL),(2,18,1,'here is my comment','2017-04-26 00:21:50','2017-04-26 00:21:50',NULL,NULL),(4,10,1,'I\'m commenting the 5th project','2017-04-26 00:38:45','2017-04-26 00:38:45',NULL,NULL),(5,10,1,'another comments','2017-04-26 00:43:26','2017-04-26 00:43:26',NULL,NULL),(6,10,1,'another try!','2017-04-26 00:49:09','2017-04-26 00:49:09',NULL,NULL),(7,18,1,'cathy leaves a comment here.','2017-04-26 00:49:44','2017-04-26 00:49:44',NULL,NULL),(8,19,1,'cathy leaves a comment here','2017-04-29 00:56:58','2017-04-29 00:56:58',NULL,NULL),(9,19,2,'Jiaxiang leaves a comment here','2017-04-29 02:06:38','2017-04-29 02:06:38',1,NULL),(10,19,2,'hi!','2017-04-29 02:07:06','2017-04-29 02:07:06',2,'Jiaxiang Lin'),(11,4,1,'hi','2017-04-28 22:10:18','2017-04-28 22:10:20',NULL,NULL),(12,20,3,'hi','2017-04-28 23:02:02','2017-04-28 23:02:04',NULL,NULL),(13,22,6,'www','2017-04-30 07:36:25','2017-04-30 07:36:25',NULL,NULL),(14,22,6,'good','2017-04-30 07:53:35','2017-04-30 07:53:35',6,'katelyn1'),(15,3,6,'good','2017-05-01 07:58:56','2017-05-01 07:58:56',NULL,NULL),(16,30,6,'111','2017-05-02 00:40:22','2017-05-02 00:40:22',NULL,NULL),(17,30,6,'hekko','2017-05-02 00:40:29','2017-05-02 00:40:29',6,'katelyn1'),(18,31,8,'good','2017-05-03 23:19:38','2017-05-03 23:19:38',NULL,NULL),(19,31,8,'good','2017-05-03 23:19:46','2017-05-03 23:19:46',NULL,NULL),(20,31,8,'ok','2017-05-03 23:25:16','2017-05-03 23:25:16',8,'abc'),(21,34,8,'good','2017-05-04 03:40:40','2017-05-04 03:40:40',NULL,NULL),(22,34,8,'ok','2017-05-04 03:40:54','2017-05-04 03:40:54',8,'abc'),(23,31,10,'good job!','2017-05-05 19:08:43','2017-05-05 19:08:43',NULL,NULL),(24,31,10,'Yes. I agree','2017-05-05 19:08:56','2017-05-05 19:08:56',8,'abc'),(25,35,8,'good','2017-05-05 21:01:56','2017-05-05 21:01:56',NULL,NULL),(26,38,12,'hi','2017-05-05 21:43:11','2017-05-05 21:43:11',NULL,NULL),(27,35,11,'ok','2017-05-05 21:44:09','2017-05-05 21:44:09',8,'abc'),(28,52,14,'I think it\'s nice','2017-05-09 22:06:49','2017-05-09 22:06:49',NULL,NULL),(29,52,8,'Yes. I agree','2017-05-09 22:07:38','2017-05-09 22:07:38',14,'Puloceba'),(30,51,8,'good',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followers` (
  `user_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`following_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
INSERT INTO `followers` VALUES (3,2,'2017-04-28 23:34:24','2017-04-28 23:34:24'),(6,1,'2017-05-02 00:08:28','2017-05-02 00:08:28'),(6,2,'2017-04-29 21:48:33','2017-04-29 21:48:33'),(6,3,'2017-04-30 19:22:04','2017-04-30 19:22:04'),(7,2,'2017-05-03 16:27:26','2017-05-03 16:27:26'),(8,6,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(14,6,'2017-05-09 19:16:27','2017-05-09 19:16:27');
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `user_id` int(10) unsigned DEFAULT NULL,
  `project_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `user_id_idx` (`user_id`),
  KEY `project_id_idx` (`project_id`),
  CONSTRAINT `project_id` FOREIGN KEY (`project_id`) REFERENCES `projects` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,19,'2017-04-28 22:37:22','2017-04-28 22:37:22'),(6,19,'2017-04-30 19:03:02','2017-04-30 19:03:02'),(6,1,'2017-05-01 20:02:15','2017-05-01 20:02:15'),(6,32,'2017-05-01 21:33:15','2017-05-01 21:33:15'),(6,22,'2017-05-02 00:10:27','2017-05-02 00:10:27'),(6,31,'2017-05-02 00:17:25','2017-05-02 00:17:25'),(7,24,'2017-05-03 16:27:14','2017-05-03 16:27:14'),(8,31,'2017-05-03 19:18:45','2017-05-03 19:18:45'),(12,38,'2017-05-05 17:41:53','2017-05-05 17:41:53'),(14,52,'2017-05-09 18:00:03','2017-05-09 18:00:03');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (26,'2014_10_12_000000_create_users_table',1),(27,'2014_10_12_100000_create_password_resets_table',1),(28,'2017_04_19_195041_create_table_projects',1),(29,'2017_04_19_230010_create_tags_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('qinyi468@gmail.com','$2y$10$tstLIhkPgfHAi3RDu6fb.efEMkYgFIw2sDOJUy35rw.kYyFreC3rm','2017-05-09 20:08:18');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postings`
--

DROP TABLE IF EXISTS `postings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postings` (
  `posting_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_pid` int(10) unsigned DEFAULT NULL,
  `material` varchar(45) DEFAULT NULL,
  `posting_desp` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `audio` varchar(45) DEFAULT NULL,
  `video` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`posting_id`),
  KEY `project_pid_idx` (`project_pid`),
  CONSTRAINT `project_pid` FOREIGN KEY (`project_pid`) REFERENCES `projects` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postings`
--

LOCK TABLES `postings` WRITE;
/*!40000 ALTER TABLE `postings` DISABLE KEYS */;
INSERT INTO `postings` VALUES (1,22,'project22number2.jpg','test desp','2017-05-01 01:10:08','2017-05-01 01:10:08',NULL,NULL),(2,22,'project22number2.jpg','test desp','2017-05-01 01:13:34','2017-05-01 01:13:34',NULL,NULL),(3,22,'project22number2.jpg','test desp','2017-05-01 01:13:47','2017-05-01 01:13:47',NULL,NULL),(4,22,'project22number2.jpg','test desp1','2017-05-01 01:16:52','2017-05-01 01:16:52',NULL,NULL),(5,22,'project22number2.jpg','dddddd','2017-05-01 01:22:25','2017-05-01 01:22:25',NULL,NULL),(6,22,'project22number2.jpg','dddddd','2017-05-01 01:23:47','2017-05-01 01:23:47',NULL,NULL),(7,30,'project30imagenumber2.jpg','test posting','2017-05-01 19:03:06','2017-05-01 19:03:06','project30audionumber2.mp3','project30videonumber2.mp4'),(8,30,NULL,'goooodddd','2017-05-01 19:03:33','2017-05-01 19:03:33',NULL,NULL),(9,32,'project32imagenumber2.jpg','update','2017-05-01 22:26:26','2017-05-01 22:26:26','project32audionumber2.mp3','project32videonumber2.mp4'),(10,32,'project32imagenumber2.jpg','gotcha','2017-05-01 22:28:46','2017-05-01 22:28:46',NULL,NULL),(11,31,'project31imagenumber2.png','test deso','2017-05-02 00:17:06','2017-05-02 00:17:06',NULL,NULL),(12,35,'project35imagenumber2.jpg','My post','2017-05-05 17:02:11','2017-05-05 17:02:11',NULL,NULL),(13,38,'project38imagenumber2.jpeg','llllllll','2017-05-05 17:42:50','2017-05-05 17:42:50',NULL,NULL),(14,52,'project52imagenumber2.jpg','beautiful view','2017-05-09 18:35:37','2017-05-09 18:35:37',NULL,NULL),(15,52,'project52imagenumber2.jpg','Photo of beach','2017-05-09 18:35:55','2017-05-09 18:35:55',NULL,NULL);
/*!40000 ALTER TABLE `postings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_tag`
--

DROP TABLE IF EXISTS `project_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_tag` (
  `project_pid` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `project_tag_project_id_index` (`project_pid`),
  KEY `project_tag_tag_id_index` (`tag_id`),
  CONSTRAINT `project_tag_project_id_foreign` FOREIGN KEY (`project_pid`) REFERENCES `projects` (`pid`) ON DELETE CASCADE,
  CONSTRAINT `project_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_tag`
--

LOCK TABLES `project_tag` WRITE;
/*!40000 ALTER TABLE `project_tag` DISABLE KEYS */;
INSERT INTO `project_tag` VALUES (8,2,'2017-04-20 03:51:00','2017-04-20 03:51:00'),(9,2,'2017-04-20 04:09:22','2017-04-20 04:09:22'),(9,3,'2017-04-20 04:09:22','2017-04-20 04:09:22'),(8,4,'2017-04-21 23:25:24','2017-04-21 23:25:24'),(10,1,'2017-04-22 05:35:42','2017-04-22 05:35:42'),(10,2,'2017-04-22 05:35:42','2017-04-22 05:35:42'),(18,4,'2017-04-25 23:32:11','2017-04-25 23:32:11'),(19,1,'2017-04-27 04:07:09','2017-04-27 04:07:09'),(20,1,'2017-04-29 03:01:27','2017-04-29 03:01:27'),(20,3,'2017-04-29 03:01:27','2017-04-29 03:01:27'),(21,3,'2017-04-30 05:09:54','2017-04-30 05:09:54'),(22,3,'2017-04-30 06:37:59','2017-04-30 06:37:59'),(23,2,'2017-04-30 20:15:35','2017-04-30 20:15:35'),(24,1,'2017-04-30 20:43:23','2017-04-30 20:43:23'),(25,3,'2017-04-30 20:44:56','2017-04-30 20:44:56'),(26,3,'2017-04-30 21:16:44','2017-04-30 21:16:44'),(27,1,'2017-04-30 21:23:29','2017-04-30 21:23:29'),(28,3,'2017-04-30 21:31:06','2017-04-30 21:31:06'),(29,1,'2017-04-30 21:31:50','2017-04-30 21:31:50'),(30,2,'2017-05-01 21:57:18','2017-05-01 21:57:18'),(31,2,'2017-05-01 22:14:19','2017-05-01 22:14:19'),(32,1,'2017-05-02 00:45:03','2017-05-02 00:45:03'),(33,1,'2017-05-02 01:57:30','2017-05-02 01:57:30'),(34,2,'2017-05-03 23:29:30','2017-05-03 23:29:30'),(34,4,'2017-05-03 23:29:30','2017-05-03 23:29:30'),(35,2,'2017-05-05 21:01:48','2017-05-05 21:01:48'),(36,1,'2017-05-05 21:10:59','2017-05-05 21:10:59'),(36,2,'2017-05-05 21:10:59','2017-05-05 21:10:59'),(37,3,'2017-05-05 21:15:48','2017-05-05 21:15:48'),(38,2,'2017-05-05 21:41:08','2017-05-05 21:41:08'),(38,3,'2017-05-05 21:41:08','2017-05-05 21:41:08'),(51,4,'2017-05-09 21:53:05','2017-05-09 21:53:05'),(46,2,'2017-05-09 21:56:36','2017-05-09 21:56:36'),(52,4,'2017-05-09 21:58:31','2017-05-09 21:58:31');
/*!40000 ALTER TABLE `project_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_user`
--

DROP TABLE IF EXISTS `project_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_user` (
  `user_id` int(11) NOT NULL,
  `project_pid` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `transaction_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`project_pid`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_user`
--

LOCK TABLES `project_user` WRITE;
/*!40000 ALTER TABLE `project_user` DISABLE KEYS */;
INSERT INTO `project_user` VALUES (1,3,'2017-04-27 23:03:32','2017-04-27 23:03:32',10.00,'posted'),(1,3,'2017-04-27 23:31:20','2017-04-27 23:31:20',40.00,'posted'),(3,4,'2017-04-28 23:15:20','2017-04-28 23:15:20',100.00,'pending'),(3,4,'2017-04-28 23:30:07','2017-04-28 23:30:07',34.00,'pending'),(3,19,'2017-04-28 23:29:58','2017-04-28 23:29:58',52.00,'posted'),(3,20,'2017-04-28 23:12:59','2017-04-28 23:12:59',20.00,'pending'),(6,1,'2017-05-01 20:23:42','2017-05-01 20:23:42',100.00,'posted'),(6,3,'2017-05-01 02:42:17','2017-05-01 02:42:17',10.00,'posted'),(6,3,'2017-05-01 02:44:48','2017-05-01 02:44:48',4.00,'posted'),(6,3,'2017-05-01 02:44:58','2017-05-01 02:44:58',5.00,'posted'),(6,3,'2017-05-01 04:58:57','2017-05-01 04:58:57',5.00,'posted'),(6,3,'2017-05-01 04:59:02','2017-05-01 04:59:02',5.00,'posted'),(6,19,'2017-05-01 04:57:23','2017-05-01 04:57:23',30000.00,'posted'),(6,22,'2017-05-01 03:24:14','2017-05-01 03:24:14',100.00,'posted'),(6,22,'2017-05-01 03:28:32','2017-05-01 03:28:32',10000.00,'posted'),(6,23,'2017-05-01 04:56:48','2017-05-01 04:56:48',100.00,'posted'),(6,25,'2017-05-01 17:32:35','2017-05-01 17:32:35',100.00,'posted'),(6,25,'2017-05-01 17:33:33','2017-05-01 17:33:33',120.00,'posted'),(6,30,'2017-05-01 20:40:41','2017-05-01 20:40:41',100.00,'posted'),(6,30,'2017-05-01 20:40:51','2017-05-01 20:40:51',1200.00,'posted'),(6,32,'2017-05-01 21:04:46','2017-05-01 21:04:46',110.00,'posted'),(6,32,'2017-05-01 21:05:06','2017-05-01 21:05:06',1000.00,'posted'),(6,33,'2017-05-01 21:57:37','2017-05-01 21:57:37',120.00,'posted'),(8,31,'2017-05-03 19:19:04','2017-05-03 19:19:04',10.00,'posted'),(8,31,'2017-05-04 01:01:50','2017-05-04 01:01:50',100.00,'posted'),(8,31,'2017-05-04 01:02:01','2017-05-04 01:02:01',200.00,'posted'),(8,34,'2017-05-03 19:34:54','2017-05-03 19:34:54',200.00,'posted'),(8,38,'2017-05-09 18:33:52','2017-05-09 18:33:52',100.00,'posted'),(8,51,'2017-05-09 18:15:21','2017-05-09 18:15:21',10.00,'pending'),(8,51,'2017-05-09 18:15:28','2017-05-09 18:15:28',80.00,'pending'),(8,51,'2017-05-09 18:23:38','2017-05-09 18:23:38',5.00,'pending'),(8,51,'2017-05-09 18:25:32','2017-05-09 18:25:32',5.00,'pending'),(10,31,'2017-05-05 15:09:11','2017-05-05 15:09:11',10.00,'posted'),(12,38,'2017-05-05 17:42:11','2017-05-05 17:42:11',100.00,'posted'),(14,52,'2017-05-09 18:41:45','2017-05-09 18:41:45',100.00,'posted');
/*!40000 ALTER TABLE `project_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `pname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `minmoney` double(10,2) NOT NULL,
  `maxmoney` double(10,2) NOT NULL,
  `endtime` datetime NOT NULL,
  `release_time` datetime NOT NULL,
  `raisedmoney` double(10,2) NOT NULL,
  `projectcover` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `projects_user_id_foreign` (`user_id`),
  CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,1,'project music','this is a music project',10000.00,20000.00,'2017-04-18 16:51:09','2017-04-27 16:51:13',10101.00,'user6number7.jpg'),(2,2,'jiaxiang\'s project','This is a project created by jiaxiang',111.00,222.00,'2017-05-19 00:00:00','2017-06-19 00:00:00',0.00,'user6number8.jpg'),(3,1,'cathy\'s project','cathy\'s project',100.00,200.00,'2017-06-19 00:00:00','2017-07-19 00:00:00',229.00,'default_cover.jpg'),(4,1,'test tag','test tag',10000.00,50000.00,'2017-06-21 00:00:00','2017-04-19 00:00:00',6004.00,'default_cover.jpg'),(5,1,'request project','this is a test',20000.00,30000.00,'2017-04-22 00:00:00','2017-04-26 00:00:00',0.00,'default_cover.jpg'),(8,1,'test tags array','test a tags array',100.00,200.00,'2017-04-21 00:00:00','2017-04-21 00:00:00',0.00,'default_cover.jpg'),(9,1,'4 project','4project',11100.00,222000.00,'2017-04-22 00:00:00','2017-05-20 00:00:00',5000.00,'default_cover.jpg'),(10,1,'project 5','5th project',3300.00,4400.00,'2017-05-22 00:00:00','2017-06-22 00:00:00',4540.00,'default_cover.jpg'),(18,1,'6th project','this is the 6th project!',8000.00,9000.00,'2017-04-27 00:00:00','2017-05-25 00:00:00',9030.00,'default_cover.jpg'),(19,2,'project jazz','this is a jazz project',30000.00,40000.00,'2017-05-27 00:00:00','2017-06-27 00:00:00',32869.00,'default_cover.jpg'),(20,3,'mengmeng\'s project','this is my first updated project!',10000.00,20000.00,'2017-05-28 00:00:00','2017-06-28 00:00:00',330.00,'default_cover.jpg'),(21,6,'test the search','testaaaa',100.00,1000.00,'2017-04-30 00:00:00','2018-04-30 00:00:00',0.00,'default_cover.jpg'),(22,6,'test111','wwwwww',100.00,1000.00,'2017-05-05 00:00:00','2017-05-05 00:00:00',10100.00,'user6number13.jpg'),(23,6,'test the image','test the image',100.00,10000.00,'2018-04-30 00:00:00','2018-04-30 00:00:00',100.00,'default_cover.jpg'),(24,6,'good','eeeeee',100.00,1000.00,'2018-04-30 00:00:00','2018-04-30 00:00:00',0.00,'default_cover.jpg'),(25,6,'11111','222222',111.00,11.00,'2018-04-30 00:00:00','2018-04-30 00:00:00',220.00,'default_cover.jpg'),(26,6,'yyyyyyyy','refsdv',11.00,11111.00,'2018-04-30 00:00:00','2018-04-30 00:00:00',0.00,'default_cover.jpg'),(27,6,'yyyyyyyyyyy','qewder',1231.00,11232.00,'2018-04-30 00:00:00','2018-04-30 00:00:00',0.00,'default_cover.jpg'),(28,6,'wwwww','wwwwwww',11.00,1111.00,'2018-04-30 00:00:00','2018-04-30 00:00:00',0.00,'user6number8.jpg'),(29,6,'godddddd','sccsa',43.00,353.00,'2018-04-30 00:00:00','2018-04-30 00:00:00',0.00,'user6number9.jpg'),(30,6,'test audio','test desp',100.00,1000.00,'2018-05-01 00:00:00','2018-05-01 00:00:00',1300.00,'user6number10.png'),(31,6,'test video','test desp',100.00,10000.00,'2017-05-05 00:00:00','2017-05-05 00:00:00',320.00,'user6number14.jpg'),(32,6,'shanshan','tttttttt',100.00,1000.00,'2018-05-01 00:00:00','2018-05-01 00:00:00',1110.00,'user6number12.jpg'),(33,6,'now','ddddddd',100.00,120.00,'2018-05-01 00:00:00','2018-05-01 00:00:00',120.00,'user6number13.jpg'),(34,8,'test demo','ttttttt',100.00,1000.00,'2018-05-03 00:00:00','2018-05-03 00:00:00',200.00,'user8number1.png'),(35,8,'eeeee','effsdf',100.00,10000.00,'2018-05-05 00:00:00','2018-05-05 00:00:00',0.00,'default_cover.jpg'),(36,11,'test111','ddddd',1000.00,2000.00,'2017-05-05 00:00:00','2017-05-05 00:00:00',0.00,'user11number2.png'),(37,8,'dedeqdeq','dedefwffe',211.00,1111.00,'2017-05-05 00:00:00','2017-05-05 00:00:00',0.00,'default_cover.jpg'),(38,12,'db demo','test1111',100.00,1000.00,'2018-05-05 00:00:00','2018-05-05 00:00:00',200.00,'user12number1.jpg'),(39,14,'test db','ddddddd',100.00,1000.00,'2018-05-09 00:00:00','2018-05-09 00:00:00',0.00,'user14number1.jpeg'),(40,14,'wwwqeqeqw','dddddd',100.00,1000.00,'2018-05-09 00:00:00','2018-05-09 00:00:00',0.00,'user14number2.jpeg'),(41,14,'wwwqeqeqw','dddddd',100.00,1000.00,'2018-05-09 00:00:00','2018-05-09 00:00:00',0.00,'user14number3.jpeg'),(42,14,'eeeee','efesefsdsv',100.00,1000.00,'2018-05-09 00:00:00','2018-05-09 00:00:00',0.00,'user14number4.jpeg'),(43,14,'eeeee','efesefsdsv',100.00,1000.00,'2018-05-09 00:00:00','2018-05-09 00:00:00',0.00,'user14number5.jpeg'),(44,14,'create a new','ddddfff',100.00,1000.00,'2018-05-09 00:00:00','2018-05-09 00:00:00',0.00,'user14number6.jpg'),(45,14,'create a new','ddddfff',100.00,1000.00,'2018-05-09 00:00:00','2018-05-09 00:00:00',0.00,'user14number7.jpg'),(46,14,'create a new','This a charity activity!',100.00,1000.00,'2018-05-09 00:00:00','2018-05-09 00:00:00',0.00,'user14number8.jpg'),(47,14,'create aaaaa','fffvevve',100.00,1000.00,'2017-06-09 00:00:00','2017-06-09 00:00:00',0.00,'default_cover.jpg'),(48,14,'create aaaaa','fffvevve',100.00,1000.00,'2017-06-09 00:00:00','2017-06-09 00:00:00',0.00,'default_cover.jpg'),(49,14,'create aaaaa','fffvevve',100.00,1000.00,'2017-06-09 00:00:00','2017-06-09 00:00:00',0.00,'default_cover.jpg'),(50,14,'create aaaaa','fffvevve',100.00,1000.00,'2017-06-09 00:00:00','2017-06-09 00:00:00',0.00,'default_cover.jpg'),(51,14,'create aaaaa','fffvevve',100.00,1000.00,'2017-06-09 00:00:00','2017-06-09 00:00:00',95.00,'default_cover.jpg'),(52,14,'Let\'s take photo','This is a photography album and people all like photography.',100.00,1000.00,'2018-05-09 00:00:00','2018-05-09 00:00:00',100.00,'user14number14.jpg');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `published_projects`
--

DROP TABLE IF EXISTS `published_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `published_projects` (
  `pid` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `materials` varchar(255) DEFAULT NULL,
  `fundmoney` float(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `published_projects`
--

LOCK TABLES `published_projects` WRITE;
/*!40000 ALTER TABLE `published_projects` DISABLE KEYS */;
INSERT INTO `published_projects` VALUES (1,'2017-04-28 23:25:16','2017-04-28 23:25:16','xxx',10001.00,'pending'),(3,'2017-04-28 23:25:16','2017-04-28 23:25:16','xxx',200.00,'finished'),(10,'2017-04-28 23:25:16','2017-04-28 23:25:16','xxx',4540.00,'pending'),(18,'2017-04-28 23:25:16','2017-04-28 23:25:16','xxx',9030.00,'pending'),(19,'2017-05-05 15:51:33','2017-05-05 15:51:33','xxx',32869.00,'pending'),(22,'2017-05-01 03:28:32','2017-05-01 03:28:32','xxx',10100.00,'finished'),(23,'2017-05-05 17:02:34','2017-05-05 17:02:34','xxx',100.00,'pending'),(25,'2017-05-01 17:39:14','2017-05-01 17:39:14','xxx',220.00,'finished'),(30,'2017-05-01 20:42:05','2017-05-01 20:42:05','xxx',1300.00,'pending'),(31,'2017-05-04 01:01:50','2017-05-04 01:01:50','xxx',110.00,'pending'),(32,'2017-05-01 21:05:11','2017-05-01 21:05:11','xxx',1110.00,'finished'),(33,'2017-05-01 21:57:37','2017-05-01 21:57:37','xxx',120.00,'finished'),(34,'2017-05-03 19:36:56','2017-05-03 19:36:56','xxx',200.00,'finished'),(38,'2017-05-05 17:42:12','2017-05-05 17:42:12','xxx',100.00,'finished'),(52,'2017-05-09 18:41:45','2017-05-09 18:41:45','xxx',100.00,'finished');
/*!40000 ALTER TABLE `published_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rates` (
  `user_id` int(11) NOT NULL,
  `project_pid` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `rate_content` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`project_pid`,`rating`,`created_at`),
  KEY `project_pid` (`project_pid`),
  KEY `project_pid_2` (`project_pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,3,3,NULL,'2017-04-29 01:28:19','2017-04-29 01:28:19'),(1,3,4,NULL,'2017-04-29 01:25:40','2017-04-29 01:25:40'),(1,4,4,NULL,'2017-04-28 04:39:14','2017-04-28 04:39:14'),(1,4,5,NULL,'2017-04-28 20:26:17','2017-04-28 20:26:20'),(1,19,4,NULL,'2017-04-28 04:40:39','2017-04-28 04:40:39'),(6,3,2,NULL,'2017-05-02 00:17:50','2017-05-02 00:17:50'),(6,3,2,NULL,'2017-05-02 00:18:03','2017-05-02 00:18:03'),(6,3,2,'good','2017-05-02 00:18:51','2017-05-02 00:18:51'),(6,3,2,NULL,'2017-05-02 00:21:40','2017-05-02 00:21:40'),(6,3,3,'g','2017-05-02 00:22:56','2017-05-02 00:22:56'),(6,3,3,'ff','2017-05-02 00:27:43','2017-05-02 00:27:43'),(6,3,4,NULL,'2017-05-01 02:42:32','2017-05-01 02:42:32'),(6,3,4,'g','2017-05-02 00:22:17','2017-05-02 00:22:17'),(6,3,5,'5','2017-05-02 00:28:06','2017-05-02 00:28:06'),(6,22,1,'great','2017-05-01 22:22:50','2017-05-01 22:22:50'),(6,22,2,NULL,'2017-05-01 16:51:34','2017-05-01 16:51:34'),(6,22,2,NULL,'2017-05-01 16:51:52','2017-05-01 16:51:52'),(6,22,4,NULL,'2017-05-01 16:52:38','2017-05-01 16:52:38'),(6,32,2,'good','2017-05-01 21:20:19','2017-05-01 21:20:19'),(6,32,3,NULL,'2017-05-01 21:05:43','2017-05-01 21:05:43'),(6,33,3,'great','2017-05-01 22:19:48','2017-05-01 22:19:48'),(6,33,3,'great','2017-05-01 22:20:38','2017-05-01 22:20:38'),(6,33,3,'great','2017-05-01 22:21:04','2017-05-01 22:21:04'),(6,33,3,'great','2017-05-01 22:22:26','2017-05-01 22:22:26'),(8,34,0,'ggg','2017-05-03 19:57:17','2017-05-03 19:57:17'),(8,34,5,'kkk','2017-05-03 19:57:37','2017-05-03 19:57:37'),(8,38,4,'good','2017-05-09 18:34:07','2017-05-09 18:34:07'),(12,38,3,'good','2017-05-05 17:50:36','2017-05-05 17:50:36'),(14,52,4,'good','2017-05-09 18:45:58','2017-05-09 18:45:58');
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `sample1` varchar(45) DEFAULT NULL,
  `sample2` varchar(45) DEFAULT NULL,
  `sample3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES (1,22,'user6sample1.png',NULL,NULL),(2,23,'user6sample1.png',NULL,NULL),(3,24,NULL,NULL,NULL),(4,25,NULL,NULL,NULL),(5,26,NULL,NULL,NULL),(6,27,NULL,NULL,NULL),(7,28,NULL,NULL,NULL),(8,29,NULL,NULL,NULL),(9,30,NULL,'user6sample2.mp4',NULL),(10,31,'user6sample1.jpg','user6sample2.mp3','user6sample3.mp4'),(11,32,NULL,NULL,'user6sample3.mp4'),(12,33,NULL,NULL,NULL),(13,34,'user8sample1.JPG',NULL,NULL),(14,35,NULL,NULL,NULL),(15,36,'user11sample1.png','user11sample2.mp3','user11sample3.mp4'),(16,37,NULL,'','user8sample3.mp4'),(17,38,'user12sample1.jpg','user12sample2.mp3','user12sample3.mp4'),(18,51,NULL,NULL,NULL),(19,52,'user14sample1.jpg','user14sample2.mp3','user14sample3.mp4');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'jazz','2017-04-19 23:13:55','2017-04-19 23:13:59'),(2,'music','2017-04-19 23:14:07','2017-04-19 23:14:10'),(3,'people','2017-04-19 23:14:18','2017-04-19 23:14:21'),(4,'photos','2017-04-19 23:14:31','2017-04-19 23:14:33');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logs`
--

DROP TABLE IF EXISTS `user_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_logs` (
  `user_id` int(10) unsigned NOT NULL,
  `project_pid` int(10) unsigned NOT NULL,
  `count` int(10) unsigned DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`project_pid`),
  KEY `project_pid_idx` (`project_pid`),
  CONSTRAINT `project_pid_cons` FOREIGN KEY (`project_pid`) REFERENCES `projects` (`pid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_id_cons` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logs`
--

LOCK TABLES `user_logs` WRITE;
/*!40000 ALTER TABLE `user_logs` DISABLE KEYS */;
INSERT INTO `user_logs` VALUES (6,1,47,'2017-04-30 19:22:27','2017-04-30 19:22:27'),(6,2,4,'2017-04-30 04:22:32','2017-04-30 04:22:32'),(6,3,114,'2017-04-30 04:15:13','2017-04-30 04:15:13'),(6,4,21,'2017-04-30 19:22:23','2017-04-30 19:22:23'),(6,5,6,'2017-04-30 19:22:27','2017-04-30 19:22:27'),(6,8,7,'2017-04-30 19:22:27','2017-04-30 19:22:27'),(6,9,1,'2017-05-02 00:08:28','2017-05-02 00:08:28'),(6,10,1,'2017-05-02 00:08:28','2017-05-02 00:08:28'),(6,18,1,'2017-05-02 00:08:28','2017-05-02 00:08:28'),(6,19,26,'2017-04-30 19:02:39','2017-04-30 19:02:39'),(6,20,3,'2017-04-30 19:22:01','2017-04-30 19:22:01'),(6,21,7,'2017-04-30 19:45:47','2017-04-30 19:45:47'),(6,22,125,'2017-04-30 04:22:18','2017-04-30 04:22:18'),(6,23,11,'2017-04-30 19:45:47','2017-04-30 19:45:47'),(6,24,1,'2017-04-30 16:43:25','2017-04-30 16:43:25'),(6,25,13,'2017-05-01 17:32:30','2017-05-01 17:32:30'),(6,26,2,'2017-04-30 19:21:42','2017-04-30 19:21:42'),(6,27,1,'2017-05-01 22:39:59','2017-05-01 22:39:59'),(6,29,10,'2017-04-30 17:32:34','2017-04-30 17:32:34'),(6,30,50,'2017-05-01 17:57:21','2017-05-01 17:57:21'),(6,31,49,'2017-05-01 18:14:21','2017-05-01 18:14:21'),(6,32,46,'2017-05-01 20:45:07','2017-05-01 20:45:07'),(6,33,27,'2017-05-01 21:57:32','2017-05-01 21:57:32'),(6,34,2,'2017-05-09 20:00:59','2017-05-09 20:00:59'),(6,36,4,'2017-05-09 20:00:59','2017-05-09 20:00:59'),(6,38,2,'2017-05-09 20:00:59','2017-05-09 20:00:59'),(7,2,1,'2017-05-03 16:27:26','2017-05-03 16:27:26'),(7,19,2,'2017-05-03 16:27:23','2017-05-03 16:27:23'),(7,24,2,'2017-05-03 16:27:08','2017-05-03 16:27:08'),(7,32,1,'2017-05-03 16:27:42','2017-05-03 16:27:42'),(7,33,1,'2017-05-02 03:11:27','2017-05-02 03:11:27'),(8,4,2,'2017-05-03 19:27:52','2017-05-03 19:27:52'),(8,5,2,'2017-05-03 19:27:52','2017-05-03 19:27:52'),(8,8,4,'2017-05-03 19:27:52','2017-05-03 19:27:52'),(8,9,5,'2017-05-03 23:46:41','2017-05-03 23:46:41'),(8,10,2,'2017-05-03 23:46:41','2017-05-03 23:46:41'),(8,20,2,'2017-05-03 23:46:57','2017-05-03 23:46:57'),(8,21,5,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,22,6,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,23,6,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,24,1,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,25,4,'2017-05-03 19:26:44','2017-05-03 19:26:44'),(8,26,4,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,27,1,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,28,5,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,29,2,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,30,7,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,31,22,'2017-05-03 19:18:32','2017-05-03 19:18:32'),(8,32,5,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,33,1,'2017-05-03 19:27:12','2017-05-03 19:27:12'),(8,34,20,'2017-05-03 19:29:39','2017-05-03 19:29:39'),(8,35,3,'2017-05-05 17:01:50','2017-05-05 17:01:50'),(8,37,11,'2017-05-05 17:15:49','2017-05-05 17:15:49'),(8,38,3,'2017-05-09 18:33:45','2017-05-09 18:33:45'),(8,51,5,'2017-05-09 18:10:52','2017-05-09 18:10:52'),(8,52,4,'2017-05-09 18:07:07','2017-05-09 18:07:07'),(10,31,4,'2017-05-05 15:08:32','2017-05-05 15:08:32'),(10,33,1,'2017-05-05 15:10:01','2017-05-05 15:10:01'),(11,35,2,'2017-05-05 17:44:02','2017-05-05 17:44:02'),(11,36,13,'2017-05-05 17:11:01','2017-05-05 17:11:01'),(11,38,1,'2017-05-05 17:43:41','2017-05-05 17:43:41'),(12,8,9,'2017-05-05 17:39:10','2017-05-05 17:39:10'),(12,21,2,'2017-05-05 17:39:10','2017-05-05 17:39:10'),(12,22,2,'2017-05-05 17:39:10','2017-05-05 17:39:10'),(12,23,3,'2017-05-05 17:39:10','2017-05-05 17:39:10'),(12,27,1,'2017-05-05 17:49:27','2017-05-05 17:49:27'),(12,29,1,'2017-05-05 17:49:30','2017-05-05 17:49:30'),(12,30,2,'2017-05-05 17:39:10','2017-05-05 17:39:10'),(12,31,2,'2017-05-05 17:39:10','2017-05-05 17:39:10'),(12,34,2,'2017-05-05 17:39:10','2017-05-05 17:39:10'),(12,36,5,'2017-05-05 17:39:10','2017-05-05 17:39:10'),(12,37,1,'2017-05-05 17:41:34','2017-05-05 17:41:34'),(12,38,11,'2017-05-05 17:41:13','2017-05-05 17:41:13'),(14,4,200,'2017-05-09 18:53:56','2017-05-09 18:53:56'),(14,8,4,'2017-05-09 18:48:55','2017-05-09 18:48:55'),(14,20,1,'2017-05-09 19:11:53','2017-05-09 19:11:53'),(14,21,6,'2017-05-09 18:48:55','2017-05-09 18:48:55'),(14,22,6,'2017-05-09 18:48:55','2017-05-09 18:48:55'),(14,23,7,'2017-05-09 18:48:55','2017-05-09 18:48:55'),(14,24,2,'2017-05-09 19:16:27','2017-05-09 19:16:27'),(14,25,2,'2017-05-09 19:16:27','2017-05-09 19:16:27'),(14,26,2,'2017-05-09 19:16:27','2017-05-09 19:16:27'),(14,27,2,'2017-05-09 19:16:27','2017-05-09 19:16:27'),(14,28,2,'2017-05-09 19:16:27','2017-05-09 19:16:27'),(14,29,2,'2017-05-09 19:16:27','2017-05-09 19:16:27'),(14,30,6,'2017-05-09 18:48:55','2017-05-09 18:48:55'),(14,31,6,'2017-05-09 18:48:55','2017-05-09 18:48:55'),(14,32,2,'2017-05-09 19:16:27','2017-05-09 19:16:27'),(14,33,2,'2017-05-09 19:16:27','2017-05-09 19:16:27'),(14,34,4,'2017-05-09 18:48:55','2017-05-09 18:48:55'),(14,36,13,'2017-05-09 18:48:55','2017-05-09 18:48:55'),(14,38,5,'2017-05-09 18:48:55','2017-05-09 18:48:55'),(14,39,2,'2017-05-09 19:14:06','2017-05-09 19:14:06'),(14,46,2,'2017-05-09 17:55:52','2017-05-09 17:55:52'),(14,47,1,'2017-05-09 19:18:48','2017-05-09 19:18:48'),(14,48,1,'2017-05-09 19:11:47','2017-05-09 19:11:47'),(14,52,11,'2017-05-09 17:58:32','2017-05-09 17:58:32'),(15,51,1,'2017-05-09 19:51:39','2017-05-09 19:51:39'),(15,52,1,'2017-05-09 19:53:51','2017-05-09 19:53:51');
/*!40000 ALTER TABLE `user_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `hometown` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `creditcard` varchar(255) DEFAULT NULL,
  `legalname` varchar(255) DEFAULT NULL,
  `imagename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,'Shenzhen','1993-10-08 00:00:00','gym','123456','cathy wang',NULL),(2,'Harbin','1992-11-06 00:00:00','movie','234567','Jiaxiang Lin',NULL),(3,'new york','2017-04-28 00:00:00','reading','456789','meng wang',NULL),(6,'beijing','2017-04-30 00:00:00','music','1123444','yiqin','user6.JPG'),(8,'beijing','2017-05-03 00:00:00','fff','12345','ddd','user8.png'),(9,'dwdad','2017-05-05 00:00:00','sdasdada','1231321','rgeer','default_profile.jpg'),(10,'defe','2017-05-05 00:00:00','eefe','123425','bfdbf','user10.jpg'),(11,'ooo','2017-05-05 00:00:00','deuce','12312312323','dcd','user11.jpg'),(12,'yujgj','2017-05-05 00:00:00','bjkbkjbjk','657567567','bjkb nkj','user12.jpg'),(14,'beijing','2017-05-09 00:00:00','ddd','12333','dddd','user14.jpg');
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cathy','cathy@gmail.com','$2y$10$RFjU.e3X/jNQqymcDr4jaejK1tVyCvGKzz8AOQr577kxrttTzlOby','739wGsM90JA0SKnMuFKhw43S20YsnE4a62SuvbJNisdhDgEc6RGhRzfoX0ov','2017-04-20 00:45:56','2017-04-20 00:45:56'),(2,'Jiaxiang Lin','jiaxiang.lin@nyu.edu','$2y$10$a2zUhrRAxKHgCIYT2.u/3OKG.rpJcgOEfYBgj6fyaBXC9i.0V3tGG','s6t1KrXYGh7aBCI4Q1g1JMZEuEsQYHuQWNLeqD1ZikLsy7OIp1M8J2BWQOc3','2017-04-20 00:50:57','2017-04-20 00:50:57'),(3,'mengmeng','mengmeng@gmail.com','$2y$10$AVa/oUD2iovbjzdYyfSPJ.s/A2iFLjKtTsFSa4qW1GF22vUOqrKIi','wgd77g0hhgpljxfxcaYS7uhp5IzWt2u2JeI0i92jO9HRAVmerE1trnT9LoJi','2017-04-29 03:00:51','2017-04-29 03:00:51'),(4,'Yi Qin','yq468@nyu.edu','$2y$10$WY8tOjt8casHEy4yepmyKOTyQFNiQYX4kFT3uTY0trUg4XSgNJhIS','tfyW4fDipHoMuAN836XTEUWLlxxb3sU9aUiW0bgQ26c64AiWQd23YhLxuZjU','2017-04-29 19:00:22','2017-04-29 19:00:22'),(5,'Katelyn','qinyi468@gmail.com','$2y$10$TXJrsGghFbSz9OOnmPlZvevIex.4z8c.3mEw7Yf0YIUvdz7MO6WDu','8xfiHy5pBZbGmuimK4nz9fQqvsOVWhlB8lZNGumJf6GWEhIkgqKGFlnf9wj5','2017-04-29 19:02:39','2017-04-29 19:02:39'),(6,'katelyn1','qinyi4681@gmail.com','$2y$10$F8O8clgRrEKYM2IWjdhlqOqxaWm1HcNZRT9hVM7Ss5hCSSS9cdS8S','XCP4vOBI4hfCHcxjnCLjW5wYe1ZUwZYsURm5XQNbRbGWZqGX5XIjFZRXNEbl','2017-04-29 19:05:15','2017-04-29 19:05:15'),(7,'yy','qi@sina.com','$2y$10$Wip5ZUyY5fBbOe3lCmZG8OijCjUJF83qGKfEXffeyZySVIx8mXcPa','mkY8Yi12oH5moWsOi1hWH1FYoxOm4d9Q6NEBazj1BM57rt8GmtEZI5Q3H0C0','2017-05-02 07:10:25','2017-05-02 07:10:25'),(8,'abc','abc@gmail.com','$2y$10$nRwcFMmDzICalzSV1Vxyeuk6v7eBBiis7YrClZXaM8Ri4R/aGkLsO','ervQcMMYXga50ODffdrcNlhCKq7ldRJPDIb9STmvSAioYk9rlhJJ1VUDm0oi','2017-05-03 23:17:10','2017-05-03 23:17:10'),(9,'uuu','uuu@gmail.com','$2y$10$sI3ca.31.KuC8xSk6dOhxeoAjw3gaklR5AMBtSGqeI93nnhWDOUOK','HyMMlIwtdld2LqurPX1XoP82quGkYxUPJIAhiOsbisT8AbF2fvCRwlzLAiFf','2017-05-05 18:59:25','2017-05-05 18:59:25'),(10,'yjtyyj','rgr@efs.com','$2y$10$Y0JyW2mkOYCdf4Go4kXZMObT3OgcIYJ5eiwrI1oK5g1t..2xki7iy','8e5RbZtpma0fGCWruten41bwL7X90UqWgI3VMEksyMIbYWkqbb0Wo0qHMFt3','2017-05-05 19:07:51','2017-05-05 19:07:51'),(11,'yyyy','yyyy@g.com','$2y$10$oH4BDlnuvyabd48hGkRW1uSYUvfoEo4GOfM5fwOY/ujAoY7BwqMLu',NULL,'2017-05-05 21:06:32','2017-05-05 21:06:32'),(12,'<script>alert(\'piyebuding\')</script>','fdsaf@ffdsa.com','$2y$10$fLJJ4TaHhoipquNb1.qBmuV5T.lCyMFd/TmAerBPK1NmuBWLyufjC',NULL,'2017-05-05 21:36:50','2017-05-05 21:36:50'),(13,'test1','test1@hh.com','$2y$10$Bs9hRMUSjyD0zjGmwYzsy..BMW6gt5S65cHPNUV88cgDPMX9YN2su',NULL,NULL,NULL),(14,'Puloceba','puloceba@hotmail.com','$2y$10$IHrGiDpXrdVjp57H9jLQJeA416rBPI2RSZGz5Inj3mNGigB4poRLS','WFbVCbiUetnzfKDlrlcAim3kzGFFCKFruZKQapiQSW44vxX4vx3GHljNU3iF','2017-05-09 20:11:26','2017-05-09 20:11:26'),(15,'rrgww','feww@sss.com','$2y$10$K3C9v.80PAP.5NJSEo.dQOg5nLmJHGR.SKXM7gpKvTFQBNA3KLSP2','6Hvf9gk8Olrbkdjdg6GIg3YBqbrHDyU61Mkngpy1NO5E8Pqpj6ByomKAsUku','2017-05-09 23:50:14','2017-05-09 23:50:14');
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

-- Dump completed on 2017-05-09 16:56:06
