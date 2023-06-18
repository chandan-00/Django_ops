-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_emplist','Can add emp list'),(26,7,'change_emplist','Can change emp list'),(27,7,'delete_emplist','Can delete emp list'),(28,7,'view_emplist','Can view emp list'),(29,8,'add_details','Can add details'),(30,8,'change_details','Can change details'),(31,8,'delete_details','Can delete details'),(32,8,'view_details','Can view details'),(33,9,'add_loginuser','Can add login user'),(34,9,'change_loginuser','Can change login user'),(35,9,'delete_loginuser','Can delete login user'),(36,9,'view_loginuser','Can view login user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(7) DEFAULT NULL,
  `last_name` varchar(8) DEFAULT NULL,
  `email` varchar(19) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$AI8gSkS74xVjsrDuradPpr$K9vBhlteWKknQn21mNL/AHr8hU1Oxl6WEbnevBBbV9E=','2022-07-19',1,'chandan','R','chandan@example.net',1,1,'','Chandan'),(2,'pbkdf2_sha256$320000$eBM34U3Fy32aYCDNzbnMHS$IVzs20KG0vm3e+Gspv6oV4Ix4GZjuTtlXVp21E2zPLk=','2022-07-18',0,'prajwal','','',0,1,'2022-07-15',''),(3,'pbkdf2_sha256$320000$oqCNKwBfoiyLMEuyzHhHIt$V9dowQkQ0zhseWL2VokiHOuRJlk/sN5Q66PWfs8a5Jw=','',0,'anusha','','',0,1,'2022-07-15',''),(4,'pbkdf2_sha256$320000$MqSdn7stxQTxGsJKTaIgvG$/ZkVMEqKzZLSvN5CjWn+e/0UNJ9xXt7QFcRv2nQ3B9E=','2022-07-15',0,'kalyan','Eanapati','kalyan@example.net',0,1,'2022-07-15','Kalyan');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(36) DEFAULT NULL,
  `change_message` varchar(54) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-06-30',2,'Chandan : ','',7,1,3),(2,'2022-06-30',3,'Chandan : 1','',7,1,3),(3,'2022-06-30',1,'Python Intern/n 22','[{\"added\": {}}]',8,1,1),(4,'2022-06-30',1,'Python Intern \r\n 22','[]',8,1,2),(5,'2022-06-30',5,' : Kalyan','',7,1,3),(6,'2022-07-01',2,'Python intern \r\n 23','[{\"added\": {}}]',8,1,1),(7,'2022-07-01',3,'Java developer intern \r\n 23','[{\"added\": {}}]',8,1,1),(8,'2022-07-01',4,'UI developer intern \r\n 22','[{\"added\": {}}]',8,1,1),(9,'2022-07-01',1,'1, Chandan, Python intern, 22','[{\"changed\": {\"fields\": [\"Position\", \"Age\"]}}]',7,1,2),(10,'2022-07-01',4,'2, Prajwal H A, Python intern, 23','[{\"changed\": {\"fields\": [\"Position\", \"Age\"]}}]',7,1,2),(11,'2022-07-01',6,'3, Kalyan, Java developer intern, 23','[{\"changed\": {\"fields\": [\"Position\", \"Age\"]}}]',7,1,2),(12,'2022-07-01',7,'4, Anusha, UI developer intern, 22','[{\"changed\": {\"fields\": [\"Position\", \"Age\"]}}]',7,1,2),(13,'2022-07-01',10,'1, Chandan R, Python intern, 22','',7,1,3),(14,'2022-07-01',12,'7, Hrishi, UI developer intern, 23','',7,1,3),(15,'2022-07-01',11,'7, Hrishi, UI developer intern, 23','',7,1,3),(16,'2022-07-01',15,'1, Chandan R, Python intern, 22','[{\"added\": {}}]',7,1,1),(17,'2022-07-12',21,'1, Chandan R, python intern, 22','',7,1,3),(18,'2022-07-12',22,'1, Chandan R, python intern, 22','',7,1,3),(19,'2022-07-12',23,'1, Chandan R, python intern, 22','',7,1,3),(20,'2022-07-12',24,'1, Chandan R, python intern, 22','',7,1,3),(21,'2022-07-12',32,'19, Chandan R, intern, 22','',7,1,3),(22,'2022-07-12',31,'019, Chandan R, intern, 22','',7,1,3),(23,'2022-07-12',30,'011, Chandan R, intern, 22','',7,1,3),(24,'2022-07-12',29,'010, Chandan R, intern, 22','',7,1,3),(25,'2022-07-12',28,'010, Chandan R, intern, 22','',7,1,3),(26,'2022-07-12',34,'010, Chandan R, intern, 22','',7,1,3),(27,'2022-07-12',33,'10, Chandan R, intern, 22','',7,1,3),(28,'2022-07-13',43,'1, , , ','',7,1,3),(29,'2022-07-13',42,'1, , , ','',7,1,3),(30,'2022-07-13',41,'1, , , ','',7,1,3),(31,'2022-07-13',40,'1, , , ','',7,1,3),(32,'2022-07-13',39,'1, , , ','',7,1,3),(33,'2022-07-13',38,'1, , , ','',7,1,3),(34,'2022-07-13',37,'1, , , ','',7,1,3),(35,'2022-07-13',36,'1, , , ','',7,1,3),(36,'2022-07-13',47,'10, , , ','',7,1,3),(37,'2022-07-13',46,'10, , , ','',7,1,3),(38,'2022-07-13',45,'10, , , ','',7,1,3),(39,'2022-07-13',44,'10, , , ','',7,1,3),(40,'2022-07-14',18,'1, Chandan R, Python intern, 22','[{\"changed\": {\"fields\": [\"Empid\"]}}]',7,1,2),(41,'2022-07-15',1,'chandan','[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'empcrud','details'),(7,'empcrud','emplist'),(9,'members','loginuser'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-06-30'),(2,'auth','0001_initial','2022-06-30'),(3,'admin','0001_initial','2022-06-30'),(4,'admin','0002_logentry_remove_auto_add','2022-06-30'),(5,'admin','0003_logentry_add_action_flag_choices','2022-06-30'),(6,'contenttypes','0002_remove_content_type_name','2022-06-30'),(7,'auth','0002_alter_permission_name_max_length','2022-06-30'),(8,'auth','0003_alter_user_email_max_length','2022-06-30'),(9,'auth','0004_alter_user_username_opts','2022-06-30'),(10,'auth','0005_alter_user_last_login_null','2022-06-30'),(11,'auth','0006_require_contenttypes_0002','2022-06-30'),(12,'auth','0007_alter_validators_add_error_messages','2022-06-30'),(13,'auth','0008_alter_user_username_max_length','2022-06-30'),(14,'auth','0009_alter_user_last_name_max_length','2022-06-30'),(15,'auth','0010_alter_group_name_max_length','2022-06-30'),(16,'auth','0011_update_proxy_permissions','2022-06-30'),(17,'auth','0012_alter_user_first_name_max_length','2022-06-30'),(18,'sessions','0001_initial','2022-06-30'),(19,'empcrud','0001_initial','2022-06-30'),(20,'empcrud','0002_emplist_age_emplist_position_delete_details','2022-07-01'),(21,'empcrud','0003_alter_emplist_empid','2022-07-14'),(22,'empcrud','0004_alter_emplist_age_alter_emplist_empid','2022-07-14'),(23,'empcrud','0005_alter_emplist_age_alter_emplist_empid','2022-07-14'),(24,'members','0001_initial','2022-07-14'),(25,'members','0002_delete_loginuser','2022-07-18');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(226) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('gt6yrs6vzypiaxuaopjd3vli5rs35k92','.eJxVjDsOwjAQBe_iGlnrL15Kes5grb0GB5AtxUmFuDtESgHtm5n3EpHWpcZ1lDlOLE5CicPvlig_StsA36ndusy9LfOU5KbInQ556Vye5939O6g06rfGpBjIBwTQOkAB4ywTeiLUzMcSvLEWXFJk2GP2wSMwBswqowtXEu8PwIc3IQ:1o6rMP:Tpx5grPPqUrZrIBqYQpEPTkysoQHoNGnuDNi-0bnUIM','2022-07-14'),('5jczqdqmoevmdj3uls5o1ljtzk1k7vfe','.eJxVjDsOwjAQBe_iGlnrL15Kes5grb0GB5AtxUmFuDtESgHtm5n3EpHWpcZ1lDlOLE5CicPvlig_StsA36ndusy9LfOU5KbInQ556Vye5939O6g06rfGpBjIBwTQOkAB4ywTeiLUzMcSvLEWXFJk2GP2wSMwBswqowtXEu8PwIc3IQ:1o6sCk:kSggP2vnrOV4cQhUfVls0t6Xv6BvOiJMNGD-lDAnyAI','2022-07-14'),('bedtrh4cp9q5avditf7vrf67mmryfe3l','.eJxVjDsOwjAQBe_iGlnrL15Kes5grb0GB5AtxUmFuDtESgHtm5n3EpHWpcZ1lDlOLE5CicPvlig_StsA36ndusy9LfOU5KbInQ556Vye5939O6g06rfGpBjIBwTQOkAB4ywTeiLUzMcSvLEWXFJk2GP2wSMwBswqowtXEu8PwIc3IQ:1oDO2i:T_A17aOzaDcqPL7qaORUUOU16ZrRk4DU_H08cOeY_2o','2022-08-01');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empcrud_emplist`
--

DROP TABLE IF EXISTS `empcrud_emplist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empcrud_emplist` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `position` varchar(21) DEFAULT NULL,
  `empid` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empcrud_emplist`
--

LOCK TABLES `empcrud_emplist` WRITE;
/*!40000 ALTER TABLE `empcrud_emplist` DISABLE KEYS */;
INSERT INTO `empcrud_emplist` VALUES (4,'Prajwal H A',23,'Python intern',2),(6,'Kalyan',23,'Java developer intern',3),(7,'Anusha',22,'UI developer intern',4),(8,'Prajwal V',21,'Java developer intern',5),(9,'Bharath',23,'Java developer intern',6),(13,'Hrishi',23,'UI developer intern',7),(14,'Harish',23,'Java developer intern',8),(16,'Darshan',23,'QA intern',9),(18,'Chandan R',22,'Python intern',1),(20,'Shivam',24,'Java developer intern',10);
/*!40000 ALTER TABLE `empcrud_emplist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',25),('django_admin_log',41),('django_content_type',9),('auth_permission',36),('auth_group',0),('auth_user',4),('empcrud_emplist',21);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:27
