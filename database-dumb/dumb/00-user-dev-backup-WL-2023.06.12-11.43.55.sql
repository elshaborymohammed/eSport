-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 10.11.4.11    Database: user-dev
-- ------------------------------------------------------
-- Server version	8.0.32-u3-cloud

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
-- Current Database: `user-dev`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `user-dev` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `user-dev`;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOG` (
  `my_row_id` bigint unsigned NOT NULL AUTO_INCREMENT /*!80023 INVISIBLE */,
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`my_row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` (`my_row_id`, `ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES (1,'raw','includeAll','db/changelog/mysql/changes/V1_users_ddl.sql','2023-02-07 15:38:58',1,'EXECUTED','8:6dbf39c8752d029cc049ac1d647e3243','sql','',NULL,'4.3.1',NULL,NULL,'5784337967'),(2,'raw','includeAll','db/changelog/mysql/changes/V1_users_dml.sql','2023-02-07 15:38:58',2,'EXECUTED','8:eb439ed395eb23d112738c8a9818817d','sql','',NULL,'4.3.1',NULL,NULL,'5784337967'),(3,'raw','includeAll','db/changelog/mysql/changes/V1_users_auth_dml.sql','2023-02-07 15:38:58',3,'EXECUTED','8:0b49015ed43d59102764a8895ad2f0d7','sql','',NULL,'4.3.1',NULL,NULL,'5784337967'),(4,'raw','includeAll','db/changelog/mysql/changes/V1_remove_deleteUser_auth.sql','2023-02-12 12:31:18',4,'EXECUTED','8:95af3b87231f64ddfedd05d8b9b5714d','sql','',NULL,'4.3.1',NULL,NULL,'6205078837'),(5,'raw','includeAll','db/changelog/mysql/changes/V2_remove_deleteUser_auth.sql','2023-02-12 15:01:20',5,'EXECUTED','8:af9081997dd573e96197e97dd6a7d789','sql','',NULL,'4.3.1',NULL,NULL,'6214080124'),(6,'raw','includeAll','db/changelog/mysql/changes/V1_update_profiles.sql','2023-02-20 13:33:07',6,'EXECUTED','8:4a313fb012fa41f9e6cb05363bf913ec','sql','',NULL,'4.3.1',NULL,NULL,'6899987189'),(7,'raw','includeAll','db/changelog/mysql/changes/v1_team_profiles_dml.sql','2023-02-26 07:06:37',7,'EXECUTED','8:f15a6570b81e2ef2f0d860a87a242da3','sql','',NULL,'4.3.1',NULL,NULL,'7395197124'),(8,'raw','includeAll','db/changelog/mysql/changes/v1_profile_types_signup_ddl.sql','2023-02-26 14:36:38',8,'EXECUTED','8:0f95624bccd128410ac2bee49356452c','sql','',NULL,'4.3.1',NULL,NULL,'7422198213'),(9,'raw','includeAll','db/changelog/mysql/changes/v1_rollback_created_profiles.sql','2023-03-06 21:16:35',9,'EXECUTED','8:d14c44c9e7ceab4c378d031769bd763f','sql','',NULL,'4.3.1',NULL,NULL,'8137395128'),(10,'raw','includeAll','db/changelog/mysql/changes/v1_user_type_new_profiles.sql','2023-03-07 09:22:37',10,'EXECUTED','8:87aa263eee85fbfd2b4d64e140595f79','sql','',NULL,'4.3.1',NULL,NULL,'8180956992'),(11,'raw','includeAll','db/changelog/mysql/changes/V1-add-team-auths.sql','2023-03-11 14:04:37',11,'EXECUTED','8:cac17c09f220d238e65fee4dc8d2ba95','sql','',NULL,'4.3.1',NULL,NULL,'8543477269'),(12,'raw','includeAll','db/changelog/mysql/changes/v1_profile_invitations.sql','2023-03-12 06:58:37',12,'EXECUTED','8:3d9996fe6c22da970d3bf0dfa9076418','sql','',NULL,'4.3.1',NULL,NULL,'8604316914'),(13,'raw','includeAll','db/changelog/mysql/changes/v1_update_isInvitationsEnabled.sql','2023-03-12 09:28:39',13,'EXECUTED','8:9d1b68390d953046d41529f65389519e','sql','',NULL,'4.3.1',NULL,NULL,'8613319760'),(14,'raw','includeAll','db/changelog/mysql/changes/V1-edit-team-auths.sql','2023-03-12 10:34:36',14,'EXECUTED','8:22ec3e48b95400fe18bd903a8411813f','sql','',NULL,'4.3.1',NULL,NULL,'8617276884'),(15,'raw','includeAll','db/changelog/mysql/changes/v1_autoDisbale_isInvitationsEnabled.sql','2023-03-13 09:52:37',15,'EXECUTED','8:28a5ac7e88db7818763e7357a9be4bfc','sql','',NULL,'4.3.1',NULL,NULL,'8701157783'),(16,'raw','includeAll','db/changelog/mysql/changes/v1_profile_concurrent_teams.sql','2023-03-14 14:19:38',16,'EXECUTED','8:02e4823aca5a78c6861fecb1e1baa797','sql','',NULL,'4.3.1',NULL,NULL,'8803578181'),(17,'raw','includeAll','db/changelog/mysql/changes/V2_profile_concurrent_teams_ddl.sql','2023-03-18 11:09:58',17,'EXECUTED','8:96c959b694bec1bef4b7f60e395b4221','sql','',NULL,'4.3.1',NULL,NULL,'9137798734'),(18,'raw','includeAll','db/changelog/mysql/changes/V1-add-clubs-auths.sql','2023-03-19 10:28:00',18,'EXECUTED','8:beeb2cd535120d8f425f34e1c036cc6b','sql','',NULL,'4.3.1',NULL,NULL,'9221680209'),(19,'raw','includeAll','db/changelog/mysql/changes/V2_profile_types_ddl.sql','2023-03-21 13:26:36',19,'EXECUTED','8:21a4103590607225403703b356b21987','sql','',NULL,'4.3.1',NULL,NULL,'9405196000'),(20,'raw','includeAll','db/changelog/mysql/changes/V1_profile_ddl.sql','2023-03-21 13:26:36',20,'EXECUTED','8:a944668103e896689f38c927c4c22b3c','sql','',NULL,'4.3.1',NULL,NULL,'9405196000'),(21,'raw','includeAll','db/changelog/mysql/changes/v1_club_owner_disable_team.sql','2023-03-21 21:35:37',21,'EXECUTED','8:2cf507962298fd8d65fc9e32019942cd','sql','',NULL,'4.3.1',NULL,NULL,'9434537305'),(22,'raw','includeAll','db/changelog/mysql/changes/V2-add-clubs-auths.sql','2023-03-27 11:26:12',22,'EXECUTED','8:26074c4b967620cc9ebeaee05ac1de88','sql','',NULL,'4.3.1',NULL,NULL,'9916371903'),(23,'raw','includeAll','db/changelog/mysql/changes/V2-add-teams-auths.sql','2023-03-28 09:32:09',23,'EXECUTED','8:7f0e4639b10cc9e09091a56d5945b546','sql','',NULL,'4.3.1',NULL,NULL,'9995929326'),(24,'raw','includeAll','db/changelog/mysql/changes/V2-edit-teams-auths.sql','2023-03-28 16:14:09',24,'EXECUTED','8:895bcd8f2dbe6d3ed0f7e88ae1de36e6','sql','',NULL,'4.3.1',NULL,NULL,'0020049309'),(25,'raw','includeAll','db/changelog/mysql/changes/V3-add-remainder-settings.sql','2023-03-30 23:02:10',25,'EXECUTED','8:ee8d199fcac86c72194b568c5fc5a651','sql','',NULL,'4.3.1',NULL,NULL,'0217330565'),(26,'raw','includeAll','db/changelog/mysql/changes/V1-update-request-data.sql','2023-04-03 11:35:13',26,'EXECUTED','8:e2bbd934e57a89cc4ff657e483eb71ea','sql','',NULL,'4.3.1',NULL,NULL,'0521713406'),(27,'raw','includeAll','db/changelog/mysql/changes/V2-update-request-data.sql','2023-04-03 12:17:13',27,'EXECUTED','8:f3a37b9298c7e9fe5c1754a1f7e4e507','sql','',NULL,'4.3.1',NULL,NULL,'0524233508'),(28,'raw','includeAll','db/changelog/mysql/changes/V4-update_lock_reason.sql','2023-04-10 08:05:13',28,'EXECUTED','8:8ed1a61b7882f9b6e929b9d68c9162f6','sql','',NULL,'4.3.1',NULL,NULL,'1113913620'),(29,'raw','includeAll','db/changelog/mysql/changes/V5_is_invitations_enabled_default_false.sql','2023-04-11 10:08:13',29,'EXECUTED','8:f64e8e59d3b86f3ca25b8576113c0976','sql','',NULL,'4.3.1',NULL,NULL,'1207693237'),(30,'raw','includeAll','db/changelog/mysql/changes/V1-club-admin-profile.sql','2023-04-11 11:32:13',30,'EXECUTED','8:71c4d385e046a61bfa52b932d96a1251','sql','',NULL,'4.3.1',NULL,NULL,'1212733824');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authority_level`
--

DROP TABLE IF EXISTS `authority_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authority_level` (
  `id` bigint NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority_level`
--

