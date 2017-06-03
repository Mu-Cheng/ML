-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: oj
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `admin_group_relation`
--

DROP TABLE IF EXISTS `admin_group_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_group_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_group_relation_user_id_195ca555_uniq` (`user_id`,`group_id`),
  KEY `admin_group_relation_group_id_06d5cbf0_fk_group_id` (`group_id`),
  CONSTRAINT `admin_group_relation_group_id_06d5cbf0_fk_group_id` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`),
  CONSTRAINT `admin_group_relation_user_id_a4a28113_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_group_relation`
--

LOCK TABLES `admin_group_relation` WRITE;
/*!40000 ALTER TABLE `admin_group_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_group_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `last_update_time` datetime(6) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `announcement_created_by_id_359ccf50_fk_user_id` (`created_by_id`),
  CONSTRAINT `announcement_created_by_id_359ccf50_fk_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES (1,'提示','<p>相关环境情况在帮助里&nbsp;<a href=\"http://tjutoj.cn/help/\" target=\"_blank\" rel=\"nofollow\">http://tjutoj.cn/help/</a></p><p>root是管理员</p>','2017-01-22 09:00:59.600660','2017-01-22 12:41:05.211220',1,1);
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add content type',3,'add_contenttype'),(8,'Can change content type',3,'change_contenttype'),(9,'Can delete content type',3,'delete_contenttype'),(10,'Can add session',4,'add_session'),(11,'Can change session',4,'change_session'),(12,'Can delete session',4,'delete_session'),(13,'Can add user',5,'add_user'),(14,'Can change user',5,'change_user'),(15,'Can delete user',5,'delete_user'),(16,'Can add user profile',6,'add_userprofile'),(17,'Can change user profile',6,'change_userprofile'),(18,'Can delete user profile',6,'delete_userprofile'),(19,'Can add announcement',7,'add_announcement'),(20,'Can change announcement',7,'change_announcement'),(21,'Can delete announcement',7,'delete_announcement'),(22,'Can add group',8,'add_group'),(23,'Can change group',8,'change_group'),(24,'Can delete group',8,'delete_group'),(25,'Can add user group relation',9,'add_usergrouprelation'),(26,'Can change user group relation',9,'change_usergrouprelation'),(27,'Can delete user group relation',9,'delete_usergrouprelation'),(28,'Can add admin group relation',10,'add_admingrouprelation'),(29,'Can change admin group relation',10,'change_admingrouprelation'),(30,'Can delete admin group relation',10,'delete_admingrouprelation'),(31,'Can add join group request',11,'add_joingrouprequest'),(32,'Can change join group request',11,'change_joingrouprequest'),(33,'Can delete join group request',11,'delete_joingrouprequest'),(34,'Can add problem tag',12,'add_problemtag'),(35,'Can change problem tag',12,'change_problemtag'),(36,'Can delete problem tag',12,'delete_problemtag'),(37,'Can add problem',13,'add_problem'),(38,'Can change problem',13,'change_problem'),(39,'Can delete problem',13,'delete_problem'),(40,'Can add submission',14,'add_submission'),(41,'Can change submission',14,'change_submission'),(42,'Can delete submission',14,'delete_submission'),(43,'Can add contest',15,'add_contest'),(44,'Can change contest',15,'change_contest'),(45,'Can delete contest',15,'delete_contest'),(46,'Can add contest problem',16,'add_contestproblem'),(47,'Can change contest problem',16,'change_contestproblem'),(48,'Can delete contest problem',16,'delete_contestproblem'),(49,'Can add contest rank',17,'add_contestrank'),(50,'Can change contest rank',17,'change_contestrank'),(51,'Can delete contest rank',17,'delete_contestrank'),(52,'Can add judge server',18,'add_judgeserver'),(53,'Can change judge server',18,'change_judgeserver'),(54,'Can delete judge server',18,'delete_judgeserver'),(55,'Can add judge waiting queue',19,'add_judgewaitingqueue'),(56,'Can change judge waiting queue',19,'change_judgewaitingqueue'),(57,'Can delete judge waiting queue',19,'delete_judgewaitingqueue');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest`
--

DROP TABLE IF EXISTS `contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `description` longtext NOT NULL,
  `real_time_rank` tinyint(1) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `contest_type` int(11) NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `contest_created_by_id_a763ca7e_fk_user_id` (`created_by_id`),
  CONSTRAINT `contest_created_by_id_a763ca7e_fk_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest`
--

LOCK TABLES `contest` WRITE;
/*!40000 ALTER TABLE `contest` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_groups`
--

DROP TABLE IF EXISTS `contest_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contest_groups_contest_id_715ec88a_uniq` (`contest_id`,`group_id`),
  KEY `contest_groups_group_id_2e8b2537_fk_group_id` (`group_id`),
  CONSTRAINT `contest_groups_contest_id_15691db3_fk_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`id`),
  CONSTRAINT `contest_groups_group_id_2e8b2537_fk_group_id` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_groups`
