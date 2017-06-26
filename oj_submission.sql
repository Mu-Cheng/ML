-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: oj_submission
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
INSERT INTO `django_migrations` VALUES (1,'account','0001_initial','2017-01-22 07:40:01.816260'),(2,'account','0002_user_problems_status','2017-01-22 07:40:01.830390'),(3,'account','0003_auto_20150915_2025','2017-01-22 07:40:01.841713'),(4,'account','0004_remove_user_problems_status','2017-01-22 07:40:01.854493'),(5,'account','0005_user_problems_status','2017-01-22 07:40:01.867067'),(6,'account','0006_auto_20150924_1530','2017-01-22 07:40:01.881418'),(7,'account','0007_auto_20150929_2320','2017-01-22 07:40:01.898705'),(8,'account','0008_user_login_failed_counter','2017-01-22 07:40:01.912764'),(9,'account','0009_user_reset_password_token_create_time','2017-01-22 07:40:01.936029'),(10,'account','0010_remove_user_login_failed_counter','2017-01-22 07:40:01.947695'),(11,'account','0011_user_auth_token','2017-01-22 07:40:01.956545'),(12,'account','0012_auto_20151012_1546','2017-01-22 07:40:01.968525'),(13,'account','0013_userprofile','2017-01-22 07:40:01.984573'),(14,'account','0014_auto_20151110_1037','2017-01-22 07:40:02.008553'),(15,'account','0015_userprofile_student_id','2017-01-22 07:40:02.024609'),(16,'account','0016_auto_20151211_2230','2017-01-22 07:40:02.052271'),(17,'account','0017_auto_20151212_2139','2017-01-22 07:40:02.070630'),(18,'account','0018_auto_20160217_0920','2017-01-22 07:40:02.088427'),(19,'account','0019_user_is_forbidden','2017-01-22 07:40:02.104608'),(20,'account','0020_auto_20160424_1241','2017-01-22 07:40:02.131188'),(21,'account','0021_auto_20160424_1243','2017-01-22 07:40:02.146092'),(22,'group','0001_initial','2017-01-22 07:40:02.195929'),(23,'group','0002_auto_20150811_1456','2017-01-22 07:40:02.255850'),(24,'group','0003_auto_20150811_1906','2017-01-22 07:40:02.290720'),(25,'group','0002_auto_20150811_1649','2017-01-22 07:40:02.327270'),(26,'group','0004_merge','2017-01-22 07:40:02.332458'),(27,'announcement','0001_initial','2017-01-22 07:40:02.350758'),(28,'announcement','0002_auto_20150818_1445','2017-01-22 07:40:02.384766'),(29,'announcement','0003_auto_20150922_1703','2017-01-22 07:40:02.400678'),(30,'announcement','0004_auto_20151015_1555','2017-01-22 07:40:02.428920'),(31,'contenttypes','0001_initial','2017-01-22 07:40:02.440608'),(32,'contenttypes','0002_remove_content_type_name','2017-01-22 07:40:02.464634'),(33,'auth','0001_initial','2017-01-22 07:40:02.502497'),(34,'auth','0002_alter_permission_name_max_length','2017-01-22 07:40:02.512975'),(35,'auth','0003_alter_user_email_max_length','2017-01-22 07:40:02.526517'),(36,'auth','0004_alter_user_username_opts','2017-01-22 07:40:02.539139'),(37,'auth','0005_alter_user_last_login_null','2017-01-22 07:40:02.551013'),(38,'auth','0006_require_contenttypes_0002','2017-01-22 07:40:02.555549'),(39,'auth','0007_alter_validators_add_error_messages','2017-01-22 07:40:02.567534'),(40,'contest','0001_initial','2017-01-22 07:40:02.622924'),(41,'contest','0002_contest_visible','2017-01-22 07:40:02.645805'),(42,'contest','0003_contestproblem_difficulty','2017-01-22 07:40:02.667736'),(43,'contest','0004_remove_contestproblem_difficulty','2017-01-22 07:40:02.688223'),(44,'contest','0005_contestsubmission','2017-01-22 07:40:02.712132'),(45,'contest','0005_contestproblem_score','2017-01-22 07:40:02.742460'),(46,'contest','0006_merge','2017-01-22 07:40:02.746188'),(47,'contest','0007_contestsubmission_ac_time','2017-01-22 07:40:02.780884'),(48,'contest','0008_auto_20150912_1912','2017-01-22 07:40:02.802776'),(49,'contest','0009_contestsubmission_first_achieved','2017-01-22 07:40:02.823825'),(50,'contest','0010_auto_20150922_1703','2017-01-22 07:40:02.863687'),(51,'contest','0011_contestrank','2017-01-22 07:40:02.889472'),(52,'contest','0012_auto_20151008_1124','2017-01-22 07:40:02.934614'),(53,'contest','0013_auto_20151017_1511','2017-01-22 07:40:03.126061'),(54,'contest','0014_auto_20160404_1509','2017-01-22 07:40:03.181621'),(55,'contest','0015_auto_20160404_1641','2017-01-22 07:40:03.206750'),(56,'contest','0016_contestproblem_spj_version','2017-01-22 07:40:03.228024'),(57,'group','0005_joingrouprequest_accepted','2017-01-22 07:40:03.249099'),(58,'group','0006_auto_20151209_1834','2017-01-22 07:40:03.269756'),(59,'group','0007_auto_20151209_1836','2017-01-22 07:40:03.389428'),(60,'judge_dispatcher','0001_initial','2017-01-22 07:40:03.401932'),(61,'judge_dispatcher','0002_auto_20151207_2310','2017-01-22 07:40:03.416593'),(62,'judge_dispatcher','0003_auto_20151223_0029','2017-01-22 07:40:03.428830'),(63,'judge_dispatcher','0004_auto_20160407_1816','2017-01-22 07:40:03.448878'),(64,'judge_dispatcher','0005_auto_20160519_1627','2017-01-22 07:40:03.469962'),(65,'problem','0001_initial','2017-01-22 07:40:03.534613'),(66,'problem','0002_remove_problemtag_description','2017-01-22 07:40:03.562342'),(67,'problem','0003_auto_20150810_2233','2017-01-22 07:40:03.587940'),(68,'problem','0004_auto_20150813_1459','2017-01-22 07:40:03.643130'),(69,'problem','0005_auto_20150813_1807','2017-01-22 07:40:03.714301'),(70,'problem','0004_auto_20150812_2254','2017-01-22 07:40:03.741333'),(71,'problem','0006_merge','2017-01-22 07:40:03.745144'),(72,'problem','0007_remove_problem_last_update_time','2017-01-22 07:40:03.775115'),(73,'problem','0008_auto_20150922_1702','2017-01-22 07:40:03.804326'),(74,'problem','0009_auto_20151008_1125','2017-01-22 07:40:03.832323'),(75,'problem','0010_auto_20151017_1226','2017-01-22 07:40:03.886940'),(76,'problem','0011_auto_20151017_1227','2017-01-22 07:40:03.926095'),(77,'problem','0012_auto_20160404_1509','2017-01-22 07:40:04.002365'),(78,'problem','0013_auto_20160404_1641','2017-01-22 07:40:04.029748'),(79,'problem','0014_problem_spj_version','2017-01-22 07:40:04.064122'),(80,'sessions','0001_initial','2017-01-22 07:40:04.072027'),(81,'submission','0001_initial','2017-01-22 07:40:04.159165'),(82,'submission','0002_submission_is_counted','2017-01-22 07:40:04.214969'),(83,'submission','0003_auto_20150821_1654','2017-01-22 07:40:04.262402'),(84,'submission','0004_remove_submission_is_counted','2017-01-22 07:40:04.318784'),(85,'submission','0005_submission_contest_id','2017-01-22 07:40:04.396395'),(86,'submission','0006_submission_shared','2017-01-22 07:40:04.440690'),(87,'submission','0007_auto_20151207_1645','2017-01-22 07:40:04.564199'),(88,'submission','0008_auto_20151208_2106','2017-01-22 07:40:04.703642');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission` (
  `id` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `result` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `code` longtext NOT NULL,
  `problem_id` int(11) NOT NULL,
  `info` longtext,
  `accepted_answer_time` int(11) DEFAULT NULL,
  `accepted_answer_info` longtext,
  `contest_id` int(11),
  `shared` tinyint(1) NOT NULL,
  `judge_end_time` bigint(20) DEFAULT NULL,
  `judge_start_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `submission_problem_id_76847b55_uniq` (`problem_id`),
  KEY `submission_user_id_3779a8c1_uniq` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