LOCK TABLES `authority_level` WRITE;
/*!40000 ALTER TABLE `authority_level` DISABLE KEYS */;
INSERT INTO `authority_level` VALUES (1,'Get By Organization'),(2,'Get By Levels'),(3,'Get By My Level');
/*!40000 ALTER TABLE `authority_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
  `system_id` varchar(255) NOT NULL,
  `owner_id` int NOT NULL,
  `club_name_en` varchar(255) NOT NULL,
  `club_name_ar` varchar(255) NOT NULL,
  `club_logo` varchar(255) NOT NULL,
  `cr_number` varchar(255) NOT NULL,
  `cr_file` varchar(255) NOT NULL,
  `club_iban` varchar(255) NOT NULL,
  `club_iban_file` varchar(255) NOT NULL,
  `players_number` int NOT NULL,
  `admins_number` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`system_id`),
  KEY `club_owner_fk` (`owner_id`),
  CONSTRAINT `club_owner_fk` FOREIGN KEY (`owner_id`) REFERENCES `user_attributes_mapping` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_clients`
--

DROP TABLE IF EXISTS `domain_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain_clients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `realm_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_clients`
--

LOCK TABLES `domain_clients` WRITE;
/*!40000 ALTER TABLE `domain_clients` DISABLE KEYS */;
INSERT INTO `domain_clients` VALUES (1,'WEB','1_STCS_CUST','cust_esports.com'),(2,'MOBILE','1_STCS_CUST','cust_esports.com');
/*!40000 ALTER TABLE `domain_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_mapping`
--

DROP TABLE IF EXISTS `domain_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain_mapping` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `realm_id` varchar(255) DEFAULT NULL,
  `reassigned_admin_id` varchar(255) DEFAULT NULL,
  `user_admin_id` varchar(255) DEFAULT NULL,
  `user_assigned` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_mapping`
--

LOCK TABLES `domain_mapping` WRITE;
/*!40000 ALTER TABLE `domain_mapping` DISABLE KEYS */;
INSERT INTO `domain_mapping` VALUES (1,'1_STCS_CUST','esports.com',_binary '','cust_esports.com',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `domain_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcs_users_preferences`
--

DROP TABLE IF EXISTS `fcs_users_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fcs_users_preferences` (
  `user_system_id` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `image_bg` varchar(255) DEFAULT NULL,
  `image_logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_system_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcs_users_preferences`
--

LOCK TABLES `fcs_users_preferences` WRITE;
/*!40000 ALTER TABLE `fcs_users_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_users_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcs_users_preferences_settings`
--

DROP TABLE IF EXISTS `fcs_users_preferences_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fcs_users_preferences_settings` (
  `user_system_id` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`user_system_id`,`name`),
  CONSTRAINT `FKgb76srl55umft21bd0r7110n7` FOREIGN KEY (`user_system_id`) REFERENCES `fcs_users_preferences` (`user_system_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcs_users_preferences_settings`
--

LOCK TABLES `fcs_users_preferences_settings` WRITE;
/*!40000 ALTER TABLE `fcs_users_preferences_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_users_preferences_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `authority_code_by_lvls` varchar(255) DEFAULT NULL,
  `authority_code_by_my_lvl` varchar(255) DEFAULT NULL,
  `authority_code_by_org` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_arabic` varchar(255) DEFAULT NULL,
  `mandatory_feature_id` bigint DEFAULT NULL,
  `module_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbob6aaw5q3byyoi6v2xkp1xt5` (`mandatory_feature_id`),
  KEY `FKcw91wtdoys0dww14vq67m13jc` (`module_id`),
  CONSTRAINT `FKbob6aaw5q3byyoi6v2xkp1xt5` FOREIGN KEY (`mandatory_feature_id`) REFERENCES `feature` (`id`),
  CONSTRAINT `FKcw91wtdoys0dww14vq67m13jc` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature`
--

LOCK TABLES `feature` WRITE;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
INSERT INTO `feature` VALUES (9,'C_U_A_LS','C_U_A_L','C_U_A_O','Add user','اضافه المستخدم',NULL,3),(11,'C_U_E_LS','C_U_E_L','C_U_E_O','Edit User','تعديل المستخدم',NULL,3),(12,'C_U_V_LS','C_U_V_L','C_U_V_O','List users','قائمه المستخدمين',NULL,3),(17,'C_UP_A_LS','C_UP_A_L','C_UP_A_O','Add profile','اضافه الملف',NULL,4),(18,'C_UP_D_LS','C_UP_D_L','C_UP_D_O','Delete profile','حذف الملف',NULL,4),(19,'C_UP_E_LS','C_UP_E_L','C_UP_E_O','Edit Profile','تعديل الملف',NULL,4),(20,'C_UP_V_LS','C_UP_V_L','C_UP_V_O','List profiles','قائمه الملف',NULL,4),(52,'C_U_BL_LS','C_U_BL_L','C_U_BL_O','Block User','حظر المستخدم',NULL,3),(53,'C_U_UBL_LS','C_U_UBL_L','C_U_UBL_O','Unblock User','تفعيل المستخدم',NULL,3),(54,'C_U_EXP_LS','C_U_EXP_L','C_U_EXP_O','Export User','تصدير المستخدم',NULL,3),(55,'C_U_RSM_LS','C_U_RSM_L','C_U_RSM_O','Resend Welcome Mail',' اعاده ارسال رساله الترحيب ',NULL,3),(56,NULL,NULL,'C_O_E_O','Edit organization level.','تعديل مستوى .',NULL,6),(57,NULL,NULL,'C_O_V_O','View organization level.','عرض مستوى .',NULL,6),(58,NULL,NULL,'C_RS_E_O','Club license requests','طلبات رخص الاندية',NULL,7),(59,NULL,NULL,'C_R_RAS_O','Reassign','اعادة تعيين ',NULL,5),(60,NULL,NULL,'C_R_SD_O','Submit Decision',' مراجعة الطلب ',NULL,5),(61,NULL,NULL,'C_R_VAS_O','List user Requests',' عرض طلبات المستخدم ',NULL,5),(62,NULL,NULL,'C_R_VAL_O','List All Requests',' عرض كل الطلبات ',NULL,5),(63,NULL,NULL,'C_T_A_O','Add a team',' اضافه فريق',NULL,8),(64,NULL,NULL,'C_T_E_O','Edit a team','تعديل فريق',NULL,8),(65,NULL,NULL,'C_T_V_O','All teams list','قائمة جميع الفرق',NULL,8),(67,NULL,NULL,'C_TC_E_O','Teams & club management','إدارة الأندية والفرق',NULL,7),(68,NULL,NULL,'C_CL_V_O','All clubs list','قائمة جميع الأندية',NULL,10),(69,NULL,NULL,'C_CL_DS_O','Discover clubs','استكشف الأندية',NULL,10),(70,NULL,NULL,'C_CL_VMY_O','My Club info','معلومات ناديك',NULL,10),(71,NULL,NULL,'C_CL_EMY_O','Edit my club info','تحرير معلومات النادي',NULL,10),(72,NULL,NULL,'C_CL_AS_O','Assign admins','تعيين المسؤولين',NULL,10),(73,NULL,NULL,'C_CL_CAL_O','Call for members','دعوة الأعضاء',NULL,10),(74,NULL,NULL,'C_CL_EAL_O','Edit all clubs info','تعديل معلومات كل الأندية',NULL,10),(75,NULL,NULL,'C_CL_MP_O','Manage clubs profiles','إدارة ملفات تعريف الأندية',NULL,10),(76,NULL,NULL,'C_CL_BL_O','Block clubs','حظر الأندية',NULL,10),(77,NULL,NULL,'C_CL_UBL_O','Unblock clubs','إلغاء الحظر على الأندية',NULL,10),(78,NULL,NULL,'C_T_EAL_O','Edit All teams','تعديل كل الفرق',NULL,8),(79,NULL,NULL,'C_T_ARL_O','Archive all teams','أرشفة كل الفرق',NULL,8),(80,NULL,NULL,'C_T_UAL_O','unarchive all teams','إلغاء أرشفة جميع الفرق',NULL,8),(81,NULL,NULL,'C_T_UAR_O','Unarchive a team','إلغاء أرشفة فريق',NULL,8),(82,NULL,NULL,'C_T_AR_O','Archive a team','أرشفة فريق',NULL,8),(83,NULL,NULL,'C_T_MTA_O','My Teams & archived teams','الفرق الخاصة بي والفرق في الأرشيف',NULL,8),(84,NULL,NULL,'C_T_DS_O','Discover teams','استكشف الفرق',NULL,8),(85,NULL,NULL,'C_ME_DS_O','Discover members','تعرف على الأعضاء',NULL,11),(86,NULL,NULL,'C_ME_VAL_O','All members list','قائمة جميع الأعضاء',NULL,11),(87,NULL,NULL,'C_ME_BL_O','Block a member','حظر عضو',NULL,11),(88,NULL,NULL,'C_ME_UNB_O','Unblock a member','إلغاء حظر العضو',NULL,11),(89,NULL,NULL,'C_ME_EAP_O','Edit all members profiles','تعديل ملفات تعريف كل الأعضاء',NULL,11),(90,NULL,NULL,'C_NR_E_O','Notifications & reminders','الاشعارات والتنبيهات',NULL,7),(92,NULL,NULL,'C_CRQ_E_O','Club data update requests','تحديث بيانات النادى',NULL,7);
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_authority`
--

DROP TABLE IF EXISTS `feature_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_authority` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `authority_code` varchar(255) DEFAULT NULL,
  `authority_level_id` bigint DEFAULT NULL,
  `feature_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK30la140s80a7mh5cyg5fpkunw` (`authority_level_id`),
  KEY `FKixtxo8ilj1g3by1n5arp8420` (`feature_id`),
  CONSTRAINT `FK30la140s80a7mh5cyg5fpkunw` FOREIGN KEY (`authority_level_id`) REFERENCES `authority_level` (`id`),
  CONSTRAINT `FKixtxo8ilj1g3by1n5arp8420` FOREIGN KEY (`feature_id`) REFERENCES `feature` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_authority`
--

LOCK TABLES `feature_authority` WRITE;
/*!40000 ALTER TABLE `feature_authority` DISABLE KEYS */;
INSERT INTO `feature_authority` VALUES (1,'C_U_A_O',1,9),(3,'C_U_E_O',1,11),(4,'C_U_V_O',1,12),(5,'C_U_A_L',3,9),(7,'C_U_E_L',3,11),(8,'C_U_V_L',3,12),(9,'C_U_A_LS',2,9),(11,'C_U_E_LS',2,11),(12,'C_U_V_LS',2,12),(13,'C_UP_A_O',1,17),(14,'C_UP_D_O',1,18),(15,'C_UP_E_O',1,19),(16,'C_UP_V_O',1,20),(17,'C_UP_A_L',3,17),(18,'C_UP_D_L',3,18),(19,'C_UP_E_L',3,19),(20,'C_UP_V_L',3,20),(21,'C_UP_A_LS',2,17),(22,'C_UP_D_LS',2,18),(23,'C_UP_E_LS',2,19),(24,'C_UP_V_LS',2,20),(28,'C_U_BL_O',1,52),(29,'C_U_BL_LS',2,52),(30,'C_U_BL_L',3,52),(31,'C_U_UBL_O',1,53),(32,'C_U_UBL_LS',2,53),(33,'C_U_UBL_L',3,53),(34,'C_U_EXP_O',1,54),(35,'C_U_EXP_LS',2,54),(36,'C_U_EXP_L',3,54),(37,'C_U_RSM_O',1,55),(38,'C_U_RSM_LS',2,55),(39,'C_U_RSM_L',3,55),(40,'C_O_E_O',1,56),(41,'C_O_V_O',1,57),(42,'C_R_VAL_O',1,62),(43,'C_R_VAS_O',1,61),(44,'C_R_SD_O',1,60),(45,'C_R_RAS_O',1,59),(46,'C_RS_E_O',1,58),(47,'C_T_A_O',1,63),(48,'C_T_E_O',1,64),(49,'C_T_V_O',1,65),(51,'C_TC_E_O',1,67),(52,'C_CL_V_O',1,68),(53,'C_CL_DS_O',1,69),(54,'C_CL_VMY_O',1,70),(55,'C_CL_EMY_O',1,71),(56,'C_CL_AS_O',1,72),(57,'C_CL_CAL_O',1,73),(58,'C_CL_EAL_O',1,74),(59,'C_CL_MP_O',1,75),(60,'C_CL_BL_O',1,76),(61,'C_CL_UBL_O',1,77),(62,'C_T_EAL_O',1,78),(63,'C_T_ARL_O',1,79),(64,'C_T_UAL_O',1,80),(65,'C_T_UAR_O',1,81),(66,'C_T_AR_O',1,82),(67,'C_T_MTA_O',1,83),(68,'C_T_DS_O',1,84),(69,'C_ME_DS_O',1,85),(70,'C_ME_VAL_O',1,86),(71,'C_ME_BL_O',1,87),(72,'C_ME_UNB_O',1,88),(73,'C_ME_EAP_O',1,89),(74,'C_NR_E_O',1,90),(76,'C_CRQ_E_O',1,92);
/*!40000 ALTER TABLE `feature_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `my_row_id` bigint unsigned NOT NULL AUTO_INCREMENT /*!80023 INVISIBLE */,
  `next_val` bigint DEFAULT NULL,
  PRIMARY KEY (`my_row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`my_row_id`, `next_val`) VALUES (1,228);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_arabic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (3,NULL,'User management','إدارة المستخدمين'),(4,NULL,'Profile management','إدارة الملفات'),(5,NULL,'Request Management','إدارة الطلبات'),(6,NULL,'Organization Management','إدارة المؤسسة'),(7,NULL,'Settings Management','إدراة الإعدادات'),(8,NULL,'Team Management','إدارة الفرق'),(10,NULL,'Club Management','إدارة الانديه'),(11,NULL,'Member Management','إدارة الاعضاء');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp` (
  `id` binary(255) NOT NULL,
  `archive` bit(1) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `modification_date` datetime(6) NOT NULL,
  `ovalue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_types`
--

DROP TABLE IF EXISTS `profile_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `sign_up` bit(1) DEFAULT NULL,
  `created` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_types`
--

LOCK TABLES `profile_types` WRITE;
/*!40000 ALTER TABLE `profile_types` DISABLE KEYS */;
INSERT INTO `profile_types` VALUES (1,'ADMIN','Admin','ادمن',_binary '\0',_binary ''),(2,'CLUB_OWNER','Club Owner','مالك النادى',_binary '',_binary ''),(3,'PLAYER','Player','لاعب',_binary '',_binary ''),(4,'COACH','Coach','مدرب',_binary '',_binary ''),(5,'REFEREE','Referee','حكم',_binary '',_binary ''),(6,'INTERNAL','Internal','داخلى',_binary '\0',_binary ''),(7,'TEAM_MANAGER','Team Manager','مدير الفريق',_binary '',_binary ''),(8,'CLUB_ADMIN','Club Admin','أدمن النادى',_binary '',_binary ''),(9,'ANALYST','Analyst','محلل',_binary '',_binary ''),(10,'CASTER','Caster','معلق',_binary '',_binary ''),(11,'HOST','Host','مضيف',_binary '',_binary ''),(12,'MEDIA_OUTLET','Media Outlet','جهة إعلامية',_binary '',_binary ''),(13,'VIDEO_EDITOR','Video Editor','محرر فيديو',_binary '',_binary ''),(14,'GRAPHIC_DESIGNER','Graphic Designer','مصمم جرافيك',_binary '',_binary ''),(15,'STREAMER','Streamer','ستريمر',_binary '',_binary ''),(16,'CONTENT_CREATOR','Content Creator','صانع محتوى',_binary '',_binary ''),(17,'GAME_DEVELOPER','Game Developer','مصمم العاب',_binary '',_binary ''),(18,'CLUB_OWNER_PENDING','Club Owner Pending Approval','مالك نادى قيد الموافقة',_binary '\0',_binary '');
/*!40000 ALTER TABLE `profile_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) DEFAULT NULL,
  `is_reserved` bit(1) DEFAULT NULL,
  `level_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `sign_up` bit(1) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `is_invitations_enabled` bit(1),
  `concurrent_teams` int DEFAULT '5',
  `concurrent_clubs` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ge5p24v1ta64efxem0khkhvry` (`profile_id`),
  KEY `FK73ljbul2w812ljnpb89btmdsh` (`type_id`),
  CONSTRAINT `FK73ljbul2w812ljnpb89btmdsh` FOREIGN KEY (`type_id`) REFERENCES `profile_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (4,'1_STCS_CUST',_binary '','e588b002-5510-4962-9c7b-eeb607664562','Club Owner Pending Approval','مالك نادى قيد الموافقة','c11f615a-e1ee-4326-a453-ae56688dc504',_binary '\0',18,_binary '\0',99,990),(5,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','Player','لاعب','8f4e08c5-f37e-4702-8034-328fd60fd116',_binary '',3,_binary '',10,2),(6,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','Referee','حكم','c58b371e-4f43-46aa-8966-33ef5a606601',_binary '',5,_binary '',1,1),(7,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','Coach','مدرب','ca1ed388-41b3-4f5c-b95d-1b3ebbe3b59e',_binary '\0',4,_binary '',5,1),(8,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','Club Owner test change name','مالك نادى','f58be026-5b78-4b3f-b906-8f575ff7d4d9',_binary '',2,_binary '\0',99,990),(9,NULL,_binary '\0',NULL,'esports.com_ADMIN',NULL,'85073679-14aa-459c-8e18-ace21aed3774',_binary '\0',NULL,_binary '\0',5,1),(16,'1_STCS_CUST',_binary '\0','45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4','test','شسيبشبيب','73055dde-39bc-45ce-be15-bf88b6cdcac9',_binary '\0',6,_binary '',5,1),(48,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','riadh profile','ملف رياض','afaf4496-9eeb-4088-87b7-7e5052c858a1',_binary '\0',6,_binary '\0',5,1),(80,'1_STCS_CUST',_binary '\0',NULL,'Team Manager','مدير الفريق','88cb7b8e-6aae-4dde-bc04-ce4b09764694',_binary '',7,_binary '',5,1),(81,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','Club Admin','أدمن النادى','480c96e0-d6f1-4799-9c0c-6cf228fe0171',_binary '',8,_binary '',5,1),(82,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','Analyst','محلل','8f5bb22a-a700-4f44-80e9-0fe3af24c4b6',_binary '',9,_binary '',5,1),(83,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','Caster','معلق','aa9b4ad9-af7c-482f-9cff-9d7009ca3ef2',_binary '',10,_binary '',5,1),(84,'1_STCS_CUST',_binary '\0',NULL,'Host','مضيف','f67a2cd5-d97d-4625-9efc-929dd1501454',_binary '',11,_binary '',5,1),(85,'1_STCS_CUST',_binary '\0',NULL,'Media Outlet','جهة إعلامية','af93ae32-2850-4ea2-8c8b-0690ebd1576a',_binary '',12,_binary '',5,1),(86,'1_STCS_CUST',_binary '\0',NULL,'Video Editor','محرر فيديو','09f8e8b3-949e-4292-bec8-e27b23c938b6',_binary '',13,_binary '',5,1),(87,'1_STCS_CUST',_binary '\0','45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4','Graphic Designer','مصمم جرافيك','be9970ae-cce8-4f00-a017-6cd383ee5bdf',_binary '',14,_binary '',5,1),(88,'1_STCS_CUST',_binary '\0',NULL,'Streamer','ستريمر','6296df53-20d9-4883-bfe3-bd27f18ec626',_binary '',15,_binary '',5,1),(89,'1_STCS_CUST',_binary '\0','45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4','Content Creator','صانع محتوى','e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',_binary '',16,_binary '\0',5,1),(90,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','Game Developer','مصمم العاب','165cb44d-052d-4ebc-adcd-44d41e2e1df6',_binary '',17,_binary '',5,11),(93,'1_STCS_CUST',_binary '\0','45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4','all','كل حاجه','aae74256-4b00-4fce-a124-7e5049f8273f',_binary '\0',6,NULL,5,1),(94,'1_STCS_CUST',_binary '\0','45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4','try','محاوله','db55498b-be8c-4f0c-9fbc-6db282359147',_binary '\0',6,_binary '\0',5,1),(106,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','mom','موم','f17d14ce-0b00-4d55-aaf7-fcf0dc230dee',_binary '\0',6,_binary '\0',5,1),(108,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','test team','اختبار','348ca4cd-1867-41e4-a601-0dd7f1659681',_binary '\0',6,_binary '\0',5,1),(109,'1_STCS_CUST',_binary '\0','45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4','Mahhshsh','نينيسبشس','01a2b680-cc50-4dcd-b1df-708a24ce5ff2',_binary '\0',6,_binary '\0',5,1),(110,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','hkjfhdkjhsd','سيشنشستبش','814f8e5a-b379-458f-bde8-d2d91f3edc87',_binary '\0',6,_binary '\0',5,1),(111,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','gdfgsdf','يبلسيل','2a1e3fc2-80b5-4526-aba8-45c2d85a7b4f',_binary '\0',6,_binary '\0',5,1),(112,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','gfsdfg','يبليسبل','dafca091-da4d-4d2a-aeb3-3a954d5a4b42',_binary '\0',6,_binary '\0',5,1),(114,'1_STCS_CUST',_binary '\0','45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4','nnn','صيصضثصضث','c9e59a21-b69b-4b82-8742-4e8220df6100',_binary '\0',6,_binary '\0',5,1),(155,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','riadhtwentythree','رياض ثلاث وعشرون','f7a959aa-8004-415c-8262-6c07e023f878',_binary '\0',6,_binary '\0',5,1),(222,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','prrrrrrrr','بروووووووو','1994c679-d14c-4032-a82a-8504a26a7649',_binary '\0',6,_binary '\0',5,1),(223,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','ppppdddddd','بررررررر','1b9e9f0f-a8a7-482b-8a0b-8039d4af9742',_binary '\0',6,_binary '\0',5,1),(224,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','mmmmm','هههههههه','b8543354-480b-4ff7-930d-51fe32375e76',_binary '\0',6,_binary '\0',5,1),(225,'1_STCS_CUST',_binary '\0','e588b002-5510-4962-9c7b-eeb607664562','mmmmmmmmm','البرو','b2777a82-ad33-4acc-9c34-cca822e01cee',_binary '\0',6,_binary '\0',5,1);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_link`
--

DROP TABLE IF EXISTS `register_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_link` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `creation_date` bigint DEFAULT NULL,
  `is_admin` bit(1) DEFAULT NULL,
  `link_token` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_link`
--

LOCK TABLES `register_link` WRITE;
/*!40000 ALTER TABLE `register_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_authority`
--

DROP TABLE IF EXISTS `related_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `related_authority` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `authority_level` varchar(255) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `main_authority_code` varchar(255) DEFAULT NULL,
  `required_authority_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_authority`
--

LOCK TABLES `related_authority` WRITE;
/*!40000 ALTER TABLE `related_authority` DISABLE KEYS */;
/*!40000 ALTER TABLE `related_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme` (
  `system_id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`system_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES ('base','2022-11-24 00:00:00.000000','2022-11-24 00:00:00.000000',NULL),('keycloak','2022-11-24 00:00:00.000000','2022-11-24 00:00:00.000000',NULL);
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_attributes_mapping`
--

DROP TABLE IF EXISTS `user_attributes_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_attributes_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `creation_date` bigint DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `internal_type` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `level_id` varchar(255) DEFAULT NULL,
  `lock_reason` text,
  `locked_by` varchar(255) DEFAULT NULL,
  `locked_date` bigint DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `nationality_id` bigint DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `profile_picture_id` varchar(255) DEFAULT NULL,
  `reserved` bit(1) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_date` bigint DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtlirws9643blh93l96v9ak530` (`profile_id`),
  KEY `FK8dpo19ewkiccsf0qf9u45700g` (`theme`),
  KEY `FKpp9mua2i96uxm87mfyunb87lk` (`type_id`),
  CONSTRAINT `FK8dpo19ewkiccsf0qf9u45700g` FOREIGN KEY (`theme`) REFERENCES `theme` (`system_id`),
  CONSTRAINT `FKpp9mua2i96uxm87mfyunb87lk` FOREIGN KEY (`type_id`) REFERENCES `user_types` (`id`),
  CONSTRAINT `FKtlirws9643blh93l96v9ak530` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_attributes_mapping`
--

LOCK TABLES `user_attributes_mapping` WRITE;
/*!40000 ALTER TABLE `user_attributes_mapping` DISABLE KEYS */;
INSERT INTO `user_attributes_mapping` VALUES (1,'+966',NULL,NULL,'1_STCS_CUST','admin@esports.com','Test admin','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','كلمه مرور غير صحيحه','النظام',1681903303612,'554254232',168,NULL,'esports/0e519e8a-1476-4678-abd1-6e638604f5b0__admin-sign-laptop-icon-stock-vector-166205404.jpg',_binary '','LOCKED',NULL,1675844985127,'b54b3b83-6996-40f3-9c56-00f9f3c2d035','+966554254232','keycloak',1),(10,'+966',NULL,1676370761042,NULL,'m.ossama.ahmed@mail.ru','Mohamed Ossama',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'559968715',NULL,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676370761042,'f1509518-44b6-4473-bff9-9c6ce88c5171','+966559968715','keycloak',2),(11,'+966',NULL,1676373466213,NULL,'moossama@mail.ru','Mohamed Ossama',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'554597741',NULL,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676373466213,'2af05da7-a6b9-466c-8f73-885dbc986afd','+966554597741','keycloak',2),(12,'+966',NULL,1676375585842,NULL,'moossama@yandex.com','Mohamed Ossama',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'556987412',NULL,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676375585842,'894993d4-c4d8-4aa4-8abe-0739776005f3','+966556987412','keycloak',2),(13,'+966',NULL,1676397650306,NULL,'dtifg1lkqd@klovenode.com','fghjijhb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'577543445',NULL,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676397650306,'6a8b2ad3-5b17-464d-b743-9b7edb79e319','+966577543445','keycloak',2),(14,'+966',NULL,1676401525144,NULL,'djdhjds@djnsdudo.com','djbhdhdnjdjn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'562876553',NULL,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676401525144,'62d0795d-1065-4b3b-89ed-df92156d856d','+966562876553','keycloak',2),(15,'+966',NULL,1676401629237,NULL,'wnwdco51cc@klovenode.com','dtcfyvguhbjhiug',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'565278833',NULL,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676401629237,'00b2b870-6a88-4988-94bc-137d1ef0b3c2','+966565278833','keycloak',2),(22,'+966','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1676549571608,'1_STCS_CUST','abtest@mailinator.com','abtest','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'554755809',168,'73055dde-39bc-45ce-be15-bf88b6cdcac9',NULL,_binary '\0','ACTIVE','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1676549571608,'aa4eab36-438d-4283-a3e9-bab7370e6fbb','+966554755809','keycloak',6),(23,'+20','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1676549647741,'1_STCS_CUST','de.mahmoud.ahmed@gmail.com','mahmoud','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1147926740',57,'f7a959aa-8004-415c-8262-6c07e023f878',NULL,_binary '\0','ACTIVE','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1680521337069,'1b985c3d-987b-432b-a0df-2f2dcc4f800b','+201147926740','keycloak',6),(24,'+20','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1676549704420,'1_STCS_CUST','de.mahmoud.ahmed22@gmail.com','mahmoud','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1147926944',57,'73055dde-39bc-45ce-be15-bf88b6cdcac9',NULL,_binary '\0','ACTIVE','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1676549704420,'9aeeb062-76ff-4d3b-a432-6c3dfa20febe','+201147926944','keycloak',6),(25,'+966','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1676554610171,'1_STCS_CUST','safd','bassem','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'534377404',2,'73055dde-39bc-45ce-be15-bf88b6cdcac9',NULL,_binary '\0','ACTIVE','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1676554610171,'208f9865-a20b-453b-8831-1b881ca95f98','+966534377404','keycloak',2),(26,'+966',NULL,1676819804210,NULL,'gajaj60777@jobsfeel.com','Club LIcense test','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'542223332',3,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1676819804210,'8114bc9c-89d5-4744-b3c8-0bfdba0156ee','+966542223332','keycloak',2),(27,'+966',NULL,1676820779260,NULL,'disapot464@otanhome.com','club license','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'543211233',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676820779260,'61272877-adbc-4a54-abf2-dcb5a9dba285','+966543211233','keycloak',2),(28,'+966',NULL,1676824249258,NULL,'mahmoud.aboelsoud.p@gmail.com','Mahmoud Aboelsoud','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'567876553',3,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676824249258,'411848ba-f128-4961-9a9a-37aa4d88cba4','+966567876553','keycloak',2),(29,'+966',NULL,1676884216988,NULL,'haxeles983@jobsfeel.com','Club owner license','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'564345431',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1676884216988,'85d50871-f202-4231-bfe3-b410ea2a8cf5','+966564345431','keycloak',2),(30,'+966',NULL,1676884282041,NULL,'eoyorvnz@eurokool.com','Club owner license','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'564345412',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1676884282041,'5896227c-259b-4aef-b59d-61ce0df00720','+966564345412','keycloak',2),(31,'+966',NULL,1676884337218,NULL,'loknukokka@gufum.com','Club owner license','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'564345433',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1676884337218,'cfdfb47d-f2e7-44ea-a4fa-e40137948855','+966564345433','keycloak',2),(32,'+966',NULL,1676884421417,NULL,'mahmoudaboelsoud.p@gmail.com','Shousha','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'568997654',4,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676884421417,'6c3d7d80-9011-49db-b758-a5eec9f86bb3','+966568997654','keycloak',2),(33,'+966',NULL,1676884457337,NULL,'haxeles98213@jobsfeel.com','Club owner license','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'564345999',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1676884457337,'bebd86d8-7791-4b99-a821-a1b968fd4f19','+966564345999','keycloak',2),(34,'+966',NULL,1676884653563,NULL,'dsjfds@club.com','Club Owner License','MALE',NULL,NULL,NULL,'Semouha','ahmed',1680440909273,'565433445',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','DISABLED',NULL,1676884653563,'6521c83d-4a55-4c27-8319-045b4b63811b','+966565433445','keycloak',2),(35,'+966',NULL,1676884788464,NULL,'merrit.donaven@dollstore.org','MERRIF DONAven','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'543341387',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1676884788464,'3f3b5613-4789-4609-892b-921f8299c425','+966543341387','keycloak',2),(36,'+966',NULL,1676885135841,NULL,'msdjsa@gmail.com','MERRIF DONAven','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'543387899',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1676885135841,'8dd06a3e-0e69-45dc-a83e-62f23950cefb','+966543387899','keycloak',2),(37,'+966',NULL,1676886224211,NULL,'fegfspm806@tmail6.com','MERRIF DONAven','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'543385544',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1676886224211,'94ac4ed2-df92-4670-94e2-08dc33d4b862','+966543385544','keycloak',2),(38,'+966',NULL,1676898664031,NULL,'mahmoud.abo.elsoud.p@gmail.com','GGG','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'563322222',4,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676898664031,'ca66a676-a8dd-49f8-b07f-72576e17c52a','+966563322222','keycloak',2),(39,'+966',NULL,1676900271507,NULL,'mahmoud.abo.e.lsoud.p@gmail.com','Mahmoud','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'562222222',203,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1676900271507,'a434519d-75d1-401a-93c3-bcd7a7dfdf6e','+966562222222','keycloak',2),(40,'+20',NULL,1677050714871,NULL,'LVRWJ@clubowner.com','fXAxnQdxdvseKCWBZUml','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'1019992512',58,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1677050714871,'e0b82c13-fc84-4715-ab6e-bd909e318ecc','+201019992512','keycloak',2),(41,'+966','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1677069205452,'1_STCS_CUST','ahmedfad@mailinatorm.com','ahmedfad','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'554755666',168,'73055dde-39bc-45ce-be15-bf88b6cdcac9',NULL,_binary '\0','ACTIVE','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1677069205452,'b6a6e5d5-9d19-4678-867c-27d4ff73edc8','+966554755666','keycloak',6),(42,'+966','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1677069473852,'1_STCS_CUST','ahmedfad1@mailinatorm.com','ahmedfad','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'554755608',168,'73055dde-39bc-45ce-be15-bf88b6cdcac9',NULL,_binary '\0','ACTIVE','0f54f522-151c-4d27-866c-eae8e99a041b',1681391732599,'d311f5e7-fa01-4acd-9516-25f74f518277','+966554755608','keycloak',6),(43,'+966',NULL,1677072153788,NULL,'amah@mailinator.com','amah','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'554755501',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1677072153788,'aee11cc0-b7f2-4a61-9eb3-ace905091354','+966554755501','keycloak',2),(44,'+966',NULL,1677072575181,'1_STCS_CUST','ahmm@mailinator.com','ahmm','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','mmmm','ahmed',1681211528280,'554755401',168,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1677072575181,'3ea9eb33-322e-4f99-9b83-e667e90f115b','+966554755401','keycloak',3),(49,'+966','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1677398735484,'1_STCS_CUST','riadh.bel.hadj2004@gmail.com','riadh bel haj salah','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'532773521',NULL,'f7a959aa-8004-415c-8262-6c07e023f878',NULL,_binary '\0','ACTIVE','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1680348327513,'31e22205-c789-4581-8e3c-5d013cbc07ae','+966532773521','keycloak',6),(50,'+966',NULL,1677418291357,NULL,'riadh_bel_hadj2004@hotmail.com','riadh bel haj salah','MALE',NULL,NULL,NULL,'riadh club','ahmed',1680439189011,'534444521',195,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','DISABLED',NULL,1677418291357,'22c66b9d-14e2-404f-80d3-c3c38c57e1f6','+966534444521','keycloak',2),(62,'+20',NULL,1677426337974,NULL,'waseem@test.tes','waseem','MALE',NULL,NULL,NULL,'SaGrcOufdjrHFPPcrnpU','ahmed',1680439042594,'1273499017',57,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1677426337974,'f38cf71b-5274-4304-96d9-8602dd5414d8','+201273499017','keycloak',2),(64,'+966',NULL,1677600059079,NULL,'testfadell@mailinator.com','testfadell','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'554755607',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1677600059079,'4aa0c798-8123-496b-a331-ce3745c509df','+966554755607','keycloak',2),(65,'+966',NULL,1677604880493,NULL,'testfadl@mailinator.com','testfadl','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'554755201',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1677604880493,'d8cc7d38-2949-4300-ba53-a649c7091ad5','+966554755201','keycloak',2),(66,'+20',NULL,1677680494825,'1_STCS_CUST','waseem@test.test','waseem','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','كلمه مرور غير صحيحه','النظام',1680013439160,'1234567890',57,'8f4e08c5-f37e-4702-8034-328fd60fd116','esports/bce987e5-91b1-48be-a808-6b72ea888cd6__image (3).png',_binary '\0','LOCKED',NULL,1677680494825,'c24a6bab-8ff3-4bc8-99cb-47be3016adbb','+201234567890','keycloak',3),(67,'+966',NULL,1677741614544,NULL,'newclubows@mailinator.com','dsafsafasdff','MALE',NULL,NULL,NULL,'كلمه مرور غير صحيحه','النظام',1681405578811,'+1684359756488',195,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','LOCKED',NULL,1677741614544,'143960ef-65f9-4eb8-9906-b12d3535f2e1','+966532778888','keycloak',2),(68,'+966',NULL,1677766911200,NULL,'abx@mailinator.com','abx','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'554755900',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1677766911200,'9cc79124-ac96-4381-9a23-edf672bcd455','+966554755900','keycloak',2),(69,'+966',NULL,1677798671246,NULL,'examp@mailinator.com','examp','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'554755902',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1677798671246,'46bf5114-a97a-4717-89a3-5aafcd4e84d4','+966554755902','keycloak',2),(70,'+966',NULL,1678008111487,NULL,'mahmoud-hossam@outlook.com','mahmoud','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'554755908',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1678008111487,'eefe8d54-0fbd-4e94-b3dd-5b33edc0ac97','+966554755908','keycloak',2),(71,'+966',NULL,1678014762846,NULL,'mahmoudhossam.eg@gmail.com','mahmod','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'554755100',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1678014762846,'393a4a84-2bc2-4f38-ba00-b7eb11e4dbde','+966554755100','keycloak',2),(73,'+966',NULL,1678053452114,NULL,'ahmedfadel1595@gmail.com','ahmdmah','MALE',NULL,NULL,NULL,'dsfds','ahmed',1680439407768,'554755602',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','DISABLED',NULL,1678053452114,'fff3d6d5-c649-4155-a52a-5db5c77b1a24','+966554755602','keycloak',2),(74,'+966',NULL,1678091925227,NULL,'mahmoud.abo.el.soud.p@gmail.com','Mahmoud','MALE',NULL,NULL,NULL,'كلمه مرور غير صحيحه','النظام',1679511647472,'564433333',203,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','LOCKED',NULL,1678091925227,'dd4f70be-1e35-4b6f-ba04-f9d693705131','+966564433333','keycloak',2),(75,'+966',NULL,1678099972755,'1_STCS_CUST','riadhplayer@riadh.com','riadh bel haj salah','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'532555555',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116','esports/08a4490f-9f02-4a59-8d51-5858d0ab8a30__Screenshot from 2023-04-04 19-15-20.png',_binary '\0','ACTIVE',NULL,1678099972755,'8802fbb9-c46d-482e-93b6-c83ec3be61b8','+966532555555','keycloak',3),(76,'+966',NULL,1678100445845,'1_STCS_CUST','riadhhost@riadh.com','riadh','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'532773333',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1678100445845,'560d2d90-16ce-4fa3-b9e3-ed8c0914bc5c','+966532773333','keycloak',NULL),(77,'+20',NULL,1678179788908,'1_STCS_CUST','mohamed.elshaboury@eg.fillflix.com','Mohamed Elshaboury','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1019992516',57,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1678179788908,'47438aa2-1877-4545-bff8-8a108f23d804','+201019992513','keycloak',3),(78,'+20',NULL,1678179984544,'1_STCS_CUST','mohamed.elshabour@eg.fillflix.com','Mohamed Elshaboury','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1019992514',57,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1678179984544,'a94d35b4-1045-471b-892e-63d999cc214a','+201019992514','keycloak',3),(79,'+20',NULL,1678180550041,'1_STCS_CUST','mohamed.3elshaboury@eg.fillflix.com','Mohamed Elshaboury','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','nnnnnnnnnnnnn','ahmed',1681211342369,'1019992515',203,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1678180550041,'07c2fb8b-531e-4f63-bde1-aad62d40f8b3','+201019992515','keycloak',3),(91,'+20',NULL,1678196025385,'1_STCS_CUST','mohamed.elshaboury3@eg.fillflix.com','Mohamed Elshaboury','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','nnnnnn','ahmed',1681211375168,'1019992513',203,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','DISABLED',NULL,1678196025385,'5d6fa381-06f3-41a6-b1fa-29196f0cb20a','+201019992513','keycloak',3),(92,'+966','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1678563879128,'1_STCS_CUST','namexy@mailinator.com','namexy','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562','mmmmmmmmm','ahmed',1681210412353,'554755001',168,'afaf4496-9eeb-4088-87b7-7e5052c858a1',NULL,_binary '\0','DISABLED','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1678563879128,'4c52e0c8-a783-49fc-90a9-ded34b2ce7ea','+966554755001','keycloak',6),(95,'+966',NULL,1678646992469,'1_STCS_CUST','khesayed@gmail.com','Khalid','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'533951179',57,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1678646992469,'769d3a5b-19a8-4c8a-8650-0f0effb8388f','+966533951179','keycloak',3),(96,'+966',NULL,1678648855792,'1_STCS_CUST','mahmoud.aboelsou.d.p@gmail.com','Sami','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'564444444',3,'8f4e08c5-f37e-4702-8034-328fd60fd116','esports/49cda9d8-dce7-4bc6-b047-00d46833a354__logo.PNG',_binary '\0','ACTIVE',NULL,1678648855792,'8c7e5802-b8ad-43db-98c6-92b2084e283a','+966564444444','keycloak',3),(97,'+966',NULL,1678966860176,'1_STCS_CUST','testossama12@mailinator.com','Test Mailinator','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','mmmmmmm','ahmed',1681211152583,'577889632',57,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1678966860176,'e762e071-b59e-4f6b-9f8d-3f62c6e66615','+966577889632','keycloak',3),(98,'+20',NULL,1678968116745,'1_STCS_CUST','coach_nour@mailinator.com','coach nour','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1091691052',57,'ca1ed388-41b3-4f5c-b95d-1b3ebbe3b59e',NULL,_binary '\0','ACTIVE',NULL,1678968116745,'c58814a1-27cb-4a3a-a1d7-f28ec4e3fe68','+201091691052','keycloak',4),(99,'+966',NULL,1678970714408,'1_STCS_CUST','ahmedfadell@mailinator.com','ahmedfadell','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'554755622',168,'ca1ed388-41b3-4f5c-b95d-1b3ebbe3b59e',NULL,_binary '\0','ACTIVE',NULL,1678970714408,'1a46c7ea-f7cb-43ec-adf7-fa7465495ce6','+966554755622','keycloak',4),(100,'+20',NULL,1678971142660,'1_STCS_CUST','nour_coachh@mailinator.com','nour coachh','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1091685685',57,'ca1ed388-41b3-4f5c-b95d-1b3ebbe3b59e',NULL,_binary '\0','ACTIVE',NULL,1678971142660,'088ea835-6d47-45da-baf4-79548e9ae3b2','+201091685685','keycloak',4),(101,'+966',NULL,1678972954061,'1_STCS_CUST','kareemteam@gmail.com','kareem team','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'555555555',57,'88cb7b8e-6aae-4dde-bc04-ce4b09764694',NULL,_binary '\0','ACTIVE',NULL,1678972954061,'2e7329cd-0e1c-42d7-ac3a-9a9033b50d15','+966555555555','keycloak',7),(102,'+966',NULL,1678978435382,'1_STCS_CUST','riadhplayer2@riadh.com','riadh','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'566666556',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1678978435382,'6fc89443-3bc5-4e03-9de5-e69e5394c90f','+966566666556','keycloak',3),(103,'+966',NULL,1678978861585,'1_STCS_CUST','player@player.com','Player One','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'543433454',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1678978861585,'d9c76d9a-1fb3-46c6-9d1f-f2d00864825f','+966543433454','keycloak',3),(104,'+20',NULL,1678983418486,'1_STCS_CUST','nIe@player.com','CZj rEc','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1019992519',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1678983418486,'1d35d2f7-9006-4f09-9eaa-93a20282a050','+201019992519','keycloak',3),(105,'+20',NULL,1678984293709,NULL,'rSpED@mailinator.com','ZEyFnXSAcNNSFMUzrdtk','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'1019992115',58,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1678984293709,'995586bb-81d1-4490-a8ec-936555f6f3c4','+201019992115','keycloak',2),(107,'+966','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1678998549544,'1_STCS_CUST','mmd@mailinator.com','mmd','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'546456444',NULL,'afaf4496-9eeb-4088-87b7-7e5052c858a1',NULL,_binary '\0','ACTIVE','0f54f522-151c-4d27-866c-eae8e99a041b',1681501578259,'5f57f3c7-86f3-4375-a39b-81013c602e59','+966546456444','keycloak',6),(113,'+966',NULL,1679082650467,'1_STCS_CUST','player222@player.com','player new','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'566652222',3,'8f4e08c5-f37e-4702-8034-328fd60fd116','',_binary '\0','ACTIVE',NULL,1679082650467,'bbc8fc36-79e9-4cc8-926d-7fa1ff23168c','+966566652222','keycloak',3),(115,'+966',NULL,1679163825366,'1_STCS_CUST','m.ossama.ahmed@outlook.com','ayman','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'568586579',220,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679163825366,'142be2c6-39cf-44f6-a655-8762eb73da05','+966568586579','keycloak',3),(116,'+966',NULL,1679164220522,'1_STCS_CUST','ayman@mailinator.com','ayman test','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'568676876',203,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679164220522,'a0d668c5-3e54-4eca-af6f-e28e26d6e1f2','+966568676876','keycloak',3),(117,'+20',NULL,1679165800548,'1_STCS_CUST','ayman2@mailinator.com','ayman ali','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1115208469',57,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679165800548,'5266af14-cf5c-4a59-ace4-9604a9baf538','+201115208469','keycloak',3),(118,'+966',NULL,1679169521483,'1_STCS_CUST','ayman.moh@fasfiasf.com','ayman','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'567676784',203,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679169521483,'4b63dc66-1d45-4442-b37e-fc648418d113','+966567676784','keycloak',3),(119,'+20',NULL,1679169870784,'1_STCS_CUST','ayman3@mailinator.com','ayman','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1115208468',4,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679169870784,'cf465d7e-2823-4af0-82d0-56192034fa14','+201115208468','keycloak',3),(120,'+966',NULL,1679171978114,'1_STCS_CUST','ayman63@mailinator.com','afaisjfiajsf','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'587248324',220,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1679171978114,'2c5109ff-12ba-411a-8fb7-077a9ddc5983','+966587248324','keycloak',16),(121,'+966',NULL,1679172091011,'1_STCS_CUST','asfasfhsafasf@jifasf.co','iiajsfiajsif','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'578787876',2,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679172091011,'b766a191-d962-418a-abbc-138722d30ed5','+966578787876','keycloak',3),(122,'+966',NULL,1679247565109,NULL,'ahmedfadel@mailinator.com','ahmedfadel','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'554755203',168,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1679247565109,'36f381ac-4588-451a-a28b-cfd75adb32a7','+966554755203','keycloak',2),(123,'+966',NULL,1679248643819,NULL,'ahmedfadelll@mailinator.com','ahmedfadel','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'554755202',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1679248643819,'a548b297-7058-41de-b5b3-1a23dcb26576','+966554755202','keycloak',2),(124,'+966',NULL,1679251106646,'1_STCS_CUST','ossama212@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'555999663',57,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679251106646,'90ecfbda-91c6-4afa-aac7-c180f4c23aa4','+966555999663','keycloak',3),(125,'+966',NULL,1679253443301,'1_STCS_CUST','ossama619@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'566633666',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679253443301,'0a7b4aff-705c-4867-9753-b0c03288ea12','+966566633666','keycloak',3),(126,'+966',NULL,1679261251544,'1_STCS_CUST','ossama620@mailinator.com','Mohamed Ossmaa','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'543321232',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679261251544,'863d2c9c-4da3-478e-aa58-49caba0ba267','+966543321232','keycloak',3),(127,'+966',NULL,1679262159703,'1_STCS_CUST','ossama333@mailinator.com','Mohamed OOOO','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'543423129',186,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679262159703,'49e951d6-540e-4632-b67e-29b5ac90d724','+966543423129','keycloak',3),(128,'+966',NULL,1679262334145,'1_STCS_CUST','o1@mailinator.com','OSSS','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'555444431',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679262334145,'407ca486-3bc9-490d-95d0-5cf4ebd5994c','+966555444431','keycloak',3),(129,'+966',NULL,1679302502278,'1_STCS_CUST','osss@mailinator.com','Mohamed Osasama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'543221234',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679302502278,'060fd4ec-3583-4cc8-ada3-dfb8e39e3d41','+966543221234','keycloak',3),(130,'+966',NULL,1679309518749,'1_STCS_CUST','osss1@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'589633214',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679309518749,'ac00a5d2-3f41-4212-af26-a4122d99e196','+966589633214','keycloak',3),(131,'+966',NULL,1679310632249,'1_STCS_CUST','m_osss1@mailinator.com','Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'595639674',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679310632249,'2a6db681-faf8-45f4-a4cc-2d31d9f2dc06','+966595639674','keycloak',3),(132,'+966',NULL,1679311008763,'1_STCS_CUST','m_osss3@mailinator.com','Ossama three','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'589632114',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679311008763,'7f9ff925-2f96-4d5c-94c6-6aca41bd9eac','+966589632114','keycloak',3),(133,'+966',NULL,1679311293696,'1_STCS_CUST','m_osss2@mailinator.com','Mohamed OOOO','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'571234567',186,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679311293696,'caf9ed52-b450-4524-ad08-5b0701f0d202','+966571234567','keycloak',3),(134,'+966',NULL,1679311890346,'1_STCS_CUST','m_osss6@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'596325874',186,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679311890346,'44fb2551-7d20-4537-8329-a143baed0f71','+966596325874','keycloak',3),(135,'+966',NULL,1679312210012,'1_STCS_CUST','m_osss5@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'589744112',186,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679312210012,'c9474f40-d340-4581-9738-dcd442e1a289','+966589744112','keycloak',3),(136,'+966',NULL,1679313323680,'1_STCS_CUST','osss9@mailinator.com','Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'578963214',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116','',_binary '\0','ACTIVE',NULL,1679313323680,'04517f56-b984-423c-8bfb-ed44d6bfa67a','+966578963214','keycloak',3),(137,'+966',NULL,1679314471356,'1_STCS_CUST','osss7@mailinator.com','Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'596332212',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679314471356,'68da8b6f-5f7d-457b-b583-20421bce6f56','+966596332212','keycloak',3),(138,'+966',NULL,1679315580377,'1_STCS_CUST','osss8@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'597314312',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679315580377,'6a943ea6-1053-46f9-99ee-8997c1e65e87','+966597314312','keycloak',3),(139,'+966',NULL,1679316679413,'1_STCS_CUST','osss11@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'596332114',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679316679413,'c0c1702b-fe9e-4d84-b089-fb11d68ec4cd','+966596332114','keycloak',3),(140,'+966',NULL,1679317721772,'1_STCS_CUST','osss12@mailinator.com','Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'503133321',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679317721772,'7509d593-111a-439d-b1b0-2ba9a91ca11d','+966503133321','keycloak',3),(141,'+966',NULL,1679411947376,NULL,'aymansfas@mailinator.com','asduashf','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'563465345',2,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1679411947376,'47f36154-b6d4-42df-9d73-caafa1b1c060','+966563465345','keycloak',2),(142,'+966',NULL,1679411962848,NULL,'yyyyyyyyyyuuuuuuuuuuuuu@dsdsd.com','jjjjjjjjhujj','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'564899435',4,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1679411962848,'3d6f3253-d2a6-436d-ad8b-62f55ecd396a','+966564899435','keycloak',2),(143,'+966',NULL,1679477824444,NULL,'mmmms@gmail.com','MOHAMED Ossama','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'548312921',57,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1679477824444,'de831dc7-c021-42a1-8852-50061a559a9a','+966548312921','keycloak',2),(144,'+966',NULL,1679480591386,NULL,'clubowner@gmail.com','Club owner','MALE',NULL,NULL,NULL,'sfd sfd sfd','ahmed',1680439123183,'545454454',57,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','DISABLED',NULL,1679480591386,'da1e8260-340e-4188-803e-7fbc0c278941','+966545454454','keycloak',2),(145,'+966','b54b3b83-6996-40f3-9c56-00f9f3c2d035',1679481805428,'1_STCS_CUST','dsfds@gmail.com','Ossana','MALE','EMPLOYEE',NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'544543323',2,'afaf4496-9eeb-4088-87b7-7e5052c858a1',NULL,_binary '\0','ACTIVE','0f54f522-151c-4d27-866c-eae8e99a041b',1681502839332,'5046212e-f012-496e-b83e-3a65608174c2','+966544543323','keycloak',6),(146,'+966',NULL,1679482735904,'1_STCS_CUST','ossama9999@mailinator.com','Coach Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'591918723',NULL,'ca1ed388-41b3-4f5c-b95d-1b3ebbe3b59e',NULL,_binary '\0','ACTIVE',NULL,1679482735904,'e49a8b14-4788-4f03-a6ae-6b05547abebd','+966591918723','keycloak',4),(147,'+966',NULL,1679483296822,NULL,'osamaaa@mailinator.com','osamaaa','MALE',NULL,NULL,NULL,'dsfds df','ahmed',1680440032559,'554755999',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','DISABLED',NULL,1679483296822,'ad2bd7f8-a9d2-4a62-9be9-484e7eb53283','+966554755999','keycloak',2),(148,'+966',NULL,1679512026542,'1_STCS_CUST','playerrr@mailinator.com','gggggg','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'564444488',203,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679512026542,'5a4b27ec-b1c4-471c-b3d9-0c42e9aa0ef0','+966564444488','keycloak',3),(149,'+966',NULL,1679512239877,'1_STCS_CUST','hhhhh@mailinator.com','hhhh','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','aaaaaaaa','ahmed',1681211424964,'564444489',3,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','DISABLED',NULL,1679512239877,'d161c237-d992-421c-8de9-80e40cf7c663','+966564444489','keycloak',3),(150,'+966',NULL,1679943846158,'1_STCS_CUST','bmember@mailinator.com','btmember','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'534366505',2,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1679943846158,'dbb7997f-b9f7-43a9-81dd-4f9e4212a971','+966534366505','keycloak',3),(151,'+966',NULL,1679960948489,NULL,'mm@mm.com','mmm','MALE',NULL,NULL,NULL,'fhf','Test admin',1680671656533,'534123121',2,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','DISABLED',NULL,1679960948489,'96b95bcc-5caa-44e1-ab76-d76e0082d872','+966534123121','keycloak',2),(152,'+966',NULL,1680029338293,'1_STCS_CUST','invtestm@mailinator.com','sdlfkalsdfka','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'534323232',2,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680029338293,'821bfc7c-007c-491c-9b18-342a5601f92e','+966534323232','keycloak',3),(153,'+966',NULL,1680039926359,'1_STCS_CUST','ossama100@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'544434332',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680039926359,'e8075900-1b59-4427-b124-0ae139dc255b','+966544434332','keycloak',3),(154,'+20',NULL,1680095021155,'1_STCS_CUST','test@test.test','test','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1273489901',57,'c58b371e-4f43-46aa-8966-33ef5a606601','esports/4e9ad745-bf36-4ccf-a2d2-8af25feea23c__icon_x384.png',_binary '\0','ACTIVE',NULL,1680095021155,'0ae6de6a-53e0-46ef-ad77-e62ebb967f81','+201273489901','keycloak',5),(156,'+966',NULL,1680127690855,'1_STCS_CUST','ossama200@mailinator.com','Mohamed Ossama Ahmed','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'544334443',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680127690855,'ee47bdba-55f5-480e-bdb6-6779b4fe616c','+966544334443','keycloak',3),(157,'+966',NULL,1680127880130,'1_STCS_CUST','ossama222@mailinator.com','ossama','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'544345433',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680127880130,'e310301d-42f9-48b6-819a-de3ff065cec6','+966544345433','keycloak',3),(158,'+966',NULL,1680128345066,'1_STCS_CUST','ayman000@mailinator.com','ayman','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'545545454',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680128345066,'dd240d9a-9653-486f-9799-52f3bcc5cb69','+966545545454','keycloak',3),(159,'+966',NULL,1680128455520,'1_STCS_CUST','ayman111@mailinator.com','ayman','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'544333221',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680128455520,'1a5f0772-3275-4eca-b063-901b72d4d2c7','+966544333221','keycloak',3),(160,'+966',NULL,1680184862220,NULL,'ossama1000@mailiantor.com','Club owner test','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'546987519',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1680184862220,'07602d67-18c3-4d28-96da-a6500be37ddc','+966546987519','keycloak',2),(161,'+213',NULL,1680185022693,'1_STCS_CUST','bsclub@mailinator.com','bassem club','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'242434324',3,'480c96e0-d6f1-4799-9c0c-6cf228fe0171','ay pic',_binary '\0','ACTIVE',NULL,1680185022693,'de14331d-4bb8-49d8-8e82-c6ff938d8aa5','+213242434324','keycloak',8),(162,'+966',NULL,1680186225541,NULL,'ossamamo@mailinator.com','Mo Ossama','MALE',NULL,NULL,NULL,'test','ahmed',1680437270664,'566632144',57,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1680186225541,'16e6a48e-b8ce-47eb-aad7-8642a2b21b14','+966566632144','keycloak',2),(163,'+966',NULL,1680207434895,NULL,'mossama3008@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,NULL,'test test','ahmed',1680437245053,'545456377',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1680207434895,'258ba758-4ca9-494b-93d1-0e60a9a66fb2','+966545456377','keycloak',2),(164,'+966',NULL,1680214440194,NULL,'ossama8@mailinator.com','Ossama ahmed','MALE',NULL,NULL,NULL,'fdg','ahmed',1680438725714,'544433322',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1680214440194,'a9b9098e-dda9-4220-9624-aebf6efa9188','+966544433322','keycloak',2),(165,'+966',NULL,1680215797164,NULL,'ossama123@mailinator.com','Ossama','MALE',NULL,NULL,NULL,'sdsadsd','Test admin',1680671489502,'554443322',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','DISABLED',NULL,1680215797164,'caaf9f97-ff66-4ff9-b76a-fd2fe6a232a5','+966554443322','keycloak',2),(166,'+966',NULL,1680433381429,'1_STCS_CUST','mahmoudeeeeeeeee@wwa.com','Mahmoudddd','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'564444445',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680433381429,'e198ba86-ebfc-4288-8543-0840c2a6a5c7','+966564444445','keycloak',3),(167,'+966',NULL,1680442682825,'1_STCS_CUST','mahmoudgggggg@wwa.com','mmmmmmm','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'564444439',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680442682825,'59aff161-99f5-473e-bf18-2211db82d4f0','+966564444439','keycloak',3),(168,'+966',NULL,1680442826074,'1_STCS_CUST','ggggkkkk@ff.com','ccccccc','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'567383333',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680442826074,'0b52fb92-c99f-456d-83ed-0a006b53f74f','+966567383333','keycloak',3),(169,'+966',NULL,1680471841651,NULL,'mossama_owner@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,NULL,'كلمه مرور غير صحيحه','النظام',1680472168254,'554443332',168,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','LOCKED',NULL,1680471841651,'4afac80d-7d3e-492b-ba93-afcb63b7a90b','+966554443332','keycloak',2),(170,'+966',NULL,1680515631779,'1_STCS_CUST','aymanayman@mailinator.com','ayman',NULL,NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','dsdadsdasd','Test admin',1681252413213,'556734567',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','DISABLED',NULL,1680515631779,'2e4bc7e7-fc2d-4390-9d52-49ca52a55b9f','+966556734567','keycloak',3),(171,'+966',NULL,1680602493400,NULL,'ayman_owner@mailinator.com','tefaef','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'553454363',2,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1680602493400,'c7aad88b-4e17-4685-8b4d-894e55425ecf','+966553454363','keycloak',2),(172,'+966',NULL,1680622108749,NULL,'mco@mco.com','mahmoud mco','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'567778954',203,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1680622108749,'682dbdff-03da-4083-9cd2-c896166792f5','+966567778954','keycloak',2),(173,'+20',NULL,1680639788958,NULL,'RyvNO@mailinator.com','tuThYOFyQBlaMbLdwuDb','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'1029992115',58,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1680639788958,'1e26e52f-7604-49ea-a5dd-3dbde438a646','+201029992115','keycloak',2),(174,'+20',NULL,1680639881386,NULL,'kyuSN@mailinator.com','PVbmasCBuJBGihmOnAFa','MALE',NULL,NULL,NULL,'ghgh','Test admin',1680671648725,'1029992512',58,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','DISABLED',NULL,1680639881386,'a4ec2190-738d-48fa-bed4-7ea82bec3757','+201029992512','keycloak',2),(175,'+20',NULL,1680640038290,NULL,'FoFOs@mailinator.com','KgDBgXWuCpzLDOckftRH','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'1029992513',58,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1680640038290,'34063dc8-145a-4889-bfe6-5eff46496472','+201029992513','keycloak',2),(176,'+20',NULL,1680642067555,'1_STCS_CUST','NXE@player.com','oVC xLq','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','mzagy keda','ahmed',1681210332273,'1039992512',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','DISABLED',NULL,1680642067555,'4f02767a-594c-4e45-afaa-3f93816d5003','+201039992512','keycloak',3),(177,'+20',NULL,1680642144150,'1_STCS_CUST','gCp@player.com','hgf fxX','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','za','ahmed',1681644300909,'1039992513',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680642144150,'a0c4b46b-3b3c-465a-99fa-b272e4493331','+201039992513','keycloak',3),(179,'+226',NULL,1680771659236,NULL,'engbassedsmsalama@gmail.com','asfasf','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'3494456455',NULL,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1680771659236,'0b727b5c-14a5-4148-9d24-97468ea4c2a2','+966564432226','keycloak',2),(180,'+966',NULL,1680904521740,'1_STCS_CUST','clubcontent@mailinator.com','content one','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'532323232',3,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc','esports/617a35bd-169a-4ca5-bc95-d606f2a0ed80__Screenshot 2023-04-07 at 00.25.48.png',_binary '\0','ACTIVE',NULL,1680904521740,'90a53636-fbaf-4107-8e4b-f24a9cbb5390','+966532323232','keycloak',16),(182,'+966',NULL,1680930294589,'1_STCS_CUST','refrefad@mailinator.com','refrefad','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','cfsdsadfdsfdfdfd','Test admin',1681116579256,'554755543',168,'c58b371e-4f43-46aa-8966-33ef5a606601',NULL,_binary '\0','ACTIVE',NULL,1680930294589,'0283849a-5a59-4bc6-a3ed-61ce69cade01','+966554755543','keycloak',5),(183,'+966',NULL,1680930717279,'1_STCS_CUST','anafad@mailinator.com','anafad','MALE',NULL,NULL,NULL,'mmmmm','ahmed',1681209640754,'554755693',168,'8f5bb22a-a700-4f44-80e9-0fe3af24c4b6',NULL,_binary '\0','ACTIVE',NULL,1680930717279,'5b4f4475-6828-455f-8520-91abff0db9e7','+966554755693','keycloak',9),(184,'+20',NULL,1680958997273,'1_STCS_CUST','mhossam-player@mailinator.com','Mahmoud Hossam','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1116008125',57,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1680958997273,'99652fc7-f21c-4c17-afcc-ef14fcb263d3','+201116008125','keycloak',3),(185,'+966',NULL,1681047043461,NULL,'mco2@mco.com','Mahmoud','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'564566788',203,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1681047043461,'21e65bac-5c1b-4888-b610-c122666cbc51','+966564566788','keycloak',2),(186,'+966',NULL,1681117248075,'1_STCS_CUST','refreee@mailinator.com','refreee','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562','cfsdsadfdsfdfdfd','Test admin',1681117983567,'554755631',168,'c58b371e-4f43-46aa-8966-33ef5a606601',NULL,_binary '\0','DISABLED',NULL,1681117248075,'7be640d4-a3c3-4d24-87f3-ab404d08a75a','+966554755631','keycloak',5),(187,'+966',NULL,1681223197068,'1_STCS_CUST','nour_club_admin@mailinator.com','nour shaheen','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'555555544',57,'480c96e0-d6f1-4799-9c0c-6cf228fe0171',NULL,_binary '\0','ACTIVE',NULL,1681223197068,'7880cc0f-d411-4a78-a2c6-28ac34840f1a','+966555555544','keycloak',8),(188,'+966',NULL,1681273179958,'1_STCS_CUST','castt@mailinator.com','castt','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'553255602',168,'aa9b4ad9-af7c-482f-9cff-9d7009ca3ef2','esports/5e1b00f7-6296-4e3b-a51f-aaf5ca8763c5__Screenshot from 2023-01-01 10-31-02.png',_binary '\0','ACTIVE',NULL,1681273179958,'c20247ca-3ac9-4235-8198-54e0cf76d8e2','+966553255602','keycloak',10),(189,'+966',NULL,1681298412613,'1_STCS_CUST','ayman31@mailinator.com','ayman',NULL,NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'566473444',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1681298412613,'6ba47d2e-3133-4726-94ef-f2b4c535b8a9','+966566473444','keycloak',16),(190,'+20',NULL,1681329005363,'1_STCS_CUST','player@test.tes','player','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1234475834',57,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1681329005363,'3432f262-dbf5-4032-94a6-f2a4b6e70628','+201234475834','keycloak',3),(191,'+966',NULL,1681405871887,'1_STCS_CUST','invcrea@mailinator.com','ladlkfasf','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'532323223',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1681405871887,'dd64c0d0-b97a-4b6f-b206-fcc9febd7e60','+966532323223','keycloak',16),(192,'+966','6a82b9c7-6813-4ab8-aa59-0b3d8246b8c7',1681563027050,'1_STCS_CUST','engbassemsalama@gmail.com','adminfull','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'532433545',2,'aae74256-4b00-4fce-a124-7e5049f8273f',NULL,_binary '\0','ACTIVE','6a82b9c7-6813-4ab8-aa59-0b3d8246b8c7',1681563027050,'7bacc8b0-106b-425c-9811-8309eb0e7f40','+966532433545','keycloak',6),(193,'+966',NULL,1681578990590,'1_STCS_CUST','testbassem@mailinator.com','bassem',NULL,NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'545343457',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1681578990590,'04f729d5-f74f-4d3d-89a4-addebec9f63c','+966545343457','keycloak',16),(194,'+966',NULL,1681648691963,NULL,'kareemclub@gmail.com','kareem club','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'557555555',6,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1681648691963,'c7e29356-2b75-4301-a333-32c483707f05','+966557555555','keycloak',2),(195,'+20',NULL,1681667764521,'1_STCS_CUST','referee@esports.com','mahmoud referee',NULL,NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1063306249',57,'c58b371e-4f43-46aa-8966-33ef5a606601',NULL,_binary '\0','ACTIVE',NULL,1681667764521,'3e7273e7-2f8c-47b7-a939-bdfef443cab3','+201063306249','keycloak',5),(196,'+966',NULL,1681670567515,'1_STCS_CUST','game_deveolper@esports.com','mahmoud developer','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'544233132',2,'165cb44d-052d-4ebc-adcd-44d41e2e1df6',NULL,_binary '\0','ACTIVE',NULL,1681670567515,'cfe5fe9a-8d98-420c-aa35-610ecb41dbd2','+966544233132','keycloak',17),(197,'+966',NULL,1681733855858,'1_STCS_CUST','mailinators@mailinator.com','aslkdjfsalfja','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'532377303',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1681733855858,'680b6d8b-c75c-4811-9989-e6d73d9a94d9','+966532377303','keycloak',16),(198,'+966',NULL,1681738732869,'1_STCS_CUST','riadhclubadmin@riadh.com','riadh club admin','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'532743333',NULL,'480c96e0-d6f1-4799-9c0c-6cf228fe0171',NULL,_binary '\0','ACTIVE',NULL,1681738732869,'52513b88-aeea-4b2c-add1-07b9a54f7340','+966532743333','keycloak',8),(199,'+966',NULL,1681739074522,NULL,'riadhclubowner@riadh.com','riadh club owner','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'534333322',195,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1681739074522,'c8d2027a-89ff-4159-b908-8bbcf6884aef','+966534333322','keycloak',2),(200,'+966',NULL,1681824167302,'1_STCS_CUST','contents@mailinator.com','alskfsf','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'532323233',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1681824167302,'b94e9192-861f-4d3d-afc8-1421528258cd','+966532323233','keycloak',16),(201,'+966',NULL,1681854406736,'1_STCS_CUST','clubownli@mailinator.com','lksjdflaka','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'534343444',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1681854406736,'a3d66901-9f1b-46b6-b9d0-f904e5bb8773','+966534343444','keycloak',16),(202,'+966',NULL,1681857321271,'1_STCS_CUST','aymancontent@mailinator.com','ayman',NULL,NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'566546667',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc','esports/996e66db-0ed1-402c-bbf5-5599705376a1__image (1).png',_binary '\0','ACTIVE',NULL,1681857321271,'362f7010-3d77-4be9-8ab0-dd053e895b8c','+966566546667','keycloak',16),(203,'+966',NULL,1681862887486,'1_STCS_CUST','ayman00@mailinator.com','ayman mohammed',NULL,NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'565456757',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1681862887486,'1e4707fe-1f50-460d-a8a6-a5efd224a04b','+966565456757','keycloak',16),(204,'+966',NULL,1681864624215,NULL,'lalklafs@mailinator.com','ldfkjlajksf','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'533434343',3,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1681864624215,'ea4574e5-239a-4b13-b789-41e26af44701','+966533434343','keycloak',2),(205,'+966',NULL,1681929467177,'1_STCS_CUST','playernew@mailinator.com','new player','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'532377305',2,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1681929467177,'f5d32276-0c0c-4791-a274-1b1cdce7c57c','+966532377305','keycloak',3),(206,'+966',NULL,1682506229036,'1_STCS_CUST','club.admin@mahmoud.com','Mahmoud club admin','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'567677777',NULL,'480c96e0-d6f1-4799-9c0c-6cf228fe0171',NULL,_binary '\0','ACTIVE',NULL,1682506229036,'2e5ec101-4096-4a23-98f0-8471045b5dfe','+966567677777','keycloak',8),(207,'+966',NULL,1682512073555,'1_STCS_CUST','ayman0123@mailinator.com','asfasf',NULL,NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'555732424',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1682512073555,'fee82b19-0c9f-4e6f-863d-645922b16d3f','+966555732424','keycloak',16),(208,'+966',NULL,1682521717878,'1_STCS_CUST','newconc@mailinator.com','new very con','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'532344373',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1682521717878,'fdd7b309-36ee-48b2-92b5-23682568a992','+966532344373','keycloak',16),(209,'+966',NULL,1682524477513,'1_STCS_CUST','ossama.admin@mailinator.com','Mohamed Ossama','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'566699663',NULL,'480c96e0-d6f1-4799-9c0c-6cf228fe0171',NULL,_binary '\0','ACTIVE',NULL,1682524477513,'95c23e08-a240-4758-b77e-92c36463cbac','+966566699663','keycloak',8),(210,'+966',NULL,1682610152740,'1_STCS_CUST','newceeee@mailtothis.com','ahmed',NULL,NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'555464664',NULL,'8f4e08c5-f37e-4702-8034-328fd60fd116',NULL,_binary '\0','ACTIVE',NULL,1682610152740,'cd013488-cbee-4690-9b8e-c98337b04d38','+966555464664','keycloak',3),(211,'+966',NULL,1682798436456,'1_STCS_CUST','cad@mailinator.com','mclubadmin','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'534322858',NULL,'480c96e0-d6f1-4799-9c0c-6cf228fe0171',NULL,_binary '\0','ACTIVE',NULL,1682798436456,'cd2e7507-38b5-43b1-8b76-f9fe8d1730f3','+966534322858','keycloak',8),(212,'+966',NULL,1683103331904,'1_STCS_CUST','ahmed222@mailinator.com','ahmed','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'543324246',168,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1683103331904,'cb935816-d83b-4390-ba09-72bc73e68cd6','+966543324246','keycloak',16),(213,'+966',NULL,1683189169194,'1_STCS_CUST','club.admin2@mahmoud.com','Mahmoud club admin','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'565553333',NULL,'480c96e0-d6f1-4799-9c0c-6cf228fe0171',NULL,_binary '\0','ACTIVE',NULL,1683189169194,'589bb9a3-155a-4120-9d4b-3efb973d0bec','+966565553333','keycloak',8),(214,'+966',NULL,1683274593297,'1_STCS_CUST','cadm@mailinator.com','cadm','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'534343434',NULL,'480c96e0-d6f1-4799-9c0c-6cf228fe0171',NULL,_binary '\0','ACTIVE',NULL,1683274593297,'d7c46d18-a8fd-472b-a581-40c593559957','+966534343434','keycloak',8),(215,'+966',NULL,1683363816410,'1_STCS_CUST','content_cre@mailinator.com','conent cre','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'543477404',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1683363816410,'1eb4d3c1-b2ae-4454-9618-70538d41a139','+966543477404','keycloak',16),(216,'+966',NULL,1683363902677,'1_STCS_CUST','content_cre1@mailinator.com','contt cre','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'543466484',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1683363902677,'3c91f85d-cd9c-432b-baaa-1f665844e960','+966543466484','keycloak',16),(217,'+20',NULL,1683544017302,NULL,'gcuSd@clubowner.com','IZbbiuDtLiKQkPJotmdk','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'181785379',58,'f58be026-5b78-4b3f-b906-8f575ff7d4d9',NULL,_binary '\0','ACTIVE',NULL,1683544017302,'6e9f2eca-bb76-4f28-998f-c26fc9b99b96','+20181785379','keycloak',2),(218,'+20',NULL,1683544712317,'1_STCS_CUST','JYA1@contentcreator.com','dGY pcZ','MALE',NULL,NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'120404593',NULL,'e87abdd2-2c64-4a34-ad59-4ca0e6da4bdc',NULL,_binary '\0','ACTIVE',NULL,1683544712317,'f71465d3-e7ce-4b7a-bb21-19f979dc6bf8','+20120404593','keycloak',16),(219,'+966',NULL,1683546351081,'1_STCS_CUST','bplayer@mailinator.com','Bassem pllayer','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'532377304',3,'8f4e08c5-f37e-4702-8034-328fd60fd116','',_binary '\0','ACTIVE',NULL,1683546351081,'4863072d-482d-4732-8cd9-6f3bc9f4c4b6','+966532377304','keycloak',3),(220,'+966','0f54f522-151c-4d27-866c-eae8e99a041b',1683631189657,'1_STCS_CUST','a@cc.cc','user','MALE','EMPLOYEE',NULL,'45f201e0-e1cb-445d-8e5c-19a2f4a8a7c4',NULL,NULL,NULL,'543332221',4,'73055dde-39bc-45ce-be15-bf88b6cdcac9',NULL,_binary '\0','ACTIVE','0f54f522-151c-4d27-866c-eae8e99a041b',1683631189657,'acd3004d-bee1-430d-b925-348842a21121','+966543332221','keycloak',6),(221,'+966','0f54f522-151c-4d27-866c-eae8e99a041b',1683631237135,'1_STCS_CUST','aa@cc.cc','user','MALE','EMPLOYEE',NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'545555555',4,'aae74256-4b00-4fce-a124-7e5049f8273f',NULL,_binary '\0','ACTIVE','0f54f522-151c-4d27-866c-eae8e99a041b',1683631237135,'2f9ad407-b3ef-4937-a7a6-0416ddca0aec','+966545555555','keycloak',6),(226,'+20',NULL,1683822040131,'1_STCS_CUST','mahmoud@mailinator.com','mahmoud','MALE',NULL,NULL,'e588b002-5510-4962-9c7b-eeb607664562',NULL,NULL,NULL,'1010101010',2,'480c96e0-d6f1-4799-9c0c-6cf228fe0171',NULL,_binary '\0','ACTIVE',NULL,1683822040131,'94de672a-edb9-4caa-bd87-ba3a4c1bec3c','+201010101010','keycloak',8),(227,'+966',NULL,1683822175564,NULL,'mahmoud@esports.com','mahmoud','MALE',NULL,NULL,NULL,NULL,NULL,NULL,'514236152',2,'c11f615a-e1ee-4326-a453-ae56688dc504',NULL,_binary '\0','ACTIVE',NULL,1683822175564,'f7a23080-8894-4a10-b9c0-89e48069f7d8','+966514236152','keycloak',2);
/*!40000 ALTER TABLE `user_attributes_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_registration_request`
--

DROP TABLE IF EXISTS `user_registration_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_registration_request` (
  `system_id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`system_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_registration_request`
--

LOCK TABLES `user_registration_request` WRITE;
/*!40000 ALTER TABLE `user_registration_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_registration_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'ADMIN','Admin','ادمن'),(2,'CLUB_OWNER','Club Owner','مالك النادى'),(3,'PLAYER','Player','لاعب'),(4,'COACH','Coach','مدرب'),(5,'REFEREE','Referee','حكم'),(6,'INTERNAL','Internal','داخلى'),(7,'TEAM_MANAGER','Team Manager','مدير الفريق'),(8,'CLUB_ADMIN','Club Admin','أدمن النادى'),(9,'ANALYST','Analyst','محلل'),(10,'CASTER','Caster','معلق'),(11,'HOST','Host','مضيف'),(12,'MEDIA_OUTLET','Media Outlet','جهة إعلامية'),(13,'VIDEO_EDITOR','Video Editor','مضيف'),(14,'GRAPHIC_DESIGNER','Graphic Designer','مصمم جرافيك'),(15,'STREAMER','Streamer','ستريمر'),(16,'CONTENT_CREATOR','Content Creator','صانع محتوى'),(17,'GAME_DEVELOPER','Game Developer','مصمم العاب');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-12 11:44:53