--

LOCK TABLES `contest_groups` WRITE;
/*!40000 ALTER TABLE `contest_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_problem`
--

DROP TABLE IF EXISTS `contest_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `input_description` varchar(10000) NOT NULL,
  `output_description` varchar(10000) NOT NULL,
  `samples` longtext NOT NULL,
  `test_case_id` varchar(40) NOT NULL,
  `hint` longtext,
  `create_time` datetime(6) NOT NULL,
  `time_limit` int(11) NOT NULL,
  `memory_limit` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `total_submit_number` int(11) NOT NULL,
  `total_accepted_number` int(11) NOT NULL,
  `sort_index` varchar(30) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `last_update_time` datetime(6),
  `spj` tinyint(1) NOT NULL,
  `spj_code` longtext,
  `spj_language` int(11) DEFAULT NULL,
  `spj_version` varchar(32),
  PRIMARY KEY (`id`),
  KEY `contest_problem_contest_id_9bf647da_fk_contest_id` (`contest_id`),
  KEY `contest_problem_created_by_id_d59288b6_fk_user_id` (`created_by_id`),
  CONSTRAINT `contest_problem_contest_id_9bf647da_fk_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`id`),
  CONSTRAINT `contest_problem_created_by_id_d59288b6_fk_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_problem`
--

LOCK TABLES `contest_problem` WRITE;
/*!40000 ALTER TABLE `contest_problem` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_rank`
--

DROP TABLE IF EXISTS `contest_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_submission_number` int(11) NOT NULL,
  `total_ac_number` int(11) NOT NULL,
  `total_time` int(11) NOT NULL,
  `submission_info` longtext NOT NULL,
  `contest_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contest_contestrank_contest_id_00a29cbf_fk_contest_id` (`contest_id`),
  KEY `contest_contestrank_user_id_358d0abd_fk_user_id` (`user_id`),
  CONSTRAINT `contest_contestrank_contest_id_00a29cbf_fk_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`id`),
  CONSTRAINT `contest_contestrank_user_id_358d0abd_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_rank`
--

LOCK TABLES `contest_rank` WRITE;
/*!40000 ALTER TABLE `contest_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (5,'account','user'),(6,'account','userprofile'),(7,'announcement','announcement'),(2,'auth','group'),(1,'auth','permission'),(3,'contenttypes','contenttype'),(15,'contest','contest'),(16,'contest','contestproblem'),(17,'contest','contestrank'),(10,'group','admingrouprelation'),(8,'group','group'),(11,'group','joingrouprequest'),(9,'group','usergrouprelation'),(18,'judge_dispatcher','judgeserver'),(19,'judge_dispatcher','judgewaitingqueue'),(13,'problem','problem'),(12,'problem','problemtag'),(4,'sessions','session'),(14,'submission','submission');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'account','0001_initial','2017-01-22 07:39:41.662243'),(2,'account','0002_user_problems_status','2017-01-22 07:39:41.723409'),(3,'account','0003_auto_20150915_2025','2017-01-22 07:39:41.729252'),(4,'account','0004_remove_user_problems_status','2017-01-22 07:39:41.799597'),(5,'account','0005_user_problems_status','2017-01-22 07:39:41.835053'),(6,'account','0006_auto_20150924_1530','2017-01-22 07:39:41.841577'),(7,'account','0007_auto_20150929_2320','2017-01-22 07:39:41.895989'),(8,'account','0008_user_login_failed_counter','2017-01-22 07:39:41.930198'),(9,'account','0009_user_reset_password_token_create_time','2017-01-22 07:39:41.990388'),(10,'account','0010_remove_user_login_failed_counter','2017-01-22 07:39:42.043993'),(11,'account','0011_user_auth_token','2017-01-22 07:39:42.082580'),(12,'account','0012_auto_20151012_1546','2017-01-22 07:39:42.125501'),(13,'account','0013_userprofile','2017-01-22 07:39:42.240921'),(14,'account','0014_auto_20151110_1037','2017-01-22 07:39:42.332913'),(15,'account','0015_userprofile_student_id','2017-01-22 07:39:42.371286'),(16,'account','0016_auto_20151211_2230','2017-01-22 07:39:42.466036'),(17,'account','0017_auto_20151212_2139','2017-01-22 07:39:42.481473'),(18,'account','0018_auto_20160217_0920','2017-01-22 07:39:42.554170'),(19,'account','0019_user_is_forbidden','2017-01-22 07:39:42.593859'),(20,'account','0020_auto_20160424_1241','2017-01-22 07:39:42.655681'),(21,'account','0021_auto_20160424_1243','2017-01-22 07:39:42.667357'),(22,'group','0001_initial','2017-01-22 07:39:42.996372'),(23,'group','0002_auto_20150811_1456','2017-01-22 07:39:43.130665'),(24,'group','0003_auto_20150811_1906','2017-01-22 07:39:43.147919'),(25,'group','0002_auto_20150811_1649','2017-01-22 07:39:43.224199'),(26,'group','0004_merge','2017-01-22 07:39:43.227269'),(27,'announcement','0001_initial','2017-01-22 07:39:43.293792'),(28,'announcement','0002_auto_20150818_1445','2017-01-22 07:39:43.556535'),(29,'announcement','0003_auto_20150922_1703','2017-01-22 07:39:43.571587'),(30,'announcement','0004_auto_20151015_1555','2017-01-22 07:39:43.636018'),(31,'contenttypes','0001_initial','2017-01-22 07:39:43.690360'),(32,'contenttypes','0002_remove_content_type_name','2017-01-22 07:39:43.825737'),(33,'auth','0001_initial','2017-01-22 07:39:44.116775'),(34,'auth','0002_alter_permission_name_max_length','2017-01-22 07:39:44.185466'),(35,'auth','0003_alter_user_email_max_length','2017-01-22 07:39:44.197965'),(36,'auth','0004_alter_user_username_opts','2017-01-22 07:39:44.209752'),(37,'auth','0005_alter_user_last_login_null','2017-01-22 07:39:44.221229'),(38,'auth','0006_require_contenttypes_0002','2017-01-22 07:39:44.224674'),(39,'auth','0007_alter_validators_add_error_messages','2017-01-22 07:39:44.235906'),(40,'contest','0001_initial','2017-01-22 07:39:44.777229'),(41,'contest','0002_contest_visible','2017-01-22 07:39:44.849447'),(42,'contest','0003_contestproblem_difficulty','2017-01-22 07:39:44.942445'),(43,'contest','0004_remove_contestproblem_difficulty','2017-01-22 07:39:45.009161'),(44,'contest','0005_contestsubmission','2017-01-22 07:39:45.227036'),(45,'contest','0005_contestproblem_score','2017-01-22 07:39:45.322517'),(46,'contest','0006_merge','2017-01-22 07:39:45.325705'),(47,'contest','0007_contestsubmission_ac_time','2017-01-22 07:39:45.397439'),(48,'contest','0008_auto_20150912_1912','2017-01-22 07:39:45.425912'),(49,'contest','0009_contestsubmission_first_achieved','2017-01-22 07:39:45.514150'),(50,'contest','0010_auto_20150922_1703','2017-01-22 07:39:45.561270'),(51,'contest','0011_contestrank','2017-01-22 07:39:45.693218'),(52,'contest','0012_auto_20151008_1124','2017-01-22 07:39:45.742160'),(53,'contest','0013_auto_20151017_1511','2017-01-22 07:39:46.429306'),(54,'contest','0014_auto_20160404_1509','2017-01-22 07:39:46.698462'),(55,'contest','0015_auto_20160404_1641','2017-01-22 07:39:46.739774'),(56,'contest','0016_contestproblem_spj_version','2017-01-22 07:39:46.827671'),(57,'group','0005_joingrouprequest_accepted','2017-01-22 07:39:46.900931'),(58,'group','0006_auto_20151209_1834','2017-01-22 07:39:46.982978'),(59,'group','0007_auto_20151209_1836','2017-01-22 07:39:47.227280'),(60,'judge_dispatcher','0001_initial','2017-01-22 07:39:47.307683'),(61,'judge_dispatcher','0002_auto_20151207_2310','2017-01-22 07:39:47.455418'),(62,'judge_dispatcher','0003_auto_20151223_0029','2017-01-22 07:39:47.543998'),(63,'judge_dispatcher','0004_auto_20160407_1816','2017-01-22 07:39:47.720564'),(64,'judge_dispatcher','0005_auto_20160519_1627','2017-01-22 07:39:47.893655'),(65,'problem','0001_initial','2017-01-22 07:39:48.261445'),(66,'problem','0002_remove_problemtag_description','2017-01-22 07:39:48.331423'),(67,'problem','0003_auto_20150810_2233','2017-01-22 07:39:48.363846'),(68,'problem','0004_auto_20150813_1459','2017-01-22 07:39:48.616561'),(69,'problem','0005_auto_20150813_1807','2017-01-22 07:39:48.710680'),(70,'problem','0004_auto_20150812_2254','2017-01-22 07:39:48.837822'),(71,'problem','0006_merge','2017-01-22 07:39:48.840933'),(72,'problem','0007_remove_problem_last_update_time','2017-01-22 07:39:48.931026'),(73,'problem','0008_auto_20150922_1702','2017-01-22 07:39:48.961851'),(74,'problem','0009_auto_20151008_1125','2017-01-22 07:39:48.998431'),(75,'problem','0010_auto_20151017_1226','2017-01-22 07:39:49.193235'),(76,'problem','0011_auto_20151017_1227','2017-01-22 07:39:49.220330'),(77,'problem','0012_auto_20160404_1509','2017-01-22 07:39:49.544559'),(78,'problem','0013_auto_20160404_1641','2017-01-22 07:39:49.599628'),(79,'problem','0014_problem_spj_version','2017-01-22 07:39:49.709724'),(80,'sessions','0001_initial','2017-01-22 07:39:49.761617'),(81,'submission','0001_initial','2017-01-22 07:39:49.769290'),(82,'submission','0002_submission_is_counted','2017-01-22 07:39:49.777281'),(83,'submission','0003_auto_20150821_1654','2017-01-22 07:39:49.790198'),(84,'submission','0004_remove_submission_is_counted','2017-01-22 07:39:49.797975'),(85,'submission','0005_submission_contest_id','2017-01-22 07:39:49.806815'),(86,'submission','0006_submission_shared','2017-01-22 07:39:49.820089'),(87,'submission','0007_auto_20151207_1645','2017-01-22 07:39:49.837840'),(88,'submission','0008_auto_20151208_2106','2017-01-22 07:39:49.856849');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1c4klny3bi7sjo2o69k3kk7rxvad504a','OGVjNTBiYjJlYjE1MTRiOWE4ZGRlNTM4ODMxY2IwNDc3Njk1ZTdjZjp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODU3Mjc2MDYuOTM4MTE5LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiWEZ4VyJ9','2017-02-12 22:05:46.944224'),('2l63sm7m1ckbp60ycpbj4fjonhkywtqm','ODQ1YWM5YmU3MzE4MzkyOWZhMDA0Y2ZjZTA4Y2YyNGExZWZiNGRmNjp7Imxhc3RfYWN0aXZpdHkiOjE0ODUwNzMxOTQuMDMzOSwiX2F1dGhfdXNlcl9oYXNoIjoiOTg2N2FmNmM3MmQ4MWVjODQ0OGNiZWI1ZjkxZDMwMTRhYTZkNGM0OCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==','2017-02-05 08:19:54.036635'),('2s7u9baxix2rx07bp4awcddbeakasycg','MDExNjU3OWMwZWRlOTRkZDkzZTk4NjE3MWE1MTVjMGVhNmMzNjViYTp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODYzMTQ5MDYuMjk0MDA0LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiZVozayJ9','2017-02-19 17:14:06.300967'),('2tgqqx4xe25zq1ehgnddzsbnx0w7gesw','ZDU5MzIwYWRhM2VhNjBlNzc4NWIzMGRhMDFkYjM3MWE5MTk5Y2RjNDp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODY0NTExMzkuNTUzNjU1LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiTnRVYSJ9','2017-02-21 07:04:39.559357'),('2ywtwygd1sekjpfwzguyvu0xd5owbpzy','MzE3MTFmNmRkMmU5ZDg3ZDJhMjNhZmNlNWVjMDNlZWFhMTY2Njg2Mjp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODUwNzk3MTcuNTgzNTksIl9kamFuZ29fY2FwdGNoYV9rZXkiOiJZdUdNIn0=','2017-02-05 10:07:37.600377'),('4kc1bh0j42v3pnoj9ttnoio6oa582vwy','M2UxMDM3MmM1YjcwMmE0ZTYyNzA3MDg1Zjg3YTg4OGViOWEyMTViODp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODYzNzA4OTQuMTUyOCwiX2RqYW5nb19jYXB0Y2hhX2tleSI6IkZZeWcifQ==','2017-02-20 08:47:14.159234'),('655r1z2qlvsbtjc8c5jznf4i892cl36i','YWM2NDA5NTRmMzVjNTgzYTBlYmVhYjA0ZGYxZTE3MjY4MmEwOGNlMjp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODUwOTc3OTIuMzk3NzMxLCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiR1k2TiJ9','2017-02-05 15:08:52.404826'),('71vcdowtby6a26r1smrvrp9zom7hd60e','ZTUyY2JhYjk5NTcwNjAzMjI2NWM0OWUzMDRjYWM4OWQzMTdmNjU4MDp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODY1MzA4MTMuMzAwNDQsIl9kamFuZ29fY2FwdGNoYV9rZXkiOiJVa3loIn0=','2017-02-22 05:12:33.423478'),('75iwpv04q9nowaxz0kobmwb9ed8uxyod','ZWI1MDhkMDVhZTUzZTVhMDYzZDdkZDY4YjA1ZDA1NTc4MzljYjE2Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyMTg2MWJhYzZkZTNlYjI0ZTVhYWJjZjY1MmEyMGE0YmNjM2M1OTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2017-03-08 14:59:00.225211'),('7sqg7133v9y6594hbyhlbi0dhbu2zivn','NDE2ZjRmZDEzOTJkNDM4N2RjYmIwMjgzZjA2ZTNjODQyYmZjY2MxZTp7Imxhc3RfYWN0aXZpdHkiOjE0ODUxNjYwODIuMTM3OTcsIl9hdXRoX3VzZXJfaGFzaCI6Ijk4NjdhZjZjNzJkODFlYzg0NDhjYmViNWY5MWQzMDE0YWE2ZDRjNDgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-02-06 10:08:02.141826'),('9f7nvqdjaszeqmbagwimzab12ybvtbav','OTBhZDFiNWNjMDA4MTBkMjE3OTJlYTQ3OTIxMDY3NGM4NzdhNzNmZjp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODYyNjc0ODcuNjI1MDc3LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiZ0dQayJ9','2017-02-19 04:03:48.318928'),('akri7d8hb6awbku72bpvafnwr0htqtsh','NGM5ZDVlYjY2N2QzYzhjZDA2NmVlYzcyOWNiNjI1YTgwMGE0OTcyYjp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODUwOTIwNTIuMDM2NzksIl9kamFuZ29fY2FwdGNoYV9rZXkiOiJ5bktiIn0=','2017-02-05 13:33:12.043279'),('cbr5bntn9us0od88hp3s3gx15br2mo7h','ZDgwYTliMTMyOWEwYjRjMWU3YzgwNjliODVmZTMzZGYzMjUxMDQ1MTp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODY0Mzc5NzguOTQ2NzA4LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiTVo4YyJ9','2017-02-21 03:25:19.156532'),('d6u9m6ff1a1sgtl6z6jd369jjxxlc3nv','NWRjNjQzYTE5YWYxZDU0ZWFjMDJhOTA3NmQ4MDcwMmI2YTAyMzgwZTp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODYyOTYxMjEuMjQ4MDM4LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiNXRzVyJ9','2017-02-19 12:01:01.255591'),('f5fz9k2isxk0x9j1jey0q3kokvautn8x','ZWMwMzAxN2Q5M2Y4ZWViZDBjNWU0NDA0OGMzMjVjNDVmMjA0MmQwYTp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODY1NzQzNzcuNDA2MzcxLCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiZEVrWSJ9','2017-02-22 17:18:37.413011'),('huyncwsgx360l6x97dlryztr5p0gw3sj','NWI4ZmZhYTMxMTI1NzY1ZTQ0YzgyMzA5NTFhOThlMWFkODRlMzdiMzp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODUwNzM4OTEuOTI0MTA3LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiV2RHQiJ9','2017-02-05 08:30:31.935277'),('hz6m78wlpgac2vi24e8jzry03yjgdbwl','OWZhZTM0YjkzMTYwNGI4NzllYmIxZWQ1MmI2MTJjNTQzMTBhM2IxYTp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODYyODIyMzMuMzI0MjgxLCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiWWtkVSJ9','2017-02-19 08:09:33.330138'),('ipgred0o1h62k00ztc89q2cl18hpm16k','MjhjNmY2M2JhZjI3OTgxNjNjYTgxMDAwYTMwZjE0MGU2OWY0NTU0Yzp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODUwODU2OTUuMjYyNzU3LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiRllEZiJ9','2017-02-05 11:47:15.268675'),('jtif4x6yw9uo0qld2dpv9fi3f1trntiq','MzdiMzg3ZjRjYzQ5ZmFhYzQ0ZjY3MjQwMmUxNmRjM2JlZmI3NmZmMDp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODUxNTI0OTYuNjU3MjIyLCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiMmhhZSJ9','2017-02-06 06:20:36.672083'),('kgh4d262q9knwc905crvs25n5b1d0upg','NGIwOTc1OTg2YTkyMGVlYjUyMzcwMmU3MDc0OGNkZWUwNDY5N2Q2NTp7Imxhc3RfYWN0aXZpdHkiOjE0ODY5OTI2NDAuNDE3NDA2LCJfYXV0aF91c2VyX2hhc2giOiI5ODY3YWY2YzcyZDgxZWM4NDQ4Y2JlYjVmOTFkMzAxNGFhNmQ0YzQ4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2017-02-27 13:30:40.428413'),('kvoabcwxbw6h0z2os2i8udau0xvqtagu','ZGI5MDk1YWE1NDAzNTllMTE3MjdjNjgxMjY2NjE0ZWJhYTc4Y2RkNzp7Imxhc3RfYWN0aXZpdHkiOjE0ODUzMjg2MjcuMzc3ODQyLCJfYXV0aF91c2VyX2hhc2giOiI5ODY3YWY2YzcyZDgxZWM4NDQ4Y2JlYjVmOTFkMzAxNGFhNmQ0YzQ4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2017-02-08 07:17:07.427366'),('lv5jzgvlr2hool0g4mn4hvz6xny7ywxv','ZjU3OTVlYzg4ZDliODNlZWM4YWNhNWQwYThlZmZhMjMxNTZiODAxMzp7Imxhc3RfYWN0aXZpdHkiOjE0OTY0MTY5MjkuOTE3ODM1LCJfYXV0aF91c2VyX2hhc2giOiJiNzg3NTZlYzk0NTZmOTNhNTZmZDQxZDMzODBkOWY2ODZjZWE2OGEyIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2017-06-16 15:22:09.921347'),('m0xrrqqw7z82henficfv5dff01xx3rol','N2Y4ZTY4NmY2NjhkNTlhY2VhNzBmZTA3NGZiOWVkMGUwZDI3OGRjYjp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODU3Mjc2MTMuMzEzMzEyLCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiNHFHRCJ9','2017-02-12 22:05:53.319379'),('ok2ltf6s0lwy2pnasfcbthteufgvi6ad','YzI5Y2MxMzliYjA5NjAxYWEyZDQ3ZTlkNjIyNjFkYjg4YTkyOGZhNDp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODUwODUxODYuNjM3Mjc1LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiUlhobSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJsYXN0X2FjdGl2aXR5IjoxNDg1MDg4MzQ1LjU2MjU5OSwiX2F1dGhfdXNlcl9oYXNoIjoiOTg2N2FmNmM3MmQ4MWVjODQ0OGNiZWI1ZjkxZDMwMTRhYTZkNGM0OCJ9','2017-02-05 12:32:25.575607'),('orozrhg79noeb77uwkcqpws9yq5874vb','ZGU2MmQzMTc3ZjY3MTNjZjg3NzliNmI3OTE3NTMwZTQ4NWZiZmY1Mjp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODU3MTQ0NDguODA3MjUzLCJfZGphbmdvX2NhcHRjaGFfa2V5Ijoia0hXZCJ9','2017-02-12 18:26:29.067618'),('p2yqnz07mjigccvmka021r33vlmvokrt','MmQyNzVkZTM4OGQzMDQ2NjRjMmY0ZmZlYTg1MTk0ZGUwNGUwOWIwNzp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODUxMzUwNjAuNjk1Mzc1LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoicXBHYSJ9','2017-02-06 01:30:00.732248'),('q3upb6hyywxa6fct9dfhy9laiqalzl2z','MjVjNDZlODQ2YTVjMzI0NjBlN2EyZjY1YWQ0MjhhMjFlZjcyNTE1ZTp7Imxhc3RfYWN0aXZpdHkiOjE0ODc1NzgxOTguMDU0OTkyLCJfYXV0aF91c2VyX2hhc2giOiI5ODY3YWY2YzcyZDgxZWM4NDQ4Y2JlYjVmOTFkMzAxNGFhNmQ0YzQ4IiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2017-03-06 08:09:58.069352'),('q7o39xxhf524wqdxqiyd2q5lh52fydqv','ZWI1MDhkMDVhZTUzZTVhMDYzZDdkZDY4YjA1ZDA1NTc4MzljYjE2Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjIyMTg2MWJhYzZkZTNlYjI0ZTVhYWJjZjY1MmEyMGE0YmNjM2M1OTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2017-03-08 14:59:00.288255'),('qloboa5djtgyb6ia0z92mt70xt3op6rf','YjY3ZDQ1ZjdkODMyNDU0N2Y1ZjIxOGFjMDkyZTE4ZWJmZjQwMDliNzp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODc3ODc4NjQuMTg1MTc1LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiNXE5biJ9','2017-03-08 18:23:24.193606'),('s9tu80xtb5wqnvbdiafn936ez32m8w72','ODk4MzlhNGJkZDY3MGRhM2YwZDBlYzAzMjhjZGMyZTc3ZjJhMTJiZDp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODUwNzM3MDIuOTU5NzAxLCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiQ3FWUiJ9','2017-02-05 08:27:22.964282'),('t2sin357u0x2j6ktf4rc9n15e9gxbauw','NzEwNjM3NGVjZTk2Y2VhMjUzMWNkODk2NGY1OWI4NTQxYThjODViNzp7Imxhc3RfYWN0aXZpdHkiOjE0ODc2NjUzODguNDI2Mjc0LCJfYXV0aF91c2VyX2hhc2giOiI5ODY3YWY2YzcyZDgxZWM4NDQ4Y2JlYjVmOTFkMzAxNGFhNmQ0YzQ4IiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2017-03-07 08:23:08.446749'),('uf27cz4tdzq9dvhn3txwhlxcelso9l7j','Yzg4NmQxODc1N2M2NTVjODA2NjdjYTE0N2EzNDY3MmE2ODQ2ODEwMjp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODYzNTUxMTMuMTU1ODEsIl9kamFuZ29fY2FwdGNoYV9rZXkiOiI5UEh0In0=','2017-02-20 04:24:13.413588'),('w3uvoi944or1q01mfybxwdn2yfy57amm','ZDY3Y2YzZjUwZjljNmM3ZDdmN2IwM2UwZDI4YjA3YzNjMjAyNzNhNjp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODY4MjY2OTAuNzA5Njk0LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiU096diIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJsYXN0X2FjdGl2aXR5IjoxNDg2ODI2NzI1LjEwNzk0MywiX2F1dGhfdXNlcl9oYXNoIjoiOTg2N2FmNmM3MmQ4MWVjODQ0OGNiZWI1ZjkxZDMwMTRhYTZkNGM0OCJ9','2017-02-25 15:25:25.112081'),('xfbrjemxm4q9sfxxe97dxpx48uw062so','NDY4YzQ3OGExZTMxNTllMmYyOWI2M2QwNjBhNmRiMWI2ODY3OTBkYTp7Il9kamFuZ29fY2FwdGNoYV9leHBpcmVzX3RpbWUiOjE0ODY1NDM1NjYuNDg1ODE2LCJfZGphbmdvX2NhcHRjaGFfa2V5IjoiYnBVdiJ9','2017-02-22 08:45:06.492319'),('y6a0drcoshetziccl8pfxwlwatdck99d','ZTRjOGFlNDhhODNiMTliMTNkNWRmMDA0NTVkNWY3ZWQ0MTg5OGQ0ZTp7fQ==','2017-03-12 01:25:21.292414');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `join_group_setting` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_name_7c13c7fc_uniq` (`name`),
  KEY `group_created_by_id_c370eee5_fk_user_id` (`created_by_id`),
  CONSTRAINT `group_created_by_id_c370eee5_fk_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_group_request`
--

DROP TABLE IF EXISTS `join_group_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_group_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `join_group_request_user_id_a9ad77d6_fk_user_id` (`user_id`),
  KEY `join_group_request_group_id_0da7c468_fk_group_id` (`group_id`),
  CONSTRAINT `join_group_request_group_id_0da7c468_fk_group_id` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`),
  CONSTRAINT `join_group_request_user_id_a9ad77d6_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_group_request`
--

LOCK TABLES `join_group_request` WRITE;
/*!40000 ALTER TABLE `join_group_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_group_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_server`
--

DROP TABLE IF EXISTS `judge_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judge_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` char(39) NOT NULL,
  `port` int(11) NOT NULL,
  `max_instance_number` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` datetime(6),
  `name` varchar(30) NOT NULL,
  `used_instance_number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_server`
--

LOCK TABLES `judge_server` WRITE;
/*!40000 ALTER TABLE `judge_server` DISABLE KEYS */;
INSERT INTO `judge_server` VALUES (1,'172.17.0.2',8080,1,'qwert12345',1,'2017-01-22 07:50:34.662667','本机',0);
/*!40000 ALTER TABLE `judge_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_waiting_queue`
--

DROP TABLE IF EXISTS `judge_waiting_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `judge_waiting_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_id` varchar(40) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `memory_limit` int(11) NOT NULL,
  `test_case_id` varchar(40) NOT NULL,
  `time_limit` int(11) NOT NULL,
  `spj` tinyint(1) NOT NULL,
  `spj_code` longtext,
  `spj_language` int(11),
  `spj_version` varchar(32),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_waiting_queue`
--

LOCK TABLES `judge_waiting_queue` WRITE;
/*!40000 ALTER TABLE `judge_waiting_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_waiting_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `samples` longtext NOT NULL,
  `test_case_id` varchar(40) NOT NULL,
  `hint` longtext,
  `create_time` datetime(6) NOT NULL,
  `source` varchar(200) DEFAULT NULL,
  `time_limit` int(11) NOT NULL,
  `memory_limit` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `total_submit_number` int(11) NOT NULL,
  `total_accepted_number` int(11) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `input_description` varchar(10000) NOT NULL,
  `output_description` varchar(10000) NOT NULL,
  `last_update_time` datetime(6),
  `spj` tinyint(1) NOT NULL,
  `spj_code` longtext,
  `spj_language` int(11) DEFAULT NULL,
  `spj_version` varchar(32),
  PRIMARY KEY (`id`),
  KEY `problem_problem_created_by_id_6c380861_fk_user_id` (`created_by_id`),
  CONSTRAINT `problem_problem_created_by_id_6c380861_fk_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (1,'A+B','<p>A+B</p>','[{\"input\": \"1 1\", \"output\": \"2\"}]','aa11a82240ed6ec0a7dd8ab4c5dc15fc','','2017-01-22 08:23:13.357706','TJUTOJ',1000,128,1,21,3,1,1,'A+B','A+B',NULL,0,NULL,NULL,NULL),(2,'整数除法','<p>输入两个数做计算机整数除法的结果，如：5/2 = 2</p><p><b>不许使用乘法，除法，取模运算</b></p>','[{\"input\": \"5 4\", \"output\": \"1\"}]','4874d4e2abf677fd46b0cf76efcf5e5c','<p>leetcode</p>','2017-01-22 12:30:36.948292','leetcode的面试题',1000,128,1,4,1,1,1,'多组测试数据，每行两个数 a b\n计算a/b','对每个数据生成一个结果','2017-01-22 12:36:02.589947',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_tag`
--

DROP TABLE IF EXISTS `problem_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_tag`
--

LOCK TABLES `problem_tag` WRITE;
/*!40000 ALTER TABLE `problem_tag` DISABLE KEYS */;
INSERT INTO `problem_tag` VALUES (1,'a+b'),(2,'leetcode');
/*!40000 ALTER TABLE `problem_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_tags`
--

DROP TABLE IF EXISTS `problem_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `problemtag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `problem_problem_tags_problem_id_aa6b9dba_uniq` (`problem_id`,`problemtag_id`),
  KEY `problem_problem_tags_problemtag_id_ae11dd8f_fk_problem_tag_id` (`problemtag_id`),
  CONSTRAINT `problem_problem_tags_problem_id_d03cc04a_fk_problem_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`),
  CONSTRAINT `problem_problem_tags_problemtag_id_ae11dd8f_fk_problem_tag_id` FOREIGN KEY (`problemtag_id`) REFERENCES `problem_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_tags`
--

LOCK TABLES `problem_tags` WRITE;
/*!40000 ALTER TABLE `problem_tags` DISABLE KEYS */;
INSERT INTO `problem_tags` VALUES (1,1,1),(3,2,2);
/*!40000 ALTER TABLE `problem_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `real_name` varchar(30) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `admin_type` int(11) NOT NULL,
  `problems_status` longtext NOT NULL,
  `reset_password_token` varchar(40),
  `reset_password_token_create_time` datetime(6),
  `auth_token` varchar(40),
  `tfa_token` varchar(40) DEFAULT NULL,
  `two_factor_auth` tinyint(1) NOT NULL,
  `openapi_appkey` varchar(35),
  `is_forbidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'pbkdf2_sha256$24000$MyzCo7hY81lm$LsdCam9Cxnl5jYznkjhRfyV7nxO8zyT3FVZEjWCFKDg=','2017-06-02 03:38:57.486876','root','root','root@oj.com','2017-01-22 07:40:10.169036',2,'{\"problems\":{\"1\":2,\"2\":2}}',NULL,NULL,NULL,'297ade224984fa3b6f38a99cba4e8f04',0,NULL,0),(2,'pbkdf2_sha256$24000$HxEGpQnlE2At$VgW4ADQV6XxCuejtTpNNeg1clVdDm0rjKOmIxSl1bZA=','2017-02-11 15:21:46.358366','muchen','muchen','752572065@qq.com','2017-02-11 15:20:00.661975',0,'{}',NULL,NULL,NULL,'26b5ff13ee53e700775645a8c30f89f9',0,NULL,0),(3,'pbkdf2_sha256$24000$qSXK5LAkGqJm$y9qxI7nQQOBP5JlU5pQM0AqI7yn5XAnaX8hnRA0uD2s=','2017-02-22 14:59:00.284082','yx5594','heheaagogo','294794454@qq.com','2017-02-22 14:58:47.882145',0,'{\"problems\":{\"1\":2}}',NULL,NULL,NULL,NULL,0,NULL,0),(4,'pbkdf2_sha256$24000$EX6VpXAdsMTB$dir35UuXjtvl4TiSDR2LRr/2VAPlfQmpbu+gHT6RUs8=',NULL,'xjk','徐瑶坤','13116127008@qq.com','2017-02-26 01:25:21.238786',0,'{}',NULL,NULL,NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_relation`
--

DROP TABLE IF EXISTS `user_group_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `join_time` datetime(6) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_group_relation_group_id_d392fc82_uniq` (`group_id`,`user_id`),
  KEY `user_group_relation_user_id_0a38580e_fk_user_id` (`user_id`),
  CONSTRAINT `user_group_relation_group_id_8ee53fb6_fk_group_id` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`),
  CONSTRAINT `user_group_relation_user_id_0a38580e_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_relation`
--

LOCK TABLES `user_group_relation` WRITE;
/*!40000 ALTER TABLE `user_group_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(50) NOT NULL,
  `blog` varchar(200) DEFAULT NULL,
  `mood` varchar(200) DEFAULT NULL,
  `hduoj_username` varchar(30) DEFAULT NULL,
  `bestcoder_username` varchar(30) DEFAULT NULL,
  `codeforces_username` varchar(30) DEFAULT NULL,
  `accepted_problem_number` int(11) NOT NULL,
  `submission_number` int(11) NOT NULL,
  `problems_status` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone_number` varchar(15),
  `school` varchar(200),
  `student_id` varchar(15),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'/static/img/avatar/avatar-16.png',NULL,NULL,NULL,NULL,NULL,0,16,'{}',1,NULL,NULL,NULL),(2,'/static/img/avatar/avatar-13.png',NULL,NULL,NULL,NULL,NULL,0,0,'{}',2,NULL,'tjut','111111'),(3,'/static/img/avatar/avatar-5.png',NULL,NULL,NULL,NULL,NULL,0,9,'{}',3,NULL,NULL,NULL),(4,'/static/img/avatar/avatar-11.png',NULL,NULL,NULL,NULL,NULL,0,0,'{}',4,NULL,'天津理工大学',NULL);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-03  0:23:29