INSERT INTO `submission` VALUES ('10c667e30b03ff2ab3054a09e471e414',1,'2017-01-22 12:31:02.679289',6,2,'#define _CRT_SECURE_NO_WARNINGS\n#include <iostream>\n#include <cstdio>\n#include <cstring>\n#include <algorithm>\n#include <stack>\n#include <string>\n#include <set>\n#include <cmath>\n#include <map>\n#include <queue>\n#include <sstream>\n#include <vector>\n#include <iomanip>\n#define m0(a) memset(a,0,sizeof(a))\n#define mm(a) memset(a,0x3f,sizeof(a))\n#define m_1(a) memset(a,-1,sizeof(a))\n#define f(i,a,b) for(i = a;i<=b;i++)\n#define fi(i,a,b) for(i = a;i>=b;i--)\n#define lowbit(a) ((a)&(-a))\n#define FFR freopen(\"data.in\",\"r\",stdin)\n#define FFW freopen(\"data.out\",\"w\",stdout)\n#define INF 0x3f3f3f3f\ntypedef long long ll;\ntypedef long double ld;\nconst ld PI = acos(-1.0);\n\nusing namespace std;\n#define SIZE ( 50000+10)\n\nint divide(int dividend, int divisor) {\n	int ok = 0;\n	long long a = dividend;\n	long long b = divisor;\n	long long div = divisor;\n	if (a<0 && b<0) {\n		a = 0LL - a;\n		b = 0LL - b;\n		div = 0 - div;\n	}\n	else if (a<0 && b >= 0) {\n		ok = 1;\n		a = 0LL - a;\n	}\n	else if (a >= 0 && b<0) {\n		ok = 1;\n		b = 0LL - b;\n		div = 0 - div;\n	}\n\n	if (a<b) return 0;\n\n	long long c = 1;\n	while (a >= b) {\n		a -= b;\n		b += b;\n		c += c;\n	}\n	printf(\"dividend = %lld divisor = %lld c = %lld\\n\", a, b ,c);\n	if (ok == 0) {\n		long long ans = c - 1 + divide(a, div);\n		if (ans == 2147483648LL)\n		{\n			return ans - 1;\n		}\n		return ans;\n	}\n	else {\n		long long ans = 0 - ((c - 1) + divide(a, div));\n		return ans;\n	}\n}\n\nint main() {\n	//ios_base::sync_with_stdio(false); cin.tie(0);\n	int a, b;\n	while (cin>>a>>b)\n	{\n		printf(\"%d\\n\", divide(a, b));\n	}\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n	return 0;\n}',2,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"c269cb2acfd45419b473f489764a8dbd\", \"flag\": 0, \"result\": 6, \"memory\": 7290880, \"real_time\": 2, \"test_case\": 1}]',NULL,NULL,NULL,0,1485088264004,1485088262725),('1407cada7730c9caf0e92cb3ffed6bb1',1,'2017-06-01 17:43:18.982175',7,1,'#include<stdio.h>\n\nint main(){\n    int a,b;\n    while(~scanf(\"%d%d\",&a,&b)){\n    \n    	printf(\"%d\",a+b);\n    \n    }\n    \n    \n    \n	return 0;   \n}',1,'[Errno 111] Connection refused help: https://github.com/QingdaoU/OnlineJudge/wiki/FAQ',NULL,NULL,NULL,0,1496338999020,1496338998999),('20e1eb709d569580754c352c49d2eedd',1,'2017-01-22 08:25:20.599163',0,2,'#include<iostream>\n\nint main(){\n    long long a,b;\n    while(std::cin>>a>>b){\n    	std::cout<<a+b<<std::endl;\n    }\n    \n    \n	return 0;   \n}',1,'[{\"cpu_time\": 2, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"5b051fa8ca7eba01fe41218bf530361d\", \"flag\": 0, \"result\": 0, \"memory\": 7155712, \"real_time\": 8, \"test_case\": 1}]',2,NULL,NULL,0,1485073522154,1485073520641),('24f193892932f19671e5deff4f6f9ec6',1,'2017-02-21 08:21:35.516338',4,1,'#include<stdio.h>\n\nint main(){\n	int a,b;\n    while(~scanf(\"%d%d\",&a,&b))printf(\"%d\\n\",a+b)\n    \n    \n}',1,'/var/judger/run/24f193892932f19671e5deff4f6f9ec6/main.c: In function \'main\':\n/var/judger/run/24f193892932f19671e5deff4f6f9ec6/main.c:8:1: error: expected \';\' before \'}\' token\n }\n ^',NULL,NULL,NULL,0,1487665295843,1487665295549),('251a25aec3767c52f2c688dcf9f6c904',3,'2017-02-22 15:02:32.234257',6,2,'#include<stdio.h>\n#include<stdlib.h>\nint main()\n{\nint a,b;\nscanf(\"%d\",&a);\nscanf(\"%d\",&b);\nprintf(\"%dn\",a+b);\nreturn 0;\n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"fa7674a88b1ff1139a00caf969933a8c\", \"flag\": 0, \"result\": 6, \"memory\": 7417856, \"real_time\": 2, \"test_case\": 1}]',NULL,NULL,NULL,0,1487775752593,1487775752246),('25372fcbbe3b48ba6b2f70778626aa8a',3,'2017-02-22 15:03:35.005314',6,1,'#include<stdio.h>\n#include<stdlib.h>\nint main()\n{\nint a,b;\nscanf(\"%d\",&a);\nscanf(\"%d\",&b);\nprintf(\"%dn\",a+b);\nreturn 0;}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"fa7674a88b1ff1139a00caf969933a8c\", \"flag\": 0, \"result\": 6, \"memory\": 7421952, \"real_time\": 2, \"test_case\": 1}]',NULL,NULL,NULL,0,1487775815220,1487775815024),('2be7c35e509033cc91033c4000e1fbea',3,'2017-02-22 15:04:07.910474',6,1,'#include<stdio.h>\n#include<stdlib.h>\nint main()\n{\nint a,b;\nscanf(\"%d\",&a);\nscanf(\"%d\",&b);\nprintf(\"%d\",a+b);\nreturn 0;\n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"eccbc87e4b5ce2fe28308fd9f2a7baf3\", \"flag\": 0, \"result\": 6, \"memory\": 7421952, \"real_time\": 1, \"test_case\": 1}]',NULL,NULL,NULL,0,1487775848132,1487775847921),('355313852b0804c31d9d467b504d0975',1,'2017-06-01 17:45:56.239223',0,2,'#include<stdio.h>\n\nint main(){\n    long long a,b;\n    while(~scanf(\"%lld%lld\",&a,&b)){\n    \n    	printf(\"%lld\\n\",a+b);\n    \n    }\n    \n    \n    \n	return 0;   \n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"5b051fa8ca7eba01fe41218bf530361d\", \"flag\": 0, \"result\": 0, \"memory\": 7327744, \"real_time\": 1, \"test_case\": 1}]',1,NULL,NULL,0,1496339156441,1496339156248),('463b0b4d319657ea4aa661dbf144331d',1,'2017-01-22 08:25:39.334917',6,2,'#include<iostream>\n\nint main(){\n    int a,b;\n    while(std::cin>>a>>b){\n    	std::cout<<a+b<<std::endl;\n    }\n    \n    \n	return 0;   \n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"cefc76b02a28661bda6e3f4039dc758a\", \"flag\": 0, \"result\": 6, \"memory\": 7274496, \"real_time\": 2, \"test_case\": 1}]',NULL,NULL,NULL,0,1485073539754,1485073539372),('4d97a34a579fcf7ce6a50e129a9c3f1f',1,'2017-06-01 17:42:51.692321',7,1,'#include<stdio.h>\n\nint main(){\n    int a,b;\n    while(~scanf(\"%d%d\",&a,&b){\n    \n    	printf(\"%d\",a+b);\n    \n    }\n    \n    \n    \n	return 0;   \n}',1,'[Errno 111] Connection refused help: https://github.com/QingdaoU/OnlineJudge/wiki/FAQ',NULL,NULL,NULL,0,1496338971775,1496338971762),('67e749649161ef7ec5d5478f443221b3',3,'2017-02-22 15:02:24.978436',6,1,'#include<stdio.h>\n#include<stdlib.h>\nint main()\n{\nint a,b;\nscanf(\"%d\",&a);\nscanf(\"%d\",&b);\nprintf(\"%dn\",a+b);\nreturn 0;\n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"fa7674a88b1ff1139a00caf969933a8c\", \"flag\": 0, \"result\": 6, \"memory\": 7417856, \"real_time\": 2, \"test_case\": 1}]',NULL,NULL,NULL,0,1487775745449,1487775744990),('72d7f20e37b85408dbb42a2fd457c836',3,'2017-02-22 15:04:31.370329',6,1,'#include<stdio.h>\n\nint main()\n{\nint a,b;\nscanf(\"%d\",&a);\nscanf(\"%d\",&b);\nprintf(\"%d\",a+b);\nreturn 0;\n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"eccbc87e4b5ce2fe28308fd9f2a7baf3\", \"flag\": 0, \"result\": 6, \"memory\": 7421952, \"real_time\": 2, \"test_case\": 1}]',NULL,NULL,NULL,0,1487775871595,1487775871383),('76a67e5cc9bfa0643de1d1fac5d64af1',1,'2017-02-21 08:22:18.131861',6,1,'#include<stdio.h>\n\nint main(){\n	int a,b;\n    while(~scanf(\"%d%d\",&a,&b))printf(\"%d\\n\",a+b);\n    \n    return 0;\n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"740e36546378635b40110017f8d111a2\", \"flag\": 0, \"result\": 6, \"memory\": 7413760, \"real_time\": 3, \"test_case\": 1}]',NULL,NULL,NULL,0,1487665338450,1487665338157),('776b6b9bf97052aaf42ccdce77019fdb',1,'2017-06-01 17:45:48.053572',6,2,'#include<stdio.h>\n\nint main(){\n    long long a,b;\n    while(~scanf(\"%lld%lld\",&a,&b)){\n    \n    	printf(\"%lld\",a+b);\n    \n    }\n    \n    \n    \n	return 0;   \n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"e9e89353c3a9725087b31619598f3d26\", \"flag\": 0, \"result\": 6, \"memory\": 7270400, \"real_time\": 1, \"test_case\": 1}]',NULL,NULL,NULL,0,1496339148393,1496339148074),('78cb35b04624ad0f6df5bdd7873f8236',3,'2017-02-22 15:07:12.352427',6,2,'#include <stdio.h>\nint main()\n{\n    int a,b;\n    while(scanf(\"%d %d\",&a, &b) != EOF)\n        printf(\"%dn\",a+b);\n    return 0;\n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"e87eff9f4640ed6b6f83334001221be5\", \"flag\": 0, \"result\": 6, \"memory\": 7426048, \"real_time\": 2, \"test_case\": 1}]',NULL,NULL,NULL,0,1487776032580,1487776032363),('8783aa258b6af1670a7440b4d369592b',3,'2017-02-22 15:07:04.997597',6,1,'#include <stdio.h>\nint main()\n{\n    int a,b;\n    while(scanf(\"%d %d\",&a, &b) != EOF)\n        printf(\"%dn\",a+b);\n    return 0;\n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"e87eff9f4640ed6b6f83334001221be5\", \"flag\": 0, \"result\": 6, \"memory\": 7426048, \"real_time\": 2, \"test_case\": 1}]',NULL,NULL,NULL,0,1487776025245,1487776025041),('8c064b6c782f95cf16a705248e49dcf4',3,'2017-02-22 15:04:45.535956',6,1,'#include<stdio.h>\n\nint main(void)\n{\nint a,b;\nscanf(\"%d\",&a);\nscanf(\"%d\",&b);\nprintf(\"%d\",a+b);\n\n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"eccbc87e4b5ce2fe28308fd9f2a7baf3\", \"flag\": 0, \"result\": 6, \"memory\": 7426048, \"real_time\": 1, \"test_case\": 1}]',NULL,NULL,NULL,0,1487775885756,1487775885545),('9ba4b5620459abace03c120c64ff067e',1,'2017-02-21 08:23:03.414901',0,1,'#include<stdio.h>\n\nint main(){\n	long long a,b;\n    while(~scanf(\"%lld%lld\",&a,&b))printf(\"%lld\\n\",a+b);\n    \n    return 0;\n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"5b051fa8ca7eba01fe41218bf530361d\", \"flag\": 0, \"result\": 0, \"memory\": 7413760, \"real_time\": 1, \"test_case\": 1}]',1,NULL,NULL,0,1487665383638,1487665383442),('b6e19706838e4670a881eac65293df5a',1,'2017-06-01 17:45:22.227828',6,1,'#include<stdio.h>\n\nint main(){\n    int a,b;\n    while(~scanf(\"%d%d\",&a,&b)){\n    \n    	printf(\"%d\",a+b);\n    \n    }\n    \n    \n    \n	return 0;   \n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"183614b141b643cba196f5ede214e702\", \"flag\": 0, \"result\": 6, \"memory\": 7147520, \"real_time\": 1, \"test_case\": 1}]',NULL,NULL,NULL,0,1496339122649,1496339122253),('bbbf043e8767e688e2fcc1aaba158cbc',3,'2017-02-22 15:03:21.417830',4,1,'#include<stdio.h>\n#include<stdlib.h>\nint main()\n{\nint a,b;\nscanf(\"%d\",&a);\nscanf(\"%d\",&b);\nprintf(\"%dn\",a+b);\nreturn 0;',1,'/var/judger/run/bbbf043e8767e688e2fcc1aaba158cbc/main.c: In function \'main\':\n/var/judger/run/bbbf043e8767e688e2fcc1aaba158cbc/main.c:9:1: error: expected declaration or statement at end of input\n return 0;\n ^',NULL,NULL,NULL,0,1487775801471,1487775801429),('d6d265e85ccb38c8e226ea4c231e1172',1,'2017-02-21 08:21:45.323147',4,1,'#include<stdio.h>\n\nint main(){\n	int a,b;\n    while(~scanf(\"%d%d\",&a,&b))printf(\"%d\\n\",a+b)\n    \n    return 0;\n}',1,'/var/judger/run/d6d265e85ccb38c8e226ea4c231e1172/main.c: In function \'main\':\n/var/judger/run/d6d265e85ccb38c8e226ea4c231e1172/main.c:7:5: error: expected \';\' before \'return\'\n     return 0;\n     ^',NULL,NULL,NULL,0,1487665305385,1487665305347),('d6f933994a90f6fddd7debb7ba488dd1',1,'2017-01-22 12:31:49.928278',0,2,'#define _CRT_SECURE_NO_WARNINGS\n#include <iostream>\n#include <cstdio>\n#include <cstring>\n#include <algorithm>\n#include <stack>\n#include <string>\n#include <set>\n#include <cmath>\n#include <map>\n#include <queue>\n#include <sstream>\n#include <vector>\n#include <iomanip>\n#define m0(a) memset(a,0,sizeof(a))\n#define mm(a) memset(a,0x3f,sizeof(a))\n#define m_1(a) memset(a,-1,sizeof(a))\n#define f(i,a,b) for(i = a;i<=b;i++)\n#define fi(i,a,b) for(i = a;i>=b;i--)\n#define lowbit(a) ((a)&(-a))\n#define FFR freopen(\"data.in\",\"r\",stdin)\n#define FFW freopen(\"data.out\",\"w\",stdout)\n#define INF 0x3f3f3f3f\ntypedef long long ll;\ntypedef long double ld;\nconst ld PI = acos(-1.0);\n\nusing namespace std;\n#define SIZE ( 50000+10)\n\nint divide(int dividend, int divisor) {\n	int ok = 0;\n	long long a = dividend;\n	long long b = divisor;\n	long long div = divisor;\n	if (a<0 && b<0) {\n		a = 0LL - a;\n		b = 0LL - b;\n		div = 0 - div;\n	}\n	else if (a<0 && b >= 0) {\n		ok = 1;\n		a = 0LL - a;\n	}\n	else if (a >= 0 && b<0) {\n		ok = 1;\n		b = 0LL - b;\n		div = 0 - div;\n	}\n\n	if (a<b) return 0;\n\n	long long c = 1;\n	while (a >= b) {\n		a -= b;\n		b += b;\n		c += c;\n	}\n	//printf(\"dividend = %lld divisor = %lld c = %lld\\n\", a, b ,c);\n	if (ok == 0) {\n		long long ans = c - 1 + divide(a, div);\n		if (ans == 2147483648LL)\n		{\n			return ans - 1;\n		}\n		return ans;\n	}\n	else {\n		long long ans = 0 - ((c - 1) + divide(a, div));\n		return ans;\n	}\n}\n\nint main() {\n	//ios_base::sync_with_stdio(false); cin.tie(0);\n	int a, b;\n	while (cin>>a>>b)\n	{\n		printf(\"%d\\n\", divide(a, b));\n	}\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n	return 0;\n}',2,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"7972ccffe9174b14968dddf17e947649\", \"flag\": 0, \"result\": 0, \"memory\": 7307264, \"real_time\": 2, \"test_case\": 1}]',1,NULL,NULL,0,1485088310713,1485088309947),('d7088f26172d033262e67c5104b4458f',1,'2017-06-02 14:02:07.117612',4,2,'#include<ctring>\n#include<cstdio>\n#include<iostream>\n\nusing namespace std;\n\nint main(){\n   	int a,b;\n    cin>>a>>b;\n    cout<<a/b;\n    \n    \n    \n}',2,'/var/judger/run/d7088f26172d033262e67c5104b4458f/main.cpp:1:17: fatal error: ctring: No such file or directory\n #include<ctring>\n                 ^\ncompilation terminated.',NULL,NULL,NULL,0,1496412127238,1496412127129),('e02478a63985e534e3a8d98a01cef518',1,'2017-06-02 15:22:07.857432',6,1,'#include<stdio.h>\n\nint main(){\n    int a,b;\n    while(~scanf(\"%d%d\",&a,&b)){\n    \n    	printf(\"%d\",a+b);\n    \n    }\n    \n    \n    \n	return 0;   \n}',1,'[{\"cpu_time\": 1, \"exit_status\": 0, \"signal\": 0, \"output_md5\": \"183614b141b643cba196f5ede214e702\", \"flag\": 0, \"result\": 6, \"memory\": 7327744, \"real_time\": 10, \"test_case\": 1}]',NULL,NULL,NULL,0,1496416928205,1496416927866),('f7e5cbae110e2d283592888a35cd092e',1,'2017-01-22 12:32:21.637974',2,2,'#define _CRT_SECURE_NO_WARNINGS\n#include <iostream>\n#include <cstdio>\n#include <cstring>\n#include <algorithm>\n#include <stack>\n#include <string>\n#include <set>\n#include <cmath>\n#include <map>\n#include <queue>\n#include <sstream>\n#include <vector>\n#include <iomanip>\n#define m0(a) memset(a,0,sizeof(a))\n#define mm(a) memset(a,0x3f,sizeof(a))\n#define m_1(a) memset(a,-1,sizeof(a))\n#define f(i,a,b) for(i = a;i<=b;i++)\n#define fi(i,a,b) for(i = a;i>=b;i--)\n#define lowbit(a) ((a)&(-a))\n#define FFR freopen(\"data.in\",\"r\",stdin)\n#define FFW freopen(\"data.out\",\"w\",stdout)\n#define INF 0x3f3f3f3f\ntypedef long long ll;\ntypedef long double ld;\nconst ld PI = acos(-1.0);\n\nusing namespace std;\n#define SIZE ( 50000+10)\n\nint divide(int dividend, int divisor) {\n	int ok = 0;\n	long long a = dividend;\n	long long b = divisor;\n	long long div = divisor;\n	if (a<0 && b<0) {\n		a = 0LL - a;\n		b = 0LL - b;\n		div = 0 - div;\n	}\n	else if (a<0 && b >= 0) {\n		ok = 1;\n		a = 0LL - a;\n	}\n	else if (a >= 0 && b<0) {\n		ok = 1;\n		b = 0LL - b;\n		div = 0 - div;\n	}\n\n	if (a<b) return 0;\n\n	long long c = 1;\n	while (a >= b) {\n		a -= b;\n		b += b;\n		c += c;\n	}\n	//printf(\"dividend = %lld divisor = %lld c = %lld\\n\", a, b ,c);\n	if (ok == 0) {\n		long long ans = c - 1 + divide(a, div);\n		if (ans == 2147483648LL)\n		{\n			return ans - 1;\n		}\n		return ans;\n	}\n	else {\n		long long ans = 0 - ((c - 1) + divide(a, div));\n		return ans;\n	}\n}\n\nint main() {\n	//ios_base::sync_with_stdio(false); cin.tie(0);\n	int a, b;\n	while (cin>>a>>b)\n	{\n		printf(\"%d\\n\", divide(a, b));\n	}\n\n	while(1);\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n	return 0;\n}',2,'[{\"cpu_time\": 1004, \"exit_status\": 0, \"signal\": 26, \"flag\": 1, \"result\": 2, \"memory\": 7307264, \"real_time\": 1024, \"test_case\": 1}]',NULL,NULL,NULL,0,1485088343328,1485088341646);
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-03  0:25:26