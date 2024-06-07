-- MariaDB dump 10.19  Distrib 10.6.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lutece
-- ------------------------------------------------------
-- Server version	10.6.17-MariaDB-1:10.6.17+maria~ubu2004

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


create database lutece;

use lutece;

--
-- Table structure for table `accesscontrol_accesscontrol`
--

DROP TABLE IF EXISTS `accesscontrol_accesscontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_accesscontrol` (
  `id_access_control` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enabled` smallint(6) NOT NULL DEFAULT 0,
  `workgroup_key` varchar(255) DEFAULT '',
  `return_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_access_control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_accesscontrol`
--

LOCK TABLES `accesscontrol_accesscontrol` WRITE;
/*!40000 ALTER TABLE `accesscontrol_accesscontrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_accesscontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_accesscontroller`
--

DROP TABLE IF EXISTS `accesscontrol_accesscontroller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_accesscontroller` (
  `id_access_controller` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `id_access_control` int(11) DEFAULT NULL,
  `bool_cond` varchar(50) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`),
  KEY `index_ac_accontroller_id` (`id_access_control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_accesscontroller`
--

LOCK TABLES `accesscontrol_accesscontroller` WRITE;
/*!40000 ALTER TABLE `accesscontrol_accesscontroller` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_accesscontroller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_controller_age_config`
--

DROP TABLE IF EXISTS `accesscontrol_controller_age_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_controller_age_config` (
  `id_access_controller` int(11) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `age_min` int(11) DEFAULT NULL,
  `age_max` int(11) DEFAULT NULL,
  `error_message` varchar(100) DEFAULT NULL,
  `data_handler` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_controller_age_config`
--

LOCK TABLES `accesscontrol_controller_age_config` WRITE;
/*!40000 ALTER TABLE `accesscontrol_controller_age_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_controller_age_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_controller_comment_config`
--

DROP TABLE IF EXISTS `accesscontrol_controller_comment_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_controller_comment_config` (
  `id_access_controller` int(11) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_controller_comment_config`
--

LOCK TABLES `accesscontrol_controller_comment_config` WRITE;
/*!40000 ALTER TABLE `accesscontrol_controller_comment_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_controller_comment_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_controller_tos_config`
--

DROP TABLE IF EXISTS `accesscontrol_controller_tos_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_controller_tos_config` (
  `id_access_controller` int(11) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `error_message` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_controller_tos_config`
--

LOCK TABLES `accesscontrol_controller_tos_config` WRITE;
/*!40000 ALTER TABLE `accesscontrol_controller_tos_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_controller_tos_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_controller_user_code_config`
--

DROP TABLE IF EXISTS `accesscontrol_controller_user_code_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_controller_user_code_config` (
  `id_access_controller` int(11) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `error_message` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_controller_user_code_config`
--

LOCK TABLES `accesscontrol_controller_user_code_config` WRITE;
/*!40000 ALTER TABLE `accesscontrol_controller_user_code_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_controller_user_code_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_controller_user_code_data`
--

DROP TABLE IF EXISTS `accesscontrol_controller_user_code_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_controller_user_code_data` (
  `userId` varchar(100) NOT NULL,
  `id_access_control` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `date_validity` date DEFAULT NULL,
  PRIMARY KEY (`userId`,`id_access_control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_controller_user_code_data`
--

LOCK TABLES `accesscontrol_controller_user_code_data` WRITE;
/*!40000 ALTER TABLE `accesscontrol_controller_user_code_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_controller_user_code_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_forms_controller_entrytype_datahandler_config`
--

DROP TABLE IF EXISTS `accesscontrol_forms_controller_entrytype_datahandler_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_forms_controller_entrytype_datahandler_config` (
  `id_access_controller` int(11) NOT NULL,
  `code_question` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_access_controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_forms_controller_entrytype_datahandler_config`
--

LOCK TABLES `accesscontrol_forms_controller_entrytype_datahandler_config` WRITE;
/*!40000 ALTER TABLE `accesscontrol_forms_controller_entrytype_datahandler_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_forms_controller_entrytype_datahandler_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accesscontrol_resource_accesscontrol`
--

DROP TABLE IF EXISTS `accesscontrol_resource_accesscontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesscontrol_resource_accesscontrol` (
  `id_resource` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `id_access_control` int(11) NOT NULL,
  PRIMARY KEY (`id_resource`,`resource_type`,`id_access_control`),
  KEY `index_ac_accontroller_resource` (`id_resource`,`resource_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontrol_resource_accesscontrol`
--

LOCK TABLES `accesscontrol_resource_accesscontrol` WRITE;
/*!40000 ALTER TABLE `accesscontrol_resource_accesscontrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesscontrol_resource_accesscontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_item`
--

DROP TABLE IF EXISTS `archive_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archive_item` (
  `id_archive_item` int(11) NOT NULL DEFAULT 0,
  `folder_to_archive` varchar(255) DEFAULT NULL,
  `archive_destination` varchar(255) DEFAULT NULL,
  `archive_name` varchar(255) DEFAULT NULL,
  `archive_type` varchar(50) DEFAULT NULL,
  `archive_mime_type` varchar(50) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_archive_item`),
  KEY `archive_item_state_idx` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_item`
--

LOCK TABLES `archive_item` WRITE;
/*!40000 ALTER TABLE `archive_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blobstore_blobstore`
--

DROP TABLE IF EXISTS `blobstore_blobstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blobstore_blobstore` (
  `id_blob` varchar(255) NOT NULL DEFAULT '',
  `blob_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_blob`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blobstore_blobstore`
--

LOCK TABLES `blobstore_blobstore` WRITE;
/*!40000 ALTER TABLE `blobstore_blobstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `blobstore_blobstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL DEFAULT 0,
  `description` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) NOT NULL DEFAULT 'all',
  `hits` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Contact 1','adresse_email_du_contact_1@domaine.com','all',0),(2,'Contact 2','adresse_email_du_contact_2@domaine.com','all',0);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_list`
--

DROP TABLE IF EXISTS `contact_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_list` (
  `id_contact_list` int(11) NOT NULL DEFAULT 0,
  `label_contact_list` varchar(50) NOT NULL DEFAULT '',
  `description_contact_list` varchar(255) NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) NOT NULL DEFAULT 'all',
  `role` varchar(50) NOT NULL DEFAULT 'none',
  `contact_list_order` int(11) NOT NULL DEFAULT 0,
  `is_tos_active` smallint(6) NOT NULL DEFAULT 0,
  `tos_message` mediumtext NOT NULL,
  PRIMARY KEY (`id_contact_list`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_list`
--

LOCK TABLES `contact_list` WRITE;
/*!40000 ALTER TABLE `contact_list` DISABLE KEYS */;
INSERT INTO `contact_list` VALUES (1,'Liste de contacts','Ceci est une liste de contacts','all','none',1,0,'');
/*!40000 ALTER TABLE `contact_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_list_contact`
--

DROP TABLE IF EXISTS `contact_list_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_list_contact` (
  `id_contact_list` int(11) NOT NULL DEFAULT 0,
  `id_contact` int(11) NOT NULL DEFAULT 0,
  `contact_order` int(11) NOT NULL DEFAULT 0,
  `hits` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_contact_list`,`id_contact`,`contact_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_list_contact`
--

LOCK TABLES `contact_list_contact` WRITE;
/*!40000 ALTER TABLE `contact_list_contact` DISABLE KEYS */;
INSERT INTO `contact_list_contact` VALUES (1,1,1,0),(1,2,2,0);
/*!40000 ALTER TABLE `contact_list_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_dashboard`
--

DROP TABLE IF EXISTS `core_admin_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_dashboard` (
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_dashboard`
--

LOCK TABLES `core_admin_dashboard` WRITE;
/*!40000 ALTER TABLE `core_admin_dashboard` DISABLE KEYS */;
INSERT INTO `core_admin_dashboard` VALUES ('autoIncludesAdminDashboardComponent',1,4),('editorAdminDashboardComponent',1,3),('featuresAdminDashboardComponent',1,5),('myluteceAuthenticationFilterAdminDashboardComponent',1,3),('searchAdminDashboardComponent',1,2),('usersAdminDashboardComponent',1,1),('workflowAdminDashboardComponent',1,1),('xslExportAdminDashboardComponent',1,6);
/*!40000 ALTER TABLE `core_admin_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_mailinglist`
--

DROP TABLE IF EXISTS `core_admin_mailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_mailinglist` (
  `id_mailinglist` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `workgroup` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mailinglist`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_mailinglist`
--

LOCK TABLES `core_admin_mailinglist` WRITE;
/*!40000 ALTER TABLE `core_admin_mailinglist` DISABLE KEYS */;
INSERT INTO `core_admin_mailinglist` VALUES (1,'admin','admin','all');
/*!40000 ALTER TABLE `core_admin_mailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_mailinglist_filter`
--

DROP TABLE IF EXISTS `core_admin_mailinglist_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_mailinglist_filter` (
  `id_mailinglist` int(11) NOT NULL DEFAULT 0,
  `workgroup` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mailinglist`,`workgroup`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_mailinglist_filter`
--

LOCK TABLES `core_admin_mailinglist_filter` WRITE;
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` DISABLE KEYS */;
INSERT INTO `core_admin_mailinglist_filter` VALUES (1,'all','super_admin');
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_right`
--

DROP TABLE IF EXISTS `core_admin_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_right` (
  `id_right` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `level_right` smallint(6) DEFAULT NULL,
  `admin_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_updatable` int(11) NOT NULL DEFAULT 0,
  `plugin_name` varchar(50) DEFAULT NULL,
  `id_feature_group` varchar(50) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `documentation_url` varchar(255) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `is_external_feature` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_right`),
  KEY `index_right` (`level_right`,`admin_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_right`
--

LOCK TABLES `core_admin_right` WRITE;
/*!40000 ALTER TABLE `core_admin_right` DISABLE KEYS */;
INSERT INTO `core_admin_right` VALUES ('ACCESSCONTROL_MANAGEMENT','accesscontrol.adminFeature.ManageAccessControl.name',1,'jsp/admin/plugins/accesscontrol/ManageAccessControls.jsp','accesscontrol.adminFeature.ManageAccessControl.description',0,'accesscontrol',NULL,NULL,NULL,6,0),('ACCESSRULES_MANAGEMENT','myluteceaccessrules.adminFeature.ManageRules.name',0,'jsp/admin/plugins/myluteceaccessrules/ManageRules.jsp','myluteceaccessrules.adminFeature.ManageRules.description',0,'myluteceaccessrules',NULL,NULL,NULL,14,0),('ADMINAVATAR_MANAGEMENT','adminavatar.adminFeature.ManageAdminAvatar.name',3,'jsp/admin/plugins/adminavatar/ManageAdminAvatar.jsp','adminavatar.adminFeature.ManageAdminAvatar.description',0,'adminavatar',NULL,NULL,NULL,7,0),('BREADCRUMBACCORDION_MANAGEMENT','module.forms.breadcrumbaccordion.adminFeature.manageBreadcrumbAccordion.name',1,'jsp/admin/plugins/forms/modules/breadcrumbaccordion/ManageBreadcrumbAccordion.jsp','module.forms.breadcrumbaccordion.adminFeature.manageBreadcrumbAccordion.description',0,'forms-breadcrumbaccordion','SITE',NULL,NULL,4,0),('CONFIG_DOCUMENT_PRODUCER_MANAGEMENT','module.forms.documentproducer.adminFeature.ManageConfigDocumentProducer.name',1,'jsp/admin/plugins/forms/modules/documentproducer/ManageConfigProducer.jsp?view=getSelectForm','module.forms.documentproducer.adminFeature.ManageConfigDocumentProducer.description',0,'forms-documentproducer',NULL,NULL,NULL,4,0),('CONTACT_MANAGEMENT','contact.adminFeature.contact_management.name',3,'jsp/admin/plugins/contact/ManageContactsHome.jsp','contact.adminFeature.contact_management.description',0,'contact',NULL,NULL,NULL,8,0),('CORE_ADMIN_SITE','portal.site.adminFeature.admin_site.name',2,'jsp/admin/site/AdminSite.jsp','portal.site.adminFeature.admin_site.description',1,NULL,'SITE','ti ti-home-edit','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-site',1,0),('CORE_ADMINDASHBOARD_MANAGEMENT','portal.admindashboard.adminFeature.right_management.name',0,NULL,'portal.admindashboard.adminFeature.right_management.description',0,'','SYSTEM','ti ti-dashboard',NULL,8,0),('CORE_CACHE_MANAGEMENT','portal.system.adminFeature.cache_management.name',0,'jsp/admin/system/ManageCaches.jsp','portal.system.adminFeature.cache_management.description',1,'','SYSTEM','ti ti-clock-edit',NULL,1,0),('CORE_DAEMONS_MANAGEMENT','portal.system.adminFeature.daemons_management.name',0,'jsp/admin/system/ManageDaemons.jsp','portal.system.adminFeature.daemons_management.description',0,'','SYSTEM','ti ti-timeline-event',NULL,7,0),('CORE_DASHBOARD_MANAGEMENT','portal.dashboard.adminFeature.dashboard_management.name',0,NULL,'portal.dashboard.adminFeature.dashboard_management.description',0,'','SYSTEM','ti ti-layout-dashboard',NULL,9,0),('CORE_EDITORS_MANAGEMENT','portal.admindashboard.editorManagement.right.name',2,NULL,'portal.admindashboard.editorManagement.right.description',1,'','SYSTEM','ti ti-tools',NULL,10,0),('CORE_FEATURES_MANAGEMENT','portal.admin.adminFeature.features_management.name',0,NULL,'portal.admin.adminFeature.features_management.description',0,'','SYSTEM','ti ti-apps',NULL,6,0),('CORE_LEVEL_RIGHT_MANAGEMENT','portal.users.adminFeature.level_right_management.name',2,NULL,'portal.users.adminFeature.level_right_management.description',0,'','MANAGERS','ti ti-list-detail',NULL,4,0),('CORE_LINK_SERVICE_MANAGEMENT','portal.insert.adminFeature.linkService_management.name',2,NULL,'portal.insert.adminFeature.linkService_management.description',0,NULL,NULL,'ti ti-link',NULL,1,0),('CORE_LOGS_VISUALISATION','portal.system.adminFeature.logs_visualisation.name',0,'jsp/admin/system/ManageFilesSystem.jsp','portal.system.adminFeature.logs_visualisation.description',1,'','SYSTEM','ti ti-list-search',NULL,4,0),('CORE_MAILINGLISTS_MANAGEMENT','portal.mailinglist.adminFeature.mailinglists_management.name',2,'jsp/admin/mailinglist/ManageMailingLists.jsp','portal.mailinglist.adminFeature.mailinglists_management.description',0,'','MANAGERS','ti ti-mail-cog',NULL,5,0),('CORE_PAGE_TEMPLATE_MANAGEMENT','portal.style.adminFeature.page_template_management.name',0,'jsp/admin/style/ManagePageTemplates.jsp','portal.style.adminFeature.page_template_management.description',0,'','STYLE','ti ti-layout-board',NULL,1,0),('CORE_PLUGINS_MANAGEMENT','portal.system.adminFeature.plugins_management.name',0,'jsp/admin/system/ManagePlugins.jsp','portal.system.adminFeature.plugins_management.description',1,'','SYSTEM','ti ti-apps-filled',NULL,5,0),('CORE_PROPERTIES_MANAGEMENT','portal.site.adminFeature.properties_management.name',2,'jsp/admin/ManageProperties.jsp','portal.site.adminFeature.properties_management.description',0,NULL,'SITE','ti ti-checklist','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-properties',2,0),('CORE_RBAC_MANAGEMENT','portal.rbac.adminFeature.rbac_management.name',0,'jsp/admin/rbac/ManageRoles.jsp','portal.rbac.adminFeature.rbac_management.description',0,'','MANAGERS','ti ti-user-check',NULL,1,0),('CORE_RIGHT_MANAGEMENT','portal.users.adminFeature.right_management.name',0,'jsp/admin/features/ManageRights.jsp','portal.users.adminFeature.right_management.description',0,'','MANAGERS','ti ti-gavel',NULL,6,0),('CORE_ROLES_MANAGEMENT','portal.role.adminFeature.roles_management.name',2,'jsp/admin/role/ManagePageRole.jsp','portal.role.adminFeature.roles_management.description',0,'','MANAGERS','ti ti-list-check',NULL,8,0),('CORE_SEARCH_INDEXATION','portal.search.adminFeature.indexer.name',0,'jsp/admin/search/ManageSearchIndexation.jsp','portal.search.adminFeature.indexer.description',0,'','SYSTEM','ti ti-settings-search',NULL,2,0),('CORE_SEARCH_MANAGEMENT','portal.search.adminFeature.search_management.name',0,NULL,'portal.search.adminFeature.search_management.description',0,'','SYSTEM','ti ti-database-search',NULL,3,0),('CORE_STYLES_MANAGEMENT','portal.style.adminFeature.styles_management.name',0,'jsp/admin/style/ManageStyles.jsp','portal.style.adminFeature.styles_management.description',1,'','STYLE','ti ti-brush',NULL,3,0),('CORE_STYLESHEET_MANAGEMENT','portal.style.adminFeature.stylesheet_management.name',0,'jsp/admin/style/ManageStyleSheets.jsp','portal.style.adminFeature.stylesheet_management.description',1,'','STYLE','ti ti-file-code',NULL,2,0),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT','portal.templates.adminFeature.ManageAutoIncludes.name',1,NULL,'portal.templates.adminFeature.ManageAutoIncludes.description',1,'','STYLE','ti ti-code-circle-2',NULL,4,0),('CORE_USERS_MANAGEMENT','portal.users.adminFeature.users_management.name',2,'jsp/admin/user/ManageUsers.jsp','portal.users.adminFeature.users_management.description',1,'','MANAGERS','ti ti-users',NULL,2,0),('CORE_WORKGROUPS_MANAGEMENT','portal.workgroup.adminFeature.workgroups_management.name',2,'jsp/admin/workgroup/ManageWorkgroups.jsp','portal.workgroup.adminFeature.workgroups_management.description',0,'','MANAGERS','ti ti-users-group',NULL,3,0),('CORE_XSL_EXPORT_MANAGEMENT','portal.xsl.adminFeature.xsl_export_management.name',2,NULL,'portal.xsl.adminFeature.xsl_export_management.description',1,'','SYSTEM','ti ti-file-export',NULL,11,0),('ELASTICDATA_MANAGEMENT','elasticdata.adminFeature.ManageElasticData.name',1,'jsp/admin/plugins/elasticdata/ManageElasticData.jsp','elasticdata.adminFeature.ManageElasticData.description',0,'elasticdata',NULL,NULL,NULL,4,0),('ENTRY_TYPE_MANAGEMENT','genericattributes.adminFeature.manageEntryType.name',1,'jsp/admin/plugins/genericattributes/ManageEntryType.jsp','genericattributes.adminFeature.manageEntryType.description',0,'genericattributes',NULL,NULL,NULL,4,0),('FORMS_CATEGORIES','forms.adminFeature.categoriesForms.name',1,'jsp/admin/plugins/forms/ManageFormsCategories.jsp','forms.adminFeature.categoriesForms.description',0,'forms','APPLICATIONS',NULL,NULL,5,0),('FORMS_MANAGEMENT','forms.adminFeature.manageForms.name',2,'jsp/admin/plugins/forms/ManageForms.jsp','forms.adminFeature.manageForms.description',0,'forms','APPLICATIONS',NULL,NULL,3,0),('FORMS_MULTIVIEW','forms.adminFeature.multiviewForms.name',3,'jsp/admin/plugins/forms/MultiviewForms.jsp','forms.adminFeature.multiviewForms.description',0,'forms','APPLICATIONS',NULL,NULL,2,0),('FORMS_QUESTION_EXPORT_ORDER_MANAGEMENT','forms.adminFeature.manageFormsQuestions.name',1,'jsp/admin/plugins/forms/ManageOrderExportableQuestion.jsp','forms.adminFeature.manageFormsQuestion.description',0,'forms','APPLICATIONS',NULL,NULL,4,0),('HTMLPAGE_MANAGEMENT','htmlpage.adminFeature.htmlpage_management.name',2,'jsp/admin/plugins/htmlpage/ManageHtmlPage.jsp','htmlpage.adminFeature.htmlpage_management.description',0,'htmlpage','SITE',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-htmlpage',3,0),('MATOMO_MANAGEMENT','matomo.adminFeature.ManageMatomo.name',2,'jsp/admin/plugins/matomo/Matomo.jsp','matomo.adminFeature.ManageMatomo.description',0,'matomo','SITE',NULL,NULL,5,0),('MODULENOTIFYGRUMAPPINGMANAGER_MANAGEMENT','modulenotifygrumappingmanager.adminFeature.ManageModulenotifygrumappingmanager.name',0,'jsp/admin/plugins/modulenotifygrumappingmanager/ManageNotifygruMappingManagers.jsp','modulenotifygrumappingmanager.adminFeature.ManageModulenotifygrumappingmanager.description',0,'modulenotifygrumappingmanager',NULL,NULL,NULL,9,0),('MYLUTECE_CACHEUSERATTRIBUTE_MANAGEMENT','module.mylutece.cacheuserattribute.adminFeature.ManageCacheUserAttribute.name',1,'jsp/admin/plugins/mylutece/modules/cacheuserattribute/ManageCacheUserAttributes.jsp','module.mylutece.cacheuserattribute.adminFeature.ManageCacheUserAttribute.description',0,'mylutece-cacheuserattribute',NULL,NULL,NULL,13,0),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER','mylutece.adminFeature.mylutece_management_authentication_filter.name',3,'jsp/admin/plugins/mylutece/security/ManageAuthenticationFilter.jsp','mylutece.adminFeature.mylutece_management_authentication_filter.description',0,'mylutece',NULL,NULL,NULL,12,0),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION','mylutece.adminFeature.mylutece_management_external_application.name',3,'jsp/admin/plugins/mylutece/ManageExternalApplicationUser.jsp','mylutece.adminFeature.mylutece_management_external_application.description',0,'mylutece',NULL,NULL,NULL,11,0),('MYLUTECE_MANAGEMENT','mylutece.adminFeature.mylutece_management.name',2,'jsp/admin/plugins/mylutece/ManageMylutece.jsp','mylutece.adminFeature.mylutece_management.description',0,'mylutece',NULL,NULL,NULL,10,0),('POLL_MANAGEMENT','poll.adminFeature.Manage.name',1,'jsp/admin/plugins/poll/ManagePollForms.jsp','poll.adminFeature.Manage.description',0,'poll',NULL,NULL,NULL,15,0),('PROFILES_MANAGEMENT','profiles.adminFeature.profiles_management.name',0,'jsp/admin/plugins/profiles/ManageProfiles.jsp','profiles.adminFeature.profiles_management.description',0,'profiles','USERS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-profiles',1,0),('PROFILES_VIEWS_MANAGEMENT','profiles.adminFeature.views_management.name',0,'jsp/admin/plugins/profiles/ManageViews.jsp','profiles.adminFeature.views_management.description',0,'profiles','USERS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-profiles',2,0),('REFERENCELIST_MANAGEMENT','referencelist.adminFeature.ReferenceListManage.name',0,'jsp/admin/plugins/referencelist/ManageReferences.jsp','referencelist.adminFeature.ReferenceListManage.description',0,'referencelist',NULL,NULL,NULL,16,0),('REGULAR_EXPRESSION_MANAGEMENT','regularexpression.adminFeature.regularexpression_management.name',0,'jsp/admin/plugins/regularexpression/ManageRegularExpression.jsp','regularexpression.adminFeature.regularexpression_management.description',0,'regularexpression','SYSTEM',NULL,NULL,16,0),('SEO_MANAGEMENT','seo.adminFeature.seo_management.name',0,'jsp/admin/plugins/seo/ManageSEO.jsp','seo.adminFeature.seo_management.description',0,'seo',NULL,NULL,NULL,17,0),('SOLR_CONFIGURATION_MANAGEMENT','search.solr.adminFeature.configuration.title',1,'jsp/admin/search/solr/ManageSearchConfiguration.jsp','search.solr.adminFeature.configuration.description',0,'solr','SYSTEM',NULL,'',14,0),('SOLR_FIELDS_MANAGEMENT','search.solr.adminFeature.fields.title',1,'jsp/admin/search/solr/ManageSolrFields.jsp','search.solr.adminFeature.fields.description',0,'solr','SYSTEM',NULL,'',15,0),('SOLR_INDEX_MANAGEMENT','search.solr.adminFeature.title',1,'jsp/admin/search/solr/ManageSearchIndexation.jsp','search.solr.adminFeature.description',0,'solr','SYSTEM',NULL,'',13,0),('SYSTEMINFO_MANAGEMENT','systeminfo.adminFeature.systeminfo_management.name',0,'jsp/admin/plugins/systeminfo/ManageSystemInfo.jsp','systeminfo.adminFeature.systeminfo_management.description',0,'systeminfo','SYSTEM',NULL,NULL,17,0),('TEMPLATE_STEP_MANAGEMENT','module.forms.template.adminFeature.manageTemplates.name',1,'jsp/admin/plugins/forms/modules/template/ManageTemplatesStep.jsp','module.forms.template.adminFeature.manageTemplates.description',0,'forms-template','MANAGERS',NULL,NULL,4,0),('TERMOFSERVICE_MANAGEMENT','termofservice.adminFeature.ManageTOS.name',0,'jsp/admin/plugins/termofservice/ManageEntrys.jsp','termofservice.adminFeature.ManageTOS.description',0,'termofservice',NULL,NULL,NULL,18,0),('UNITS_MANAGEMENT','unittree.adminFeature.unitsManagement.name',2,'jsp/admin/plugins/unittree/ManageUnits.jsp','unittree.adminFeature.unitsManagement.description',0,'unittree','SYSTEM',NULL,'',18,0),('USERCODES_MANAGEMENT','accesscontrol.adminFeature.ManageUserCodes.name',1,'jsp/admin/plugins/accesscontrol/ManageControllerUserCode.jsp','accesscontrol.adminFeature.ManageUserCodes.description',0,'accesscontrol',NULL,NULL,NULL,4,0),('VERIFYBACKURL_MANAGEMENT','verifybackurl.adminFeature.ManageVerifybackurl.name',1,'jsp/admin/plugins/verifybackurl/ManageAuthorizedUrls.jsp','verifybackurl.adminFeature.ManageVerifybackurl.description',0,'verifybackurl',NULL,NULL,NULL,19,0),('VIEW_TEMP_FILES','filegenerator.adminFeature.temporary_files.name',2,'jsp/admin/plugins/filegenerator/ManageMyFiles.jsp','filegenerator.adminFeature.temporary_files.description',0,NULL,'SYSTEM',NULL,NULL,3,0),('WORKFLOW_MANAGEMENT','workflow.adminFeature.workflow_management.name',3,'jsp/admin/plugins/workflow/ManageWorkflow.jsp','workflow.adminFeature.workflow_management.description',0,'workflow','APPLICATIONS',NULL,NULL,1,0);
/*!40000 ALTER TABLE `core_admin_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_role`
--

DROP TABLE IF EXISTS `core_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_role` (
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `role_description` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role`
--

LOCK TABLES `core_admin_role` WRITE;
/*!40000 ALTER TABLE `core_admin_role` DISABLE KEYS */;
INSERT INTO `core_admin_role` VALUES ('all_site_manager','Site Manager'),('assign_groups','Assigner des groupes aux utilisateurs'),('assign_roles','Assigner des roles aux utilisateurs'),('CREATE_REFERENCE_IMPORT','Import csv file'),('forms_manager','FORMS - Gestion des formulaires'),('forms_multiview','FORMS - Visualisation des rÃ©sultats des formulaires'),('kibana_dashboards_manager','Gestion des tableaux de bords Kibana'),('mylutece_manager','GÃ©rer les patramÃ¨tres avancÃ©s Mylutece'),('profiles_manager','Profiles management'),('profiles_views_manager','Profiles Views management'),('sollicitation_administrateur','[Sollicitation] Organisation Sollicitations'),('sollicitation_gestionnaires','[Sollicitation] - Gestionnaires des sollicitations'),('sollicitation_instructeurs','[Sollicitation] - Visualisation et traitement des rÃ©ponses'),('super_admin','Super Administrateur'),('unittree_management','Gestion des entitÃ©s'),('workflow_manager','Workflow management');
/*!40000 ALTER TABLE `core_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_role_resource`
--

DROP TABLE IF EXISTS `core_admin_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_role_resource` (
  `rbac_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `resource_type` varchar(50) NOT NULL DEFAULT '',
  `resource_id` varchar(50) NOT NULL DEFAULT '',
  `permission` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rbac_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1931 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role_resource`
--

LOCK TABLES `core_admin_role_resource` WRITE;
/*!40000 ALTER TABLE `core_admin_role_resource` DISABLE KEYS */;
INSERT INTO `core_admin_role_resource` VALUES (1,'all_site_manager','PAGE','*','VIEW'),(2,'all_site_manager','PAGE','*','MANAGE'),(3,'super_admin','INSERT_SERVICE','*','*'),(4,'all_site_manager','PORTLET_TYPE','*','*'),(5,'all_site_manager','ADMIN_USER','*','*'),(6,'all_site_manager','SEARCH_SERVICE','*','*'),(7,'all_site_manager','XSL_EXPORT','*','*'),(1907,'forms_manager','FORMS_FORM','*','*'),(1908,'forms_multiview','FORM_PANEL_CONF','*','*'),(1909,'forms_manager','GLOBAL_FORMS_ACTION','',''),(1910,'kibana_dashboards_manager','kibana_dashboard','*','*'),(205,'assign_roles','ROLE_TYPE','*','ASSIGN_ROLE'),(207,'mylutece_manager','MYLUTECE','*','*'),(150,'profiles_manager','PROFILES','*','*'),(151,'profiles_views_manager','PROFILES_VIEWS','*','*'),(165,'CREATE_REFERENCE_IMPORT','REFERENCE_IMPORT','*','*'),(210,'unittree_management','UNIT_TYPE','*','*'),(912,'workflow_manager','WORKFLOW_ACTION_TYPE','*','*'),(923,'workflow_manager','WORKFLOW_STATE_TYPE','*','*'),(1911,'sollicitation_instructeurs','FORMS_FORM','1','VIEW_FORM_RESPONSE'),(1912,'sollicitation_instructeurs','FORM_PANEL_CONF','forms-unittree','*'),(1913,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','5','*'),(1914,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','6','*'),(1915,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','4','*'),(1916,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','10','*'),(1917,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','3','*'),(1918,'sollicitation_instructeurs','WORKFLOW_STATE_TYPE','1','*'),(1919,'sollicitation_instructeurs','WORKFLOW_STATE_TYPE','2','*'),(1920,'sollicitation_instructeurs','WORKFLOW_STATE_TYPE','4','*'),(1921,'sollicitation_gestionnaires','FORMS_FORM','1','MODIFY'),(1922,'sollicitation_gestionnaires','FORMS_FORM','1','PARAM'),(1923,'sollicitation_gestionnaires','FORMS_FORM','1','PUBLISH'),(1924,'sollicitation_gestionnaires','FORM_PANEL_CONF','forms-unittree-subunit','*'),(1925,'sollicitation_gestionnaires','WORKFLOW_ACTION_TYPE','2','*'),(1926,'sollicitation_gestionnaires','WORKFLOW_STATE_TYPE','3','*'),(1927,'sollicitation_administrateur','FORMS_FORM','1','DELETE'),(1928,'sollicitation_administrateur','FORMS_FORM','1','CREATE'),(1929,'sollicitation_administrateur','GLOBAL_FORMS_ACTION','multiviewconfig','*'),(1930,'sollicitation_administrateur','GLOBAL_FORMS_ACTION','multiviewExport','*');
/*!40000 ALTER TABLE `core_admin_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user`
--

DROP TABLE IF EXISTS `core_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `access_code` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT 0,
  `password` mediumtext DEFAULT NULL,
  `locale` varchar(10) NOT NULL DEFAULT 'fr',
  `level_user` smallint(6) NOT NULL DEFAULT 0,
  `reset_password` smallint(6) NOT NULL DEFAULT 0,
  `accessibility_mode` smallint(6) NOT NULL DEFAULT 0,
  `password_max_valid_date` timestamp NULL DEFAULT NULL,
  `account_max_valid_date` bigint(20) DEFAULT NULL,
  `nb_alerts_sent` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `workgroup_key` varchar(50) DEFAULT 'all',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user`
--

LOCK TABLES `core_admin_user` WRITE;
/*!40000 ALTER TABLE `core_admin_user` DISABLE KEYS */;
INSERT INTO `core_admin_user` VALUES (1,'admin','Admin','admin','admin@lutece.fr',0,'PLAINTEXT:adminadmin','fr',0,0,0,'1980-01-01 00:00:00',NULL,0,'1980-01-01 00:00:00','all');
/*!40000 ALTER TABLE `core_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_anonymize_field`
--

DROP TABLE IF EXISTS `core_admin_user_anonymize_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_anonymize_field` (
  `field_name` varchar(100) NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_anonymize_field`
--

LOCK TABLES `core_admin_user_anonymize_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` DISABLE KEYS */;
INSERT INTO `core_admin_user_anonymize_field` VALUES ('access_code',1),('email',1),('first_name',1),('last_name',1);
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_field`
--

DROP TABLE IF EXISTS `core_admin_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_field` (
  `id_user_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `user_field_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user_field`),
  KEY `core_admin_user_field_idx_file` (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_field`
--

LOCK TABLES `core_admin_user_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_preferences`
--

DROP TABLE IF EXISTS `core_admin_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_preferences` (
  `id_user` varchar(100) NOT NULL,
  `pref_key` varchar(100) NOT NULL,
  `pref_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_admin_user_preferences` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_preferences`
--

LOCK TABLES `core_admin_user_preferences` WRITE;
/*!40000 ALTER TABLE `core_admin_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_workgroup`
--

DROP TABLE IF EXISTS `core_admin_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_workgroup` (
  `workgroup_key` varchar(50) NOT NULL,
  `workgroup_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_workgroup`
--

LOCK TABLES `core_admin_workgroup` WRITE;
/*!40000 ALTER TABLE `core_admin_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_workgroup_user`
--

DROP TABLE IF EXISTS `core_admin_workgroup_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_workgroup_user` (
  `workgroup_key` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`workgroup_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_workgroup_user`
--

LOCK TABLES `core_admin_workgroup_user` WRITE;
/*!40000 ALTER TABLE `core_admin_workgroup_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attribute`
--

DROP TABLE IF EXISTS `core_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_attribute` (
  `id_attribute` int(11) NOT NULL AUTO_INCREMENT,
  `type_class_name` varchar(255) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_shown_in_search` smallint(6) DEFAULT 0,
  `is_shown_in_result_list` smallint(6) DEFAULT 0,
  `is_field_in_line` smallint(6) DEFAULT 0,
  `attribute_position` int(11) DEFAULT 0,
  `plugin_name` varchar(255) DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attribute`
--

LOCK TABLES `core_attribute` WRITE;
/*!40000 ALTER TABLE `core_attribute` DISABLE KEYS */;
INSERT INTO `core_attribute` VALUES (1,'fr.paris.lutece.portal.business.user.attribute.AttributeComboBox','Profil','',0,0,0,0,0,'profiles',NULL);
/*!40000 ALTER TABLE `core_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attribute_field`
--

DROP TABLE IF EXISTS `core_attribute_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_attribute_field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `DEFAULT_value` mediumtext DEFAULT NULL,
  `is_DEFAULT_value` smallint(6) DEFAULT 0,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT 0,
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attribute_field`
--

LOCK TABLES `core_attribute_field` WRITE;
/*!40000 ALTER TABLE `core_attribute_field` DISABLE KEYS */;
INSERT INTO `core_attribute_field` VALUES (1,1,NULL,NULL,0,0,0,0,1,1);
/*!40000 ALTER TABLE `core_attribute_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_connections_log`
--

DROP TABLE IF EXISTS `core_connections_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_connections_log` (
  `access_code` varchar(100) DEFAULT NULL,
  `ip_address` varchar(63) DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_status` int(11) DEFAULT NULL,
  KEY `index_connections_log` (`ip_address`,`date_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_connections_log`
--

LOCK TABLES `core_connections_log` WRITE;
/*!40000 ALTER TABLE `core_connections_log` DISABLE KEYS */;
INSERT INTO `core_connections_log` VALUES ('admin','172.22.0.1','2024-03-08 13:48:10',0),('admin','172.22.0.1','2024-03-08 13:48:15',0),('admin','172.22.0.1','2024-03-12 13:57:24',0);
/*!40000 ALTER TABLE `core_connections_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_dashboard`
--

DROP TABLE IF EXISTS `core_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_dashboard` (
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_dashboard`
--

LOCK TABLES `core_dashboard` WRITE;
/*!40000 ALTER TABLE `core_dashboard` DISABLE KEYS */;
INSERT INTO `core_dashboard` VALUES ('CORE_PAGES',2,1),('CORE_SYSTEM',1,2),('CORE_USER',4,1),('CORE_USERS',1,1),('FORMS',3,2),('WORKFLOW',3,1);
/*!40000 ALTER TABLE `core_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_datastore`
--

DROP TABLE IF EXISTS `core_datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_datastore` (
  `entity_key` varchar(255) NOT NULL,
  `entity_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`entity_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_datastore`
--

LOCK TABLES `core_datastore` WRITE;
/*!40000 ALTER TABLE `core_datastore` DISABLE KEYS */;
INSERT INTO `core_datastore` VALUES ('adminavatar.site_property.avatarserver.Url',''),('captcha.defaultProvider','JCaptcha'),('core_banned_domain_names','yopmail.com'),('core.advanced_parameters.access_failures_captcha','1'),('core.advanced_parameters.access_failures_interval','10'),('core.advanced_parameters.access_failures_max','3'),('core.advanced_parameters.account_life_time','12'),('core.advanced_parameters.account_reactivated_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.account_reactivated_mail_subject','Votre compte a bien Ã©tÃ© rÃ©activÃ©'),('core.advanced_parameters.default_user_language','fr'),('core.advanced_parameters.default_user_level','0'),('core.advanced_parameters.default_user_notification','1'),('core.advanced_parameters.default_user_status','0'),('core.advanced_parameters.email_pattern','^[\\w_.\\-!\\#\\$\\%\\&\'\\*\\+\\/\\=\\?\\^\\\\}\\{\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$'),('core.advanced_parameters.email_pattern_verify_by',''),('core.advanced_parameters.expired_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.expired_alert_mail_subject','Votre compte a expirÃ©'),('core.advanced_parameters.first_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.first_alert_mail_subject','Votre compte va bientÃ´t expirer'),('core.advanced_parameters.force_change_password_reinit','false'),('core.advanced_parameters.lock_reset_token_to_session','false'),('core.advanced_parameters.maximum_number_password_change',''),('core.advanced_parameters.nb_alert_account','2'),('core.advanced_parameters.notify_user_password_expired',''),('core.advanced_parameters.other_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.other_alert_mail_subject','Votre compte va bientÃ´t expirer'),('core.advanced_parameters.password_duration','120'),('core.advanced_parameters.password_expired_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.password_expired_mail_subject','Votre mot de passe a expirÃ©'),('core.advanced_parameters.password_format_numero','false'),('core.advanced_parameters.password_format_special_characters','false'),('core.advanced_parameters.password_format_upper_lower_case','false'),('core.advanced_parameters.password_history_size',''),('core.advanced_parameters.password_minimum_length','8'),('core.advanced_parameters.reset_token_validity','60'),('core.advanced_parameters.time_before_alert_account','30'),('core.advanced_parameters.time_between_alerts_account','10'),('core.advanced_parameters.tsw_size_password_change',''),('core.advanced_parameters.use_advanced_security_parameters',''),('core.backOffice.defaultEditor','tinymce'),('core.cache.status.AccessRulesCacheService.enabled','1'),('core.cache.status.asynchronousupload.asynchronousUploadCacheService.enabled','0'),('core.cache.status.BaseUserPreferencesCacheService.enabled','1'),('core.cache.status.BaseUserPreferencesCacheService.maxElementsInMemory','1000'),('core.cache.status.DatastoreCacheService.enabled','0'),('core.cache.status.EntryTypeServiceManagerCache.enabled','1'),('core.cache.status.formsCacheService.enabled','1'),('core.cache.status.formsCacheService.overflowToDisk','0'),('core.cache.status.formsCacheService.timeToIdleSeconds','86400'),('core.cache.status.formsCacheService.timeToLiveSeconds','86400'),('core.cache.status.LinksIncludeCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.maxElementsInMemory','1000'),('core.cache.status.MailAttachmentCacheService.diskPersistent','true'),('core.cache.status.MailAttachmentCacheService.enabled','1'),('core.cache.status.MailAttachmentCacheService.maxElementsInMemory','10'),('core.cache.status.MailAttachmentCacheService.overflowToDisk','true'),('core.cache.status.MailAttachmentCacheService.timeToLiveSeconds','7200'),('core.cache.status.MyPortalWidgetContentService.enabled','1'),('core.cache.status.MyPortalWidgetService.enabled','1'),('core.cache.status.PageCacheService.enabled','1'),('core.cache.status.PageCachingFilter.enabled','0'),('core.cache.status.PageCachingFilter(CAUTION:NEVERUSEWITHUSERDYNAMICDATA).enabled','0'),('core.cache.status.pathCacheService.enabled','1'),('core.cache.status.PortalMenuService.enabled','1'),('core.cache.status.PortletCacheService.enabled','0'),('core.cache.status.public_image_resource.enabled','0'),('core.cache.status.SEOFriendlyUrlCacheService.enabled','0'),('core.cache.status.SiteMapService.enabled','1'),('core.cache.status.StaticFilesCachingFilter.enabled','1'),('core.cache.status.StaticFilesCachingFilter.timeToLiveSeconds','604800'),('core.cache.status.workflow.alertGruConfigCacheService.enabled','0'),('core.cache.status.workflow.notifyGruConfigCacheService.enabled','0'),('core.crypto.key','0be4ef16cbc6a541c08c7d68caf113685e4950b4cfbca94e71813c71a1fc0bf7'),('core.daemon.accountLifeTimeDaemon.interval','86400'),('core.daemon.accountLifeTimeDaemon.onStartUp','true'),('core.daemon.alert.interval','43200'),('core.daemon.alert.onStartUp','true'),('core.daemon.alertCleaner.interval','43200'),('core.daemon.alertCleaner.onStartUp','true'),('core.daemon.AlertGruDaemon.interval','86400'),('core.daemon.AlertGruDaemon.onStartUp','true'),('core.daemon.anonymizationDaemon.interval','86400'),('core.daemon.anonymizationDaemon.onStartUp','false'),('core.daemon.archiveDaemon.interval','30'),('core.daemon.archiveDaemon.onStartUp','true'),('core.daemon.archiveIndexer.interval','360'),('core.daemon.archiveIndexer.onStartUp','true'),('core.daemon.automaticActionDaemon.interval','30'),('core.daemon.automaticActionDaemon.onStartUp','true'),('core.daemon.changeStateDaemon.interval','10'),('core.daemon.changeStateDaemon.onStartUp','false'),('core.daemon.chooseStateActionDaemon.interval','10'),('core.daemon.chooseStateActionDaemon.onStartUp','false'),('core.daemon.crmClientSender.interval','60'),('core.daemon.crmClientSender.onStartUp','true'),('core.daemon.fullIndexingDaemon.interval','86400'),('core.daemon.fullIndexingDaemon.onStartUp','true'),('core.daemon.incrementalIndexingDaemon.interval','3000'),('core.daemon.incrementalIndexingDaemon.onStartUp','true'),('core.daemon.indexer.interval','300'),('core.daemon.indexer.onStartUp','true'),('core.daemon.mailSender.interval','86400'),('core.daemon.mailSender.onStartUp','true'),('core.daemon.notifyHistoryCleanerDaemon.interval','10'),('core.daemon.notifyHistoryCleanerDaemon.onStartUp','false'),('core.daemon.seoFriendlyUrlGenerator.interval','3600'),('core.daemon.seoFriendlyUrlGenerator.onStartUp','true'),('core.daemon.seoSitemapGenerator.interval','3600'),('core.daemon.seoSitemapGenerator.onStartUp','true'),('core.daemon.solrindexer.interval','86400'),('core.daemon.solrindexer.onStartUp','true'),('core.daemon.temporaryfilesDaemon.interval','86400'),('core.daemon.temporaryfilesDaemon.onStartUp','false'),('core.daemon.threadLauncherDaemon.interval','86400'),('core.daemon.threadLauncherDaemon.onStartUp','true'),('core.daemon.userControllerCodeDataDaemon.interval','10'),('core.daemon.userControllerCodeDataDaemon.onStartUp','false'),('core.frontOffice.defaultEditor','sceeditor'),('core.plugins.status.accesscontrol-forms.installed','true'),('core.plugins.status.accesscontrol-forms.pool','portal'),('core.plugins.status.accesscontrol.installed','true'),('core.plugins.status.accesscontrol.pool','portal'),('core.plugins.status.address-autocomplete.installed','true'),('core.plugins.status.address.installed','true'),('core.plugins.status.adminavatar.installed','true'),('core.plugins.status.archive-client.installed','true'),('core.plugins.status.archive.installed','true'),('core.plugins.status.archive.pool','portal'),('core.plugins.status.asynchronous-upload.installed','true'),('core.plugins.status.asynchronous-upload.pool','portal'),('core.plugins.status.automaticroleprovider.installed','true'),('core.plugins.status.avatar.installed','true'),('core.plugins.status.blobstore.installed','true'),('core.plugins.status.blobstore.pool','portal'),('core.plugins.status.blobstoreclient.installed','true'),('core.plugins.status.captcha.installed','true'),('core.plugins.status.contact.installed','true'),('core.plugins.status.contact.pool','portal'),('core.plugins.status.filegenerator.installed','true'),('core.plugins.status.filegenerator.pool','portal'),('core.plugins.status.forms-breadcrumbaccordion.installed','true'),('core.plugins.status.forms-breadcrumbaccordion.pool','portal'),('core.plugins.status.forms-documentproducer.installed','true'),('core.plugins.status.forms-documentproducer.pool','portal'),('core.plugins.status.forms-multiviewmapleaflet.installed','true'),('core.plugins.status.forms-solr.installed','true'),('core.plugins.status.forms-template.installed','true'),('core.plugins.status.forms-template.pool','portal'),('core.plugins.status.forms-unittree.installed','true'),('core.plugins.status.forms-unittree.pool','portal'),('core.plugins.status.forms-userassignment.installed','true'),('core.plugins.status.forms-userassignment.pool','portal'),('core.plugins.status.forms.installed','true'),('core.plugins.status.forms.pool','portal'),('core.plugins.status.genericattributes-address.installed','true'),('core.plugins.status.genericattributes-openstreetmap.installed','true'),('core.plugins.status.genericattributes.installed','true'),('core.plugins.status.genericattributes.pool','portal'),('core.plugins.status.grusupply.installed','true'),('core.plugins.status.grusupply.pool','portal'),('core.plugins.status.html.installed','true'),('core.plugins.status.htmlpage.installed','true'),('core.plugins.status.htmlpage.pool','portal'),('core.plugins.status.htmltopdf.installed','true'),('core.plugins.status.jcaptcha.installed','true'),('core.plugins.status.leaflet.installed','true'),('core.plugins.status.limitconnectedusers.installed','true'),('core.plugins.status.matomo.installed','true'),('core.plugins.status.mermaidjs.installed','true'),('core.plugins.status.mermaidjs.pool','portal'),('core.plugins.status.modulenotifygrumappingmanager.installed','true'),('core.plugins.status.modulenotifygrumappingmanager.pool','portal'),('core.plugins.status.mylutece-cacheuserattribute.installed','true'),('core.plugins.status.mylutece-cacheuserattribute.pool','portal'),('core.plugins.status.mylutece-oauth2.installed','true'),('core.plugins.status.mylutece.installed','true'),('core.plugins.status.mylutece.pool','portal'),('core.plugins.status.myluteceaccessrules.installed','true'),('core.plugins.status.myluteceaccessrules.pool','portal'),('core.plugins.status.notifygru-forms.installed','true'),('core.plugins.status.notifygru-forms.pool','portal'),('core.plugins.status.oauth2.installed','true'),('core.plugins.status.poll.installed','true'),('core.plugins.status.poll.pool','portal'),('core.plugins.status.profiles.installed','true'),('core.plugins.status.profiles.pool','portal'),('core.plugins.status.referencelist.installed','true'),('core.plugins.status.referencelist.pool','portal'),('core.plugins.status.regularexpression.installed','true'),('core.plugins.status.regularexpression.pool','portal'),('core.plugins.status.rest.installed','true'),('core.plugins.status.seo.installed','true'),('core.plugins.status.seo.pool','portal'),('core.plugins.status.solr.installed','true'),('core.plugins.status.solr.pool','portal'),('core.plugins.status.systeminfo.installed','true'),('core.plugins.status.termofservice.installed','true'),('core.plugins.status.termofservice.pool','portal'),('core.plugins.status.themecitelibre.installed','true'),('core.plugins.status.unittree.installed','true'),('core.plugins.status.unittree.pool','portal'),('core.plugins.status.unittreeuserassignment.installed','true'),('core.plugins.status.unittreeuserassignment.pool','portal'),('core.plugins.status.userassignment.installed','true'),('core.plugins.status.userassignment.pool','portal'),('core.plugins.status.verifybackurl.installed','true'),('core.plugins.status.verifybackurl.pool','portal'),('core.plugins.status.workflow-alertforms.installed','true'),('core.plugins.status.workflow-alertforms.pool','portal'),('core.plugins.status.workflow-alertgru.installed','true'),('core.plugins.status.workflow-alertgru.pool','portal'),('core.plugins.status.workflow-forms.installed','true'),('core.plugins.status.workflow-forms.pool','portal'),('core.plugins.status.workflow-formsautomaticassignment.installed','true'),('core.plugins.status.workflow-formsautomaticassignment.pool','portal'),('core.plugins.status.workflow-formspdf.installed','true'),('core.plugins.status.workflow-formspdf.pool','portal'),('core.plugins.status.workflow-notifygru.installed','true'),('core.plugins.status.workflow-notifygru.pool','portal'),('core.plugins.status.workflow-rest.installed','true'),('core.plugins.status.workflow-unittree.installed','true'),('core.plugins.status.workflow-unittree.pool','portal'),('core.plugins.status.workflow-userassignment.installed','true'),('core.plugins.status.workflow-userassignment.pool','portal'),('core.plugins.status.workflow.installed','true'),('core.plugins.status.workflow.pool','portal'),('core.startup.time','Jun 7, 2024, 3:24:16 PM'),('core.templates.currentCommonsInclude','Bootstrap5Tabler'),('forms.display.form.columnTitle','true'),('forms.display.form.csv.separator',';'),('leaflet.icon.icons.default.installed','true'),('leaflet.icon.icons.green.installed','true'),('leaflet.icon.icons.red.installed','true'),('leaflet.icon.icons.yellow.installed','true'),('limitconnectedusers.site_property.limit_message.textblock','<div class=\'alert alert-danger\'>Le nombre maximal d\'utilisateur connectÃ© simultanÃ©ment a Ã©tÃ© atteint</div>'),('limitconnectedusers.site_property.limit_notification_mailing_list.textblock',''),('limitconnectedusers.site_property.limit_notification_message.textblock','Le nombre maximal d\'utilisateur connectÃ© simultanÃ©ment a Ã©tÃ© atteint'),('limitconnectedusers.site_property.limit_notification_sender_name','LUTECE'),('limitconnectedusers.site_property.limit_notification_subject.textblock','Le nombre maximal d\'utilisateur connectÃ© simultanÃ©ment a Ã©tÃ© atteint'),('matomo.site_property.server.http.url','http://localhost/'),('matomo.site_property.server.https.url','http://localhost/'),('matomo.site_property.site.id','1'),('matomo.site_property.widget.auth.token','cfa9a798abd584817e2eb94d7bc14bb0'),('mylutece.security.public_url.mylutece.url.createAccount.page','jsp/site/Portal.jsp?page=mylutece&action=createAccount'),('mylutece.security.public_url.mylutece.url.doActionsAll','jsp/site/plugins/mylutece/Do*'),('mylutece.security.public_url.mylutece.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),('mylutece.security.public_url.mylutece.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),('mylutece.security.public_url.mylutece.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login'),('mylutece.security.public_url.mylutece.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),('mylutece.security.public_url.mylutece.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutece&action=lostPassword'),('mylutece.security.public_url.mylutece.url.modifyAccount.page','jsp/site/Portal.jsp?page=mylutece&action=modifyAccount'),('myluteceaccessrules.site_property.application_code',''),('portal.site.site_property.admin_home_url','jsp/admin/AdminMenu.jsp'),('portal.site.site_property.avatar_default','themes/admin/shared/images/unknown.svg'),('portal.site.site_property.back_images','themes/admin/tabler/images/bg_login1.svg, themes/admin/tabler/images/bg_login2.svg'),('portal.site.site_property.bo.showXs.checkbox','1'),('portal.site.site_property.bo.showXsWarning.checkbox','0'),('portal.site.site_property.email','<webmaster email>'),('portal.site.site_property.home_url','jsp/site/Portal.jsp'),('portal.site.site_property.layout.darkmode.checkbox','0'),('portal.site.site_property.layout.menu.checkbox','0'),('portal.site.site_property.layout.readmode.checkbox','0'),('portal.site.site_property.layout.user.darkmode.show.checkbox','1'),('portal.site.site_property.layout.user.menumode.show.checkbox','1'),('portal.site.site_property.layout.user.readmode.show.checkbox','0'),('portal.site.site_property.locale.default','fr'),('portal.site.site_property.login.image',''),('portal.site.site_property.logo_url','themes/admin/shared/images/logo-header-icon.svg'),('portal.site.site_property.meta.author','<author>'),('portal.site.site_property.meta.copyright','<copyright>'),('portal.site.site_property.meta.description','<description>'),('portal.site.site_property.meta.keywords','<keywords>'),('portal.site.site_property.name','CiteLibre ServiceEZ'),('portal.site.site_property.noreply_email','no-reply@citelibre.org'),('portal.site.site_property.popup_credits.textblock','&lt;credits text&gt;'),('portal.site.site_property.popup_legal_info.copyright.textblock','&lt;copyright text&gt;'),('portal.site.site_property.popup_legal_info.privacy.textblock','&lt;privacy text&gt;'),('portal.site.site_property.portlet.title.maxlength','75'),('seo.canonicalUrls.enabled','true'),('seo.config.uptodate','true'),('seo.generator.daemon.enabled','true'),('seo.generator.option.addHtmlSuffix','true'),('seo.generator.option.addPath','false'),('seo.replaceUrl.enabled','true'),('seo.rewrite.config.lastUpdate','Last update : Jun 7, 2024, 4:24:31 PM Urls count : 9 Result : OK'),('seo.sitemap.update.log','Last generation : Jun 7, 2024, 4:24:20 PM Urls count : 6 Result : OK'),('seo.sitmap.daemon.enabled','true'),('themecitelibre.site_property.bannerMessage.CloseButton.checkbox','1'),('themecitelibre.site_property.bannerMessage.htmlblock',''),('themecitelibre.site_property.bannerMessage.Position','bottom-right'),('themecitelibre.site_property.bannerMessage.Title',''),('themecitelibre.site_property.bannerMessage.Type','info'),('themecitelibre.site_property.footer.about','CiteLibre is made for cities, by cities, upon open source principals. <br> <a class=\"btn btn-link ps-0\" href=\"//:lutece.paris.fr\" title=\"[#i18n{portal.site.portal_footer.newWindow}] LUTECE website\" target=\"_blank><img src=\"images/poweredby.png\" alt=\"Powered by LUTECE\"></a> '),('themecitelibre.site_property.footer.about.title','A propos'),('themecitelibre.site_property.footer.cookieLabel','Cookies management'),('themecitelibre.site_property.footer.cookieLink','#cookiecitelibrepack'),('themecitelibre.site_property.footer.links.title','Liens importants'),('themecitelibre.site_property.robotIndex.checkbox','1');
/*!40000 ALTER TABLE `core_datastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_feature_group`
--

DROP TABLE IF EXISTS `core_feature_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_feature_group` (
  `id_feature_group` varchar(50) NOT NULL DEFAULT '',
  `feature_group_description` varchar(255) DEFAULT NULL,
  `feature_group_label` varchar(100) DEFAULT NULL,
  `feature_group_order` int(11) DEFAULT NULL,
  `feature_group_icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_feature_group`
--

LOCK TABLES `core_feature_group` WRITE;
/*!40000 ALTER TABLE `core_feature_group` DISABLE KEYS */;
INSERT INTO `core_feature_group` VALUES ('APPLICATIONS','portal.features.group.applications.description','portal.features.group.applications.label',3,'ti ti-apps'),('CONTENT','portal.features.group.content.description','portal.features.group.content.label',1,'ti ti-files'),('MANAGERS','portal.features.group.managers.description','portal.features.group.managers.label',5,'ti ti-user-shield'),('SITE','portal.features.group.site.description','portal.features.group.site.label',2,'ti ti-world'),('STYLE','portal.features.group.charter.description','portal.features.group.charter.label',6,'ti ti-brush'),('SYSTEM','portal.features.group.system.description','portal.features.group.system.label',7,'ti ti-shield-lock '),('USERS','portal.features.group.users.description','portal.features.group.users.label',4,'ti ti-users');
/*!40000 ALTER TABLE `core_feature_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_file`
--

DROP TABLE IF EXISTS `core_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext DEFAULT NULL,
  `id_physical_file` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_file`
--

LOCK TABLES `core_file` WRITE;
/*!40000 ALTER TABLE `core_file` DISABLE KEYS */;
INSERT INTO `core_file` VALUES (125,'export_users_csv.xml',125,2523,'application/xml','2005-10-10 08:10:10','INIT_CORE'),(126,'export_users_xml.xml',126,259,'application/xml','2005-10-10 08:10:10','INIT_CORE');
/*!40000 ALTER TABLE `core_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_id_generator`
--

DROP TABLE IF EXISTS `core_id_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_id_generator` (
  `class_name` varchar(250) NOT NULL DEFAULT '',
  `current_value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_id_generator`
--

LOCK TABLES `core_id_generator` WRITE;
/*!40000 ALTER TABLE `core_id_generator` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_id_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_indexer_action`
--

DROP TABLE IF EXISTS `core_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_indexer_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `indexer_name` varchar(255) NOT NULL,
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_indexer_action`
--

LOCK TABLES `core_indexer_action` WRITE;
/*!40000 ALTER TABLE `core_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_level_right`
--

DROP TABLE IF EXISTS `core_level_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_level_right` (
  `id_level` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_level_right`
--

LOCK TABLES `core_level_right` WRITE;
/*!40000 ALTER TABLE `core_level_right` DISABLE KEYS */;
INSERT INTO `core_level_right` VALUES (0,'Level 0 - Technical administrator'),(1,'Level 1 - Fonctionnal administrator'),(2,'Level 2 - Site Manager - Webmaster'),(3,'Level 3 - Contributor');
/*!40000 ALTER TABLE `core_level_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mail_item`
--

DROP TABLE IF EXISTS `core_mail_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mail_item` (
  `id_mail_queue` int(11) NOT NULL DEFAULT 0,
  `mail_item` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_mail_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mail_item`
--

LOCK TABLES `core_mail_item` WRITE;
/*!40000 ALTER TABLE `core_mail_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mail_queue`
--

DROP TABLE IF EXISTS `core_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mail_queue` (
  `id_mail_queue` int(11) NOT NULL AUTO_INCREMENT,
  `is_locked` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_mail_queue`),
  KEY `is_locked_core_mail_queue` (`is_locked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mail_queue`
--

LOCK TABLES `core_mail_queue` WRITE;
/*!40000 ALTER TABLE `core_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mode`
--

DROP TABLE IF EXISTS `core_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mode` (
  `id_mode` int(11) NOT NULL DEFAULT 0,
  `description_mode` varchar(255) DEFAULT NULL,
  `path` varchar(50) NOT NULL DEFAULT '',
  `output_xsl_method` varchar(50) DEFAULT NULL,
  `output_xsl_version` varchar(50) DEFAULT NULL,
  `output_xsl_media_type` varchar(50) DEFAULT NULL,
  `output_xsl_encoding` varchar(50) DEFAULT NULL,
  `output_xsl_indent` varchar(50) DEFAULT NULL,
  `output_xsl_omit_xml_dec` varchar(50) DEFAULT NULL,
  `output_xsl_standalone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mode`
--

LOCK TABLES `core_mode` WRITE;
/*!40000 ALTER TABLE `core_mode` DISABLE KEYS */;
INSERT INTO `core_mode` VALUES (0,'Normal','normal/','xml','1.0','text/xml','UTF-8','yes','yes',NULL),(1,'Administration','admin/','xml','1.0','text/xml','UTF-8','yes','yes',NULL),(2,'Wap','wml/','xml','1.0','text/xml','UTF-8','yes','yes',NULL);
/*!40000 ALTER TABLE `core_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page`
--

DROP TABLE IF EXISTS `core_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page` (
  `id_page` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) DEFAULT NULL,
  `page_order` int(11) DEFAULT 0,
  `id_template` int(11) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `code_theme` varchar(80) DEFAULT NULL,
  `node_status` smallint(6) NOT NULL DEFAULT 1,
  `image_content` mediumblob DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT 'NULL',
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `id_authorization_node` int(11) DEFAULT NULL,
  `display_date_update` smallint(6) NOT NULL DEFAULT 0,
  `is_manual_date_update` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_page`),
  KEY `index_page` (`id_template`,`id_parent`),
  KEY `index_childpage` (`id_parent`,`page_order`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page`
--

LOCK TABLES `core_page` WRITE;
/*!40000 ALTER TABLE `core_page` DISABLE KEYS */;
INSERT INTO `core_page` VALUES (1,0,'Home','Home Page','2024-01-19 15:25:52',1,1,1,'2024-01-19 15:25:52','none','default',0,'','application/octet-stream',NULL,NULL,1,0,0),(3,1,'Liens Utiles','','2024-05-28 16:37:33',0,1,2,'2024-05-28 16:37:33','none','default',1,NULL,'application/octet-stream',NULL,NULL,1,0,0);
/*!40000 ALTER TABLE `core_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page_template`
--

DROP TABLE IF EXISTS `core_page_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page_template` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page_template`
--

LOCK TABLES `core_page_template` WRITE;
/*!40000 ALTER TABLE `core_page_template` DISABLE KEYS */;
INSERT INTO `core_page_template` VALUES (1,'Home page','skin/site/page_home_demo.html','layout-home.svg'),(2,'One column','skin/site/page_template1.html','layout-one.svg'),(3,'Two columns','skin/site/page_template2.html','layout-two.svg'),(4,'1 + 2 columns','skin/site/page_template4.html','layout-three.svg'),(5,'Two equal columns','skin/site/page_template5.html','layout-four.svg');
/*!40000 ALTER TABLE `core_page_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_physical_file`
--

DROP TABLE IF EXISTS `core_physical_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_physical_file` (
  `id_physical_file` int(11) NOT NULL AUTO_INCREMENT,
  `file_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_physical_file`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_physical_file`
--

LOCK TABLES `core_physical_file` WRITE;
/*!40000 ALTER TABLE `core_physical_file` DISABLE KEYS */;
INSERT INTO `core_physical_file` VALUES (125,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"text\"/>\r\n	\r\n	<xsl:template match=\"users\">\r\n		<xsl:apply-templates select=\"user\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"user\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:value-of select=\"access_code\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"last_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"first_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"email\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"status\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"locale\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"level\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"must_change_password\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"accessibility_mode\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"password_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"account_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"date_last_login\" />\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:apply-templates select=\"roles\" />\r\n		<xsl:apply-templates select=\"rights\" />\r\n		<xsl:apply-templates select=\"workgroups\" />\r\n		<xsl:apply-templates select=\"attributes\" />\r\n		<xsl:text>&#10;</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"roles\">\r\n		<xsl:apply-templates select=\"role\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"role\">\r\n		<xsl:text>;\"role:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"rights\">\r\n		<xsl:apply-templates select=\"right\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"right\">\r\n		<xsl:text>;\"right:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroups\">\r\n		<xsl:apply-templates select=\"workgroup\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroup\">\r\n		<xsl:text>;\"workgroup:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attributes\">\r\n		<xsl:apply-templates select=\"attribute\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attribute\">\r\n		<xsl:text>;\"</xsl:text>\r\n		<xsl:value-of select=\"attribute-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-field-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-value\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>'),(126,'<?xml version=\"1.0\" ?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:template match=\"/ | @* | node()\">\r\n		<xsl:copy>\r\n			<xsl:apply-templates select=\"@* | node()\" />\r\n		</xsl:copy>\r\n	</xsl:template>\r\n</xsl:stylesheet>');
/*!40000 ALTER TABLE `core_physical_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portal_component`
--

DROP TABLE IF EXISTS `core_portal_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portal_component` (
  `id_portal_component` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_portal_component`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portal_component`
--

LOCK TABLES `core_portal_component` WRITE;
/*!40000 ALTER TABLE `core_portal_component` DISABLE KEYS */;
INSERT INTO `core_portal_component` VALUES (0,'Portlet'),(1,'Article'),(2,'Article List Portlet'),(3,'Menu Init'),(4,'Main Menu'),(5,'Breadcrum'),(6,'Site Map'),(7,'Tree View'),(8,'Site Map (Admin mode)');
/*!40000 ALTER TABLE `core_portal_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet`
--

DROP TABLE IF EXISTS `core_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet` (
  `id_portlet` int(11) NOT NULL AUTO_INCREMENT,
  `id_portlet_type` varchar(50) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) NOT NULL DEFAULT 0,
  `portlet_order` int(11) DEFAULT NULL,
  `column_no` int(11) DEFAULT NULL,
  `id_style` int(11) DEFAULT NULL,
  `accept_alias` smallint(6) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `display_portlet_title` int(11) NOT NULL DEFAULT 0,
  `role` varchar(50) DEFAULT NULL,
  `device_display_flags` int(11) NOT NULL DEFAULT 15,
  PRIMARY KEY (`id_portlet`),
  KEY `index_portlet` (`id_page`,`id_portlet_type`,`id_style`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet`
--

LOCK TABLES `core_portlet` WRITE;
/*!40000 ALTER TABLE `core_portlet` DISABLE KEYS */;
INSERT INTO `core_portlet` VALUES (6,'HTML_UNTRANSFORMED_PORTLET',1,'Intro','2024-06-05 14:11:06',0,1,1,0,0,'2024-05-28 16:25:40',0,'none',4369),(2,'HTML_PORTLET',1,'Infos','2019-05-31 13:51:57',0,1,3,100,0,'2015-05-15 13:26:01',1,'none',273),(4,'HTML_PORTLET',1,'Lutece','2019-06-03 08:23:25',0,1,4,100,0,'2019-05-31 09:55:16',1,'none',4369),(5,'HTML_PORTLET',1,'Autres informations','2019-05-31 14:51:33',0,1,5,100,0,'2019-05-31 13:01:47',1,'none',4369),(7,'HTML_UNTRANSFORMED_PORTLET',1,'Administration','2024-06-05 14:11:52',0,2,1,0,0,'2024-05-28 16:32:17',1,'none',4369),(8,'HTML_UNTRANSFORMED_PORTLET',1,'Forms','2024-05-28 16:36:09',0,3,1,0,0,'2024-05-28 16:36:09',0,'none',4369),(10,'HTML_UNTRANSFORMED_PORTLET',3,'Links','2024-06-05 14:17:17',0,2,1,0,0,'2024-05-28 16:44:20',1,'none',4369);
/*!40000 ALTER TABLE `core_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet_alias`
--

DROP TABLE IF EXISTS `core_portlet_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet_alias` (
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  `id_alias` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_portlet`,`id_alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet_alias`
--

LOCK TABLES `core_portlet_alias` WRITE;
/*!40000 ALTER TABLE `core_portlet_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_portlet_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet_type`
--

DROP TABLE IF EXISTS `core_portlet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet_type` (
  `id_portlet_type` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `url_creation` varchar(255) DEFAULT NULL,
  `url_update` varchar(255) DEFAULT NULL,
  `home_class` varchar(255) DEFAULT NULL,
  `plugin_name` varchar(50) DEFAULT NULL,
  `url_docreate` varchar(255) DEFAULT NULL,
  `create_script` varchar(255) DEFAULT NULL,
  `create_specific` varchar(255) DEFAULT NULL,
  `create_specific_form` varchar(255) DEFAULT NULL,
  `url_domodify` varchar(255) DEFAULT NULL,
  `modify_script` varchar(255) DEFAULT NULL,
  `modify_specific` varchar(255) DEFAULT NULL,
  `modify_specific_form` varchar(255) DEFAULT NULL,
  `icon_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_portlet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet_type`
--

LOCK TABLES `core_portlet_type` WRITE;
/*!40000 ALTER TABLE `core_portlet_type` DISABLE KEYS */;
INSERT INTO `core_portlet_type` VALUES ('ALIAS_PORTLET','portal.site.portletAlias.name','plugins/alias/CreatePortletAlias.jsp','plugins/alias/ModifyPortletAlias.jsp','fr.paris.lutece.portal.business.portlet.AliasPortletHome','alias','plugins/alias/DoCreatePortletAlias.jsp','/admin/portlet/script_create_portlet.html','/admin/portlet/alias/create_portlet_alias.html','','plugins/alias/DoModifyPortletAlias.jsp','/admin/portlet/script_modify_portlet.html','/admin/portlet/alias/modify_portlet_alias.html','','circles-relation'),('HTML_PORTLET','html.portlet.name','plugins/html/CreatePortletHtml.jsp','plugins/html/ModifyPortletHtml.jsp','fr.paris.lutece.plugins.html.business.portlet.HtmlPortletHome','html','plugins/html/DoCreatePortletHtml.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/html/portlet_html.html','','plugins/html/DoModifyPortletHtml.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/html/portlet_html.html','',NULL),('HTML_UNTRANSFORMED_PORTLET','html.portlet.untransformed.name','plugins/html/CreatePortletHtml.jsp','plugins/html/ModifyPortletHtml.jsp','fr.paris.lutece.plugins.html.business.portlet.UntransformedHtmlPortletHome','html','plugins/html/DoCreatePortletHtml.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/html/portlet_html.html','','plugins/html/DoModifyPortletHtml.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/html/portlet_html.html','',NULL),('MYLUTECE_PORTLET','mylutece.portlet.name','plugins/mylutece/CreatePortletMyLutece.jsp','plugins/mylutece/ModifyPortletMyLutece.jsp','fr.paris.lutece.plugins.mylutece.business.portlet.MyLutecePortletHome','mylutece','plugins/mylutece/DoCreatePortletMyLutece.jsp','/admin/portlet/script_create_portlet.html','','','plugins/mylutece/DoModifyPortletMyLutece.jsp','/admin/portlet/script_modify_portlet.html','','',NULL);
/*!40000 ALTER TABLE `core_portlet_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_role`
--

DROP TABLE IF EXISTS `core_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_role` (
  `role` varchar(50) NOT NULL DEFAULT '',
  `role_description` varchar(255) DEFAULT NULL,
  `workgroup_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role`
--

LOCK TABLES `core_role` WRITE;
/*!40000 ALTER TABLE `core_role` DISABLE KEYS */;
INSERT INTO `core_role` VALUES ('defaultRole','defaultRole','all'),('role_user_validated','role_user_validated','all');
/*!40000 ALTER TABLE `core_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_search_parameter`
--

DROP TABLE IF EXISTS `core_search_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_search_parameter` (
  `parameter_key` varchar(100) NOT NULL,
  `parameter_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_search_parameter`
--

LOCK TABLES `core_search_parameter` WRITE;
/*!40000 ALTER TABLE `core_search_parameter` DISABLE KEYS */;
INSERT INTO `core_search_parameter` VALUES ('date_filter','0'),('default_operator','OR'),('help_message','Message d aide pour la recherche'),('tag_filter','0'),('taglist',NULL),('type_filter','none');
/*!40000 ALTER TABLE `core_search_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_style`
--

DROP TABLE IF EXISTS `core_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_style` (
  `id_style` int(11) NOT NULL DEFAULT 0,
  `description_style` varchar(100) NOT NULL DEFAULT '',
  `id_portlet_type` varchar(50) DEFAULT NULL,
  `id_portal_component` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_style`),
  KEY `index_style` (`id_portlet_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style`
--

LOCK TABLES `core_style` WRITE;
/*!40000 ALTER TABLE `core_style` DISABLE KEYS */;
INSERT INTO `core_style` VALUES (3,'Menu Init','',3),(4,'Main Menu','',4),(5,'Breadcrumb','',5),(6,'Site Map','',6),(7,'Tree View Menu','',7),(8,'Site Map (Admin mode)',NULL,8),(100,'DÃ©faut','HTML_PORTLET',0),(101,'Fond colorÃ©','HTML_PORTLET',0),(200,'DÃ©faut','MYLUTECE_PORTLET',0);
/*!40000 ALTER TABLE `core_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_style_mode_stylesheet`
--

DROP TABLE IF EXISTS `core_style_mode_stylesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_style_mode_stylesheet` (
  `id_style` int(11) NOT NULL DEFAULT 0,
  `id_mode` int(11) NOT NULL DEFAULT 0,
  `id_stylesheet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_style`,`id_mode`,`id_stylesheet`),
  KEY `index_style_mode_stylesheet` (`id_stylesheet`,`id_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style_mode_stylesheet`
--

LOCK TABLES `core_style_mode_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_style_mode_stylesheet` DISABLE KEYS */;
INSERT INTO `core_style_mode_stylesheet` VALUES (3,0,211),(4,0,213),(5,0,215),(6,0,217),(7,0,253),(8,1,279),(100,0,10),(101,0,285),(200,0,310);
/*!40000 ALTER TABLE `core_style_mode_stylesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_stylesheet`
--

DROP TABLE IF EXISTS `core_stylesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_stylesheet` (
  `id_stylesheet` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `source` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id_stylesheet`)
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_stylesheet`
--

LOCK TABLES `core_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_stylesheet` DISABLE KEYS */;
INSERT INTO `core_stylesheet` VALUES (211,'Menu Init','menu_init.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n<br /><br />\r\n	<div id=\"menu-init\">\r\n		<div id=\"menu-init-content\">\r\n            <ul id=\"menu-verti\">\r\n                <xsl:apply-templates select=\"menu\" />\r\n            </ul>\r\n        </div>\r\n     </div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n\r\n    <xsl:if test=\"$index &gt; 7\">\r\n        <li class=\"first-verti\">\r\n        	<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n          		<xsl:value-of select=\"page-name\" />\r\n	        </a>\r\n    	    <xsl:apply-templates select=\"sublevel-menu-list\" />\r\n        </li>\r\n   </xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" >\r\n	<ul>\r\n    	<li class=\"last-verti\">\r\n		 	<xsl:apply-templates select=\"sublevel-menu\" />\r\n 	    </li>\r\n    </ul>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n\r\n   <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n		<span><xsl:value-of select=\"page-name\" /></span>\r\n   </a>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(213,'Main Menu','menu_main.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    <xsl:param name=\"site-path\" select=\"site-path\" />\r\n    <xsl:template match=\"menu-list\">\r\n        <xsl:apply-templates select=\"menu\" />\r\n    </xsl:template>\r\n    <xsl:template match=\"menu\">\r\n        <li class=\"nav-item\">\r\n            <a href=\"{$site-path}?page_id={page-id}\" class=\"nav-link\" target=\"_top\">\r\n                <xsl:value-of select=\"page-name\" />\r\n            </a>\r\n        </li>\r\n    </xsl:template>\r\n</xsl:stylesheet>'),(215,'Breadcrumb','page_path.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n\r\n<xsl:template match=\"page\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page_link\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?{page-url}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>'),(217,'Site Map','site_map.xsl','<?xml version=\"1.0\"?> <xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"> 	<xsl:param name=\"site-path\" select=\"site-path\" /> 	<xsl:variable name=\"current-page-id\" select=\"current-page-id\" /> 	<xsl:template match=\"page[page-level=0]\"> 		<div id=\"lutece-map-tree\" class=\"lutece-tree\"> 			<ul> 				<li id=\"node-{page-id}\" class=\"lutece-tree-node\" data-tree-icon=\"home\"> 					<xsl:value-of select=\"page-name\" /> 					<xsl:if test=\"not(string(page-role)=\'none\')\"> 						<strong> 							<xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 							<xsl:value-of select=\"page-role\" /> 						</strong> 					</xsl:if> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\"><span class=\"ti ti-home-link ms-2\"></span></a> 					<ul> 						<xsl:apply-templates select=\"child-pages-list\" /> 					</ul> 				</li> 			</ul> 		</div> 	</xsl:template> 	<xsl:template match=\"page[page-level>0]\"> 		<xsl:variable name=\"index\" select=\"page-id\" /> 		<xsl:variable name=\"description\" select=\"page-description\" /> 		<xsl:choose> 			<xsl:when test=\"count(child-pages-list/*)>0\"> 			<li id=\"node-{$index}\" class=\"lutece-tree-node\" data-tree-icon=\"folder\"> 				<span class=\"node-name\"> 					<xsl:value-of select=\"page-name\" /> 					<xsl:if test=\"not(string(page-role)=\'none\')\"> 						<strong> 							<xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 							<xsl:value-of select=\"page-role\" /> 						</strong> 					</xsl:if> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-name } - {$description}\"><span class=\"ti ti-link mx-2\"></span></a> 				</span> 				<ul> 					<xsl:apply-templates select=\"child-pages-list\" /> 				</ul> 			</li> 			</xsl:when> 			<xsl:otherwise> 				<li id=\"node-{$index}\" class=\"lutece-tree-item\" data-tree-icon=\"file-symlink\"> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"> 						<span class=\"leaf-name\"><xsl:value-of select=\"page-name\" /></span> 						<xsl:if test=\"not(string(page-role)=\'none\')\"> 							<strong> 								<xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 								<xsl:value-of select=\"page-role\" /> 							</strong> 						</xsl:if> 					</a> 				</li>    			</xsl:otherwise> 		</xsl:choose> 	</xsl:template> 	<xsl:template match=\"child-pages-list\"> 		<xsl:apply-templates select=\"page\" /> 	</xsl:template> </xsl:stylesheet>'),(253,'Tree View Menu','menu_tree.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n	<xsl:variable name=\"menu-list\" select=\"menu\" />\r\n\r\n	<script type=\"text/javascript\">\r\n		$(document).ready(function(){\r\n			$(\"#tree\").treeview({\r\n				animated: \"fast\",\r\n				collapsed: false,\r\n				unique: true,\r\n				persist: \"cookie\"\r\n			});\r\n		\r\n		});\r\n	</script>    \r\n	\r\n	<xsl:if test=\"not(string(menu)=\'\')\">\r\n	    <xsl:text disable-output-escaping=\"yes\">		    \r\n            <div class=\"tree4\">		\r\n			<h2>&#160;</h2>\r\n			<ul id=\"tree\" class=\"tree4\">\r\n                <xsl:apply-templates select=\"menu\" />        \r\n			</ul>	\r\n			</div>\r\n		 	 <br />\r\n		</xsl:text> \r\n	</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n		<li>\r\n          <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\" >\r\n               <xsl:value-of select=\"page-name\" />\r\n           </a>	   \r\n		   <br />\r\n		   <xsl:value-of select=\"page-description\" />\r\n			<xsl:apply-templates select=\"sublevel-menu-list\" /> \r\n			\r\n		</li> 	\r\n		\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" > \r\n	\r\n	<xsl:apply-templates select=\"sublevel-menu\" /> 	    	\r\n\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n		 <ul >\r\n			<li>\r\n				<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n					<xsl:value-of select=\"page-name\" />\r\n				</a>\r\n			</li>			\r\n		</ul>\r\n		\r\n   \r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(279,'Site Map (Admin mode)','admin_site_map_admin.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    <xsl:param name=\"site-path\" select=\"site-path\" />\r\n    <xsl:variable name=\"current-page-id\" select=\"current-page-id\" />\r\n    <xsl:template match=\"page[page-level=0]\">\r\n        <div id=\"lutece-map-tree\" class=\"lutece-tree\">\r\n            <ul>\r\n                <li class=\"lutece-tree-node\" data-tree-icon=\"home\">\r\n                    <xsl:value-of select=\"page-name\" />\r\n                    <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                        <strong>\r\n                            <xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                            <xsl:value-of select=\"page-role\" />\r\n                        </strong>\r\n                    </xsl:if>\r\n                    <a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\"><span class=\"ti ti-link\"></span></a>\r\n                    <ul>\r\n                        <xsl:apply-templates select=\"child-pages-list\" />\r\n                    </ul>\r\n                </li>\r\n            </ul>\r\n        </div>\r\n    </xsl:template>\r\n    <xsl:template match=\"page[page-level>0]\">\r\n        <xsl:variable name=\"index\" select=\"page-id\" />\r\n        <xsl:variable name=\"description\" select=\"page-description\" />\r\n        <xsl:choose>\r\n            <xsl:when test=\"count(child-pages-list/*)>0\">\r\n            <li id=\"node-{$index}\" class=\"lutece-tree-node\" data-tree-icon=\"folder\">\r\n                <xsl:value-of select=\"page-name\" />\r\n                <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                    <strong>\r\n                        <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                        <xsl:value-of select=\"page-role\" />\r\n                    </strong>\r\n                </xsl:if>\r\n                <a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"><span class=\"ti ti-link\"></span></a>\r\n                <ul>\r\n                    <xsl:apply-templates select=\"child-pages-list\" />\r\n                </ul>\r\n                </li>   \r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n            <li id=\"node-{$index}\" class=\"lutece-tree-item\" data-tree-icon=\"file\">\r\n                <xsl:value-of select=\"page-name\" />\r\n                <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                    <strong>\r\n                        <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                        <xsl:value-of select=\"page-role\" />\r\n                    </strong>\r\n                </xsl:if>\r\n                <a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"><span class=\"ti ti-link\"></span></a>\r\n                <xsl:apply-templates select=\"child-pages-list\" />\r\n            </li>    \r\n            </xsl:otherwise>\r\n        </xsl:choose>\r\n    </xsl:template>\r\n    <xsl:template match=\"child-pages-list\">\r\n        <xsl:apply-templates select=\"page\" />\r\n    </xsl:template>\r\n</xsl:stylesheet>'),(10,'Rubrique HTML - DÃ©faut','portlet_html.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n<xsl:variable name=\"device_class\">\r\n<xsl:choose>\r\n	<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n	<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n	<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n	<xsl:otherwise></xsl:otherwise>\r\n</xsl:choose>\r\n</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n	<xsl:choose>\r\n	<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n	<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:when>\r\n	<xsl:otherwise>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:otherwise>\r\n</xsl:choose>\r\n</div>\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n\r\n\r\n\r\n'),(285,'Rubrique HTML - Fond colorÃ©','portlet_html_background.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h2>\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h2>\r\n				<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<div class=\"portlet-background-content -lutece-border-radius\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n		</div>\r\n    </div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>'),(310,'Rubrique MyLutece - DÃ©faut','portlet_mylutece.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n			<xsl:choose>\r\n	        <xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:when>\r\n	        <xsl:otherwise>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:otherwise>\r\n			</xsl:choose>\r\n			<div class=\"clearfix\">&#160;</div>\r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"mylutece-portlet\">\r\n	<xsl:apply-templates select=\"user-not-signed\" />\r\n	<xsl:apply-templates select=\"lutece-user\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"user-not-signed\">\r\n	<form class=\"form\" action=\"jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp\" method=\"post\">\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@delegated=\'true\']\" />\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\" />\r\n		<xsl:if test=\"count(lutece-user-authentication-service[@loginpassword-required=\'true\']) &gt;= 1\">\r\n			<label for=\"username\">Code d\'acc&#232;s :</label>\r\n			<input name=\"username\" class=\"input-normal\" id=\"username\" autocomplete=\"off\" tabindex=\"1\" type=\"text\"/><br />\r\n			<label for=\"password\">Mot de passe :</label>\r\n			<input name=\"password\" class=\"input-normal\" id=\"password\" autocomplete=\"off\" tabindex=\"2\" type=\"password\" />\r\n			<button class=\"btn btn-small\" tabindex=\"3\" type=\"submit\"><i class=\"icon-user\">&#160;</i>&#160;Connexion</button>\r\n		</xsl:if>\r\n	</form>\r\n	<xsl:apply-templates select=\"lutece-user-new-account-url\" />\r\n	<xsl:apply-templates select=\"lutece-user-lost-password-url\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\">\r\n	<label class=\"radio\" for=\"auth_provider\" >\r\n		<input type=\"radio\" name=\"auth_provider\" value=\"{name}\" checked=\"checked\" />\r\n		<xsl:value-of select=\"display-name\" />\r\n	</label>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@delegated=\'true\']\">\r\n	<a href=\"{url}?auth_provider={name}\">\r\n		<img src=\"{icon-url}\" alt=\"{display-name}\" title=\"{display-name}\"/>\r\n	</a>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user\">\r\n    <p>\r\n	<strong>Bienvenue&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-given\" />&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-family\" />\r\n	</strong>\r\n	</p>\r\n    <xsl:apply-templates select=\"lutece-user-logout-url\" />\r\n    <xsl:apply-templates select=\"lutece-user-view-account-url\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-logout-url\">\r\n   <form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n   	<button type=\"submit\" class=\"btn\"><i class=\"icon-off\">&#160;</i>&#160;D&#233;connexion</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-new-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n		<button type=\"submit\" class=\"btn\"><i class=\"icon-plus\">&#160;</i>&#160;Cr&#233;er un compte</button>&#160;\r\n    </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-lost-password-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-lock\">&#160;</i>&#160;Mot de passe perdu</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-view-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-edit\">&#160;</i>&#160;Voir mon compte</button>&#160;\r\n	</form>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n');
/*!40000 ALTER TABLE `core_stylesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_template`
--

DROP TABLE IF EXISTS `core_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_template` (
  `template_name` varchar(100) NOT NULL,
  `template_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_template`
--

LOCK TABLES `core_template` WRITE;
/*!40000 ALTER TABLE `core_template` DISABLE KEYS */;
INSERT INTO `core_template` VALUES ('core_account_reactivated_mail','Bonjour ${first_name} ! Votre compte utilisateur a bien Ã©tÃ© rÃ©activÃ©. Il est dÃ©sormais valable jusqu\'au ${date_valid}.'),('core_expiration_mail','Bonjour ${first_name} ! Votre compte a expirÃ©. Vous ne pourrez plus vous connecter avec, et les donnÃ©es vous concernant ont Ã©tÃ© anonymisÃ©es'),('core_first_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive Ã  expiration. Pour prolonger sa validitÃ©, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera dÃ©sactivÃ©.'),('core_other_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive Ã  expiration. Pour prolonger sa validitÃ©, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera dÃ©sactivÃ©.'),('core_password_expired','Bonjour ! Votre mot de passe a expirÃ©. Lors de votre prochaine connexion, vous pourrez le changer.');
/*!40000 ALTER TABLE `core_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_text_editor`
--

DROP TABLE IF EXISTS `core_text_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_text_editor` (
  `editor_name` varchar(255) NOT NULL,
  `editor_description` varchar(255) NOT NULL,
  `backOffice` smallint(6) NOT NULL,
  PRIMARY KEY (`editor_name`,`backOffice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_text_editor`
--

LOCK TABLES `core_text_editor` WRITE;
/*!40000 ALTER TABLE `core_text_editor` DISABLE KEYS */;
INSERT INTO `core_text_editor` VALUES ('','portal.admindashboard.editors.labelFrontNoEditor',0),('','portal.admindashboard.editors.labelBackNoEditor',1),('sceeditor','portal.admindashboard.editors.labelFrontSceEditor',0),('tinymce','portal.admindashboard.editors.labelBackTinyMCE',1),('tinymce5','portal.admindashboard.editors.labelBackTinyMCE5',1);
/*!40000 ALTER TABLE `core_text_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_password_history`
--

DROP TABLE IF EXISTS `core_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_password_history` (
  `id_user` int(11) NOT NULL,
  `password` mediumtext NOT NULL,
  `date_password_change` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_user`,`date_password_change`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_password_history`
--

LOCK TABLES `core_user_password_history` WRITE;
/*!40000 ALTER TABLE `core_user_password_history` DISABLE KEYS */;
INSERT INTO `core_user_password_history` VALUES (1,'PBKDF2WITHHMACSHA512:40000:dfcb0adbca60ef026043640c1f6821e5:f8306837f2495665ebc50c79c3cbc8bc451a5238ab95fad52fd87863c7262c462c85585332bf21c87c046a221002712958d83cc4ef5a5176d726fa6d6cb0f2d8c78012a731d8a9c77c2608ce51899e0c2d9a130b93a8fac357ae4d108ddf44f0c471b25b1e091332663ccc6391d45d7d050dc3c3a11a1975e975c63b017c6024','2024-06-03 10:01:53'),(1,'PBKDF2WITHHMACSHA512:40000:172a29202add8d56d5b49841cfcd310b:05bbd77563c2d174ef40b9bcd1ee9813e99e78d289789706a338cd6538f941cec73a96e85d9a13815c11f9faadde3a06d3e7fb56bccb6302e5844f08cf0cdbf308eeb312c9f4aac391a04cefb591e9dede5b7f917b883e91fe0a0c9d338b4b15001cb5b9b7e82684a711ec6a84d20a4b1d0d6e7291a0244249b699cf992a29fb','2024-06-07 15:26:12'),(5,'PBKDF2WITHHMACSHA512:40000:82c68002da58aa3fc98573b828dc0f92:87b8d14f13f6a7c3ea67db6e07d7c506c70d858f10695a10dd6ae916e71c26555087ec1531175cb5fea6e363f60eda527b8783d45a3c62252cdefaad984190cc898183a9e1fb3dd2f75c08a94d4b356b75349d651d93b0f8dfd33c751d9cf984c377cb335c3a6979d7d50eac65980b981ed5f423b94e5039fcbd6e240406a281','2024-03-12 15:37:35'),(5,'PBKDF2WITHHMACSHA512:40000:cb27f86b760365f5b91d1486796a252a:07d28d07a75f6b41ae435085e5be63ebfbc3ab331ac08cca8e0978400f7feeb86824b86f7a2b381e50a11ac9e0bcef782b9aefddb66edb6e02b57cc20e640d3390b0f4365eb059ba23a344114f3ebeeab4ad59b124ff90a18fb306cc5059f72f6471f382014937a6c1be51b405fabbf0bfe7d219dead1d87eaa75b5780f71f3f','2024-03-12 15:37:52'),(6,'PBKDF2WITHHMACSHA512:40000:12bc85cfee1c84ada42184db0f585bd2:073c337496db8b349ed000f7f80851db3b89a14efdeabb23071a44f8d6cb7ff57cacf6b233b970ae09fbd51eb7e63a7961c0a012bc0551233cf8b2861e6c7892bb4b98f06c932452d43099a88c1774e9e6670bfb2a3258e10bc8f03a5b80a9804766d945bdaa96cb257c9b34a7e5e8776c2f2fc297514b7b0ae651c2d2e78874','2024-03-12 15:36:22'),(6,'PBKDF2WITHHMACSHA512:40000:423e23bba77c71fad7b25844a82d19e3:b655d85f8f7a10be0006d653a299691ea4c5ff93fb834853c9d72c7c52cca4afd27b6936595605745392b656727194a9042a6ff28e25976f5bba9121f19710954dae14ab2bd35c1dc20b39b829c16aa3996df18f50b22ca1f1e9f8e9afb48bfa3f9477a4b3f2effdeccb0539a1b5015953475361f1fbf5673d7dfd94b57c1b3d','2024-03-12 15:36:36'),(7,'PBKDF2WITHHMACSHA512:40000:31e13a761d44bb516e4876f6d6efd5a9:393113a50b1cf932afd0b137dc15c15454c3f48790bf5b498fc0734e3c9af37989298b7e8e211614ffd26c5e8dce812d237def13348cd7a96c1520eec2178e9fd354bbac8dfa24f9078792f4586cacc908865a1a57e12e315250ee33bb7ca7f9372b26fb87239d1322f8594581e7c779f65a5bb060cfdb55d584968db0dfa9d6','2024-03-12 15:34:33'),(7,'PBKDF2WITHHMACSHA512:40000:ed0fbc804a9612f983bef9d25593a85b:860171e61e7609ddeec428b4127182eceb368b42439ead08ffafea9880f84329d78b52abda75f6b5cecfe66743c823d10b6878ff90a470516263a0472bb38bdb2798de4b3fbd920cf5ea51e358b2d93d3052d5e972d6a6a3e0b29d37e2b3fcbcf14e7c77936cbd05d0f3b1aa45a6ca8ef474752f8ee04dbdea64b4c31f8eb36c','2024-03-12 15:34:50'),(8,'PBKDF2WITHHMACSHA512:40000:817428814558b481c52378afb38a61cf:03db2eac54ab4b847b9f1496048d1ef07d10728e4f2a846bd9bb54f3f9cc756c3f2b82181194347b2849884a42a853917fefc7a04ed3b345c9bce4c98f2ccb78870e85f8725976c41ccce4302a64097168ffe5964ec477806f23850f7107ab951d5bc4c3b76aa543e09618012f0e2884c7d04803fc1c960ddaab1c377cd8ab52','2024-03-12 15:44:34'),(8,'PBKDF2WITHHMACSHA512:40000:dfe26e33fa61efb67333567beea45ad0:b08687413cea5337dda4dd6bcc9fcde0b64a8c39d5083cbf1ade620b3e5f28c8eee944ea9b3e20f9387130ee9881814ae315c8fdaea8aab6533036d8aa47885aa1c4dae1b1475a2f25fff28f783bd90c22878cbce57b27a9894e7c087856a170f76b6662c5f7250134fdfa4308ed80791836d2c7f22376819acadcccb7fd3080','2024-03-12 15:44:52');
/*!40000 ALTER TABLE `core_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_preferences`
--

DROP TABLE IF EXISTS `core_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_preferences` (
  `id_user` varchar(100) NOT NULL,
  `pref_key` varchar(100) NOT NULL,
  `pref_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_user_preferences` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_preferences`
--

LOCK TABLES `core_user_preferences` WRITE;
/*!40000 ALTER TABLE `core_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_right`
--

DROP TABLE IF EXISTS `core_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_right` (
  `id_right` varchar(255) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_right`,`id_user`),
  KEY `index_user_right` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_right`
--

LOCK TABLES `core_user_right` WRITE;
/*!40000 ALTER TABLE `core_user_right` DISABLE KEYS */;
INSERT INTO `core_user_right` VALUES ('ACCESSCONTROL_MANAGEMENT',1),('ACCESSRULES_MANAGEMENT',1),('ADMINAVATAR_MANAGEMENT',1),('BREADCRUMBACCORDION_MANAGEMENT',1),('BREADCRUMBACCORDION_MANAGEMENT',5),('CONFIG_DOCUMENT_PRODUCER_MANAGEMENT',1),('CONTACT_MANAGEMENT',1),('CORE_ADMIN_SITE',1),('CORE_ADMIN_SITE',2),('CORE_ADMIN_SITE',5),('CORE_ADMINDASHBOARD_MANAGEMENT',1),('CORE_CACHE_MANAGEMENT',1),('CORE_DAEMONS_MANAGEMENT',1),('CORE_DASHBOARD_MANAGEMENT',1),('CORE_EDITORS_MANAGEMENT',1),('CORE_FEATURES_MANAGEMENT',1),('CORE_LEVEL_RIGHT_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',2),('CORE_LOGS_VISUALISATION',1),('CORE_MAILINGLISTS_MANAGEMENT',1),('CORE_MAILINGLISTS_MANAGEMENT',5),('CORE_MODES_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',2),('CORE_PLUGINS_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',2),('CORE_PROPERTIES_MANAGEMENT',5),('CORE_RBAC_MANAGEMENT',1),('CORE_RIGHT_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',2),('CORE_SEARCH_INDEXATION',1),('CORE_SEARCH_INDEXATION',2),('CORE_SEARCH_MANAGEMENT',1),('CORE_SEARCH_MANAGEMENT',2),('CORE_STYLES_MANAGEMENT',1),('CORE_STYLESHEET_MANAGEMENT',1),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',2),('CORE_WORKGROUPS_MANAGEMENT',1),('CORE_WORKGROUPS_MANAGEMENT',2),('CORE_XSL_EXPORT_MANAGEMENT',1),('ELASTICDATA_MANAGEMENT',1),('ENTRY_TYPE_MANAGEMENT',1),('FORMS_CATEGORIES',1),('FORMS_MANAGEMENT',1),('FORMS_MANAGEMENT',5),('FORMS_MANAGEMENT',6),('FORMS_MULTIVIEW',1),('FORMS_MULTIVIEW',5),('FORMS_MULTIVIEW',6),('FORMS_MULTIVIEW',7),('FORMS_MULTIVIEW',8),('FORMS_QUESTION_EXPORT_ORDER_MANAGEMENT',1),('GIS_MANAGEMENT',1),('GIS_MANAGEMENT',2),('HTMLPAGE_MANAGEMENT',1),('KIBANA_MANAGEMENT',1),('KIBANA_RBAC_MANAGEMENT',1),('MATOMO_MANAGEMENT',1),('MATOMO_MANAGEMENT',5),('MODULENOTIFYGRUMAPPINGMANAGER_MANAGEMENT',1),('MYLUTECE_CACHEUSERATTRIBUTE_MANAGEMENT',1),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER',1),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION',1),('MYLUTECE_MANAGEMENT',1),('POLL_MANAGEMENT',1),('PROFILES_MANAGEMENT',1),('PROFILES_VIEWS_MANAGEMENT',1),('REFERENCELIST_MANAGEMENT',1),('REGULAR_EXPRESSION_MANAGEMENT',1),('SEO_MANAGEMENT',1),('SOLR_CONFIGURATION_MANAGEMENT',1),('SOLR_FIELDS_MANAGEMENT',1),('SOLR_INDEX_MANAGEMENT',1),('SYSTEMINFO_MANAGEMENT',1),('TEMPLATE_STEP_MANAGEMENT',1),('TERMOFSERVICE_MANAGEMENT',1),('UNITS_MANAGEMENT',1),('UNITS_MANAGEMENT',5),('USERCODES_MANAGEMENT',1),('VERIFYBACKURL_MANAGEMENT',1),('VIEW_TEMP_FILES',1),('VIEW_TEMP_FILES',5),('VIEW_TEMP_FILES',6),('WORKFLOW_MANAGEMENT',1),('WORKFLOW_MANAGEMENT',5);
/*!40000 ALTER TABLE `core_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_role`
--

DROP TABLE IF EXISTS `core_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_role` (
  `role_key` varchar(50) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`role_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_role`
--

LOCK TABLES `core_user_role` WRITE;
/*!40000 ALTER TABLE `core_user_role` DISABLE KEYS */;
INSERT INTO `core_user_role` VALUES ('all_site_manager',1),('all_site_manager',2),('assign_groups',1),('assign_groups',2),('assign_groups',3),('assign_roles',1),('assign_roles',2),('assign_roles',3),('CREATE_REFERENCE_IMPORT',1),('forms_manager',1),('forms_manager',2),('forms_multiview',1),('kibana_dashboards_manager',1),('mylutece_manager',1),('profiles_manager',1),('profiles_views_manager',1),('sollicitation_administrateur',5),('sollicitation_gestionnaires',5),('sollicitation_gestionnaires',6),('sollicitation_instructeurs',5),('sollicitation_instructeurs',6),('sollicitation_instructeurs',7),('sollicitation_instructeurs',8),('super_admin',1),('super_admin',2),('unittree_management',1),('unittree_management',2),('workflow_manager',1),('workflow_manager',2);
/*!40000 ALTER TABLE `core_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_xsl_export`
--

DROP TABLE IF EXISTS `core_xsl_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_xsl_export` (
  `id_xsl_export` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `plugin` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_xsl_export`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_xsl_export`
--

LOCK TABLES `core_xsl_export` WRITE;
/*!40000 ALTER TABLE `core_xsl_export` DISABLE KEYS */;
INSERT INTO `core_xsl_export` VALUES (125,'Core - Export users to a CSV file','Export back office users to a CSV file','csv',125,'core'),(126,'Core - Export users to a XML file','Export back office users to a XML file','xml',126,'core');
/*!40000 ALTER TABLE `core_xsl_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elasticdata_forms_optionalquestionresponse`
--

DROP TABLE IF EXISTS `elasticdata_forms_optionalquestionresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elasticdata_forms_optionalquestionresponse` (
  `id_optional_question_indexation` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_optional_question_indexation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elasticdata_forms_optionalquestionresponse`
--

LOCK TABLES `elasticdata_forms_optionalquestionresponse` WRITE;
/*!40000 ALTER TABLE `elasticdata_forms_optionalquestionresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `elasticdata_forms_optionalquestionresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elasticdata_indexer_action`
--

DROP TABLE IF EXISTS `elasticdata_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elasticdata_indexer_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_datasource` varchar(255) NOT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elasticdata_indexer_action`
--

LOCK TABLES `elasticdata_indexer_action` WRITE;
/*!40000 ALTER TABLE `elasticdata_indexer_action` DISABLE KEYS */;
INSERT INTO `elasticdata_indexer_action` VALUES (1,'1',1,'FormsDataSource'),(3,'4',1,'FormsDataSource'),(4,'3',1,'FormsDataSource'),(5,'5',1,'FormsDataSource');
/*!40000 ALTER TABLE `elasticdata_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filegen_temporary_file`
--

DROP TABLE IF EXISTS `filegen_temporary_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filegen_temporary_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `title` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `id_physical_file` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filegen_temporary_file`
--

LOCK TABLES `filegen_temporary_file` WRITE;
/*!40000 ALTER TABLE `filegen_temporary_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `filegen_temporary_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_action`
--

DROP TABLE IF EXISTS `forms_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  `form_state` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_action`
--

LOCK TABLES `forms_action` WRITE;
/*!40000 ALTER TABLE `forms_action` DISABLE KEYS */;
INSERT INTO `forms_action` VALUES (1,'forms.action.modify.name','forms.action.modify.description','jsp/admin/plugins/forms/ManageForms.jsp?view=modifyForm','cog','MODIFY',0),(2,'forms.action.delete.name','forms.action.delete.description','jsp/admin/plugins/forms/ManageForms.jsp?view=confirmRemoveForm','trash','DELETE',0),(3,'forms.action.params.name','forms.action.params.description','jsp/admin/plugins/forms/ManageSteps.jsp?view=manageSteps','step-forward','PARAM',0),(4,'forms.action.publish.name','forms.action.publish.description','jsp/admin/plugins/forms/ManageForms.jsp?view=modifyPublication','calendar','PUBLISH',0),(5,'forms.action.viewResponses.name','forms.action.viewResponses.description','jsp/admin/plugins/forms/MultiviewForms.jsp?current_selected_panel=forms','list-alt','VIEW_FORM_RESPONSE',0),(6,'forms.action.json.copy.name','forms.json.copy.description','jsp/admin/plugins/forms/ManageForms.jsp?action=duplicateForm','copy','MODIFY',0),(7,'forms.action.json.download.name','forms.json.download.description','jsp/admin/plugins/forms/ManageForms.jsp?action=doExportJson','download','MODIFY',0),(100,'module.forms.documentproducer.actions.extractpdf.name','module.forms.documentproducer.actions.extractpdf.description','jsp/admin/plugins/forms/modules/documentproducer/ManageConfigProducer.jsp?view=getManageConfigProducer','file-pdf-o','MODIFY',0);
/*!40000 ALTER TABLE `forms_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_breadcrumbaccordion_config_item`
--

DROP TABLE IF EXISTS `forms_breadcrumbaccordion_config_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_breadcrumbaccordion_config_item` (
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_step` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_form`,`id_step`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_breadcrumbaccordion_config_item`
--

LOCK TABLES `forms_breadcrumbaccordion_config_item` WRITE;
/*!40000 ALTER TABLE `forms_breadcrumbaccordion_config_item` DISABLE KEYS */;
INSERT INTO `forms_breadcrumbaccordion_config_item` VALUES (2,2,0),(2,3,1),(2,4,2),(2,5,3);
/*!40000 ALTER TABLE `forms_breadcrumbaccordion_config_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_category`
--

DROP TABLE IF EXISTS `forms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_category`
--

LOCK TABLES `forms_category` WRITE;
/*!40000 ALTER TABLE `forms_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_config_producer`
--

DROP TABLE IF EXISTS `forms_config_producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_config_producer` (
  `id_config` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_question_name_file` int(11) DEFAULT NULL,
  `id_form` int(11) DEFAULT NULL,
  `config_type` varchar(255) DEFAULT NULL,
  `text_file_name` varchar(255) DEFAULT NULL,
  `type_config_file_name` varchar(255) DEFAULT NULL,
  `extract_empty` int(11) DEFAULT 0,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_config_producer`
--

LOCK TABLES `forms_config_producer` WRITE;
/*!40000 ALTER TABLE `forms_config_producer` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_config_producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_config_question`
--

DROP TABLE IF EXISTS `forms_config_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_config_question` (
  `id_config` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  PRIMARY KEY (`id_config`,`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_config_question`
--

LOCK TABLES `forms_config_question` WRITE;
/*!40000 ALTER TABLE `forms_config_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_config_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_control`
--

DROP TABLE IF EXISTS `forms_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_control` (
  `id_control` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `error_message` varchar(512) DEFAULT '',
  `validator_name` varchar(255) NOT NULL,
  `control_type` varchar(255) NOT NULL,
  `id_control_target` int(11) NOT NULL DEFAULT 0,
  `id_control_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_control`),
  KEY `index_fc_id_control_target` (`id_control_target`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_control`
--

LOCK TABLES `forms_control` WRITE;
/*!40000 ALTER TABLE `forms_control` DISABLE KEYS */;
INSERT INTO `forms_control` VALUES (1,'2','','forms.patternValidator','validation',3,0),(2,'7829',NULL,'forms.listValueValidator','conditional',997,0),(3,'7828',NULL,'forms.listValueValidator','conditional',998,0),(8,'7829',NULL,'forms.listValueValidator','conditional',997,0),(9,'7828',NULL,'forms.listValueValidator','conditional',998,0),(13,'2','','forms.patternValidator','validation',82,0),(14,'349',NULL,'forms.listValueValidator','conditional',49,0),(15,'347',NULL,'forms.listValueValidator','conditional',50,0),(16,'485',NULL,'forms.listValueValidator','conditional',68,0);
/*!40000 ALTER TABLE `forms_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_control_group`
--

DROP TABLE IF EXISTS `forms_control_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_control_group` (
  `id_control_group` int(11) NOT NULL AUTO_INCREMENT,
  `logical_operator` varchar(50) NOT NULL,
  PRIMARY KEY (`id_control_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_control_group`
--

LOCK TABLES `forms_control_group` WRITE;
/*!40000 ALTER TABLE `forms_control_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_control_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_control_question`
--

DROP TABLE IF EXISTS `forms_control_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_control_question` (
  `id_control` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  PRIMARY KEY (`id_control`,`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_control_question`
--

LOCK TABLES `forms_control_question` WRITE;
/*!40000 ALTER TABLE `forms_control_question` DISABLE KEYS */;
INSERT INTO `forms_control_question` VALUES (1,3),(2,5),(3,5),(8,50),(9,50),(13,82),(14,5),(15,5),(16,55);
/*!40000 ALTER TABLE `forms_control_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_control_question_mapping`
--

DROP TABLE IF EXISTS `forms_control_question_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_control_question_mapping` (
  `id_control` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_control`,`id_question`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_control_question_mapping`
--

LOCK TABLES `forms_control_question_mapping` WRITE;
/*!40000 ALTER TABLE `forms_control_question_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_control_question_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_default_config`
--

DROP TABLE IF EXISTS `forms_default_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_default_config` (
  `id_config` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `config_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id_config`,`id_form`,`config_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_default_config`
--

LOCK TABLES `forms_default_config` WRITE;
/*!40000 ALTER TABLE `forms_default_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_default_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_display`
--

DROP TABLE IF EXISTS `forms_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_display` (
  `id_display` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) DEFAULT 0,
  `id_step` int(11) DEFAULT 0,
  `id_composite` int(11) DEFAULT 0,
  `id_parent` int(11) DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `composite_type` varchar(255) DEFAULT '',
  `display_depth` int(11) DEFAULT 0,
  PRIMARY KEY (`id_display`),
  KEY `index_fd_id_form` (`id_form`),
  KEY `index_fd_id_step` (`id_step`),
  KEY `index_fd_id_composite` (`id_composite`),
  KEY `index_fd_id_parent` (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_display`
--

LOCK TABLES `forms_display` WRITE;
/*!40000 ALTER TABLE `forms_display` DISABLE KEYS */;
INSERT INTO `forms_display` VALUES (1,1,1,3,4,3,'question',1),(2,1,1,2,4,2,'question',1),(3,1,1,1,4,1,'question',1),(4,1,1,1,0,1,'group',0),(5,1,1,4,4,4,'question',1),(6,1,1,2,0,2,'group',0),(7,1,1,5,6,1,'question',1),(48,1,1,9,0,3,'group',0),(49,1,1,40,0,4,'question',0),(50,1,1,41,0,5,'question',0),(51,1,1,42,0,6,'question',0),(52,1,1,43,0,7,'question',0),(67,4,7,55,0,1,'question',0),(68,4,7,56,0,2,'question',0),(69,4,8,57,0,1,'question',0),(70,4,8,13,0,2,'group',0),(71,4,8,58,70,1,'question',1),(72,4,8,59,70,2,'question',1),(73,4,8,14,0,3,'group',0),(74,4,8,60,73,1,'question',1),(75,4,8,61,73,2,'question',1),(76,4,8,15,0,4,'group',0),(77,4,8,62,76,1,'question',1),(78,4,8,63,76,2,'question',1),(79,4,8,16,0,5,'group',0),(80,4,8,64,79,1,'question',1),(81,4,8,65,79,2,'question',1),(82,4,8,66,79,3,'question',1),(83,4,8,67,79,5,'question',1),(84,4,8,68,79,7,'question',1),(85,4,8,69,79,4,'question',1),(86,4,8,70,79,6,'question',1),(87,4,8,71,79,8,'question',1),(88,4,8,17,0,6,'group',0),(89,4,8,72,88,1,'question',1),(90,4,8,73,88,2,'question',1),(91,4,8,74,88,3,'question',1),(92,4,9,75,105,1,'question',1),(95,4,9,78,105,5,'question',1),(97,4,9,80,105,6,'question',1),(98,4,9,81,105,7,'question',1),(99,4,9,82,105,4,'question',1),(100,4,10,85,0,1,'question',0),(101,4,10,86,0,2,'question',0),(102,4,10,87,0,3,'question',0),(103,4,9,83,105,3,'question',1),(104,4,9,84,105,2,'question',1),(105,4,9,18,0,1,'group',0);
/*!40000 ALTER TABLE `forms_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_export_config`
--

DROP TABLE IF EXISTS `forms_export_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_export_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_export_config`
--

LOCK TABLES `forms_export_config` WRITE;
/*!40000 ALTER TABLE `forms_export_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_export_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_form`
--

DROP TABLE IF EXISTS `forms_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_form` (
  `id_form` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  `availability_start_date` timestamp NULL DEFAULT NULL,
  `availability_end_date` timestamp NULL DEFAULT NULL,
  `max_number_response` int(11) DEFAULT 0,
  `workgroup` varchar(255) DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `authentification_needed` smallint(6) DEFAULT NULL,
  `one_response_by_user` smallint(6) DEFAULT 0,
  `breadcrumb_name` varchar(255) NOT NULL DEFAULT '',
  `display_summary` smallint(6) NOT NULL DEFAULT 0,
  `return_url` varchar(255) DEFAULT '',
  `captcha_step_initial` smallint(6) DEFAULT 0,
  `captcha_step_final` smallint(6) DEFAULT 0,
  `captcha_recap` smallint(6) DEFAULT 0,
  `count_responses` smallint(6) DEFAULT 0,
  `label_final_button` varchar(255) DEFAULT NULL,
  `unavailable_message` varchar(255) DEFAULT NULL,
  `id_logo` int(11) NOT NULL DEFAULT 0,
  `id_category` int(11) DEFAULT NULL,
  `backup_enabled` smallint(6) NOT NULL DEFAULT 0,
  `access_to_responses_by_role` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_form`
--

LOCK TABLES `forms_form` WRITE;
/*!40000 ALTER TABLE `forms_form` DISABLE KEYS */;
INSERT INTO `forms_form` VALUES (1,'Contacter ma mairie','Formulaire pour solliciter les services administratifs Ã  propos d\'un sujet prÃ©cis. Le formulaire a pour vocation d\'Ãªtre simple.','2024-03-05 14:04:06','2024-03-12 15:24:49','2024-03-01 12:00:00',NULL,0,'all',1,0,0,'forms-breadcrumbaccordion.breadcrumbAccordion',1,'jsp/site/Portal.jsp',0,0,0,0,'','',0,0,1,0),(4,'Demande d\'acte de Mariage','Demande d\'acte de Mariage','2024-03-14 16:51:09','2024-06-07 15:47:21','2024-03-11 12:00:00',NULL,0,'all',2,1,1,'forms-breadcrumbaccordion.breadcrumbAccordion',1,'jsp/site/Portal.jsp',0,0,0,0,'','',0,0,0,0);
/*!40000 ALTER TABLE `forms_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_global_action`
--

DROP TABLE IF EXISTS `forms_global_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_global_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `code` varchar(100) DEFAULT NULL,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`),
  KEY `index_fga_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_global_action`
--

LOCK TABLES `forms_global_action` WRITE;
/*!40000 ALTER TABLE `forms_global_action` DISABLE KEYS */;
INSERT INTO `forms_global_action` VALUES (1,'multiviewconfig','forms.action.multiviewConfig.labelKey','forms.action.multiviewConfig.descriptionKey','jsp/admin/plugins/forms/MultiviewForms.jsp?view=view_multiview_config','edit'),(2,'multiviewExport','forms.action.multiviewExport.labelKey','forms.action.multiviewExport.descriptionKey','jsp/admin/plugins/forms/MultiviewForms.jsp','edit');
/*!40000 ALTER TABLE `forms_global_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_group`
--

DROP TABLE IF EXISTS `forms_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_group` (
  `id_group` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(512) DEFAULT '',
  `id_step` int(11) DEFAULT 0,
  `iteration_min` int(11) DEFAULT 1,
  `iteration_max` int(11) DEFAULT 1,
  `iteration_add_label` varchar(255) DEFAULT '',
  `iteration_remove_label` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_group`
--

LOCK TABLES `forms_group` WRITE;
/*!40000 ALTER TABLE `forms_group` DISABLE KEYS */;
INSERT INTO `forms_group` VALUES (1,'Vos coordonnÃ©es','',1,1,1,'',''),(2,'Sujet de votre demande','',1,1,1,'',''),(9,'Votre demande','',1,1,1,'',''),(13,'Lieu et date','',8,1,1,'',''),(14,'IdentitÃ© de la personne dont vous demandez l\'acte','<p>Les actes de naissance et les tables d&eacute;cennales de naissance ant&eacute;rieurs &agrave; l\'ann&eacute;e 1922 ont &eacute;t&eacute; num&eacute;ris&eacute;s et vous pouvez les consulter directement sur le site des <a href=\"https://archives.paris.fr/a/1/accueil/\" target=\"_blank\">Archives de Paris</a></p>\r\n<p>Seuls les actes enregistr&eacute;s &agrave; Paris peuvent &ecirc;tre d&eacute;livr&eacute;s. Pour une autre commune,</p>',8,1,1,'',''),(15,'IdentitÃ© du conjoint','',8,1,1,'',''),(16,'IdentitÃ© des parents','<p>Attention Si vous souhaitez recevoir une copie int&eacute;grale, un extrait avec mention de la filiation ou un extrait plurilingue, n&rsquo;oubliez pas de pr&eacute;ciser dans votre demande toutes les indications concernant les parents : Le nom et pr&eacute;noms de la m&egrave;re / des m&egrave;res Le nom et pr&eacute;noms du p&egrave;re / des p&egrave;res &Agrave; d&eacute;faut, le service de l&rsquo;&eacute;tat civil ne pourra vous d&eacute;livrer qu&rsquo;un extrait sans mention de la filiation.</p>',8,1,1,'',''),(17,'Type d\'acte demandÃ©','',8,1,1,'',''),(18,'Vos coordonnÃ©es','',9,1,1,'','');
/*!40000 ALTER TABLE `forms_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_indexer_action`
--

DROP TABLE IF EXISTS `forms_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_indexer_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_form_response` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`),
  KEY `idx_fia_id_form_response` (`id_form_response`),
  KEY `idx_fia_id_task` (`id_task`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_indexer_action`
--

LOCK TABLES `forms_indexer_action` WRITE;
/*!40000 ALTER TABLE `forms_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `forms_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_message`
--

DROP TABLE IF EXISTS `forms_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL,
  `end_message_display` smallint(6) DEFAULT NULL,
  `end_message` varchar(3000) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `index_fm_id_form` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_message`
--

LOCK TABLES `forms_message` WRITE;
/*!40000 ALTER TABLE `forms_message` DISABLE KEYS */;
INSERT INTO `forms_message` VALUES (1,1,1,'<p>Votre r&eacute;ponse au formulaire a bien &eacute;t&eacute; prise en compte.</p>'),(4,4,1,'<p>Votre r&eacute;ponse au formulaire a bien &eacute;t&eacute; prise en compte.</p>');
/*!40000 ALTER TABLE `forms_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_question`
--

DROP TABLE IF EXISTS `forms_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_question` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `id_entry` int(11) DEFAULT 0,
  `id_step` int(11) DEFAULT 0,
  `is_visible_multiview_global` smallint(6) NOT NULL DEFAULT 0,
  `is_visible_multiview_form_selected` smallint(6) NOT NULL DEFAULT 0,
  `multiview_column_order` int(11) NOT NULL DEFAULT 0,
  `column_title` varchar(255) NOT NULL DEFAULT '',
  `is_filterable_multiview_global` smallint(6) NOT NULL DEFAULT 0,
  `is_filterable_multiview_form_selected` smallint(6) NOT NULL DEFAULT 0,
  `export_display_order` int(11) DEFAULT 0,
  PRIMARY KEY (`id_question`),
  KEY `index_fq_code` (`code`),
  KEY `index_fq_id_entry` (`id_entry`),
  KEY `index_fq_id_step` (`id_step`),
  KEY `index_fg_id_step` (`id_step`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question`
--

LOCK TABLES `forms_question` WRITE;
/*!40000 ALTER TABLE `forms_question` DISABLE KEYS */;
INSERT INTO `forms_question` VALUES (1,'Nom','question_989','',1,1,0,0,0,'Nom',0,0,0),(2,'PrÃ©nom','question_990','',2,1,0,0,0,'PrÃ©nom',0,0,0),(3,'Courriel','question_991','',3,1,0,0,0,'Courriel',0,0,0),(4,'NumÃ©ro de tÃ©lÃ©phone','question_992','',4,1,0,0,0,'NumÃ©ro de tÃ©lÃ©phone',0,0,0),(5,'SÃ©lectionnez le domaine sur lequel porte votre demande','question_993','',5,1,0,0,0,'SÃ©lectionnez le domaine sur lequel porte votre demande',0,0,0),(40,'ThÃ©matique Affaires Scolaires','question_40','',40,1,0,0,0,'ThÃ©matique Affaires Scolaires',0,0,0),(41,'ThÃ©matique Espace Public','question_41','',41,1,0,0,0,'ThÃ©matique Espace Public',0,0,0),(42,'Votre message','question_42','',42,1,0,0,0,'Votre message',0,0,0),(43,'NumÃ©ro de dossier','question_43',NULL,43,1,0,0,0,'NumÃ©ro de dossier',0,0,0),(55,'Motif de la demande','question_95','',55,7,0,0,0,'Motif de la demande',0,0,0),(56,'PrÃ©ciser le motif','question_96','',56,7,0,0,0,'PrÃ©ciser le motif',0,0,0),(57,'commentaire','question_97','<p>Les actes de mariage ant&eacute;rieur &agrave; 1946 et les tables annu&eacute;lles et d&eacute;cennales correspondantes ont &eacute;t&eacute; num&eacute;ris&eacute;s et vous pouvez les consulter directement sur le site de CiteLibre</p>\r\n<p>Seuls les actes enregistr&eacute;s &agrave; <strong>CiteLibre</strong>&nbsp;peuvent &ecirc;tre d&eacute;livr&eacute;s. Si l\'acte concerne une autre commune, Veuillez consulter&nbsp;<a href=\"https://www.service-public.fr/particuliers/vosdroits/R42837\" target=\"_blank\">service-public.fr </a></p>',57,8,0,0,0,'commentaire',0,0,0),(58,'Lieu du mariage','question_99','',58,8,0,0,0,'Lieu',0,0,0),(59,'Date du mariage','question_100','',59,8,0,0,0,'Date du mariage',0,0,0),(60,'Nom','question_101','',60,8,0,0,0,'Nom',0,0,0),(61,'PrÃ©nom','question_102','',61,8,0,0,0,'PrÃ©nom',0,0,0),(62,'Nom','question_103','',62,8,0,0,0,'Nom',0,0,0),(63,'PrÃ©nom','question_104','',63,8,0,0,0,'PrÃ©nom',0,0,0),(64,'Nom Parent 1','question_105','',64,8,0,0,0,'Nom Parent 1',0,0,0),(65,'PrÃ©nom Parent 1','question_106','',65,8,0,0,0,'PrÃ©nom Parent 1',0,0,0),(66,'Nom Parent 2','question_107','',66,8,0,0,0,'Nom Parent 2',0,0,0),(67,'Nom Parent 3','question_108','',67,8,0,0,0,'Nom Parent 3',0,0,0),(68,'Nom Parent 4','question_109','',68,8,0,0,0,'Nom Parent 4',0,0,0),(69,'PrÃ©nom Parent 2','question_110','',69,8,0,0,0,'PrÃ©nom Parent 2',0,0,0),(70,'PrÃ©nom Parent 3','question_111','',70,8,0,0,0,'PrÃ©nom Parent 3',0,0,0),(71,'PrÃ©nom Parent 4','question_112','',71,8,0,0,0,'PrÃ©nom Parent 4',0,0,0),(72,'QualitÃ© du demandeur','question_113','',72,8,0,0,0,'QualitÃ© du demandeur',0,0,0),(73,'Nombre d\'actes demandÃ©s','question_114','',73,8,0,0,0,'Nombre d\'actes demandÃ©s',0,0,0),(74,'Type d\'acte demandÃ© :','question_115','',74,8,0,0,0,'Type d\'acte demandÃ© :',0,0,0),(75,'commentaire','question_116','<p>Le demandeur d\'un acte doit &ecirc;tre majeur</p>',75,9,0,0,0,'commentaire',0,0,0),(78,'Adresse','question_119','',78,9,0,0,0,'Adresse',0,0,0),(80,'Pays (Attention ! si l\'adresse est Ã  l\'Ã©tranger, l\'indication du pays est obligatoire)','question_121','',80,9,0,0,0,'Pays (Attention ! si l\'adresse est Ã  l\'Ã©tranger, l\'indication du pays est obligatoire)',0,0,0),(81,'commentaire','question_122','<p>Vous serez inform&eacute; de l\'&eacute;volution de votre demande sur cette adresse mail.</p>\r\n<p>Des erreurs de saisie peuvent entra&icirc;ner l\'envoi &agrave; tort d\'informations dans la boite mail d\'un tiers. La ville de CiteLibre ne saurait &ecirc;tre tenue pour responsable d\'une transmission erron&eacute;e.</p>',81,9,0,0,0,'commentaire',0,0,0),(82,'Adresse mail','question_123','',82,9,0,0,0,'Adresse mail',0,0,0),(83,'PrÃ©nom authentifiÃ©','question_44','',83,9,0,0,0,'PrÃ©nom authentifiÃ©',0,0,0),(84,'Nom authentifiÃ©','question_45','',84,9,0,0,0,'Nom authentifiÃ©',0,0,0),(85,'commentaire','question_124','<p>&lt;p&gt;Merci de bien v&amp;eacute;rifier le r&amp;eacute;capitulatif de votre demande ci-dessus.&lt;br /&gt;Vous pouvez modifier les informations saisies si besoin avant de valider votre demande.&lt;/p&gt;</p>',85,10,0,0,0,'commentaire',0,0,0),(86,'Jâ€™accepte les conditions gÃ©nÃ©rales dâ€™utilisation et je certifie sur lâ€™honneur lâ€™exactitude des informations fournies.','question_125',NULL,86,10,0,0,0,'Jâ€™accepte les conditions gÃ©nÃ©rales dâ€™utilisation et je certifie sur lâ€™honneur lâ€™exactitude des informations fournies.',0,0,0),(87,' NumÃ©ro','question_126',NULL,87,10,0,0,0,' NumÃ©ro',0,0,0);
/*!40000 ALTER TABLE `forms_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_question_entry_response`
--

DROP TABLE IF EXISTS `forms_question_entry_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_question_entry_response` (
  `id_question_entry_response` int(11) NOT NULL AUTO_INCREMENT,
  `id_question_response` int(11) NOT NULL DEFAULT 0,
  `id_entry_response` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_question_entry_response`),
  KEY `idx_fqer_id_question_response` (`id_question_response`),
  KEY `idx_fqer_id_entry_response` (`id_entry_response`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question_entry_response`
--

LOCK TABLES `forms_question_entry_response` WRITE;
/*!40000 ALTER TABLE `forms_question_entry_response` DISABLE KEYS */;
INSERT INTO `forms_question_entry_response` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(8,8,8),(10,7,10),(67,62,67),(68,63,68),(69,65,69),(70,65,70),(71,65,71),(72,65,72),(73,65,73),(74,66,74),(75,67,75),(76,68,76),(77,69,77),(78,70,78),(79,71,79),(80,72,80),(81,73,81),(82,74,82),(83,75,83),(84,76,84),(85,77,85),(86,78,86),(87,79,87),(88,80,88),(89,81,89),(90,82,90),(91,83,91),(92,84,92),(93,85,93),(94,86,94),(95,87,95),(96,88,96),(97,89,97),(98,90,98),(99,92,99),(100,92,100),(101,92,101),(102,92,102),(103,92,103),(104,93,104),(105,94,105),(106,95,106),(107,96,107),(108,97,108),(109,98,109),(110,99,110),(111,100,111),(112,101,112),(113,102,113),(114,103,114),(115,104,115),(116,105,116),(117,106,117),(118,107,118),(119,108,119),(120,110,120),(121,111,121),(122,112,122),(123,113,123),(124,114,124),(125,117,125),(126,117,126),(127,118,127);
/*!40000 ALTER TABLE `forms_question_entry_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_question_response`
--

DROP TABLE IF EXISTS `forms_question_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_question_response` (
  `id_question_response` int(11) NOT NULL AUTO_INCREMENT,
  `id_form_response` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `id_step` int(11) NOT NULL DEFAULT 0,
  `iteration_number` int(11) DEFAULT 0,
  PRIMARY KEY (`id_question_response`),
  KEY `idx_fqr_id_form_response` (`id_form_response`),
  KEY `idx_fqr_id_question` (`id_question`),
  KEY `idx_fqr_id_step` (`id_step`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question_response`
--

LOCK TABLES `forms_question_response` WRITE;
/*!40000 ALTER TABLE `forms_question_response` DISABLE KEYS */;
INSERT INTO `forms_question_response` VALUES (1,1,1,1,0),(2,1,2,1,0),(3,1,3,1,0),(4,1,4,1,0),(5,1,5,1,0),(6,1,41,1,0),(7,1,42,1,0),(8,1,43,1,0),(62,3,55,7,0),(63,3,56,7,0),(64,3,57,8,0),(65,3,58,8,0),(66,3,59,8,0),(67,3,60,8,0),(68,3,61,8,0),(69,3,62,8,0),(70,3,63,8,0),(71,3,64,8,0),(72,3,65,8,0),(73,3,66,8,0),(74,3,69,8,0),(75,3,67,8,0),(76,3,70,8,0),(77,3,68,8,0),(78,3,71,8,0),(79,3,72,8,0),(80,3,73,8,0),(81,3,74,8,0),(82,4,1,1,0),(83,4,2,1,0),(84,4,3,1,0),(85,4,4,1,0),(86,4,5,1,0),(87,4,41,1,0),(88,4,42,1,0),(89,4,43,1,0),(90,5,55,7,0),(91,5,57,8,0),(92,5,58,8,0),(93,5,59,8,0),(94,5,60,8,0),(95,5,61,8,0),(96,5,62,8,0),(97,5,63,8,0),(98,5,64,8,0),(99,5,65,8,0),(100,5,66,8,0),(101,5,69,8,0),(102,5,67,8,0),(103,5,70,8,0),(104,5,68,8,0),(105,5,71,8,0),(106,5,72,8,0),(107,5,73,8,0),(108,5,74,8,0),(109,5,75,9,0),(110,5,84,9,0),(111,5,83,9,0),(112,5,82,9,0),(113,5,78,9,0),(114,5,80,9,0),(115,5,81,9,0),(116,5,85,10,0),(117,5,86,10,0),(118,5,87,10,0);
/*!40000 ALTER TABLE `forms_question_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_response`
--

DROP TABLE IF EXISTS `forms_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_response` (
  `id_response` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `guid` varchar(255) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  `from_save` smallint(6) DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `role` varchar(50) DEFAULT NULL,
  `admin` varchar(50) DEFAULT NULL,
  `update_date_status` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_response`),
  KEY `idx_fr_id_form` (`id_form`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_response`
--

LOCK TABLES `forms_response` WRITE;
/*!40000 ALTER TABLE `forms_response` DISABLE KEYS */;
INSERT INTO `forms_response` VALUES (1,1,NULL,'2024-03-12 15:23:42','2024-03-12 15:23:42',0,0,NULL,NULL,'2024-03-12 15:23:42'),(3,4,'john.doe@citelibre.org','2024-03-15 11:43:27','2024-03-15 11:43:27',1,0,NULL,NULL,'2024-03-15 11:43:27'),(4,1,NULL,'2024-06-05 14:36:31','2024-06-05 14:36:31',0,0,NULL,NULL,'2024-06-05 14:36:31'),(5,4,'test@paris.fr','2024-06-07 15:56:39','2024-06-07 15:56:39',0,0,NULL,NULL,'2024-06-07 15:56:39');
/*!40000 ALTER TABLE `forms_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_response_step`
--

DROP TABLE IF EXISTS `forms_response_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_response_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_form_response` int(11) NOT NULL DEFAULT 0,
  `id_step` int(11) NOT NULL DEFAULT 0,
  `order_response` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_frs_id_form_response` (`id_form_response`),
  KEY `idx_frs_id_step` (`id_step`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_response_step`
--

LOCK TABLES `forms_response_step` WRITE;
/*!40000 ALTER TABLE `forms_response_step` DISABLE KEYS */;
INSERT INTO `forms_response_step` VALUES (1,1,1,0),(8,3,7,0),(9,3,8,1),(10,4,1,0),(11,5,7,0),(12,5,8,1),(13,5,9,2),(14,5,10,3);
/*!40000 ALTER TABLE `forms_response_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_step`
--

DROP TABLE IF EXISTS `forms_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_step` (
  `id_step` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `id_form` int(11) NOT NULL DEFAULT 0,
  `is_initial` smallint(6) NOT NULL DEFAULT 0,
  `is_final` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_step`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_step`
--

LOCK TABLES `forms_step` WRITE;
/*!40000 ALTER TABLE `forms_step` DISABLE KEYS */;
INSERT INTO `forms_step` VALUES (1,'Ma demande','',1,1,1),(7,'Pour votre demande d\'acte, veuillez prÃ©ciser le motif','Motif de la demande',4,1,0),(8,'Votre demande','',4,0,0),(9,'CoordonnÃ©es','',4,0,0),(10,'Validation','',4,0,1);
/*!40000 ALTER TABLE `forms_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_transition`
--

DROP TABLE IF EXISTS `forms_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_transition` (
  `id_transition` int(11) NOT NULL AUTO_INCREMENT,
  `from_step` int(11) NOT NULL,
  `next_step` int(11) NOT NULL,
  `priority` int(11) DEFAULT 0,
  PRIMARY KEY (`id_transition`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_transition`
--

LOCK TABLES `forms_transition` WRITE;
/*!40000 ALTER TABLE `forms_transition` DISABLE KEYS */;
INSERT INTO `forms_transition` VALUES (4,9,10,1),(6,7,8,1),(7,8,9,1);
/*!40000 ALTER TABLE `forms_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_unittree_unit_selection_config`
--

DROP TABLE IF EXISTS `forms_unittree_unit_selection_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_unittree_unit_selection_config` (
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_unittree_unit_selection_config`
--

LOCK TABLES `forms_unittree_unit_selection_config` WRITE;
/*!40000 ALTER TABLE `forms_unittree_unit_selection_config` DISABLE KEYS */;
INSERT INTO `forms_unittree_unit_selection_config` VALUES (1,1,1);
/*!40000 ALTER TABLE `forms_unittree_unit_selection_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms_unittree_unit_selection_config_value`
--

DROP TABLE IF EXISTS `forms_unittree_unit_selection_config_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_unittree_unit_selection_config_value` (
  `id_config_value` int(11) NOT NULL AUTO_INCREMENT,
  `id_config` int(11) NOT NULL DEFAULT 0,
  `id_step` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `response_value` varchar(255) DEFAULT NULL,
  `id_unit` int(11) NOT NULL DEFAULT 0,
  `id_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_config_value`),
  KEY `index_unit_selection_conf_value` (`id_config`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_unittree_unit_selection_config_value`
--

LOCK TABLES `forms_unittree_unit_selection_config_value` WRITE;
/*!40000 ALTER TABLE `forms_unittree_unit_selection_config_value` DISABLE KEYS */;
INSERT INTO `forms_unittree_unit_selection_config_value` VALUES (137,1,1,5,'logement_habitat',3,1),(138,1,1,40,'ecoles',5,2),(139,1,1,40,'centres_loisirs',7,3),(140,1,1,40,'petite_enfance',6,4),(141,1,1,41,'voirie',8,5),(142,1,1,41,'espaces_verts',9,6),(143,1,1,5,'espace_public',1,7),(144,1,1,5,'affaires_scolaires',4,8);
/*!40000 ALTER TABLE `forms_unittree_unit_selection_config_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_entry`
--

DROP TABLE IF EXISTS `genatt_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_entry` (
  `id_entry` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) NOT NULL,
  `id_type` int(11) NOT NULL DEFAULT 0,
  `id_parent` int(11) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `fields_in_line` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `id_field_depend` int(11) DEFAULT NULL,
  `field_unique` smallint(6) DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `pos_conditional` int(11) DEFAULT 0,
  `error_message` mediumtext DEFAULT NULL,
  `is_only_display_back` smallint(6) DEFAULT 0,
  `is_indexed` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_entry`),
  KEY `index_genatt_entry_resource` (`id_resource`),
  KEY `index_genatt_entry_parent` (`id_parent`),
  KEY `index_genatt_code` (`code`),
  KEY `fk_genatt_entry_type` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_entry`
--

LOCK TABLES `genatt_entry` WRITE;
/*!40000 ALTER TABLE `genatt_entry` DISABLE KEYS */;
INSERT INTO `genatt_entry` VALUES (1,1,'FORMS_FORM',106,NULL,'Nom','question_989','','',0,0,1,NULL,0,'',0,'',0,1),(2,1,'FORMS_FORM',106,NULL,'PrÃ©nom','question_990','','',0,0,2,NULL,0,'',0,'',0,1),(3,1,'FORMS_FORM',106,NULL,'Courriel','question_991','','',0,0,3,NULL,0,'',0,'',0,1),(4,1,'FORMS_FORM',119,NULL,'NumÃ©ro de tÃ©lÃ©phone','question_992','','',0,0,4,NULL,0,'',0,'',0,1),(5,1,'FORMS_FORM',105,NULL,'SÃ©lectionnez le domaine sur lequel porte votre demande','question_993','','',0,0,5,NULL,0,'',0,NULL,0,1),(40,1,'FORMS_FORM',105,NULL,'ThÃ©matique Affaires Scolaires','question_40','','',0,0,0,NULL,0,'',0,NULL,0,1),(41,1,'FORMS_FORM',105,NULL,'ThÃ©matique Espace Public','question_41','','',0,0,0,NULL,0,'',0,NULL,0,1),(42,1,'FORMS_FORM',107,NULL,'Votre message','question_42','Message limitÃ© Ã  2500 caractÃ¨res','',0,0,0,NULL,0,'',0,NULL,0,1),(43,1,'FORMS_FORM',112,NULL,'NumÃ©ro de dossier','question_43',NULL,NULL,0,0,0,NULL,0,'',0,NULL,0,1),(55,4,'FORMS_FORM',101,NULL,'Motif de la demande','question_95','','',0,0,1,NULL,0,'',0,NULL,0,0),(56,4,'FORMS_FORM',106,NULL,'PrÃ©ciser le motif','question_96','','',0,0,2,NULL,0,'',0,'',0,1),(57,4,'FORMS_FORM',103,NULL,NULL,'question_97',NULL,'<p>Les actes de mariage ant&eacute;rieur &agrave; 1946 et les tables annu&eacute;lles et d&eacute;cennales correspondantes ont &eacute;t&eacute; num&eacute;ris&eacute;s et vous pouvez les consulter directement sur le site de CiteLibre</p>\r\n<p>Seuls les actes enregistr&eacute;s &agrave; <strong>CiteLibre</strong>&nbsp;peuvent &ecirc;tre d&eacute;livr&eacute;s. Si l\'acte concerne une autre commune, Veuillez consulter&nbsp;<a href=\"https://www.service-public.fr/particuliers/vosdroits/R42837\" target=\"_blank\">service-public.fr </a></p>',0,0,3,NULL,0,'',0,NULL,0,0),(58,4,'FORMS_FORM',109,NULL,'Lieu du mariage','question_99','','',0,0,4,NULL,0,' checkaddress',0,NULL,0,1),(59,4,'FORMS_FORM',104,NULL,'Date du mariage','question_100','','',0,0,5,NULL,0,'',0,NULL,0,1),(60,4,'FORMS_FORM',106,NULL,'Nom','question_101','','',0,0,6,NULL,0,'',0,'',0,1),(61,4,'FORMS_FORM',106,NULL,'PrÃ©nom','question_102','','',0,0,7,NULL,0,'',0,'',0,1),(62,4,'FORMS_FORM',106,NULL,'Nom','question_103','','',0,0,8,NULL,0,'',0,'',0,1),(63,4,'FORMS_FORM',106,NULL,'PrÃ©nom','question_104','','',0,0,9,NULL,0,'',0,'',0,1),(64,4,'FORMS_FORM',106,NULL,'Nom Parent 1','question_105','','',0,0,10,NULL,0,'',0,'',0,1),(65,4,'FORMS_FORM',106,NULL,'PrÃ©nom Parent 1','question_106','','',0,0,11,NULL,0,'',0,'',0,1),(66,4,'FORMS_FORM',106,NULL,'Nom Parent 2','question_107','','',0,0,12,NULL,0,'',0,'',0,1),(67,4,'FORMS_FORM',106,NULL,'Nom Parent 3','question_108','','',0,0,13,NULL,0,'',0,'',0,1),(68,4,'FORMS_FORM',106,NULL,'Nom Parent 4','question_109','','',0,0,14,NULL,0,'',0,'',0,1),(69,4,'FORMS_FORM',106,NULL,'PrÃ©nom Parent 2','question_110','','',0,0,15,NULL,0,'',0,'',0,1),(70,4,'FORMS_FORM',106,NULL,'PrÃ©nom Parent 3','question_111','','',0,0,16,NULL,0,'',0,'',0,1),(71,4,'FORMS_FORM',106,NULL,'PrÃ©nom Parent 4','question_112','','',0,0,17,NULL,0,'',0,'',0,1),(72,4,'FORMS_FORM',105,NULL,'QualitÃ© du demandeur','question_113','','',0,0,18,NULL,0,'',0,NULL,0,1),(73,4,'FORMS_FORM',120,NULL,'Nombre d\'actes demandÃ©s','question_114','','',0,0,19,NULL,0,'',0,'',0,1),(74,4,'FORMS_FORM',101,NULL,'Type d\'acte demandÃ© :','question_115','','',0,1,20,NULL,0,'',0,NULL,0,0),(75,4,'FORMS_FORM',103,NULL,NULL,'question_116',NULL,'<p>Le demandeur d\'un acte doit &ecirc;tre majeur</p>',0,0,21,NULL,0,'',0,NULL,0,0),(78,4,'FORMS_FORM',106,NULL,'Adresse','question_119','','',0,0,24,NULL,0,'',0,'',0,1),(80,4,'FORMS_FORM',106,NULL,'Pays (Attention ! si l\'adresse est Ã  l\'Ã©tranger, l\'indication du pays est obligatoire)','question_121','','',0,0,26,NULL,0,'',0,'',0,1),(81,4,'FORMS_FORM',103,NULL,NULL,'question_122',NULL,'<p>Vous serez inform&eacute; de l\'&eacute;volution de votre demande sur cette adresse mail.</p>\r\n<p>Des erreurs de saisie peuvent entra&icirc;ner l\'envoi &agrave; tort d\'informations dans la boite mail d\'un tiers. La ville de CiteLibre ne saurait &ecirc;tre tenue pour responsable d\'une transmission erron&eacute;e.</p>',0,0,27,NULL,0,'',0,NULL,0,0),(82,4,'FORMS_FORM',106,NULL,'Adresse mail','question_123','','',1,0,28,NULL,0,'',0,'',0,1),(83,4,'FORMS_FORM',113,NULL,'PrÃ©nom authentifiÃ©','question_44','','',0,0,29,NULL,0,'',0,NULL,0,1),(84,4,'FORMS_FORM',113,NULL,'Nom authentifiÃ©','question_45','','',0,0,30,NULL,0,'',0,NULL,0,1),(85,4,'FORMS_FORM',103,NULL,NULL,'question_124',NULL,'<p>&lt;p&gt;Merci de bien v&amp;eacute;rifier le r&amp;eacute;capitulatif de votre demande ci-dessus.&lt;br /&gt;Vous pouvez modifier les informations saisies si besoin avant de valider votre demande.&lt;/p&gt;</p>',0,0,31,NULL,0,'',0,NULL,0,0),(86,4,'FORMS_FORM',116,NULL,'Jâ€™accepte les conditions gÃ©nÃ©rales dâ€™utilisation et je certifie sur lâ€™honneur lâ€™exactitude des informations fournies.','question_125',NULL,NULL,0,0,32,NULL,0,'',0,NULL,0,0),(87,4,'FORMS_FORM',112,NULL,'NumÃ©ro','question_126',NULL,NULL,0,0,33,NULL,0,'',0,NULL,0,1);
/*!40000 ALTER TABLE `genatt_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_entry_type`
--

DROP TABLE IF EXISTS `genatt_entry_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_entry_type` (
  `id_type` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_group` smallint(6) DEFAULT NULL,
  `is_comment` int(11) DEFAULT NULL,
  `is_mylutece_user` smallint(6) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `icon_name` varchar(255) DEFAULT NULL,
  `plugin` varchar(255) NOT NULL,
  `display_order` int(11) DEFAULT 0,
  `inactive` int(11) DEFAULT 0,
  PRIMARY KEY (`id_type`),
  KEY `index_genatt_entry_type_plugin` (`plugin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_entry_type`
--

LOCK TABLES `genatt_entry_type` WRITE;
/*!40000 ALTER TABLE `genatt_entry_type` DISABLE KEYS */;
INSERT INTO `genatt_entry_type` VALUES (101,'Bouton radio',0,0,0,'forms.entryTypeRadioButton','dot-circle','forms',5,0),(102,'Case Ã  cocher',0,0,0,'forms.entryTypeCheckBox','check-square','forms',6,0),(103,'Commentaire',0,1,0,'forms.entryTypeComment','comment','forms',11,0),(104,'Date',0,0,0,'forms.entryTypeDate','calendar','forms',4,0),(105,'Liste dÃ©roulante',0,0,0,'forms.entryTypeSelect','list-alt','forms',7,0),(106,'Zone de texte court',0,0,0,'forms.entryTypeText','file-alt','forms',2,0),(107,'Zone de texte long',0,0,0,'forms.entryTypeTextArea','sticky-note','forms',3,0),(108,'Fichier',0,0,0,'forms.entryTypeFile','file','forms',9,0),(109,'GÃ©olocalisation',0,0,0,'forms.entryTypeGeolocation','map-marked-alt','forms',16,0),(110,'Image',0,0,0,'forms.entryTypeImage','image','forms',10,0),(111,'Utilisateur MyLutece',0,0,1,'forms.entryTypeMyLuteceUser','user','forms',13,1),(112,'NumÃ©rotation',0,0,0,'forms.entryTypeNumbering','hashtag','forms',8,0),(113,'Attribut de l\'utilisateur MyLutece',0,0,0,'forms.entryTypeMyLuteceUserattribute','user','forms',14,0),(114,'Tableau',0,0,0,'forms.entryTypeArray','table','forms',17,1),(115,'Regroupement',1,0,0,'forms.entryTypeGroup','indent','forms',1,0),(116,'Conditions d\'utilisation',0,0,0,'forms.entryTypeTermsOfService','gavel','forms',12,0),(117,'Lecture automatique fichier (OCR)',0,0,0,'forms.entryTypeAutomaticFileReading','file','forms',18,1),(118,'Camera',0,0,0,'forms.entryTypeCamera','camera','forms',15,0),(119,'NumÃ©ro de tÃ©lÃ©phone',0,0,0,'forms.entryTypeTelephoneNumber','phone-square','forms',19,0),(120,'Nombre',0,0,0,'forms.entryTypeNumber','hashtag','forms',5,0),(121,'Liste triable',0,0,0,'forms.entryTypeSelectOrder','list-ol','forms',20,0),(122,'Galerie image',0,0,0,'forms.entryTypeGalleryImage','image','forms',21,0);
/*!40000 ALTER TABLE `genatt_entry_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_field`
--

DROP TABLE IF EXISTS `genatt_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_entry` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `value` mediumtext DEFAULT NULL,
  `default_value` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `value_type_date` date DEFAULT NULL,
  `no_display_title` smallint(6) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `id_file_key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_field`),
  KEY `index_genatt_field_entry` (`id_entry`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_field`
--

LOCK TABLES `genatt_field` WRITE;
/*!40000 ALTER TABLE `genatt_field` DISABLE KEYS */;
INSERT INTO `genatt_field` VALUES (1,1,NULL,'exportable','false',0,1,NULL,0,NULL,NULL),(2,1,NULL,'exportable_pdf','false',0,2,NULL,0,NULL,NULL),(3,1,'','anonymizable','false',0,3,NULL,0,NULL,NULL),(4,1,NULL,'text_config','',0,4,NULL,0,NULL,NULL),(5,1,NULL,'width','0',0,5,NULL,0,NULL,NULL),(6,1,NULL,'max_size','-1',0,6,NULL,0,NULL,NULL),(7,1,NULL,'placeholder','',0,7,NULL,0,NULL,NULL),(8,1,NULL,'confirm_field','false',0,8,NULL,0,NULL,NULL),(9,2,NULL,'exportable','false',0,9,NULL,0,NULL,NULL),(10,2,NULL,'exportable_pdf','false',0,10,NULL,0,NULL,NULL),(11,2,'','anonymizable','false',0,11,NULL,0,NULL,NULL),(12,2,NULL,'text_config','',0,12,NULL,0,NULL,NULL),(13,2,NULL,'width','0',0,13,NULL,0,NULL,NULL),(14,2,NULL,'max_size','-1',0,14,NULL,0,NULL,NULL),(15,2,NULL,'placeholder','',0,15,NULL,0,NULL,NULL),(16,2,NULL,'confirm_field','false',0,16,NULL,0,NULL,NULL),(17,3,NULL,'exportable','false',0,17,NULL,0,NULL,NULL),(18,3,NULL,'exportable_pdf','false',0,18,NULL,0,NULL,NULL),(19,3,'','anonymizable','false',0,19,NULL,0,NULL,NULL),(20,3,NULL,'text_config','',0,20,NULL,0,NULL,NULL),(21,3,NULL,'width','0',0,21,NULL,0,NULL,NULL),(22,3,NULL,'max_size','-1',0,22,NULL,0,NULL,NULL),(23,3,NULL,'placeholder','',0,23,NULL,0,NULL,NULL),(24,3,NULL,'confirm_field','false',0,24,NULL,0,NULL,NULL),(25,4,NULL,'exportable','false',0,25,NULL,0,NULL,NULL),(26,4,NULL,'exportable_pdf','false',0,26,NULL,0,NULL,NULL),(27,4,'','anonymizable','false',0,27,NULL,0,NULL,NULL),(28,4,NULL,'autocomplete',NULL,0,28,NULL,0,NULL,NULL),(29,4,NULL,'defaultRegion','FR',0,29,NULL,0,NULL,NULL),(30,4,NULL,'placeholder','',0,30,NULL,0,NULL,NULL),(31,5,NULL,'exportable','false',0,31,NULL,0,NULL,NULL),(32,5,NULL,'exportable_pdf','false',0,32,NULL,0,NULL,NULL),(33,5,NULL,'anonymizable','false',0,33,NULL,0,NULL,NULL),(34,5,'1','use_ref_list','true',0,34,NULL,0,NULL,NULL),(347,5,'Espace Public','answer_choice','espace_public',0,347,NULL,0,NULL,NULL),(348,5,'Logement et Habitat','answer_choice','logement_habitat',0,348,NULL,0,NULL,NULL),(349,5,'Affaires Scolaires','answer_choice','affaires_scolaires',0,349,NULL,0,NULL,NULL),(350,40,NULL,'exportable','false',0,350,NULL,0,NULL,NULL),(351,40,NULL,'exportable_pdf','false',0,351,NULL,0,NULL,NULL),(352,40,NULL,'anonymizable','false',0,352,NULL,0,NULL,NULL),(353,40,'3','use_ref_list','true',0,353,NULL,0,NULL,NULL),(354,40,'Ecoles','answer_choice','ecoles',0,354,NULL,0,NULL,NULL),(355,40,'Centres de Loisirs','answer_choice','centres_loisirs',0,355,NULL,0,NULL,NULL),(356,40,'Petite Enfance','answer_choice','petite_enfance',0,356,NULL,0,NULL,NULL),(357,41,NULL,'exportable','false',0,357,NULL,0,NULL,NULL),(358,41,NULL,'exportable_pdf','false',0,358,NULL,0,NULL,NULL),(359,41,NULL,'anonymizable','false',0,359,NULL,0,NULL,NULL),(360,41,'2','use_ref_list','true',0,360,NULL,0,NULL,NULL),(361,41,'Voirie','answer_choice','voirie',0,361,NULL,0,NULL,NULL),(362,41,'Espaces Verts','answer_choice','espaces_verts',0,362,NULL,0,NULL,NULL),(363,42,NULL,'exportable','false',0,363,NULL,0,NULL,NULL),(364,42,NULL,'exportable_pdf','false',0,364,NULL,0,NULL,NULL),(365,42,'','anonymizable','false',0,365,NULL,0,NULL,NULL),(366,42,NULL,'text_config','',0,366,NULL,0,NULL,NULL),(367,42,NULL,'max_size','2500',0,367,NULL,0,NULL,NULL),(368,42,NULL,'width','0',0,368,NULL,0,NULL,NULL),(369,42,NULL,'height','8',0,369,NULL,0,NULL,NULL),(370,42,NULL,'richtext','false',0,370,NULL,0,NULL,NULL),(371,42,NULL,'placeholder','',0,371,NULL,0,NULL,NULL),(372,1,NULL,'used_in_correct_form_response','false',0,372,NULL,0,NULL,NULL),(373,1,NULL,'used_in_complete_form_response','false',0,373,NULL,0,NULL,NULL),(374,2,NULL,'used_in_correct_form_response','false',0,374,NULL,0,NULL,NULL),(375,2,NULL,'used_in_complete_form_response','false',0,375,NULL,0,NULL,NULL),(376,3,NULL,'used_in_correct_form_response','false',0,376,NULL,0,NULL,NULL),(377,3,NULL,'used_in_complete_form_response','false',0,377,NULL,0,NULL,NULL),(378,4,NULL,'used_in_correct_form_response','false',0,378,NULL,0,NULL,NULL),(379,4,NULL,'used_in_complete_form_response','false',0,379,NULL,0,NULL,NULL),(380,5,NULL,'used_in_correct_form_response','false',0,380,NULL,0,NULL,NULL),(381,5,NULL,'used_in_complete_form_response','false',0,381,NULL,0,NULL,NULL),(382,40,NULL,'used_in_correct_form_response','false',0,382,NULL,0,NULL,NULL),(383,40,NULL,'used_in_complete_form_response','false',0,383,NULL,0,NULL,NULL),(384,41,NULL,'used_in_correct_form_response','false',0,384,NULL,0,NULL,NULL),(385,41,NULL,'used_in_complete_form_response','false',0,385,NULL,0,NULL,NULL),(386,42,NULL,'used_in_correct_form_response','false',0,386,NULL,0,NULL,NULL),(387,42,NULL,'used_in_complete_form_response','true',0,387,NULL,0,NULL,NULL),(388,43,NULL,'exportable','false',0,388,NULL,0,NULL,NULL),(389,43,NULL,'exportable_pdf','false',0,389,NULL,0,NULL,NULL),(390,43,NULL,'anonymizable','false',0,390,NULL,0,NULL,NULL),(391,43,NULL,'prefix','',0,391,NULL,0,NULL,NULL),(479,55,NULL,'exportable','false',0,400,NULL,0,NULL,NULL),(480,55,NULL,'exportable_pdf','false',0,401,NULL,0,NULL,NULL),(481,55,NULL,'anonymizable','false',0,402,NULL,0,NULL,NULL),(482,55,'-1','use_ref_list','false',0,403,NULL,0,NULL,NULL),(483,55,'Prestations sociales, retraite','answer_choice','prestations_sociales_retraite',0,404,NULL,0,'',NULL),(484,55,'GÃ©nÃ©alogie','answer_choice','genealogie',0,405,NULL,0,'',NULL),(485,55,'Autre motif','answer_choice','autre_motif',0,406,NULL,0,'',NULL),(486,55,NULL,'used_in_correct_form_response','false',0,407,NULL,0,NULL,NULL),(487,55,NULL,'used_in_complete_form_response','false',0,408,NULL,0,NULL,NULL),(488,56,NULL,'exportable','false',0,409,NULL,0,NULL,NULL),(489,56,NULL,'exportable_pdf','false',0,410,NULL,0,NULL,NULL),(490,56,'','anonymizable','false',0,411,NULL,0,NULL,NULL),(491,56,NULL,'text_config','',0,412,NULL,0,NULL,NULL),(492,56,NULL,'width','0',0,413,NULL,0,NULL,NULL),(493,56,NULL,'max_size','-1',0,414,NULL,0,NULL,NULL),(494,56,NULL,'placeholder','',0,415,NULL,0,NULL,NULL),(495,56,NULL,'confirm_field','false',0,416,NULL,0,NULL,NULL),(496,56,NULL,'used_in_correct_form_response','false',0,417,NULL,0,NULL,NULL),(497,56,NULL,'used_in_complete_form_response','false',0,418,NULL,0,NULL,NULL),(498,57,NULL,'exportable','false',0,419,NULL,0,NULL,NULL),(499,57,NULL,'exportable_pdf','false',0,420,NULL,0,NULL,NULL),(500,57,NULL,'anonymizable','false',0,421,NULL,0,NULL,NULL),(501,57,NULL,'display_in_bo','false',0,422,NULL,0,NULL,NULL),(502,57,NULL,'used_in_correct_form_response','false',0,423,NULL,0,NULL,NULL),(503,57,NULL,'used_in_complete_form_response','false',0,424,NULL,0,NULL,NULL),(504,58,NULL,'exportable','false',0,425,NULL,0,NULL,NULL),(505,58,NULL,'exportable_pdf','false',0,426,NULL,0,NULL,NULL),(506,58,'','anonymizable','false',0,427,NULL,0,NULL,NULL),(507,58,NULL,'provider','wsaddress',0,428,NULL,0,NULL,NULL),(508,58,NULL,'editMode','',0,429,NULL,0,NULL,NULL),(509,58,NULL,'viewNumber','',0,430,NULL,0,NULL,NULL),(510,58,NULL,'idAddress','idAddress',0,431,NULL,0,NULL,NULL),(511,58,NULL,'address','address',0,432,NULL,0,NULL,NULL),(512,58,NULL,'additionalAddress','additionalAddress',0,433,NULL,0,NULL,NULL),(513,58,NULL,'X','X',0,434,NULL,0,NULL,NULL),(514,58,NULL,'Y','Y',0,435,NULL,0,NULL,NULL),(515,58,NULL,'geometry','geometry',0,436,NULL,0,NULL,NULL),(516,58,NULL,'used_in_correct_form_response','true',0,437,NULL,0,NULL,NULL),(517,58,NULL,'used_in_complete_form_response','false',0,438,NULL,0,NULL,NULL),(518,59,NULL,'exportable','false',0,439,NULL,0,NULL,NULL),(519,59,NULL,'exportable_pdf','false',0,440,NULL,0,NULL,NULL),(520,59,'','anonymizable','false',0,441,NULL,0,NULL,NULL),(521,59,NULL,'placeholder','',0,442,NULL,0,NULL,NULL),(522,59,NULL,'default_date_value',NULL,0,443,NULL,0,NULL,NULL),(523,59,NULL,'used_in_correct_form_response','true',0,444,NULL,0,NULL,NULL),(524,59,NULL,'used_in_complete_form_response','false',0,445,NULL,0,NULL,NULL),(525,60,NULL,'exportable','false',0,446,NULL,0,NULL,NULL),(526,60,NULL,'exportable_pdf','false',0,447,NULL,0,NULL,NULL),(527,60,'%g','anonymizable','true',0,448,NULL,0,NULL,NULL),(528,60,NULL,'text_config','',0,449,NULL,0,NULL,NULL),(529,60,NULL,'width','0',0,450,NULL,0,NULL,NULL),(530,60,NULL,'max_size','-1',0,451,NULL,0,NULL,NULL),(531,60,NULL,'placeholder','',0,452,NULL,0,NULL,NULL),(532,60,NULL,'confirm_field','false',0,453,NULL,0,NULL,NULL),(533,60,NULL,'used_in_correct_form_response','false',0,454,NULL,0,NULL,NULL),(534,60,NULL,'used_in_complete_form_response','false',0,455,NULL,0,NULL,NULL),(535,61,NULL,'exportable','false',0,456,NULL,0,NULL,NULL),(536,61,NULL,'exportable_pdf','false',0,457,NULL,0,NULL,NULL),(537,61,'%g','anonymizable','true',0,458,NULL,0,NULL,NULL),(538,61,NULL,'text_config','',0,459,NULL,0,NULL,NULL),(539,61,NULL,'width','0',0,460,NULL,0,NULL,NULL),(540,61,NULL,'max_size','-1',0,461,NULL,0,NULL,NULL),(541,61,NULL,'placeholder','',0,462,NULL,0,NULL,NULL),(542,61,NULL,'confirm_field','false',0,463,NULL,0,NULL,NULL),(543,61,NULL,'used_in_correct_form_response','false',0,464,NULL,0,NULL,NULL),(544,61,NULL,'used_in_complete_form_response','false',0,465,NULL,0,NULL,NULL),(545,62,NULL,'exportable','false',0,466,NULL,0,NULL,NULL),(546,62,NULL,'exportable_pdf','false',0,467,NULL,0,NULL,NULL),(547,62,'%g','anonymizable','true',0,468,NULL,0,NULL,NULL),(548,62,NULL,'text_config','',0,469,NULL,0,NULL,NULL),(549,62,NULL,'width','0',0,470,NULL,0,NULL,NULL),(550,62,NULL,'max_size','-1',0,471,NULL,0,NULL,NULL),(551,62,NULL,'placeholder','',0,472,NULL,0,NULL,NULL),(552,62,NULL,'confirm_field','false',0,473,NULL,0,NULL,NULL),(553,62,NULL,'used_in_correct_form_response','false',0,474,NULL,0,NULL,NULL),(554,62,NULL,'used_in_complete_form_response','false',0,475,NULL,0,NULL,NULL),(555,63,NULL,'exportable','false',0,476,NULL,0,NULL,NULL),(556,63,NULL,'exportable_pdf','false',0,477,NULL,0,NULL,NULL),(557,63,'%g','anonymizable','true',0,478,NULL,0,NULL,NULL),(558,63,NULL,'text_config','',0,479,NULL,0,NULL,NULL),(559,63,NULL,'width','0',0,480,NULL,0,NULL,NULL),(560,63,NULL,'max_size','-1',0,481,NULL,0,NULL,NULL),(561,63,NULL,'placeholder','',0,482,NULL,0,NULL,NULL),(562,63,NULL,'confirm_field','false',0,483,NULL,0,NULL,NULL),(563,63,NULL,'used_in_correct_form_response','false',0,484,NULL,0,NULL,NULL),(564,63,NULL,'used_in_complete_form_response','false',0,485,NULL,0,NULL,NULL),(565,64,NULL,'exportable','false',0,486,NULL,0,NULL,NULL),(566,64,NULL,'exportable_pdf','false',0,487,NULL,0,NULL,NULL),(567,64,'%g','anonymizable','true',0,488,NULL,0,NULL,NULL),(568,64,NULL,'text_config','',0,489,NULL,0,NULL,NULL),(569,64,NULL,'width','0',0,490,NULL,0,NULL,NULL),(570,64,NULL,'max_size','-1',0,491,NULL,0,NULL,NULL),(571,64,NULL,'placeholder','',0,492,NULL,0,NULL,NULL),(572,64,NULL,'confirm_field','false',0,493,NULL,0,NULL,NULL),(573,64,NULL,'used_in_correct_form_response','false',0,494,NULL,0,NULL,NULL),(574,64,NULL,'used_in_complete_form_response','false',0,495,NULL,0,NULL,NULL),(575,65,NULL,'exportable','false',0,496,NULL,0,NULL,NULL),(576,65,NULL,'exportable_pdf','false',0,497,NULL,0,NULL,NULL),(577,65,'%g','anonymizable','true',0,498,NULL,0,NULL,NULL),(578,65,NULL,'text_config','',0,499,NULL,0,NULL,NULL),(579,65,NULL,'width','0',0,500,NULL,0,NULL,NULL),(580,65,NULL,'max_size','-1',0,501,NULL,0,NULL,NULL),(581,65,NULL,'placeholder','',0,502,NULL,0,NULL,NULL),(582,65,NULL,'confirm_field','false',0,503,NULL,0,NULL,NULL),(583,65,NULL,'used_in_correct_form_response','false',0,504,NULL,0,NULL,NULL),(584,65,NULL,'used_in_complete_form_response','false',0,505,NULL,0,NULL,NULL),(585,66,NULL,'exportable','false',0,506,NULL,0,NULL,NULL),(586,66,NULL,'exportable_pdf','false',0,507,NULL,0,NULL,NULL),(587,66,'%g','anonymizable','true',0,508,NULL,0,NULL,NULL),(588,66,NULL,'text_config','',0,509,NULL,0,NULL,NULL),(589,66,NULL,'width','0',0,510,NULL,0,NULL,NULL),(590,66,NULL,'max_size','-1',0,511,NULL,0,NULL,NULL),(591,66,NULL,'placeholder','',0,512,NULL,0,NULL,NULL),(592,66,NULL,'confirm_field','false',0,513,NULL,0,NULL,NULL),(593,66,NULL,'used_in_correct_form_response','false',0,514,NULL,0,NULL,NULL),(594,66,NULL,'used_in_complete_form_response','false',0,515,NULL,0,NULL,NULL),(595,67,NULL,'exportable','false',0,516,NULL,0,NULL,NULL),(596,67,NULL,'exportable_pdf','false',0,517,NULL,0,NULL,NULL),(597,67,'%g','anonymizable','true',0,518,NULL,0,NULL,NULL),(598,67,NULL,'text_config','',0,519,NULL,0,NULL,NULL),(599,67,NULL,'width','0',0,520,NULL,0,NULL,NULL),(600,67,NULL,'max_size','-1',0,521,NULL,0,NULL,NULL),(601,67,NULL,'placeholder','',0,522,NULL,0,NULL,NULL),(602,67,NULL,'confirm_field','false',0,523,NULL,0,NULL,NULL),(603,67,NULL,'used_in_correct_form_response','false',0,524,NULL,0,NULL,NULL),(604,67,NULL,'used_in_complete_form_response','false',0,525,NULL,0,NULL,NULL),(605,68,NULL,'exportable','false',0,526,NULL,0,NULL,NULL),(606,68,NULL,'exportable_pdf','false',0,527,NULL,0,NULL,NULL),(607,68,'%g','anonymizable','true',0,528,NULL,0,NULL,NULL),(608,68,NULL,'text_config','',0,529,NULL,0,NULL,NULL),(609,68,NULL,'width','0',0,530,NULL,0,NULL,NULL),(610,68,NULL,'max_size','-1',0,531,NULL,0,NULL,NULL),(611,68,NULL,'placeholder','',0,532,NULL,0,NULL,NULL),(612,68,NULL,'confirm_field','false',0,533,NULL,0,NULL,NULL),(613,68,NULL,'used_in_correct_form_response','false',0,534,NULL,0,NULL,NULL),(614,68,NULL,'used_in_complete_form_response','false',0,535,NULL,0,NULL,NULL),(615,69,NULL,'exportable','false',0,536,NULL,0,NULL,NULL),(616,69,NULL,'exportable_pdf','false',0,537,NULL,0,NULL,NULL),(617,69,'%g','anonymizable','true',0,538,NULL,0,NULL,NULL),(618,69,NULL,'text_config','',0,539,NULL,0,NULL,NULL),(619,69,NULL,'width','0',0,540,NULL,0,NULL,NULL),(620,69,NULL,'max_size','-1',0,541,NULL,0,NULL,NULL),(621,69,NULL,'placeholder','',0,542,NULL,0,NULL,NULL),(622,69,NULL,'confirm_field','false',0,543,NULL,0,NULL,NULL),(623,69,NULL,'used_in_correct_form_response','false',0,544,NULL,0,NULL,NULL),(624,69,NULL,'used_in_complete_form_response','false',0,545,NULL,0,NULL,NULL),(625,70,NULL,'exportable','false',0,546,NULL,0,NULL,NULL),(626,70,NULL,'exportable_pdf','false',0,547,NULL,0,NULL,NULL),(627,70,'%g','anonymizable','true',0,548,NULL,0,NULL,NULL),(628,70,NULL,'text_config','',0,549,NULL,0,NULL,NULL),(629,70,NULL,'width','0',0,550,NULL,0,NULL,NULL),(630,70,NULL,'max_size','-1',0,551,NULL,0,NULL,NULL),(631,70,NULL,'placeholder','',0,552,NULL,0,NULL,NULL),(632,70,NULL,'confirm_field','false',0,553,NULL,0,NULL,NULL),(633,70,NULL,'used_in_correct_form_response','false',0,554,NULL,0,NULL,NULL),(634,70,NULL,'used_in_complete_form_response','false',0,555,NULL,0,NULL,NULL),(635,71,NULL,'exportable','false',0,556,NULL,0,NULL,NULL),(636,71,NULL,'exportable_pdf','false',0,557,NULL,0,NULL,NULL),(637,71,'%g','anonymizable','true',0,558,NULL,0,NULL,NULL),(638,71,NULL,'text_config','',0,559,NULL,0,NULL,NULL),(639,71,NULL,'width','0',0,560,NULL,0,NULL,NULL),(640,71,NULL,'max_size','-1',0,561,NULL,0,NULL,NULL),(641,71,NULL,'placeholder','',0,562,NULL,0,NULL,NULL),(642,71,NULL,'confirm_field','false',0,563,NULL,0,NULL,NULL),(643,71,NULL,'used_in_correct_form_response','false',0,564,NULL,0,NULL,NULL),(644,71,NULL,'used_in_complete_form_response','false',0,565,NULL,0,NULL,NULL),(645,72,NULL,'exportable','false',0,566,NULL,0,NULL,NULL),(646,72,NULL,'exportable_pdf','false',0,567,NULL,0,NULL,NULL),(647,72,NULL,'anonymizable','false',0,568,NULL,0,NULL,NULL),(648,72,'-1','use_ref_list','false',0,569,NULL,0,NULL,NULL),(649,72,'Le titulaire de l\'acte','answer_choice','le_titulaire_de_lacte',0,570,NULL,0,'',NULL),(650,72,'Son parent ou son grand-parent','answer_choice','son_parent_ou_son_grandparent',0,571,NULL,0,'',NULL),(651,72,'son fils ou sa fille. son petit-fils ou sa petite-fille','answer_choice','son_fils_ou_sa_fille_son_petitfils_ou_sa_petitefille',0,572,NULL,0,'',NULL),(652,72,'Son conjoint','answer_choice','son_conjoint',0,573,NULL,0,'',NULL),(653,72,'son frÃ¨re ou sa soeur. Son oncle ou sa tante','answer_choice','son_frere_ou_sa_soeur_son_oncle_ou_sa_tante',0,574,NULL,0,'',NULL),(654,72,'Autre','answer_choice','autre',0,575,NULL,0,'',NULL),(655,72,NULL,'used_in_correct_form_response','false',0,576,NULL,0,NULL,NULL),(656,72,NULL,'used_in_complete_form_response','false',0,577,NULL,0,NULL,NULL),(657,73,NULL,'exportable','false',0,578,NULL,0,NULL,NULL),(658,73,NULL,'exportable_pdf','false',0,579,NULL,0,NULL,NULL),(659,73,'','anonymizable','false',0,580,NULL,0,NULL,NULL),(660,73,NULL,'text_config',NULL,0,581,NULL,0,NULL,NULL),(661,73,NULL,'min','1',0,582,NULL,0,NULL,NULL),(662,73,NULL,'max','2',0,583,NULL,0,NULL,NULL),(663,73,NULL,'suffix','',0,584,NULL,0,NULL,NULL),(664,73,NULL,'placeholder','',0,585,NULL,0,NULL,NULL),(665,73,NULL,'used_in_correct_form_response','false',0,586,NULL,0,NULL,NULL),(666,73,NULL,'used_in_complete_form_response','false',0,587,NULL,0,NULL,NULL),(667,74,NULL,'exportable','false',0,588,NULL,0,NULL,NULL),(668,74,NULL,'exportable_pdf','false',0,589,NULL,0,NULL,NULL),(669,74,NULL,'anonymizable','false',0,590,NULL,0,NULL,NULL),(670,74,'-1','use_ref_list','false',0,591,NULL,0,NULL,NULL),(671,74,'Une copie intÃ©grale de l\'acte Reproduction de l\'acte original, mentions marginales comprises','answer_choice','une_copie_integrale_de_lacte_reproduction_de_lacte_original_mentions_marginales_comprises',0,592,NULL,0,'',NULL),(672,74,'Un extrait d\'acte avec filiation Regroupe l\'identitÃ© de l\'interressÃ©(e), de ses parents et les derniÃ¨res mentions marginales','answer_choice','un_extrait_dacte_avec_filiation_regroupe_lidentite_de_linterressee_de_ses_parents_et_les_dernieres_mentions_marginales',0,593,NULL,0,'',NULL),(673,74,'Un extrait d\'acte avec filiation Regroupe l\'identitÃ© de l\'interressÃ©(e), de ses parents et les derniÃ¨res mentions marginales','answer_choice','un_extrait_dacte_avec_filiation_regroupe_lidentite_de_linterressee_de_ses_parents_et_les_dernieres_mentions_marginales',0,594,NULL,0,'',NULL),(674,74,'Un extrait plurilingue Extrait d\'acte d\'Ã©tat civil, destinÃ© Ã  Ãªtre utilisÃ© Ã  l\'Ã©tranger','answer_choice','un_extrait_plurilingue_extrait_dacte_detat_civil_destine_a_etre_utilise_a_letranger',0,595,NULL,0,'',NULL),(675,74,NULL,'used_in_correct_form_response','false',0,596,NULL,0,NULL,NULL),(676,74,NULL,'used_in_complete_form_response','false',0,597,NULL,0,NULL,NULL),(677,75,NULL,'exportable','false',0,598,NULL,0,NULL,NULL),(678,75,NULL,'exportable_pdf','false',0,599,NULL,0,NULL,NULL),(679,75,NULL,'anonymizable','false',0,600,NULL,0,NULL,NULL),(680,75,NULL,'display_in_bo','false',0,601,NULL,0,NULL,NULL),(681,75,NULL,'used_in_correct_form_response','false',0,602,NULL,0,NULL,NULL),(682,75,NULL,'used_in_complete_form_response','false',0,603,NULL,0,NULL,NULL),(703,78,NULL,'exportable','false',0,624,NULL,0,NULL,NULL),(704,78,NULL,'exportable_pdf','false',0,625,NULL,0,NULL,NULL),(705,78,'%g','anonymizable','true',0,626,NULL,0,NULL,NULL),(706,78,NULL,'text_config','',0,627,NULL,0,NULL,NULL),(707,78,NULL,'width','0',0,628,NULL,0,NULL,NULL),(708,78,NULL,'max_size','-1',0,629,NULL,0,NULL,NULL),(709,78,NULL,'placeholder','',0,630,NULL,0,NULL,NULL),(710,78,NULL,'confirm_field','false',0,631,NULL,0,NULL,NULL),(711,78,NULL,'used_in_correct_form_response','true',0,632,NULL,0,NULL,NULL),(712,78,NULL,'used_in_complete_form_response','true',0,633,NULL,0,NULL,NULL),(719,80,NULL,'exportable','false',0,640,NULL,0,NULL,NULL),(720,80,NULL,'exportable_pdf','false',0,641,NULL,0,NULL,NULL),(721,80,'','anonymizable','false',0,642,NULL,0,NULL,NULL),(722,80,NULL,'text_config','',0,643,NULL,0,NULL,NULL),(723,80,NULL,'width','0',0,644,NULL,0,NULL,NULL),(724,80,NULL,'max_size','-1',0,645,NULL,0,NULL,NULL),(725,80,NULL,'placeholder','',0,646,NULL,0,NULL,NULL),(726,80,NULL,'confirm_field','false',0,647,NULL,0,NULL,NULL),(727,80,NULL,'used_in_correct_form_response','false',0,648,NULL,0,NULL,NULL),(728,80,NULL,'used_in_complete_form_response','false',0,649,NULL,0,NULL,NULL),(729,81,NULL,'exportable','false',0,650,NULL,0,NULL,NULL),(730,81,NULL,'exportable_pdf','false',0,651,NULL,0,NULL,NULL),(731,81,NULL,'anonymizable','false',0,652,NULL,0,NULL,NULL),(732,81,NULL,'display_in_bo','false',0,653,NULL,0,NULL,NULL),(733,81,NULL,'used_in_correct_form_response','false',0,654,NULL,0,NULL,NULL),(734,81,NULL,'used_in_complete_form_response','false',0,655,NULL,0,NULL,NULL),(735,82,NULL,'exportable','false',0,656,NULL,0,NULL,NULL),(736,82,NULL,'exportable_pdf','false',0,657,NULL,0,NULL,NULL),(737,82,'%g','anonymizable','true',0,658,NULL,0,NULL,NULL),(738,82,NULL,'text_config','',0,659,NULL,0,NULL,NULL),(739,82,NULL,'width','0',0,660,NULL,0,NULL,NULL),(740,82,NULL,'max_size','-1',0,661,NULL,0,NULL,NULL),(741,82,NULL,'placeholder','',0,662,NULL,0,NULL,NULL),(742,82,NULL,'confirm_field','false',0,663,NULL,0,NULL,NULL),(743,82,NULL,'used_in_correct_form_response','false',0,664,NULL,0,NULL,NULL),(744,82,NULL,'used_in_complete_form_response','false',0,665,NULL,0,NULL,NULL),(745,83,NULL,'exportable','false',0,666,NULL,0,NULL,NULL),(746,83,NULL,'exportable_pdf','false',0,667,NULL,0,NULL,NULL),(747,83,'%g','anonymizable','true',0,668,NULL,0,NULL,NULL),(748,83,NULL,'attribute_name','user.name.given',0,669,NULL,0,NULL,NULL),(749,84,NULL,'exportable','false',0,670,NULL,0,NULL,NULL),(750,84,NULL,'exportable_pdf','false',0,671,NULL,0,NULL,NULL),(751,84,'%g','anonymizable','true',0,672,NULL,0,NULL,NULL),(752,84,NULL,'attribute_name','user.name.family',0,673,NULL,0,NULL,NULL),(753,85,NULL,'exportable','false',0,674,NULL,0,NULL,NULL),(754,85,NULL,'exportable_pdf','false',0,675,NULL,0,NULL,NULL),(755,85,NULL,'anonymizable','false',0,676,NULL,0,NULL,NULL),(756,85,NULL,'display_in_bo','false',0,677,NULL,0,NULL,NULL),(757,85,NULL,'used_in_correct_form_response','false',0,678,NULL,0,NULL,NULL),(758,85,NULL,'used_in_complete_form_response','false',0,679,NULL,0,NULL,NULL),(759,86,NULL,'exportable','false',0,680,NULL,0,NULL,NULL),(760,86,NULL,'exportable_pdf','false',0,681,NULL,0,NULL,NULL),(761,86,NULL,'anonymizable','false',0,682,NULL,0,NULL,NULL),(762,86,NULL,'link','Lien',0,683,NULL,0,NULL,NULL),(763,86,NULL,'tos','<p>&lt;p&gt;J&amp;rsquo;accepte les conditions g&amp;eacute;n&amp;eacute;rales d&amp;rsquo;utilisation et je certifie sur l&amp;rsquo;honneur l&amp;rsquo;exactitude des informations fournies. Il est rappel&amp;eacute; que toute personne proc&amp;eacute;dant &amp;agrave; une fausse d&amp;eacute;claration pour elle-m&amp;ecirc;me ou pour autrui peut s&amp;rsquo;exposer aux sanctions pr&amp;eacute;vues aux articles 441-1 du code p&amp;eacute;nal et suivants.&lt;/p&gt;</p>',0,684,NULL,0,NULL,NULL),(764,86,NULL,'agreement','false',0,685,NULL,0,NULL,NULL),(765,86,NULL,'used_in_correct_form_response','false',0,686,NULL,0,NULL,NULL),(766,86,NULL,'used_in_complete_form_response','false',0,687,NULL,0,NULL,NULL),(767,87,NULL,'exportable','false',0,688,NULL,0,NULL,NULL),(768,87,NULL,'exportable_pdf','false',0,689,NULL,0,NULL,NULL),(769,87,NULL,'anonymizable','false',0,690,NULL,0,NULL,NULL),(770,87,NULL,'prefix','',0,691,NULL,0,NULL,NULL),(771,87,NULL,'used_in_correct_form_response','false',0,692,NULL,0,NULL,NULL),(772,87,NULL,'used_in_complete_form_response','false',0,693,NULL,0,NULL,NULL),(773,83,NULL,'used_in_correct_form_response','false',0,694,NULL,0,NULL,NULL),(774,83,NULL,'used_in_complete_form_response','false',0,695,NULL,0,NULL,NULL),(775,84,NULL,'used_in_correct_form_response','false',0,696,NULL,0,NULL,NULL),(776,84,NULL,'used_in_complete_form_response','false',0,697,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `genatt_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_referenceitem_field`
--

DROP TABLE IF EXISTS `genatt_referenceitem_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_referenceitem_field` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_item` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_referenceitem_field`
--

LOCK TABLES `genatt_referenceitem_field` WRITE;
/*!40000 ALTER TABLE `genatt_referenceitem_field` DISABLE KEYS */;
INSERT INTO `genatt_referenceitem_field` VALUES (347,1),(348,2),(349,3),(354,6),(355,7),(356,8),(361,4),(362,5);
/*!40000 ALTER TABLE `genatt_referenceitem_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_response`
--

DROP TABLE IF EXISTS `genatt_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_response` (
  `id_response` int(11) NOT NULL AUTO_INCREMENT,
  `response_value` mediumtext DEFAULT NULL,
  `id_entry` int(11) DEFAULT NULL,
  `iteration_number` int(11) DEFAULT -1,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  `sort_order` int(11) DEFAULT 0,
  PRIMARY KEY (`id_response`),
  KEY `index_genatt_response_entry` (`id_entry`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_response`
--

LOCK TABLES `genatt_response` WRITE;
/*!40000 ALTER TABLE `genatt_response` DISABLE KEYS */;
INSERT INTO `genatt_response` VALUES (1,'Bar',1,0,NULL,NULL,1,0),(2,'Foo',2,0,NULL,NULL,1,0),(3,'foo.bar@citelibre.org',3,0,NULL,NULL,1,0),(4,'+33612345678',4,0,NULL,NULL,1,0),(5,'espace_public',5,0,347,NULL,1,0),(6,'voirie',41,0,361,NULL,1,0),(8,'1',43,0,NULL,NULL,1,0),(10,'Bonjour,\r\nJ\'ai repÃ©rÃ© un nid-de-poule, au niveau du 16, avenue de la RÃ©publique de CiteLibre. Cela devient dangereux. Une intervention est-elle prÃ©vue prochainement?\r\nMerci',42,0,NULL,NULL,1,0),(67,'prestations_sociales_retraite',55,0,483,NULL,1,0),(68,'',56,0,NULL,NULL,1,0),(69,'85188_d3tyrt',58,0,510,NULL,1,0),(70,'la place 85210 La RÃ©orthe',58,0,511,NULL,1,0),(71,'-1.066207',58,0,513,NULL,1,0),(72,'46.601912',58,0,514,NULL,1,0),(73,'street',58,0,515,NULL,1,0),(74,'1709510400000',59,0,NULL,NULL,1,0),(75,'',60,0,NULL,NULL,1,0),(76,'',61,0,NULL,NULL,1,0),(77,'',62,0,NULL,NULL,1,0),(78,'',63,0,NULL,NULL,1,0),(79,'',64,0,NULL,NULL,1,0),(80,'',65,0,NULL,NULL,1,0),(81,'',66,0,NULL,NULL,1,0),(82,'',69,0,NULL,NULL,1,0),(83,'',67,0,NULL,NULL,1,0),(84,'',70,0,NULL,NULL,1,0),(85,'',68,0,NULL,NULL,1,0),(86,'',71,0,NULL,NULL,1,0),(87,NULL,72,0,NULL,NULL,1,0),(88,'',73,0,NULL,NULL,1,0),(89,NULL,74,0,NULL,NULL,1,0),(90,'Connor',1,0,NULL,NULL,1,0),(91,'Sarah',2,0,NULL,NULL,1,0),(92,'sarah.connor@citelibre.org',3,0,NULL,NULL,1,0),(93,'+33123456789',4,0,NULL,NULL,1,0),(94,'espace_public',5,0,347,NULL,1,0),(95,'voirie',41,0,361,NULL,1,0),(96,'Bonjour,\r\nJe constate qu\'un abribus est endommagÃ©, rue de la RÃ©publique.\r\nPourriez-vous intervenir, s\'il vous plait ?\r\nMerci,\r\nSarah',42,0,NULL,NULL,1,0),(97,'2',43,0,NULL,NULL,1,0),(98,'prestations_sociales_retraite',55,0,483,NULL,1,0),(99,'2a209_41w80b',58,0,510,NULL,1,0),(100,'Terminone 20167 Peri',58,0,511,NULL,1,0),(101,'8.862041',58,0,513,NULL,1,0),(102,'42.004148',58,0,514,NULL,1,0),(103,'street',58,0,515,NULL,1,0),(104,'1717200000000',59,0,NULL,NULL,1,0),(105,'Connor',60,0,NULL,NULL,1,0),(106,'Sarah',61,0,NULL,NULL,1,0),(107,'Reese',62,0,NULL,NULL,1,0),(108,'Kyle',63,0,NULL,NULL,1,0),(109,'',64,0,NULL,NULL,1,0),(110,'',65,0,NULL,NULL,1,0),(111,'',66,0,NULL,NULL,1,0),(112,'',69,0,NULL,NULL,1,0),(113,'',67,0,NULL,NULL,1,0),(114,'',70,0,NULL,NULL,1,0),(115,'',68,0,NULL,NULL,1,0),(116,'',71,0,NULL,NULL,1,0),(117,'son_fils_ou_sa_fille_son_petitfils_ou_sa_petitefille',72,0,651,NULL,1,0),(118,'1',73,0,NULL,NULL,1,0),(119,'une_copie_integrale_de_lacte_reproduction_de_lacte_original_mentions_marginales_comprises',74,0,671,NULL,1,0),(120,'test',84,0,NULL,NULL,1,0),(121,'test',83,0,NULL,NULL,1,0),(122,'john.connor@citelibre.org',82,0,NULL,NULL,1,0),(123,'',78,0,NULL,NULL,1,0),(124,'',80,0,NULL,NULL,1,0),(125,'true',86,0,764,NULL,1,0),(126,'<p>&lt;p&gt;J&amp;rsquo;accepte les conditions g&amp;eacute;n&amp;eacute;rales d&amp;rsquo;utilisation et je certifie sur l&amp;rsquo;honneur l&amp;rsquo;exactitude des informations fournies. Il est rappel&amp;eacute; que toute personne proc&amp;eacute;dant &amp;agrave; une fausse d&amp;eacute;claration pour elle-m&amp;ecirc;me ou pour autrui peut s&amp;rsquo;exposer aux sanctions pr&amp;eacute;vues aux articles 441-1 du code p&amp;eacute;nal et suivants.&lt;/p&gt;</p>',86,0,763,NULL,1,0),(127,'1',87,0,NULL,NULL,1,0);
/*!40000 ALTER TABLE `genatt_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_verify_by`
--

DROP TABLE IF EXISTS `genatt_verify_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_verify_by` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_expression` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_field`,`id_expression`),
  KEY `index_genatt_verify_by_field` (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_verify_by`
--

LOCK TABLES `genatt_verify_by` WRITE;
/*!40000 ALTER TABLE `genatt_verify_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_verify_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `html_portlet`
--

DROP TABLE IF EXISTS `html_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `html_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  `html` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_portlet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `html_portlet`
--

LOCK TABLES `html_portlet` WRITE;
/*!40000 ALTER TABLE `html_portlet` DISABLE KEYS */;
INSERT INTO `html_portlet` VALUES (2,'<ul class=\"features\"> \n <li>Lutece is FreeSoftware. Full OpenSource licensed under BSD.</li> \n <li>Full responsive design Back and Front</li> \n <li>Compliant with Twitter Bootstrap themes</li> \n <li>Very modular and flexible architecture based on plugins, APIs, IoC</li> \n <li>Over 300 plugins available for many needs : Content Management, Collaborative, Workflows, ...</li> \n <li>Runs on Java Platform and rely on powerful build tools such as Apache Maven</li> \n <li>Uses best of breed Java Open Source stacks : Lucene, Spring, Ehcache, Freemarker, ...</li> \n</ul> \n<p class=\"logo\">&nbsp;</p>'),(4,'<h2>Get into the Back Office of this demo site</h2> \n<p class=\"mb20\">Sign in as administrator with <em>admin/adminadmin</em>.</p> \n<p><a class=\"btn btn-primary\" title=\"Access to admin [Open  in new window]\" href=\"jsp/admin/AdminLogin.jsp\" target=\"\"><span class=\"fa fa-door-open\">&nbsp;</span> Enter Back Office</a></p> \n<p>&nbsp;</p>'),(5,'<h3>Resources</h3> \n<hr> \n<div class=\"row\"> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"GitHub site [Open  in new window]\" href=\"https://github.com/lutece-platform\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/github-logo.png\" alt=\"Github logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Access to our code repository</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Docker Hub site [Open  in new window]\" href=\"https://hub.docker.com/u/lutece\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/docker-logo.png\" alt=\"Docker images\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Grab some Docker images to run demos</h4> \n   </div> \n  </div> \n </div> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Lutece Wiki site [Open  in new window]\" href=\"https://fr.lutece.paris.fr/fr/jsp/site/Portal.jsp?page=wiki&amp;action=changeLanguage&amp;page_name=home&amp;language=en\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/wiki-logo.png\" alt=\"WIKI\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Read our technical documentation</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\" Twitter Site [Open  in new window]\" href=\"https://twitter.com/LuteceNews\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/twitter-logo.png\" alt=\"Twitter logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Follow us on Twitter</h4> \n   </div> \n  </div> \n </div> \n</div>'),(6,'<section id=\"lutece\" class=\"lutece\">\r\n    <div class=\"container\">\r\n        <div class=\"row align-items-center\">\r\n            <div class=\"col-lg-6\">\r\n                <div class=\"lutece-content\">\r\n                    <h1 class=\"my-3\">CiteLibre Service\'EZ, votre outil clÃ© en main</h1>\r\n                    <p class=\"font-weight-bold\" >\r\n                        FR : CiteLibre est la suite logicielle de services numÃ©riques clÃ© en main rÃ©utilisant les composants du framework open source <a href=\"https://lutece.paris.fr/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. Elle permet aux municipalitÃ©s de tester, rÃ©utiliser et de paramÃ©trer les services disponibles pour rÃ©pondre Ã  leurs besoins. CiteLibre est gratuit, open source, entiÃ¨rement personnalisable et sÃ©curisÃ©.<br/>\r\nFÃ©licitations, vous avez dÃ©ployÃ© votre service numÃ©rique de dÃ©marches en ligne paramÃ©trable. Prochaine Ã©tape, crÃ©er votre propre formulaire. Toute la documentation est disponible <a href=\"https://lutece.paris.fr/support/wiki/howto-plugin-forms.html\" title=\"Wiki Lutece - Forms\" target=\"_blank\">ici</a>. <br/>\r\nAu fil de l\'utilisation de l\'application, vous pourrez exploiter des outils d\'aide Ã  la dÃ©cision (statistiques mÃ©tier rÃ©alisÃ©es avec la couche ElasticSearch / Kibana). Mettez en place les rÃ¨gles de gestion propre Ã  vos usages et appropriez-vous les dÃ©tails des notifications envoyÃ©es Ã  vos usagers.\r\n                    </p>\r\n                    <p class=\"font-weight-bold\">\r\n                        EN: <i>CiteLibre is the turnkey digital services software suite reusing components from the open source framework <a href=\"https://lutece.paris.fr/en/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. It enables municipalities to test, reuse and parameterize the services available to meet their needs. CiteLibre is free, open source, fully customizable and secure.<br/>\r\nCongratulations, you\'ve deployed your digital administrative procedure system. Next step is to create your own form. The full documentation is available <a href=\"https://lutece.paris.fr/support/wiki/howto-plugin-forms.html\" title=\"Wiki Lutece - Forms\" target=\"_blank\">here</a>.<br/>\r\nAs you use the application, you\'ll be able to harness decision-making tools (business statistics produced with the ElasticSearch / Kibana suite). Set up management rules specific to your uses and take ownership of the details of notifications sent to your users.</i>\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-6\">\r\n                <img src=\"images/site/city-home.svg\" alt=\"\">\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>'),(7,'<div class=\"lutece-content mt-5\">\r\n	<h2 class=\"my-3\">Connectez-vous Ã  l\'administration de l\'application</h2>\r\n	<p class=\"font-weight-bold\">FR : Connectez-vous Ã  l\'interface d\'administration en utilisant le login <strong>\"admin\"</strong> et le mot de passe <strong>\"adminadmin\"</strong> (vous serez invitÃ©s Ã  rÃ©initialiser le mot de passe). Vous pourrez alors personnaliser les services de dÃ©mo.<br/>Vous trouverez Ã©galement tous les <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Liens utiles\">liens utiles</a> avec les informations de connexion pour utiliser tous les services mis Ã  disposition dans l\'application.</p>\r\n	<p class=\"font-weight-bold\">EN: <i>Log in to the administration interface using login <strong>\"admin\"</strong> and password <strong>\"adminadmin\"</strong> (you will be prompted to reset the password). You can test each of its features and customize the demo form.<br/>You will also find all <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Useful links\">Useful links</a> with connection credentials to use all available features.</i></p>\r\n	<p class=\"text-center\">\r\n		<a class=\"btn-solid-reg\" href=\"jsp/admin/AdminLogin.jsp\" target=\"_blank\" title=\"Go to admin login page [Open in new window]\">\r\n			<span class=\"icon\"><i class=\"ti ti-user-cog\"></i></span>\r\n			<span class=\"text\">Administration</span>\r\n		</a>\r\n	</p>\r\n</div>'),(8,'<h2>Choisissez le meilleur parcours usager pour accÃ©der Ã  vos services numÃ©riques</h2>\r\n<p class=\"text-center\">\r\n	<a class=\"btn-solid-reg\" href=\"jsp/site/Portal.jsp?page=forms&view=stepView&id_form=4&init=true\" target=\"_blank\" title=\"DÃ©mo\">\r\n		<span class=\"icon\"><i class=\"ti ti-map-2\"></i></span>\r\n		<span class=\"text\">Acte de Mariage</span>\r\n	</a>\r\n	<a class=\"btn-solid-reg\" href=\"jsp/site/Portal.jsp?page=forms&view=stepView&id_form=1&init=true\" target=\"_blank\" title=\"DÃ©mo\">\r\n		<span class=\"icon\"><i class=\"ti ti-map-2\"></i></span>\r\n		<span class=\"text\">Contacter ma Mairie</span>\r\n	</a>\r\n</p>'),(10,'<p><strong>ServiceEZ</strong> est un service numÃ©rique qui comprend un ensemble de fonctionnalitÃ©s rendues possibles grÃ¢ce Ã  l\'ajout de serveurs tiers permettant notamment les statistiques de visites (<strong>Matomo</strong>) et mÃ©tier (<strong>ElasticSearch</strong> et <strong>Kibana</strong>), ou encore l\'authentification en back office (<strong>keycloak</strong>). Seuls les emails sont Ã©mulÃ©s par un outil (<strong>MailPit</strong>) permettant d\'intercepter tous les envois effectuÃ©s depuis l\'application pour vous donner une bonne idÃ©e des possibilitÃ©s. Ces envois seront Ã  pÃ©renniser en utilisant votre propre serveur de messagerie d\'entreprise.</p>\r\n<p>Voici l\'ensemble des liens vers ces applicatifs, avec les identifiants des comptes utilisateurs vous permettant de vous connecter aux interfaces d\'administration :</p>\r\n\r\n<style>\r\ntable {\r\n	font-family: arial, sans-serif;\r\n	border-collapse: collapse;\r\n	width: 100%;\r\n}\r\n\r\ntd, th {\r\n	border: 1px solid #dddddd;\r\n	text-align: left;\r\n	padding: 4px;\r\n}\r\n\r\n/*tr:nth-child(even) {\r\n	background-color: #ff3300;\r\n}*/\r\n</style>\r\n\r\n<table>\r\n	<tr style=\"background-color: #ff3300;\">\r\n		<th>Service</th>\r\n		<th>Identifiants</th>\r\n		<th>Commentaires</th>\r\n	</tr>\r\n	<tr>\r\n		<td><b>Back Office Service\'EZ</b><br/><a href=\"http://localhost:8080/serviceEZ/jsp/admin/site/AdminLogin.jsp\" target=\"_blank\">(lien)</a></td>\r\n		<td>Identifiant : admin<br/>Mot de passe : adminadmin<br/><i>Lors de la premiÃ¨re connexion, il vous sera demandÃ© de le modifier</i></td>\r\n		<td>Le \"back office\" est l\'interface d\'administration de votre application de gestion des dÃ©marches en ligne paramÃ©trables. Il vous permet de gÃ©rer les comptes et leurs autorisations associÃ©es, l\'Ã©ditorial, le paramÃ©trage de votre application, et de gÃ©rer les dÃ©marches des usagers au quotidien : crÃ©er vos nouvelles dÃ©marches, dÃ©finissez votre flux de travail et les notifications Ã  envoyer, et laissez l\'application faire le reste.</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>MailPit</b><br/><a href=\"http://localhost:1080/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nÃ©cessaire</td>\r\n		<td>MailPit est un petit outil permettant d\'intercepter les notifications envoyÃ©es sur un port particulier pour en afficher le contenu avec une lÃ©gÃ¨re mise en forme. Il suffit de cliquer sur une ligne de notification pour dÃ©plier le contenu. Cela vous permet de tester les envois effectuÃ©s par l\'application.</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>Matomo</b><br/><a href=\"http://localhost/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nÃ©cessaire</td>\r\n		<td>Matomo est un logiciel libre et open source de mesure de statistiques d\'audience. Lorsqu\'un usager navigue sur l\'application, les pages qu\'il consulte, le temps passÃ©, ainsi que les Ã©lÃ©ments techniques de son origine gÃ©ographe, et son navigateur internet sont consultables depuis cette interface, mais Ã©galement dans le back office de l\'application (menu \"Site\" -> \"Statistiques Web Matomo\").</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>SolR</b><br/><a href=\"http://localhost:8983/solr/#/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nÃ©cessaire</td>\r\n		<td>SolR est une base de donnÃ©es optimisÃ©e pour la recherche, conÃ§ue sous licence libre. Elle est utilisÃ©e pour indexer les crÃ©neaux disponibles de faÃ§on optimisÃ©e et pour restituer ces disponibilitÃ©s sur une carte gÃ©ographique.</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>ElasticSearch / Kibana</b><br/><a href=\"http://localhost:5601/s/dev/app/home#/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nÃ©cessaire</td>\r\n		<td>ElasticSearch est Ã©galement une base de donnÃ©es permettant l\'indexation optimisÃ©e de donnÃ©es. Cette pile est utilisÃ©e pour stocker les statistiques mÃ©tier liÃ©es Ã  l\'utilisation du service. Vous pourrez ensuite paramÃ©trer votre propre tableau de bord pour exploiter ces donnÃ©es</td>\r\n	</tr>\r\n	<tr>\r\n		<td rowspan=\"2\"><b>Keycloak</b><br/><a href=\"http://localhost:8081/admin/\" target=\"_blank\">(lien)</a></td>\r\n		<td>(<i>Compte admin</i>)<br/>Identifiant : admin<br/>Mot de passe : admin1234</td>\r\n		<td rowspan=\"2\">Keycloak est un outil open source permettant de l\'authentification unique et la gestion d\'identitÃ©, dÃ©veloppÃ© par la communautÃ© WildFly et hÃ©bergÃ© par RedHat.</td>\r\n	</tr>\r\n	<tr>\r\n		<td>(<i>Compte utilisateur de dÃ©mo</i>)<br/>Identifiant : test@paris.fr<br/>Mot de passe : test1234=TEST1234</td>\r\n	</tr>\r\n</table>');
/*!40000 ALTER TABLE `html_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `htmlpage`
--

DROP TABLE IF EXISTS `htmlpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `htmlpage` (
  `id_htmlpage` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '',
  `html_content` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `workgroup_key` varchar(50) NOT NULL DEFAULT 'all',
  `role` varchar(50) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id_htmlpage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htmlpage`
--

LOCK TABLES `htmlpage` WRITE;
/*!40000 ALTER TABLE `htmlpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `htmlpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kibana_dashboard`
--

DROP TABLE IF EXISTS `kibana_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kibana_dashboard` (
  `id_dashboard` int(11) NOT NULL,
  `idkibanadashboard` varchar(255) NOT NULL DEFAULT '',
  `title` mediumtext NOT NULL,
  `dataSourceName` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_dashboard`),
  UNIQUE KEY `idkibanadashboard` (`idkibanadashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kibana_dashboard`
--

LOCK TABLES `kibana_dashboard` WRITE;
/*!40000 ALTER TABLE `kibana_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `kibana_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_accessrules_rule`
--

DROP TABLE IF EXISTS `mylutece_accessrules_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_accessrules_rule` (
  `id_rule` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `enable` smallint(6) DEFAULT NULL,
  `external` smallint(6) DEFAULT NULL,
  `messagetodisplay` mediumtext DEFAULT NULL,
  `redirecturl` varchar(255) DEFAULT '',
  `backurl` varchar(255) DEFAULT '',
  `priority_order` int(11) DEFAULT 0,
  PRIMARY KEY (`id_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_accessrules_rule`
--

LOCK TABLES `mylutece_accessrules_rule` WRITE;
/*!40000 ALTER TABLE `mylutece_accessrules_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_accessrules_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_attribute`
--

DROP TABLE IF EXISTS `mylutece_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_attribute` (
  `id_attribute` int(11) NOT NULL DEFAULT 0,
  `type_class_name` varchar(255) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_shown_in_search` smallint(6) DEFAULT 0,
  `attribute_position` int(11) DEFAULT 0,
  `plugin_name` varchar(255) DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_attribute`
--

LOCK TABLES `mylutece_attribute` WRITE;
/*!40000 ALTER TABLE `mylutece_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_attribute_field`
--

DROP TABLE IF EXISTS `mylutece_attribute_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_attribute_field` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `DEFAULT_value` mediumtext DEFAULT NULL,
  `is_DEFAULT_value` smallint(6) DEFAULT 0,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT 0,
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_attribute_field`
--

LOCK TABLES `mylutece_attribute_field` WRITE;
/*!40000 ALTER TABLE `mylutece_attribute_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_attribute_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_cacheuserattribute_attribute`
--

DROP TABLE IF EXISTS `mylutece_cacheuserattribute_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_cacheuserattribute_attribute` (
  `id_cache_user_attribute` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(56) NOT NULL DEFAULT '',
  `id_attribute` int(11) NOT NULL DEFAULT 0,
  `content` mediumtext DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id_cache_user_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_cacheuserattribute_attribute`
--

LOCK TABLES `mylutece_cacheuserattribute_attribute` WRITE;
/*!40000 ALTER TABLE `mylutece_cacheuserattribute_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_cacheuserattribute_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_connections_log`
--

DROP TABLE IF EXISTS `mylutece_connections_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_connections_log` (
  `ip_address` varchar(63) DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_connections_log`
--

LOCK TABLES `mylutece_connections_log` WRITE;
/*!40000 ALTER TABLE `mylutece_connections_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_connections_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_user_anonymize_field`
--

DROP TABLE IF EXISTS `mylutece_user_anonymize_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_user_anonymize_field` (
  `field_name` varchar(100) NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_user_anonymize_field`
--

LOCK TABLES `mylutece_user_anonymize_field` WRITE;
/*!40000 ALTER TABLE `mylutece_user_anonymize_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_user_anonymize_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_user_field`
--

DROP TABLE IF EXISTS `mylutece_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_user_field` (
  `id_user_field` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `user_field_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_user_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_user_field`
--

LOCK TABLES `mylutece_user_field` WRITE;
/*!40000 ALTER TABLE `mylutece_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifygru_alert_update_resource_state_queue`
--

DROP TABLE IF EXISTS `notifygru_alert_update_resource_state_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifygru_alert_update_resource_state_queue` (
  `id_resource_queue` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL,
  `id_resource_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL DEFAULT '',
  `id_external_parent` int(11) NOT NULL DEFAULT 0,
  `id_workflow` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `alert_reference_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_state` int(11) NOT NULL,
  PRIMARY KEY (`id_resource_queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifygru_alert_update_resource_state_queue`
--

LOCK TABLES `notifygru_alert_update_resource_state_queue` WRITE;
/*!40000 ALTER TABLE `notifygru_alert_update_resource_state_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifygru_alert_update_resource_state_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_form`
--

DROP TABLE IF EXISTS `poll_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_form` (
  `id_poll_form` int(11) NOT NULL AUTO_INCREMENT,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `is_visible` smallint(6) NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `btn_title` mediumtext DEFAULT NULL,
  `btn_url` mediumtext DEFAULT NULL,
  `btn_is_visible` smallint(6) NOT NULL,
  PRIMARY KEY (`id_poll_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_form`
--

LOCK TABLES `poll_form` WRITE;
/*!40000 ALTER TABLE `poll_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_form_question`
--

DROP TABLE IF EXISTS `poll_form_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poll_form_question` (
  `id_poll_form_question` int(11) NOT NULL AUTO_INCREMENT,
  `id_poll_form` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `chart_type` mediumtext DEFAULT NULL,
  `chart_is_toolbox` smallint(6) NOT NULL,
  `chart_is_checked` smallint(6) NOT NULL,
  PRIMARY KEY (`id_poll_form_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_form_question`
--

LOCK TABLES `poll_form_question` WRITE;
/*!40000 ALTER TABLE `poll_form_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_form_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_action`
--

DROP TABLE IF EXISTS `profile_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_action`
--

LOCK TABLES `profile_action` WRITE;
/*!40000 ALTER TABLE `profile_action` DISABLE KEYS */;
INSERT INTO `profile_action` VALUES (1,'profiles.action.modify_profile.name','profiles.action.modify_profile.description','jsp/admin/plugins/profiles/ModifyProfile.jsp','edit','MODIFY_PROFILE'),(2,'profiles.action.delete_profile.name','profiles.action.delete_profile.description','jsp/admin/plugins/profiles/RemoveProfile.jsp','trash','DELETE_DELETE'),(3,'profiles.action.manage_users_assignment.name','profiles.action.manage_users_assignment.description','jsp/admin/plugins/profiles/AssignUsersProfile.jsp','user','MANAGE_USERS_ASSIGNMENT'),(4,'profiles.action.manage_rights_assignment.name','profiles.action.manage_rights_assignment.description','jsp/admin/plugins/profiles/AssignRightsProfile.jsp','lock','MANAGE_RIGHTS_ASSIGNMENT'),(5,'profiles.action.manage_roles_assignment.name','profiles.action.manage_roles_assignment.description','jsp/admin/plugins/profiles/AssignRolesProfile.jsp','th-list','MANAGE_ROLES_ASSIGNMENT'),(6,'profiles.action.manage_workgroups_assignment.name','profiles.action.manage_workgroups_assignment.description','jsp/admin/plugins/profiles/AssignWorkgroupsProfile.jsp','group','MANAGE_WORKGROUPS_ASSIGNMENT'),(7,'profiles.action.manage_view_assignment.name','profiles.action.manage_view_assignment.description','jsp/admin/plugins/profiles/AssignViewProfile.jsp','eye','MANAGE_VIEW_ASSIGNMENT');
/*!40000 ALTER TABLE `profile_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_profile`
--

DROP TABLE IF EXISTS `profile_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_profile` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `profile_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_profile`
--

LOCK TABLES `profile_profile` WRITE;
/*!40000 ALTER TABLE `profile_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_right`
--

DROP TABLE IF EXISTS `profile_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_right` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `id_right` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`id_right`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_right`
--

LOCK TABLES `profile_right` WRITE;
/*!40000 ALTER TABLE `profile_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_role`
--

DROP TABLE IF EXISTS `profile_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_role` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `role_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`role_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_role`
--

LOCK TABLES `profile_role` WRITE;
/*!40000 ALTER TABLE `profile_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_user`
--

DROP TABLE IF EXISTS `profile_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_user` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`profile_key`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_user`
--

LOCK TABLES `profile_user` WRITE;
/*!40000 ALTER TABLE `profile_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view`
--

DROP TABLE IF EXISTS `profile_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `view_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`view_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view`
--

LOCK TABLES `profile_view` WRITE;
/*!40000 ALTER TABLE `profile_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view_action`
--

DROP TABLE IF EXISTS `profile_view_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) DEFAULT NULL,
  `description_key` varchar(100) DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `action_permission` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view_action`
--

LOCK TABLES `profile_view_action` WRITE;
/*!40000 ALTER TABLE `profile_view_action` DISABLE KEYS */;
INSERT INTO `profile_view_action` VALUES (1,'profiles.action.modify_view.name','profiles.action.modify_view.description','jsp/admin/plugins/profiles/ModifyView.jsp','edit','MODIFY_VIEW'),(2,'profiles.action.delete_view.name','profiles.action.delete_view.description','jsp/admin/plugins/profiles/RemoveView.jsp','trash','DELETE_VIEW'),(3,'profiles.action.manage_views_assignment.name','profiles.action.manage_views_assignment.description','jsp/admin/plugins/profiles/AssignProfilesView.jsp','user-tag','MANAGE_PROFILES_ASSIGNMENT'),(4,'profiles.action.manage_dashboards.name','profiles.action.manage_dashboards.description','jsp/admin/plugins/profiles/ManageDashboards.jsp','wrench','MANAGE_DASHBOARDS');
/*!40000 ALTER TABLE `profile_view_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view_dashboard`
--

DROP TABLE IF EXISTS `profile_view_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view_dashboard` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `dashboard_name` varchar(100) NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`view_key`,`dashboard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view_dashboard`
--

LOCK TABLES `profile_view_dashboard` WRITE;
/*!40000 ALTER TABLE `profile_view_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_view_profile`
--

DROP TABLE IF EXISTS `profile_view_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_view_profile` (
  `view_key` varchar(50) NOT NULL DEFAULT '',
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`view_key`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_view_profile`
--

LOCK TABLES `profile_view_profile` WRITE;
/*!40000 ALTER TABLE `profile_view_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_view_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_workgroup`
--

DROP TABLE IF EXISTS `profile_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_workgroup` (
  `profile_key` varchar(50) NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`profile_key`,`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_workgroup`
--

LOCK TABLES `profile_workgroup` WRITE;
/*!40000 ALTER TABLE `profile_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencelist_item`
--

DROP TABLE IF EXISTS `referencelist_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencelist_item` (
  `id_reference_item` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `code` mediumtext NOT NULL,
  `idreference` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_reference_item`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_item`
--

LOCK TABLES `referencelist_item` WRITE;
/*!40000 ALTER TABLE `referencelist_item` DISABLE KEYS */;
INSERT INTO `referencelist_item` VALUES (1,'Espace Public','espace_public',1),(2,'Logement et Habitat','logement_habitat',1),(3,'Affaires Scolaires','affaires_scolaires',1),(4,'Voirie','voirie',2),(5,'Espaces Verts','espaces_verts',2),(6,'Ecoles','ecoles',3),(7,'Centres de Loisirs','centres_loisirs',3),(8,'Petite Enfance','petite_enfance',3);
/*!40000 ALTER TABLE `referencelist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencelist_reference`
--

DROP TABLE IF EXISTS `referencelist_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencelist_reference` (
  `id_reference` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id_reference`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_reference`
--

LOCK TABLES `referencelist_reference` WRITE;
/*!40000 ALTER TABLE `referencelist_reference` DISABLE KEYS */;
INSERT INTO `referencelist_reference` VALUES (1,'Demandes de contact','ThÃ©matiques liÃ©es aux demandes de contact'),(2,'espace_public','ThÃ©matiques liÃ©es aux demandes relatives Ã  l\'espace public'),(3,'affaires_scolaires','ThÃ©matiques liÃ©es aux demandes relatives aux affaires scolaires');
/*!40000 ALTER TABLE `referencelist_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencelist_translation`
--

DROP TABLE IF EXISTS `referencelist_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencelist_translation` (
  `id_translation` int(11) NOT NULL AUTO_INCREMENT,
  `lang` varchar(10) NOT NULL,
  `name` mediumtext NOT NULL,
  `id_reference_item` int(11) NOT NULL,
  PRIMARY KEY (`id_translation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_translation`
--

LOCK TABLES `referencelist_translation` WRITE;
/*!40000 ALTER TABLE `referencelist_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencelist_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regularexpression_regular_expression`
--

DROP TABLE IF EXISTS `regularexpression_regular_expression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regularexpression_regular_expression` (
  `id_expression` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `regular_expression_value` mediumtext DEFAULT NULL,
  `valid_exemple` mediumtext DEFAULT NULL,
  `information_message` mediumtext DEFAULT NULL,
  `error_message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_expression`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regularexpression_regular_expression`
--

LOCK TABLES `regularexpression_regular_expression` WRITE;
/*!40000 ALTER TABLE `regularexpression_regular_expression` DISABLE KEYS */;
INSERT INTO `regularexpression_regular_expression` VALUES (1,'Fichier JPG','image/jpeg','image/jpeg','Expression rÃ©guliÃ¨re pour les fichiers de type jpeg.','Le format du fichier n\'est pas valide. Veuillez choisir une image de type jpeg.'),(2,'Email','(^([a-zA-Z0-9]+(([\\.\\-\\_]?[a-zA-Z0-9]+)+)?)\\@(([a-zA-Z0-9]+[\\.\\-\\_])+[a-zA-Z]{2,4})$)|(^$)','admin@lutece.fr','Expression rÃ©guliÃ¨re pour les emails.','Le format de l\'email est incorrect.');
/*!40000 ALTER TABLE `regularexpression_regular_expression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_friendly_url`
--

DROP TABLE IF EXISTS `seo_friendly_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_friendly_url` (
  `id_url` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) NOT NULL DEFAULT '',
  `technical_url` varchar(255) NOT NULL DEFAULT '',
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modification` timestamp NOT NULL DEFAULT '2012-10-09 22:00:00',
  `is_canonical` int(11) NOT NULL DEFAULT 0,
  `is_sitemap` int(11) NOT NULL DEFAULT 0,
  `sitemap_lastmod` varchar(255) DEFAULT '',
  `sitemap_changefreq` varchar(255) DEFAULT '',
  `sitemap_priority` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_friendly_url`
--

LOCK TABLES `seo_friendly_url` WRITE;
/*!40000 ALTER TABLE `seo_friendly_url` DISABLE KEYS */;
INSERT INTO `seo_friendly_url` VALUES (1,'/sitemap.html','/jsp/site/Portal.jsp?page=map','2024-01-19 15:26:14','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(2,'/contacts.html','/jsp/site/Portal.jsp?page=contact','2024-01-19 15:26:14','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(3,'/credits.html','/jsp/site/PopupCredits.jsp','2024-01-19 15:26:14','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(4,'/home.html','/jsp/site/Portal.jsp?page_id=1','2024-03-05 14:37:01','2012-10-09 22:00:00',1,1,'2024-01-19','weekly','0.7'),(5,'/page-1.html','/jsp/site/Portal.jsp?page_id=2','2024-03-05 14:37:01','2012-10-09 22:00:00',1,1,'2024-01-19','weekly','0.7'),(6,'/liens-utiles.html','/jsp/site/Portal.jsp?page_id=3','2024-05-28 17:01:23','2012-10-09 22:00:00',1,1,'2024-05-28','weekly','0.7');
/*!40000 ALTER TABLE `seo_friendly_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_properties`
--

DROP TABLE IF EXISTS `seo_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_properties` (
  `property_key` varchar(255) NOT NULL,
  `property_value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`property_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_properties`
--

LOCK TABLES `seo_properties` WRITE;
/*!40000 ALTER TABLE `seo_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `seo_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_rule`
--

DROP TABLE IF EXISTS `seo_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_rule` (
  `id_rule` int(11) NOT NULL DEFAULT 0,
  `rule_from` varchar(255) NOT NULL DEFAULT '',
  `rule_to` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_rule`
--

LOCK TABLES `seo_rule` WRITE;
/*!40000 ALTER TABLE `seo_rule` DISABLE KEYS */;
INSERT INTO `seo_rule` VALUES (1,'/page/([0-9]+)','/jsp/site/Portal.jsp?page_id=$1'),(2,'/app/([a-z]+)','/jsp/site/Portal.jsp?page=$1'),(3,'/map','/jsp/site/Portal.jsp?page=map');
/*!40000 ALTER TABLE `seo_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_facet_intersection`
--

DROP TABLE IF EXISTS `solr_facet_intersection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_facet_intersection` (
  `id_field1` int(11) DEFAULT NULL,
  `id_field2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_facet_intersection`
--

LOCK TABLES `solr_facet_intersection` WRITE;
/*!40000 ALTER TABLE `solr_facet_intersection` DISABLE KEYS */;
/*!40000 ALTER TABLE `solr_facet_intersection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_fields`
--

DROP TABLE IF EXISTS `solr_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_fields` (
  `id_field` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_facet` tinyint(1) DEFAULT 0,
  `enable_facet` tinyint(1) DEFAULT 0,
  `is_sort` tinyint(1) DEFAULT 0,
  `enable_sort` tinyint(1) DEFAULT 0,
  `default_sort` tinyint(1) DEFAULT 0,
  `weight` float DEFAULT 0,
  `facet_mincount` int(11) DEFAULT 1,
  `operator_type` varchar(30) DEFAULT 'OR',
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_fields`
--

LOCK TABLES `solr_fields` WRITE;
/*!40000 ALTER TABLE `solr_fields` DISABLE KEYS */;
INSERT INTO `solr_fields` VALUES (1,'site','Site','Site',1,1,0,0,0,0,1,'OR'),(2,'type','Type','Type',1,1,0,0,0,0,1,'OR'),(3,'date','Date','Date',1,1,1,1,0,0,1,'OR'),(4,'score','Score','Score',0,0,1,1,1,0,1,'OR'),(5,'categorie','Categorie','Category',1,1,0,0,0,0,1,'OR'),(6,'title','title','Title',0,0,0,0,0,10,1,'AND'),(7,'content','content','Content',0,0,0,0,0,0.1,1,'AND'),(8,'summary','summary','Summary',0,0,0,0,0,1,1,'AND');
/*!40000 ALTER TABLE `solr_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_indexer_action`
--

DROP TABLE IF EXISTS `solr_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_indexer_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `id_document` varchar(255) NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `type_ressource` varchar(255) NOT NULL,
  `id_portlet` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_indexer_action`
--

LOCK TABLES `solr_indexer_action` WRITE;
/*!40000 ALTER TABLE `solr_indexer_action` DISABLE KEYS */;
INSERT INTO `solr_indexer_action` VALUES (1,'5',2,'FORMS_FORM',-1),(2,'7',3,'FORMS_FORM',-1),(3,'8',3,'FORMS_FORM',-1),(4,'6',3,'FORMS_FORM',-1),(5,'40',2,'FORMS_FORM',-1),(6,'41',2,'FORMS_FORM',-1),(7,'42',2,'FORMS_FORM',-1),(8,'43',2,'FORMS_FORM',-1),(13,'44',2,'FORMS_FORM',-1),(14,'45',2,'FORMS_FORM',-1),(15,'46',3,'FORMS_FORM',-1),(16,'47',3,'FORMS_FORM',-1),(17,'48',3,'FORMS_FORM',-1),(18,'49',3,'FORMS_FORM',-1),(19,'50',3,'FORMS_FORM',-1),(20,'51',3,'FORMS_FORM',-1),(21,'52',3,'FORMS_FORM',-1),(22,'53',3,'FORMS_FORM',-1),(23,'54',3,'FORMS_FORM',-1),(24,'9',3,'FORMS_FORM',-1),(25,'10',3,'FORMS_FORM',-1),(26,'11',3,'FORMS_FORM',-1),(27,'12',3,'FORMS_FORM',-1),(28,'13',3,'FORMS_FORM',-1),(29,'14',3,'FORMS_FORM',-1),(30,'15',3,'FORMS_FORM',-1),(31,'16',3,'FORMS_FORM',-1),(32,'17',3,'FORMS_FORM',-1),(33,'18',3,'FORMS_FORM',-1),(34,'19',3,'FORMS_FORM',-1),(35,'20',3,'FORMS_FORM',-1),(36,'23',3,'FORMS_FORM',-1),(37,'21',3,'FORMS_FORM',-1),(38,'24',3,'FORMS_FORM',-1),(39,'22',3,'FORMS_FORM',-1),(40,'25',3,'FORMS_FORM',-1),(41,'26',3,'FORMS_FORM',-1),(42,'27',3,'FORMS_FORM',-1),(43,'28',3,'FORMS_FORM',-1),(44,'29',3,'FORMS_FORM',-1),(45,'30',3,'FORMS_FORM',-1),(46,'31',3,'FORMS_FORM',-1),(47,'32',3,'FORMS_FORM',-1),(48,'33',3,'FORMS_FORM',-1),(49,'34',3,'FORMS_FORM',-1),(50,'35',3,'FORMS_FORM',-1),(51,'36',3,'FORMS_FORM',-1),(52,'44',3,'FORMS_FORM',-1),(53,'45',3,'FORMS_FORM',-1),(54,'37',3,'FORMS_FORM',-1),(55,'38',3,'FORMS_FORM',-1),(56,'39',3,'FORMS_FORM',-1),(57,'57',2,'FORMS_FORM',-1),(58,'75',2,'FORMS_FORM',-1),(59,'79',2,'FORMS_FORM',-1),(60,'81',2,'FORMS_FORM',-1),(61,'82',2,'FORMS_FORM',-1),(62,'2',1,'FORMS_FORM_RESPONSE',-1),(63,'2',2,'FORMS_FORM_RESPONSE',-1),(64,'2',2,'FORMS_FORM_RESPONSE',-1),(65,'2',2,'FORMS_FORM_RESPONSE',-1),(66,'60',2,'FORMS_FORM',-1),(67,'61',2,'FORMS_FORM',-1),(68,'62',2,'FORMS_FORM',-1),(69,'63',2,'FORMS_FORM',-1),(70,'64',2,'FORMS_FORM',-1),(71,'65',2,'FORMS_FORM',-1),(72,'66',2,'FORMS_FORM',-1),(73,'69',2,'FORMS_FORM',-1),(74,'67',2,'FORMS_FORM',-1),(75,'70',2,'FORMS_FORM',-1),(76,'68',2,'FORMS_FORM',-1),(77,'71',2,'FORMS_FORM',-1),(78,'78',2,'FORMS_FORM',-1),(79,'76',2,'FORMS_FORM',-1),(80,'77',2,'FORMS_FORM',-1),(81,'82',2,'FORMS_FORM',-1),(82,'83',2,'FORMS_FORM',-1),(83,'84',2,'FORMS_FORM',-1),(84,'2',2,'FORMS_FORM_RESPONSE',-1),(85,'3',2,'FORMS_FORM_RESPONSE',-1),(86,'79',3,'FORMS_FORM',-1),(87,'88',2,'FORMS_FORM',-1),(88,'88',3,'FORMS_FORM',-1),(89,'76',3,'FORMS_FORM',-1),(90,'77',3,'FORMS_FORM',-1),(91,'5',1,'FORMS_FORM_RESPONSE',-1),(92,'5',2,'FORMS_FORM_RESPONSE',-1),(93,'5',2,'FORMS_FORM_RESPONSE',-1);
/*!40000 ALTER TABLE `solr_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_alert`
--

DROP TABLE IF EXISTS `task_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_alert` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `reference_date` timestamp NULL DEFAULT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 1,
  `is_executed` smallint(6) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_alert`
--

LOCK TABLES `task_alert` WRITE;
/*!40000 ALTER TABLE `task_alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_alert_cf`
--

DROP TABLE IF EXISTS `task_alert_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_alert_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_state_after_deadline` int(11) NOT NULL DEFAULT 0,
  `id_question_date` int(11) NOT NULL DEFAULT 0,
  `nb_days_to_date` int(11) NOT NULL DEFAULT 0,
  `id_retrieval_type` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_alert_cf`
--

LOCK TABLES `task_alert_cf` WRITE;
/*!40000 ALTER TABLE `task_alert_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_alert_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_create_pdf_cf`
--

DROP TABLE IF EXISTS `task_create_pdf_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_create_pdf_cf` (
  `id_task` int(11) NOT NULL,
  `id_form` int(11) DEFAULT NULL,
  `id_question_url_pdf` int(11) DEFAULT NULL,
  `id_config` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_create_pdf_cf`
--

LOCK TABLES `task_create_pdf_cf` WRITE;
/*!40000 ALTER TABLE `task_create_pdf_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_create_pdf_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_control`
--

DROP TABLE IF EXISTS `template_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_control` (
  `id_control` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `error_message` varchar(512) DEFAULT '',
  `validator_name` varchar(255) NOT NULL,
  `control_type` varchar(255) NOT NULL,
  `id_control_target` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_control`
--

LOCK TABLES `template_control` WRITE;
/*!40000 ALTER TABLE `template_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_control_question`
--

DROP TABLE IF EXISTS `template_control_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_control_question` (
  `id_control` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  PRIMARY KEY (`id_control`,`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_control_question`
--

LOCK TABLES `template_control_question` WRITE;
/*!40000 ALTER TABLE `template_control_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_control_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_control_question_mapping`
--

DROP TABLE IF EXISTS `template_control_question_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_control_question_mapping` (
  `id_control` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_control`,`id_question`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_control_question_mapping`
--

LOCK TABLES `template_control_question_mapping` WRITE;
/*!40000 ALTER TABLE `template_control_question_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_control_question_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_display`
--

DROP TABLE IF EXISTS `template_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_display` (
  `id_display` int(11) NOT NULL AUTO_INCREMENT,
  `id_template` int(11) DEFAULT 0,
  `id_composite` int(11) DEFAULT 0,
  `id_parent` int(11) DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `composite_type` varchar(255) DEFAULT '',
  `display_depth` int(11) DEFAULT 0,
  PRIMARY KEY (`id_display`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_display`
--

LOCK TABLES `template_display` WRITE;
/*!40000 ALTER TABLE `template_display` DISABLE KEYS */;
INSERT INTO `template_display` VALUES (1,1,1,0,1,'question',0),(2,1,2,0,2,'question',0),(3,1,3,0,3,'question',0),(4,1,4,0,4,'question',0),(5,1,5,0,5,'question',0),(6,1,6,0,6,'question',0),(7,1,7,0,7,'question',0),(8,1,8,0,8,'question',0),(9,1,9,0,9,'question',0),(10,2,10,0,1,'question',0),(11,2,11,0,2,'question',0),(12,2,12,0,3,'question',0),(13,2,13,0,4,'question',0),(14,2,14,0,5,'question',0),(15,2,15,0,6,'question',0),(16,2,16,0,7,'question',0),(17,2,17,0,8,'question',0),(18,2,18,0,9,'question',0),(19,2,19,0,10,'question',0),(20,3,20,0,1,'question',0),(21,3,21,0,2,'question',0),(22,3,22,0,3,'question',0),(23,3,23,0,4,'question',0),(24,3,24,0,5,'question',0),(25,3,25,0,6,'question',0),(26,3,26,0,7,'question',0),(27,4,27,0,2,'question',0),(28,4,28,0,3,'question',0),(29,4,29,0,4,'question',0),(30,4,30,0,5,'question',0),(31,4,31,0,6,'question',0),(32,4,32,0,7,'question',0),(33,4,33,0,8,'question',0),(34,4,34,0,9,'question',0),(35,4,35,0,10,'question',0),(36,4,36,0,12,'question',0),(37,4,37,0,13,'question',0),(38,4,38,0,14,'question',0),(39,4,39,0,11,'question',0),(40,4,40,0,1,'question',0),(41,5,41,0,1,'question',0),(42,5,42,0,2,'question',0),(43,5,43,0,4,'question',0),(44,5,44,0,5,'question',0),(45,5,45,0,6,'question',0),(46,5,46,0,7,'question',0),(47,5,47,0,8,'question',0),(48,5,48,0,9,'question',0),(49,5,49,0,10,'question',0),(50,5,50,0,3,'question',0),(51,6,51,0,1,'question',0),(52,7,52,0,1,'question',0),(53,7,53,0,2,'question',0),(54,7,54,0,3,'question',0),(55,7,55,0,4,'question',0),(56,7,56,0,5,'question',0),(57,7,57,0,6,'question',0),(58,7,58,0,7,'question',0),(59,7,59,0,8,'question',0),(60,7,60,0,9,'question',0),(61,7,61,0,10,'question',0),(62,7,62,0,11,'question',0),(63,7,63,0,12,'question',0),(64,8,64,0,1,'question',0),(65,8,65,0,2,'question',0),(66,8,66,0,3,'question',0);
/*!40000 ALTER TABLE `template_display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_entry`
--

DROP TABLE IF EXISTS `template_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_entry` (
  `id_entry` int(11) NOT NULL AUTO_INCREMENT,
  `id_type` int(11) NOT NULL DEFAULT 0,
  `title` mediumtext DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `help_message` mediumtext DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `fields_in_line` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `field_unique` smallint(6) DEFAULT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `pos_conditional` int(11) DEFAULT 0,
  `error_message` mediumtext DEFAULT NULL,
  `is_only_display_back` smallint(6) DEFAULT 0,
  `is_indexed` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_entry`
--

LOCK TABLES `template_entry` WRITE;
/*!40000 ALTER TABLE `template_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_field`
--

DROP TABLE IF EXISTS `template_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_field` (
  `id_field` int(11) NOT NULL AUTO_INCREMENT,
  `id_entry` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `value` mediumtext DEFAULT NULL,
  `default_value` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `value_type_date` date DEFAULT NULL,
  `no_display_title` smallint(6) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=MyISAM AUTO_INCREMENT=744 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_field`
--

LOCK TABLES `template_field` WRITE;
/*!40000 ALTER TABLE `template_field` DISABLE KEYS */;
INSERT INTO `template_field` VALUES (1,1,'-1','use_ref_list','false',0,1,NULL,0,NULL),(2,1,'','anonymizable','false',0,2,NULL,0,NULL),(3,1,'-1','use_ref_list','false',0,3,NULL,0,NULL),(4,1,'','anonymizable','false',0,4,NULL,0,NULL),(5,1,NULL,'used_in_correct_form_response','false',0,5,NULL,0,NULL),(6,1,NULL,'used_in_complete_form_response','false',0,6,NULL,0,NULL),(7,1,NULL,'exportable','true',0,7,NULL,0,NULL),(8,1,NULL,'text_config','',0,8,NULL,0,NULL),(9,1,NULL,'width','0',0,9,NULL,0,NULL),(10,1,NULL,'max_size','-1',0,10,NULL,0,NULL),(11,1,NULL,'confirm_field','false',0,11,NULL,0,NULL),(12,1,NULL,'exportable_pdf','true',0,12,NULL,0,NULL),(13,2,'-1','use_ref_list','false',0,13,NULL,0,NULL),(14,2,'','anonymizable','false',0,14,NULL,0,NULL),(15,2,'-1','use_ref_list','false',0,15,NULL,0,NULL),(16,2,'','anonymizable','false',0,16,NULL,0,NULL),(17,2,NULL,'used_in_correct_form_response','false',0,17,NULL,0,NULL),(18,2,NULL,'used_in_complete_form_response','false',0,18,NULL,0,NULL),(19,2,NULL,'exportable','false',0,19,NULL,0,NULL),(20,2,NULL,'default_date_value',NULL,0,20,NULL,0,NULL),(21,3,'-1','use_ref_list','false',0,21,NULL,0,NULL),(22,3,'','anonymizable','false',0,22,NULL,0,NULL),(23,3,'-1','use_ref_list','false',0,23,NULL,0,NULL),(24,3,'','anonymizable','false',0,24,NULL,0,NULL),(25,3,NULL,'used_in_correct_form_response','false',0,25,NULL,0,NULL),(26,3,NULL,'used_in_complete_form_response','false',0,26,NULL,0,NULL),(27,3,NULL,'exportable','true',0,27,NULL,0,NULL),(28,3,NULL,'text_config','',0,28,NULL,0,NULL),(29,3,NULL,'width','0',0,29,NULL,0,NULL),(30,3,NULL,'max_size','-1',0,30,NULL,0,NULL),(31,3,NULL,'confirm_field','false',0,31,NULL,0,NULL),(32,3,NULL,'exportable_pdf','true',0,32,NULL,0,NULL),(33,4,'-1','anonymizable','false',0,33,NULL,0,NULL),(34,4,'-1','use_ref_list','false',0,34,NULL,0,NULL),(35,4,'','anonymizable','false',0,35,NULL,0,NULL),(36,4,'-1','use_ref_list','false',0,36,NULL,0,NULL),(37,4,'','anonymizable','false',0,37,NULL,0,NULL),(38,4,NULL,'used_in_correct_form_response','false',0,38,NULL,0,NULL),(39,4,NULL,'used_in_complete_form_response','false',0,39,NULL,0,NULL),(40,4,NULL,'exportable','false',0,40,NULL,0,NULL),(41,4,'SalariÃ© ','answer_choice','Salarie',0,41,NULL,0,''),(42,4,'Free-lance ','answer_choice','Free_lance',0,42,NULL,0,''),(43,4,'Apprenti ','answer_choice','Apprenti',0,43,NULL,0,''),(44,4,'Stagiaire','answer_choice','Stagiaire',0,44,NULL,0,''),(45,5,'-1','use_ref_list','false',0,45,NULL,0,NULL),(46,5,'','anonymizable','false',0,46,NULL,0,NULL),(47,5,'-1','use_ref_list','false',0,47,NULL,0,NULL),(48,5,'','anonymizable','false',0,48,NULL,0,NULL),(49,5,NULL,'used_in_correct_form_response','false',0,49,NULL,0,NULL),(50,5,NULL,'used_in_complete_form_response','false',0,50,NULL,0,NULL),(51,5,NULL,'exportable','false',0,51,NULL,0,NULL),(52,5,NULL,'text_config','',0,52,NULL,0,NULL),(53,5,NULL,'width','0',0,53,NULL,0,NULL),(54,5,NULL,'max_size','-1',0,54,NULL,0,NULL),(55,5,NULL,'confirm_field','false',0,55,NULL,0,NULL),(56,6,'-1','use_ref_list','false',0,56,NULL,0,NULL),(57,6,'','anonymizable','false',0,57,NULL,0,NULL),(58,6,'-1','use_ref_list','false',0,58,NULL,0,NULL),(59,6,'','anonymizable','false',0,59,NULL,0,NULL),(60,6,NULL,'used_in_correct_form_response','false',0,60,NULL,0,NULL),(61,6,NULL,'used_in_complete_form_response','false',0,61,NULL,0,NULL),(62,6,NULL,'exportable','false',0,62,NULL,0,NULL),(63,6,NULL,'text_config','',0,63,NULL,0,NULL),(64,6,NULL,'width','0',0,64,NULL,0,NULL),(65,6,NULL,'max_size','-1',0,65,NULL,0,NULL),(66,6,NULL,'confirm_field','false',0,66,NULL,0,NULL),(67,7,'-1','use_ref_list','false',0,67,NULL,0,NULL),(68,7,'','anonymizable','false',0,68,NULL,0,NULL),(69,7,'-1','use_ref_list','false',0,69,NULL,0,NULL),(70,7,'','anonymizable','false',0,70,NULL,0,NULL),(71,7,NULL,'used_in_correct_form_response','false',0,71,NULL,0,NULL),(72,7,NULL,'used_in_complete_form_response','false',0,72,NULL,0,NULL),(73,7,NULL,'exportable','false',0,73,NULL,0,NULL),(74,7,NULL,'text_config','',0,74,NULL,0,NULL),(75,7,NULL,'width','0',0,75,NULL,0,NULL),(76,7,NULL,'max_size','-1',0,76,NULL,0,NULL),(77,7,NULL,'confirm_field','false',0,77,NULL,0,NULL),(78,8,'-1','use_ref_list','false',0,78,NULL,0,NULL),(79,8,'','anonymizable','false',0,79,NULL,0,NULL),(80,8,'-1','use_ref_list','false',0,80,NULL,0,NULL),(81,8,'','anonymizable','false',0,81,NULL,0,NULL),(82,8,NULL,'used_in_correct_form_response','false',0,82,NULL,0,NULL),(83,8,NULL,'used_in_complete_form_response','false',0,83,NULL,0,NULL),(84,8,NULL,'exportable','false',0,84,NULL,0,NULL),(85,8,NULL,'text_config','',0,85,NULL,0,NULL),(86,8,NULL,'width','0',0,86,NULL,0,NULL),(87,8,NULL,'max_size','-1',0,87,NULL,0,NULL),(88,8,NULL,'confirm_field','false',0,88,NULL,0,NULL),(89,9,'-1','anonymizable','false',0,89,NULL,0,NULL),(90,9,'-1','use_ref_list','false',0,90,NULL,0,NULL),(91,9,'','anonymizable','false',0,91,NULL,0,NULL),(92,9,'-1','use_ref_list','false',0,92,NULL,0,NULL),(93,9,'','anonymizable','false',0,93,NULL,0,NULL),(94,9,NULL,'used_in_correct_form_response','false',0,94,NULL,0,NULL),(95,9,NULL,'used_in_complete_form_response','false',0,95,NULL,0,NULL),(96,9,NULL,'exportable','true',0,96,NULL,0,NULL),(97,9,'moins de 50 000 euros par an','answer_choice','moins_de_50_000_euros_par_an',0,97,NULL,0,''),(98,9,'moins de 100 000 euros par an','answer_choice','moins_de_100_000_euros_par_an',0,98,NULL,0,''),(99,9,'moins de 200 000 euros par an','answer_choice','moins_de_200_000_euros_par_an',0,99,NULL,0,''),(100,9,'+ de 200 000 euros par an','answer_choice','plus_de_200_000_euros_par_an',0,100,NULL,0,''),(101,9,NULL,'exportable_pdf','true',0,101,NULL,0,NULL),(102,10,'-1','use_ref_list','false',0,102,NULL,0,NULL),(103,10,'','anonymizable','false',0,103,NULL,0,NULL),(104,10,'-1','use_ref_list','false',0,104,NULL,0,NULL),(105,10,'','anonymizable','false',0,105,NULL,0,NULL),(106,10,NULL,'used_in_correct_form_response','false',0,106,NULL,0,NULL),(107,10,NULL,'used_in_complete_form_response','false',0,107,NULL,0,NULL),(108,10,NULL,'exportable','true',0,108,NULL,0,NULL),(109,10,NULL,'text_config','',0,109,NULL,0,NULL),(110,10,NULL,'width','0',0,110,NULL,0,NULL),(111,10,NULL,'max_size','-1',0,111,NULL,0,NULL),(112,10,NULL,'confirm_field','false',0,112,NULL,0,NULL),(113,10,NULL,'exportable_pdf','true',0,113,NULL,0,NULL),(114,11,'-1','use_ref_list','false',0,114,NULL,0,NULL),(115,11,'','anonymizable','false',0,115,NULL,0,NULL),(116,11,'-1','use_ref_list','false',0,116,NULL,0,NULL),(117,11,'','anonymizable','false',0,117,NULL,0,NULL),(118,11,NULL,'used_in_correct_form_response','false',0,118,NULL,0,NULL),(119,11,NULL,'used_in_complete_form_response','false',0,119,NULL,0,NULL),(120,11,NULL,'exportable','true',0,120,NULL,0,NULL),(121,11,NULL,'text_config','',0,121,NULL,0,NULL),(122,11,NULL,'width','0',0,122,NULL,0,NULL),(123,11,NULL,'max_size','-1',0,123,NULL,0,NULL),(124,11,NULL,'confirm_field','false',0,124,NULL,0,NULL),(125,11,NULL,'exportable_pdf','true',0,125,NULL,0,NULL),(126,12,'-1','use_ref_list','false',0,126,NULL,0,NULL),(127,12,'','anonymizable','false',0,127,NULL,0,NULL),(128,12,'-1','use_ref_list','false',0,128,NULL,0,NULL),(129,12,'','anonymizable','false',0,129,NULL,0,NULL),(130,12,NULL,'used_in_correct_form_response','false',0,130,NULL,0,NULL),(131,12,NULL,'used_in_complete_form_response','false',0,131,NULL,0,NULL),(132,12,NULL,'exportable','true',0,132,NULL,0,NULL),(133,12,NULL,'text_config','',0,133,NULL,0,NULL),(134,12,NULL,'width','0',0,134,NULL,0,NULL),(135,12,NULL,'max_size','-1',0,135,NULL,0,NULL),(136,12,NULL,'confirm_field','false',0,136,NULL,0,NULL),(137,12,NULL,'exportable_pdf','true',0,137,NULL,0,NULL),(138,13,'-1','use_ref_list','false',0,138,NULL,0,NULL),(139,13,'','anonymizable','false',0,139,NULL,0,NULL),(140,13,'-1','use_ref_list','false',0,140,NULL,0,NULL),(141,13,'','anonymizable','false',0,141,NULL,0,NULL),(142,13,NULL,'used_in_correct_form_response','false',0,142,NULL,0,NULL),(143,13,NULL,'used_in_complete_form_response','false',0,143,NULL,0,NULL),(144,13,NULL,'exportable','true',0,144,NULL,0,NULL),(145,13,NULL,'text_config','',0,145,NULL,0,NULL),(146,13,NULL,'width','0',0,146,NULL,0,NULL),(147,13,NULL,'max_size','-1',0,147,NULL,0,NULL),(148,13,NULL,'confirm_field','false',0,148,NULL,0,NULL),(149,13,NULL,'exportable_pdf','true',0,149,NULL,0,NULL),(150,14,'-1','use_ref_list','false',0,150,NULL,0,NULL),(151,14,'','anonymizable','false',0,151,NULL,0,NULL),(152,14,'-1','use_ref_list','false',0,152,NULL,0,NULL),(153,14,'','anonymizable','false',0,153,NULL,0,NULL),(154,14,NULL,'used_in_correct_form_response','false',0,154,NULL,0,NULL),(155,14,NULL,'used_in_complete_form_response','false',0,155,NULL,0,NULL),(156,14,NULL,'exportable','true',0,156,NULL,0,NULL),(157,14,NULL,'text_config','',0,157,NULL,0,NULL),(158,14,NULL,'width','0',0,158,NULL,0,NULL),(159,14,NULL,'max_size','-1',0,159,NULL,0,NULL),(160,14,NULL,'confirm_field','false',0,160,NULL,0,NULL),(161,14,NULL,'exportable_pdf','true',0,161,NULL,0,NULL),(162,15,'-1','use_ref_list','false',0,162,NULL,0,NULL),(163,15,'','anonymizable','false',0,163,NULL,0,NULL),(164,15,'-1','use_ref_list','false',0,164,NULL,0,NULL),(165,15,'','anonymizable','false',0,165,NULL,0,NULL),(166,15,NULL,'used_in_correct_form_response','false',0,166,NULL,0,NULL),(167,15,NULL,'used_in_complete_form_response','false',0,167,NULL,0,NULL),(168,15,NULL,'exportable','true',0,168,NULL,0,NULL),(169,15,NULL,'text_config','',0,169,NULL,0,NULL),(170,15,NULL,'width','0',0,170,NULL,0,NULL),(171,15,NULL,'max_size','-1',0,171,NULL,0,NULL),(172,15,NULL,'confirm_field','false',0,172,NULL,0,NULL),(173,15,NULL,'exportable_pdf','true',0,173,NULL,0,NULL),(174,16,'-1','use_ref_list','false',0,174,NULL,0,NULL),(175,16,'','anonymizable','false',0,175,NULL,0,NULL),(176,16,'-1','use_ref_list','false',0,176,NULL,0,NULL),(177,16,'','anonymizable','false',0,177,NULL,0,NULL),(178,16,NULL,'used_in_correct_form_response','false',0,178,NULL,0,NULL),(179,16,NULL,'used_in_complete_form_response','false',0,179,NULL,0,NULL),(180,16,NULL,'exportable','true',0,180,NULL,0,NULL),(181,16,NULL,'text_config','',0,181,NULL,0,NULL),(182,16,NULL,'width','0',0,182,NULL,0,NULL),(183,16,NULL,'max_size','-1',0,183,NULL,0,NULL),(184,16,NULL,'confirm_field','false',0,184,NULL,0,NULL),(185,16,NULL,'exportable_pdf','true',0,185,NULL,0,NULL),(186,17,'-1','use_ref_list','false',0,186,NULL,0,NULL),(187,17,'','anonymizable','false',0,187,NULL,0,NULL),(188,17,'-1','use_ref_list','false',0,188,NULL,0,NULL),(189,17,'','anonymizable','false',0,189,NULL,0,NULL),(190,17,NULL,'used_in_correct_form_response','false',0,190,NULL,0,NULL),(191,17,NULL,'used_in_complete_form_response','false',0,191,NULL,0,NULL),(192,17,NULL,'exportable','true',0,192,NULL,0,NULL),(193,17,NULL,'text_config','',0,193,NULL,0,NULL),(194,17,NULL,'width','0',0,194,NULL,0,NULL),(195,17,NULL,'max_size','-1',0,195,NULL,0,NULL),(196,17,NULL,'confirm_field','false',0,196,NULL,0,NULL),(197,17,NULL,'exportable_pdf','true',0,197,NULL,0,NULL),(198,18,'-1','use_ref_list','false',0,198,NULL,0,NULL),(199,18,'','anonymizable','false',0,199,NULL,0,NULL),(200,18,'-1','use_ref_list','false',0,200,NULL,0,NULL),(201,18,'','anonymizable','false',0,201,NULL,0,NULL),(202,18,NULL,'used_in_correct_form_response','false',0,202,NULL,0,NULL),(203,18,NULL,'used_in_complete_form_response','false',0,203,NULL,0,NULL),(204,18,NULL,'exportable','true',0,204,NULL,0,NULL),(205,18,NULL,'text_config','',0,205,NULL,0,NULL),(206,18,NULL,'width','0',0,206,NULL,0,NULL),(207,18,NULL,'max_size','-1',0,207,NULL,0,NULL),(208,18,NULL,'confirm_field','false',0,208,NULL,0,NULL),(209,18,NULL,'exportable_pdf','true',0,209,NULL,0,NULL),(210,19,'-1','use_ref_list','false',0,210,NULL,0,NULL),(211,19,'','anonymizable','false',0,211,NULL,0,NULL),(212,19,'-1','use_ref_list','false',0,212,NULL,0,NULL),(213,19,'','anonymizable','false',0,213,NULL,0,NULL),(214,19,NULL,'used_in_correct_form_response','false',0,214,NULL,0,NULL),(215,19,NULL,'used_in_complete_form_response','false',0,215,NULL,0,NULL),(216,19,NULL,'exportable','true',0,216,NULL,0,NULL),(217,19,NULL,'attribute_name','user.home-info.online.email',0,217,NULL,0,NULL),(218,19,NULL,'exportable_pdf','true',0,218,NULL,0,NULL),(219,20,'-1','use_ref_list','false',0,219,NULL,0,NULL),(220,20,'','anonymizable','false',0,220,NULL,0,NULL),(221,20,'-1','use_ref_list','false',0,221,NULL,0,NULL),(222,20,'','anonymizable','false',0,222,NULL,0,NULL),(223,20,NULL,'used_in_correct_form_response','false',0,223,NULL,0,NULL),(224,20,NULL,'used_in_complete_form_response','false',0,224,NULL,0,NULL),(225,20,NULL,'exportable','true',0,225,NULL,0,NULL),(226,20,NULL,'text_config','',0,226,NULL,0,NULL),(227,20,NULL,'width','0',0,227,NULL,0,NULL),(228,20,NULL,'max_size','-1',0,228,NULL,0,NULL),(229,20,NULL,'confirm_field','false',0,229,NULL,0,NULL),(230,20,NULL,'exportable_pdf','true',0,230,NULL,0,NULL),(231,21,'-1','use_ref_list','false',0,231,NULL,0,NULL),(232,21,'','anonymizable','false',0,232,NULL,0,NULL),(233,21,'-1','use_ref_list','false',0,233,NULL,0,NULL),(234,21,'','anonymizable','false',0,234,NULL,0,NULL),(235,21,NULL,'used_in_correct_form_response','false',0,235,NULL,0,NULL),(236,21,NULL,'used_in_complete_form_response','false',0,236,NULL,0,NULL),(237,21,NULL,'exportable','true',0,237,NULL,0,NULL),(238,21,NULL,'text_config','',0,238,NULL,0,NULL),(239,21,NULL,'width','0',0,239,NULL,0,NULL),(240,21,NULL,'max_size','-1',0,240,NULL,0,NULL),(241,21,NULL,'confirm_field','false',0,241,NULL,0,NULL),(242,21,NULL,'exportable_pdf','true',0,242,NULL,0,NULL),(243,22,'-1','use_ref_list','false',0,243,NULL,0,NULL),(244,22,'','anonymizable','false',0,244,NULL,0,NULL),(245,22,'-1','use_ref_list','false',0,245,NULL,0,NULL),(246,22,'','anonymizable','false',0,246,NULL,0,NULL),(247,22,NULL,'used_in_correct_form_response','false',0,247,NULL,0,NULL),(248,22,NULL,'used_in_complete_form_response','false',0,248,NULL,0,NULL),(249,22,NULL,'exportable','true',0,249,NULL,0,NULL),(250,22,NULL,'text_config','',0,250,NULL,0,NULL),(251,22,NULL,'width','0',0,251,NULL,0,NULL),(252,22,NULL,'max_size','-1',0,252,NULL,0,NULL),(253,22,NULL,'confirm_field','false',0,253,NULL,0,NULL),(254,22,NULL,'exportable_pdf','true',0,254,NULL,0,NULL),(255,23,'-1','use_ref_list','false',0,255,NULL,0,NULL),(256,23,'','anonymizable','false',0,256,NULL,0,NULL),(257,23,'-1','use_ref_list','false',0,257,NULL,0,NULL),(258,23,'','anonymizable','false',0,258,NULL,0,NULL),(259,23,NULL,'used_in_correct_form_response','false',0,259,NULL,0,NULL),(260,23,NULL,'used_in_complete_form_response','false',0,260,NULL,0,NULL),(261,23,NULL,'exportable','true',0,261,NULL,0,NULL),(262,23,NULL,'text_config','',0,262,NULL,0,NULL),(263,23,NULL,'width','0',0,263,NULL,0,NULL),(264,23,NULL,'max_size','-1',0,264,NULL,0,NULL),(265,23,NULL,'confirm_field','false',0,265,NULL,0,NULL),(266,23,NULL,'exportable_pdf','true',0,266,NULL,0,NULL),(267,24,'-1','use_ref_list','false',0,267,NULL,0,NULL),(268,24,'','anonymizable','false',0,268,NULL,0,NULL),(269,24,'-1','use_ref_list','false',0,269,NULL,0,NULL),(270,24,'','anonymizable','false',0,270,NULL,0,NULL),(271,24,NULL,'used_in_correct_form_response','false',0,271,NULL,0,NULL),(272,24,NULL,'used_in_complete_form_response','false',0,272,NULL,0,NULL),(273,24,NULL,'exportable','true',0,273,NULL,0,NULL),(274,24,NULL,'text_config','',0,274,NULL,0,NULL),(275,24,NULL,'width','0',0,275,NULL,0,NULL),(276,24,NULL,'max_size','-1',0,276,NULL,0,NULL),(277,24,NULL,'confirm_field','false',0,277,NULL,0,NULL),(278,24,NULL,'exportable_pdf','true',0,278,NULL,0,NULL),(279,25,'-1','use_ref_list','false',0,279,NULL,0,NULL),(280,25,'','anonymizable','false',0,280,NULL,0,NULL),(281,25,'-1','use_ref_list','false',0,281,NULL,0,NULL),(282,25,'','anonymizable','false',0,282,NULL,0,NULL),(283,25,NULL,'used_in_correct_form_response','false',0,283,NULL,0,NULL),(284,25,NULL,'used_in_complete_form_response','false',0,284,NULL,0,NULL),(285,25,NULL,'exportable','true',0,285,NULL,0,NULL),(286,25,NULL,'text_config','',0,286,NULL,0,NULL),(287,25,NULL,'width','0',0,287,NULL,0,NULL),(288,25,NULL,'max_size','-1',0,288,NULL,0,NULL),(289,25,NULL,'confirm_field','false',0,289,NULL,0,NULL),(290,25,NULL,'exportable_pdf','true',0,290,NULL,0,NULL),(291,26,'-1','use_ref_list','false',0,291,NULL,0,NULL),(292,26,'','anonymizable','false',0,292,NULL,0,NULL),(293,26,'-1','use_ref_list','false',0,293,NULL,0,NULL),(294,26,'','anonymizable','false',0,294,NULL,0,NULL),(295,26,NULL,'used_in_correct_form_response','false',0,295,NULL,0,NULL),(296,26,NULL,'used_in_complete_form_response','true',0,296,NULL,0,NULL),(297,26,NULL,'exportable','true',0,297,NULL,0,NULL),(298,26,NULL,'file_max_size','2097152',0,298,NULL,0,NULL),(299,26,NULL,'max_files','1',0,299,NULL,0,NULL),(300,26,NULL,'export_binary','false',0,300,NULL,0,NULL),(301,27,'-1','anonymizable','false',0,301,NULL,0,NULL),(302,27,'-1','use_ref_list','false',0,302,NULL,0,NULL),(303,27,'','anonymizable','false',0,303,NULL,0,NULL),(304,27,'-1','use_ref_list','false',0,304,NULL,0,NULL),(305,27,'','anonymizable','false',0,305,NULL,0,NULL),(306,27,NULL,'used_in_correct_form_response','false',0,306,NULL,0,NULL),(307,27,NULL,'used_in_complete_form_response','false',0,307,NULL,0,NULL),(308,27,NULL,'exportable','true',0,308,NULL,0,NULL),(309,27,'Association','answer_choice','Association',0,309,NULL,0,''),(310,27,'sociÃ©tÃ©','answer_choice','societe',0,310,NULL,0,''),(311,27,'Personne physique','answer_choice','personne_physique',0,311,NULL,0,''),(312,28,'-1','use_ref_list','false',0,312,NULL,0,NULL),(313,28,'','anonymizable','false',0,313,NULL,0,NULL),(314,28,'-1','use_ref_list','false',0,314,NULL,0,NULL),(315,28,'','anonymizable','false',0,315,NULL,0,NULL),(316,28,NULL,'used_in_correct_form_response','false',0,316,NULL,0,NULL),(317,28,NULL,'used_in_complete_form_response','false',0,317,NULL,0,NULL),(318,28,NULL,'exportable','true',0,318,NULL,0,NULL),(319,28,NULL,'text_config','',0,319,NULL,0,NULL),(320,28,NULL,'width','0',0,320,NULL,0,NULL),(321,28,NULL,'max_size','-1',0,321,NULL,0,NULL),(322,28,NULL,'confirm_field','false',0,322,NULL,0,NULL),(323,29,'-1','use_ref_list','false',0,323,NULL,0,NULL),(324,29,'','anonymizable','false',0,324,NULL,0,NULL),(325,29,'-1','use_ref_list','false',0,325,NULL,0,NULL),(326,29,'','anonymizable','false',0,326,NULL,0,NULL),(327,29,NULL,'used_in_correct_form_response','false',0,327,NULL,0,NULL),(328,29,NULL,'used_in_complete_form_response','false',0,328,NULL,0,NULL),(329,29,NULL,'exportable','true',0,329,NULL,0,NULL),(330,29,NULL,'text_config','',0,330,NULL,0,NULL),(331,29,NULL,'width','0',0,331,NULL,0,NULL),(332,29,NULL,'max_size','-1',0,332,NULL,0,NULL),(333,29,NULL,'confirm_field','false',0,333,NULL,0,NULL),(334,30,'-1','use_ref_list','false',0,334,NULL,0,NULL),(335,30,'','anonymizable','false',0,335,NULL,0,NULL),(336,30,'-1','use_ref_list','false',0,336,NULL,0,NULL),(337,30,'','anonymizable','false',0,337,NULL,0,NULL),(338,30,NULL,'used_in_correct_form_response','false',0,338,NULL,0,NULL),(339,30,NULL,'used_in_complete_form_response','false',0,339,NULL,0,NULL),(340,30,NULL,'exportable','true',0,340,NULL,0,NULL),(341,30,NULL,'text_config','',0,341,NULL,0,NULL),(342,30,NULL,'width','0',0,342,NULL,0,NULL),(343,30,NULL,'max_size','-1',0,343,NULL,0,NULL),(344,30,NULL,'confirm_field','false',0,344,NULL,0,NULL),(345,31,'-1','use_ref_list','false',0,345,NULL,0,NULL),(346,31,'','anonymizable','false',0,346,NULL,0,NULL),(347,31,'-1','use_ref_list','false',0,347,NULL,0,NULL),(348,31,'','anonymizable','false',0,348,NULL,0,NULL),(349,31,NULL,'used_in_correct_form_response','false',0,349,NULL,0,NULL),(350,31,NULL,'used_in_complete_form_response','false',0,350,NULL,0,NULL),(351,31,NULL,'exportable','true',0,351,NULL,0,NULL),(352,31,NULL,'text_config','',0,352,NULL,0,NULL),(353,31,NULL,'width','0',0,353,NULL,0,NULL),(354,31,NULL,'max_size','-1',0,354,NULL,0,NULL),(355,31,NULL,'confirm_field','false',0,355,NULL,0,NULL),(356,32,'-1','anonymizable','false',0,356,NULL,0,NULL),(357,32,'-1','use_ref_list','false',0,357,NULL,0,NULL),(358,32,'','anonymizable','false',0,358,NULL,0,NULL),(359,32,'-1','use_ref_list','false',0,359,NULL,0,NULL),(360,32,'','anonymizable','false',0,360,NULL,0,NULL),(361,32,NULL,'used_in_correct_form_response','false',0,361,NULL,0,NULL),(362,32,NULL,'used_in_complete_form_response','false',0,362,NULL,0,NULL),(363,32,NULL,'exportable','true',0,363,NULL,0,NULL),(364,32,'Madame','answer_choice','Madame',0,364,NULL,0,''),(365,32,'Monsieur','answer_choice','Monsieur',0,365,NULL,0,''),(366,33,'-1','use_ref_list','false',0,366,NULL,0,NULL),(367,33,'','anonymizable','false',0,367,NULL,0,NULL),(368,33,'-1','use_ref_list','false',0,368,NULL,0,NULL),(369,33,'','anonymizable','false',0,369,NULL,0,NULL),(370,33,NULL,'used_in_correct_form_response','false',0,370,NULL,0,NULL),(371,33,NULL,'used_in_complete_form_response','false',0,371,NULL,0,NULL),(372,33,NULL,'exportable','true',0,372,NULL,0,NULL),(373,33,NULL,'text_config','',0,373,NULL,0,NULL),(374,33,NULL,'width','0',0,374,NULL,0,NULL),(375,33,NULL,'max_size','-1',0,375,NULL,0,NULL),(376,33,NULL,'confirm_field','false',0,376,NULL,0,NULL),(377,34,'-1','use_ref_list','false',0,377,NULL,0,NULL),(378,34,'','anonymizable','false',0,378,NULL,0,NULL),(379,34,'-1','use_ref_list','false',0,379,NULL,0,NULL),(380,34,'','anonymizable','false',0,380,NULL,0,NULL),(381,34,NULL,'used_in_correct_form_response','false',0,381,NULL,0,NULL),(382,34,NULL,'used_in_complete_form_response','false',0,382,NULL,0,NULL),(383,34,NULL,'exportable','true',0,383,NULL,0,NULL),(384,34,NULL,'text_config','',0,384,NULL,0,NULL),(385,34,NULL,'width','0',0,385,NULL,0,NULL),(386,34,NULL,'max_size','-1',0,386,NULL,0,NULL),(387,34,NULL,'confirm_field','false',0,387,NULL,0,NULL),(388,35,'-1','use_ref_list','false',0,388,NULL,0,NULL),(389,35,'','anonymizable','false',0,389,NULL,0,NULL),(390,35,'-1','use_ref_list','false',0,390,NULL,0,NULL),(391,35,'','anonymizable','false',0,391,NULL,0,NULL),(392,35,NULL,'used_in_correct_form_response','false',0,392,NULL,0,NULL),(393,35,NULL,'used_in_complete_form_response','false',0,393,NULL,0,NULL),(394,35,NULL,'exportable','true',0,394,NULL,0,NULL),(395,35,NULL,'text_config','',0,395,NULL,0,NULL),(396,35,NULL,'width','0',0,396,NULL,0,NULL),(397,35,NULL,'max_size','-1',0,397,NULL,0,NULL),(398,35,NULL,'confirm_field','false',0,398,NULL,0,NULL),(399,36,'-1','use_ref_list','false',0,399,NULL,0,NULL),(400,36,'','anonymizable','false',0,400,NULL,0,NULL),(401,36,'-1','use_ref_list','false',0,401,NULL,0,NULL),(402,36,'','anonymizable','false',0,402,NULL,0,NULL),(403,36,NULL,'used_in_correct_form_response','false',0,403,NULL,0,NULL),(404,36,NULL,'used_in_complete_form_response','false',0,404,NULL,0,NULL),(405,36,NULL,'exportable','true',0,405,NULL,0,NULL),(406,36,NULL,'text_config','',0,406,NULL,0,NULL),(407,36,NULL,'width','0',0,407,NULL,0,NULL),(408,36,NULL,'max_size','-1',0,408,NULL,0,NULL),(409,36,NULL,'confirm_field','false',0,409,NULL,0,NULL),(410,37,'-1','use_ref_list','false',0,410,NULL,0,NULL),(411,37,'','anonymizable','false',0,411,NULL,0,NULL),(412,37,'-1','use_ref_list','false',0,412,NULL,0,NULL),(413,37,'','anonymizable','false',0,413,NULL,0,NULL),(414,37,NULL,'used_in_correct_form_response','false',0,414,NULL,0,NULL),(415,37,NULL,'used_in_complete_form_response','false',0,415,NULL,0,NULL),(416,37,NULL,'exportable','true',0,416,NULL,0,NULL),(417,37,NULL,'text_config','',0,417,NULL,0,NULL),(418,37,NULL,'width','0',0,418,NULL,0,NULL),(419,37,NULL,'max_size','-1',0,419,NULL,0,NULL),(420,37,NULL,'confirm_field','false',0,420,NULL,0,NULL),(421,38,'-1','use_ref_list','false',0,421,NULL,0,NULL),(422,38,'','anonymizable','false',0,422,NULL,0,NULL),(423,38,'-1','use_ref_list','false',0,423,NULL,0,NULL),(424,38,'','anonymizable','false',0,424,NULL,0,NULL),(425,38,NULL,'used_in_correct_form_response','false',0,425,NULL,0,NULL),(426,38,NULL,'used_in_complete_form_response','false',0,426,NULL,0,NULL),(427,38,NULL,'exportable','true',0,427,NULL,0,NULL),(428,38,NULL,'text_config','',0,428,NULL,0,NULL),(429,38,NULL,'width','0',0,429,NULL,0,NULL),(430,38,NULL,'max_size','-1',0,430,NULL,0,NULL),(431,38,NULL,'confirm_field','false',0,431,NULL,0,NULL),(432,39,'-1','use_ref_list','false',0,432,NULL,0,NULL),(433,39,'','anonymizable','false',0,433,NULL,0,NULL),(434,39,'-1','use_ref_list','false',0,434,NULL,0,NULL),(435,39,'','anonymizable','false',0,435,NULL,0,NULL),(436,39,NULL,'used_in_correct_form_response','false',0,436,NULL,0,NULL),(437,39,NULL,'used_in_complete_form_response','false',0,437,NULL,0,NULL),(438,39,NULL,'exportable','true',0,438,NULL,0,NULL),(439,39,NULL,'attribute_name','user.home-info.online.email',0,439,NULL,0,NULL),(440,40,'-1','use_ref_list','false',0,440,NULL,0,NULL),(441,40,'','anonymizable','false',0,441,NULL,0,NULL),(442,40,'-1','use_ref_list','false',0,442,NULL,0,NULL),(443,40,'','anonymizable','false',0,443,NULL,0,NULL),(444,40,NULL,'used_in_correct_form_response','false',0,444,NULL,0,NULL),(445,40,NULL,'used_in_complete_form_response','false',0,445,NULL,0,NULL),(446,40,NULL,'exportable','false',0,446,NULL,0,NULL),(447,40,NULL,'display_in_bo','false',0,447,NULL,0,NULL),(448,41,'-1','use_ref_list','false',0,448,NULL,0,NULL),(449,41,'','anonymizable','false',0,449,NULL,0,NULL),(450,41,'-1','use_ref_list','false',0,450,NULL,0,NULL),(451,41,'','anonymizable','false',0,451,NULL,0,NULL),(452,41,NULL,'used_in_correct_form_response','false',0,452,NULL,0,NULL),(453,41,NULL,'used_in_complete_form_response','false',0,453,NULL,0,NULL),(454,41,NULL,'exportable','true',0,454,NULL,0,NULL),(455,41,NULL,'text_config','',0,455,NULL,0,NULL),(456,41,NULL,'width','0',0,456,NULL,0,NULL),(457,41,NULL,'max_size','-1',0,457,NULL,0,NULL),(458,41,NULL,'confirm_field','false',0,458,NULL,0,NULL),(459,41,NULL,'exportable_pdf','true',0,459,NULL,0,NULL),(460,42,'-1','use_ref_list','false',0,460,NULL,0,NULL),(461,42,'','anonymizable','false',0,461,NULL,0,NULL),(462,42,'-1','use_ref_list','false',0,462,NULL,0,NULL),(463,42,'','anonymizable','false',0,463,NULL,0,NULL),(464,42,NULL,'used_in_correct_form_response','false',0,464,NULL,0,NULL),(465,42,NULL,'used_in_complete_form_response','false',0,465,NULL,0,NULL),(466,42,NULL,'exportable','true',0,466,NULL,0,NULL),(467,42,NULL,'text_config','',0,467,NULL,0,NULL),(468,42,NULL,'width','0',0,468,NULL,0,NULL),(469,42,NULL,'max_size','-1',0,469,NULL,0,NULL),(470,42,NULL,'confirm_field','false',0,470,NULL,0,NULL),(471,42,NULL,'exportable_pdf','true',0,471,NULL,0,NULL),(472,43,'-1','use_ref_list','false',0,472,NULL,0,NULL),(473,43,'','anonymizable','false',0,473,NULL,0,NULL),(474,43,'-1','use_ref_list','false',0,474,NULL,0,NULL),(475,43,'','anonymizable','false',0,475,NULL,0,NULL),(476,43,NULL,'used_in_correct_form_response','false',0,476,NULL,0,NULL),(477,43,NULL,'used_in_complete_form_response','false',0,477,NULL,0,NULL),(478,43,NULL,'exportable','true',0,478,NULL,0,NULL),(479,43,NULL,'text_config','',0,479,NULL,0,NULL),(480,43,NULL,'width','0',0,480,NULL,0,NULL),(481,43,NULL,'max_size','-1',0,481,NULL,0,NULL),(482,43,NULL,'confirm_field','false',0,482,NULL,0,NULL),(483,43,NULL,'exportable_pdf','true',0,483,NULL,0,NULL),(484,44,'-1','use_ref_list','false',0,484,NULL,0,NULL),(485,44,'','anonymizable','false',0,485,NULL,0,NULL),(486,44,'-1','use_ref_list','false',0,486,NULL,0,NULL),(487,44,'','anonymizable','false',0,487,NULL,0,NULL),(488,44,NULL,'used_in_correct_form_response','false',0,488,NULL,0,NULL),(489,44,NULL,'used_in_complete_form_response','false',0,489,NULL,0,NULL),(490,44,NULL,'exportable','true',0,490,NULL,0,NULL),(491,44,NULL,'text_config','',0,491,NULL,0,NULL),(492,44,NULL,'width','0',0,492,NULL,0,NULL),(493,44,NULL,'max_size','-1',0,493,NULL,0,NULL),(494,44,NULL,'confirm_field','false',0,494,NULL,0,NULL),(495,44,NULL,'exportable_pdf','true',0,495,NULL,0,NULL),(496,45,'-1','use_ref_list','false',0,496,NULL,0,NULL),(497,45,'','anonymizable','false',0,497,NULL,0,NULL),(498,45,'-1','use_ref_list','false',0,498,NULL,0,NULL),(499,45,'','anonymizable','false',0,499,NULL,0,NULL),(500,45,NULL,'used_in_correct_form_response','false',0,500,NULL,0,NULL),(501,45,NULL,'used_in_complete_form_response','false',0,501,NULL,0,NULL),(502,45,NULL,'exportable','true',0,502,NULL,0,NULL),(503,45,NULL,'text_config','',0,503,NULL,0,NULL),(504,45,NULL,'width','0',0,504,NULL,0,NULL),(505,45,NULL,'max_size','-1',0,505,NULL,0,NULL),(506,45,NULL,'confirm_field','false',0,506,NULL,0,NULL),(507,45,NULL,'exportable_pdf','true',0,507,NULL,0,NULL),(508,46,'-1','use_ref_list','false',0,508,NULL,0,NULL),(509,46,'','anonymizable','false',0,509,NULL,0,NULL),(510,46,'-1','use_ref_list','false',0,510,NULL,0,NULL),(511,46,'','anonymizable','false',0,511,NULL,0,NULL),(512,46,NULL,'used_in_correct_form_response','false',0,512,NULL,0,NULL),(513,46,NULL,'used_in_complete_form_response','false',0,513,NULL,0,NULL),(514,46,NULL,'exportable','true',0,514,NULL,0,NULL),(515,46,NULL,'text_config','',0,515,NULL,0,NULL),(516,46,NULL,'width','0',0,516,NULL,0,NULL),(517,46,NULL,'max_size','-1',0,517,NULL,0,NULL),(518,46,NULL,'confirm_field','false',0,518,NULL,0,NULL),(519,46,NULL,'exportable_pdf','true',0,519,NULL,0,NULL),(520,47,'-1','use_ref_list','false',0,520,NULL,0,NULL),(521,47,'','anonymizable','false',0,521,NULL,0,NULL),(522,47,'-1','use_ref_list','false',0,522,NULL,0,NULL),(523,47,'','anonymizable','false',0,523,NULL,0,NULL),(524,47,NULL,'used_in_correct_form_response','false',0,524,NULL,0,NULL),(525,47,NULL,'used_in_complete_form_response','false',0,525,NULL,0,NULL),(526,47,NULL,'exportable','true',0,526,NULL,0,NULL),(527,47,NULL,'text_config','',0,527,NULL,0,NULL),(528,47,NULL,'width','0',0,528,NULL,0,NULL),(529,47,NULL,'max_size','-1',0,529,NULL,0,NULL),(530,47,NULL,'confirm_field','false',0,530,NULL,0,NULL),(531,47,NULL,'exportable_pdf','true',0,531,NULL,0,NULL),(532,48,'-1','use_ref_list','false',0,532,NULL,0,NULL),(533,48,'','anonymizable','false',0,533,NULL,0,NULL),(534,48,'-1','use_ref_list','false',0,534,NULL,0,NULL),(535,48,'','anonymizable','false',0,535,NULL,0,NULL),(536,48,NULL,'used_in_correct_form_response','false',0,536,NULL,0,NULL),(537,48,NULL,'used_in_complete_form_response','false',0,537,NULL,0,NULL),(538,48,NULL,'exportable','true',0,538,NULL,0,NULL),(539,48,NULL,'attribute_name','user.home-info.online.email',0,539,NULL,0,NULL),(540,48,NULL,'exportable_pdf','true',0,540,NULL,0,NULL),(541,49,'-1','use_ref_list','false',0,541,NULL,0,NULL),(542,49,'','anonymizable','false',0,542,NULL,0,NULL),(543,49,'-1','use_ref_list','false',0,543,NULL,0,NULL),(544,49,'','anonymizable','false',0,544,NULL,0,NULL),(545,49,NULL,'used_in_correct_form_response','false',0,545,NULL,0,NULL),(546,49,NULL,'used_in_complete_form_response','false',0,546,NULL,0,NULL),(547,49,NULL,'exportable','true',0,547,NULL,0,NULL),(548,49,NULL,'text_config','',0,548,NULL,0,NULL),(549,49,NULL,'width','0',0,549,NULL,0,NULL),(550,49,NULL,'max_size','-1',0,550,NULL,0,NULL),(551,49,NULL,'confirm_field','false',0,551,NULL,0,NULL),(552,49,NULL,'exportable_pdf','true',0,552,NULL,0,NULL),(553,50,'-1','use_ref_list','false',0,553,NULL,0,NULL),(554,50,'','anonymizable','false',0,554,NULL,0,NULL),(555,50,'-1','use_ref_list','false',0,555,NULL,0,NULL),(556,50,'','anonymizable','false',0,556,NULL,0,NULL),(557,50,NULL,'used_in_correct_form_response','false',0,557,NULL,0,NULL),(558,50,NULL,'used_in_complete_form_response','false',0,558,NULL,0,NULL),(559,50,NULL,'exportable','true',0,559,NULL,0,NULL),(560,50,NULL,'default_date_value',NULL,0,560,NULL,0,NULL),(561,50,NULL,'exportable_pdf','true',0,561,NULL,0,NULL),(562,51,'-1','use_ref_list','false',0,562,NULL,0,NULL),(563,51,'','anonymizable','false',0,563,NULL,0,NULL),(564,51,'-1','use_ref_list','false',0,564,NULL,0,NULL),(565,51,'','anonymizable','false',0,565,NULL,0,NULL),(566,51,NULL,'used_in_correct_form_response','false',0,566,NULL,0,NULL),(567,51,NULL,'used_in_complete_form_response','false',0,567,NULL,0,NULL),(568,51,NULL,'exportable','false',0,568,NULL,0,NULL),(569,51,NULL,'display_in_bo','false',0,569,NULL,0,NULL),(570,52,'-1','anonymizable','false',0,570,NULL,0,NULL),(571,52,'-1','use_ref_list','false',0,571,NULL,0,NULL),(572,52,'','anonymizable','false',0,572,NULL,0,NULL),(573,52,'-1','use_ref_list','false',0,573,NULL,0,NULL),(574,52,'','anonymizable','false',0,574,NULL,0,NULL),(575,52,NULL,'used_in_correct_form_response','false',0,575,NULL,0,NULL),(576,52,NULL,'used_in_complete_form_response','false',0,576,NULL,0,NULL),(577,52,NULL,'exportable','true',0,577,NULL,0,NULL),(578,52,'Madame','answer_choice','Madame',0,578,NULL,0,''),(579,52,'Monsieur','answer_choice','Monsieur',0,579,NULL,0,''),(580,53,'-1','use_ref_list','false',0,580,NULL,0,NULL),(581,53,'','anonymizable','false',0,581,NULL,0,NULL),(582,53,'-1','use_ref_list','false',0,582,NULL,0,NULL),(583,53,'','anonymizable','false',0,583,NULL,0,NULL),(584,53,NULL,'used_in_correct_form_response','false',0,584,NULL,0,NULL),(585,53,NULL,'used_in_complete_form_response','false',0,585,NULL,0,NULL),(586,53,NULL,'exportable','true',0,586,NULL,0,NULL),(587,53,NULL,'text_config','',0,587,NULL,0,NULL),(588,53,NULL,'width','0',0,588,NULL,0,NULL),(589,53,NULL,'max_size','-1',0,589,NULL,0,NULL),(590,53,NULL,'confirm_field','false',0,590,NULL,0,NULL),(591,53,NULL,'exportable_pdf','true',0,591,NULL,0,NULL),(592,54,'-1','use_ref_list','false',0,592,NULL,0,NULL),(593,54,'','anonymizable','false',0,593,NULL,0,NULL),(594,54,'-1','use_ref_list','false',0,594,NULL,0,NULL),(595,54,'','anonymizable','false',0,595,NULL,0,NULL),(596,54,NULL,'used_in_correct_form_response','false',0,596,NULL,0,NULL),(597,54,NULL,'used_in_complete_form_response','false',0,597,NULL,0,NULL),(598,54,NULL,'exportable','true',0,598,NULL,0,NULL),(599,54,NULL,'text_config','',0,599,NULL,0,NULL),(600,54,NULL,'width','0',0,600,NULL,0,NULL),(601,54,NULL,'max_size','-1',0,601,NULL,0,NULL),(602,54,NULL,'confirm_field','false',0,602,NULL,0,NULL),(603,54,NULL,'exportable_pdf','true',0,603,NULL,0,NULL),(604,55,'-1','use_ref_list','false',0,604,NULL,0,NULL),(605,55,'','anonymizable','false',0,605,NULL,0,NULL),(606,55,'-1','use_ref_list','false',0,606,NULL,0,NULL),(607,55,'','anonymizable','false',0,607,NULL,0,NULL),(608,55,NULL,'used_in_correct_form_response','false',0,608,NULL,0,NULL),(609,55,NULL,'used_in_complete_form_response','false',0,609,NULL,0,NULL),(610,55,NULL,'exportable','true',0,610,NULL,0,NULL),(611,55,NULL,'default_date_value',NULL,0,611,NULL,0,NULL),(612,55,NULL,'exportable_pdf','true',0,612,NULL,0,NULL),(613,56,'-1','use_ref_list','false',0,613,NULL,0,NULL),(614,56,'','anonymizable','false',0,614,NULL,0,NULL),(615,56,'-1','use_ref_list','false',0,615,NULL,0,NULL),(616,56,'','anonymizable','false',0,616,NULL,0,NULL),(617,56,NULL,'used_in_correct_form_response','false',0,617,NULL,0,NULL),(618,56,NULL,'used_in_complete_form_response','false',0,618,NULL,0,NULL),(619,56,NULL,'exportable','true',0,619,NULL,0,NULL),(620,56,NULL,'text_config','',0,620,NULL,0,NULL),(621,56,NULL,'width','0',0,621,NULL,0,NULL),(622,56,NULL,'max_size','-1',0,622,NULL,0,NULL),(623,56,NULL,'confirm_field','false',0,623,NULL,0,NULL),(624,56,NULL,'exportable_pdf','true',0,624,NULL,0,NULL),(625,57,'-1','use_ref_list','false',0,625,NULL,0,NULL),(626,57,'','anonymizable','false',0,626,NULL,0,NULL),(627,57,'-1','use_ref_list','false',0,627,NULL,0,NULL),(628,57,'','anonymizable','false',0,628,NULL,0,NULL),(629,57,NULL,'used_in_correct_form_response','false',0,629,NULL,0,NULL),(630,57,NULL,'used_in_complete_form_response','false',0,630,NULL,0,NULL),(631,57,NULL,'exportable','true',0,631,NULL,0,NULL),(632,57,NULL,'text_config','',0,632,NULL,0,NULL),(633,57,NULL,'width','0',0,633,NULL,0,NULL),(634,57,NULL,'max_size','-1',0,634,NULL,0,NULL),(635,57,NULL,'confirm_field','false',0,635,NULL,0,NULL),(636,57,NULL,'exportable_pdf','true',0,636,NULL,0,NULL),(637,58,'-1','use_ref_list','false',0,637,NULL,0,NULL),(638,58,'','anonymizable','false',0,638,NULL,0,NULL),(639,58,'-1','use_ref_list','false',0,639,NULL,0,NULL),(640,58,'','anonymizable','false',0,640,NULL,0,NULL),(641,58,NULL,'used_in_correct_form_response','false',0,641,NULL,0,NULL),(642,58,NULL,'used_in_complete_form_response','false',0,642,NULL,0,NULL),(643,58,NULL,'exportable','true',0,643,NULL,0,NULL),(644,58,NULL,'text_config','',0,644,NULL,0,NULL),(645,58,NULL,'width','0',0,645,NULL,0,NULL),(646,58,NULL,'max_size','-1',0,646,NULL,0,NULL),(647,58,NULL,'confirm_field','false',0,647,NULL,0,NULL),(648,58,NULL,'exportable_pdf','true',0,648,NULL,0,NULL),(649,59,'-1','use_ref_list','false',0,649,NULL,0,NULL),(650,59,'','anonymizable','false',0,650,NULL,0,NULL),(651,59,'-1','use_ref_list','false',0,651,NULL,0,NULL),(652,59,'','anonymizable','false',0,652,NULL,0,NULL),(653,59,NULL,'used_in_correct_form_response','false',0,653,NULL,0,NULL),(654,59,NULL,'used_in_complete_form_response','false',0,654,NULL,0,NULL),(655,59,NULL,'exportable','true',0,655,NULL,0,NULL),(656,59,NULL,'text_config','',0,656,NULL,0,NULL),(657,59,NULL,'width','0',0,657,NULL,0,NULL),(658,59,NULL,'max_size','-1',0,658,NULL,0,NULL),(659,59,NULL,'confirm_field','false',0,659,NULL,0,NULL),(660,59,NULL,'exportable_pdf','true',0,660,NULL,0,NULL),(661,60,'-1','use_ref_list','false',0,661,NULL,0,NULL),(662,60,'','anonymizable','false',0,662,NULL,0,NULL),(663,60,'-1','use_ref_list','false',0,663,NULL,0,NULL),(664,60,'','anonymizable','false',0,664,NULL,0,NULL),(665,60,NULL,'used_in_correct_form_response','false',0,665,NULL,0,NULL),(666,60,NULL,'used_in_complete_form_response','false',0,666,NULL,0,NULL),(667,60,NULL,'exportable','true',0,667,NULL,0,NULL),(668,60,NULL,'text_config','',0,668,NULL,0,NULL),(669,60,NULL,'width','0',0,669,NULL,0,NULL),(670,60,NULL,'max_size','-1',0,670,NULL,0,NULL),(671,60,NULL,'confirm_field','false',0,671,NULL,0,NULL),(672,60,NULL,'exportable_pdf','true',0,672,NULL,0,NULL),(673,61,'-1','use_ref_list','false',0,673,NULL,0,NULL),(674,61,'','anonymizable','false',0,674,NULL,0,NULL),(675,61,'-1','use_ref_list','false',0,675,NULL,0,NULL),(676,61,'','anonymizable','false',0,676,NULL,0,NULL),(677,61,NULL,'used_in_correct_form_response','false',0,677,NULL,0,NULL),(678,61,NULL,'used_in_complete_form_response','false',0,678,NULL,0,NULL),(679,61,NULL,'exportable','true',0,679,NULL,0,NULL),(680,61,NULL,'text_config','',0,680,NULL,0,NULL),(681,61,NULL,'width','0',0,681,NULL,0,NULL),(682,61,NULL,'max_size','-1',0,682,NULL,0,NULL),(683,61,NULL,'confirm_field','false',0,683,NULL,0,NULL),(684,61,NULL,'exportable_pdf','true',0,684,NULL,0,NULL),(685,62,'-1','use_ref_list','false',0,685,NULL,0,NULL),(686,62,'','anonymizable','false',0,686,NULL,0,NULL),(687,62,'-1','use_ref_list','false',0,687,NULL,0,NULL),(688,62,'','anonymizable','false',0,688,NULL,0,NULL),(689,62,NULL,'used_in_correct_form_response','false',0,689,NULL,0,NULL),(690,62,NULL,'used_in_complete_form_response','false',0,690,NULL,0,NULL),(691,62,NULL,'exportable','true',0,691,NULL,0,NULL),(692,62,NULL,'attribute_name','user.home-info.online.email',0,692,NULL,0,NULL),(693,62,NULL,'exportable_pdf','true',0,693,NULL,0,NULL),(694,63,'-1','use_ref_list','false',0,694,NULL,0,NULL),(695,63,'','anonymizable','false',0,695,NULL,0,NULL),(696,63,'-1','use_ref_list','false',0,696,NULL,0,NULL),(697,63,'','anonymizable','false',0,697,NULL,0,NULL),(698,63,NULL,'used_in_correct_form_response','false',0,698,NULL,0,NULL),(699,63,NULL,'used_in_complete_form_response','false',0,699,NULL,0,NULL),(700,63,NULL,'exportable','true',0,700,NULL,0,NULL),(701,63,NULL,'text_config','',0,701,NULL,0,NULL),(702,63,NULL,'width','0',0,702,NULL,0,NULL),(703,63,NULL,'max_size','-1',0,703,NULL,0,NULL),(704,63,NULL,'confirm_field','false',0,704,NULL,0,NULL),(705,63,NULL,'exportable_pdf','true',0,705,NULL,0,NULL),(706,64,'-1','use_ref_list','false',0,706,NULL,0,NULL),(707,64,'','anonymizable','false',0,707,NULL,0,NULL),(708,64,'-1','use_ref_list','false',0,708,NULL,0,NULL),(709,64,'','anonymizable','false',0,709,NULL,0,NULL),(710,64,NULL,'used_in_correct_form_response','false',0,710,NULL,0,NULL),(711,64,NULL,'used_in_complete_form_response','false',0,711,NULL,0,NULL),(712,64,NULL,'exportable','true',0,712,NULL,0,NULL),(713,64,NULL,'text_config','',0,713,NULL,0,NULL),(714,64,NULL,'max_size','500',0,714,NULL,0,NULL),(715,64,NULL,'width','0',0,715,NULL,0,NULL),(716,64,NULL,'height','5',0,716,NULL,0,NULL),(717,64,NULL,'richtext','false',0,717,NULL,0,NULL),(718,64,NULL,'exportable_pdf','true',0,718,NULL,0,NULL),(719,65,'-1','use_ref_list','false',0,719,NULL,0,NULL),(720,65,'','anonymizable','false',0,720,NULL,0,NULL),(721,65,'-1','use_ref_list','false',0,721,NULL,0,NULL),(722,65,'','anonymizable','false',0,722,NULL,0,NULL),(723,65,NULL,'used_in_correct_form_response','false',0,723,NULL,0,NULL),(724,65,NULL,'used_in_complete_form_response','false',0,724,NULL,0,NULL),(725,65,NULL,'exportable','false',0,725,NULL,0,NULL),(726,65,NULL,'text_config','-1- \r\n-2- \r\n-3- \r\n-4- \r\n-5- ',0,726,NULL,0,NULL),(727,65,NULL,'max_size','500',0,727,NULL,0,NULL),(728,65,NULL,'width','0',0,728,NULL,0,NULL),(729,65,NULL,'height','5',0,729,NULL,0,NULL),(730,65,NULL,'richtext','false',0,730,NULL,0,NULL),(731,65,NULL,'exportable_pdf','true',0,731,NULL,0,NULL),(732,66,'-1','anonymizable','false',0,732,NULL,0,NULL),(733,66,'-1','use_ref_list','false',0,733,NULL,0,NULL),(734,66,'','anonymizable','false',0,734,NULL,0,NULL),(735,66,'-1','use_ref_list','false',0,735,NULL,0,NULL),(736,66,'','anonymizable','false',0,736,NULL,0,NULL),(737,66,NULL,'used_in_correct_form_response','false',0,737,NULL,0,NULL),(738,66,NULL,'used_in_complete_form_response','false',0,738,NULL,0,NULL),(739,66,NULL,'exportable','true',0,739,NULL,0,NULL),(740,66,'Sciences humaines et sociales','answer_choice','Sciences_humaines_sociales',0,740,NULL,0,''),(741,66,'Sciences exactes ','answer_choice','Sciences_exactes',0,741,NULL,0,''),(742,66,'Biologie et MÃ©decine','answer_choice','Biologie_medecine',0,742,NULL,0,''),(743,66,NULL,'exportable_pdf','true',0,743,NULL,0,NULL);
/*!40000 ALTER TABLE `template_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_group`
--

DROP TABLE IF EXISTS `template_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_group` (
  `id_group` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(512) DEFAULT '',
  `id_template` int(11) DEFAULT 0,
  `iteration_min` int(11) DEFAULT 1,
  `iteration_max` int(11) DEFAULT 1,
  `iteration_add_label` varchar(255) DEFAULT '',
  `iteration_remove_label` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_group`
--

LOCK TABLES `template_group` WRITE;
/*!40000 ALTER TABLE `template_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_question`
--

DROP TABLE IF EXISTS `template_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_question` (
  `id_question` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `id_entry` int(11) DEFAULT 0,
  `id_template` int(11) DEFAULT 0,
  `is_visible_multiview_global` smallint(6) NOT NULL DEFAULT 0,
  `is_visible_multiview_form_selected` smallint(6) NOT NULL DEFAULT 0,
  `multiview_column_order` int(11) NOT NULL DEFAULT 0,
  `column_title` varchar(255) NOT NULL DEFAULT '',
  `is_filterable_multiview_global` smallint(6) NOT NULL DEFAULT 0,
  `is_filterable_multiview_form_selected` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_question`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_question`
--

LOCK TABLES `template_question` WRITE;
/*!40000 ALTER TABLE `template_question` DISABLE KEYS */;
INSERT INTO `template_question` VALUES (1,'Secteur d\'activitÃ©','question_111','',1,1,0,1,0,'Secteur d\'activitÃ© ',0,0),(2,'Date de crÃ©ation de l\'activitÃ© ','question_112','',2,1,0,0,0,'Date de crÃ©ation de l\'activitÃ© ',0,0),(3,'Effectif de l\'entreprise','question_113','',3,1,0,1,0,'Effectif de l\'entreprise ',0,0),(4,'Nombre de personnes par statut','question_114','',4,1,0,0,0,'Nombre de personnes par statut ',0,0),(5,'Nombre de personnes salariÃ©es','question_115','',5,1,0,0,0,'Nombre de personnes salariÃ©es',0,0),(6,'Nombre de personne en free-lance','question_116','',6,1,0,0,0,'Nombre de personne en free-lance',0,0),(7,'Nombre d\'apprentis','question_117','',7,1,0,0,0,'Nombre d\'apprentis',0,0),(8,'Nombre de stagiaires','question_118','',8,1,0,0,0,'Nombre de stagiaires',0,0),(9,'Chiffre d\'affaires','question_119','',9,1,0,1,0,'Chiffre d\'affaires',0,0),(10,'NumÃ©ro de SIRET','question_100','',10,2,0,0,0,'NumÃ©ro de SIRET ',0,0),(11,'Nom','question_102','',11,2,1,1,0,'Nom',0,0),(12,'PrÃ©nom','question_103','',12,2,1,1,0,'PrÃ©nom',0,0),(13,'Nom de l\'entreprise ou de la marque','question_104','',13,2,0,1,0,'Nom de l\'entreprise ou de la marque ',0,0),(14,'Adresse de rÃ©sidence','question_105','',14,2,0,1,0,'Adresse de rÃ©sidence ',0,0),(15,'Code postal','question_106','',15,2,0,1,0,'Code postal',0,0),(16,'Ville','question_107','',16,2,0,1,0,'Ville',0,0),(17,'TÃ©lÃ©phone fixe','question_108','',17,2,0,1,0,'	TÃ©lÃ©phone fixe ',0,0),(18,'TÃ©lÃ©phone portable','question_109','',18,2,0,1,0,'TÃ©lÃ©phone portable ',0,0),(19,'Courriel','question_110','',19,2,0,0,0,'Courriel',0,0),(20,'Nom','question_44','',20,3,0,0,0,'Nom',0,0),(21,'PrÃ©nom','question_45','',21,3,0,0,0,'PrÃ©nom',0,0),(22,'Fonction','question_46','',22,3,0,0,0,'Fonction',0,0),(23,'Adresse/rue','question_47','',23,3,0,0,0,'Adresse/rue ',0,0),(24,'TÃ©lÃ©phone','question_48','',24,3,0,0,0,'TÃ©lÃ©phone ',0,0),(25,'Email','question_49','',25,3,0,0,0,'Email ',0,0),(26,'RIB de l\'organisme','question_50','',26,3,0,0,0,'RIB de l\'organisme',0,0),(27,'Le demandeur est','question_69','',27,4,0,0,0,'Le demandeur est',0,0),(28,'Nom de la structure','question_70','',28,4,0,0,0,'Nom de la structure',0,0),(29,'numÃ©ro SIRET ou RNA','question_71','',29,4,0,0,0,'numÃ©ro SIRET ou RNA',0,0),(30,'Nom de la structure','question_73','',30,4,0,0,0,'Nom de la structure',0,0),(31,'numÃ©ro SIRET ou RNA','question_75','',31,4,0,0,0,'numÃ©ro SIRET ou RNA',0,0),(32,'CivilitÃ©','question_76','',32,4,0,0,0,'CivilitÃ©',0,0),(33,'Nom','question_77','',33,4,0,0,0,'Nom',0,0),(34,'PrÃ©nom','question_78','',34,4,0,0,0,'PrÃ©nom',0,0),(35,'TÃ©lÃ©phone','question_79','',35,4,0,0,0,'TÃ©lÃ©phone',0,0),(36,'Adresse de la structure ou perso','question_81','',36,4,0,0,0,' Adresse de la structure ou perso',0,0),(37,'Code postal','question_82','',37,4,0,0,0,'Code postal',0,0),(38,'Ville','question_83','',38,4,0,0,0,'Ville',0,0),(39,'Courriel','question_131','',39,4,0,0,0,'Courriel',0,0),(40,'commentaire','question_206','<p>Attention : Les caract&egrave;res &lt; &gt; # &amp; \"\" ne sont pas autoris&eacute;s dans la saisie des contenus.</p>',40,4,0,0,0,'commentaire',0,0),(41,'Nom','question_254','',41,5,0,1,0,'Nom',0,0),(42,'PrÃ©nom','question_255','',42,5,0,1,0,'PrÃ©nom',0,0),(43,'A','question_257','',43,5,0,0,0,'A',0,0),(44,'NationalitÃ©','question_258','',44,5,0,0,0,'NationalitÃ©',0,0),(45,'Adresse','question_259','',45,5,0,0,0,'Adresse',0,0),(46,'Code postal','question_260','',46,5,0,0,0,'Code postal',0,0),(47,'Ville','question_261','',47,5,0,0,0,'Ville',0,0),(48,'Courriel','question_262','',48,5,0,1,0,'Courriel',0,0),(49,'TÃ©lÃ©phone fixe ou portable','question_263','',49,5,0,1,0,'TÃ©lÃ©phone fixe ou portable',0,0),(50,'NÃ©.e','question_270','',50,5,0,0,0,'NÃ©.e',0,0),(51,'commentaire','question_253','<p>L&rsquo;espace CoWaC accueille &eacute;tudiants, entrepreneurs et associations dans les secteurs M&eacute;tiers d&rsquo;art, Mode et Design ou d&eacute;veloppant un projet de soutien &agrave; ces secteurs. Il offre un v&eacute;ritable poste de travail hors de chez soi et des interactions avec d&rsquo;autres professionnels pour enrichir ses comp&eacute;tences, d&eacute;velopper son r&eacute;seau ou partager des ressources. 3 formules du ponctuel au temps complet pour b&eacute;n&eacute;ficier d&rsquo;un des 8 postes de travail en co-working ainsi qu&rsquo;un acc&egrave;s &agrave; des salles de r&eacute;union. Profiter de l&rsquo;espace CoWaC c&rsquo;est &eacute;galement acc&eacute;der &agrave; l&rsquo;offre conseil et accompagnement des Ateliers de Paris.<br />&bull;&nbsp;&nbsp;&nbsp; &frac14; temps (5 jours/mois ou 10 demi-journ&eacute;es/mois) &agrave; 60&euro; le mois.<br /><br />&bull;&nbsp;&nbsp;&nbsp; &frac12; temps (10 jours/mois ou 20 demi-journ&eacute;es/mois) &agrave; 100&euro; le mois<br /><br />&bull;&nbsp;&nbsp;&nbsp; Temps complet (acc&egrave;s illimit&eacute;) &agrave; 160&euro; le mois<br /><br />&bull;&nbsp;&nbsp;&nbsp; Tarif &eacute;tudiant : 8&euro; la journ&eacute;e, 4&euro; la demi-journ&eacute;e<br /><br /><br />Pi&egrave;ce &agrave; joindre au dossier<br />&bull;&nbsp;&nbsp;&nbsp; dossier de candidature <a href=\"https://cdn.paris.fr/paris/2021/02/02/bfcc124133723c6c3cefe25d37d1d4c9.pdf\" target=\"_blank\">(t&eacute;l&eacute;charger)</a><br /><br />Informations :<br />Pour toutes questions compl&eacute;mentaires : Ateliers de Paris, kadija.ouadi@paris.fr , 30 rue du Faubourg Saint Antoine, 75012 Paris. T&eacute;l. : 01 71 18 75 74<br />Vous serez recontact&eacute;s suite &agrave; votre candidature. Si votre dossier est valid&eacute;, votre accueil pourra &ecirc;tre mis en liste d&rsquo;attente si toutes les places sont prises.</p>',51,6,0,0,0,'commentaire',0,0),(52,'CivilitÃ©','question_4','',52,7,0,0,0,'CivilitÃ©',0,0),(53,'Nom','question_5','',53,7,1,1,0,'Nom',0,0),(54,'PrÃ©nom','question_6','',54,7,1,1,0,'PrÃ©nom',0,0),(55,'Date de naissance (JJ/MM/AAAA)','question_7','',55,7,0,0,0,'Date de naissance (JJ/MM/AAAA)',0,0),(56,'NationalitÃ©','question_9','',56,7,0,0,0,'NationalitÃ© ',0,0),(57,'ResponsabilitÃ©s','question_10','',57,7,0,0,0,'ResponsabilitÃ©s ',0,0),(58,'Laboratoire /Organisme','question_11','',58,7,0,0,0,'Laboratoire /Organisme ',0,0),(59,'Adresse/rue','question_12','',59,7,0,0,0,'Adresse/rue',0,0),(60,'Code postal','question_13','',60,7,0,0,0,'Code postal',0,0),(61,'Ville','question_14','',61,7,0,0,0,'Ville ',0,0),(62,'Email','question_15','',62,7,0,1,0,'Email',0,0),(63,'TÃ©lÃ©phone','question_16','',63,7,0,0,0,'TÃ©lÃ©phone',0,0),(64,'Titre du projet (en franÃ§ais et/ou en anglais, max 3 lignes) et son abrÃ©gÃ© (3 ou 4 mots)','question_17','',64,8,0,0,0,'Titre du projet (en franÃ§ais et/ou en anglais, max 3 lignes) et son abrÃ©gÃ© (3 ou 4 mots) ',0,0),(65,'Cinq mots ClÃ©s','question_18','',65,8,0,0,0,'Cinq mots ClÃ©s',0,0),(66,'Champ disciplinaire principal','question_19','',66,8,0,0,0,'Champ disciplinaire principal',0,0);
/*!40000 ALTER TABLE `template_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_referenceitem_field`
--

DROP TABLE IF EXISTS `template_referenceitem_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_referenceitem_field` (
  `id_field` int(11) NOT NULL DEFAULT 0,
  `id_item` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_referenceitem_field`
--

LOCK TABLES `template_referenceitem_field` WRITE;
/*!40000 ALTER TABLE `template_referenceitem_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_referenceitem_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_step`
--

DROP TABLE IF EXISTS `template_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_step` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_step`
--

LOCK TABLES `template_step` WRITE;
/*!40000 ALTER TABLE `template_step` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termofservice_entry`
--

DROP TABLE IF EXISTS `termofservice_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termofservice_entry` (
  `id_entry` int(11) NOT NULL AUTO_INCREMENT,
  `text` mediumtext NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termofservice_entry`
--

LOCK TABLES `termofservice_entry` WRITE;
/*!40000 ALTER TABLE `termofservice_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `termofservice_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termofservice_user_accepted`
--

DROP TABLE IF EXISTS `termofservice_user_accepted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `termofservice_user_accepted` (
  `id_user_accepted` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `fk_id_entry` int(11) NOT NULL DEFAULT 0,
  `date_accepted` date NOT NULL,
  `version` int(11) DEFAULT 0,
  PRIMARY KEY (`id_user_accepted`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termofservice_user_accepted`
--

LOCK TABLES `termofservice_user_accepted` WRITE;
/*!40000 ALTER TABLE `termofservice_user_accepted` DISABLE KEYS */;
/*!40000 ALTER TABLE `termofservice_user_accepted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unittree_action`
--

DROP TABLE IF EXISTS `unittree_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unittree_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `name_key` varchar(100) NOT NULL DEFAULT '',
  `description_key` varchar(100) NOT NULL DEFAULT '',
  `action_url` varchar(255) NOT NULL DEFAULT '',
  `icon_url` varchar(255) NOT NULL DEFAULT '',
  `action_permission` varchar(50) NOT NULL DEFAULT '',
  `action_type` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_action`
--

LOCK TABLES `unittree_action` WRITE;
/*!40000 ALTER TABLE `unittree_action` DISABLE KEYS */;
INSERT INTO `unittree_action` VALUES (1,'unittree.unit.action.createUnit.name','unittree.unit.action.createUnit.description','jsp/admin/plugins/unittree/CreateUnit.jsp','plus','CREATE','unittree.unitAction'),(2,'unittree.unit.action.modifyUnit.name','unittree.unit.action.modifyUnit.description','jsp/admin/plugins/unittree/ModifyUnit.jsp','edit','MODIFY','unittree.unitAction'),(3,'unittree.unit.action.deleteUnit.name','unittree.unit.action.deleteUnit.description','jsp/admin/plugins/unittree/RemoveUnit.jsp','trash','DELETE','unittree.unitAction'),(5,'unittree.user.action.moveUser.name','unittree.user.action.moveUser.description','jsp/admin/plugins/unittree/MoveUser.jsp','sort','MOVE_USER','unittree.unitUserAction'),(6,'unittree.user.action.removeUser.name','unittree.user.action.removeUser.description','jsp/admin/plugins/unittree/RemoveUser.jsp','user-times','REMOVE_USER','unittree.unitUserAction'),(10,'unittree.unit.action.moveSubTree.name','unittree.unit.action.moveSubTree.description','jsp/admin/plugins/unittree/MoveSubTree.jsp','sort','MOVE_SUB_TREE','unittree.unitAction');
/*!40000 ALTER TABLE `unittree_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unittree_unit`
--

DROP TABLE IF EXISTS `unittree_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unittree_unit` (
  `id_unit` int(11) NOT NULL DEFAULT 0,
  `id_parent` int(11) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_unit`),
  KEY `index_unittree_unit_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_unit`
--

LOCK TABLES `unittree_unit` WRITE;
/*!40000 ALTER TABLE `unittree_unit` DISABLE KEYS */;
INSERT INTO `unittree_unit` VALUES (0,-1,'ROOT','Direction GÃ©nÃ©rale','Racine des entitÃ©s'),(1,0,'espace_public','Espace Public','Espace Public'),(2,0,'etat_civil','Etat Civil','Etat Civil'),(3,0,'logement_habitat','Logement et Habitat','Logement et Habitat'),(4,0,'affaires_scolaires','Affaires Scolaires','Affaires Scolaires'),(5,4,'ecoles','Ecoles','Ecoles'),(6,4,'petite_enfance','Petite Enfance','Petite Enfance'),(7,4,'centres_loisirs','Centres de Loisirs','Centres de Loisirs'),(8,1,'voirie','Voirie','Voirie'),(9,1,'espaces_verts','Espaces Verts','Espaces Verts');
/*!40000 ALTER TABLE `unittree_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unittree_unit_assignment`
--

DROP TABLE IF EXISTS `unittree_unit_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unittree_unit_assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `id_assignor_unit` int(11) NOT NULL DEFAULT 0,
  `id_assigned_unit` int(11) NOT NULL DEFAULT 0,
  `assignment_type` varchar(50) NOT NULL,
  `assignment_date` timestamp NULL DEFAULT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_unittree_unit_assignment_resource` (`id_resource`,`resource_type`),
  KEY `index_unittree_unit_assignment_id_assigned_unit` (`id_assigned_unit`,`assignment_date`),
  KEY `index_unittree_unit_assignment_id_assignor_unit` (`id_assignor_unit`,`assignment_date`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_unit_assignment`
--

LOCK TABLES `unittree_unit_assignment` WRITE;
/*!40000 ALTER TABLE `unittree_unit_assignment` DISABLE KEYS */;
INSERT INTO `unittree_unit_assignment` VALUES (1,1,'FORMS_FORM_RESPONSE',-1,8,'create',NULL,0),(2,1,'FORMS_FORM_RESPONSE',8,1,'assign_up',NULL,0),(3,1,'FORMS_FORM_RESPONSE',1,8,'transfer',NULL,0),(4,1,'FORMS_FORM_RESPONSE',8,6,'transfer',NULL,0),(5,1,'FORMS_FORM_RESPONSE',6,8,'transfer',NULL,1),(7,4,'FORMS_FORM_RESPONSE',-1,8,'create',NULL,1),(8,5,'FORMS_FORM_RESPONSE',-1,2,'create',NULL,1);
/*!40000 ALTER TABLE `unittree_unit_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unittree_unit_user`
--

DROP TABLE IF EXISTS `unittree_unit_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unittree_unit_user` (
  `id_unit` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_unit`,`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_unit_user`
--

LOCK TABLES `unittree_unit_user` WRITE;
/*!40000 ALTER TABLE `unittree_unit_user` DISABLE KEYS */;
INSERT INTO `unittree_unit_user` VALUES (0,5),(1,6),(6,8),(8,7);
/*!40000 ALTER TABLE `unittree_unit_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userassignment_resource_user`
--

DROP TABLE IF EXISTS `userassignment_resource_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userassignment_resource_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `assignment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `userassignment_resource_user_id_resource_fk` (`id_resource`),
  KEY `userassignment_resource_user_resource_type_fk` (`resource_type`),
  KEY `userassignment_resource_user_id_admin_fk` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userassignment_resource_user`
--

LOCK TABLES `userassignment_resource_user` WRITE;
/*!40000 ALTER TABLE `userassignment_resource_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `userassignment_resource_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifybackurl_authorized_url`
--

DROP TABLE IF EXISTS `verifybackurl_authorized_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifybackurl_authorized_url` (
  `id_authorized_url` int(11) NOT NULL,
  `url` mediumtext NOT NULL,
  `name` mediumtext NOT NULL,
  `application_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_authorized_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifybackurl_authorized_url`
--

LOCK TABLES `verifybackurl_authorized_url` WRITE;
/*!40000 ALTER TABLE `verifybackurl_authorized_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `verifybackurl_authorized_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action`
--

DROP TABLE IF EXISTS `workflow_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `id_state_after` int(11) DEFAULT NULL,
  `id_alternative_state_after` int(11) DEFAULT NULL,
  `id_icon` int(11) DEFAULT NULL,
  `is_automatic` smallint(6) DEFAULT 0,
  `is_mass_action` smallint(6) DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `is_automatic_reflexive_action` smallint(6) DEFAULT 0,
  `uid_action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_action`),
  KEY `action_id_workflow_fk` (`id_workflow`),
  KEY `action_id_state_after_fk` (`id_state_after`),
  KEY `action_id_icon_fk` (`id_icon`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action`
--

LOCK TABLES `workflow_action` WRITE;
/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
INSERT INTO `workflow_action` VALUES (1,'Action d\'arriver sur l\'&#233;tat Demande de contact dÃ©posÃ©e','',1,1,-1,4,0,0,0,1,'9fc6a64e-1d0d-11ef-8590-0242ac180003'),(2,'Accuser rÃ©ception (automatique)','Envoi d\'un accusÃ© de rÃ©ception pour notifier l\'usager suite Ã  l\'exÃ©cution de l\'action, la demande passe en instruction',1,2,-1,4,1,0,1,0,'9fc6a914-1d0d-11ef-8590-0242ac180003'),(3,'TransfÃ©rer la sollicitation','L\'agent considÃ¨re qu\'il n\'est pas le bon contact pour instruire la sollicitation et dÃ©cide de la transfÃ©rer au bon service',1,2,-1,6,0,0,2,0,'9fc6a9f6-1d0d-11ef-8590-0242ac180003'),(4,'Escalader la sollicitation','L\'agent transfÃ¨re la sollicitation Ã  sa hiÃ©rarchie',1,2,-1,7,0,0,3,0,'9fc6aabc-1d0d-11ef-8590-0242ac180003'),(5,'ClÃ´turer la sollicitation','Une fois traitÃ©e, la sollicitation prend fin',1,3,-1,11,0,0,4,0,'9fc6ab92-1d0d-11ef-8590-0242ac180003'),(6,'Demander des prÃ©cisions','La sollicitation initiale de l\'usager ne suffit pas Ã  instruire la demande. L\'agent lui demande donc des complÃ©ments.',1,4,-1,9,0,0,5,0,'9fc6ac41-1d0d-11ef-8590-0242ac180003'),(7,'Action d\'arriver sur l\'&#233;tat Demande en cours d\'instruction','',1,2,-1,4,0,0,0,1,'9fc6acc7-1d0d-11ef-8590-0242ac180003'),(8,'Action d\'arriver sur l\'&#233;tat En attente d\'informations','',1,4,-1,4,0,0,0,1,'9fc6ad4e-1d0d-11ef-8590-0242ac180003'),(9,'Action d\'arriver sur l\'&#233;tat Demande clÃ´turÃ©e','',1,3,-1,4,0,0,0,1,'9fc6adc6-1d0d-11ef-8590-0242ac180003'),(10,'RÃ©affecter Ã  l\'entitÃ© Ã©mettrice','La sollicitation a Ã©tÃ© traitÃ©e par un service tiers, elle retourne au principal service instructeur',1,2,-1,8,0,0,6,0,'9fc6ae48-1d0d-11ef-8590-0242ac180003'),(11,'Accuser rÃ©ception (automatique)','Envoi d\'un accusÃ© de rÃ©ception pour notifier l\'usager suite Ã  l\'exÃ©cution de l\'action, la demande passe en instruction',2,7,-1,4,1,0,1,0,'9fc6aec4-1d0d-11ef-8590-0242ac180003'),(12,'Demander d\'apporter une correction','La saisie de l\'usager ne permet pas de traiter la demande car elle semble erronÃ©e',2,10,-1,9,0,0,2,0,'9fc6af38-1d0d-11ef-8590-0242ac180003'),(13,'Demander d\'apporter un complÃ©ment','La saisie de l\'usager ne permet pas de traiter la demande car elle semble incomplÃ¨te',2,11,-1,9,0,0,3,0,'9fc6afaf-1d0d-11ef-8590-0242ac180003'),(14,'ClÃ´turer le dossier','La demande est traitÃ©e, l\'acte est envoyÃ©, la demande est cloturÃ©e.',2,9,-1,11,0,0,4,0,'9fc6b027-1d0d-11ef-8590-0242ac180003'),(15,'Refus de la demande','Les Ã©lÃ©ments fournis ne permettent pas de traiter la demande. Un message est envoyÃ© Ã  l\'usager et la demande clÃ´turÃ©e',2,8,-1,5,0,0,5,0,'9fc6b0a3-1d0d-11ef-8590-0242ac180003'),(16,'Action d\'arriver sur l\'&#233;tat Dossier dÃ©posÃ©','',2,6,-1,4,0,0,0,1,'9fc6b12b-1d0d-11ef-8590-0242ac180003'),(17,'Action d\'arriver sur l\'&#233;tat Dossier en instruction','',2,7,-1,4,0,0,0,1,'9fc6b1a8-1d0d-11ef-8590-0242ac180003'),(18,'Action d\'arriver sur l\'&#233;tat Demande refusÃ©e','',2,8,-1,4,0,0,0,1,'9fc6b21b-1d0d-11ef-8590-0242ac180003'),(19,'Action d\'arriver sur l\'&#233;tat Dossier traitÃ©','',2,9,-1,4,0,0,0,1,'9fc6b285-1d0d-11ef-8590-0242ac180003'),(20,'Action d\'arriver sur l\'&#233;tat Dossier en attente de correction','',2,10,-1,4,0,0,0,1,'9fc6b2ee-1d0d-11ef-8590-0242ac180003'),(21,'Action d\'arriver sur l\'&#233;tat Dossier en attente de complÃ©ment','',2,11,-1,4,0,0,0,1,'9fc6b35c-1d0d-11ef-8590-0242ac180003');
/*!40000 ALTER TABLE `workflow_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action_action`
--

DROP TABLE IF EXISTS `workflow_action_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action_action` (
  `id_action` int(11) NOT NULL DEFAULT 0,
  `id_linked_action` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_action`,`id_linked_action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action_action`
--

LOCK TABLES `workflow_action_action` WRITE;
/*!40000 ALTER TABLE `workflow_action_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_action_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action_state_before`
--

DROP TABLE IF EXISTS `workflow_action_state_before`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action_state_before` (
  `id_action` int(11) NOT NULL,
  `id_state_before` int(11) NOT NULL,
  PRIMARY KEY (`id_action`,`id_state_before`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action_state_before`
--

LOCK TABLES `workflow_action_state_before` WRITE;
/*!40000 ALTER TABLE `workflow_action_state_before` DISABLE KEYS */;
INSERT INTO `workflow_action_state_before` VALUES (1,1),(2,1),(3,2),(4,2),(5,2),(6,2),(7,2),(8,4),(9,3),(10,2),(11,6),(12,7),(13,7),(14,7),(15,7),(16,6),(17,7),(18,8),(19,9),(20,10),(21,11);
/*!40000 ALTER TABLE `workflow_action_state_before` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_assignment_history`
--

DROP TABLE IF EXISTS `workflow_assignment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_assignment_history` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  `workgroup_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id_history`,`id_task`,`workgroup_key`),
  KEY `assignment_id_history_fk` (`id_history`),
  KEY `assignment_id_task_fk` (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_assignment_history`
--

LOCK TABLES `workflow_assignment_history` WRITE;
/*!40000 ALTER TABLE `workflow_assignment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_assignment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_forms_auto_assignment`
--

DROP TABLE IF EXISTS `workflow_forms_auto_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_forms_auto_assignment` (
  `id_task` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `workgroup_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id_task`,`id_question`,`value`,`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_forms_auto_assignment`
--

LOCK TABLES `workflow_forms_auto_assignment` WRITE;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_forms_auto_assignment_cf`
--

DROP TABLE IF EXISTS `workflow_forms_auto_assignment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_forms_auto_assignment_cf` (
  `id_task` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_notify` smallint(6) DEFAULT 0,
  `sender_name` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `is_view_form_response` smallint(6) NOT NULL DEFAULT 0,
  `label_link_view_form_response` varchar(255) DEFAULT NULL,
  `recipients_cc` varchar(255) NOT NULL DEFAULT '',
  `recipients_bcc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_forms_auto_assignment_cf`
--

LOCK TABLES `workflow_forms_auto_assignment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_forms_auto_assignment_ef`
--

DROP TABLE IF EXISTS `workflow_forms_auto_assignment_ef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_forms_auto_assignment_ef` (
  `id_task` int(11) NOT NULL,
  `position_form_question_file` int(11) NOT NULL,
  PRIMARY KEY (`id_task`,`position_form_question_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_forms_auto_assignment_ef`
--

LOCK TABLES `workflow_forms_auto_assignment_ef` WRITE;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment_ef` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_forms_auto_assignment_ef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_icon`
--

DROP TABLE IF EXISTS `workflow_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_icon` (
  `id_icon` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mime_type` varchar(50) DEFAULT NULL,
  `file_value` mediumblob DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_icon`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_icon`
--

LOCK TABLES `workflow_icon` WRITE;
/*!40000 ALTER TABLE `workflow_icon` DISABLE KEYS */;
INSERT INTO `workflow_icon` VALUES (4,'Valider','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0ŒzTXtRaw profile type exif\0\0xÚ­œiz-”…ÿ³Š^B1ÃrŸ§wÐËï÷P²ËCìä‹ãH–KÜË= ˜õÿ»Íÿð§Ô˜Lˆ¹¤šÒÅŸPCu\'åºÿÜö\nçßógúÇïìÛ×Í_8^ÒEÓz\\ßx=þzC×ûÛ×M~4äÊ£¡Ç/^\Zôº³ãÉãºòhÈ»ûuûøÙÔÇûZøm8ïRÏ=õ¦ûWO?‡L0f¤=ïŒ[Þú‹‹.ðú¾ñ˜Î¿™‹¬<÷ççíÇ±3¯OŸ‚·óÇ±»Úã\nÿ6æJÒSŒ¯ÛøqìN„~ï‘}yêÞþbE÷òÖw±Û{–½×=º‘Jæ1¨ëÑÄyÆ…Púó¶ÄWæ;ò<Ÿ¯ÊWaˆƒŒM²Ùù\ZÆVëˆö¶ÁNÛì¶ë<;èbpËnçÜ Êz­þê†W\n‚¾ìvÙW?/db5ÏËîµ/öÜ·žû\r[¸ó´\\é,YÞñîË|ôâß|½6´·¦®µ\'˜ùÄŠ~9M=º¡Ìé_®\"!v?b\ZO|Ï—¹Þææ%±žÆæÂ\0ÛÕï&z´¿æ–?yö\\¯`®»4lž÷ŽtÆz2p%&¶MöÊÎek‰c!?žS®“£›ÖlrÃì\'9ÅéÞ¼\'Ûs­‹î~h!‘É¤¦úF²BˆÌŸ\ns¨Eƒ‰1¦˜c‰5¶äSH1¥”“0ªeŸCŽ9åœK®¹_B‰%•\\J©¥UW=kªÙÔRkm›6šn¼»qEkÝußC=õÜK¯½\r¦Ï#Ž4ò(£Ž6Ýô“òŸif3Ë¬³-»˜J+¬¸ÒÊ«¬ºÚf®m¿ÃŽ;í¼Ë®»½fí‘Õ·Y³O™û:kö‘5e,œëò¯¬ñrÎ/MXÁITÎÈ˜–Œge€	í”³«Øœ2§œ]ÕQÑ‘5•œi•12–uqÛ×ÜýÊÜ—y31ü(oî³Ì¥î¿ÈœQê™{Ÿ·²6Ûa¤*TL/¿6.X¥¹ÒÄI¿û´~Ù±‡‹3t:P\'Å0FmqÕ\ráyù)µAŒ-ÝÚBGBŒ\"Ûk‚`×È8ÈuNéõ¾‡÷e¯ç«¸ØVÞsï’ùfh Ã5øºE5õªgy/{ÞB1©ñ¯4/-þkƒæ¹‹Û ùlÌ?mÐü)ˆßmÐü)ˆßmÐ|7+jÐü4ÍŸ5hþvÞ<7hþu\"þÕÌ^½rå§ZEÂ¦¹|ŸóJ©÷i’Þ»ló»ûS%Ð‚å{Q¼l\Zà@YžvFYpq;åýû£yóxD\'R¹úra’Êl~´n{°~Ž+Õig­LâšDÅ¥{¶q™„\\©–ût`§ƒÁÁ§ž¶}ö-&„bú¯àÝRî üH®KHÉÄ½AG\"2ç	cêQì\r%Dâ÷Í7.T`µo)\0,KÏñše@ÇË\\!T“sÚ§Žlw¡äµö\0kIÐû¼òÌ ®~GövñzL‰~ÅÏÌn>EÀZ}Ÿ‰·‰˜ûŽÆÇÁ0L·{ŠÑõˆ”þ;¦¶ÛõEÛ¿?šöÍïÇ]™Ù©,Ý²º’ÛÖ,®º3	œäÿ…¯ƒ`¾…¯ƒ`^¢°!²ØO)ÅÒLiC²½¨£°ñ\Zhè5àKr®ÅjÅ×§äË\0³Q«UTÃ•5ôí¥r—á˜,÷b»»Ë¸T•ÌÿóÝ?³ßL–\0Óî^\0Áëæ*=ë4Þb§Â|Hx+¾4gîöþ½9ó{÷þ¥9ó~´×œù,x?mÎ|¼Ÿ6g¾ÎÅ÷›3ßIíwš3¯{,w²;Ä,ÊùYQ’«ä5üŠT¸Œ®kÏY…`À<d/\'@qŒ»PåßŠãQk(½Ýc£¡KÂ°¯t!&}?…°nÊÞéjåkH£‹gŒ¬‡œ÷€0ÔÖ\Z6Þ,‡l…düÈÏ²Ó¸§ö=úªrKI=ÉNf›Üåú´Ïæ¹ÓNñÚ§/Ûº¶bZýî³ð¤ïJÜ<×8¿AŠ}.·\Z¥Û€È¨òja„†€$¢­X™ñ7)¹+›4Gž©Ï\n×1ª”í\r£¹6äz#ø\"D1w­ÕŽúàÑ|öûÚBüRê~_\'P\n§Î€Í#œ$hZÁ¶	¥ÝQ91½#šî4¿tŸŸöÁeFPÍ+4ÿÆÕïó/¤>3àä¿/Ù’WB9t‚ôÛb“sñ¡B¡[_Ò¸]û¹¿æëÜß`QXwO–;Wv(›²T‡aÕž×Ÿç-•}MÐ>¹à!—–o1ˆT\"w¡a“vD—â€¤êè­zÆ™WŒýLŒ«s?ÇÓy\r¯^Åt†iwÓxF.ŽNÇå‰sÌ”`:ÃLcw·Æf,yÚ‘;ò3w²uÀŒÄ\Z‘+ÐÆ—é@Ðƒ£Ððš°£É\Z\"ˆÒGÍê*:~3rÁÊýê£yßIúXÎ…QnûRÊãRÔfÏ·Î­àÔ¯û;z`^º p{îhïKïnpÍ£/JŽs¥¹;\"9~:òÚ\raO<òèÊsGža~‰Ïa~‰Ïa~‰Ïa~‰Ïa~‰Ïa~‰Ïa~‰Ïaþ²8²x?`[]¢fvÐ×sþ§÷KŒî»u±,Lwá”åø:è£¤§åÃ˜!-9<ç·[«Í¤Ž°ikr—à/ÌØµ®âçÑÒsÿ€æ-)}é#£‰Û³›xÂê¨6¯Xý$ýÉÊ-þñÿ¥ô7Ïè+Äþª¿æ¥Ã/Lw÷äPÝƒèÔc)ˆ$òÀýÛÒäï×}spÿ!³å¢®±ª™zfUÐÂ hmñc÷åžGžäøC½NäÑpÙ˜ÉY­WËõJ×\Z‚yG×oÇð†»~QCˆou”ù®ú“øÓBÔ\"þÌÛÅÇ¿æ}§ÿNü™gƒç(Q\Z‹3wÞ•ù;ÝŽ}†6 ßì4ï	º¡ÅNð ÃëÚšS‡¶ëÜDZ)˜O‡¯ä=#µ1VUµÕ2õ´é×ÔFPîLî4ì4õjZsv¸…1rsm…2º—­+Ìœáú+ôõSFÕ÷ôe•Ö#k%`6Î;®àã­)\0[	KiMGž…móšYY?\r-×ˆnËË\ZTÎ¥e¢2b²­¬BPÒÎÑ#rl±¶]’½ ƒ­­—·.»ç+;og\0ïåÃ×~ß½¾û¬´¾ôY½{éòK‡Ýå7¯6ô˜þövýP˜w ¿Žgû8(ÜB¬òQLÍ¯ ®¢^†š_ù+Ÿî»œüµâç94o“ø÷94$ž üT¥ýÎÈæ%,üûÕl)Êžy\nÍ˜;,ºàËõçIb¾7Kþ<IÌÏÕâÇ“Ä<Ýƒ+`‘Þz©i9à¤ºTWÌ0y¨Ô„v•T$RÙÇ¹tWó•2Z?æ½2ø»U6ó‘:x^\Z|³2¨5V›Ï¶R)LeíÅµ1M¥#	¼›:}P}·;…PæJad¼‹u@^Ò—k3]¬þ´ ù7bÂ<«Ÿ¿f?11 ?k÷a–ä¨ôÕ}k®+ÑsDá§r”˜àÂÎè|*½£ú™6Ã7úáž~]sì‰ÉéQKÐÿN	Uì…¿Œ¯nWì,ÍZqSÂ˜Œi’ˆ©\"ªEl&Æƒš	QÓ½C5=Öš´/A€@ùn{®žz¼Ãƒäko…÷Ô™ä@ýð@ÆóÚé«·ÐD\\LxRÛ!¾AìÂÄò\ZÖ7ãRÁÁ^()¤s)ÎR\Zs:h±ÚéYaªŸ1EßµÕ™}—c\"àÊË·ÖF^×H¸u2Q)E»Å¸õÑá/U!÷³¾fnÙLÈ~ìÖ=æ\ZCmGŒ…yJºEw›¼ÔB]Ç€ækÁÎhWŠØþŠNñÚá[7¼m›Q÷Lõf-¶…EdéN	SÔ¡öÊû™ŠãºwBzr-FÊýÝ”ÿ`žå©Úª(‡LLËŽ‘òŒ5e\nàq÷\0¡€Ýöð¤l×l{h¤Ã\Z€‡°WÛiª[ûØØ‘º‰VRÖ†³rAu–E)Âì#}žZ@npúªÉ@[HšVG#!T˜²Í‡k_Ú\r÷Ã\rÔos˜.âR–½Zæb&\rÙt³—’LµZ±ðTªžiÜ¤ÛvÔ•_Æ·Q%å82G\\`žÂìµ.6‘’ÛµÆº(öXhW¬ÎAùŠ)Úa.è)m-Èàè¡Bb³LË;¡ªP#EfF¦¥ä´p‡j¹vLŽ¤\"­¾è˜Hñ=óÝíŠw8ãÞ®Î™Ÿé}h°7q3ùØ7µ„Á®÷u˜•	›gus®ÈËûH¥/ÜèVÁú›J];[•Å­•Vór››¹¯ð`¼VoÂC²ÞìŸÊ×M™Rÿ›¦ÄýÿISæá¿7e^‚ESÝ®ë^3Ö~ìÌW,±\\ÛµÉp|d.,*bŠ\"V:A†È»/ŒT5·HWZîð;\ZÂÁ$OB)­DUáfjÉ×³ä¼.¹’àJ´ÌÚÀAj{:W*^´U¿ÄÕæxõèæ¦*«NœeŠ®SÕ×€6hÐñÌ!§ \0Dµ‡\rá÷vb³Ðmò;ŒÎÙÖ3ABJÐ•ù¥Š\r`p’3½jp»X>SV¡M†¶âHÆ€€´312\n/Iœ58Ý/îj©Êîl”{o¼[HlS†oÖ\"àPÅ×’Ž\ngÎŒÕ$öúÃò!c`&¼q. W—hØ…ÕøëûÀ³8DE¦¦-êRr\0[ Z°eRDPÚ¹íR–iÚP‡úã=\nÑÊ!DŽÛá°2.ÞƒÔàFHÛ‹ƒ‚äò¸K*Ý¤RQ{.‹Ë7½¨#!Á2@(·šÜbb¤Ç+˜ImÃ\'Ê\Z€Ò\n²æ,Áç	ÚúFôH\0Þ1@(Æ/M­¹E¬³Ü²>†Ô@t„kû„áka #åZÈc­([$å@Ž×‚MÚ³‰Â,JJ€J™)Š[^éªM\'˜|6$&ÙÊtcbÄæ/.âÇ„ÞèÌ9ˆ³J­FíäùÅÊ¿ùÎVÅwVþÍ3œ~wåÿörÐº¿×$Íöñz46èˆfKÓjÉ¾­Ý›%¥óZTzYRúm£Ã|~€á\"¸VgÄ0³)» Ñ·LRlœž‡“¹Ý6Ú¡¼4ãu®‹â»HTs M×9ÁHˆR´M˜¼ÉW^ƒ8P½û‹öZÈÆ¡¢ Yy–Så–¤q</â R,ë˜g¶¡P’ØóZMQ°fkEm’÷SgQ#½%±Ú”ÄÅ`¢\0H&R¯hå8P”p5rí\nh<žŽ¶OaÄŒ6ÍË\"¦rEÖÀ\'Qßø)á¥Øn(t‘ê@•ä-­f)6·”ü0­ke¦<†EƒL_àÕ$ *‘°Ôuðm½Î¯\Z¦…$‚Øsh¡T2€a½×°°^|?«Øg0!4Ô CÀõÅj¯…ÆDÔRÉØ£”7ø™Äù‡~´ÍÇÀÙ|…^æY*¸žì¸¨Îh¸S¼æ°XÓ=¯±ýí†êÛ%5ó÷ªo—ÔÌ‹7ûz74—·•õ¾°Ì]YïŸ£è0ÒÛveÙ\n¦Õ§¬	²[¨% °iƒ^!|­¯éZ9üˆ‚ÚÚÇ­¿P1¹,J ëüGt¶&NŠq]¨ÜÅDôIBÜ„gõR#ÜëF€u*–\"2ÐÝ¸›ªã—c Þë!?8¨ž³¸±½vþ _X¨À&hzqÙÍxWkL1\"b™ÐM,µgf.Ü€Œ¸ÆBcCOMlÒ\Z0€¾FïÂð£;mÚ8Œ*6öV¹Qms\"´sÅ¢JªÚí†x–f<P\n·ÿG×FL+~A£ÇØý¤*uVÉr¡üwj2„_>6]çÀ.–\nž+¼¹\0Z!Bju–!ÿH§Q:×Ó¨ïLš	ñ¥¥Th˜À4b`¥µ\Z¥™³ÓNfcÈ´Om*|®ÃAÝ7\\\0]U‹,‹t´™ |É\nyñî(•2Èä™#F—X%r¡T 5»,~¥Â¤£óœŸ¦Ì;ÊnA’\"AÑPùuƒ4•â‹\rãL³„uvŸ›ðºŒ\"=^G\nT¶øQ•dß©%è†N¦ûüvGâëÐ-bPJ\nšG¹0›´tÞ1(=\Z¸û?Ø^i—ùo¶WV1ßÞ^a¾g›{Ö¥“:c™TPqh[Ý+[æé]!WÀbE÷Au$Nœ;„Å¯»V4—‘ùÔáË¼_73­Îp¾lfÞ8õk3”ã¦Z3Ñçªìø½™™%O\nd“ïµkèdJyßkµZl•ÕÔºoþ·N½ÙÔ\\:5¦~ýÖ-öÔ­³¹©Ž½lm¾é”V/Õ-ƒªûÕ)Ç-ûK8¹yóîWÇÅO&kó¥ Ž)Oy}2åÒÒÅÝÐ{À¹Lg+àº^	Ø‚ÔE^-Z[|Dã—3¤k\0k:\Z†¿æ@@hÃ€™½u|A»)NûX§Ø,_$I	0d9K•ƒ¤È\ZOÁm&E‡€%£³/kŽ#^Ò–X\\J{	i4æšÉ.Fœ×9~Â‚öe‰\n	L^Mk\n{5“¯ƒ”64l™8:!íÑ	U\0ÍðÑ´ÜP\ZŒæ,‹ô†±BBAÆ~\"¯Ppœ\\æÆÁÖ®¬H3*#ø×ân€\'j½U;>„ôI#ò\n£C\r›+zBÁÇÊ‡òú¬g¤Ž\0Ã‚õ@”w¬@’ü¾\"¶FŸè´?XhlR®ÅDät“#$ž¶\nRîÖ\0SíÊh9eNâ‚5Í­YÉLÏÐÛJÆ¢õ¨ÀÄ@zÀÒê2.¹eºŸ­1i´½–„g×\n‹@^¤ôG­\"QV½†zz9ÏZ`\n‰2°›¦œ˜Ø¢ÿ©ðÿ‹Q«M¡ÞHŠÖrÌ£¨ K^˜¤÷œ…l1lZèO¯‰ès2‡È¨…%G‘y ®O²P#·ïç.pZ’<B5	ÐíYcRaul8Õz}aò#Ä¼¼læ=ÜŸdº”N¾“­ÌäÑ€í†1úXÿ_æ+¹eŽ‡tì›ËèýPŸ*¹Cf(Ðy´îµàOKÚ„ôŒ¼5\n÷D]ª`Û·ÕÁKP–-M±­üj§ƒçDÆ+C)÷ÂU¡/(^ˆVAÁ÷3cŽz•ãÑùé?ìË|¶Ãd[L15\núÿõæÊ\'Dæ±C¤Ø¿uêû ìšß7z>ëÖG›/Ï›zæý®ÞkçèÛ°Zƒ‘e>k¤“Ü÷0 €¡‰¼A‹eÎ§¦0ZÌ:È[Ù\\/w1§L(¹‚ù³èÜŽ™$Á¸”7brêD3z¨—eÖ ê³Q*É€l?«á\"‹Ë•y‡`€òµ¨ÝZ …Þ€éšª¾%ddôq«u\n=Â\\®À%uÔõyGªØµ	Å„àÓéHjšÞ¸`õ±»,¥*³ÌÌ!È‚î°¯³¡¢Ú/D1â’¥DMCŠ8HJ;C+9^¡~£Á[`ã	„Ž#À\nsœÉ}L£¥›½»ªŠÀ\\ ²×Ê¥U™ßÊÌmê£G‰ài—>\0œá‘#Í™×U—¨¬Ð¯¡å@dÚ•0ƒH¿Ô’‹9ÁOÞEP£ e¡R¡ôÒæžÑ¨™²5iQa/¸”R²Ô*N\rË×µ\"Ex\0EPMB§ÚÆ§³]¶Ëé¤ÀW\0Nq{ÌD\"êu`=×0œÕL´z·Ð~V X“œÃÒÏÈ‹\0§VŽˆ,?Éa·•Ïêš¿ET)4‡ôy‹¦ÐËxW¸rDx|áh¹ƒl Í]É\0Ñý±f$h×¤†>˜c†ó\0Ax@hKR\r\n|å½‘–û†ÛƒœºÕKIËGHO;£>*ëÉ@¡Ï\ZØð·¢Få! Í(:QpŸ)ážLÄ¬m{ ®’DÔ±Jðøü‡5´Ä°ð=R½LR€>˜He*fç)ÕQúZk<FW›RL™O®¢éƒo C@¸ð¡’5‹©¤Áanu0ƒI}>É³lÍO{Qø âõi™-g?P&x\Zü€>·Og XHyheŽ*Œ—ÅÀˆ· ˆ€Ÿ[Š“‡K8$Œ´9Ç¬shÞ´ÌÒ‘“Z|€#§ºøq¤®‘RÈEÞmí‚±c\"mqÖ¥F\00pILvb LÓRH 5mõ9™R˜O>\"1jèÞ¾¶?Î%\\ZÑ>ÛçM	Z.×R½v‹ïut©ŽOiáø@ý¼OÈ§9s·÷ïÍ™ß»÷/Í™÷£ý»æÌgÁûisæë\\|¿9óÇÔöà®‘¶!¢K3¯t‹	‹ÖQ¼HJƒh…H†Ç½^IU¸CoépnÐæÆ(R»—k\"œµ öµÑÙ\0Ré‘>cšÊÑèaÓ¡s™\rž´&´»=ëœì,@¾÷:C¹‚Äc‹›(›9L÷Ù—„n˜h´Úè¨x3\0Ç‡—š®ÞÓÔÖÊpÈ¨:d¹\"Ð×LÃ­œÏ®¡5í\ZÐa¯¥ZÂí²÷{	K=A`ZiL1 Ï\"WÒ»h#\0Ž	Ú~\n7€&Õ|GB@Á\ršvh†Å¯Ú\'p÷¶Ž*tt­>Ô–YëhoÀxâ¼þë‡Üé<¨†pÇÅ1XãŽ5À‘:°ã ý¸„\'Ì\"ÌöÞ(Oº\n,âhÍ)h ¹L¿^À¡¤UV;™ÓgµÁüºàa”!ûÀ?e\\, BÍíé1Á±kCÐgÛù€‰>ÅÜÎ¥C\r…p–¤ÿÒ‚™\rP—3mÆ9/£¥#1™¤tÆ×cD`×A‰®.aŸ6Ùý}ˆ›¥UªËkƒéèäª.Bûò›4ªÝ,ær•óŠŠÑg<PK+ÁgwØ\'}ºÝhX]˜êÎ,`‚àÀ°KGY`N`)ÝÀ¢«QLƒ P@4Å²þ_-Ômô_DôÂ„,Ì Y¶!{‰¾Ø_¯p>=šï^xi×	¤ÏMÛ\0™?ƒ»´[Ãò°\ZN)Û éÀŒà‹4Nu(™Pnë qµÄ&E¶Á¦h»èw„}¤\"£õþ/W˜’0{Té“–‰‰Ø£©é÷ÜÐÉZ¢ÎÒt‘_$o¼î°¢»„«\nTÿ·‰VÑåIŸ7/Zš¨:\">-þžQâqv7ž&lG;«œh|¢D‚Î\ZiÇñò…²t¸‚@yYáâÑé„ÍÆ…ìè]¾/BYãøMŽ|B§Ô\n­^˜rß\0HÝ÷¶úŸPQ¬Ë÷¥‚ªMë™Ý¹=¼JU¦‘ Í¡jàÀ/Üñ`‹ŸoFwVÑ ÄÿÖ\\ù¹qD\0\0\0bKGD\0/\0;\0Âç†ªG\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè\r$^·	d\0\0éIDATxÚíipå™€ŸžSÒh4º,Y–-ÉòñcƒcãÛ@‚Ù$ì&PIUvk©Mmme©e\r$û#	a	$œ\"€q0k/`0`äsåB>d[÷a£c4w÷þ˜‘Ä–g4=òŒç}ªT–<}|=ó=ó~ýö×o+š¦!Bìä-‘ID&A™A™Ad‘ID&AD&A¸r˜’ O7×\0i:lÏ(qjk\0è“n¥;ç€ÀS@m¢6RIÐéD¥À:`A;¾œ´\0ëE¦È\"Ñ¿‰DÂe8\\\'2]š?K?\"Ä\r\\›(C¿D’ID†ƒÈI„†$J6ïI&ÙÀ‰L_Ò¤K¿b`>°3Õ#ÓÓ\"’ ¯Jd‚f`´ôAÊ¸‚ÉˆDˆL…Òøq*ó@®\'	úqs*ËT$Ÿ¿pµ ]Ad‘i0‡å#td‡D&AÈ$‚È$\"“ ˆL‚ 2	‚ 2	‚È$\"“ ˆL‚ ˆL‚ 2	‚È$‚È$\"“ ˆL‚ 2	‚1¦$m÷:BÏì®.þSd\Zy^%AêK\"“óAd‘ID&AD&A™Ad‘I‘ID&A¸z0¥À1jò1_QRæÉ™Ad‘ID&AD&A™Ad‘I‘ID&A™A“\nsóžY™ôa­|Ì‚óAd‘I‘ID&A™A™Ad‘ID&AD&AA¤¥o¤¥ \"“ ˆL‚ 2	‚ 2	‚È$\"“ ˆL‚ ˆL‚ 2	‚È$©†¡‘)bÖÊÇ,È0OD&A™A™Ad‘I‘ID&A™AdAd‘Ita¦È?Ö\0›V þwsøÿ‡B“Ÿaÿ\\IŽˆLúc6ë•@AøØÂ¯¿nBHvn¼Rý:U:Ïf`Ùe–¹7¼ÜréqáQ ¸9ü÷5@šÎû°•ƒþ¶„÷Ñ#2éÃO\"i€eáåŸ—¾¯ý@úí«7üï€¤ÀŽTªóbç»q^^šôÜWQøßo…EÊG\'u$vž\n‘iVœ—‡\0–„ƒÄ ˜\0t™!rÒ€2`ð°ø§‘)U\"ÓçƒNz#]^Hn”pDz7üw=ðK‰L±ó—8//$®P–ðÏÓÀýQ¬§ÇTéy`K„ËnA2yW#fà-àP|	Ì@0	˜MhöD9¡$†5WRå:Óªð›yïË¼ÃågBqBÓ¾œ,¡(q{îlàðSà¹ð~EQòÀ7€ÉÀ( PFð0¡kW_\0­š¦yE¹èÌeðA\\Û‡±ÞÀŽa¬·x¸	ÈÚ}ÀkaÙ.ùYKwŸDA-ˆ?à\'¨Ñ4\r“Ñ„É`Âh4bPâ6x:\\ä†¿l×\0ó\0[8È¨áÏÝÞ¶U€ób}\"Õd\Z.kS¤o;€£ÿÌ\0Á\0Þ€—ŽÞ\0ÕÂðÑïwÑÞßÁŒÂ8=Ni2­™Œ²ÂžfÇb²`40\ZL˜MfÌF3FƒQ&¹\'Ãé& sˆ/Ó`ð*ð	_^ N¹ažÈtyGhÝú„×ï¥µ»•Ãõ‡¹¿rõe—ŸQ?‡î “b\"ß8Š²ôñ¦P^€Õ”†Ýb\'/#—±9c“]LVFiæ´XÄJ\'\'zÂi¨¤D>¡©fc,BSÏœ™„¯ó(ð«p§‰Y ãÇy¾òy^ëz9æ†Ù;\0i¤cQ,ä(µ–2\'wÓ\n¦3qÔDÆäŒÁžfÇd4Åó|k€~àã°„•„î>™\0þ<ëFœ.\'¿Ûùkk‘FÛ;å¦IÌ´Íd~ñn(¹²ü22Ó2GB¨Và·„2¿]2Ìt©®½Ž\'¶?¡KŠ—ÖËQÿAÎtŸâPßA–t,e~É|NYˆÍj‹·PÙ„2ƒùƒ“\"“ˆ4¼ÎìuñÜŽßŒX$\ZJªªÀºÚ:ÙÛµ‡uU¯òüŠ(pÄs·æð¹S¶¦iÄ•¹y©ÉÀCÃYQÕT6ÚLîºÌ+.Ò`šÕjýgÙÜ÷6ãÖ²ùÐfT-n“ÅÕð¹“YQ¾ÌÝ‹L©)ÒÃI68]Nùë#eæ®=Z÷…ßï¯\\Í#}„¶î¶¸D ™Pº\\)J)¡+ùQßctðÜAnÞz}RôÞ%¸®lŽ^›óºpû›ð—’G\"SjòÉpDze×+I!Ò@\Zýë<¾óq*ÏTê±Ðí»Í†ð~QdJ­„Ã„áˆôãã%Åº´¿™”@¹q2ËÇ­`”}þ ?Ö]x€„níhøú‹’ÍK\rn‹6áøÑÆxÊ[÷óˆì;¹©ô&\n…˜æX£R+¡¶ûŸ+IdJ-þ7š„C àéžNz‘®·ÌcQé\"JòJ°š­±nN!49ö}]¨•È”zÃ»ìˆ¾z5\r·ÏÍ/ðóºÇ“ú ó”VŒ^Áuã®Ã‘áÐköyY8ùpÑ¬D¦«›ÒH‡wA5ˆ³ßÉkû^ã±3ÿšÔmSì|3o\r+§®blîØX‡wƒ™E¨p)©*S*—&>Éð.¨éìëäóºÃTwV3Õ43©?ðE¶%|gÆ·™\\4YáÝ×‡zŸ\\êEæ¥8ª¦Òãî¡º¹šõUo±©s#Z[ÒO¹q2÷OZÃŒq3I3Çå¶¬	á„ÎNæ	_Áë÷R×^Ç§¶$½HÊÞÝR~ÖŒxîæU9g¾B@\rp¾ç<•u•loßžô\"\rdï\nñ¼Ý}pt™„PæÎãóPÛQKEÓgTû\'}ÒaIÁ]Ì,ž©gÂa(~.2	Î•œ.\'²»w×Eg$•H™ËX4acrÆŒÄÍ\0D&\0_ÀGcW#Ç:ŽR§žIj‘–ÚWðƒé1»d66«-æ/™Q]Ã™R}ˆ×ïíçÔùSê;”ÔÇrkú¼öAn™xöt{LQIÕTºúº¢Ye…È$C<º\\]Tw|AS !ic`ëMåóÈLËŒy{þ€Ÿƒµñú½‘®2šÐ…q‘)UqûÜÔvÔr¢çDRgð&±fÛ²c>OR5•ÖîVÞ;õ.ûjöF³êˆL)>Äkè®ç´çTÒÇàI¬z¤t{Ýì9³›÷:Þeñg£rZdJQüA?­=­|ÑQM—Ú™”Ç08\rž•žóöj€3çÏðvÍÆÉ§ËñhSdJÑ¨äõ{érur®ï,Íjrž/ÍÏXÈ‚²ŒvŒŽéš’¦it÷w³½j;ÿþéÏØÔ»áÂkGê#~L—B¨®†È”Jµ }ž>ê\rœõœMÊc˜lœÊÊ’UL3[Zlõñj€gŸÕ~Æ.÷g_y-Ê¡Þb‘)åBSèú’Óã¤5ØœtÍÏS\nøAÙÃ,›¶Œ‚¬‚˜Ï•\\G°µíÃ‹^´Ž\"«w½È”bÔ\0ý¾~œž.|š/éÚ¿:÷>ÖÌ^CQNCl]7¨iêjbkíGö_¼ØJkwk¤›+™REQð«¤K‰_o™ÇSÃ\"é0‰µÇÝÃî³»Ùî¼äíI®?éæ\"S\nâøð«¾K–ÅJTî+¾Yãfë’÷|T7Uó^Ý»CN¥ÚtzS4I‘)¥\"SødÝð$U»—ÛV³tÊ2²2bKƒ‚êÛëy±âE¾ýé\ZÞw\r-K”e™Réœ)Àåí£×ß“TI‡5`|Áø˜¢’¦i¸¼.ª[ªÙÚøaÄ—¢HBÉmë)†7à£7Ð—[.ò”P­‹b¡GëÖe÷å}‹Û&ÜFº%=¦íÕ ­ÝOƒë…È”Bøƒ~Ü~7~Í¯«@…ÆÑÌ´Í¢8£‡ÕAÀM‡§ÊîÊKfÊ\"a†y÷Mù&…Ù…1\'Ü>7Ÿ7\\:\r®ÓE¦Â 0*F|ªO7‘–8–qSáMÜ0îò2ó°YlôûúiînfFóLö´Le_ïÎOF½ýû‹ïgÖ¸YºÜ9ëìwòYýgQËÝÚÝJI~I$‹N™Rˆ \Z$ °,1o«ÄPÎBÇ|gÚw™R4…|{>F£%\\Y¬ÐQH‘£ˆñ¹ã¹¶i\n;ÛvrÀ]qJ~¶ùF–^³‡ÍóŒð \ZäDË	>è|?®ï¯È”B\rF¬&+†“¸%†rîÊ]Ê=×ÜËÜò¹¤[Òÿæ\"j†5ƒ’ür2s(Î.fBÎ®mžÊÎÎ\nø†¾ÅÁ¦ØY<j1\n\'`2ÄÞE;z;x»úí¸ßQ,2¥&£‰ãðË`Ù;YZ¾”9¥s°¥Ù†”7;#›ÅF¾=Ÿ’Ü&7MæÚ–©ìîÙyÉ¡ß­éXPv{Ìåº4M££·ƒ?ìy‰—;~?¼¡¬=/ÒE»D¦Éj²b2ÿ¤Ü4‰\nn`FñL²3\"*aŽÙd¦ «€¬ô,\n²\n)Ë-ãÚ¦)ìjÛÅ¾þ=_úÆ²xÌ¦ŒžsÒÁðq¨îo6¾1ü÷,òÈø©È”B˜f2­™äX²±)ö¨³Z6ÅNyÚJ³K•5*ªùqŠ¢nI§$¯„[xè—;k›®¥¢£‚ãþ#¸´^îÌúóJç‘oÏéXUM¥ÙÙÌÆ9¬\Z™/+éb©ƒ¢(XÍVÒŒid)Ž¨eJ#’ŒqL.œ<ìë>ƒG†ƒkùö|ÆæŒcRódö4ïáL\rß(]LY~YÌ¥Ý^7§+ØÔ¹1¦íDS«\\dJ!Š›ÕÆ¨ŒÌDŸÑ³(&åL&ßžs†Íl4“oÏ\'3-“Â¬BÊrÊèpµ3kììÐ#`b˜PÔ´ÕðVÍú˜&ô>˜Õóáž™R«ÉJNZ6c6¨Ñ­;ÎTJnz.Å¨K[†~csÇ’cËÁðb³Ú°˜†Ÿº×4nW7[ªßgkÿ{1µoõÄèž*/2¥Ø0/Í’F¡}4ÙÆìÐsÃ£9¡×|(€ÑhÔµ]ƒ{ºL-óB;‡‹?èçHý64nˆ¹]×^é¢NYã)‡ÅhÁ‘î ×œõmA‚ôx{õxÐò%eµˆd«³•Õ9ê?s{ÆætÑ‘)1MØÓìd3¢N@´Û8×}§ËIP\r&Ôqù>jZjx¹òeþÒ±N—mFQjù¨È”¢C=›ÕF¾5/êu›Õtí§ª©Š^O/š¦%Ä1©šJ¯»—#Gø°õ]&²þ~ZT÷2½)2¥(–Êå”Ê£^÷¸ç([j¶p¸ö=îž„Êë÷R×QÇ¶ÚO.;U)RVL_qÎXŸ*	ˆ\'®æ@3è]ÜÑð%Í†7ècŒ¹˜:otóÕšÕ^jÿ-gÔpoû}Ü>ñvJòKô~vläçqáçñVÖU²mˆzÑ’ŸñEãUWRA¦µWñ±eé@7PLÿ}ÙÈ4>g<{k*†½ãû·püÄQöµÜÅÊ‰«˜;~.£²FéR£!â.õ|ºí45lÖmcÃ›¢™Ê´7•dºšé	ÿ\0¼LþårÃwEQX2m	ìmçÍjîú‡byÓ\n–M^ÊÔâid¥gÈÇÁ\0­Ý­ì<WÁ.W…nÛ]0yA4‹ÿrà9gJn_ûý…Ar\r¬<^ò”.8ê?È5>Å“{ŸäõÊ×9Ñ|?¾E[TM¥×ÓË±¦clmÝª[é²µ¥¿ Û–éân=u]dº:d2„‡| %Ò•2ÿumÌ6÷‡<ur-Ïì|†-GÞ§©³‰€\Zˆ[Ò¡¾£žíµÛØëÕ/*=<ï‡Ñ,þú¥¾Ù„äã×€…ÐÄ \'Ð<I„s²mÙ¬-ý…®\rêÐÚxÃ¹ŽÇÿ¿Ýõßì9µ§Ë©kÖOUUºû»Ù_¿Ÿ­êwr]ú\nÑ¬ò•Ð®\\áÔæB`û0Ö»Ø!.QœuÈ\0Ž.ÙÉ7|Ö+iqkàü´;Y=îîœt\'åå1Wðø=­?Ê¯ÿïW¼Ýó¦nmmýnW4C¼\Z`¢D¦«‡Æ¯‰dúc‘nÀj¶²áÆMqk`…gOŸþ9Ïìz†w?—†ŽÁáýTU¥ÛÕÍîs»ÙÑ»M·vn¸qS4\"<6Ô	¬¼Ñi ´d×ï}‘nàîÙwsÖwâÖÀ­·º_ãÉ#kyn×sì<¹“®¾®hžlþe$\rxù¢¹Š÷ÞÓµ^úò™Ë£YÜIøBí`$5~uD§:Ã?‡eõþ\\öÂA1ðäO±aÓëqmèÉ`\'[ªØßUÉÊ¦U,š´ˆ‰…#®õàúiq¶ðqÍÇìð|¤[»NÝW‹É•\n¬2=þv†&‰L\0ãòÆQµú4/í{‰?´þ.^…\ZØåÝÁá3Ø×¶—Õå÷pë„[(Ê3d}<_ÀG«³•Ýgvó^Û»ºï\"¬‹78*={5É4K<Ñ³ÉLQvË\'/çL_\rŸ¸¶ÆU(—ÖË;½oñù±Ã,m^ÎÝ“îfvÉlrl9nÅÐ4\rUSqy]œm;Ë§5ŸòIóÇTŽèÒ†sbÕu«¢]må¥^HÖlž\'º\\]ì8±ƒ?±ŽOû·ÅU¨ÁÌµÜÊêâÕÜ9iEŽ\"Œ#ª¦ÒÞÛNuËìnÜÃöÎO¨\ržÕ¥Mæ<Ä‹÷½íðîpøœTd\"£ÇÝCÅÉ\n>>û1ï¶oŽ{ñÆlŠÛ3îdnþ\\læLÜ~\Zú\Z9Þ{Œj_•®	‡ÎïõEs¿„&\'42!eš>YŒ~o?\'[N²ñØF6´¬×mi$ä)äòéÕzði>ÝŸråõ¤ž~6ÔJÜ¢I×M<fdW5U±þè›üõü[?Ó(‘¦Hsöb$Âu¦MÒuEQH·¦3±p\"Ë\'­`‘cÉ…ç/%#æ<„ëaÿpDr‹\"YÐ¸víÚ+}œiÀ=Ò}S(³ÉŒÝjg”e¯ßKëÃOò<­ý÷Ó^æ±ÅE›l5ý=°+¢÷+Aîã?”J÷MLj€nW7çÚÏr þ ûÛö³®óIÑö=K0§lÎpWÿñ4òD‘i!’ÕKh‚j¯ßKg_\'\r]\rj<ÈÖ†­Sx?‘†uÏ­z.ÚŒÝ`þ¸7ªHž(f]Uþgé¶‰”P5_À‡Óå¤ª©ŠÎ|Ä‡ç·èvý\'¢QÄ	‡D–	àUà{ÒmUSñø<4v6²¿n?Ûê>aoÏž{â„Rèƒ£â›7ldå¬•Ã97ŠY¤D”	àQB7½	I2üëu÷rªõÇ›SÑTA­ûUÞcxpÇ%ZÙ;Å†qÄ}ÿÖ™[>—Ì´ÌXkO[¤D•	B7¶­•(•<ø>º\\]4v5rúüiÎtÖpÜYE§–Î@ÍƒKë¶`6ÅN¹iÅ–bZ|-L³Mãû3¿Ï¬’ÙØ¬6Œã)‘e\Z,Õ=áE¶tÙ¸r\r0:Ö¡_  ÏÓG»‡†Î\Zœ\rœéªÁ¯èõõpÞsžv;íþv‚„J,§+¡»oƒ	jA‚IWÒÉ4fâ09°›ì¨hg3oì<¦O\'73‹É‚ÙhÖ£RTY»d•IY\0ÞàËâ–ÃNThhø>ü?nŸßM—ËI§«“Mèñö°»cž¯Þ-;Ï:Ÿ›soÁb°0½`:9é99ŠÈ°f‘Mº%³ÉŒQ1ê!‘F¨4Ú³z¼y\"“ðuJ	ÍŽÖm$ j*š¦]èüÁ`ðBÕ¢ \ZÄh0^(¸âõ{C3üøàBAH“Ñ„‚¢WM>7°„A¥ºD&!^¼¬Ž5J\r7ª\rH4¸êXØòÓð©ƒ®H\ráRÜ,`„ïhVƒb¸nÔ1\Zý]<D™„Ë±È	Ÿ ’ø8´ð1dp‘B(2Ì®Ä¹Ôºp´R’H¢Ï]b©{T™„aJu+‰[CdD%™=ø#ðMç\Z ›Pýï^‰‹L‚Üü¸‹ž>$ôh—WòM™„xˆõ}B³Ò8á¡ÛB£w&Ê‹LÂHœcÝÜN(38PóÐ:DðeyçÏ.B×†ÞÉs hùdÜïèxe…ì\0\0\0\0IEND®B`‚',20,20),(5,'Refuser','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0zTXtRaw profile type exif\0\0xÚ­œiV9”…ÿk½ÍÃr4žÓ;èå÷w#i—]68‰T(ÞpIYfÿßÿó?üj¾dS©¹ålù[l¾óMµ÷¯û«³ñúûúµÂãgîýëfÎÇ</é¢Ç…y?®ï¼ž~½¡ÄÇëãýë¦<òõ1Ðã/ÝÙóÍãºú(øûu÷ø·i÷õøæqj»î©7Ý?zúw,c%ÆÞø\\°ü]uAÐŸ:_óõwá\"ß‡P®¿ÛŸcg^¿}\nÞ)Ží+ÂûP›ä§=^wéÏ±»\"ôvFîå[ÿþ>û—·ü»sV=gßO×c&RÙ<Ê>†¸¾ãÂA(Ãõ¶ÌïÂŸÄ÷åúÝø]yÄIÆÙüžÆ5ç‰öqÑ-×Ýqûú:ÝdŠÑoO¸½÷Ó‡ëµJø›ŸA)ˆúíŽ/¡…eB%O“¬^ö¯sq×}Ûu¿é*w^Ž+½c0Ç;~ûmþôâO~¿tŽJ×¹+˜åŠóò*=¦¡Ìéo®\"!î<bš®ø^¿ÍkZýRbLW˜+Øí¸‡Éýª­på9p]²ÑØ»5\\Y÷NLÆ2`3…í²³Åûâq¬ä§3sZÀ2àRòË™CnBÈ$§zÝ›÷w]ë“¿_ZHD¢i\n©i¡“¬õSb¥†z\n)š”RN%ÕÔRÏ!ÇœrÎ%£z	%–Tr)¥–Vz\r5ÖTs-µÖV{ó-\0a©åVL«­µÞ¹igèÎ»;Wô>ü#Ž4ò(£Ž6ú¤|fœiæYfmöåWX´ÿÊ«˜UW[}»M)í¸ÓÎ»ìºÛî‡Z;áÄ“N>åÔÓNÍÚ#«ï³æž2÷yÖÜ#kÊX¼®+¿²ÆË¥¼á\'I9#c>:2^”\nÚ+g¶º½2§œÙæiŠäÉšKJÎrÊŒÛùtÜkî~eîÓ¼™¿•7ÿQæŒR÷_dÎ(uÌýž·?dmõ‹QÂ• u¡bjÃØ¸`×îk\'ýú:–ÛÍ3}Zq0ÆsÒs¶žv;^p‰å>™ƒqu8W™ˆ@ˆ§(Î.ÌÎ€ƒÒÖr‰YÑïg†PO\rú~WŸú.gSx4ÁNž	|=¢ˆ–GÓwålw½…>¢éñÏ4/#þë€æyŠ?Ð|ôÌßÐ|Ä¿Ð|Ä¿ÐümV¾\ZÐ|7Í\rh~Z7Ïš-ÄUö+8Õ6¯ÆZ6ç1–Ézïv=œbÊu.”@Ž?{ÎšáýèòêŒ3ë†‹ûÕÞo¿šw/€GL\"W;¶¯“\\W³7¢kÚÜ–[­E0‰k&•¶îÙ§5¹Ò÷ÀÎ\0ƒcÈ#—Æ\Z39LŒÕyÍ\'ÙàÝRîBø™ý˜VÈÙ¤s@G\"²ÖÆ<’ØJH.¦¿ÿjþâB@ÖÆ.“À²Ž’ìj(&^×Ž±™RòáqÚŒÙ\rßy”²÷™`-ÉÚ\"Ï¾lYÄÕÏÒ9>ÙGI›b¹*»‡œ\0Whõ÷L¼OÄ:w4þC¹Ý%6çÐW ôßuaî§ÛOÆ~ûÕô¿¼ðþz\Z•ëÖ-›¯¥_µªï†é,‚\'…/¢ðyÌßGáó ˜—(ˆ,«•R‰yå| ÙQ5QØxO4Ž‚\Z5{ßSsâë€S\nu‚Ù¨ÝªÁ=úŽˆöÚ¸ËôËýH©ßÓå¹Ô•Ôÿõ=º•p(–Óž‰^\0A{‡s•¦¾½Å-…ù\"á£øþa8s÷ïÃ™·Óû—áÌïOû³áÌGÁûîpæ£à}w8óy.þ~8ó7©ý›áÌ‚7–‹;¹båG}6”ä®eÏ°.£kç>kÕI#0Ù?êÆ	ÐónTù7¤â|ô\ZJïŒÔÈJŽ-b2Œ«öMÙ\'Û^¯fyqá*“\'±”3!µ§K7Ë![!™0Ë³ì4þé…s?}S»å¬™”NV_ÜÅ~8gó<i¯xk.Çù¶RÞãž³ðdœ?µ¸yîq~‚TúX¿;e¸ˆ(¨òæ`„Ž€$’kX™“ð79{[L^³¬<Vƒëxª\\Ü\r£¥uäf#ø\"D©­Õ\\õ‡¯æ£¸×ùâgÒôÇ^8Z	<ðlžñŠ@†¦å\\_PÚ•+¦wDóæ—€žë_çÂež ™Wh~ÃÕ¿ç_H}UÀ•ÿ±eK^	å¢¤ß›\\_t‚@¨LëS\Zwû<Ï×|>á?Ï7:Ö=“í¯+”M[jÂ°ê(ûë:b¤zì\"°íS*rkùÆƒD\'òà>v¬c¤hgò9MHªÍÑ[à9ËNi\\…a÷ó|»ìšUÊ×cšÉÝô<³TÏ¤ÓÄ9Z0_™ç~ÏÃ³”åfÈÌ:Ùµ	3b[B®@G_Ê GO£á!i\ráf—5DåºÓULüfäŠ•û5Góû$™c½.LrÛV)O[Q[£Ü:·S¿îOì˜y™‚Àíy\nt »/½§Á5i¼J(9¯+Í=Éñk\"¯Óö¤«ASyžÈS Ì÷\"ñq Ì÷\"ñq Ì÷\"ñq Ì÷\"ñq Ì÷\"ñq Ì÷\"ñq Ì÷\"ñq Ì›£ˆ·ð®·-: ²‹€¾•Tð¿BØbô0œOuc‚‚W[ÎÏS€>Ú@zÞ!Îó–Ãóáø½ûÊÚèÈ›¶w‰ÁbÆì¶5¬KK¯ó\0Í{¼¤ô-¤/MÜžÝÄV¿@µyÅê\'éOVnñé%þ?•þæÙ\0}†ØŸÍ×¼Lø…éî™\\T÷ :ÍX\n\"K§<pÿ¶4ò{Á¾¹pÿ!«Må¢í±j˜vUUÔÂ hmóÏê]Gä„‹z½È£ã²1“ß²Z¯–ë•®õæ7º~ÿï¸ëuñé½Ž2+¤¾ZˆúOÄŸy¿øøsñg~ŸôÏÄŸy6xže°´Êà]…ÿ–?i¬Ø\'ä[¼êž ‡{\Z/2¼®m±©šºh»­SA¤]‘‚åš°Í!ð¤.¥¦¡·z¡ÿ‘6Ã.m•Aqçé–i¶kÍÙãæ,Ý÷ënZ×v\\%+Â=ŽWèWµ0ÐWÔZ¬ÕˆÙ¸ÞacH·¦\0,\\#,µw!y¶-»Š²6 ~\r´}\'º½lgP9VËDu¦ìzÝ• äSR@ä¸ê\\·’£\"ƒk68_|,kÍ]|p+ˆ÷òáë¼ïYßsVZ_æ¬Ù½LùeÂéò“×	›?Ì˜ùŽn¿©Ìo ¿/Ïöç p±ÊŸbj~uWÍ2¶òÊ_åš¾/ùÁ_;}œCó>‰?Ï¡y$ñ\nÊwUÚ[F6/aáïÏª¥~•=óš;0wXtÁûu‘˜¿«’¯‹Ä|_-þ¹HÌÓ=¸}Ô–·NšÏm§“ÇFOhWIM\"Á UPBZ[w5Ÿ)£ý\ra`~W?[e3RÏKƒïVµÆêÊµ­T+¥¬½¸>—±`$ƒwK§ZfîîäëÚ9Î‚wqÈ+@ú`maJâ‘]âWš?æYýüTL˜óÄÄ€þj#ÄU³§Ó÷½û¡D¯™„ŸÊQ¦À…É‡\nTO÷S63tæ\'á^a[‡9DˆäŒ¤%è„\'†„*Ê<_;¾ºU»sâ\"JÂ˜Œ2ÉÄTÕ\"6…ñ &EBÔtïP@Mµ&íK P~¸QZ ­áñ ù6zåÁG9P&<Pð¼n…4‘6OjÄ7™‘³(L\\ ¯éB7>W¬EI!kõŽÖXËC‹Í-ÈŠKóL9…¡­ÎÚ´žBÀ•×¿Zy]#áôÉB¥TíãÖç€¿Ô…ÜÏ…V¸e7±„yú˜kµ›)Õ>÷èŠRõ-N˜«7daðZm	s2\ZÑÍ-`5ÜEgD×<ëÚ§¹‚9}†9ÅŠÑ)Aåi HzJ„/W^¶2ð)öÞ°ëÌ%µìò`.;Ñ›V÷Ý·æ$úX\rHxÓ ˆ¥D²GÊ‹FÛa›êÒ’˜Ð:5¯,x¹¥_®Æ£3Ãîy±ïÒ´.jÍ×cÅï›¼úE)šD *Š0‘.ß&uæ§ ¥~\\K¡%º‚v62Ð¡ÚflÜÛ•uèÇí—«kFƒØêÜ£3ÔVŸ\r¤PñØv£\rKmtŒsØ(!:º†6þiÓà¥ÛÍ{ÙýSÕ½¢CÜÅð4%)ˆ]¹†ßÜÎe5¿ÖNèÜ¹CÑÑš¶tÕÌºù™‡77£ù~íV¿ŒÖ®Ûp—›?m|ðNo7í®›ƒóƒƒÿÍPFÓú/†2÷þûPæ%XŸ5Ü¶÷Ê­vEqê©¦jï‹Â´‰ZØ&‘!5 ƒ\\h\r ÔJ¸fÝRPIƒgé<?8à‰ÎCÄÜzÌ¡e£•ßme¢¯ô	EŸ©MâÒè|‘G£·Þ²$;fdš \00R<¯€°¬3ôf¸1PC^Q „uœ`µ^ìœ,?h¤£(ür ×é­½µ™`¼‹•PœtÂ\r¢}åãöÔ–ˆ¨¹:ae|U¢#Âêc.—$FâDÁ„Æ™pð;$æ&f‡x§ƒF²Ìkáz<[’}ƒè–°hC<ŒCu0âF°yÃ¤=ìÐÉÂ9@>â´Kë(uTÁÑòç\Zuy¨A•íkµ³»Øë¢ûˆ‚p:ÞöâÄ³à¡µ‰8¨ËuÀ¯DœrJ`óvºêÚù†£¢Rj%`UÊ mªèfaáß@&3‹ê„§Èøš>d<æ`˜ƒ¥K	È^‰¹Žna,9¹ª< ×Îc“{­”r¦×u÷ã!)ˆµ·¦2tDfÆÂ¿Ðod\01¨ªcÒ¶lš1õ´ûð\0žHUÑàïªÄyÅ},Ño(u’ÎƒR¼YäÝ}áÚÆ]N*6€‘mE”õÞeVÙå±]ÞÛ]ïè¢‘eãN}­^n¼! 0íŒ(OB@=BúÙB.Ûa¹­½ñ‚¯WÏ-Z[šmÓ´(Â‰Ðë5Â¥Ã£amiuº`V_zŽúMëÒ3žWÈU™èº…È…]³y·•ëco¼ÇwrµH·éWÈˆ©=i‚Û‚ý\"óÌc_@¯Ë ˆ\"^–!Þî¼¼Ûw1¿Þo½|¤!ï½ŒkIãÝJ’ùµ”t¯$ýtÉ<«¡)œðÀ…„@†¤\0>	j°Èl¯M7CÃøéìÉ´EU`Iô\n˜e‘@Wä=èœ&Q@\'!*V(™:C=Tƒé¢ý vz«Åu¥	\Z¬&ÐZƒ\n€\Zl,Uu³°Þ£pRëêé*šRÇk:e|\0äšsŠd®G?Ï³‰yLiÌÞB´bS¼Zfª½Àß~Ž†âEŸfIÇQ’Z´Üä}ÇÔ„.©gx>,êùGÑn|íë¤,¾X<#°ŸÇ\r\rèÑ[cÄ‘â2Dd*Ü.\Z-XFÕ*ïª¨¥«ýæ<6€dk#~¸cÛÈ„à‡3@\"aÀ«sëùJ²Jp ”Q“-Êã4§ºŸèI8*\0ÜS\Z³·ÔVzfi1ÉÊ4\\ç¯QCvÙæJ%ÃpP4Y°U‘¡îÆldÇêtQ@]¶fH­Z/*2”ŠÖôhÑ<@)Hné´e-Ô°ÔèMðƒËÀq¦ˆ­ÏŠ%¡Ùž³‡Ì;-OjÎUÜK­ø \08lBÊsikÚÝ˜‘*oö¦ˆKàNx=ÕÇ¤þè@¼é¬@a Èà-\Z2£À) È‚¡‹„§»$˜•D¸\ZX‹¤¼&J»®Q«Ð\'Ø„Œ\r\\B&&2$\\¯UEizSÇµñ(åHz|%ëæ½AHaê¦¢Ã˜{t×vŠ\0Žô\n­—šC°/,*Å[x£óg-äŽaÀè2óˆ(ÖŠ‚E;G„±RÉU½\\í1e–¨óY½J;Mæõ;~¼0öcAÖ|´\"ûÝMhó¾~³©[µ õ¼ þ%®´åóƒÔ/·Ò_¾Â”ä¢ ÃÕ ëÊ-C\rŒ:†ÄuÓ	)Š„G\\¢pñ„Å7-=<À½,mð¦ˆ5JØ‹ÎmeàÒ‘õn•ŽÍuxaíÿ`Ý´tª£À0-?”’Œ»j6/C<|OQÐäZçÄ!1ä\"zGâ!p£B¾“B¾¡€§\"&e†HA¥dàúqaqž\\Ì%íàOŒ¡§®ÑC¾Äò\nSÚ×‚Ä¸·Úñ»µ+¦à¼ar#T?B‹Ëxú†0ê:d…é§*::(+ŽTÑ2€Œ®ƒç9áEPEÐ|9è)ÀvÑŸ,³Ùµ£]*|Ðä0; ‰Bt	¢\"<xt›?°ÞpS‹†Ä†ç¥¦lË\r´GzX}–C§ ‹Ìõ¥%¡‰5ä@{A÷¡\"£ª¼/€Ð‚ÅØ›çÕ:‰ Çí¢<äB\nŽûÄ…ˆÔ™l\"hj4&ÜGÌÌjà½(@	Â*!Hõ¶vì›p~Ùyæ}ëý¼óÌóùŸvžQë¡Y1@\r¥¦$\"rñ\nKŽÖ‘Ýðu§ê°·é:è€¬#t\Z´\"øÙtîf†º×±µ›@Šë×Ù(%ùÜ«ÌÚu\róýæ¯éê7›àÒ›o6~%”´í#jsé^\0Ó¯\"¸öbÜ-·¬N.×2ïË¤â½ö2)}¤ëí´®3/Ózl›Øoîx·-þkZIÝÛâimùÂòQî.®‡ií‘¤rcq*…Þµ”Rõ™	_´Õ²°é:\r“6Ù>`†AÊ¦Lôq7ˆs70â÷ÑÚZÑDùoÜ…vb`U-@¤<Ðýi1…òðm6 vÞhÉ§‡¤>r?Ü|Á¥’Ýum‰(ª¢ãy0µÏ‰’Z\rkÃÑàÖOU×©1¬Ø¾ìÅî\0Ý¨Ic»`X¤\0¤€rÚYÓê&š‹@©¢ªiFu™Ø\0.AX‚%ö ?ãÒÉ¯÷W‹\'Î0î6êX/†ŒœGAu¤=xÂ§uøâÉ‰D\0:B•…>ÄõÙh˜±ùÅÐx \r­$Ë<uä†„â3‚ì]ùIþ =³ô6b‰ŽéÌ\no>¶P	ä @ˆ#Jè…<À6¤ÐQt(ÀqpsZö%GÚŠ€ÎQ[)Ê¹]‚§L8FÐÖZ,‚þ6ãrx¨û¹ú³àb;uiÕBèÖ-‡ìµj‚ÜÄâqÙs¹PöyO¼	Áªƒò×(-,à½Ð+ÈìâÉ´BB‹¼é ¢wx0gšVø¤\ré@­ÉDo¿1ùR‹|:Z¾0öù½”¼“7< Î»X”?8\n´\"Îcã‘]Åâ8ðj²8}.ñvã‚^¦’)ó«žgTƒ,u¨\\Ô#âÛay¨€hÚibl9hF¡Ô¶6˜:Ä‘ðNñ!?RUæõ$ïñëˆÚ»ëê½£Ãý\\%)©¹53å¦cÑ¹;Iµ¸‰§#Ðd±H$“‚Ûzœû(ÛpÛÏS¯õI¸f“/«iC+§¾µ+.D¯ŒÊ\0Ä||žNŸ4ª>ôuéPq“NÉ?vßÌGÛo_l$jÑy)LÿÚB3î¡}¾¨cöo&Õ£ùt»û‹Mß·Ó2_>úzïöžœÑ©EÔÓ\"ßA¬c\n¾8\\:‚Û¼Õ~Ï”	fò¾>7ÑúÓdJ&.án´$öÔS°?qB§tqÃ“$d?Î•F[:¸š¼å^³\\Ÿ½lIœíáò¨ïJudßè ×¤í‘—XØ¡•IÞ2ytÜÖ*›>Ï\ZµctfK?ë#mwï²ßÒ†GëÓ¼_³e:H6ùPLúX»\'É&ÊÃâÐ#ÌGÕN£´z¬ORbGpQUÀž{T)¹CÅCŒ»p{;kƒç€pìž@î(T\0E!—Œ$Ãˆ´?Ân ˆtn¢mÐ7bVé mçéÎÑôÁ˜:Az‡\'¼ˆÃÌÔ‚©-$r\0q’9µVÝÖ&rÔÂ&}®ó/ˆ:ð±u}RZû7r…½ëŠ®äÔçqûzá.’¬°y1qžÀ¡ÀU#ê|,É._Ÿä	åÿ‚9]˜Eå )[	´GaWZoáªü¥££NsõÒÿI‹^¬P®„ÁøãÚµ^†Çâ@ŠR8`¬L2T»#éC-\\=Yù—ÒækœÐtÄr*<(Š]&8è•ÚdŽ2ë¡X,gHÒ€`’FA®2Í¦=î3&šõ&ÔP-5k;ý½ÒÞ[«“úŒM£›‰::\Zd@.B@à8ø3hcënVêd…0¡Ï2´[¬ó×$²v—º.ëb ¹à\Z´¸ÇÝj=k*@\'»~áÏË·º»ŽÞc`Ôïˆ¾Ay¹ÛBDXÌ 4±ð&X•D`ÜC¦ÖxJø¡/’{@™Ž¦£;<6C{@.Q›>~/•é¯•¿d.=¯­Õ O€Qx‡/\ryô†ùìZ§Ø¢J\"Ï¸&­Š Ï2Òë$X ™àŸÚÃ£–Æ\'ô2mZ”êZû¯Î/,hêé h¸_×!ä™\rÚ-65QÓ›ÄPG	â>\\0\Z±L[r§FcR5Â™%A¬Åk*R‹Ïü½­aj• l:w 7É•6=-ÃT 7W¼6–¬èðú©‰u¡–T±ð›¢r×éCÄ-„yŸ±B¨ßÔ 5¨`_b1¹oIßá½í\ržóÞH\nÊ§±ýl8s÷ïÃ™·Óû—áÌïOû³áÌGÁûîpæó\\üýpæíôrÍIÛ¤ºOÖ\'¡L­·ZÔ“­b:3cTÑSvUÈ—ÌlS¦%@›Ž¥ùk.Â©1#oØ]g5´¹R:èÖ†´®3{S;‚µ˜¼.	=E‡qØ¾Ãà^¨™Ò°±Zé5¨u	FGÁÂTZ­ê’Ê\0êp%!Ø!\r2?ç+Åz°B-\\6C>ÆêcçGkÿH’“ÛÌ.×^8»A\röa¯×>·ˆ´À{Óú‡–(³Ä“mâØx8t©—ñè‡»LLŸ±Ú¿”ƒã±•m‘:Ï˜Uç1„#g\'-báQè{¸ÜN-ËbšATlwH¨	CˆÄLØ.´´4tœ¬´ùôú<ØžŠ/ŽgÖÔ£àŸ©DûäÞ€\0àg’¶µpzÕÒ>Fëcé4ª_­ÀK˜6ñl’EÀû)>¡}pè®sµX~Gp¦‘î ÅU«Îàà\rm¿>­ŠMÁ¦«O·?NoÉjx§·Œ…oÒuœØœ—ð`õ§y¯N½o­íÊDÇ´>.#/Ž€çôq!mè\Z™¢SX\n¸M§ ¼ý eEêYÆãR—§Áž€d]sUm7“®ªŽ“Á§úŸ`ÈçAc:‰A1VA×ÞDî(r‡F„Ì!žÒ$Uˆ8€M{ª0h¼­À@%bùÍÍOŸ9þð#°XbT·#XpÔJNÿë-Dí¡jwî§—œ,®V<-¼°®SmÚðë„nï¢ÍzbNékc3 :c3@’AÈŒaZŒ\0Î1[-)¾¥éìÏz¬ÐÅ\\®	„!ÄbMc#ˆ#bv7` ’µI±Ð”ì´N´\ZÍôô™¥vi ¡p¹ šÎë,­o0§l6‹Ž„ß¶}h¢éáÅ¿Cªh­C€m‹TQÙÌGâ:-ŽÇ\0}òÞÎ™ãaá#ñÓGÑGËáUŒþ€ûÞÞÔë?-Ï”º6´Ò¢ÿ«ÅB¯ŽS¬ŠÇxÅÕî…nO	Ñ†ë¶rÞ0vªçýÓi»Ôü?MÉŽðáé\0\0\0bKGD\0/\0;\0Âç†ªG\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè\r%(ñÊ\0\0nIDATxÚíy”Tå™‡Ÿê½›ÞØ\Zš­P7dqÁ†$21q:G££c’3\'xœè89NæLc×Ì$EPã( ¸DdG@hd“­ºé†îê®ùã½e7Ý÷VÝª®êû{Î©Ó]Õ÷Ö½·ë>õ~÷½ï÷}¡h4Š\"q²ô/B2	!™„LBÉ$„dB2	!™„’IˆÎ#\'öñaàb`8PàÃû•¡$ík¨Óiå;Û€åÀC@uºîd(MË‰ª€g	I<ñEf²¸˜-™ÜE¢K\"Ñ+ó$Ó©y¸Uç‰pIpfº4ýÒI&‰$â!tO‡I—lÞt‰$â¤X¤ÈÔJ=P¨óB$Àx`iÐ#ÓÃIøÀ3ŠL°è«sAøÀ`:1‘‘©Îáw¹™7ÝOþqqeªÔç/º\n*tB2	!™Ú²Rð‘EŠLB(2	!$“’IÉ$„dBH&!$“’IÉ$„LBH&!$“B2	!™„LBH&!„kr2t¿ŸÅæì]‹ŸH¦Ôói2¾´Ljæ	!™„LBH&!„dB2	!™„LBÉ$„d¢ë€cŒêcîT33¤\"“’IÉ$„dBH&!$“’IÉ$„LBH&!$“Â!µyêc’ÉÐÇ,ÔÌB2	!™„’IÉ$„dBH&!$“’IÉ$„LB¤\rB)’¡BH&!$“’I!™„LBH&!$“B2	!™„LB\r\rB)„drÍú˜…šyBH&!$“B2	!™„LBÉ$„dB2	!™„’IÉ$„/œ-™’Ç7yÀ@³ósžóz{DõˆûÑ™¬’Lþ“¼Ìn\0*œc¯pžÏvþžƒÈtÆvÖy”“gpmËLs–›¢ó1)Üô.vž\n|ÞF	ða›çyÎ6K&¸Ë…H1®u–Ÿ©sß7êÂm«Öù“ô(ÐèDª5óç¦$//Ú§0…Ûªt~~Ã©È‰N-©Øx\"Ó9I^^¤7W9Aâ=`0¨*2	áž`00x˜Ü\n‘‚™>isÑëvy‘Ù„œˆôŠóüsàçŠL‰óû$//ÒW¨<çñ0ðw’)qf¯¹\\ö5”ÉëŠäÏ+€þ’)1næt°Ìg9ÑD£­äq.°\r¸G2ÅOø\Z0xØ‹¥K÷:Ï§;è¬î‰\"8zŽº:hh€¦&hIJF;xÔ‰RJ@$ÀóÎÃ+A¶¸ÿ+œ¯´;Øó•+ ±êØk£þÂa(+ƒâbèÝŠK /²³ ;rsí‘íG”ªÇRéK%Sêx \0Ç8ø?_Ï‰cÇà‹/à“•pçÔŽ—4\ZêÂ&M÷Þ0è4è]a‚()= ÿ\0è×JKíõøÅ*–\0Õg&–ñˆF;µ°wðvë],’ã¾q/ð,–¸@ëÖÂã3á/Où:(q~BN”WÀ€*8g4œ5\n†\rƒÊ~&ZN„â>„\'Û$“H„\'€[~—pŸ3ïKÍ^ç–@åé0òl7Æœƒ[ó°“„R3O\"%&ÒöíðÓý‰B^hª…íÃîM°úc¸ü\Z7&N‚nÝâ*ö¿ˆK(E&‰GŽÀc¦.uDé\0èw\Zôª€GgAEE\"ïW„Rm^0™ÌˆkÍ–xyŒ(N‘\0ï€][aé0¦ícü©õ[±ª	É$:éq%Âaøþ?ºËÌu\r‡Z¿sªíëÞ½ñ¾Ûÿ•šyâ¤Të‰§ÑŠáÆ1™yÔó–Ãy£ãY3ª™Ä‰,ŒK¤gžÎ‘biô¹qŒƒwr€•jæ‰“%†Æ%Òý32ã›jOý·ûgÀí·Z†7ÊÝ¶‚$S0¸ÔsÂ!±“/SDrÃ_ž‚»nG¨‰n®Ÿ$S0xÙSÂ!Ÿ=œú{Gé-ÔÓ’I<á4U:&\Z…úzøÕ#ðø¿ús½’®Bý×z]«ºñ¨¢kSåºy×Ü‡Ã‚_þ‹»w/ª€§CY9”u·ªƒ½{ æ€U\'$3ÑPXE¥Ð#a¨÷˜Ÿyô­„[¾çe­©Îÿ´:¨2Eå”‘„µk`ãè6ì\\Õ¾D½À¤Épö¹Ð¿?””BVìý¶n…7^…÷çú¿¯ƒFÃ%¡WoèÞÝºpìÚ	Û¶ÂòÅÐÔÐ~\"âÄ¤ÄÅ—Àðán·Â2¢Ã™ÄWii±ˆ´qüùy˜ÿbûßò=†À˜qV\\:Ñ9©‹ŠL¤PÈª¸‡°¾HYYðîÿöuÄxøÎ{uÅ((°kŸš\ZØ½–}\0VXE„®ê¬žÏC„ÎRÉ$ŽçØ1+V}ã5w\"]|\\=.gÂ„BÇ•BŸ>pÁ…­¯ù!ÔˆñpûÝpÙåÖ)ÖÝ\"\Zµ5p TUÁ *ø°\n–½{Ö¹{ïÞ¿~ÒËÞ<s²è$™‚L$ûöÁGÂ;o·/RQ\\0ÁD\Zwi«H\'½¦É…^½üjÄx¸ãn¸r²]Ÿ×ð\nYçÀìl8È–é×\n\náµ£pð3w	‰%7Ã„‰	E\'ÉT¢Qwa{5,[Û×¶¿|i/ëâÐ‘H~ÕžH\'’•eÕâÙÙpèTìsw\ruÓ$Ø|òóÝîÙ¿cåp­›×Yàk¥pØjî–/kÿ„+ª€É×Ã¥L·}…Ú\nõí›á’iÉ©m¤êÑÃ:ž!”ôv¿½7ßð²w¾â²Îª€Ë‚­]ÝqShÐp8÷<èÕÓ¾ý½¯PñˆÔ6BUVZGÁ±ãÝß»sª}Á¸Ô»‡\'™ßÄ«¯‡M›`µ‹¯z÷µë‘nÅñmÏ«P‰ˆÔV¨>}aèéÞ¢ÓKžš¢×I&5ñ,¼q=ìï …œ[bÙ²òrïQ)¡ü)&SY™QèáKàþ–átG_ì&®d\n,\r\r–xØ´Ñ{å@\"t$”_\"ÅÈÎ¶¬^¶Ç<Ûï{YúþØ/Êæµ‰·ãsØº©ãå›j-Š…ÃÑüñTY>¿EŠEà¦FïëÝ4	>w]83I2•¦&+ùÙ¸j]N[´olÞ§\r±ÔsV–¿Buï“¯öW¤hÔ*;ª«!Gô\r‡­iÛ1CÔÌjT:vÌêðª·º/¹Ù¾–dõouuþŒêÂ‹àž˜L~ŠÃÆ°ùÓãÇ†pË*×Ót…pú:)2‰æf“açØ¾Õýzõ{aþKVÆ“›§Ÿaƒ=ú¡z÷¶Gâc‡/ÒÚ5°d|ü¾ûÂ×ø›z“ÙŠLA£±jÂp`··õï€~sçÀ¦Oý‹P±R ¿EZ¸\0^}Á}}ÞÉpŸÕ£f^ÐˆD,ù®HæÉ*\"½òçÄD›tÀƒ%SÐˆUxG\"ñ§ÄÓQ¨dˆ6{‡;Ê$Sij´G\"ÝÌÓI¨d‰ðŠëÎ!ÉÄÈÅªÅ%„J¦Hàu@™é’)h×LGê ö°?ï×™B%[$ïIˆJÉ4\Z¡®6¾tqº•*‘<\"™u½ÔÔ:ù²Ÿ¤R¨4	%™‚DV–ÝÓ‰§^-¡üž\"\Zµ´©É}z|˜* ‚Ds³]7åæ%çýcBåæÁ7‹¡`ˆÍ”îçþ‡ÃVÚ”>IÍ¼@’mcd%ñc/*µŸGù™²²l\"è!CaÈð´û÷*2œ(,JÎ{÷	×Ã†ã\Z4Èß¨“©´ÎÛzMæç¸|\'£gO·KÖH¦ ‰”Ÿo¦ÉéŠ+á¬QÖ}!þYÏOßÃˆ¹ùŸ¹c±d\n¹¹Ví]Vn~¥ÇS%Rg	¥fžø\n¡E¦‚øÞ™R-Rª…r?Žžd\nYYPÔ\rzW@N^æŠ”*¡¦xšèíÉ4òóí¤/.‡ƒ,R*„ºÞÛ¬ò’)hÍ¼‚O.‘.âé\"R²…:Ãuú=,™‚H^ž\'WÞ3¾$Dº‰”L¡p»äÉDrr ¸ÄæTê*\"%K(÷s6­–LAmêuë=zz[¯÷0åkÉ©±ÑnÂæåù;ŒX4jåS}Ùûû<ä©/Ós’)¨Ùx=†¸›¿(·†ži\'èÈ³üéÐ!›‰£¼ÜÊ„ü\Zõ¨W/›	ãà8°¶¼ïí=¦\\çvÉ(0;(2=Ø•ãL›t\n0Öuó¥±*ú»“	`ð» ÷U¤0,˜OÿF…©Ó|F¬œ9†´ù§¼4k{õr»ä—eåAé.|l¥@!p›|”ó¼ãÈ4ø4ØðŽË³ÐîMû/ÒãÙ~l]o¯û)T~ÍÞ1°ÊŽÁ­L³æzÙö—!OUã™Íaç›ñ(ð40è¸W^(“¯ò´È³Ä…_Õæ\'ŠÉé`\nY„*,ô¶Þø	^–þ¹dê\Zdðû,G0w×MßÈÝV\ZÁýP$9\"}ùÕà³PÑhk7·wýÔíã\0\r´™×V2u\r™²œ&ßQ`ëµïü\'÷[Úµ¾Ø›X—÷öDJ†P±y¨v|î~¼ñ·yÙÂNõÍ&2_yNÓ.ìþ\rpwÆ——Û7qG4ÕÂúU°a=9’<‘ü*6Õè®î®—îú©Íòáž‡$S×á?NòÚ\\`§ëwøÁÜ-·w+,xV®°!–“%’_BE£°?¼÷.¬\\æn;îôrT[œ¤dê\"ìÚŽŽ’Ôk\\¿C~¾e¯ÜD§ÍlV½-›ÝdH‰\nÂ¾}ðî2X¼ÀÝPÐ³æz¹V¸¯½X‘™ô\nœß‹ó€W:×ïpÝõpù·]¨»\nÞ]bßök×´?Q4š˜Hñ\niÙRx{ìr9uÎµS¼ìUçFm[TÑ5¢SŒƒÎc–ÕûÐñ|-YYð“‡à­?t¼µoØ(§Û«aâepÎ¹vO(?¿õTc£U6,Y¿ùïøE:Q(8õ}¨hÔF/ŠE¤ù¯Ã{o»›ÐmYµ—îépŠB€PÔïd¼1	x;Žõ>q¾Dû\\¸ë*ÚÔÛ·Ã“¿çþ§ãö¾#m„ ‰WÀðáPÙÏºw47Ãþ}°f5<÷¿ðé2ÿŽ¦t\0|ýf¸îTeÕï¡m³¶ÖDZ²–-u+ÜUwÌš7Üè5*u?Ù252#O|&7*+áš)°u|ðfûBíYgMk­n¯¢U£××Û=©Ï6Z³ÐObêPØJ„°ˆÒÐ`éïÍ›`ÙBïv—½›2Ã«H\07œê™\Z™D²¨©Å‹à÷ÏÂò·Ü—àä–8%;\r­	‹¤‰_å•P\\f^m€º0Ôîs¿Ý)3`æ¯½6ïV:×¤’I¸\0‡aé;ðÖ˜?Ï}1l&±¡ÎK%°bâÓ8!žNÍ<]÷¤#¥¥0é2èßßšnófÃ¾O»Îñ­®ñ*ÀÏÚ)\"SÌx‘nD£vý³nüé9xõyw™±L©Üóø[€a-”÷™æêÌMCB!«¶6®¹.½\nŠ*2÷x¦Ì€­MñˆÔ\0\\áfÁtÈæ½LÕÙ›†ÄÊ5\nZ¾ÝŠáƒ¥°{Sr~óÐSðïzM6ÄZMßë¨y—NÍ<€m@•ÎÞ4%±›°Û¶ZóåÁ+¿ÍŒ}Ÿ·ÎïÚO®ËÈÓE¦I(«—Þ47[åÃÁƒ°s‡IµðMXõž»Ú·ÎhÖýâWñ$\ZÚ¶˜¦yj§‰L\0\0ÿ¬³6Í“--V.Ãúu°p>,|ÍªÊÓ¥é—X4rpHg™\0žþAgmÐÒb•ã;wZ³oÑBXþ^jgó+ª8>*>ö\"\\C<×F	‹”Ž2Ü‹uz™Òü«­µRžµkáÝwàóm°eUC$#Zå–@Ï­â>»\0Æ^àÇ€/q‹”®2ÆFR”Ê\Z­i×NØ¼>ÛÖÁŽj€Æ£p´.~ÁrK òtèÛöíágÁwo±ªõnÝlŠÑN)ej+Õß:	Šr±Ie8Ð7á¦_$b}ŽjÃŽöøl‹½^{Ø*Êî·Gs³­WPØ\ZåZšígA¡¥âKË¬\n#\Z…ÊþpáE6¢l6ln®ÃyÊÚeªL\"µLþHëà–ñ\'*¢Q‹VMMVÕ}´jÂPs>^nõ]«ß:~Ýãá‚K¬€õ¬QÐ½»U³ÙÌ……&Pâ‘ì>Ò±ä’IøMVí_K ¥ÅäŠüÍÍ©b¿gg·öØ=vÌ93éo µ`NŽ½îÏ@˜\rÀU´ªK2‰d1«LIí4mÇºËÊ:¾[¼3n,v.|Ec@ˆS1\r˜@ª+ûC!“(b‘È¿hô­dˆ$™DG,Åºh?	D2ø8¢Î1q’PÔÌq-õ¬­B$ÑìKu²7&™D¼R#}ÇI©D’IøÁÀ×IŸ{€\rØøß·uÆÆ%“ðƒKWãf~(ÿz›Úeigþ$“H†X·`³ª$4#NÓmV½4]\\2‰T\\cM&b™ÁØ˜‡ùíD±­Ã;Ô`÷†æ¤ò\ZÈ+ÿ3C;Ë•\0\0\0\0IEND®B`‚',20,20),(6,'TransfÃ©rer','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0CzTXtRaw profile type exif\0\0xÚíšY’7†ßqŠ9[ÇÁ’ˆ˜ÌñçË\"Õ²Z’CöøiBM‹¬®®B¹üè`ÿù÷\rÿâ§ÔšB©ÚÛh-òSFirÐãëçõ)±<ïÏÏÉï¿É·çÃÞï?$NùEï›½¯Ÿœ¯_oÐò>¿¾=ô=PêïÞø2`ö\'\'Þ×õ÷@9½ÎËû÷0Þ÷Íò‡å¼ÿõñ<ÓozýéÓïE	Æ©Œ—SH–%GÞ»_ý_É“Ïö¼+I®—<ž÷ôãØ…ÃOÁ»úãØÅù¾\"ŠÛû‚ö)FïóR»\'Bœ‘|9Lßþa¥/w~»{O¿×^«›¥©Þ‹Šï!ž#.\\„2?·5^Ê¿Ê±>¯Á«³ÄMÆÙ\\¼v!‰h_)rdÊ{>·l¦X’%ÂRÚ)?ç:áigOAñ—Ü¤¤á„ÜÉÓ&kÙ3ò1yž;žçmé<ùW&a0áŽï^áG\'ÿÎëc {½tEž`ê+æ•¼j˜†gÎß¹Š„È}Ç´>ñ}^!~JÎ;±™Ö\'ÌÎ¸^C¬*_k+?yÎ\\Wc	ñÕ\Z¢ç=\0!âÙ•ÉH&±QØÒ$jJ*B;ù™ÌœH‹ r$\\r“s#9=ù³¹Gå¹6Õô:\r´ˆJÓ(©¡QHV)•úÑÒ©¡Ys-¡ÖÚªÖ^G-·ÒjkM›cÔÔ¬E«6Uí:töÜK¯½uí½>G\Z«£\r\r£1æä¡“¡\'wO®˜s¥•WYuµ¥«¯±æ¦|vÙu·­»ï±çI\'Úÿ´£áô3Î41JÉŠUk¦ÖmØ¼ÔÚÍ·ÜzÛÕÛï¸ó#kï¬~›5ù”¹?Ïš¼³æ+Ïuú5kœVý2„8œTÏKEÈ¸z(èä9‹]JIž9ÏY‰¦\0ü™eõäñŒ‘Áb’ê•Ü}ÍÜŸæ-Ôò—ò–~–¹à©û\'2<uïÌ}Ÿ·díÌ‡Qò“ ïBiÌ`ãë3õéœô·?Ãÿ:Àï~ô{ ÿ×Î:1ïOÛGöXuž[¶$0Ö®×¤ rèçô´kÉ«×vŽÕ9ÎŠ¥KµÔÈ,åÄUÆ/3J¢ßu †¼†žµXCZV»lÀn53+}[´´æŠ·ç¹zW3ÐtÝ’\ZÔ,g›èÎÃâ9ºv	4í£…²Pxg¶¹ûxÛÎ]¶s•WÕRÔP`,êÑeûÒüèv©Y¯C­ÌÉç)&CH½ÞÜ‹Ü¸·Â’ÆR%ZG‚ËµDy»\0u!²\Zö¥†œwH_óž!ÁÊåy^Ég\\Z¥ÙüÓÐzwšsp%½ÎÃÌÈb-Fnsî*UÑ¾£¬;à„˜.×-Ô#¢ôv]¬ýFøo¬}PEM„|ö\rDoÃŸ²ûB¸Æ]\\xŸ\rÛLßÅˆù®0q5¨NmÉ„\n“‡0]‚z¹}”ÐöžïMðõÊ\\‰™Ü£qŸgI£Œ_÷>IF½vN‹äääŽ`ÈÖòÊm†56¥44ž=²Í¶º­)¶8/+Îjq¯~8¥y£(KÝuY¤ˆPÌÇÚ\\3“þS¨Š*{öE˜ñu­•h3ºBa!Ï,+ÁûüÁ\raâa°pª\rê*GrbE¥ô ÙÂû`QLô”ìF &6¡ÍùÌ6XG£V™QNÇrlø‡²oœ,(6\\EùãŽ6]Ç”ÿiÝG÷8ŸZOn;‘žV-Éa¬ÚG=µì¶Þ†å:Å+Æ‘÷Ôºdï!y/ž=ÓMí´|Ï9)õKµ×Kæ…;RAñF.V²ïiç‡t{U×3MkÒ=W¡Îh¯}ÌænIô±Á¸£†Î+\rY—{Í?uâÞ1<(Ã˜ÂÊ®i–±dé[|Æuˆ—Ä~\"‰ÉUšãÉØqg©·îiÜ[Ê60ûŒnëgµÖ7^‰WÚ_[ÙJˆg”®‘Ž¬zNY%®E6lj=RƒT–Kˆ_K©Ï¦}’5¼æ),ÀMæÀÜµ‹Œ…¦Ù©ÖL\\\nB‘^\"¥717çàfXG¥9Î¤¶—:XM,þ­HÊº\næÏN¾ÈÑÕéîÕ³¢Ó2—‹Ö«ûÑ¡ Ÿ¥»É’”ÜÝÞf\0	*ÍLd‚ÙŽo‡zÞ—çR#4?±\Z|«‚À\0å\0®ªÀIÚ‡#Ô(•zì{¹H6{\r/8_yøãgø|â§ŸÆ¢è)³+Ë†fSB—´-Öší†‹õö\Z¾…Øá`…+ÄŸÊ£`ès®>ŽìÐRŠ62óQ›¡õ“’Ì½xÄôG?˜¥&00“§â\\¨&ê 4)g%’ äH4”´pµ[¹¦Z*ƒHÕ²c¼kq‚¹q\ZÌ	}Êg–öÉ©1Š)ôX705¯®Û¾#^Û€P}·f.1(Ïj™À–ÛF‡q Îr@QœM«1í6°THþµê†2ü$ƒeÏ3Ö*YÒÜÔÈMðöŠ‡¤ …ƒžô¦0uiZ.aÞÜÁÏ2â8æ\nö\'C§­SÈ­É9˜öýr3÷Â~y¦Ez¦‚+ôß‘¤Xpr™¯²QâÌH·x»SaY….˜±²“f»Á€©^\nt½âúNØÜbyF¶:M2`ú1Õ_ÝouˆŠÖÄcÇ‰épÑƒ»I:” h‡¿&vsuêÏñ¤XÉÐ=TÍ8Ð+¤˜Ù^»P\\³WØÚ8tD-Î‰ÜD= ßüß+&»ï¸‘žâ±·5:	†%Dªy:ô€}\n¯‚€Xè`ßßü‹ŸÕæÝæ	X§\0h~ð¯³0ÕfmCëÄ ž+^tšTVWB4ó–	w>Ú5;‡ô¨ŽýÒ×Æ£A&kõ(¡ˆF&MjBäÐÏ+•«^\\8‚æö[Aþ§bkŽÃÖÏõ:¤v+ªÉ5XõJ‰¹ÔYÉ\0ÈA˜„`_4H¥3nRä\0ßJæÉ_t‡A’…eû>Þ®ÞÀH\"eG’¡//…–Š…x	˜­ÔºÌ¶	‚ÔžUóì¾ô+àdrªCË´5Ú´ÆC\'EÛ ˜QSçÐð¤Eº¡5>Xsó=§å@\Z÷\n’wÂ°Q\ZkRŸ©‚OkB %zw e{$eT”\n2géìâ[·Æ§pèÒ45QHë8l#q¼Ã’À3Ð‘\\üÑ¯\0òŽu¢~³†ARQÚKf)šæ³)5QlÛûÞ*@íšcsi—I”:Zºãxx tãéL˜‚®@ðÍBe€ðß…$Ð\r!‰/ä?Ê•¶¯õã…ÈEÏføšÑ•y=×›€×øc>>Ãç?ûDLƒýZi]\"ÚAc&×`.\"n ‚NööFÅÂ¨©E*Ñw\09ºÝ<5ÑÏ× \núZAÈ(5*¸dNô9LBµ`P²ú¾/„À°ÂC4¸z‚0ãN ¼-ä%Ð‹1Ó,µª`XPW4€ÿ™‘\r®øÖ/·ò«®4`C	3ÿÍÝéd5\0~\r†‰…r\'«l»p!¶Hx£ôÆòYŠ(gœÚ\\Å7&só„×xÆ“®0n/wOä“7÷vs ÙïrªCÐ1À;¨s*Yu/ÃÈts7heä0\nÒ‚âe©(â)<îáH°¼ø§B´:ªqäÒ^\rÙð’¬ÀCò/tt5Û\'’žÂŸBûƒ¾	_ƒ6j§ÂžÞ\"ö¥EN§Ðä\"{­\nVÀ®ØpxÈGÐÇ×šà}Â2¬=uˆ<*ðy6²®¥EÁeQ¡±fÒôàí	Ãý\"kÅœ4òŒÄ*ÂŠ;Ao<»•®”N9\"[Ï€ü\rSûâjÂ¬ l:¨N*4®ä‘£\n¦ÏÕGŽsGo¯1ø5£Ä¼s$ä…B<èƒ*š¨\"º0=:¹u¿¤¼¾ýï*m”ê<Š›ƒµ“S‹WŸ‹Qê½8àù¾úpBU7Ü4!Ð}€O@¬V¨ò[é·¹=ÄV´˜±úÝ‹ì„ˆr‡ÊÆùD—š°C¾5boa¯p¨è:ø…€q/aPŠËè	u\ZÍI“ Áá‚$BÃB®€U¾.Å(AdÕ:Eï¢Ç7\"|Ó9	Î‰jèˆ.”\'Œ=½`ßDîãØåvµ_ÖÀ ØÃ³§–Çøé„p ($Nôý}:’¢u•ñH½c(†î£mLØÿ\r\"¥B©ƒ¼ÂPš”Z¸e’?8©\\ºÜÝ)FM%û¾32ˆÉEüE¦h€¾u´ì›	Ä´”ììŽVÎU\0uÆõhÈ4Á‘hEªÑUYD|D$?h<ÜjÍ»è ïkpwà´§.Z‘s`µmÚåÕâ;0û¡íûðc¥{ž\nZyjí.Ÿm†¹Ã\r’ÒËº1‹pM‘å ‰ð[b¸	àGµ(nÿÄw(.P¨‡œvX®aH+^¼$F6wU…ÚS}t(ÍÏYj®»Úg1xìj¡kÄ·ô“ú±‡”·uO\rµ9”ÌQœ@Š<Át\r\n”¶G_¥‹’†âe0JndÈNœ‚sÍM-u×êZ\Zj>1€¯3»ëíß<îÆ¿ÿû©ïÿÕ‚åFŽ%ü)(uãV`<R70ˆ/0ü¡^ú\rFÓa£³ÙðÝ©–|_ê\n\rÏ3Ñì¸\nØi¤±%œ1ÁãA*³#<òBFYÁòLÍ\"IžŸõúfÔ³†b¡JA{\ZüJH4ÜÆŒ!3}Kjã]*sA°Kn´rtyŒ~#½ó™œŸ]9eÓ®î‚#Š¨ð\r‹SùˆF¾RHÔIÁµYÞð«ï_‹â\nÆ#±@_aÖÓ¿¨C†)Êãò\Z¯ÐM›×­¢À8*çŒv¶Hh!ª²øK¾7ý{³HÈþE\'[ÂÝQtÍwú’âÄƒtFâzƒáà¦ÆÉ‹`öbõ*\0–›ö\0FgÍ×.jøh.-ÉYŽÕ+Dcœ}wÄu¯+çÔè–”Å¤5ßm³Í§ŽšæÉTßð­@J\0.€sß<äºÇrH|ÎøBP¡bC]Ã;,Õgò£…	-Ï¨,gZØOÜœ6õèùâBšgm`³\ZX‰LÅf¢\r6“³‰éªd»Ž/íAv· XÜœ3@ÄÕp\"¥sÜLß¶°G–•h~¯‰8[<Có]`Ô,…´|§&47Á1ã5ú³v?\ZK=¼òQNþð3üôßp9‹îð\r³G²`›£“XÉÓ&)€dB‰á«àtSO,•CÉ¿¤2Ö\Z\\b”[š»õÙcEØOV/#\0©€œPz¨+7öH,\Z¢T·08æ÷ym¶^Æ*@µÿ¯1yÈ3*¡—:„§¤n	¸IÍ|¬dßì¥óÒö>h\Z”(Žà\\,|J[²|t½ùÖÒÏ÷ÜhFFA§moÚŒ8©§ÒÊ*ÔeP¸yè#°;€ã—ú6¢Kn\\Šƒ^ Ô\Z\r9JÑOÛLèÈ{Fø/…—@ìE—™*\0\0\0bKGD\0/\0;\0Âç†ªG\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè\r1,Ø	T\0\0sIDATxÚíÝkwÓf¾†ñûÑÑò1ÄN„\0)PhçÅôÌ|ú™0{w·³;¥‡ÒB’†„$Ë’žy!Û$Ð&T²äú­Å‚•BVìêò_–ôÈÆZ+\0œÃS\0@L\01 &€˜\0bˆ	\01Ä\0bˆ	 &€˜\0@L\01Ä€˜\0bˆ	\01Ä@L\0ˆ	 &€˜\0b@L\01Ä€˜\0bˆ	 &\0Ä@L\0ˆ	 &€˜\0b@L\01Ä\0bˆ	 &\0Ä@L\01 &€˜\0bˆ	\01Ä\0bˆ	 &€˜\0@L\01Ä€˜\0bˆ	\01Ä@L\0ˆ	 &€˜\0@L\01Ä€˜\0bˆ	 &\0Ä@L\0ˆ	 &€˜\0b@L\01Ä\0bˆ	 &\0Ä@L\01 &€˜\0bˆ	@%<žÔé‹¿üÍVùýþñ÷¿šE}¬ÆZËÿq,t@W%,bÂ•\nh‘Ã\"&\\Ù€-,bÂµ‰hÞQ®]DóŠŠCã¸Ö!Íògg2áÚF4ë)ÅdÂ	©îÇÄdÂˆhSŠÉ„R•˜p#Cªã1nlHU?vbÂ©Êç€˜Øˆ8UÑsALl<¨è9!&6\ZTôÜPNÚòÊ;w®;þÝ)Ï¡æEùãåù|®ËžÔ%&BškDQhÔl~ùK’²Ü*Z$VñÐÎ5ªËÅ= 0·ˆº-Gk+ž–o¹êu=E‘#c¤áÐêà]¦ÝL?ogÚ;(”ŽÿEŸÉÄTš©À7ê´ŒÖ®l„º¿ÑÐíÕP½^ FÃÇThÿ ÕÖV¬çßÇúîÇ¡vö\nÅÃùüøNL&BšiHË=G÷×}=yÔÐãOZºw¯¥å[¡š-_¾ïÈH\Ze…ŽGZ„jµ<yž‘ž\'sê‹¿üÍ^$(bÂLCÚ¼ïëóg-=}ÒÖƒûmõ‘š‘\'ÏsäŒ@…U»å+š~}üMæ“	1•\\WjEFw=}ö´©ÏŸuôðaG+ƒHQäËuŒ12ã×~k%×-ã2FÓ¯Ï3¨‹L\'bBýSÉ3Zí»züI¤§Ÿ–!­®4Ež\\×9‹Êx\\×(=--ó\rtBS©ö©Ôë8z°èÑfS6Ú\Z¢é.ÜoÿÛÅ\nê÷¦1¡ö©4Xvuo=ÔúzSý~CÍÈ—ë:ŒñêL(bb*Õ:•\Z¡Ñ­%Wk«¡–—j6\'ï‘.ó}\'¨ßšNÄ„Z…ÑR×S¯¨ÕôäùŽŒ1æâO(bB½˜+…¡Q#tå®s¹©ô{AM¯9X€ ˆ‰]¼ZMÏ©Š[-Â„úÐ®1¡VYV^k7Lr¥i®¢°²Ö~Ô®Þ¢ïòj5YfÚ{›êðh¤n7“ç•!ªœPg.1SPÄ„Úä¹t[íþ’éõëDoîÄj·}yž£04•5ï	EL¼_ªUšYíîåúáE¢[·Ž¦×á-õŒ‚À½²A÷¾‰˜PûtÚ?´úñEª¨q,ßáêR/¼ÒA1™0ûé4²ÚÙ+ä<N¯Ÿ¨3¨éE²ßÎ&(bÂ%7Ú³Sç¢â¡Õ›Ý\\ŽIÎ|ÝHêÕÔ$&c$çùPovóZƒ\"&\\( ×1\nüòŠ†‰,³JGã°ŠÉïöÜØ\\·|ÿ´½—Kß&åî”K/d¤^·ú Œ1r#Ïuäº‡rL¢ŸwêŠ˜ð›&ËÌ·\\-ßrÕi—|QXFVij•åMO†i¡$±:>)”åå\"¿¼|ÏÈ1’wjkÛÙéå«XÍ¦«0tä:FN ©Ê Œg¼6Ê¬‹ª/(bÂEay¯†Íû>hèÎí†z]_AàÈÚr\neY¡¢òÜ*æŠ“Bqœ+M2«\"·åí¹ÎûK‰|ßQ·ë©ÕôT*ÿþ¨˜®oúõ{«ÊU¯NJåù¨Â&úi;¯ü&-Ä„N¤õ5WzéOŸu´¹ÙÖÊ ¼ê{²ÉZ+kËß‹Â*Ï­FY¡QZ(Ëe™•-¬Œ£ñJÚrBIe,žçÈ« pþðDú5Ç)¿w»á4¤ÑÈ*I\n%Ã¡vÞæ•ÞFŒ˜pî{¤Á’£\'\ZúâÏ=}þ¬§µµ–šÍóWÆž¾ú`Xa­4mz°áô?_«7Y®^þ§ÉŸM¥Aù¾£N\'ÐÛV\'\'#ý²—j{7ÓÁa¡8·Ä„ú´#£õ;ž>{ÚÒ§Oºº{·=]‡ôûÌ¹¡3¿ÇSåªÝöµ2ˆtçv¬•~¢Ÿ·³Jß;q¯qü×TjEŽ6ÖC=¸ßÒêj4žHWÃÝeŽA«N\'Ð ª¿ì©™3‡ú‰	ÕÆäuÚŽƒ@ý~¨fÓ—ã\\ýÍ¤¼I‹£FäªÛõukÉW»å(ð1¡®˜¤fä¨Óö¦7=Y„ÉRUP¾ç(Š<µZ®š‘ÃdBýãT{ `a›cä¹fz_¾Jw%ÙtpZ^”×ÒÅq®$É•ç…®Óíèma•åvü¸,1¡Î˜¬ŽŽíì¦ÚÛKŸd*ŠâZ<¶¢°\Zstx”+N,ç™PcL¹ôö ×«­¡^¼<ÖòrCAàªÙôä8~ÿtöEþ×¯øæ_?ûßëÜ«,\n«ašëà]ª7Û‰¶·SíäÓk\n‰	µˆ‡ÒËŸFúÿoŽÕl–›Èä¹ç–·ê²ÖÊŽw›&\'iOÿùtBåŸÊ¿/«éï“´®;ùU¾©úýÚd\"½}›èÕ«#}ÿÃ±^l\rµXœ¹0—˜P¹Éú£¯¿‰e­tt”éáƒ–úý†\Z\rW®cÊ‹[³òÚ¼É¥Cùø½H–•èé7øï/=z?¡§¼~®ÝöÕéj·|…¡+ÉU]H{oýøã¡¾úç;}õÏ½ØÊ*ÿTB>ììšªbéz\Z­,;Z¿ãëÞÝP«+¢¨¼ª{8,4–‹ŽÒBé¨PšÚ2ªÂÊ1f\Z„1åUæ§ßzyžQ§íjm-Ôý–Ö×[ê/7E^ù9M”t6¤wúò«ýãôíi9•þ@HÜê—ÜÝ³z½[èàp¨­ŸGêv\\ù^yý\\:¾`t²Ô\"Ë¤Âª¼R¼(­On\'î8fúuß+Ïc­ô]=Úl¨¹êu}µÛåT*Ïk-vHìæá£wùÒ‘tçz½[LÉû~ã×OÍuËëþËF÷î†úd³¥‡ÛZ[kªÓn%ç~æ1áÂò¼\\³tÙs:¬vdtwÍÓ§\ZúìY[OwtçNKÝn¨0¬/¤ÿù²þ$Î3][ýPãY‰B£Û+žž>nèógiH½„ô¯ï«\réCÏ-1¡v_.{´êÙÓ¶_á˜L˜óT’Vž>yióaûZ†DLìêÕn²>jeàéöí†VW#u»õl¨3¤ßzN‰	õÆä5B£^×ÓR¯<1ø×k\"ÓivAyFÁøÆ)žçœ¹[ÐU\né÷žKbÂLLîbtúr¢ë2‘ˆ‰é43£ñú¨8Î•Žr…>zÔ¼BºÈsHL¨U^XÄ…ö2í¤:9Î4ÊòZ˜·¨‰˜˜N³‰)—N«ÝL¯ß$Ú{[.8Ìs{©é4Ï.úÜAÕ.Zíü’éÅËD¯¶NôË^¢8.Wð^$¨«’Äµy˜ÑtÚ?,ôj+ÕJÿX½®¯0på8\r5\Zçß%öün×ŽÉÄtšËtz½“éû\'zþÝ‘^¼<ÒÎn¬ã“‘F£É§°¿ÿûÖ–‹\r“a¦½½ÉDÚŸiH—}®˜L74¨Yîíäã8ÿý2•ï+/¬’a®$×r¿¡Öø&\'sË‰”i¨/ô_,tHÄ„™š,‡/Š¡NâBïÞe:ØOµ¾ÞT¹¡fËSà—‹ Ò4×»ÃT?ýt¢oþu¨/¿>žÉ2Š?‚eë7Ø¼>•}òj«}Wëî­‡Z[\rÕëj4Ê˜â8ÓÞ^ªW[‰¾ý.Ö/G3écw…‰‰ æ²¸n¹Æ©Ýt4X.?•°×ñ†åv\'…r½ÙÍ´½›é(¶1a®AM¢\n<£fdúfúQéH\Z¦VÇñûù\\ôƒ3Ä„¹5‰ê¼ƒ³RÅQNbÂÂ5/U.à<*ß¨nêc&&ÜØ ª~¬ìæáÆíöÕõ‚ÁdÂšRu>&&nÄ”šÅ“	×~JÍêgg2áÚN©Y¿\0®]Tóš¢Ä„kÖ\"ì†®lX‹ö>Ž˜p¥ÂZä!ÄT„Cã\01Ä\\Kÿ‡Ë	F×’3\0\0\0\0IEND®B`‚',20,20),(7,'Escalader','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0.zTXtRaw profile type exif\0\0xÚ­œiv=¤ÿk½ÍÃr4žÓ;èå÷ªkæý0x¸®«Jå!©0ûÿýßcþš­ÞÄTjn9[þÄ›ï|Síóçùêl¼ŸïŸ^¿s?¾næ|ýÂó’.z]˜÷ëúÎëéÛJ|½>~|Ý”×@¾¾zýâmÀ ;{¾y]W_ÿ¼î^?›öz_ßMçõ¯¶{O½éùÕ‡ŸcÁ+1^ðÆïà‚åsÕAÿbè|Í÷sá\"ß§û\n¿ýµïÌû·œwÊ¯}gûëŠð£+ŒÍ¯ò½^wé×¾»úÞ\"÷ö­ÿñ9ø—\'~öÝ9«ž³ŸÙõ˜ñT6¯IÙ×÷;.¸2Ü·e>\nÿß—ûÑø¨Lq±E4Ó¸æ<Þ>.ºåº;nß¯ÓMLŒ~{Üí½Ÿ>Ü×*îo~… êÃ_BË„J$&Q¼ìßmq÷¾íÞoºÊ—ãJïÌñŽŸ>Ì¯^ü—÷ÎQê:wY®¯°ë:39}æ*âÎË§éú÷~˜÷°~û£À\"˜®›+ìv<CŒä¾åV¸q\\—l4ö)\rWÖk\0\\Ä½Æ¸@l&±]v¶x_œÃ•øt,\'Éý .%¿œ9Ä&„Lpª×½yOq÷ZŸüó2ÐB T\"…Ð´Ð	VŒ‰ü)±’C=…MJ)§’jj©çcN9ç’…Q½„K*¹”RK+½†\Zkª¹–Zk«½ù€°Ôr+¦ÕÖZïÜ´3tçÝ+z~„G\Zy”QG}’>3Î4ó,³Î6ûò+,ÊåUÌª«­¾Ý&•vÜiç]vÝm÷C®pâI\'Ÿrêi§¿GíÕ£æ>Dîó¨¹WÔ±x¯+ß¢ÆË¥¼\rá\'I1#b>:\"^Ú+f¶º½\"§˜Ùæ)Šä‰šK\nÎrŠŒÛùtÜ{ì¾EîÓ¸™¿7ÿ»È…î9£Ð½\"÷sÜ~µÕoG	7@ªBùÔ†°qÁ®Ý×®žôíëX.l7ÏôiÅyRs¶žv;4¼à?å>±Á¸:œ«\"bÅÙ‚ÙYpPÚZ.aõ~fõÔ ïwõ©ïrÖ9µð©v2\'ðõ¨E´<š¾+g»ûêˆ¤Æ?Ð¼ø_4Mü×ÍïæüÕÍŸœø·š?9ño4•?\rh¾\Zæß\rhþ5o>hþk\"þSfïÑ¸ò€S½AaóÚa¬esc™¬÷n×Ã!¦\\ç‚	ôèø·ç¬™¾]žà@ÝqfÝôâ~Ëûû¯æ‡À#ŒÈÕŽí+Ä$×ÕÃìÃèÂš6·åVkLâš	D¥­{öiM†®4Ç}°3ÀàòÈÇ¥±ÆLcu^ö$Û¼‡Ê]„ŸÙiå€œM:tÄ#k]7æ‘Ô½i	ÉÅô÷_Í_\\¨BÀÚ˜ÁeB\0XÖQ’]\rf€áuí›)%¦ÓfÌnøÎTÊÞg‚µh‹Ì}Ù²\nˆ«ßá¤s|²¯”6År3»‡œ\0WÚêÏ‘ø1ë<Þøµ3éö¤ØœC_a€â÷ÂÜO·ŸŒýýWÓÿòÂçëidv®[·l¾–~§µªïsÎ¡\'…?xás\'˜¿÷ÂçN0o^84²4n)¥óÊùÐdG•¡tã=i qØ@¨ÙûžšS¿(¥P\'˜\rÛØ½Á\ZlÑÔw„´×Æ]¦\'Yž)¥þ˜Ë¼T•äÿýÞ¿J8$K¤Óž	_\0äAû¸q•¦¾ßâ–Ü|›ð‘1œyÆûïÃ™ïÍû/Ã™ŸgûoÃ™ß9ï«Ã™ß9ï«Ã™Ïcñ÷Ã™¿	íßg~á¼\\ÜÉ(s0?ò³Á$w-{†¨ p^;÷Y«N\nÁ€yÐþQ7J€â˜O¡J¿Aç«Ö`zg¤Î@VÄpìl!“aÜBØOË>Ùöz‹5æ9ÔW™ÌlÄRÎ¤ah¬=]zº´•&fùH;ÿðÂyfßTn9Ë’rádõÅ]ìom6öò×¹¶çØJyÇfáÉ8¿*qó±Æù5R=ècýîH”á\"2¢ÀÊ›£#tdM\"¹†”9	}“³·Åä5ËÊc5z³ÊÅ=0ZZ‡È\ZÁ.Jeh­æö¨_|5¿û…{·)™?öB	ÔŠã1À°yÆëL›–Fp}ÑÒ¯\\Ÿ>ÍO˜ßzîOçâ23hæš¿ëÕ?Ç_H}3àÆlÉ’÷†rÛ	Ôï¨›Ü‹o; TÌú´»}>Úk>7ø×öFÃz,Ùþ^9hÙ”¥¦«Ž²ÿœGŒT]86Â}JECn-ß|¨D&îcG:F’v&ŸÓ¤Iµ9zÌ³ì”ÆM;¸ŸçÛegU)ßišÉÝ4ŸYªÇè´~N…Ìwšyžá÷<Ì¥,7Ë€¾@`ÖÉ®M:#±%è\níáK:àôè)44$E !Üì’†¢üàQwº\nÃŸŽ\\‘rßl4?‰õ^˜¤¶­Bž¶¼¶Fyxn§¾Ýßay3AàöÑ*Ð=—>fpÍËŒ7G	%ç½Ò<†ˆŽ_CÞÍö¤[ /S>\ZòÁækžø½#Ì×<ñ{G˜¯yâ÷Ž0_óÄïa¾æ‰ß;Â|Í¿w„ùš\'~ïóÅQÔ·Ð®·­v@f}+©$à…°ÕÑÃp>Õ\n>Þ²œŸ‡\0~´ô¼Cœ+æ-…çÃñ{÷•µÑ‘#2m/îƒEŒÙmkX—K¯ó=\0šðRé‡H_\Zß>ª‰XýÕæ«?P¢òÿ¤—üJýÍGôbf¯y3ø­Ó=–ÜV÷jt²X\"‹§¼pÿ‘4ù‡½°o.î?$dµ©X´i¬\Z¦Ý¬ŠZT[Ûü8B}ò(œp[¯Wóè¨lÄä—¤Ö»äzo×š‚ù©]ÿ8‡z×·ÖÅÒ<Êü-‘úùÓBÔÿ„ü™ÿü™Ÿþ7òg>\n<O‰2XZeð®ÂßåO\Z+öIó-^yÓÃŒ=\rœ^×¶ØTNÝ¶ÝÖ© Ò®PÁr\r¶9fêRjªj«êj3ìÒFP$wžn™f»Öœ=jaÎÒ}ß±Îá¦umÇU²<Üãx‡¾qË¨…ñ‚¾¢ÒzE­FÄÆ}‡!=œ°p\r·ÔÞ…pÄYØ¶ì*ZÈÚ€øhûŽw{ÙÎÀr¬–‰êLÙõº+NÉ§¤\0ÉqÕ¹nE=F…;×lp¾øXÖš»øàVŸåÃw»«›Ö7›eÝ›Éo¿Ìå7ï›_XŒ½£Û/ò\0óèï«Ù~ín¡®ò+ŸšoNÝUVÆVÞûW¹æû’_ýk§ßÇÐüÄ¡yñ:å«,íûŽlÞÜÂçÏ²¥þ)zæƒkÇ<nÑ[ìŸ“Äü]–ü9IÌ×Ùâ¯“Ä|¸WÐEFµåí“æsÛ©ÐÉc£&´«¤\"a+(!­­»šÏ˜Ñþ10?3ƒ[e3¿b—XÔ\Z«+w[©VRY{q}.3bÀHï–Î´ŒíîäëÚ9Î‚vqÈ+@ú`mÁ$õ‘]âŸ4ÿ…L˜ìç_É„9:1 ¿ÚqÕì©ô=Bï~(Ðk&á§b”Ipagò¡•ÁSý¤ÍòÄÝ+lëÇœ‘´ÐïøW¥QùËüÚñÕ­ÚS/\"%¼¡“‘&ŸÊ£ZÄ&1^­IžPkzv(hM¯µ&íKà P~¸QZ ­az4ù6zeâ#’¨?“>PÐ¼n…m\"mžÐ\ZßÄ\"gi tâBóš.tãsEÁZ˜Ô¹Vï(µ<m±¹å!YqÉÎ”SÚê,¡MëITyý«µ‘÷5îA,XJÕn1j}ú—ªû¹Ð\n·ì&–0Oq v3¥Úç|‹­-;ßjßoøJ>OÌÚB»ãßÜzpœ†}Î@,vhcriÞ:.ôÍîA´ÂÛ3wm›†NªñîÚB,£\'pw—÷´§GŠ¨-\Ziäân‘ë9w­M\Zm\n”yí´R·¡üŠpjòÏ\\/ø~fÈf¸ÓŠ±\nƒæ¸¸t´©6i;TAÊØðZï2¥Z7uI›Ÿ	F¼ÈGµmËô0[\na­³·Ù	ŒƒUò—deL¹¹ûÔ2ŠË¬òi¼M\nÖŸHé¤Ž“[huÖ5W\r#åFªÂ¾©Xå [¿_2`°§}¾¡ð¾d~-~^Rkx‘Ê7Jù¬QiÚ—3™û8jqHZ-ô”2ÞPèÀIªƒu“Üpm	Ü¸Œ5&H¶XbaïÔºKáYž®DñÙ¸^7*ñiU%%r™âC.Ó\n³\\ˆ¯ÁÌSÑÿ}0ófÚÌÄïæù_3ßÏó³Á´DG/¥\0£v9a§ÓO[ZÊ:…Êî$FñD†dUQ1J=:öV‰|Í#éWIËå¹Ñ|`òNÂØetˆkgÃíœÍ»èuŒ#ƒ°„Yf ‚îž+ÈE\0ÓDe0±¥®0\Z¯ i×ŠÝÇ ¡9>È¦&/”œÑZIl\'\ZH„“Öâ•z\\ÐÌ©Ê0ÀEÑ”Ðt°0ÆÓŸUÃÑ\ZÈÛÔeG®h‘¨‘§Y‘ØE%tÈFøiºÒ@\"¢X\'RJ_5Ò!\ZYiASÉ¶ ¾hÐ=e½²@”h/9ŒþÃd×¢\'\nbÂBßäÏDÑÇF!“ÀÜ¿¬=’¯‰À×D[×.ù…Lt‘°èƒ:2â¥R»íá\'“*iÕrù^Ò8qZ<M©ÙÙwá ª“,Í\':MÔÞHŸŒ\0§Xä,×bNÉÀÝÜös%õÁ–¶­xX¤¯ñX –™Nx=n†DÛÈE‹ýÝ/lƒXÚ«®RýR²’Y±C—¤%‘¸î\Z’NeÁGâ—;­ÃÖÇÛIG†*/tÛ4Y[ñÝµ´ˆÎ2“ÅÓÀIÓ úµÚuÆÔA,hCµÕÀó] \\Ø¤=ÿTà\'\"bg/€žÇ‰óˆÕ2\'|•š;ÁÑD Nö’Â!~c‚Õ#Ø¥¤¶p*ÖÏî¡ít°’\rMêˆ6D÷ƒ zòº¢ïdO¹ÕÂË~?£©dyNðE\nÇL›m&ê¡µL¡4h·Tõ>ëDƒ¢õúnXÊµOôkGŠ°ùžÌkØë`B¤¤:Ì4X?7œÏûùû†óy¿1Óp†8¬–¡è´ŠªAæ­íîùÐ*Í¹KõŸ¯dýÍùŠÒîôÔé€\"{?÷êä<	ƒ‚Èê¬GÝ\ZÃq\0Þ†ˆ8ôH_ZßèY)›EÇ‹»QDÓ¾ë{VÔ›_ð]˜õX5_f+\0+ŠVAÕ }4aLm\n™A\r¯Ñ^Û´ðœ]ƒ*ï&á+\0\"PYˆ)ØßPJ”ŸAËµ\0—7Z†Wé0m7@ž4Œ\\;­¶«sUÊ\"vàl\"\'°ŸûºUbööÓš\0CÀ¶VÃ{Iw{Ò–/·ëúƒî{--í|;š˜îhÔ2äJ\rk£­Ã9è\'cÊÓ\nþ2]ä6s€‡J’k\r]ƒ|5î±îûw¯½Ã¾]î/u`æJ$&8.° ßø\ZÜ (æ”¬ãÔ%ÅD{ ~4†~€\nÄ‚ ·ëêÑ2O:±,2ÿ¢Í1+6½ª·þèhc—Á3²­Á½Q0õÀ]\0¬ÝåÏîÞ7öZ4ËáÊˆO¥QŽÖœTÖÏ\"õëiIO1\0Þ’ˆ*}Ldc´ëªÁ–	`&·2B-wâÏ¨ÑåcÈ¿¯n·\0}¤‹Ú÷ªŽŽzHŽ¨CPzÅNO_ŽqÃü;püˆæßãGÜ0ÿ”y¢ûAõ!/™[ZƒÔÜZA%Õ6ÕðÐ‰–.Xamï­šF¡Xh|ºø†±Ò	:\Zá>a\0mš.wLH\nû¸A½h€#qé¬šÜ¤“å™r‡‘hUqìèˆUË§ž@›Aw\râyÃ*†ØGƒºÀâÎ:«ïfkJ€Nï¡’Ëšz¸Q®é ¾Ý@ì\Z´b˜ÓßÕ‰:6ï«mÐüf }á÷8 ¦¥¶òØ²0§SüáÖhÒ©ý”Tî†zçFÀ\nò\n¢0„©[ÕE×I¦Ò¥Ð‹ðYÖ@À«¢ËÄ-½Ù<|²À`J‹¿tºûWZRÝ†¤Ã›Î5,½¿IªãSZöi™žœ £!œØÈ×na—B.é\Z<o.¸ÂöD0}¨#àt”ªo­ü$-‡9DPÍ¦ÐšB¦2`\ZÐZ’-ñL˜væõóºp¸(ó¥æsÌþ¥ëÍ+‹·5ö¶ÞNO˜¿?>ñÛÓÏÎñÝúy+èÙ	RžêÅ¶¿ÿ`‹82³ÁöWó›vJyÓ ïAáÅÀÀRˆ\rR¿Î‡Nòœ”˜ËjiÏ2°Öq#”V[\n£ß£E´ÇyžÍ»kæ‡ÍSUÿw{ÈN§V¿í›*@Ú5µaioÆ<‚àÿ\Zâ|Z0rÂ\0¹Z%-W„½)öf”žˆzÌ2×®çÌÜ›Yï›©;ü´«üÍ¬—QÏ®²\ræÚµUóåÍ¥Ü>fí Ø\" 7V,ÎµF¶NŠ´HüX_p4Ð‚ý\0Nr†øiG¢b×B‰ˆœ¯>“Ïma Ô)ŒƒÅ\"aû j;¡=HG:7¬ÔŒ–êÔ¡RXeWKà„ùvö=”&ºE7‡?$´Éè1GŽÂXé´J\nôÉ¸¡÷G»Æ+‘Ù\03ìÛÇÄÛ‘TŒõzUX„–Ò¦Ää‚j­º‹¡nº´eu¿b@n‘%-—‘ù÷…]áOCÝnô´ÀÎº¼§±‚£r°ƒŒB­Kp´‚#cgM\"ùd:žÆïx\"·6ïª?˜´\\Ù–¢CRMYÝ•¶^?P7{\Z´-€+)Eá&=¡íI[)iml%…qi¬n­t‚Š*Ll&bj‰)ÀdÐïÞÍÒy	tÖs@‰â«t	\0u¢®ó<É†€OÔ¬çè@¸ÐD•‚‘Þë¹ŸÊ¬É¿F\"$|ZZïÚONfˆ÷HÐ´P)ZÀi!4ÀífðÃÒÑ;ßë!_vªô[?¥gŒ¸[–8 PÈûþÄIXŠiÍ[˜(\nòzÈG>&ˆö¢é#S }ÝÅ»7éƒvQ¬À!tà(M5íŒ³ï?‹ù€ÌŠ[’ÐIÚM¡he0§Ó..CÉá‰•rvd¢¢Å)Èh.HÏ€ûÓƒlNš\\«˜Úa÷i¼W’FÉ£¹úCéJÕeDA°Ã#ÉŠC§’2h>‡µA8´´Ë›\Z<H„hÂÑrivšüM¸;ÇrÑw[Æß¡<¸!œÿnÃØ¦iqÍBU”ZQ.!ˆ$í½6BYmK@Âçh¤­2ñþj)£¸åoPï¦2ŽœŸ—_i/O“Â€Kô $ÜÈt[wdKšzŒ2 ÆSÜ´S 	ž™µ‰zw(T`¿Ø‰3_9&DsÚ×Íþ´•f¾´—6àßÌúa×Ô|qCì7Fé0ü—ö>ß¶>ßM›V›j\'ó¤Ù©š$¸¿w„¡M=dÈ$Èl¨à’v¾™@0‰d †fTÊ™)Ü¢¡¹–#B0e°¤¦Øû¾â‹YÓû3³vSù|Ž¯ƒ\Z´êx»ÍJdH­öK’ÖÆêGˆ+Ð\"ø»BYíè-R´F†· \"oèk¼÷\0tè½åÖ\"\n¡BS½K:	‚þz¢Žn{õYw‡ºŸšºà>’Yˆmaè‘ÐûP£ö?EÔaÔÖ©\'ÚëÐRŠ„PýŠŽ{º_}Ö‹¤¡!OÜÈJPÊks!ë”MÅÐi	®U¸<¨7ø‰ºÍZŽ£VÂBßÂ†PÄ\0ó‘v„Ýø¨·ê®w¯ÈoÚtH»Ò!D\"¤zXnà¤D¬T0\ZN3hß£$/¶}aàtÌ£¦Ç\"ù´Ë”œ¶|2\n”nŽÃ±8ä¨\'9\ZåHšl8Ù^˜rØª®£%àI›‚×\"mpÐL|h\rHJLYÁu}%O V\'}uH~ DámÈ0ŠBÖÂj’ž+Iáy\rÆ¯óßNàÄX7\Z’Àd¨zÇ€;\'S9[Ë÷,,7Ívo=9zø/h©G?’XGrÊsê¬”@Z§¦“#Ç´œtÜÎØhzp“¯U§Îž-K¯û#À¶Ws*KOªŽöÚ˜ÎzÀGÜÚyò’¼Å.Š.TGŽQw”cðOs¯y\'HÐÝ<¢Çú¡§€–AI¡?Î]ç$ß`è0Ò5µjQXh¾:OÔ¥ÿÅ8D)I%î”ƒà¨è~Rå®\0—,l¢ÞEJ>oíxÕàµ©ÕúCEÒ­„6y´åÆ\0 U®ÚO0-$u•@=A¥+gW/‚9ê±¬ÛÛuÀ\ržËk2+¥µ?G¶y1ÖÅ­Ä|»Õ6g{\0Ðž–Ó©?…ùß¥3ÿ“¡Ì3Ãÿ>”ysÖÊ|óûÊ|Â•µ2|HÕ=l˜âVÇhëµMèÙ\n÷Œð’ý?9ÛUµ)S¶!}hKó¶Oê5ÂÑm¿‹[Z‰×fÓqAKY:!I¾aŸbâS»®\\€þƒì\"!‚Š’ZHÒŒÀÒHC‡FRœÍ\"J§æm³®*ëCÐ:Ê•Á´©£j™žHIªG£¸?‡°3ÌúdNÚd‘’Þu÷à­¦Ùò4ÿ}ÿ;Ø¦@ušžž¡‹÷¹Z/ì®ÅÆÃ­S¤ñ3Ü}7a5L\']Rï‘{0S‘Ë½$EØåqú¨;z<òzi‘ÑÏÀì­&˜ókJ\n¨ˆ\'°\'jÒ>”¹œhµ(FN1öVÑm\'$ø€ægF.DÁ¯¶÷ lÁe£äœÁO2]˜A‘Méª\'t´‡†îE3iÓþ „¸l)4¡¨ueŒTU=´Ýš!Ð²0Gbs\n¨=­íÑ¤±ðPÇ]¡ËSËâ)c\\þ©½·Z‰×xÃ”o?!¶g-&Ý*¹gBØ½¨Dûäùõ@¥¾?÷Êï-‰SÓSÐÀÚ@¨l=\01YKRjS.i%SKoöž#l—ÝN±™ƒ–Ñ“ßGÏ˜^=>@ á-è¬ƒçˆ	ú¤\ru#Üÿ—cË2ýW‡°C¨hé\"\r—!!ÐØˆ‚)iÙ‹v•	e]¯\r½Ø”¦;ÐrE¶þÇµÒ2ôµ¬h¾ô@è\'__Ñ9;w@õî‘¡1ôhôä:!³hÚ\nC7¾X\Z3ê¹ŸÀ¯´0®õ³³ïúÝRaÀ™Å•zÈê6:Æƒ¨š®©ÇNƒÕ.è.;Ù@®ˆ,A¯½N.õ@¬²8—st-„—6Zf!è0n€*ð!)1+³ðmAÎ-ûá\\-¤!ë¼*DŽwÏ·0DùïjÈb[£Ž¡çÊ¨s§3h¶¨lj¡‰zÞ¸!´§(j¯ÇdaD§¥Ø\ncÑrì $Óà§Š¢·%Š.·{FKzåþ…&%Ù‚”cI ØÊC¦Ùû<¶åÁ»=´z~ZÏLAÍ§…¥üèšÿüœ›+=ˆ\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè\r8\ZÆq(„\0\0ÓIDATxÚí{\\WyàçÞÛ·3==O=-K²d„maY6à€1P˜‰cœMâ<j³‰p*©¼–ÚT*•P»Ë¦HþÈ.Iì&!ªv71©Â1ñÆ@H0Æ@Æ¶Œ0¶dY\ZK£yH3ý~Ý×Ù?î‘dkfn÷t÷Ì¨¿_U—f4·»owŸ_ß9÷œï(­5‚ ¬CÞA™Ad‘I‘ID&A™AdAd„õÃÚçøqàmÀ ÕÇËªKçêiVç4ð=àcÀäF=IµA§í>ÜÑÅ†/lNf€‰Lñ\"Ñï‹DÂ*<™–çÓÀ¥1©7l”Ôo#É$\"	íP\0F6Â‰l”Ñ¼ûE$¡M†Ç%2]¤¤¥]kàÀ“ý™>.\"	à³™`\ZØ&mAè\0{XÇÁˆ™¶J:Ä¯÷sšw?r=Ièoëg™¶Ëç/\\-ÈDWA™Adº”çä#:Èã™A\"“ \"“ ˆL‚ 2	‚È$‚È$\"“ ˆL‚ 2	‚ 2	‚È$\"“ \"“ ˆL‚ 2	‚È$Bl¬MzÞŸ#Ü³G¸ºø/\"Sïù,¤¾´ 2Iš\'\"“ ˆL‚ 2	‚ 2	‚È$\"“ ˆL‚ ˆL‚ 2	ÂÕƒÕ¯QËÇ¼®ôÍÎ™Ad‘ID&AD&A™Ad‘I‘ID&A™Aˆè‡¹y•Y™:ÃGäc$Í‘ID&AD&A™AdAd‘ID&A™A™¡‡HJ¡ÛHJAD&A™AdAd‘ID&A™A™Ad‘Iú\r)B)\"Sl>\"³ iž ˆL‚ 2	‚ 2	‚È$\"“ \"“ ˆL‚ 2	‚È$‚È$\"“ t„›E¦îñ³ÀYÀþýbôÿ+¡åÖöm=y^dê<ðà!à`KôÚ·D¿?ýÝBØì¼e½Úu¿4ž/?¾Ê1÷EÇÝ-í±+|Ø\n¼-úý\0êðsdï^ò»=GIdê¿C¤E~<:þ“Òö;F\rH÷è¹ÊÑ¿‹’6\0\'ŠT¤ykç»|¼°2é>×öèßŸŽDÊDÑ)èÅ“÷Cd:Ôåã…Ã/wEAâÛÀI`$2	B|RÀ`ð%à½Ào÷B¤~‰LG/éôÆ=^ØÜ¨(\"=\Zý~øS‰Lkçÿtùxaã\neG·?#2­OÅ<ö1d$ïj$|xØ)2­Ÿ^å˜‡£ã„u@k½të\"·\0§ß™ÚÇ~\n¸ø`Žp¸t.úýþèïž4ëÞKxnÃÃ©:4+Mœº‹ïúè +bYÀŸEQJ ÖÀç£[«ôKUØðët~f\0¾à5]ªóU\0¦žÆs|¼ªK}¾ÁÄ›Æi\Z¤rIìÁ$ƒ$³I,ÛÄ0ËÀL˜˜	Ã\\s¸…ð‚ò]À“\"SïøH¼ÆûÿÝÉ6á6=Ê³%¦ž›æè½ÇV=þÜ­3…\0,0\'LR{“$·$ImIb¥LY›ôhŠÜ5CävæH¥H¤k+\r<ü<áüL‘IX3þ;áØššþÁ4G?yŒâƒ­M‰óž¹˜eÇÜoº”³\0TZ\ræ{w‚á[sŒclÿÃ;†HeS–R-¿ü-á5©D&a-|\ZøàZ¤V¨ñÔ§žfêÃÓ=»h¶.‡ý\'ï¬‡÷ŒGí«uæ®¿@ææ4ÛîØÂÎ7ï`lÏ(ÉÁd;BqÉ{ð€È$¬‹H¯.ðÍ>Õrê„dÞ3¥eªÏÔÈÿ›\";ß±ýwî#9`¯‹PªËC‘«q\'ðµ6î÷.àqqaýDjV›|ëÏžê|$ju\"±×\"±%Á{>u\'C[²ky¸¿nG(‘©?¹ø›vúH:Ð{ô…X\në!”>¶çCäàOÜˆ2Úîþ1ð­ÜA&ºŠH-õ‹ýÕ/mH‘\0tñb`8zï1ýÕ/Qš+·ûp¿½W™„+²ø!m¬1zõ™3<qÛ·6å‹¾ã{·sí­»Ú¹«ì&%2	¯åŸÛé;Ÿyzsˆ´L7é‰Û¾Åw>ót;hÏIš\'\\iÀa_;\"?r²k_]£0®3–nê\Z…Ú¢–cEVÈèŽ9É?|ð1|¯åE·Ãq³ \ZïÞiå¾ð¿öåÎygAåÆ¨™30‡-Ìe)t\0AÕÇ½àáOû+\nÒ*ÅKü#_æî¿x¦ÕRygÔzHúLB>ú†-Ò×?þ\rÎýç™Žž„Ú¢0w›Ø;ØÛmRI’£Iƒ	Ë ðœ’C}¦Ní•:6ñÏø\n wd¨¡ê„5%$2õyzK$­5NÝå©O}·ó\"]£HìO0pC†ìuƒî 3‘!•K‘H\'0LEà4«•™\n…-Eòé5«ŽÊïx„zbß“¼ëïhåniÂe:÷‰LýÉî¸é]àÔK\ržÿ»c¼ú{g;.’ý†Ù[²Œ½i„‘}ÃN’\Z\nE2&J…×°<Ç#;1H*—ÂH\Z ¨Ñy¡¦><Íw¶?Í[åÍ­ÜíÞè=ìW™´8µºHÕ…\ZÓÇf(¼XÄ¼ÙÄÞï¬H‡³Lcâ†qrÛ‡HfSáÒ\nóòÉ©‰´M\"•ÀLš(S¡”âó]êø‘“\\{û.¶Ø\ZûåŽˆî—È$¼þ›&ÐÔK\rf_œãøç_¦ø…zNwL¤Äþ0\"McâÆ	†£¥fÂDêusèLCa6Ê%[üs·„úêçg* 9Œ{—}Ñ€ÎëÖ@ÉÐxŸã6=^ÍóÊc§;/Ò^‹ìÍŒß2ÊÄ\rãK\"Y¶õºˆtÙ}\rE\"i10:ÀØucl=4Áø[Ç8œÁÜk¶7l¾_ùiõ.Ÿ•È$\\žÞy•óe¦¾{Žü×\nið–AÆneüãäv\\)Î|¹K…z-UjPÅKœø¥“\\ÿÎØ—á®D¦~Mï´Æm¸,L˜}b÷ngE:‰´‘rñEZ¡žºóiö4v“HÆVâ¿^Ú™¤¯¤©êÌ<3Cõ›µŽ4Ê×Š4qÃ8#»†I§[i=„zñË/ñ¦Ÿ¼)îáwHš\'\0à9>…©\"ùï	^	:/ÒãŒ\\;Lf$C\"i­©\0J¯„:zï1öå÷’ÎÄ:-ÂkxˆL}žâ95‡ùóTŸ­mh‘z-Ô±‡_håÚÓû%2IŠG-_#ÿÃþYÃ‹ÔK¡Ž9Éá_¸%nßi—\\Ä™ú§î’ŸÌSy©º¦¼^ŠÔK¡Nÿëd+#{ÿi1Õ™ú4Å+)Ó8ÑìœH7…ƒ\rÝ©WB=uçÓ\\¯cËt§¤y}Šïú”gËä_,,›N¤^	U+ÔâD\\\'2õiTòšµ…:ÕSõ¥â#m‹t8Jíz,R/„š::7ÕSDkD¦~’É×4*MJgK4O57µHÝªÅTï½\"S¿É„Æw|\Z…&þ´¿éEê¶PnÓ‹;ªw›¤y}Fà85‡f¾	ÎÕ!R7…*Ï–½v4Î¡{D¦~C…K´§c‰o‘–J­I¨©ç¦ãÊ”™úÏññ \\ÆP¾zDZ^¨ðKCºåõP§y5î\\=%2õ_`4~cõþ’Ú²ùDº¢Pš°ê‘ ]M­Q]õ¨ø`)¬:ûE¦~ë3U¼Ò*»fÁÜm’¹)ÃØ¡‘¥Ùß›A¤×•!ð¼¦‡[vñòÍ‚³´EM!¶ËJÛ>BGižW^9Õ1&’{lr†;0ºéDºT(+i‘N“Û9DöÚA’;“ãÝy\r\"S?E&×Ç«»h7X1*ÃÉmI²»²d·eIçRë\"R\'j:.\n•\ZJ‘O“I TÇ—¾E¦~ê3\ne\ZhgåFj(ì›ôHŠT6…•´Ö²5ËE9ÞbH¢uücWî\'*ÓÀ²MéVÆÄHÅ-åÙØm÷KŸ©Ÿ\"“xÊ^¾1©´B%fÒÀJZ˜	c©RÐZŸ[¡†i¬º¡4€¦evDæn#2õ†i`%c6LEÝ‰}ÇÇs}Ë a(Ô*6é@ã6<t I¤tÛËÞµÖÆs}¼º‡ßðÑn—Þ_ib}&”e`d–ÿØu]45^ÍÃkxø®‚¶Ó­Àðz¹A£ÔÀkz«–Õ:ŒJÍj“ê|•z©Ûô–\"[«£.ëãT\Z…nÁ%¨ÅŸ-?06÷Ð¼D¦¾ÉÄJZ‰•¿Cu]ã\\\ZùNÕÁÏ¥1-³å½—D*6(ÏUÐZ“K±Jì~@£Ô <S&•K¡·iÈ¥I´ÐÓZã{>ÍšCu¾Fu¦†3ç†KOÊñß³˜|]dê#Ì„=˜$1œX~D‚B€sÞ¡2S¥:_«%L¿ï´$R¡Nþl‘â™\"ö ÍÀh†8¹càkšå&…ÓE™\ZÝ\'¦PatÓ¸u—ê…*Å3%*“UœsîeÛuJŸIh¥‰¤‰™2P9µì…Ëà|€sÆ¥|ªBq[‘ÔP+ab$1-[¤Z¡Nál‘/] tºLnïÞ>/Þh^ ñš>Õé\Z¾œ,±ŠPZk´¯që•ù*…3\n/¨¿R\'˜omÏ§êè‰L}%“¡°’¤·¤P¶B/—p•ÁŸó©½\\\'?VÀ´1&Y¥°36†©–P—‰t¦Àù^`þù<™&©ÑÄÛJAktà”\\j“õ×OÊ¥±ìËë•k­Ã>’àÔ]ª¡H\'\n”WpÎ¸çã÷—rG†Zy{?!2õVÒ\"9œÄ6Â9jËE—óÎ¤C)WÆL‡;R\0d\'#¡ÂáíK²ö5®ãQ/^éÂÑ*G+ácº~xí(–ù‘S^€sÎÁ/ûÑc$šÖ——[ŽF}×Ç©-F¤\"Çó^(Òx¥I0ÓZTÚsïµ’æ	+¤y)‹Ám˜Ã+ÎÐ+C0PO6Pf1l¬Ñ÷Àø\0ÉŒ½´“?7\\ê¥Å©\"^š_É=íaí4[=Û%£‚R€wÎƒàâpß\rÈn$9˜\\ÚÐs|šÕ&µù\Z…3%\n/(Ÿ¨P?^Ç›ôZ®Ä4q`<î¡‘©#“m‘Ê¥°Æ,šYgÅoj=§ññ©Q\'pÃáòFÑ!·kˆ±ö€e›K\r¹QnPž©¥@þûyÊÏWq_Ž:ü;M´^LÅtñ/‰N\rM0ÐÄAe\'À);TwTI\r§°’ác»u—z¾AuºJùT…Ú©\ZÎ¤‹Öo«¤ÙÈ5±w.™úÃ2Hf“˜3VÊ³(T½ZÇË{4Î7©ì®0°-6ätØ„¼†G}¡NeªJåd…Ú‹uÜS^X´%Ú\rkP´r­H)F>+Š”8žC©ÐœkRÚZÆ7FCƒWóh.84gš8çÜp“éóío2ÝÂžMß™ú4Õ³lì1;ö}ôœÆ¯ûaºuÁ£ñjƒâx	{4™\n#“ßðq.Íwê5Ñ ŠxÁRPÒZ¯<Ì¾¸Ñ™¡PIu1õ,¸ïœGc´‰‘	§?MMP\n\nÁš$xÃƒûZ9üoE¦>ÅÎØd¯dáº|ü¢ýeÐeWôð§}šCj@¡l…2ÂÈÔ‚… Lë^ÓuS£ƒpð öh„Çú\\v]LÏ…Ëîƒl€J_.¤®ëŽÔãûÄþ®ê™>z5šK>Ð»·ÄK_l\'ÀÚiâ´ºF$•Ÿõ—ýûOÔRáº¡.Œ#ÕjçÒ\r²ãƒq]êöL¹Š_ÛŠ„ÅãF¿¯\Z™r{‡˜üÆ™öŸ¹•oÿ,`‚‘00¬ø³(––lxº£ûØ®Æ¡G¶2©ö_—ú£’ôljJÑ7cøðI`ÕP£”âÀ]oèmµ†ÉÔÂìo\0^oßÔ}wìmåð?™®Œ×üü©H°ÕS½ŒÍŽmëÙ‰šC&‰VÂoO[Ã2Â‹Å=ÌŸvþÑö¸5Æê\\²¯­ÈtuÈdD)_˜‰{çý­·ôä$UZaf¬”…‘0‰•åE+d\r+\ZÍËöæ\r½íÃ­þ—ûf6ÿ°£Ô®\0Lÿˆµü-3œaçmïõépabÜ:JEk¯’§2õ\"*\rmiÉÚ‰LW|…ÿ{˜Šû\0oÿÝÛ»–6(S¡,«¿´x±Ö0\rLÛ@%zófþÈo¼¹•ÃOí(2]LqyÕp¨Çâ>@\"iqè‘ƒÝOõ¢aq¥T¬Ñ<…Â´Û€D¦Cl¥¯ðá•:°Âæd\'Š~ÿ¨Ä}€ƒ?q#ƒ¿0Ø=‘2\n#i`Z*f‹S†ÂH˜Isi†C7¹ñîZ9¼@t¡Vdºú¢S#úyxø_À¯ÎˆÕpìc?Ò³Ë‚J)ŒDXf,öÅZu±\0Œ™1^7Ó¡“Ü=ùÞ¥™ç1¹âD€ÍzÑöÑ·ƒ°2kíÃè®îzùÝ<û—Ïsþ^èüERsqÝSL—¢Ñ<3e¢’F˜Àv)½‹¹ÓÅ¥QéW“L‡Ä“·õ„In{ŽëîÞMídêWjJ{áFkç‡“\\‰SÃ!g?èîLÊŠ»ËÅ¥Ü³Ü$Í–HflvÜ¼ƒ}¿¸—Ì»Ó¹¶S]Ñx%f±‰SsÃâ’«‰ä¸\r·æ…hÎ‹t÷_¼¯Õ»=Ç%i¯–È$t‰‘×¿g?†mpfïù/âÏ,_NŽŠÆ™s©LU)ÏUÈ§Ã²Ë\\sÒ¾Ës¯Q›­ã-xálðr×Ÿ¿»Õ~’>°Òë-“ô{6 é¡×¿k?¹C¼”=ÁÜCŽ·/”®kÜ)—ÒÉ2;ò¤†’(Ó ™±Ã!ó×Ô‘hÖÊ³e\n§\nÔ&kx³~GSÎŸÊßÓÊÂ¿Eþ„×\\WÚh2=\'Mwcb§l¹~ÿž\0¯ê3ÿù…pÕl›©^0P{±Î|nÓ6|ÍÐÖ°8‹züpÏÝÒl™¹/°ðBžÆ+\rtAwT¤¯\'AxöV;h#¤y\0÷JóÝX(¥°Ó6ûÇi¾¿‰[p)=Zn«–„ú\\Û¥˜(ã;Í’ÃÈÞ™±ìL¥nÃ¥:_£pºÈÂò”ž«„KßçÖ.Ób©ÅÔÂÉ¬ï‰sàFéïE¦\r*”¡HgSl?¸\rýs§\')>YÆ;áµ•vé³\ZÇq(•š³¥=%Ò[ÓØC6J[ó¨ÏÕ©ž®Ñ8Ù¸XCb¼áÁ}ÜöïnmG$\rüÊjéÝÒû¥»4ìØ\"§ÝÒ|7&P+Ö™?5Ï¹gf˜zžÂ_•ÚÀ,Û\rÌQsÄÄ4@)t3À+úxç<tAw$\"Ýñ½Û¹öÖ]íÞý¯bùl™î¾&Íví[]¨Q8[`ú™Yf¾2KýÛö}6\\ž±tAÖé\\\r‡Ü‘!îúów·3ÐpiÆt_K‘|ƒÈáUåÿ Ívã²¸›ŸçøÔ5f^˜eòŸÎ0ÿXÿ”ßÓ¥å]ŒF‹û[N‹7L\0Ÿþ½4ÛM V q.ù©SOŸcêŸ§©|»Šÿ‚ß³sP[ÔeQñæ/ÜÄM÷ÜØNßhÍ\"mD™\0>D¸èMØ$é_£Ü`îÄæ~pžÙoÌÑ8ÝÀ9æv,e»Rzhî2—Ä}ËW³û­×’L®u»Ð¶EÚ¨2ì!¬*$Qj“à9µ|ÂT‘ù—(œ,Qz¡Ds²‰? \Z]Ñí–ëz‹ÄÎîŒKæ¦47üò®¹eö@¸‘ÀzŠ´‘eºTªDÃÒd»Ê`MVtíÔWiÒ(5ÈŸ-R:[¢x²Îµ+y4Ï7q/xx¼¥\"KË+üp*~T7bÐÀÌYXÙ°üqzgŠí?ºí·20:€i›áæjÍË3Z\ZµÛ¬2	½å~àohyÃÍ×T Ãhå»>NÝÅ­»Ô\nuê5f¾7‡SrÈ³@ó_.ŸÁj¿#Áðí9Û`ìà(é‘ÙíCØ™™á4‰´•0/›†´–Sþ#Ë,©™„µ²›pšWÇ2èËj‹~€í¨ý\0e\ZKå½fX$O)H¤Ââ‹u#÷Õí€DÎl¸‹f‹LB§x˜pfŠêå“êKj‘+C]¶eg‡$øzÔuè(²žIXŽû€;èñÌþÅÊD‹Ñh±\0K£ÑÏuC$‘IX\'‘¨ƒîmâ×¡£×á\n…P$ÍÖ£/õ¹(Z©M$Ñ„—X&»ýd\"“Ð®T?ÆÆ]©ÝS‰D&¡|\Zø·lœk€uÂúß¬Ç“‹LB\'x;ð»Àûˆ±?Tú2áÖ.O®ç› 2	Ýë—	GÌvw!ô¢ÔíqÂ‰ÑOn”.2	½ècÝ¼“pdp±æar…(æq±¼óQ Oxmèá^öZåÿ)Â¯|òy\0\0\0\0IEND®B`‚',20,20),(8,'Renvoyer','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0\ZzTXtRaw profile type exif\0\0xÚåœYv¹’Dÿ±Š^B`–ƒñœ·ƒ^~_C$G‘I½¿Kb2‰pø`n Ê¬ÿýÏ6ÿÃŸ’¼3!æ’jJB\rÕ5^”ëþs·W8ÿž?Ó?~gß¾oÆxüÂñ–.z\\˜ÖãúÆûñå9<Þïoß7ù1+¿x\ZÐëÎŽëÊc ïî÷íãgSŸkáÕtK=÷Ô‡î_½û9dœ1#ãá#·¼õÿ]àõ7øÆ÷tþÍ\\dÏk®âßpùÀwæùå;çíü±ï®ö¸Â¿u…¹Òã‚ôÎG÷müØwÇC¯-²O/ÝÛ_4÷pÄõ§ïöžeïuÏ®…„§’yLêzq^qaÇ•þ|,ñ•ùyÏWå«0ÅAÄ&Ñì|\rc«uøqÛ`§mvÛu¾;01¸åp·sn8Þ+¸¿ºá‚ /»]öÕOãq\ZDÍ+\"Ï¶Øsßzî7láÎÓr¥³fùÄ_æ£7óõ<ÐÞJ]k3óñvc†\"§¹Š€Øýði<þ=_æ9¬/XOãqsa‚íê÷=Ú—Üò\'ÎžëâÌu—†Íó1\0.âÞc¬\'W²>Úd¯ì\\¶?âÓ°œpØÝ´fïÁ)N÷æ3Ùžk]t÷Û@ˆJ&4Õ7‚B$r(äP‹>cL1ÇklÉ§bJ)\'aTË>‡sÊ9—\\s+¾„K*¹”RK«®z ,ÖT³©¥ÖÚ\Z7mÝøtãŠÖºë¾‡{ê¹—^{¤Ï#Ž4ò(£Ž6Ýô“òŸif3Ë¬³-»H¥V\\iåUV]m“kÛï°ãN;ï²ënÏQ{DõmÔì»È}5ûˆš\"Îuù%j¼óÓVp3\"æ‚%âY ¡bv‚Sä³«:Š\":¢f£‚3­\"FÃ².nû»—È}7Ãâæ>‹œQèþ‘3\nÝ#rÆíƒ¨Ív:Š?RÊ§—ß\0¬Ò\\iêI/ßû´~Ù±‡‹3t¨Ì“b£¶¸ê¦áyù)µ\rÆ–nmÁ³Èöš Ø5²rÓF¬¢Þ÷ð¾ìâõzÛÊ{î]2™\ZÈp\ræ¾nµˆšzÕ«¼—=¡ŽÈ@jüëÍÓˆÿ: yoâo4ŸÍù§š¿9ñ»š¿9ñ»šïFåošŸ†ù³Íoóæý€æ_ñW™½zåÊ\rNµ\n…Msù>ç•RïÓ$}vÙæw÷!¦2&L Ëß5FIôý`Ó\0ÊòŒ3Ê*\"=*ï×ßÍ›7À#ŒHåêËˆI*³ùÑºíÁú9®T§µ0‰k—îÙÆet¥ZîÓŸzÚ6öÙG´˜Šu²\'^\rÀ»©ÜAø‘\\—’‰{ƒŽxdÎãÆÔ£º7-!Ú¿ÿÝ|ãB@Vûð6À²ô¯Ya^æ\n¡šœÓf:u„d»kL%¯µXK°€¶ÀÜç•gqõ;œ´·‹×#%úC>™Ý|Š€+mõÏH¼\rÄÜ·7>v†!Ýî£ë;Püï\\˜Ún×c¿þnÚ7/¼¿ïJf§²tËêJngZ³¸f0gâz’ÿ‹¾v‚ù¾¾v‚yòÂ¦‘Å~J)æfJ›&Û‹¥¯A\r=Ã|IÎµX­úµGäø2ÀlØÆjÖpeM}H{©Üe8’åžRl·¹ÌKUIþŸ×ðþ™ý&Yvø@ ^·ëWqèUgøó;åæÓ„·üûÁpæïß‡3¯Íû—áÌŸ³ýÝpæ3çýt8ó™ó~:œù:ßÎ|\'´ßÎ|à¼î‘\\ÜÉî ³0?ò³Â$WÉkø© p^;Öž³\nÁ€yÐþ^J€âw¡J¿AÇ£Ö`z»ÇÆ@—ˆa_é‚Lú~\naÝ-{§«•S¬!®^8ó`f=ä¼\rCc­aãÝå ­4?ò{ÚiÜ»7ö=ûªrKI–ä\'³Mîr}j³yo´“¿ö±e[wÃVL«ß6Oúþ¨ÄÍû\Zç× Hq ÏåVC¢tV^-¡!#hÑV¤ÌŽè›”Ü•Mš#ÏÔg¥×1«”í\r£¹6è¬|á¢˜»ÖjNúà»ùìöÙ~\\ü¤d~_%P\nŽÇ\0gÀæŽmZ\ZÁ¶IK»½r|z{4Ýa~rè>?íƒËÌ šgh~Õ«ÿŒ¿údÀ‰_’%Ï\rå´¨ßV79ŸvA(˜õe·k¿·×|mðÇöÃº-Yî\\ÙiÙ”¥¦«ö¼þžGŒTö5ql€ûä‚†\\Z¾1ø R‰LÜ…†t$íˆ.ÅA“ª£·ê™g^1ö“Wç~Ž—ó\Z^VÅt¦iwÓ|F.£ãòø9fJ0i¦±»[c3—<íÈú™;Ù:èŒÄ\Z¡+´#„/é€Óƒ£ÐÐ†°£I\ZBˆÒGÍê*¿;rAÊ½Øhþ4Ë¹0Jm_\ny\\òÚìùæ¹œz¹?¾Ãód‚Àí½	T ½/½Íàš‡OŽJŽs¥¹\r?†<›!ì‰§@¦¼7ä#ÌÏ<ñ¹#ÌÏ<ñ¹#ÌÏ<ñ¹#ÌÏ<ñ¹#ÌÏ<ñ¹#ÌÏ<ñ¹#ÌÏ<ñ¹#Ì/‹#«o¡l«Kí€ÌÎúšcŽÀÿô~©£ûn],ä]8e9¾ühéiù0fHK\nÏùíÖj3i£#dÚšÜ%ø1v­«øy¸ôÜ¯Ð¼EÀC¥o\"}h4~{¯&ÞaõT›g¬~Gý‰ÊMþòÿ%õ7ïÐWˆý•½æÉà§Nw[rZÝ£ÑÉb1ˆ$žòÀý[Òäï×}spÿ&!³Å¢®DcÕ0õdUÐÂ ÚÚâÇîËGžàøÓzšGCe#&$µž%×s»ÖÌíúíÞô®—ÖÅâ[e¾K¤þFþ´õ_!æíâãïÉŸùÓèß‘?ó^à9J”ÁâÌOeþ›nÇ>C4ßì”÷8ÝÐbÇyá}m‹\råÔiÛuî\"­ÌÇà+yÏLmŒUBmµLýCmú5µ”;É†¦^MkÎµ0Fn®­PF·ã²u…™“<ÜB†¾~Ê¨úþ€¾¬ÒzD­ÄÆùÄ|¼9`a+n)­	áˆ³°m^3k!kâg å\ZÞmyYË¹´LTFL¶•UpJÚ9zHŽ-Ö¶KÔ£h°µõòÖeòœceçí\0â½|øl÷mõm³Âúd³¬{2ùÉà‡¹üæÙ`óÅØÛÛõC`þ\0ýu4ÛÇNáê*ùÔ¼8uYj~î_ù˜ïrzô¯?¡yÄßÇÐ<‚xœòS–öº#›\'·ðïWÙRþ=óÎ5·cn·è‚Û-×ß“Ä|/Kþž$æçlñã$1ïîÁt‘Þz©i9à¤ºTWÌtòP©	í*©HDÄ\n²sé®æ+f´~@ÌŸÌàw«læ#vð~iðÍÊ ÖXm>ÛJ¥ÊÚ‹kcšJFx7uú &l·;…PæJad´‹u@^Ò—k3&©¬þ¶ ù2aÞ³Ÿß’	³ßub@ÖîÃ,ÉQé«ûÖ\\W çˆÂOÅ(‘àÂÎè|*½£úI›á6¤»§_—E{<DpzÔtD¿ãC\\{á?æW·+v–f­z)áŒ4IøTÕ\"6‰ñhMò„ZÓ½CAkz¬5i_òÝö\\=õx¦G“¯½&ÞS\'Éú=èÍk§¯ÞÒ&â\"á	m§ñ\r,²\r”Nœi^Ãúf\\*(Ø&u.ÅYJcNG[¬v:HV˜²3¦è»¶:³¯ãr$ª¼|kmäy„{P\'–R´[ŒZþ¥*ä~Ö×Ì-›	ÙÝºG\\#¨íˆð¨>µšlZŒèƒöFÇT©ŠÛr5€”¦Zr{!jl¿ èé)ðZÑA‰ýŠ)8B7¡DBÑ“¡mœìäÃ2-@\r(€ÅÝ\0âwÛÃ’]³í­WðjµŒÒlmS£6êòE Ñ—ªÚpV&¨¾²(5:÷ˆ˜îÉuèD\0‡¯šèJWÎªŒVGÃÕžSÈHÒ1Üüêk—Ü³MøqÔ™¹\"Cí@1ÄÖF¯¾–Qæ˜Å÷@Ü*ÉŸ¦•UÖÌo/ìüj!êkrüÑºŽùha‡âÑV[@,.GîÑUfõ-FÑë\nûG×\rRì\ZT­­Ó­<@‹5“øã¡¸Ôá2vØ>0÷ÈAÍ®¨<D#Ìî–YWœ‡)úðÿy -°Ñ	mŽA{”pËáÆ•k4I‡©Újä@vÄ¼Tàõñ²àÉÎ¯.¤u\Z[Â\r¦§McnþC±¨fEAäÔ¬î-j_}¯:œa¤ÄU´°<<ÕrvLˆ NQGŠ€iMaºéªó¶çÕÆ ¾Z¾Èœ*ä$‘\0çs\Z07˜tAËy6NÀÉzzyeYU6¬a—ÓÐ-:½ó~V¤è’¥~ßªº½l›4”æ€»{€D´ í	¼::rÌÎ87\0’AÙ¸W»‚úK½ÈWÜ\\»#T?SOÄðžI63RÚÄõ»cè\Z-X€Ðn‚NØlÔ/Ø«¡(ôZá¤p\\ˆ(Š¶ÆÉ\n¥…†(Â*×»‡4\0JäµÙ»\\HWÒZ\'…·l—ÖÊ]K\rÈ…*Øn(N>Eì“ŸE;Ð:Á£^DCÁs¹&\\â\\7¸`q!ó“Nõ8É?‡õÞš8è4€Ð¶·#Nìk©¡Òyf7iÎ™Ëu|‰ïä^ªûÝÄ—b$àËK¸“‡cy€Hv¼±Œ·„zÊ­Ëç´„Ôý€WšÞ»hÏž$K€¨œ‹ºå\0‡më}Šþi»²Æ«ÊD6]\0O£Ð©fØa3¸ÆÓsþÚDV2jêcâö Œ\Z‡€y}ŒŽZÄPæü¼øa^&úŸíYÆ#Í\'<Ë}¸;ñÅr‡yË²î¥ƒ×‹6g -Û¼Y´QQ~Y´1U›ï/Ú¬äGÌ„!¶Ü„!š¯‡°{:ÖõŠs–¬Áf®ô›Jåoâ\'Yär¹AÆ§*ï‘[4óØ|ïŠ`ÊôcáÄÂ,øeuÑˆ4!Ìi,WªŽä1+(â†VÒ§¨ `³á\n™Z†ÌR®¤§ÁBJjDŒßf¦ÛºÙµîÒ7L¾çöXOÆÁÔ€\ZâÙŠEªP‚ÆC\"a®qlõ´èYìWˆ½’éšµŽÅAÓ0€@¹…M:Æ ‰Rv§ÓÕ\rˆ2¹¬€¹[8ÝÐÌ6 ¡è˜kl:xÁD6i s3Fà9p¨.êxAÂêÉ¡ó‘‹‡ŒòÆ$ûùÌ$ï7àm\'b`3%ß©ßã<ôÒ¤X¨ 7&~;·Lôxq¤Œûà+…~§k1‹þÃÜ,y¹|²£\\S•æ#yT3Â<ƒˆá}è>\Z9J¹…³„¥-•CfuDNÓ£Ö>…¸;b]Ù2	.¸UTOËÜ\Z»ü•µ†â+Ð	ÎLd%ÒŠDTa7…}ë(‹Ð²!j¤	\0¿Áäèê9Jä3¢†±“\n¾’Û¶Ïé˜ùû;3ßãcÒ±~ÃÉ]Ä\"£>^Á†P®imrÛo`Á7Ž\rBQ9—,Í~ÒRÍáúªœ„îHsØŽÜCâlC¹ˆOxGQgêýAØ\nÍÔïpþáSe@š~)‹.JÓh³PFþ‚ëÓLåê}­‚\rÅD–|5&Ó–îUSè(þaÖ^\rI}€ú%¿›\r–i»Õ:Í¸ª¨ÊPÂT‚-ðcFÆ‘L½E‘0 ëÐÞ¡K‰áÓ´©\'ÍQÁXusj”)E¯ÔË¥‚\0;òäg”l@+ÑÿŠE½Ï9­Q¦Ú€70-ÐŠk¢^“Ó)mI¿^\Zí­F\Z“øÛAh…ð5DúM}”O]—Ï ý¾Ñö`é¾CD\"qËÒð›2ÞÝaOŽj¡×n¶©íŒ&ÏîÎ({É»@1]wöMbSu¢F+¨sM4  p@Yà&tì‘‚d5ÙáŒšJè÷oÙûjz÷e˜Ý¢ÖáŒA>L¢·T\rµ?\'äuÐÇug~®ƒ>®;óºð¾¨;_¼ZÖV¸\Z;“ÓÒÔ”\ZTrƒG•Ïfúº‰N¥£…Ò˜–º\"ú­EqžÅÃ{KÏê8åË†žŽPh;ï2`1É3Œ]â‰ÖYd·÷òëz¢CÇ´Ä5‰yÕúà½É‡/À!Û9‹Ó\\Ã\\Úå#ó_vùîi¿Ùî|1ëaÔ½M/NôdÖaŒoÌz%VõÖ¬ó‡ö!ŽYfûl<þq¶@…oh	ÇßGHTš_x:ZÐ‘B:ë­£_“WŽS‹ Áfˆ¸Cæ¦lD\rP˜@‚ÜHF¿wMåBÀ–\nO§Òmö¶;CX)F#éé¡>‹@È:U‚á®ÝÆ µz ´ô|îZ¥I;Ë²:ºíia0ÑG&£—Ú¡v­ÌV-}\nóÈ/2¾F»¤ýÆ$yù}€LzXàåè1* ]‘»n€…rÂ;ÕÓß\Zõä[ó||ÐPÇÿ{ó€¨py¹ôÀŽ¨õ‚ì„ha…wV=a³^]ÏØô^Sˆ®cè¤À!úSìŒËS½°”4_ –˜\0Ÿ„±%î\ZôIáÞìe–Z1¨Ð.x\n°ºé“A7hU€Ù4Ñª)•&W\ZµŒæ%Þ`ŠÃŽÚi>Ò¾Œ«§Ik²D›¬º#Ü ‚ýÑ¥Þ›vüX´$Y:u\nÓA¦€ÓcÚbÏ‚Â=/!XÒªEÌà5t8G•trWµÖñy˜n‹Œ•.[‘½±€\'†EÌÀ}`$@Zy=ªÊÎ½Fj;\Zääî¤[¦aÚÿR=ø§}¯WÛ€¯6)9m¾Ú4ˆB‚¥öI ‹‹IsK’\\CÜT\n¹ê!]‘Ç3R!	å–Õdèsg£ÝO»IÐ3¡ 6¸È®ŒÖZêç5¥	7­A%Ö>H­«“É4-D2Ÿ;ËÐpáÜ^:Å*)¢g4®Ú1Ì²ï³þéHÌ\'Fýl?Ë¼lJ>›6.í”äàmÚÅ÷‰¿7êEËÜI‹¯\\Ëþò%$ã´A»T4·žsc Úâ=w\0Ñ%@×R¿Àa¢L[‘Ð€l\rZŸCä­d¦X„›Ká!ìâAoá!1i=j02ø!\röÙœ!YAÚrÖlkeT3\"íðhY÷<A£Œ¢&RÑ’¿ÎmÙŽÄF\rr*C*±pÓ^@-‘F&	ÑÊ+G7€œ€ÌßjÕFuów‰Âí”¥ÓBu¡²q•…å€øS%%LŠM¨UÄ\0±Y(Ng›ö‚Ž y¿iþ6Oß«2\nÐr:RtU[Ušq2p+ä1É\0“\\%”¢}Š\0Ã8:Q…ÈQ1€lÝ_\0ËšPeèÈ ò³¶ù$&ƒ Ùz@ÉÇ„¸I\ZÃ$õ ÁºŠ@$†¹+2È½‰Že– Ä\0¹Ö³™yXˆpq×®¥BGŽê4ÝÖ¹\Z=‹¨ý4íÈ×{AÂÒê¡¦ Vµ[K­fÃÅÑ¶Ð¡0LæLè´®Ý\ZàF”ÒG Áåò»½O¯§tþH‹{ô3À±i-\n_Ü°[î7-Ý—vß YO¬&éknj´•ª|4ÑFú.à8j¢7Z>Eƒ›P;‹W—Ô$I7éÇŽªÚH÷B4!W=E7µqÐC°¸\0à‹Ðèât†ÀkëÆÑc*P+ü:WA|ï}½û ²HêH\'•f þ½&{Î*ƒAÚý»7=!4:Ë¾iÕ¼O<¿Îô§}ëÎ¼6ï_†3ÎöwÃ™?gû»áÌgÎûépæëX|1\\Š1µÆZÂDøydouðt	®Y‚zzÌé£âÇ…RÜ€2˜¢”óÙ£:¢žqÒQf%äá†¯Øh†Îhà\n„7é 2š°û¤#|÷ÞfîWFõœ-¥]Ée¤a¬0Õòf:Ë·\r„žP\nP´:p6`)BZœü\0ó„ªÄØZtÞf i!1UO+^XÃ}Ù‰Ð¢<Ñ¼Ú.¿´£MVñmt‰¶õ¨yHŠ´‡DÌ+Ð¸`ŸJà½ì––Õ’uÂÍÔÊ\r¡Ý·=Á.x’“®Õ´+:©=Öh`Ž£Xô-%n†æØ!†j\\{è1×6f+0Xm%`Ó,[-à;íH37~ã\ršBüˆ§ÍíÃŽÀ­4íñ^ç±,’¤VDNZÑž²•Û³ž]·ÎžS	ÀFS7Ñk\0ÖWÜh¸Ù5å­PeõNÕú\0ôê0<¸V ®nõ?H\ZPj1{­{ÁÒÓ¶Ûm×\r*À0¶µhTÀ2 Çˆ ×9å@ø¥nÏÿ›!wY3Š\Z˜éª€–˜¿tÒ(¥IP\nÂûÈ¤µ\Z]-Yµ~TJfXØ:I[OÄ0XÞÏóë]åWßÍw/<-£¥b—Ó²‘ÖL›[\rž3w¨ü‰0eréñýº\Z	Mû^ÿ¯\0þÅ¯œDÀ¥PcÎZÕÑtµŒë¤N ÅfeíÙgD^¹èg8+ÎÚë®<Iõ€`}píT¦EõÐ—)È¦(<¯\"ÆÖÍ²Ó:ÇÔö¾´:M@ù©3‡w;^§ãÒkë¬ÆFæI×@FáãÈü	BE0,-Y•x…J;‚Áµ­“\"¤€þ÷Ú€9û3Úspˆ˜ Q†S#°‰àª¢	+KÂœ+g’øJ^{=7³w×§Ç’¬€RhCî³ZÀiÆXOú‡Ö—¼¦A—&±íz;»-YbþzÅ¢cS£ôU\0\0\0bKGD\0E\0Â\0¼9¬ÑÏ\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè\n+x™Â–\0\0óIDATxÚí{Œ\\×}˜¿û¾sçµ.wù\\R|èmZ²UG±«(p¢4ÒXn]55ÐÆµ\Z-Z»nÒ¢h‹HM\0µhã8(\\¨SIhÇ)P9N$Û9¶lÉŽe‰%Š’ø~,É}ÌÎÎÌ¹ÏÓ?f–Z’ËÝ™ÙÙç÷ƒå.ïÌÜ{ç|ó;çw^šR\nAVŽ.·@D&A™AdAd‘ID&A™A™aý07Á9>ÜÜ\n¸=x½\" ­Ò¹Æ@UŠUÏ9¼ü.pz£ž¤¶A‡O¬bÁ6\'/\0_™Ú‹DÿJ$–áUà‘éÆ|øŒ”¡MêÀí¥ê·‘d‘„n˜7Â‰l”lÞ£\"’Ð%À÷$2½‡d¤\\+à¯/ô{dzBDzÀS™`“² ô€=¬c2b#D¦Q)Bø\\?WóEú“„Þq?Ë´M>áfAº\n‚È$\"ÓB^•@è!ß“È$™A™Ad‘ID&AD&A™Ad‘I‘ID&A™A™Ad‘ID&AÚÆÜ¤çý4Í={„›‹ß™Öž§Ø ëK\"“TóAd‘ID&AD&A™Ad‘I‘ID&A¸y0ûà\Z•|ÌëJßì)‘ID&A™AdAd‘ID&A™A™Ad‘I„ý06ïqù˜‘©7<&³ Õ<A™AdAd‘ID&AD&A™Ad‘I‘IÖY„RXmdJAD&A™AdAd‘ID&A™A™Ad‘Iú\rY„RD¦¶yL>fAªy‚ 2	‚È$‚È$\"“ ˆL‚ ˆL‚ 2	‚È$\"“ \"“ ˆL‚ÐÞ\'2­ø&p	HZ?¿ÙúûR(ytýXO^™z	ü_àëÀ¯[[×¾µõû×[ÿo\"lvî[¯rÝ/…ç›À¯.sÌ#­ã>&åqUø0\nÜßúýVÀíñ{ä¿Zð»Ýz9‘©7ü“6DšçW[ÇEÊ~ÏðÌ\Z½W¥õs^Ò¶\"U*Õ¼•ó©U>^XšÌ\Z¾×¶ÖÏ¿ÝÉkE§t-Þ¼\"Ó¡U>^Ø8ü}à¡Vx8ìJÀŒD&AhØì¾\rü2ðO×B¤~‰L‡4zÛ=^ØÜh­ˆô­ßÏ¿/‘iåüïU>^Ø¸BÙ­ÇÀ\'E¦•óà[mû-$“w3b\n¼ì™VÆßžYæ˜gZÇ	ëÀ\Z\r™x?p\nøg\"S÷ÄÀ\'€G?.ÓL—^nýþhëÿc)Ök/Q’¦qŒ…ÔÂF¥	©ZµLà[QJ+àO[Né—Ua‹ÀçèýÈ„æ7Zš&	3:\0¯OO¦)õ$¡ÜV`.\nÉ[YÓbK&CÖ²±u]×05S×±\r][ñ&îï§Ù¡üð‚È´v<Ö×ø(ð¿zY&‚$fÒ÷923Å—Îœ\\ÞäÙJÑÑðt­–Åi2dÙ8ºAÖ4´m¶yYÆ²9\n¶ƒkš++|ø\ršã3E&aÅ|øÍØŠ:63Íÿ<}‚Ãu¿£ç–ÓäJåÏOR¦’øJ;D×4t £é›&·yYæìÍËæÈÙ6¦nts\Zð\'4û¤>+2	+á«ÀgVú\"å ÁSoåÙÙÞöÎšo?…*¡&œ\n~8WfÜ¶ù@qCÃ[Ø/’µín¿æïÁgE&a]D:W™ã½Ñqê…då4áH£ÎÉ0à„_å¾Á-üü¶ë&”È$\"u…Eü÷·Žô<u#U%My±Zá¨ïó‹çyüî{ñ²Ý¾d×BÉØ¼þäQàvUx•âÛ§Oðñ—¾¿î\"-$TŠÙ4áÝ0àS/¿Ä·OŸXIjý34GMtÖøRj]g?<ßÅó~øž8ÑµH_ë&ÙP\ZüÞë¯¬y•®“È°p®Å¡ŒÇ¿¼ã}ÝF)E‡Y>‰LýÅ8ðd7\"½6y‰Oþä‡V$¸~ÒÒáºÏ§^~‰×&/uór\ZÍ®‚q‘IXŒïÒÅd½¯½}”ßzëÈ†¿¸æßzë_{ûh·9…WE&a±„Ã¾nDzòÒ…MqKM§}òÒ~û§/§Oºh·I!2õé4á§)¿ýÓ—iaá1[ª™ÃuŸý³w#Ô/´Úš’€(µ¾aÛé¿¼q˜oÝ [gj\Zy]gÐ0³lÒÖXï M‰”b:Ž˜NB¥6äÍ8”ñxâÞaêé_§¹¦Ä’uBáæ¯Þµ%’êQÄÓo¿yC‘\\Mãv7Ã=Åöä\n:Ó\"JæZ#¾/ø5ŽTÊ¼Y÷)\'ÉÚ¬fÒa„úÊ‡ùüÝ÷tò´Íi:ˆLýÉx»Õ»T)æ‚€ož>Î33S‹ãi:Êçùèèv’³lt]CCCÓ4R•§)ÃƒÕA”¦ùI¹Ä‰ AcƒE©gggØúöQ~ãàí<í×[÷ôt¿Ê¤Ä©åEšiÔykfš“~¼®SY¤]q‹ãðÐØn^tÈŽ¡é†Ž“1t3ìÌçÙ6éñË¼V÷‰W ”yÍÈp“÷&ŸÍâ…“ÑÚy¯\'/]à¾‘Qöµ{\Z\ZÍŒè~‰LÂ\r#Ò»³3<{ñ<‡oPèuà®\\}ÅA<ËZ¶£J×4ŠŽË=#£(þÄyÞ\n\ZËcŽ¦“7t,MÃ@ÃÕuM#i§£ëèhøiB¤~šPIR•.ÿñ‘WøÆÏ=€gYížÚ¾VBç‘I¸Š0I8WãùËo(@V×9X(’wì¶çéšFÁq¸chÇ«ÎE!Õe2i¦¦á¶YÝ kYžnà™&ƒ–Íî\\žŒaÒHb‚¤9#7V)õ8¦–Ä”ÂJs!h0G”’„x‰hõ;‡Êú`\'XñÔbÑIdêc’4eªîóêô‡kÕ%«F;,›¹†ÖY\\×4—;\nü¸<K5\r—”hÈ0µl†-‹­ŽKÑ¶²ÓdØut38ïMVJ‘¶qš’(Å\\P	Î×ªœ©Õ8[÷™&ã˜šJ¯»ÎÃuŸ]8ÇÏoß¹¢è$2õ)\nh$1çªs¼<7Ël’,]z2Cnw+Û†AÁv2MÎE!é‚jœ«iØšFÑ00L¶;.;=m™,Û²Y<ÓÂ³,\\ÃÄÔu´k¢¢¦iš†X†@Î¶<ã…noÔ9])s´<Ëq¿ÆÙ Ád’\\\'ÔcÇñç£c8FÛJüÍ®‘©ïeRŠrðz©Äñ ±dúÚÖ4öçòx–Ý]TŠD¥ØºŽ®ix-<]gØ´ÈÃ–ÍÇe[&ÃŽlžÏ#kÙºÞõô_×4Ù–Ë³5›ew¾ÈkÓ“ž-ñNÝçr]×žzþÜþÆø-í¾üRÍ®´•&jUÞñ«Ë6Ò·&ãùB§œWâ˜™ A)Ž(è:EÃ`Ð´0M¶ØyÓbÈqØâfõ²¹\\³wEÓÐt¶çòx¦EÖ4É”fx£Vál]¡¾tæ$÷m§è´µžŒF³ï³\"SŸWñü8âDeŽ“A°ìñ{—­^¶ëáG“JÁnÛaÐ²Øj;lu3m›œi1äf(ØyÛ¾R]ë5®Ë]Ã#„iJ˜¦DªÊÅ8¾J¨çNŸì¤ïéa‰LRÅc¶Ñàx­BM-]Óý­•€º«â¥Ì…sQÄˆe³Íu²m¶g²8EÛ!ÓZÚË6Ž2èfxßðIªˆÒ”Ð¯q9y¯‡êÉKøÄ¾í¶ÆXÐ‰+2õ!~q®ZáL£±lçf^7¸%_Àî2ZDIJ%\nqÛry¶º—QÏ#gÛäl\r­ëàµÍ–ŒÇâ\0Õ8¢‘¦øõÚU)û—/]ì$³÷ïæ«z\"SVñêqÄ…ºÏ¥8Zöø¶ÍŽl®ëÂ&	J)vy9\n¶ÍëR°\n¶³jÕ¹e;šÆxq\0£Õœ#Þ	ƒ+_,?Æÿk_¦¥š×§DIÂdÝçD­JÐÆ›}¡Lw)qÕÊâe-›¢ã·<Ë\"cšW\nòz¡k\Z;óÂ$a:¨”Kœ‹Þûr)v·,¬}•Â$a6¸ËN‘p[)ñŒiuý~\Z\ZCn31˜qÉZÖº‹´P¨Ý…\"ó¶Yî‚èûÆôTÛŽÖ\\\'‘©HÓ”j2á×˜l£Š·Å4Ù+t]øS¥pLƒ¢ã’µl,Ý¸®Óu½±t½…ög³\ZÆ•ÎäÇŽëäe~Yªy}™¢$¡EÔÚ˜mÚL‰{]§Ä5\rÃìYr!U\n”\"Õ4”JQj>ú5£L7ý`š¦1äfq\\Æ,›RR¿2ú<Hâv³z™úŒ8Mñã˜¹8ZvÂžÈæÉw™oV£tz¡QÒ:ïZ&	a’¨”$U()³l]—¼í`t(¯k\Zì/p®îs>i´Rå“¾ÏÎ|¡—Ø#2õšºÖ=½\\J¼hì]AJ|¾1±Rü(¢Ô¨3Ýð™iÌE!å(\"T	õ8!F§Š­ŽÃ¾|‘½…\"[2^Gçmêc^Ž]‘Z•™´9vïÈÌT»2E¦>$LR\"•^·`ãµì°l¶¯ %¾¢H¤8f.hP\n&ë>—\ZuJaÀd0EÔ•¢–&ÔÓ”©\\lÌuÆsF½,…Öhóv®!gÛìÎØ^)s:¨*Åw\'/µ;VO™ú-2¡Š°öÒþÖ¹5mÓ)E#‰™\ræ‚³AÀT£ÁDÃg:¸ELÅ¥ô½Qßó?iJ5­06Ø[«²ÇË²·0ÀŽlž¢ã,›D1uÇaÈ²Éë:Õ4ítÁÍGE¦>\"ISjqLm™é®¦±/—ïé`ÓvÚsµ(¤Ôh0Y÷)\r&ƒ€™0`:\n™Š\"fãøJìºç+E)I¨$	—ãˆwë>ûk>÷\rq``ˆáŒ·l‚b±ëí 	±Mdê#æ³y~š.YÅÛjZ+J‰w#R5\n™ò}&ê5.ÔjL\r&ÃËqˆŸ$TÒæô¥Úz±RÄ@#Ž)%	ÓIÂ\\1EÜ9¸…ÑlÇ4oØ–â˜j“t¹T…ÈÔGÄ­ýc—K>ìuW–ï„´‘.×jœ«Õ8S«r®ás1˜J\"üT5“.Æ+Åd‘¦)õ4¡Å(/É[Î¢Q*ï8ÌÅ1siÒÍ¥Ü%2õzkVêRÓÔ4ögó­Ùª«_í¬´\"Ò¿Ê©j…ã~ÓAã†Õ¹N™N‚zR3Ô9à×¸{x„ùÂu_\n¼fa•ÒãûE¦~j3©”D¥×-›µ‚®³7_ÀÒWwjªTsu!5/–¢–Ä”“˜jšöD¤yªiÊ©(d²<Ë©º®il[d=‹Çe<›ƒ.÷™úCÓ±ucÉ1d»lgMRâó#²¶eèœæûÞ]¯q¶VãX­Â»:³=Z6VŠ²J¨\r’KT£ˆoÛÁX6w•àõ«Öß™„¥k8K$öyÙ«VÿYm¡šRÙdL‹AÇeW¾ÀqÄ]Õ\n/OOòƒÙ&â¸gï+ÅÑ Á¥ËWvj_Ø¦45íª.;è(‰L}„©ë8†yÃjž«iŒ¹}m;j5šcätÃÀ2<Ë\"o;:.†¦ñÜôåî’7d&IøÎÄy—Ý…\"¦®cÃ×Ÿêà^ü¥ÈÔg2eM“¼a,:ÂÒ4¢4%ˆ“®§]ô*b¹¦Éö\\žðN­ÊÏüZÏ7\0øAuŽóo¿É¡|ƒùašòýéÉ®×E™ú]Óp[×15íºùL‰‚uŸZRtœuŸ.a;óîÌx«Q_v5Ønª|o\rN„æô$Àu\"u°ŽžÌgê\'4MÃ³,†-gÑÞW)ïÔ}Þ-ÏÒèa;e%Õ?Ï´q2®â÷X)\Z­ÇBe¼N^æË\"SŸaËÂ¹Á*@gÂ€L]âÝÙA²þBéšÆã,™Î_->:2*Õ<áÆßô®a2âºxºFy‘ZSC)×jä/ž\'Q)û†ð,k]FÏ·ó4MÃO×~Ë´ý…¶7[œ™úËÐ)Ø9Ã@ãEõå4áùò,~’ðÑ4eo¡HÎ¶1uCÓ®dßÖ‚D)ªQDF[ûJÔö\\¾ÝC§E¦>ÄÔ\r²f³š·Ôw½¯R^¬Î1q&à€—e_.ÏŽlŽa7ƒgYØºeè˜ºÞ³µ‹Ñˆ#.7êjí#S{6½.2õiU/k5×ù^¶ +Å[Aƒ·‚Þl‰-¦É¸ã²+ã±=ã1æy:.9ÛÆ5L,Ã¸ÒÛ+ÊAÀ…º¿èN†«É§G·wrøŸˆL}JÆ4Ù•ñpkÕ¶ûT|•r&\n9…˜µ\ny]gÌ´w3Œ{Y¶{YF2ÇÁ3-lÃ¸ÒÞéV­D¥\\òkL„Ášï‰ûK;w·{¨¾Þ/2=~“šùôcÀ}í<)kÙ„iJA7®,Ò	óñJIÂÑ 7WfØ4Øi»ìñ<vyYF3Y]—œeã˜–ÞYÔJ•¢„)Íp2hôtàk;·Ÿ¿t¥\nÝ2=v_[È\0eš‹ÇßÕú}éÈdYìò²\\nuT®_¥øQÊÙ(â¯ü*]g›e_µ¶dš»\\dÚˆZ\n¨†!Gg¦øÙÜ,å$YÓ›úÅÝ{;©ª¾ÔO2ÝÌÌµ\0Ow\0_d™Îx\rxpÇn¾|öTÏO(VŠ™$a&©s´QÇ-Ï²Å4Ùå8ìÉdÙ™Í2ši¶µ²–k6w44\r44M©´Dúîå	N†kz¸¬£öÒï‹L7‡ØéÀ¥¹#Ã²$žeñ±!žërîN[UµkÚZ?®U˜1³,öd<Æ½,Û¼,[ÜYË\"UŠjòfi†—JÓ¼^÷—]Â¹×<<0Ôî\Zã\0uìk+2Ý2é­*_¸ØŽL\0Ÿ>x;Ïýä‡kv²±RL%1SIÌ›:^¹ÄÃd·ë2æ¸DiÊ™FsaÀt’¬y;	àïí;ØÉá¼ð‘isóÀ¿\0Bš½ð³À¿ž–í$):.ñì*F§¥¢V5M©¦!§¢³ZÁB¥H×éf><0Äˆ—íä)¿{í7›°yù‹üíÏ€óí¾Àçî¸{C\\Èü`ÓtÏá7Ûß~àx+é#2Ý$œoE¥ylÀŽ´ûŽaòÅÝ{ûþF~q÷ÞNÚJ\0ÿf±:·°¹ÙÌ—‚pð,Pm÷Ú½—Û×hªúFå—víéäðYZµ\"ÓÍ\Z­Ï\0¯\0ÿ\røG@[4º¦ñÏo½³ooàÿxÿ}nG³è@\0M­CÆdÏwñ¼Ã­oai~hkO˜(M8W™ãO¾Ë*sëÚvYëê]›‹ó/ŒJƒ‹ýÇfÍæOz‹¥Œz9Ü:Æù àÄ:t–®y!ÊxŠðk7ŒðRŒ„y<ËâÎ¡ÝÆ¸mßÔ…ãPÆã‰{?ÔéÓ^eA\'íÍ™„UbÀuy`ûN,MçGÓ“üÌ¯®ùˆíµàñCì´¤€/uÀzË$íž\rHÞvøÈöló²xÎò£Ê¾ºy*}ÿç¯}¸“‰óüG®éWÚh	ˆyã…\r†ü(äØÌqá?©U×|œÜj‰Tì¼à8°¹ƒ6BµøÏ¤èn<4 cZÜRàÁ­cÜîfÖe… ^¶‘žûð/v#Røh;n„6Ó7€_—â»ñÐ5¼msûà0©Rx—/ñfÝ§’&›*Ó÷éÑí|rÿ­¶‘æô§—«Þm¤jÀ)`\\ŠïÆ$ISÊaÀ™¹2¯•¦y£2Ç+í÷ºnüçÛîâ}®·€?¢9¥…Í$Óƒt×y+¬©RqL)hp¡VåõÒ4/•Kœ¢u™*ÑNµîñCì&Ñ°°ÆôHGUcµqnÄ—ÏK±ÝØI	¥a’P\Z+ÍðÂÔe^®U¨-³Oî&ŠFm\'6²L\0Oÿ@Šíæ‰TjOOñRišwƒFÏ×_²ÁÍ–¢Ÿßµ‡_Ù½·›¶ÑŠEÚˆ2|æ¤7a“HU	N”g9V.ñry–ËQÈd’®Òü$ðtýŠ¸ÿvïîÝ:FÖ¶Wºf×\"mT™\0öÐ\\UH¢Ô&a¾ê7Q«r²2Çi¿Æ‰ºÏTá«æµqK¾´KòºÁ aPNvY6ŸØ±›»†Gð,C××U¤,ÓB©>ÞJPH‘]UnÆV\Z¥â4¥…TÂµ*~3~X57€.Å1s­M ÓVÑ³ZýW)\n¤ªù7W×ðtO×QÀˆesïà·\r3èºXzs§Áô~u”µÛ¬2	kË£À×`eåsa¢\"NSêqD#‰)³AÀë³3Tâ˜7üêuûÕn5Lîð²˜šÆ­ùEÛf4ãá™§¹îž¥ëèzOÖ7W4—Fûr/nžÈ$\\Ë8ÍÑÑ=«	¤×íP˜’´ÂR¢RMG©fT\n[NjÚ{»öÍ/¹Òå–¯¡<Ä£ÀE&¡W<CsdÊšŽ!šjó-,=<‘¿l5zž„Åxx€5Ù¯µ$šFÚ‚G¢Ñß]\r‘D&a9^ 9Eû€x_‡j]ƒÇ\"¡H5OX¶ÔÓ­h¥m\"‰¾O³‹åôj¿™È$t+Õ‡Ù¸3µ×T\"‘Iè_þ§°NsýïÏ®Ç›‹LB/øÍ5Ï…6ö‡Z¾Csk—Öó&ˆLÂjˆõ›43fã«PŒ[U·ïÑýÂF¹p‘IX‹6Ö#À/ÐÌÎ¯yè,ÅbÞ[Þù0P¢Ù7ôÌZ¶:åÿÄ<²DªÿŽ\0\0\0\0IEND®B`‚',20,20),(9,'Demande de complÃ©ments','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0ŸzTXtRaw profile type exif\0\0xÚ­œivÜ8„ÿãsbŽƒõ½¹Á¾\0K²UÖj·Õ–Ê%ä‘\0Û¬ÿûßmþ‡?¥º`BÌ%Õ”.þ„\Zªk¼(×ýçþi¯p¾Ÿ?Ó?~gß¾oÆxüÂñ–.z\\˜ÖãúÆûñ×rx¼ßß¾oòc W=~ñ2 ×/×•Ç@ÞÝïÛÇ¿M}|®…ß–óø[ê¹§>tÿêéß!cŒÏ;ã–·þâ{Ñ^ƒoüLç{æ\"ë#¯?›^¿o;óúòÉx;¿o»«=®ðoMa®ô¸ =Ùèñ¾ïÛîXè÷Ù——îí/Ft/ýÃv{Ï²÷ºW×BÂRÉ<u=†8¯¸°cJ>–øÊü¼Îç«òUXâÀcov¾†±Õ:¬½m°Ó6»í:?‡L1¸å0·sn8Þ+˜¿ºáå‚ /»]öÕOã~\ZxÍó¶{‹=÷­ç~Ãî<-W:Ë`–OüñeÞ{óo¾^Ú[¡kí1f>¶b^N¡Ç4ä9}ç*b÷Ã¦ñØ÷|™ë­o^ëñ`<f.,°]ý¢Gû+¶üñ³çºxsÝ©aó|€‰¸wd2Öã+Ì6Ù+;—­ÅŽÿ4fN\n¸ŽlŒnZ³ñ÷	ç§{ó™lÏµ.ºûm GD’&ãšêÎ\n!?9b¨Eƒ‰1¦˜c‰5¶äSH1¥”“0ªeŸCŽ9åœK®¹_B‰%•\\J©¥UW=kªÙÔRkm›6†n|ºqEkÝußC=õÜK¯½\rÂg„G\Zy”QG›núIúÏ4³™eÖÙ–]„Ò\n+®´ò*«®¶‰µíwØq§wÙu·W¯=¼úÖköÉsŸ{Í>¼&…s]þå5ÞÎùe+8‰òsÁâñ,ÐN>»Š\rÁÉsòÙUI^³QÎ™VÃƒaY·}õÝ/Ï}ê7Ãüæ>òœ‘ëþÏ¹îá¹?ýöŽ×f;Å)eÓËo€Vi®4Õ¤_?û´~Ù±‡‹3t&PY\'É0FmqÕMÁó6ò¯Ôs0¶tk±Šl¯	‚]#{à ×9mdVäûÞ—]¼^¯âb[yÏ½Kæ/K®ÁšÀ×­QS¯z•÷²ç#äHŽ> yñ_4ÏSüÛÍGkþé€æ+#~w@ó•¿; ù®W¾\ZÐüÔÍ\rhþ6nž4ÿ\ZˆÙ«W®ÜàT«PØ4—ïs^)õ>MÒg—m~wb*cÂZ°ü]c”DÝ6\rp ,Ï8£,jq;éýûOóæ\rðˆI¤rõå\nÄ$•ÙühÝö`ýWªÓÎZ˜Ä5ˆŠK÷lã2	ºR-÷éÀNƒƒO=mûì#ZLÅ:Í\'^\rÀ»©ÜAø‘\\—’‰{ƒŽXdÎcÆÔ£ª7%!Ú¿ÿÓ|ãB@Vûð6áÀ²ô¯YaL¼ÌB59§ÍrêÉv×XJ^k°gmµÏ+Ïâêwio¯GHô+†|\"»ùWÊêŸžxëˆ¹ok¼oC¸Ý!6F×O øß¹0µÝ®OÆþý§iß¼ðþ¹+‘ÊÒ-«+¹eÍâša:ãP“üVøÜæûVøÜæÅ\n›BûI¥˜Cš)mŠl/š(Õx\r\nhè6àKr®ÅjU¯=JÉ—fÃ6V«°†+ké+@ÚKå.Ã,÷’b»§Ëº”•Äÿy\rïŸÙo‚%Pi÷€/\0²àu›q‡^u†?±Sf>ExË¾ïgîñþ}8óûôþe8óçjÿn8ó‘ñ~:œùÈx?Î|î‹ïg¾ãÚïgÞ1^÷H.îdwˆY˜ñYa’«ä5üŠd¸¯kÏY‰`À<h/%@rŒ;Q¥ß Šã‘k0½Ýcc KÄ°¯tA&}?‰°î’½ÓÕÊIÖFW-œy°²rÞƒ‚¡±Ö°ñ®rÐVŠŒù™v\Z÷ôÆ¾W_•n)i&ùÀÉl“»\\ÎÙ<OÚÉ^ûÌe[wÃVL«ßsžôý^Š›çç× Hq ÏåVC¢tV^-¡!#(ÑV¤ÌŽè›”Ü•Mš#ÏÔg¥Ö±ª”í\r£¹6èf#øÂD1wõjNzç§ùèöuþ˜ø¤4ý¾&J Ïœ›G8H”iiÛ&%í¶Ê±émÑt»ùÅ ûük\\fÕ¼BóoµúOÿ©Oÿ÷%YòZPN9úmU“sñ)\'„Â´>-ãvíçùšÏ\'üþ|ƒ…aÝ3Yî\\Ù)Ù¤¥&LUíy}GŒTö51l€ûä‚†\\jßlÉDîBC:‚vD—â HÕÑ[õ¬3¯û	Œ«s?ÇËy\r¯YÅt–iwÓzF.ŽIÇå±sÌ¤`:ËLcw·Æf-yÚ‘;ô3w²uPˆ5BW(G_Â£G¢¡!I\raG“4„¥šÕULü®È)÷kŽæÏI2Çr.ŒRÛ—\\—¬6{¾yn§~ÝÛ1ó2ÛóÈ@{_zOƒkÓx1”Prœ+Í=Ññ3‘×i{âIÇTž\'òdó3K|ló3K|ló3K|ló3K|ló3K|ló3K|ló3K|ló—É‘U·Ð¶Õ¥r@dg}Í1Gàz¿TÑ}·.–…ò.œ´Ÿ»\0~´€ô´|3¤%…çüvkµ™´Ñ‘2mMîü…»ÖUü<\\zîßÐ¼EÀC¥o\"}h4v{VOXýÕæ«Ÿ¨?^¹ÉÿÒCþ?¥þæY\0}†ØŸÍ×¼Lø¥ÒÝ39¥îQè4c1ˆ$žòÀý[Òäï×}spÿ&!³ù¢®DaÕ0õDUPcPemñÏîËGçøSzŠGCe#&$µ^%×k¹ÖÌåúí\ZÞÔ®_¥‹%Ä·<Ê|—H}EþÔˆúOÈŸyÛ|ü{ògþœôß‘?ó,ð)Ê`qæÎ§2ÿM·cŸ¡\rŠovŠ{ŒîGh±c¼\0Èð¾¶Å†bê”í:w‘V\næ3á+yÏJmŒUBnµLþCmú5µ”;Á†¦^M=g‡Z#7×V(£ÛqÙºÂÌIn¡¿B_?iT}@_Vj=¼Vbã|â\n>Þœ°°³”Ö„pøYØ6¯™ÕÈZ€øh¹†u[^ÖÀr.µ‰ÊˆÉ¶²\nFI;GÉ±ÅÚv‰zô\r¶¶^ÞºìBžs¬ì¼@¼Û‡¯ó¾g}ÏYn}™³f÷2å—	?¦Ëo^\'lÞ™1óííú!0€þ:ší}£pU•÷lj~uÍ2ÔüZ¿ò™¾ËéQ¿VüØ‡æ­ÿÞ‡æáÄc”Ÿ²´ß+²y1ß?‹–ò•÷Ì“inÃÜfÑ·Y®¯ƒÄ|/J¾ós¶ø~˜§{pU¤·^jZ8©.Õ3•<TrB»JJ±‚ìã\\º«ùŒ­ó\'3ø».›y<·ßtÕcµùl+•B(k/®iz(IàÝÔéƒš˜»Ý)„2W\n#£]¬ò2¾<X›™’êÈÊá«†æß	óÌ~þ–L˜ýT‰ýY»³$G¦¯î[s]Žž#\n?å£D€;£ó¨ôŽì\'l†oÌ!\rÌ=ýº,âØc!œÓ£ZÐýŽ\r1Uì…ÿX_Ý®ØYšµªE„„3T2Â$aSYTMlãQšd	•¦{‡‚Òôè5i_òÝö\\=ùx–G‘¯½ÞS\'Èú=¨Ík§¯ÞR&â\"àqm§ð\rfd/\n(•8S¼†õÍ¸TP°L\nê\\Š³¤ÆœŽ²Xít¬05Ï˜¢ïÚêÌ¾ŽË¨òò­ÞÈk„{\'–R´[ŒZú¥,ä~Ö×Ì-›	ÙÝºG\\#¨íˆð°0ú¹jNÕY–8ƒƒe;cl1^y»1]\rJ8»jw_ÃD¸.†Ù¥wV1{ˆ§7€w{&Å¸óÔ!;aÂ‰ä+Ì™Š¯\\$/l¦î+EØ¡»2±ÚºµÌ.C@ä‚zq×¾áH¬ÈB]@p_˜82‹™ÇZËî	Âã:Éz¼í²vZÆòM›x:E;ìÇè±3bå\"5…å)œá2Ku×@cxñøt\0‰xnÞ‚s‡r±æ\Z¸\rÏª©u‡#¹ž½I èìˆÈ•íÎA}Ÿ+àÃ»d~‚G}ÂþJ!Ã\"Ž/´ñ÷NÙÍ|ó¶UöQÎ+\'Ô²k¶á­\rDvžš—jxZ\Z~¨%{€ªCNi-VN’ ÐâoZÃ-ŒóÐBîb¸\r	N¸êº“²Ùèïžð°˜L§*æ×C™3ãÿ`(óXü?e|øo†2÷\n“\'ÊoE¼WÛ:ç®¬\ZkƒBHòàèA„#`”	*…°\r`›-?ŒÍ*áD2¥3Ž!vÆ÷y´!õ^*à…vŒ.v\Z0ñ¨L!†¹hâøÚ€…œ7ïG¼ú¨n!¥ZãÛtiEÞé¢ËÅ–€„Y!…DIizíµ&í»¬ÍL¢°r]¥jw¾aªìSf!žl…buJ|YwmÏ0¡@ÄNa¼½T»»LdÖC=Hßªz†\\ËðU”c2·²X *‡E‚ÀÓk‹Ð6Ê,3€ó™œGr$pÊ €vùy.¼‰W\0TSCŠd¦_âð¹“éžz•Nr$Î2lÚXFA!L*5–Ø,È{9Ïçgk5Å°\0¨!o	PÙ5‡Â§T¼ ªé$Ïi²¨íj÷LµAÁÀEx’¢³Z¬;`åÍ*o‘2°µ>fíÎ×ë,\n0+5à~|HBûËÕ0%}ÓÖöÃOÊNÐÑ ³\nâëî˜¢ìÔ<?5×2‹ú1G€0¢›¥ÈAD©X\0EÒl´*åùIHoBnÕ…žŒ![[ü»1­!Z“NëÀ¦$¨²ƒaU¸\\‚é­¨ƒC§4DcÐ†|³5NbkØet°\r­Æ<r	ût4hOìR½sö]ücQÓ;¡“m\\µ0¼\\;ÀCfEI²¦[QÈtoô+xÆäý\nBÓ¸\\µE¢ÉNu^ÔØ`ô9l1¼§ÖQŽ2$½—çèØëR_;Alö£,M¥\'Þ¤¸`\\\\	)?Ž°Äõ±z HÒÎî(r×Òa…û â…• esý^Buh29«e6ÔXT‰¨€ÅÐ¡ßÑrðÞú\r‚¤`Ãz§1ñq}Q[âìG˜6P~oJH\\<Ú/M‰?Zæƒ\r_[äÚLzÚJR‰zl&egK[Ð.lO-)gNÍñ¥ÎŸý—?~ö\"*´º*­×\n	Œ>!Eë¤\"a;aQtTÞ0äSã¨ßG\ZW2ìjjr:ÿê¨†„!¼~B—‚r€;¢‘Î™4`v-$‹§ÀòOè{4kF<8ÀîAìRl„×4„M[ÀÉÉ\"KÅ_Dœv>^#-ÓÆ6ÌnT‘ÒJ÷AáDïµ/ÀÖÈn¸˜ˆÈ>Îóœ$\08Aä\rè\"´¼¹ÏôŒ“•á€*O$X‘ü¬3>nS¦2Å¬4>¨ã;¥ÂØ§…ÌA²z@ÑT¸D#ÒƒË\rh5à/qO…²2º¡’\0`ÑÃ\ZùÀŽ’ÕÁ¤ ^Et“SGA.EÍYF¨q]ŽP’HE]Å–‹£sâY,uõH¹lk”î)›É6„g”@Ì.Ä34Ò«Ôq6$è\ZÇ“‚{ÆN2MØ)ß0ÝÊÆ.™¬kÕ[…A bþåîê÷“§~Ý-Œ›s-•M°›\ZçËlÕ>€ÂLQ¢è^YÝ%‹OTÆÚ|BŽ´ùˆ·˜CÏ6_ºs¥IJ1Ùqtw‰4•xÚeþ´;i¾ÛRýª;i>Ú›~÷øÉ\'ûÊæÄž—¿7Nn88ýbÂ·àÀÜ/ZVu!Õ;€élùëX\n‹CguM¼Dü’–{!ÝŠ¢c¡VVK†J¨JY/\nl\"rè“æÄŽNÑ2ª9¤Û¯$Â´)„ÄŠÖ®µÂT5Õ4hMN×œ=€6^$ ŠQ\Z%2÷˜\0Ì@&£Pç†`&FCò‹\\sQIfÐ±!jxõ:²¯ÚèºB»FÓÉWGâP‰5*í\ZDINNGø V‡HÀ\\Ã IÐ@˜­B‰þ¡Š¸™ëø¹é\\Ì-£/ƒï<Ò9\rˆð`-‘›PÈX¾zú6!\ZÜfX¢ÒQk5J¼æ€d¾\0UnE‰\ruÔ‰–$œ^“æG6‘‚È‘»²À-M°^çFðoå8é¸DH\0<T¦÷èÃ\rÛQ~a\"4?e¬‡š&^CÈv@dcžú5*™mV\r/k]™Hß_\n)§6IIL+BxMÝ]`Ì\nTÐçÑ´éÉ…T[óÙq…ŸT[óÉñ‰oW[Š$3Š~á(«q,k\"þ\0BŸºÎSóYd¡(8b8¸!¢7Zê[CÌ’„Cƒ%2¹kŸ-=3Q)Ãww6«sSäÜ»=>ÜR`×»¬~n¨QgMH,\Z;;–~<mœ\nÊ”ânçØéyÿÞA•#Û?Õ²GZælŸ¾™”Ìz¦õ4)µ«_\'nU÷2)ukz{ÙHÕ´^7RolúmRTT ‡=£¶j:5‡ÚÐ;Ù¿tâße¢Zç/ ¬`f¾ð½=œÜÂ B\'A†´ÙW¨Á2Ä‡½³:~ŸîsÇ\"iè`ªDOM Rñ\0ÚjhuêTý\"ÔÎlˆD2\0>j¢Ö¶i ¦¼O€Gnª<”& N : ÔÔªŸàÏ—Nç´ ã§6Dê²*Z›¥¨#u¤du&¬~!ëêPw4†ÒapÕ´ÌMå¦Âa7F\n¤Ì:¸ONú^Ôk§º»ºbLL jøƒ®›P0i—Ñ\Zyz¡‰(” kf†<gÚä-p¢Ó°ÀÕ ²“ÉeF$#\\dÙÄ\'HXøz„Ê»VŠCôz¢çdrj‘¢ÔØ‰™²Ð-5;3	Vp	\n…\0g/ú\'tú2òd$QO\'l=–‚…e$·9gddÏXº)C«šQHø\Zþ€ûÎÆ=\0Û´À±\rMÈÏa`S‡N_Ëê¬ä2¸¦Fêe¡–Ôš¡^+Ø	¶À±JqGÔój{™^QÕöóÈH%\"ƒtÕ¾…¦èCZœÖÇÉ3gfäïfváîv™ÏÚ]¯Ý®>6õÿ)¥(Td­6\r†µ“…êCnØ¾üPrÄN‰C-^ø¢ˆz?O[Ì!€¡7×@’YPÏ€TCó:Gr-Bé	¸ ‚\ríM–´|ña/{‘dQG™.‹ûâlÍç[>:Q}\Z~:¥ýñÆ¦ylŠ}±¿Ç´ö{Óúµ›b~m§|½M÷4¹7[Sæyoê‹]¶×©-f†Hp(=\rÆ¨±oÓA»«Ä^áÂÚ0\"9cQO¨ìŠÝ†\"2+y*Â\nr-F-`’m/„s‹1KÂÀ I2°ÞŠt Ÿ´ÓâÝãt<´Ë³p2Íª“+9I/ŠþÁÖ{€0T‚­G=‡•¢Óó’\ZÐÑ\\D(Pààn¼¹Hg=‹t‘UëbF`h~fÁÑ ¼Oâøòýªs a|Wu–éØ©ñªÔKÂñ‚>iÃ®Bƒ‰·XñG™ý¢6ë.0mAø+ÒvCÙˆ†q‹	T‹êe\ZZ¡Ù‰\0ö¤>Xµn»Ç:í“,í¬BÌ ²p/è&:†¢üætzÆa\Z€WOq–èoÎSÿ€‚k„?§GN#pF‡r$¢–ú\\z>B§I,ÕÜ\\hÁÒFÇùÚ#\n®¨_ÆMå’z)§sß‘]Yû/$öpqi7#–ÑÂÐ-ŠU!Žr—à³ë39T«ãþÉ„sÑRå>%\"kË@\n6\nÚ\ZÃÞíÏ&ÌÆ¡Tã„¿âY”6Ü¿åš¥ïô<ÈºÏû@ö+Ú©Ð²3,§Ã†&õ*ƒ>Âz`ƒhL$Ž:aª¯¨¼È[-J©qm‹ª¹^ïÞ|ð:}¨‡Ó0Ç˜XË\\<ý@¨Æ«Z¨8Uˆç†l &®†,\n/;ðóÞQPý!ª’ŠÌN\Z„€ÒÓ:ùjÓÛQ§‹„Ž7˜t\\ÍbcÍRˆuJ)G,ºª\'\nÕÃA‚IŠ¥6v-§eE–^ú~‰3œ–dÔáOhÆ.×+•­êaÈ©\r,pÜ\në\'tæätÄkNu—ÜŽï£áˆãrïÏÞÎÏÖ8JéÆI5Õß8¿÷­áqþqzý4éç9´nthç¿JÇóÿ“¡Ì9KÿeîþûPæÅXÿ:”ùe÷ï\r…†‰²Äp\'\0¸!9pEÈh\Za1øTÏW:ÖjÍû+kHýi7Î¯tê#in”\"Ke/êà í	QB˜ø0$pïz®Œóp˜×îÝh„PžpóŒEæ¶°~$38@ˆ„RCÃêÔÂ#­t?m¡F))ŠÞûH¹ß|ó¢ŠuÍ9˜â—ÊR”z‚R[Sù+˜Yä‡¯`°~(‘ê…U=Ã)ê¨N\Zê:ŸQ:5l‘!RÝL»`þ¬.²@0/‘ßQ3Pã©y›vî²®œBOÊ¯­]‡Úúà„­\r\n2_û¼36y)\'=YW+¥É‰BQ£!Íx¢ÊAûý†gà¬]»<\\1)0?{P% \Z¸véñ:íàÖTEf:Ò’„³¥\n‰FFâ%=*Ü$ºô8·N›2+u¶)ÇÚ£)ì¶ujIë…²—žT\0üàÈhªû5B)ÆOm@D_Â R¦`,±ßXu*§ bl£Bé1¿¦}œU\\¥tkSZ28[£ ÈÕÙsÈøjMÞk+ê\0=Å¦ÁßÓ	*,A˜Stt¤NÕB”wqæ²*fMÎXýÿ+’ÔyØ4ë\Z1%Öí‡Î! ¶·£ÕrIå°eÄHöŸS3L(¨W§)œ\r©¡‡!WÔÌÐövS7G×ˆ<BÐ ”6Ñ’¦Øs1êV6á _s„‡H+Œ¤GÑÅ#\Z>?¤p_üê‚w~B·Š…ó1•A41¯f`‹A\'{µD&éÿ¡Ý(eâ^ÿë	%E4°yJdðuœ,…¤;ƒ@^êÊ:j\0«­å¢®b¬ˆÄ¨»IQô¼i}´ntvAÛ“^2ºÉ8Ïø,\ZƒÂÝÜ!»5’NF VÕ“ºœ°A:<<ãñ:l™v@>/m-*mCUIõ“å“”êFí¤vxÓ‰\0F6.Éô­Ðÿ\r#¶x\nnñë6X\0«eBum$¦Ú5ÁUyÊ˜„ŠW†HNˆ¹Î`œ©Œp³J=qƒuKí¹`–˜“%I•E.È®`xñ:ý9›×ÖúYÀìz»:5¹(Œÿ?êLrA`î\0\0\0bKGD\0/\0;\0Âç†ªG\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè\r)u}âŠ\0\0±IDATxÚíytT×}Ç?oöm#X€@@XÌf‚H0&^ƒ1^šÚ8vl\'Ø§ñi³8q{zR§©×ÇiÏIj»¶Û$ÞèIb›¶¡x©—`ã\0#v„@2‹viö™þ1ÆIófÓHóýœ3G\Zé¾ûî{s?ó»÷¾ûî3b±Bˆô±è!™„LBH&!„dB2	!™„LBÉ$Äàae|XL\\È¯0²TÖ0Ð­j•q[û†|-¤‘§Ó‰j€UÀâ,V|14iîž—LÉE¢¿•Db\0¶H¦¾y¸CõD$‰˜ž/M¿|’I\"‰ThÊó¡ ù2š·B\"‰ñë™>¡p«^ˆ4¸ØXè‘éA‰$2À3ŠLp­º 2Àq0\"\"S•ê€Èwr3oºž$2ÇÂB–iŒ>1\\ÐDW!$“’éL¶ë#d½\"“ŠLBÉ$„dB2	!™„’IÉ$„dB2	!$“’IÉ$„LBH&!$“’I‘4¶!ZîUÄŸÙ#†ÿ ™rÏ3äÉúÒB2©™\'„dB2	!™„’IÉ$„dB2	!$“’Iˆáƒ­\0Ž1¦yP)˜\'C*2	!™„LBH&!„dB2	!™„LBÉ$„dB2	!ÂÜ¼ëc’)3Ü§Y¨™\'„dB2	!$“’IÉ$„LBH&!$“’I!™„È!Z„Rd-B)„LBH&!$“B2	!™„LBH&!„dB2	!™„(4´¥’)iîÓÇ,ÔÌB2	!™„’IÉ$„dBH&!$“’IÉ$„LBH&!2ÂlÉ”=n^\0Z€Hâç‰¿÷GL¯”_ƒÉ‡’)óØ€ßÏËÊÄ±W&Þ?Ÿø¿\r1Ô¹p°êu¡Tž€¥¤¹>‘î*ÕÇ¬p7P,L¼Ÿ\n¸2¼`óï‰}tJ¦ÌðWIˆtŠ¥‰ô©îgŒ^À£}u%~ž’Ô‘*ªf^úÜ’åô¢Ü9Ü×˜ÄÏ?OˆäID§h.v^‘iN–Ó‹üá6àŠDx8\0LÚ€VE&!’ÇL\0Æ¯—ßÎ…H…™>8£Ó›lz1´1é¥Äû#ÀÏ™Òç7YN/òW(Gâõ pƒdJŸÇ€W’Lû\n\ZÉŽØÕÀ6 Z2¥Ç5ÀšÒ¬I¤ƒ@,;ýÊ\"sCÀw$Sê„?V\0/Çˆ—K¼_‘øXÕ:÷E#aBA?~_7Á€p8D,–•mðp\"Ji\0\"\rV\'^f)”UaË€»ÈüÌ\0\"‘0áP€®Ž“ñQÛˆ„ƒ„‚=ôvŸ¤jì,ü½í¸<e8]Å—Âå)Áfs`±X°ZmXmv¬6;‹5Qª—øPúFÉ”;î+€c\\ü:“u\"ÐÑÖBãÁílYwí€éì™G4ÒŽaØ°ÚGá*šˆ«¨wQ%6»‡«Oñ¼cñŽ¬ÆSTŠÝáJG,7ðà«Äçg¦7â‘å6ê@,ÞJa»/ëåxÆ¸ø9ñ°´jjØÉ–·£½å©´f%‰_Ü8°Ø*qzj1z•Õ35f2ÞŠópyJ°ZmFÊ‡ð$p§\"“H‡\'€;ÒÍ¤§»w^}œÃ»îÍpŸ*1Ý.ÖEˆ	ß§·cGN¡Ø;›ój3nÒ|Fž€Ó]œªP§ÎÁ’IŠH\'Z³~í3…ÌJ¾OÇñ}t·¿Okó—7å\"¦ÎY‚ÓU4(B©™\'‘R\"àïáí—Îx$J‹e,vçDì®J–Þò8eå•éd—R“O2&+€gSé#ÅbQ>ØôRR\nƒ!T4ÚÀüËÖ2gÁÕFÊW~\nü@2‰¬ˆÔÓÝÎ+¿½\'¥&Í1ªšå”šD‰w4Å¥#)*­Àé*Âf³c³;°Úì†…h4B4!ôð÷âëé «ãm\'ŽÐ|è=N4=Úç`Åé>à­ZÉå7<˜j”Šar”O25À.R¸ÇèÐ¾÷Y÷Üg“N?jÜw¨®]DÅèZFŒ\ZG©wd:QâS>ŽÞMýžw8ðÁýÄ¢ÇúMÙM[™0e^*»\n“É$Îf?ñÙÔ¦øãïŸ¦nÓÊ~Ó”TÜDÍ´eœ7~•Õ“p¹‹sr@¾žNöîx›moÿH¨þS‘éLf,xŠ/\\þTvÑ”K&‘ö€C2\"ÜòýÜE¥ƒvp¾Þ.Þ{sû·}»Ï4Þª•\\Ç/°ZMb¿¨«ý÷ÙTÇ\n‚EÀJ3D\"aþë—w$%R>àö”°äêo±ä+ïb±Œ=wˆiyŠ5O~“HÄôÌ‹}MÉ$xÑÌ€C$fÝ?˜ókG™`òŒ,½ukm¦…zZ2‰\'\0o2	c±/ë_xˆ#{~4dxÌø©\\rÃöÝ	jyŠ7Öü³éàÇ\0·ñH¦áMM²Í»h4Bow;zë×Ôô7CþÀ\'L™Çùû&‡wÝËÿ´Ùl¯MœÓ‚•©—&>”Ló.\ZÐÝÙÊáÛi;¶›cö°øàç-º§û¢>ÿ_·i%Gï1“¥¼¡È$úhÚEñõtÒ|d7»¶¬æxão?Çæty˜»¸ÿI/¯šFÀßc&ÛI‰É$>M(àdËaö}ø\nm-¿ðèP£vú‚GgþÃô]ìÏœëš5^ÀD#a:ÛsxÿfN~üVNDòûz8Ñ\\OKÓZ[öÑvl\'þžz\"¡ã¸Š¦ã­œÃèñ0qê¼£ÓÞ_QI9U5÷ÐÒð³~$ö|xSg_l6:m”L‚X,F0è§õXGýP`gÖöhØ¿;ßàÈîŸö9K¡§c/=kiÚ[ßˆÏZ¸ðâ›±;œiíìäEýÊ°aíj§ùÍìë9ëB®d*à¾Row;MõïÓÕúNŸ<z»;¨Ûö:u›~NÐ¿Éôöu›VÒÙz˜+nøaZk>x+Æ&•nçÖ×˜»0éª«Ï$Ñ\"HÛ‰&Z›wÌpS®›?­–ç™Çöõ7¦$Ò)\Z÷ÞÇÞÒ*OqiERé¶¬»–žîöd³5ˆ_Ã“L…ÞÄø{9~t]m™[ñ*\ZP·íMV?z9n¸9c’Öm~6­ííŽä\'Éðî\Z3Y/“LjâÑÓÕFkó.\"áÆŒäy¼¹žV}?¾tiZ‘è\\´ý%¡ ?åí­¶ä{3u›V\n’M>š3.âJ¦$ðÑz¬ÎÖ=Á{ý·s9Ñø¯Y+s:2EÂ!Séî6õeð÷’©À›x­Gð÷ìe6ŒNOê_&EÜ°v‰™äK$S	‡èlkádón¢áÖ!QæÊš»°Ù)oßÝqÜô6&\"j%SF¥p(@ow+=õ§Éw¦]Þâ-­ÇLoÓx0éÇt$îu’L…$S4‚Ï×MûÉFü=õC¢Ìe£n§vúçÓÊ£a×k¦·1ÙÔ»\\2šL@$ÄßÓN$t4ÿûJ–J.¾æG©Üf~šöÖfÚZžLi[£zŸ•LF4&èÅïk#F0ïË»hùj*Ï«M+=¼‘ò¶m-É& ™\nÃ0ˆFÂy?;üÂË_43ñôÜ­ÔmúIÊÛ7ÜžtkT2 ‘ph$øÉÓ%òK_cÎ‚«ÓÎç½7Ÿ&Þ›òöûw¬53!™\n*.±DÂþ¼,ŸÅ2–Knü3ç_‘v^û>z‡úV&”Y!™\n)*EÂýÝ„yW6‡û‹\\uû[ÔN½0í¼Nkdã‹™Y¢ÌÄ ÄÝ‚Q`„ÃAÂ¡®¬Ür‘*žÒe,ýÚ¯(¯“v^Ý­¼öì]i5ïRE2T)D(à#\Z\råM™J+nfé-SR62í¼z»;xõÙ{èí|y0e¦šy…Ôg²X0,VbÑü/q#Ën}4#\"õt·óò¯¿Kû±g2ZFÃã“™\nˆh4B4\ZÆ°8½,ž²å\\õµÇ(*)O¿Â·¶ðêswÓuò¹A=&ÉT@X,Vl6gÆí’*VÛg¸ò¦Ç2‘ŽÙËïŸ_IÐ÷Î Ÿ_ÉThBYmXmžA-ÃâkWQQ9.í|Ômbýšk³zº¤¬\"Ù¤m’©€°ZmØíN‹}ÐÊ0~úLš± í|>Úú:›þ÷ÊDó¤y[…$“ÍŽÓ]ŒÃå´Ÿ]|kÚyìØüJND2-žªXá`6»›Í…a”å|ÿ£Æ}\'íæÝþºM¼÷êU9+³™5û$SAÉdÁé*Â]\\	FîGô&LOošPgûq6¬½=gåõV™šEñd*0lv\'.‹Õ›ó}¬š˜Öö»Þ-§3&Ï2w‡¯d*°fžÃé¢Ä;\Z›=÷2•ŽHyÛX,Æî-ä´¼UÕS“MÚ.™\nrÂÛS†ÍQ‘óA»=õ5Ã¾nBÍ9-ïˆÊ±É&=)™\nQ&«\r§»«Í“óÉ®é¬ør~®œ®¢d“îLÚÔsº‹pz*t2úaÆS÷2=šQ8œÊ*j9ÑX›ñEûûã7?/2çèüùË’îÎÏŠL?ÎæŒô* ©;ë\\î\"\"á vG5ßAÄÿ§Ô›ô¼ÁÓÓÊA¦û†óg¸ ˜™x?`d*5‘ƒn5ç`þekÍL>½0¹úLC›ÎÄ7£x\Zxˆ&Óoš1ï\n½>˜2k±™ä?“LÃËY¿?žl@œ.ã¦Ý¯3xã§?@QqÒ×à|œñ\\[É4<d²$š|~ 9Ù-ý–ÎàY|þÒ;Í$ÿí™o4š7´ùà Hü*|;ð`0à}EÅ^ÆO€Ã»îÍIaoù~î¢ÒÔÚ³mÇXýhUÖ£RYy¥™Mîï«™ †?=ÇßÖMÉfð¥kîÑYLðÅ/ÿ¥™äˆúH¦aBS\"*Âô%›ÝádþekþDÎ¿l­™¾À½ýu`ÅÐ¤\Zp%~/.\0^º“Í`Î‚«)­¸¹ Oâ¬Ï™ºGªÄ…ZÉ4ü¢Ó©õŽ[mÀ¿ß\"Éd`–\\W¸#{×ýEƒÙÇÖœs\"ÀP€x(ñí ú\'$5»tDå8–¯ÜÏæ7IKÃ¿åÕŠ¯ÙnÞ¬\Zo6*=4œdš#O2‹ÍfÇ[1†É³¯¢»ã\0=í¯{¡¼U+™»ð\Z³›-ïëjæ‰Ó8]ÆÕÎæ3Ü‚§ô’¼~ìL&DºþŽ_˜Ýl;g\\¤.‘Id‰¢’r¦Ï½«ÍÁ¡]9ùñ9Yž+–ßöˆÙ~R¸®ßè>ÈÇ¤~Oâ.*eÚœ/á­¨fçæZ=?(O•È_ý^›™ÿNñOœu])ßdÚ®ª›Ÿ8œnªª§	/\'êáÄ‘ÕD£ÃB$“×“ ~ö%Ê‡>“®æ!†aàt¹©ªžÌäYË(u†¥rÈ·j%ßø»P*\"ù€K“I˜}¦ÿ®UõÍG¡,¸=%Œ0“Xô&öï(¦­e#‘Ð¾!5Ò7cÁS|þ’[Íö‘Nõ“¾1Pó.Ÿdz†ø\r|5ª¾ù‡Åj£¸tã\'ÏÃS\\NãÁó9Ö¸…¶æ_\r‰ò_vÓV&L™—êæOqŽ™ù,À×·TuóW¨¢/çÊFŒæ¼šÙ4ÕÏ¥éÀëôv½›Õ§P¤Ó¬[~Û#©4œÙb2u?F¾È´xø®ªnž\ne±âpº±;ÆP\\ZAEU\r#ÇLå`Ý4N4½B$TŸ7M¿4£Ñ©‡ëM7‹c±X>}fÏ\0·«êæ?±X”`ÀOÛ‰&ïßÂ‘½oÐÙú.‘P]îút–ÊOEÅy—üŽ9–§Ò7:[¤É)•\'Ïd¸›øMobFðõvÑÒ´æÃ;ù¸~þîC|AÌ—•he%XlãN‹û…eë˜8ís¸ÜÅ†1(\"å«L\0ƒŠRC„p(HOWm\'›8qt?mÇÐv¼Ž@OáðIbQ?±XwÊ‚F	VûîjBþfŠÊÎgÖÂ¯3®v.Nw‹uPEÊg™Î”ê:`	àU•Í*SÑé6ý\"á0~_7¾ÞNÚŽ7Ò~²‘öãˆFÃzôŸ <A,Ip$V\'‹Eˆ%^««µ›£›½„1<%ÕŒ´€ójfR\\:›ÍÕfOW\"€\'Í6E™DnY<Ë\'‹[¦(Uˆ‰„C>‚A½]íôt·òqýVþNZ¾ƒ¿çÍOmët_Dùè/`±:¨¬ž‰»¨œ²cp8=xŠ½8œnl6;Fú‘â×‘¾O·TH&‘.5Ä§ye¬%‹E‰Åb§+$!\Z	ŸîsY,VNÕÃP(hÖ8®Äïñ‰:V›\r02!Äg6\\A?³À%“ÈkˆÏL1r¹ÓSQí”DgÖÏIðv¢ëQt?“è‹ëÅäxf¿a†åt4Š¿Ïh4º)\"I&1òD=<„#–8&¦©™\'²Ù—Z•ˆVÆ’èÄ/±4d{g’I¤*ÕÉß;µs*‘d™à	à+äÏ5@ñõ¿ïŒK&‘	_óüJ’x>Tzø£]6æIL\"b}øˆYMš‚áDÓm=ñ‰ÑóåÀ%“ÈEëzàbâ#ƒ§Ö<töÅÂ|²¼ó@ñkCkrÙ2ËÿPÈÔå·°Ò\0\0\0\0IEND®B`‚',20,20),(10,'Modifier','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0ÏzTXtRaw profile type exif\0\0xÚ­œiV;”„ÿk½„Ô,-Gã9½ƒ^~¡,°)ƒýŒ\r¸ÈRJwˆq¥Ä¬ÿûßmþ‡?Õ¹bBÌ%Õ”.þ„\Zªk|S®ûÏýÕ^á|>¦üÌ¾}ÝŒñøã%]ô¸0­Çõ×ã¯7äðx½¿}ÝäÇ@®<züàe@¯;;¾y\\Wyw¿nÿ7õñ¾~[Îã_©çžzÓý£§ÿ‡Œ1fd<ïŒ[Þú‹ÏExý¾ñ5Ï™‹ìùþþì}ýØvæõÛ\'ãíü±í®ö¸Â¿5…¹Òã‚ôd£Çë6~l»c¡ßgd_¾uo°“{Xâ½íöžeïu¯®…„¥’y,êzq¾ãÂŽ)ýy[â#ó/ò}>•Â›x³ó1Œ­Öaímƒ¶Ùm×ù:ì`ŠÁ-‡¹sÃùóZÁüÕ\r/}Øí²¯~\Z_ðÓÀkž—Ýë\\ì¹o=÷¶pçi¹ÒY³¼ãÝ‡ùèÅ¿ùxho…®µÇ˜ùØŠyƒ3\ryNŸ¹\n‡Øý°i<ö=æÕ­¿þÈ±ÆcæÂÛÕï!z´¿bË?{®‹W0×\Z6ÏÇ\0˜ˆ{G&c=¸’õÑ&{eç²µØ±àŸÆÌI×ñ€ÑMk6¾ñ>áœâtoÞ“í¹ÖEw¿´àˆHŠd\\S}ÃY!Dâ\'‡Bµèc01Æs,±Æ–|\n)¦”rFµìsÈ1§œsÉ5·âK(±¤’K)µ´êªÂbM5›Zj­­qÓÆÐw7®h­»î{è±§ž{éµ·AøŒ0âH#2êhÓM?Iÿ™f6³Ì:Û²‹PZaÅ•V^eÕÕ6±¶ý;î´ó.»îöêµ‡WßzÍ>yîk¯Ù‡×ä±p®Ë¿¼ÆË9¿a\'Q>Ãc.X<žåÚÉgW±!8yN>»ª#)¢Ãk6Ê9ÓÊcx0,ëâ¶¯¾ûå¹/ýfbø‘ßÜgž3rÝá9#×=<÷Þoxm¶SQüq²P6½üØ¸`•æJSMúõµOë—{¸8Cg•u’cÔWÝ<o#ÿKm0cK·¶0«Èöš Ø5²rÓFfE¾ïá}ÙÅëûU\\l+ï¹wÉüci Ã5XøºU\"jêUßå½ìyyD’ã_h^Fü×Íóÿv@óÙš: ù“¿; ù“¿; ù®Wþ4 ù©›?ÐümÜ<hþ5ÿ*²W¯\\¹Á©V¡°i.ßç¼Rê}š¤÷.Ûüî>ÄTÆ„	´`ù·Æ(‰ºl\Zà@YžqFYÔâvÒû÷¯æÍà“HåêËˆI*³ùÑºíÁú9®T§µ0‰k—îÙÆet¥ZîÓŸzÚ6öÙG´˜ŠušO¼\Z€wS¹ƒð#¹>. %÷±ÈœÇŒ©GUoJB´!~ÿ«ùÆ…€*¬öámÂ€eé9^³Â˜x™+„jrN›åÔ’í®±”¼Ö`-ÎÚkŸWžÄÕÏ0ÒÞ.^èWùDvó)®”Õ÷žxëˆ¹ok|lC¸Ý!6F×W øß¹0µÝ®/Æþý«iß¼ðþº+‘ÊÒ-«+¹eÍâša:ãP“ü¬ðµÌ÷­ðµÌ‹6…,ö“J1‡4SÚÙ^4Qªñ\ZÐÐ3lÀDA‹Õª^{”’/Ì†m¬Va\rWÖÒW€´—Ê]†#Xî%ÅvO—u)+‰ÿó=¼f¿	–@¥Ý¾\0È‚×m:ÄUú®3üy‹2ó)Â[öý`8s÷ïÃ™ß§÷/Ã™÷«ý»áÌgÆûépæ3ãýt8óµ/¾?œùŽk¿3œùÀxÝ#¹¸“ÝA fa~Äg…I®’×ð+’Aà2¼v¬=g$‚ó ý½,”\0É1îD•~ƒ*ŽG®Áôv.Ã¾Ò™ôý$ÂºKöNW+\'YC\Z]µpæÁÊzÈy\n†ÆZÃÆ»ÊA[)2~ägÚiÜÓû^}Uº¥¤™ä\'³Mîr}:gó<i\'{í3—mÝ\r[1­~ÏYxÒ÷G)nžsœƒ Å>—[\r‰Òm@FdXyµT„†Œ HD[‘2;¢oRrW6iŽ<SŸ•ZÇªR¶7ŒæÚ šàÅÜÕ«95êƒ¯æ³Ø×ùcâgÒôûš(R0<pláX Q¦¥l›”´Û*Ç¦·EÓíæƒîó¿}p™Tó\nÍ¿Õê÷þRŸ8þïK²äµ œrõÛª&çâSN …i}YÆíÚÏó5_OøãùÃºg²Ü¹²S²IKM˜ªÚóús1RÙ×Ä°î“\Zr©}c°A$Y¸\réÚ]Šƒ\"UGoÕ³Î¼bì\'0®ÎýßÎkxÍ*¦³L3¸›Ö3rqL:.c&ÓYf\Z»»56kÉÓŽÜ¡/˜¹“­ƒÊˆ@¬ºB9Bø=8\r\rIh;š¤!„(ÝxÔ¬®bâwE.H¹_s4ï\'ÉË¹0Jm_ry\\²Úìùæ¹œúulÇÌËnÏS í}é=\r®yLãÅPBÉq®4÷DDÇÏD^§!ì‰\'ASyžÈ“!ÌÏ,ñ¹!ÌÏ,ñ¹!ÌÏ,ñ¹!ÌÏ,ñ¹!ÌÏ,ñ¹!ÌÏ,ñ¹!ÌÏ,ñ¹!Ì_&GVÝBØV—Ê‘ô5ÇÿéýRE÷ÝºX\"È»pÒr|íøÑÒÓòaÌ–žóÛ­ÕfÒFG\nÈ´5¹KðbìZWñópé¹@ó•¾‰ô¡ÑØíYM<aõT›W¬~¢þxå&ÿHùÿ’ú›gôb5_ó2á—JwÏä”ºG¡ÓŒÅ ’xÊ÷oIs¿_öÍÁý›„Ì:ä‹º…UÃÔUAA•µÅ»/wyœãOéu*\r•˜ü‘Ôz•\\¯åZK0ïÊõÛ5¼©]¿JKˆoy”ù.‘úùS#ê?!æmóñïÉŸy?é¿#æYà9R”ÁâÌweþN·cŸ¡\rŠovŠ{ŒîGh±c¼\0Èðº¶Å†bê”í:w‘V\næ3á+yÏJmŒUBnµLþCmú5µ”;Á†¦^M=g‡Z#7×V(£ÛqÙºÂÌIn¡¿B_?iT}@_Vj=¼Vbã¼ã\n>Þœ°°³”Ö„pøYØ6¯™ÕÈZ€øh¹†u[^ÖÀr.µ‰ÊˆÉ¶²\nFI;GÉ±ÅÚv‰zô\r¶¶^ÞºìBžs¬ì¼@¼Û‡¯ó¾g}ÏYn}™³f÷2å—	?¦ËO^\'l>˜1óííú!0ï@Íö±Q¸…ªÊG65¿ŒºŠfj~­_ùLßåô¨_+~îCóÖ‰ïCópâ1ÊOYÚïÙ¼˜…Ï_EKù“÷Ì“inÃÜfÑ·Y®?‰ù^”ü9HÌÏÙâÇAbžîÁT‘Þz©i9à¤ºTWÌTòPÉ	í*)IDÄ\n²sé®æ+f´~@Ì{fðw]6ó;xn\r¾éªÇjóÙV*…PÖ^\\ÓôP:0’À»©Ó51w»Se®FF»Xäe }y°63%Õ‘•ÃŸ\ZšC&Ì3ûù[2aöS%ôgí>Ì’™¾ºoÍu9zŽ(ü”.ìŒÎ Ò;²Ÿ°¾1‡40÷ôë²ˆc…pNjAGô;6ÄT±þ²¾º]±³4kU‹	g¨d„IÂ¦²¨šØÆ£4É*M÷¥éÑkÒ¾å»í¹zòñ2,\"_{+,¼§Nõ{P2š×N_½¥LÄEÀãÚNáÌÈ^P*q¦x\rë›q© `/˜Ô¹gI9e±Úé Yajž1EßµÕ™}—#Påå[½‘×	÷ O&,¥h·µ>:õKYÈý¬¯™[6²»u¸FPÛ#àý\" rìÚËå»I$Ú£àl”»w5$×„[ÄýÅEÓ¨HÇ‰‡!!¥n¼5;¢]ýî)ùzùg¨)]tt¢D¼Ó£¯¸2¢\0½k›È˜k¹­,f„\nPñ®LáeEuG„HÉ“ÚÇØä7ÓnU»í3Ú£s(¦‹)¥Õ¢NƒlíÛ^gå¦%_‹×|s$BøÉLÛ7)ËÍl!\nãè~›®ájÉ¨(Æ[½+¡’–ñÂ„1È\"DûLY1[”$#$ôþÜ¯âvš†œLµÎŠÓY—Õ\Z°‘/í¥\\¼6Ä0‰ÅˆDYÚa5×%ŒŽ#8¤ÅJJ,˜	D2wæý:}K¶bP’gÌ´–¶kb¶ùã6Ò›4ŸPà]¿Þ‘xÓH˜·Šâ}#IµåÁJ_8éÝF\"Uµ±—¸%çê’\"6«oXõ2äBr+€åŠ¡)tô\0;³™PIÊÆU×ÄÍFwêÚÀ\0\"Äa>n”Ã]_‹rRì4†›ÆéèYž3\Zí¿Ì¼Lí_3¿¯ó_3ÏF{L=>Š±ÍD¹Û\n,}\\¹Æ¤ã\\m5â‚PN(È!)‹• w.ëüê;±·±¥!;qÚ4ææ/H¨“D€ôÔ!°îa#þ”Þêlp:’WQEóððÿ³iJqÐ8.b¢N(+\\imÏº‘ÅòA4UY!C\rŠúKÒWtjF¤^á\r°(Ÿj#úŠSóº9âzQü\ZrÉxŒ°\\Õoï~–YüšÁ‚K\0sËÚP°A,†¡…–LÿbyÔ>*v¡X‚¯Ž’b\\V\roRaØ…x¯M\0¦£&aô‹4sÎŸ,säd‰mx‘9òk‡Š[ËkfFèUç{F¦Pè$^ÀÀ•eQm!wë‰ìß,H)je§íËÊê¼š‰ËÍà0ò>5[‰\\³‚ˆÇÕË‰e±ø±IYG%©g\\2s™NZO˜¥Ü3ª^§0“hÛ}F/†¤ª¬C€Ö,Em]DdÆˆ3&4-9+ß#¼fFßøb7Ô¶T\0â[i„”¯©µ^©LXÀƒÎà1ˆDI1jD€æ,Ñ \Zéù‘p)ˆÐ¬E9€P¢ÁäÜK’²˜…×\0¯`€1¢\0øó>ül¨cêÜ`c0¸)W_`ºwE¬C›ªÐ)hm¢%9ŒÈj®ý°·².´šTR‘¹åßìRÅÕù»ÍÚßÆnóq7è\'ØÝÅ\'—6Å]Ø¾¨AÆQgðBºt¸îO]¥—š/Ï0à¨á…ü TèðFÈ:Œ¡ŒT)ï²	h¢nî:y40\n…M@()¥fð%ã,1@çáÜ–Cö\'ˆNÑuëÃ¬TÏ11øŒ~”ó…‚³\0z:\"&Û³¨DàX	æ£=éEŒM£0EµB×Þ°è&—ˆçåuÔOï§ÐÒ8ª]“¤I³ƒŽ´Ek¸fHdXÒgé°œ·.¸!ùà!ð‘ø¤CzÌ¼P¶æ x®ƒy“!\Z3Âö€\0Ä«6>Áôò(›ïÅ¹\nqÞ:UØ!Ÿöº{8Á6ÖÎI@ž\"õ»É2š…¦†¬£EIW¨/³šãƒr5‰@H§Ì€âD9Õ&K<D†ÌVF2dÈ’VÕ<\'\'Í\n\"=×!üÓÁ6ÛF›—R}!I†(ÐDòÏ„UHÛ«P&:ø²`mÚ¨Cùâ¯Î\\ÃÓ#³FÁµ¯åì€·XˆA·’Dx58<º(óDŸ‡ºBJ/<?ö\\Ðw¬FÉ¸¬Iò„<­:{^ŸÌ\0‚à¡¸øÂ¡«©„JC0Ž»wZ*\'u^\"%¹b‘9?¡àÀLÃÅ3\'_Q„-SLp\Zª	ßÍÄ×PuŠy ‘€mÆ!üÐ\ZpI”gœ”¸ˆp2+ÛQà±b90Å“ÑÅªvWmß&?À[þ¨1ÿ¢Ãþ±Æ4ßïXÝ°6ßïXÝ°6¿^@“à*ä¬Âh§fnäÄX0¹PPV`‡Õ5¾C76ÒÈH³aWÛ#	)G:¼°©Å;»„B#S\'jºbzÊIÛŠš‡“¨»xØpJ­šáÉlB0µN±¼0ÌÝßBÎ„ëu~–xü“íJ ¨ \\Ê nL¸±„ ¸Õ©pNÍêÄ±ª£V´N¶·G¶oe{±$\nZòHäí ‘>~‹#õ7a\\\ná¦SNÑÕ½ê@\\¨ð=kà\\QF	\nÕ§*bTwÇnL@7BJW‡‰ó¤‰[‘7¶ö²‰‘DUl04ö+~ ÚPŽHKê’Ì Cº \'êÁ‰*äZ¡Êd¥!¨®el»’|ÛµÍ5çr‹ùf›¶+jÕ¨U@¦Æ\"!‹ÂCîéZ›ˆ¶ƒÖV³&”Sœøq¤z€ø³¥e-¼Ì¤.`;SŸ`É¶Ûä;è²á˜w¸N-r,ž*•;XÀ<Å2KŽ`G¨(¼INxÐçTS ¬“ªÖ	Ì:é5‰&¶ñÒ\0°WKŽÈ!y+•èb\Z@Ò¾&±zZ´`Þ……\nwuœFg8ã\'˜ÅIx‚HÛØjØ\0ïfžj¤¡ñµn‰Sf\rýD¤ÂyÔñ¢þ9££=6«	\"Ó&‡¬[DÎ€TUØð¼ß;cèdÕ„KÌkSè‹yì«({þé„ù·Ü‡\'J>Ý¢2ïQKÛ=¿ãÖH¤è¶HŽLRqÏ*\0¿tÚÖujJÜ\',à<G$‘#uEµ%Ð_$1J\r †éoFM\\?^ö’Íc3YÉX¦Tc;GqÏÌî]e«½¿ö”uŠçeGù8÷líÜâZCù,†\nB¨wZø)ÈRÕ¢¾w#yzÐÞ^ö–5­f^6—ožñ4©—ýö_“zLé÷ýö{ZæÌKÝý3)u÷MKZ²¿˜”›S:ÏÃŽÄcó¥@ëNMëõ Ò¥NY¼\00–³ºÎóª£ã`j	ð%‰@vKVoEÖ€d<FN\0;±™MþXÊàyâÑ,J#¢KýFqónh€úüN]B$…b6êº6à7è)”¨GaÀ~…) NÖÝPåDJ–¤uG5a*¸¯gõFÒ*‘Ä×éhn˜Œ6£¦æPçäo\\±]ÈQ2u\0“ Ú*j]Ã|÷Š/;Ô‚ÒÁ£œ\"úå(O>„Š4,iFœVZœdd(âú\nØ ¯Þ3ÈÁ›ÐÝ=áË!Î’\r¬Ä’©–„ìÍÍÚ1Ô\\R]ªCa‘5Áš/”~ÅAp?È|êcHJ‰2E¬$’zÕ¨ºGv÷FdæóÚ”ZW÷Â–éå§ípôr…§¢i“\'@aT”˜Ó€vpäÚ¨ÀÕÑx¹‰–âAmëœR7wx¡:?ÌÎê\ZÇ‚ÒË’\nÔþ\0‡uPÁuÄ3/X_ÔLà£ÍÏUIÔm6…\"\\*<ï¥•ØO(-¹D‰#>{¢z\nV—#-H¯\\‚6©«§àƒL—P%õ©ô°pÆŸRXˆ®s–Ù¥ÂVžè!A]#$#	úE™í°h\"±¾“³h\"j¤?RèÒáËæÉ7‹ï¬\r(yÔÛÕŒ\Z.˜¢A­	K¬	Œf{9,\r»çGêÙRî:¾AGÂ¼ž\"¿òÈ‘êOÚDWœiz²*¢óÊ¢¤a\'qB˜äË§Ó ªóŸžª{ì÷ÿÔ`’G€FöÜ‡\Z²•4`BY]tN²{mDyÚG<B•ˆÐà±4µ|tòUº»£CÔ`V‘Àxƒ\\\"°É/u[ ìØ€…ûàD¨Ü\rš§sÚÃ\Z=ÅºÑh¼QMþsªÿáï¶ƒÍÛ>uY§Áüÿt.éí®®ùh[Wü6¹/·2_6eÍ\'»²ŸMíý~äcbæ“MÕ×I1§aÅv¡ƒs_9S’¡vS\'†«»´=5Åf{Il=Ë7b…ÝB¹¡‰ ¨Êk²ŠàB¢\n¡ý£ëÄ†«€¥¨J³÷†ÏÈç9×‹O)ŒzïÑs\"7äJ§WêRJ¥¤‰ËêžMQ€]O{2¹I0‹xx¨x¤D}B3§àÉx±gÔ¦MÔ\n(-Žnf–âQ˜¤Û’6{ÔO\r|Œ;ÌEô¢’\r”¤“zÑ	£\0pHOJ„n¥q`$AÑ Eíô6³š&®i«…\ZiË%Ê‰ƒ¥G·æÃ<Cg71D3v.º-¤	ªÈŠÈþ°½hÁuž›¡ˆøxõ¡Þ‰Šô¢œ´ÕŒvçVÛÆµE\'UT@jÎJÜ.êKEü(s³á\rçs„iŽÊÜ|£–¨¯3´÷ŒP-ˆ–¥F1Š¦ÚãGSmÖƒ²ê”Úx\"Ÿ¸:üÛ‘›)SœW@\\ûË¸+C€ êžÕ‡°µ2Ý:ñFió :Ì¨²ê¬VB\0ñå\Zx¢¶9„îÇ/m1ê~éÚ+u¶Dtý SÅX8`1ë ÁI¶¨€‰©+u‚¥Qµp,^BÔ®û¨\Zg0Ó(‰jÕ|Q÷L;whMÔƒWßÒ#üN$ø»7êÅÂG›R4KÐT=\r­}	ª7]º¿«¤pˆÜ4Dl–øñ­FÄVµÆ’‹ŽÊƒYP@è6jÏ£ó9¼Kñ¹ÚëÒ.ÿìÃMu`MBUƒ¡”PbM-dˆ¼Ž\ZWÞ’„Ï¥‹öxz‹º¡M¸…h…=ªŸ’â€áOœ^:U£~3\0ð*¾^Anå³ž–Þ—“µKO#Àm:r¯mnsMÝ2V_fr¹\\M©¤«ÐWË•»žâU–ä‰º^÷¡3Å’ŽÜ§* ®ê^lkÛ6ó §8?®9oX×vÍý8ƒA	?Ìh´ÿb0ó2µÌü¾ÎÌ<ío3yào3Ÿ¹óu0ýÒ¨Rµó< Kž\n-è–B£Ãì*¼¦TŠ?^m;©±aé]£UÇtþ}4Òìn\0Î£t(Åk‹äò¦](ƒ62’ö…<eoèX/ïªI­+„öDš»HÈ»`]lP=Ñî(ƒ[¿Q B³j„£˜°t$\"©ñè3š²6*\rˆÔM²ƒÑ€¨i…D§¢IƒÌ®Qjì9×Ó ¥·Ó6žv÷ñüÇ«SE\"^ùƒËÍb¤¾2ú‚þ¯­”¯[yÏB¦aÔ¥ßpðué¼\"?ÔXTIL¯7k;¨·¨òbf@U£Ìtm€›ÔIÊ(Aãc£Q}:À¹€Ü¤9£ß†N.!ÈÆµ©Åumhzx^Ç6u³m‰ês%E@™	ä#sfçu±_c8†ßö®ã%Àvm™mÆth‚ªæž:b qÓ£N6\ZmpÁ•µyÆzJ±£Æž‡Ï‡«\njÆ¹ð8\\uÁâ9lí²~Ù‡xL}˜Ûí~âvhüæ¾ÝÓH‡v‡Ë†…›ëi§gV©ª¡€vnåÓ/²…×6¦A1[ðÝ	j:âƒ®…¹t¸úPôè—¿Ôr~5ÊÙÌÔ¯¨Ðy\rj;E`C-xxH+c¶D\"ä¨#³–t‚}G]ÈXâ¥ß%Ò‹S&8-fáòÇjçDÔûƒµõõ÷ˆfî2~€V`S*YˆÔ\rG9\nÇÕ.O% ç<úLn§¾ê¨Áø{ÝåtÁÿBí…—-XÛ\\8*!·¦ä/[pi¹¤Þ¼N4umÔµŒMüC®Lý:‡ž¡J²Ç`ÿaD~¼×\rVTË¯S¤-Æôú%8$ð\nÈòö˜Ž¬ 3WXœÊ%•Ñ[Ý \rt–Â¥Süó´ô(·\'k\'&tFGQÐ¬Îu¡„Y6•.êxjI@–ÆÞK ÎE1–kQžõ´GÛ5LÖ}oj®ß!¡¨ÚŒüCÅi{n”»s[;Ø	(•¥­Š„‡Ó$íãd[ÕùfugwÀü?§5=}NWô\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè)&ºYa\0\0 IDATxÚíyt”å½Ç?“}!	kXC\0¥¨¸TZª­E@´\nV{m©÷´§‹¢h{zzÚ«W‘öÜZ©·ŠâÞE«=W„€¶uC-­!Èž\0	Ù Ûdæþñ¼Cf2Û;ÉLfÂ|?çÌ!ÞÙ’÷“ïóüžåu¸Ýn„=\'E?!$“’IÉ$„LBH&!$“’I!™„ˆi}à=.¦¥@Vž¯\0pÄè½:&VQgðð°?Qß¤#A§/WÄðÄ}“#ÀàUÉd/‰~\"‰D6H¦à<|Gç‰°I301Qš~‰$“DÝ¡o$Qªys%’è&ý5J¦NNÙ:/D¸(OödZ,‘DxQÉ‡a:DC‹‰LCuˆ(ñ½dnæÍEãI\"zLMf™†ë÷/Î4ÑUÉ$„dòf³~\"Š¬Q2	¡dBH&!$“’IÉ$„LBH&!$“’I!™„LBH&!„dB2	!™„LBÛ¤õÑ÷ýæš=âÌâ¿$Sïó\"	²¿´Ljæ	!™„LBH&!„dB2	!™„LBÉ$„dâÌ!-	>£[¿æ¸’4W†T2	!™„LBH&!„dB2	!™„LBÉ$„dB2	!,’anÞƒú5ÉÐ¯Y¨™\'„dB2	!$“’IÉ$„LBH&!$“’I!™„èE´	¥ˆ5Ú„R!™„LBH&!„dB2	!™„LBÉ$„dB2	‘lhJ!$“mÐ¯Y¨™\'„dB2	!$“’IÉ$„LBH&!$“’I!™„LBD…É’)vÜ¬j€ëß•Ö÷CáÖ­Û·x²U2EŸ4àuàU`&Ph}öBëþ«Öÿ§!ú:Çë¼N–“g%pm˜cæXÇ]§ó1&,\0†S­û¥@V”_#øÐë~†õ\Z\r’):üÀ†H®µŽBç~Ô8d÷Òk5Zÿz$mÚ¬¤r©™×sn‹ññ\"4Ù½øZÃ­¿n‰”c¥“«7^<’é¼/‡ÿ\0®¶BâŸÀnà,àp\\É$„}²€1@ðWàkÀzC¤dI¦-^^»Ç‹¾ÃJ¤UÖýƒÀ£V“³l}¿Îú¿FÉd?E(ÓŸt.ž1BeX_/¶Îõbà`¤õý£@ð{`=ÐÚ£t»ã:®6x¿û\n°&‚ãßÄ^Eï-—Æu)Ï37þ—í\0ª_\0¯Íê3…f°<Ì1Ë­ãD\\Nswç-¶iÕ•T«é÷0Œ}%‹LNàF`.PÔbÊ¥µÖý¹Öÿ;uVÇA¢\'´¶@óI8Õ-Íàl·«·Þ…<lÝ*Ù¦Ï¼fÝ\"%Yv…-\0¾Gôg&X\r*\'´µBÝ1s¿r´·AËIh<c¾\0Mu[\09ý`ÀÈÉƒôHIÔ4HK‡ôtHIÅ;n%”ø3f¬J2E™’à3ÎþÕs¢­ŽÕ@åfX>;üñ[¦€³i1òÇB^!äBz–+o Ž‚!#¡_>dfES,ï„rcæl¶H&	€ßéSD.ÐîmðæpðùÈÛRÑùu{%œ\\Gò¬Ó<^ýŠ¡h\nO‚Q%0däæ™är8¢ñó‰©\0º­–L‹dvxøNŸ¥±–?	?‹rŸªÑ÷ßŽ*#Ý±wàÓñ0x2”^“¦BÑY¦½&ß\"ëŒ­„’L©g\">\0/?y\nEC²–\n¨ÞéÙ0ùË±èG²úP.à/á„’L©{4Ÿ„¿ü6úI)Eó`Æ÷M*¥Ä¤8=Üjò¥\0/I&¨Ø0¿{‰à‚µ«ìbMÞtøê|;Ñ?•ÜîhõŸVjQ8™4Ñ59Ez¥[Å†Æ:øÍ&†H\0Í`ÏÇflÊO‡ÊÙ­W¡>“ð¦x¡[\"}ZO_˜XŸÆ¹þ±ÄˆsÕ-¦TÞU¨Ô4Ó$ÍÎFB¡dÞ¥;‹õÊ^H‘ò¯„‰?ŒsÌý¶í°þ1xï/ÐT8¡²r îó˜¿5É”\\‡³º%Ò»óãô¿fün¹¦ý2\'w\nUþxÿuhj,TÁ ¨­†ŽŽ˜½=5ó’ƒË\".8t8aÉw{¿äŒA3ášpÁefzÑô9àrAùhÝj	µÄH®¼9p“oÈ8z\rƒÔèOGR2%eõ“:œð‡Å	$Òl¸þÇ0år#@n>\\y\\¶\0Ò\'˜ïµn…õÃš	5d|~$&	%™’£y×ßÖ‘n74Ÿ‚W—Àæ_$ŽH3Â¾è?»!=\nƒÛk²ëVX÷¼ÿp2ˆP…#àÄÑî¼›å’)y)¶Ý¼su˜Ò÷ßþÿ¾?±Dš<Õ_¤¶VØòxg‰©êyÓºÕ4ùBõ¡\r…%f[?Ó¤•)™·&Þg«yçê€úãfvwõŽÎŽ}¼ûH3ÂäK!--€HëaÕbhxÏ$r.…ÔQ¾	µæu8ÙX¨þƒÌÚ)û80Q%“ô§ÆeþzïÛå¯Áî?™1žÞ3î³Dê’H­-°¹ÊAýÛ\"½æ=—,„´qþM¾`	•™eþ˜Øç,« ã‡ªyÉNk«™¬úá[pàupÕÆ_¤ëï…s/2®]Eúh\r¼ù4­ëiÌí0ë‡0ºF‡”4ø×c¦ùçÊ‘b*€¹yþBEž)/%J&ÑI‡ÓtÄw|ûÞ¯H)…0üöÐ\"mZ@¤oÂ\r,‰R¡` |íV¸ø.ß„Zûhè&_d{OL\'É”´Í;·9Aì‡k¡y[|ßÏÐ«av‘*ÖÂª‡$Ò ¨¤sÆ¸§/tÍíðÅ{ºô¡‡Þ.Td<,™Dg_©±*+ v}çâ»x0ä&¸öPò‘Ú<‰´ØW¤âÛ`öÝP<!ðÒ‹‚ðÕ¹0éNs<˜õOk—O¨È¸B2	ë$m3Ókª?ö/-÷viæ}&‘ÒˆäI¤Æ5þ\"z\rS{;8Û|¿×R:¡ìãÀŒáI¦¤oâµœ‚ª]P»)Î\"-„s.\nœHkau—D\Z}«é#K$Ïç;Vo>Ÿ>ëŸº§j¹ïò\r·«sç${ÌLjâAÃ	¨úÚªâ\'Òõ÷Â9N¤MåAiAèDr»Ít¡²eðñ²Î¢Š#ÏÌ8÷L=j©€u¿5Bl4åñê}ðÊb3Žeax\râJ¦d¤¥ÙjwÆ§‚çI¤sƒ%Ò:XµÈ7‘ŠæÁ¬»`L©½Dúø	³ùŠ·ˆsÓ~Ú¹|Ã»µ½^*—ÁÇ\"ù4?÷|¡q¦dlâ5Ÿ‚ÚƒÐ°+¾‰H¤Íëaõ#¾‰4úV¸á(^¤²eðÉ3¾‰T|›%âss»`Ý£f¦yK¬y²GuÎ¦øÃt¸Ðv©|ºdJVœíp¼ÆLrïÝ×zKh‘6•›Dò©h^èªG¤£‡á­ŒH]iÖ]0¶ÔÜææÃ•_7_¯ý#T{¥¹yÓXy¶æS3/YS©­\ZŽÃñ½\']Ü©ÕJ¤Å]DºæÜ¾iWS+ž€-û‹4ûnóx‡×ãsóaÚ˜r§,D¥íËt90ûjH¦¤ÂÕaªWG« aoï&ÒÌ…!D*‡²‡}\'­Žºf{šv©ÁE:rV.5U;ï¦Ýè[Í€î˜\0‰ævCk3œªw‰®˜É\'üšdJºdÂl”ßTm‡#‘6­ƒU]úH#o‚î…±g‡©¦\nV=\r;žóiös¶o\"yw¼Þ|¶=z°Ú~UïBÉ”lt8ÍøÒÉàn‹\"mYoúH]é†…F„p\"J$ï¦] Dª­†•OÃ–¥á›¹Çjì~Ò1’)Ùp8Ì­Ãû’øðÛaÖýEjm6²e‹üiö=0nbð=\ZÜn¨©†UË\'Ò¬»¬D$Ò!Xý¬oÙ<•›í~ÚÉ”Œ´·™)6Ž¼Ø½ÆˆoÂ\r÷ÁÙçû‹ÔÒ¾eú\'ÒœûïÎÚU¤•OÀöei±Á[¤²§à“¥öÿl\\IB2%]2´·Äî5FÞ³BÉ¤à\"½ù°¹\\Œw\"ÍZ`%\\\"­^;ž\\l[\Z\"‘žñÐ‘m(3W2%[Ÿ©¹	ZbØ´[\0%çúKÑÒßƒ¿.†S|EšsŒ;\'t\"Õ‚²¥°íéŠ\r.3þ´jYd‰Ô½\"Äp\rÚ&žj^kcô—\\Œ¼fÞm-£$Òû&‘¼E\Zu³‘oL˜DªµúHËßÁŠ\r.³‚xõ3¾‹!’)™p¶›ÎG{ôžÓ“.3ƒ$R«%Ò_éŸHvÊßG‘‚&R‘Ž4}¤OöÖZ­Ijæ%))æÄuµEO¤Ñ·Âœûaü¤ÀU»kà­.KÍí–¿kAÙÓAD\n“H+ž€/ô\\$ûåñ%S2áê0ý¦”Œè<ßYß6™Œ\Zç/Åi‘û<åï‰tØ4Ñ‚Š¤ü}ø ÈÝùT¯¯–LI•L©‘éßQïYS`êæŠ}]Ÿ¯µ>úÀˆä—H÷†O¤£‡M-âD:hÊæ•/Åe¾dJ6RÓ =§çÏ“[¸‚æiuˆòwwiV°D²šveO‘¢Ylè?Èî‘\'$SÒ‰”	©=¼\"¹#ÆNõ_¢àl7síÞú•¿HsîŸHŸñ/cû&O¤¿3û¢H©¶ù@2%iéÓ²û›“´\'\'Þ„\0«dëàÝe¾S„l•¿]p¤Ê¬ÝöTà)BÁšv‡˜ñ§Xˆ¤fžÞgr˜>Sz¤@G7O¾‚/Áˆ±¾r¸ÝPµê?íaÄf/¼qgÛ[Fá]Æö<~ÖÝAæÚY‰T¶v.H™’Ijž¥@V.ä‚£½¢K €ï÷\\°«œÖ•%_mqÇ–†ÉS4x*_ôiØL¸þ®0åïßÅ6‘Š\"º>ÜÉ”lddB¿þÖœÝI·B5ÑÏî¦F¨þ´³‰–’j6mII5—oÉÐy¡2ïDZõ”o²8ò`è˜µ&Löo\ZöfÓî¢È®*/™’*™¬«>ý¡;ó]sJaT‰éh5óÚG¡æ5X½rŠ!g”Nƒ™óÍã<}¤OøŽyé´HiEZñ¿°ë™Ø÷‘ŠKíY\'™’‘ôèW\0Yƒ ±Eˆ¼bÓ_ò¦£ï‡†.Z¶WB}%ÔéÙÐvd¥vNõé:°:tÌ¼7´HeK{G$€¡£ìyL2%#©i“gÆš\"=!y0öbÈ+ðý~k3Øz|§µ\ZêÌEÕV<¸i7ûþà\">\0+×»U»ì\\»G~,™’µ©—¹ƒ\"lJŒ¿À¿s²ö”‡~lóçðé‡°sƒo±Á“HÁšv.ÚgúV½)ÒU­eú³dJV²r pìÙ¦ýçÁÈ.Ó‡Ü.¨Þuaö,oúÞþ5œÚê›H…×O$—ªvCÙ“ðÙs½;Žô¥vt¯&‹LžÉ9ãõ½¸Ø^!×,]Ï\Z	MÈ4ö2ÿ*^‡>Û®úÐuÕÂÉZß&ãÐfÃ•P\"½ñ8ìÃ\\»ƒíyzZy2ÈôÀüÙòlL?0Éº>™†…\rë\"hâBñ¹Õåé›êaßFû\'»#Ò†Ãà‹`æ=Pz~à>RÕÓGŠ‡HsVD2xC2Ét&Ó`Ý\0^\0Îî%ÜÞ|ñjx#m/€aÅJâ‡ ±:üãû]\'ÀÐR(¹\0Æžƒ\nƒ$Òxã·ñ	`Ê‘ý¨d:3H\\^_?	Ü	„ß$;;.x6ýÜf³g|àRqþ\01\Z6øö…R\n «ÆLƒ1çÁÈqP8ÊÌÂNM|ÙK—~«–ÆQ¤Ev÷hÊ%Ó™%SŠÕäkŽØ’	àÆÚ“)¥FkÆ§ºR8®ÿž™Ñpp=ô	Ã\'ÁÄ©fp7¿¿©¦…™©îvÃþJxã18ðJü&­Î¸3’£_ö¾#™ú66Ì(|ðßÀK@øuyýÍ_âŠŸ…>.m0”œxó|‡FÃìÀ±›`hQgú¤D°±þ8¼÷r|Eš²È4=íóP×¿l¢ïòË\0ß[TÛ~†ymô—J­µŽà}°á£aÒ%0d¸™eN$—Ëì”Tvl‚ÕÏÁŽWã»ŒbÎ÷#9z·UôQ2!t•&8|‚µÿuX22MõjyˆI%—Cv¿ž¿[·N„Æz¨­2%õ]ÿ0WähÞŸ«žiE$}%\0¿8—L}Ÿ‘˜¹a-@?Ì5VWc®hgÏ€+®‡\rß€Ã/H<7ÙwÆ·myÜfiFóI³Ñ~ÕgPµn‚£åfl*ÎúNsÙu‘]‡5P+™ÎÜt:nÝ6aJæ¿RÃ>ƒ#n{~@¦ÓM?(5Õ¦@.hm1	Tsvo…Ýÿ†{ iWd3.z‹Ÿìdy:™ÐWeZbýu¡qÚ’	`X,üÌìåí=	5k dd…N·Û¤Ï±\Z³†éÀØû!Ô¬WS|›ovšwÃGGšJKÎ$™Î“\'Q&-‡‹¯ƒc»áó¿¡ê>3:ª³¨àvA»µ;lM5ìùöl2—ö<þQb¦O ŠæÃ´Y‘>jfÐ¡Î\"qšì?\Znƒr\'Ïì2´æeÓÌ2Â\\Èùèa“>•åP»	Úk{÷ú¸ÑiÁÓ‘>j3^ƒ´~­e·ÛÏ4x_gq‚q²*ÖÁÖw`ïJè8\nù—Âà³¡¹ŽþËÿêä}ÅM‘¬W3™x,]Êá‰”Lê÷$\"¹ùpÑWÌì†ò<3þSÿ¶¹	<t\"R‘\0~J¤DH&ñ\"Ñp»Íõowo‡µ†Ý¯õ½¦\\0‘\"O3@[î D˜±Bgnâp˜å£Kà¢0âj3G¯¯R4mïŽHÍÀUvL„ÄÀl½‰(TŠYX2	\\ó`c?¨*‡Ö]‰3Øj‡«ž‡ë¾éX’§ÕôípÍ»DjæìÃŒÜ‹D¤Ãi¦\0Ú•°g#x¦o¼÷ï~§t÷ÑÏa–´Ð—dšŽªz‰«Ã\\ßµþ¸™\Z´«¶ÿNü31e‹æÃ÷ïN¡Á»Å4\'¢ O™ÀŒ*ß­³6Á‹n´µ™Mú÷n‡MoÃž· moâ4ýz–F¶‰,À‹À:kû‚XÖ¼šjØ±¶½Gþ	mÛ{ï=¤ú¦âì×áŠ™ÝéõX¤D”	`fÑ›è+Í¿“p`ìÝ;×Aý>³µ—»96iåÈƒô¢Nq¿ñœ{‰¹\\N°5W1)Qe³ç¥T¢½\r\ZN@mµYjqd7Úû¡í¸ZÌ¤×î\næÈƒÌñ;NAçÂW¾Î7ý¢ÔÔ¸Š”È2yKuƒU è¯36¦”ÃzÜôs:áT“™’TSeÙ\r.\'47@ÓQ³»kËçàî0Kµ¶swtÞR³!½d@fžé¯õ	¥—ÂY“ ` Yc•–ÞS‰ Âª]_•Iô.sWèÜÜ²û…\nÜ¦Pá´f—·6›½ÆŽÃ®ŒXû×CÃ{¾íw9}	Ò2`ô$È`f³gå˜×ÌlHO7—ªé¹DnÌÖhK¢Òú”L¢Å˜ÙÑÑk	¸]F0ÏÉßÑaÌÓçJI5çµS~ë*‡Ö:*ÏÒ´4ãyÏ%3³ájBÌ—L\"Z,ÇÌLqôê«zR\rÌïóÓµ·òÕuˆ*ÚHcp½=³ßá0y¶\'v8:oÑI£y±I2‰p”¬º³·õr°Ššy\"}©—¬´rô!‰Öb†XöÇúÅ$“è®T_&q·=èU‰$“ˆÏ7‘8c€Í˜ý¿ïŒÇ‹K&\r.Ãìy~\rv®}þ†¹´Ky<’IÄB¬oa*fÅ1h\n:­¦Û\ZÌÄèòDùà’IôFk0\rSôìy˜\"Åœ@“õõàflhyoö\"åÿZ¹HþÅ\0\0\0\0IEND®B`‚',20,20),(11,'Cloturer','image/png','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0Ó\0\0\0Ì\0\0\0é‡–—\0\0¥zTXtRaw profile type exif\0\0xÚ­œivÜ8„ÿãsbŽƒõ½¹Á¾\0K²UZlÉmµ%¹Š&r‰ˆÀ6ëÿþw›ÿáOIÉ™sI5¥‹?¡†ê\Z¿”ëþsÿ´W8ßÏŸéïÙ·¯›1o8^ÒEÓz\\ßx=þú@×ûÛ×M~äÊc Ç/zÝÙñËãºòÈ»ûuûø·©ÏµðÛtK=÷Ô‡î·žþ2Î˜‘ñ¼3nyë/¾]àõ7øÆÏt¾g.²çwýÑ÷O|g^}rÞÎûîj+ü[W˜+=.HO>z¼nãÇ¾;úÝ\"ûò«{ûÆ¸Ž¸ÞûnïYö^÷ìZHx*™Ç¤®Çç7.ì¸ÒŸ%¾2#¿çóUù*Lq±É;_ÃØjÞÞ6Øi›ÝvŸÃLn9ÜíœÎŸ×\nî¯nx… èËn—}õÓøBœQó¼ì^m±ç¾õÜoØÂ§åJgÌò‰w_æ£òõ:ÐÞJ]k3óñv9y39}ç*b÷Ã§ñø÷|™×°þú£Àz\"›lW¿‡èÑþÊ-âì¹.^Á\\wiØ<à\"î1Æz\"p%ë£MöÊÎekñc!>\rË)×‰€ÑMk6±ñ>œâto>“í¹ÖEw¿´ˆH¡dBS}#X!Dò\'‡Bµèc01Æs,±Æ–|\n)¦”rFµìsÈ1§œsÉ5·âK(±¤’K)µ´êªÂbM5›Zj­­qÓÆÐO7®h­»î{è±§ž{éµ·AúŒ0âH#2êhÓM?)ÿ™f6³Ì:Û²‹TZaÅ•V^eÕÕ6¹¶ý;î´ó.»îö\ZµGTßFÍ>Eîë¨ÙGÔ±p®Ë¿¢ÆË9¿a\'Q1#b.X\"žÚ)fW±!8EN1»ª£(¢#j6*8Ó*bD0,ëâ¶¯±û¹/ãfbøVÜÜg‘3\nÝ9£Ð=\"÷>nDm¶ƒzþHU(Ÿ^~l\\°Js¥‰“~ýìÓúeÇ.ÎÐ1 2OŠaŒÚâªÂó6ò¯Ô6[ºµCBÌ\"Ûk‚`×È8ÈuN±ŠzßÃû²‹×ï«¸ØVÞsï’ùËÔ@†k0\'ðu‹\"jêU¿å½ìùuDRã_h^Fü×Í³‰?Ð|6çïhþäÄ¿ÐüÉ‰; ùÛ¨üi@óÝ06 ùiÞ<hþ5”Ù«W®ÜàT«HØ4—ïs^)õ>MÒg—m~wb*c¢Z°ü]c”ï›8P–gœQ\\ÜNyÿþÓ¼y<ÂˆT®¾\\A˜¤2›­Û¬ŸãJuÚYk\0“¸f\0Qqéžm\\&!Wªå>Øé`pð©§mcŸ}D‹€	¡X\'{âÕ\0¼[Ê„ÉõqÉ)™¸7èˆGæ<nL=Š½¡„hCüûŸæ/.T`µo!\0,KÏñše€áe®ªÉ9m¦SGH¶»ÆTòZ{€µhÌ}^yfWïá¤½]¼)Ñ¯òÉìæS\\¡Õ÷‘xˆ¹oo|ìCºÝ)6F×O ôß¹0µÝ®/Æþý§iyáýsW2;•¥[VWr;ÓšÅ5ƒ9çÀIþ^øÚ	æï½ðµÌ‹6Dû)¥˜Cš)mH¶\n¯†žQ¾$çZ¬V|íé”|`6jcµŠj¸²¦¾¢½Tî2ÉrO)¶Û\\æ¥ª$ÿÏïèþ™ý&YL»z ¯Ûu4Wqè·Îðç#vÊÍ‡„·üûÁpæïß‡3¿›÷/Ã™÷³ýÙpæ3ç}w8ó™ó¾;œù:?œù›ÐþÍpæçuOËÅì1‹ò#?+Jr•¼†_‘\n—Ñµcí9Ë ˜‡ìïeÑ	Pã.TõoHÅñ¨5”Þî±1Ð%aØWº“¾ŸBX7eïtµrŠ5¤ÑÅ…3fÖCÎ{@\Zk\ro–C¶B2~ägÙiÜÓûž}U¹¥$Kò“Ù&w¹>µÙ<íä¯}lÙÖÝ°Óê·ÍÂ“¾?*qó\\ã¼\r‚ú\\n5Z”nmDF•W#4ÚH\"ÚJ+³#ýMJîÊ&Í‘gê³ÂuÌ*e{Ãh®\ry k_¸(æ®µšÃQü4Ÿ½a_íÇÅÏ %óûšt¥àxpláx AÓêl›PÚí•ãÓÛ£éó‹C÷ù×>¸Ìªy…æß¸ú}ü…Ô\'NüûR[òJ(‡N~[lr.>t‚@(˜õ%ÛµŸí5_ü±½Á¢°nK–;Wv(›²”Á°jÏëÏyÄHe_Ç´O.ôKË7D*‘‰»ÐhI;¢Kq@RuôV=óÌ+Æ~ãêÜÏñë¼†—U1išÁÝ4Ÿ‘‹Ãè¸<~Ž™LgšiìîÖØÌ%O;rG¾ `æN¶˜‘±Fä\ntDãK:àôà(4zHŠ@CØÑÔ\Z\"ˆÒGÍê*¿¹ÐÊý²Ñ¼7Ë¹0ªÛ¾ò¸äµÙó­s+8õëþøÌ‹	·g¨@{_z›Á53^%”çJs\"9~y5CØO<Ly6äÉæ{žøÜæ{žøÜæ{žøÜæ{žøÜæ{žøÜæ{žøÜæ{žøÜæ‡Å‘Å[ô¶Õ%: ³³€¾æ˜#ð?½_btß­‹eÑyNYŽ¯C€>Z@zZ>ŒÒR‡çüvkµ™´Ñ‘mÚšÜ%ø‹fìZWñóhé¹@ó”¾…ô‘Ñøí¹›xÂê¨6¯Xý$ý‰Ê-þñÿ¥ô7Ï\rÐWˆý•½æÅà¦»-9T÷ :Y,‘¤S¸·4ùûu`ßÜ¿EÈ¬C±¨+A¬\Z¦ž¬\nZ­-þÙ}¹óÈ¨×‰<\Z]6Íä·Z­×–ë•®5óŽ®ßÎá\rwý¢.¦ßê(ó·BêOâOQÿ‰ø3o.þÌ{£&þÌsƒç(Q‹3w>•ùoºûm@¾Ù)ïqº¡ÅŽó ÃëÚÊ©CÛuî\"­‚ÌÇà+yÏLmŒUBmµLý#mú5µ”;É†¦^MkÎŽnaŒÜ\\[¡ŒnÇeë\n3\'y¸…þ\n}ý”Qõý}Y¥õˆZ	4çWðñÖ€…­¸¥´&„#ÎÂ¶yÍ¬…¬ˆŸ–kx·åe\r*çÒ2Q1ÙVVÁ)içè9¶XÛ.I^ÁÖÖË[—]ÈsŽ•·3\0ˆ÷òá«Ý·Õ·Í\në‹Í²îÅäƒæòÎ«Áæ‹±··ë›:À¼ýuz¶Â-Ä*ùÔürê*²2ÔüÊ_ù˜ïrzð×ŠŸÇÐ¼\râÏchA<Nù®Jû‘Í‹[øþU¶”?EÏ<¹ævÌí]p»åús’˜¿Ë’?\'‰ù¾Zü8IÌÓ=¸é­—š–NªKuÅ“‡JMhWIE\"Á U}œKw5_)£õ\ra`Þ+ƒŸ­²™ÔÁóÒà›•A­±Ú|¶•J!•µ×Æ4=”Œ$ðnêôAMØnw\n¡Ì•ÂÈô.ÖyH_¬Í˜$Y9üiAó\'bÂ<«ŸŸŠ	³Ÿ˜ÐŸµû0KrTúê¾5×è9¢ðS1J$¸°3:_€Jï¨~Òfø†\riàîé×eiŽ=\"8=j	:Ò¿ãC\\{á?æW·+v–f­¸ˆ”p&#M>•GµˆMb<¨Iž5Ý;PÓc­Iû8”ï¶çê©ÇË0=H¾öV˜xO$ê÷€2=¯¾zMÄEÂÚñ\r,²\ngÈkXßŒK…öBI!Kq–Ò˜ÓA‹ÕN‡È\nSvÆ}×VgöU8–§+/µ6òºFÂ=¨“‰J)Ú-¦[þRr?ëkæ–Í„ìÇnÝÓ\\ÓPÛc!O{=t·!{[Ö‚æHÜìŒv¥HÛ_“r2´BÑ“âäÑðÊã‚H`¾)Hã°µçV–]åº“.h5£uæ›-Ä\ZVïÍU‰R3•Â®Ú¢§Go(äðBÞô$BOEæåZÔ¿;p’ÀåU¬µìž7®“Û	&[;-cù¦½›¢±ãFô¸•Þä¢ìh©úò®eÀ‹\0Y¸\\-ƒï\n2øk:øCú6o5VØ½†H#ªjjÝµDagŸ@!Ø‘}+ÛÃ„ûó•?	˜hàó¾¤¯7Ñ¼×ˆß_ûXg+ýµ:×l#ÄÅG‡	¢§@Û¦­&è‡–^bï£“8•\nKp?õ+ù\rµ›ÃŠò^\n0†[ÆéÏ4¬¹¥à_u©üš>\Z´î°xëÐQ˜?ÊøøßedÖ1”¹gøƒ¡’\'Å¯EbW›Yçˆ•Õ\ZÚ€óàX‚<Ènz•XaBC¡eÓ°sG‘5IIF`0Ä®vÝçÑ†\Zu*®L0…1F¸t°i º£ª„æ¢]Hãk¥ÈðæýˆWÕ-$L1ÕzBß¦K+òR—2.¶º•RHäšJ J¸b<Ë×\"s‘:EËL/ÛlD%Ò–=ÖF¶V¡rRh	’.´ge ~¦Ÿ$$é½\n‚$&µ<—I¼t‰º1ë˜†6àœ‡–/;…3Ÿc8¬%Üaq´¶äç>R#¡}Û™yí	çSX€&¯T.zzj¢]¢uÉ@·¤ð3t³	\rw‡5öýÊ¯. ˜>ö‚*ƒPá\Z£Ëãs?lÛÔ*Úo„Ðùœé‰«¥ð\n¹B’‘iZOÉ0évóÝàïï&o]Á\Z\Z•LÏ˜ÅcyˆÍµœ+h\n0dþ¥AÎó\0F¨èm\\Ä”ò°!5¤_Ý\nZQs¶kÁ\'ùÚÀuÀoVb¢h„pÇ\0_¯2Šòz;)0‰Ìc¯f¶m‹Þº¥ÜhŽ‘è	ñÅ²(/z+€*\"ñ¾. _ÎHlØU‚Pš86‡Ã|Ì¹!‹¤«¬kÖsû7!(‘Ym> ß­\\P5»¤33ö@¦¢1ÌË6ªš¿Ü`Ÿ”KEyö²…ê´µrSÞòÇÈnþÚÿŒìæï ýÃ\rÇBQóãÍÓêÍ½xs6m”ÄVË,o6m$\0?Ú¶1ŸH@çl0Ç:ÓèÉR€–’‹‘fÂdö½W;GÕzZÒÓÍÂj‘Lì8Æ×ˆÂ´¶DKP®pÑ@ÅˆÈ¥ï¦²…/:0¢Á2ÑFb8é\nh‰dðÁ^x3¯Ñêr$&œ™³Ö:öu:ž@oõ¾+ø+[SÆQ:Ný”Rà 6’jrZ5åÞaÆÇŽN‰QH¡³§þÈïhÚ½\nóxírÆHu¥Å‚%œ= AÔŸlj¿^w?¹lLŠ!æ2sZ»óŠºæóZSßüjàïæíàž|˜g^­¡Ù#	.\"•—2óRmvœ”{A¶ú4*4k.Ò¡5[€¢Ð •³ýCSÓj¬žÊ¨E€«g­‚Ç•D^H°Õ\\Ã¨JB‹÷¯XŠL§mQ“Ô#L†°23¬€\Z&; ¶Ç*ú¸´ŸƒÖ™€ü41ÓÕFÖU$G¹Åû¦¬_eÒ\nZäâ8u€e7-</õhÍ,ƒY:Gë{áž	6hÓ§¤ý++r¦ÅÒ8&ÌÅvšÖX#„tm/MKUå·`Õ‡OZ2ó“ÞZ2ó“ÞÖwÍOx?Zßý°…@ºÛ4D@¬ãžÉ^¸H\r¦G¢AÆƒÙÚ¸\'ñtÖ‹¤ÌQ<²rÅ®™¼¶›iÆDa\'òtôCiL8/UO¦©É¢¯\"‹R6Þ“~k½6Ú…!êšõ€¢¹F¾@€.¸N@W þƒˆ§¸¸Ÿó‰î¨‘NiÀšN 7F’³´BÎ` ‚›—\rèº\'8™d@\'Á|¼­eAÀevGæE‘efª×B9€P	ªRÕÓ<lß’\ZP@K§o)jj·´þS“ü³+Úy¹lÑ9`\nºÛ¼ÊRçÒ »8\0QHªQ-®ÂÛsRZú^M¦«¼´:	lÒ#žô„:p9µ¾øz²òÕê‘›Èû¥óã|Ït}ZŽZm6!Ý•Ý‘¸Þ§ƒèué.w‚‰Uzê‚ª±VGuÒ\Z¡Ø%ê*Ñ]ÐQ…*b=	ûÅF=—:ã‰–@4ë÷?½FÐAçA·ÐA&)k±šfPƒSº|Qý’¨ÿÒ`Ý,lþ½ÁºYØ|EÃ³0‚lDŽµž·è`÷…OhEIÁ†&–ð3¨?;ìÝI[Ñ´¢gèÔ3„‰Í7!¡n\'ÙQïõS-€šP£ˆ0<‡r\Z¼¿o²ÑvŸO»ŽB…ß6_­Ž{ž\rGsvUCÚo$úÚÕ¸WÒHªIË¾Ï&€½Öòb>\\÷bÔ1ÉÈ©·Qz–èw³Îa³³^w!—·{Ì2/û±÷Á“ßÌZ]ÕÃ¥ÜžÎ¤Ã+™®²@†Ø\nî¬¡.§ÖG[¬våÈêÌç†´05¹§§.t”‰ÔÆ)´‚Eë¨š]Jë5Bs’%Å•\Zˆ“t©FÔ0¬¼k¡‹§Ö¢ˆ›0[Ó\\î$+¸‰\\2¾¡3çW§çñÔ ˆõ\0(-¢üv””¼úº4~¸¡ãl÷úº^=/2A<ðàÛtæ¾%0w~µjEkÕíRƒSAJÊ³W´I8iõŽã{FŸ§¤ƒýv#ŽÑu¹¾Î’9%zÆl¢†‹*„@ÊèQ­¾­œaº¶Î]zNp±è0ïHùJ€‘®¤ôP•™|!àg=P\0©¤’y,S-n_îŠz¬@Ë9½^‹iõóàC-Ò‚¾øép{?«ÇŸsûÔNÐGZÊ$}A*GÕ×¦@¯ÕVçMÞ \n$…Knvê´µ£Je‘ë^v†1MDti•ö†°€Ï¤vLÌI%œö×ËŽ>Í·ÕÚ\0	M\Zè>4X¯Û…Ðbœ¸¿„ëžØQ[Ê_g\\ÿ²kto\Z™WÛ¦ýtÛÇÜû\rÇ:§fÜk„TêdßÖz~Æë‰Ž0H…Ìªå|u¨ÝÚ‚N)nò¯ê±– ÉH?N^ñ>\rí@ Ð@&î\\IJ¸ÎAå\\‰s¶ Ú•tF,{z‘ZïãŽî-¨Y+©@ÆÌõ!õuT®6\\KÅ¹aXçžzt(Eè¦áŽÖœ³÷Î¢ÿfÐcQ{`ÁQÈ8Í1hÃ)=$9àšÛ2,ô\'¨8ÑõÖsIÆëì¾žÀ¡ÁG	ÓF=GÕè¡Hbùi×D/A~‚>µ§ž™¡à´Ú„rÅF§Ì)Å-«B´¦ó‡o/·¯#ð{L*Gçîx\0°ÏÝdºCÝì­	¿>dÜî-<´:á–ð–y±è_Œ0Üï×Èd\Z°\rŸÁ]Mi©G‰á‡\0†’£#JP $>X¨>µšF11B§í‚ú“}^ô•´ÖÏ…qMhÄ%ZTbî1* HðõšJwJÒr™Ñó¥éÑ>Ô‚–Œâ:ùÝR”œ™Ì•6B^!²Ìˆ\r\Zò}!1¡+gcSÖÎáXÜ’{Üu\Z\"<çÅ	\'q-k¶!<Ëh‹¾¡$lu÷sd<4aÎbÉ¥ÚÒ>¾Ã}«{¿ôŒ—ž—BgÑàÛˆH$KEö¦Yª–PÔeë‘©mÏ@Ïk&i)òjk.)f€>rÓƒ$™ž†jI­!©ÑE¨d:ýNâg†G­æÛÌ´Âpaë	šN´¯§DeÛ9€ýá}cKË®•ú‰À£úNH\rlU#Š\0ô$ÈÆr†bãL=§7µ·ÒC@KK\'ºDýáðÚryE?8Šö[Ž€ÈÙ:¼ÏBŸ][rêFLdâ|súÞRE%ùÇÁj˜ù«>ªÿq(>ýO†2Öÿ7C™{†ÿ>”yqÖ¿e~ùý{Cõà½¸xAžGã©A^ê¶¦hÄÐ3wèJï„&þJª¨\\{G4€ªˆ­öÊy˜t¸\"’©ÔÙ¢ðí¼m4¿0%ª¡5¥÷Ýk÷ä*9Eu~‘|]xÃ ½›¡é¤(®zZÇâ¼×3L1i{lß’(2?6€èöf¤™Ò“¬)@y]Ë¿M+z&«w½:ôÚ}@ã$º_ DœôF´!4EKçzôØ÷M¢zÜ²2]/ÝM×„˜AÙûY±)1¾Áo¦0.jÏÃb`ÿF9ZÊ¥èhÛ.Õi›„Ô:Ò¥-‚ e@u?ZK°µŠµ;*™°ôVõDÔÚùÄpÁõÔµØÂÕÍ¥glÏ\Zà´K1C@.Úh-rÝ•q?¢oÃ¬@UšôfÚ†ÆÍ¾$ýO´5\nS‹Òßgÿ@ÚÓÁN|›ý‰(_2ÞAÄtmmƒä•F€\\‚­sì	•ZÇ…Ðò¢³`Ú›Eàt˜ŽA§±Œtdbp‘Nå/šÑD°Ö¼÷\"õ<ò¥ÿ9MY³NK‹ÂÖ~è7Wï:6\0|[Ë	Z¾^\n‰o ÿ KÐWvÆ£Ãn•¨…TB;úúæ¡¿óÓüñB=JÎÚÕ´Æ9£ÕÓ¹Ht Ù†¾ó>Ñÿq\0êÒ\nÿE¿9ÏÁA+Òè\0Ö‚tÑÞ¥w‚C¶ÚB¿!i-BŒí\'‡þ\'s¡ÃWBKIª6:oF©ÚŸµ„´œ¹ª¨{¢1´a\0±Á±Œ­QÇCbQ2è¢†NµUm­¾=Ö_7#õÜôPµ×F†Äí-6%ÐÄw&N\r›³ž˜Ú]BH^Ú2+}ë	¯€‰æl±Òj7h-QÔÎ3-­ 8ŒâIö¬§/=:r¡j÷½Ÿ0púüJ]Ö®Ö²NF\rn•IàË:Üªv}$QD$hÖjmfûXöÛÙiÉÑü?ñÉ”Û`œX\0\0\0bKGD\0ÿ\0o\0\0p¬ðî\0\0\0	pHYs\0\0\0\0ÒÝ~ü\0\0\0tIMEè! ™;æw\0\0#IDATxÚíkl[ç}‡Þ$‘ºÑÉ—ØQè:M\'v†Õµ„t±“¡\rZ£i¼-s¦¡»Äù`ØæxÖ!–ºK›}¨Ý!h\râ›Ú¤Àì¶º0ê¤.âÔuGqeKVdY²,6’E‘I‘<ä>TåÖ’Î¡(ŠÔù=\0!QzyH¾ÿïû/Ç‘ÉdB,§Þ!$“’IÉ$„LBH&!$“’I!™„X>ÜpŽ_Ú€{€š\"<^#àX¢sM“ªVEç*pø20P®\'é(ÓéD-ÀkÀÃKXñEe2^—Læ\"Ñ?J\"±\0ï¿\'™ææ[ÀÕa’po¹4ýÊI&‰$\n!¬*‡)—lÞ~‰$\nÄœVdú\rQÀ«z!Á\0gì™¾*‘D8®È7€õª¢ÜÅ2&#Ê!2­SEâY;7óö£ñ$Q<Úì,Ó}þb¥ ‰®BH&!$ÓlÞÕG ŠÈiE&!™„’IÉ$„dB2	!$“’IÉ$„dBH&!$“’I!™„LBH&!$“Â4î\n=ï×È^³G¬,þE2•žã”ÉþÒB2©™\'„dB2	!™„’IÉ$„dB2	!$“’Iˆ•ƒÛ¯1£yY±Í•!™„LBH&!$“B2	!™„LBH&!„dB2	!™„9ì07ïKú˜…d*/ècjæ	!™„LBÉ$„dB2	!$“’IÉ$„dBH&!Jˆ6¡K6¡BH&!$“’I!™„LBH&!$“B2	!™„LBØ\rmB)„d2Íú˜…šyBH&!$“B2	!™„LBÉ$„dB2	!™„’IÉ$DQØ.™–Ž?¾#÷óû¹¿ÏGF·‚oËÉ{’©ø¸ÿ^>4ç^{sîþë¹ÿ»•ÎÎåª×v©<ß>³@™}¹rŸU}\\ë€¶Üý{€š\"?G=pnÖýªÜs„%Sqø\"åùL®ü7T÷‹Fð–è¹\"¹ŸyIã@\"©Òjæ-ž?_âòb~¼%|®\r¹Ÿ’É—‹NéR<¹\"ÓŽ%./Ê‡¿\0>o}ÀG€qà¦\"“æ©î6ÿ|\nøÛRˆd—ÈtaV§×lyQÙ8rér÷¯)2-žÿZâò¢|…ªÊÝ¾\n<)™Ï7€š,ûC”É[‰x€7€_wH¦Åñ8pb2\'råÄ2ÉdfnKÈƒÀUàï$Sá¤€?ö?\0~M6]úëÜýý¹ÿ§T­K/‘aLOO‹ÅˆF£Äãq’É$éô’d´ÝÀ¿ç¢”‹àÜÍ*vÙ¶x–âÏL\0À0‰ããã\0tww“L&‰Çã„Ãa¶lÙÂää$uuuø|>V­ZEmm-—Ë…ËåÂívãñxp:$; üiàLQ:iKVbðãŽ{8­ïõ¢²øÏb~Á&	FGG¹té–÷ù|$“IÕÕÕøý~\Z\Z\Zðûýx<|>¬[·Žææfêëë©®®^¬XàÏÈÎÏTd‹æ p„llÑõööròäIúûû-FoyœH$‚Ã‘=%§Ó‰Ãá ªªŠ††ZZZÜyç477S[[‹Ûíž)o% \0ß!;&õŒd‹á[ÀÅ>H8æ»ßý.o¿ývÑûTù&\"@*•\"\Zéêê¢¹¹™mÛ¶qß}÷±iÓ&|>_!B1ë=xF2‰eixx˜W_}Õr*†dÑh”‚Á ƒƒƒlß¾;w.›Pê3I¤‚ˆÅbttt=Ün|>µµµ<x5kÖ,æá^)D(ÉdßdÃ·é#¥ÓiNŸ>m*¡°B¥RÙÑöövöìÙ³˜äÄKÀ?I&±$\"…Ãa^~ùå’7éLWf‡ã–Aß@ À³Ï>[h”²œå“Lö¢è¦€5F/^äèÑ£ù¢Ÿ{î9¶mÛVÈ¡)`+0`¦°–`Ø‹S…ˆtâÄ‰Ši®¤ÃÑ£G9qâD!éÞ5[X2Ù+áð‘BDêìì¬ˆ8_+«³³“_|q&Ån¿ÙVd²Ÿž¶r€a¼øâ‹#’úûûyé¥—\njw®¯)™?°’p0ƒW^y¥l\rË$Ô«fÚ„bå7ïüf›Iñxœ7ÞxƒŸýìg3ÏO0u¹\\ÿf†Áµk×8~ü8X\Zfó’]¦³O2Ù“³Í»t:M$áG?ú?ùÉOfþ^UUÅÆÙ¼y3^¯·Ð™eÓ§ŠÅbrþüyV¯^Í¾}û¬<Äçsïé€]eÊÈ©…E\n…Bôöö244„×ë%‹°víZvîÜÉ½÷Þ‹×ë­ø×\Z‹Åèîîæ§?ý)ìØ±ƒ-[¶˜=ÜA6#ºU‘IÌ‘>øàNŸ>Í|pKÂï÷³iÓ&Ö¯_Û]ùÕ%•J‰Dðûýó•¯|…—_~ÙÊÅGÈ&tÎH&q‰D‚ááaÎž=û;\"åûKùÅyN§“d2¹”«`—§Ó‰Çã™yùŸyŽ9ÂóÏ?oå!ß.:I&c7oÞäâÅ‹\\¹reÁW¾|?SSS,óìsí2‡ƒÚÚZ\0k×®½m™þþ~Î;ÇÎ;$“MÉd2LOO3<<Ì¯~õ+¦¦¦L5	ÇÇÇ9wîCCC…¤—KŽËåbÓ¦Møý~V¯^=çÄ×cÇŽ±cÇªªªÌ>ô¿’\'™$S†p8Ì¥K—¸qã†é(c±XŒP(T12­Y³ÆÔ¹ž9s†G}ÔìC?ü;ÍIU+ûö•‚Á ×®]#™Lê\r:::‡M_}ÆAvO2Ù=*Åãq®]»ÆÈÈˆÞYœ:uÊJñ½jæI&&&&¸ví\ZÓÓÓuêGEÌˆÈŸ«Y:;;Ù»w¯Ù¾Ózf\râJ&‹ÅfddÄR¿\'¿;PSS†aTL6¯©©‰ªª*ÓR]¸pÁJfïŸÉ-q—L6mâƒAB¡¥cN\'k×®¥µµ•x<^1¯¹¦¦†µk×ât:M};vÌŠL{ÔÌ³)©TŠ±±1M%fïîr¹hll¤®®®\"¢Òìè”tN¥R¦ö4‡Ã444˜yø-’É¦Q)‘H011ÁèèèÌæ#ó‘H$ˆÅb3;­:<ÏÌÿÓétYŠåp8nSJ§Ó†A2™$‹‘H$æ=þòåËf£“ƒìZ§×%“H§ÓLMMYjâÑÓÓƒÛí¦¾¾žºº:\Zq»Ý$“I&&&˜šš*«éEN§“ÚÚZ\Zñx<¤R)&&&˜œœ$‰ÐÓÓÃØØX1›zŸ’L6ŒLÉd’H$b:‹\n…8þ<W¯^Åï÷óÀðÀP[[K<§»»›÷ß¿¬Æª<÷ß?>ø n·›x<NOO]]]„B!ÆÆÆL}™$	³Y½ßW3Ïfäg/LNNZšñpóæMB¡\r\r\rÜyç3M;Ã0çòåËÄãñ²hî9jjj¸ãŽ;f2Žétš‰‰	z{{	‡Ã¦›¦£££lÜ¸ÑÌÓÞ%™lF¾Ïc†¥”x^œÛUÂ|e5Óÿ*esv®ó´òº/]ºdV¦FÐÛ‘J¥H¥RE]1k6\"å³jn·ÛòÍår™>çbEH[?;™l™òý¦RãõzY·n~¿¿ ™†a\n…ƒ3«€—\Z‹Êì—L6‹J±X¬d•1Ûí&°k×®‚Wì¦R)FFFxçwèéé)Y³ÒBbƒd²Éd’ééé’&ªªªØ´i[·nwMÑBý ºº:®_¿ÎÕ«WËª6ó¥¡êe¯ÈÇK¾)?XœH$H¥RË”Œ2}q¿d²N§§ÓYr™‰ýýý466²~ýú‚ûL###ô÷÷/8{¡˜XHo•L6\"Ÿ/õÒ	Ã0frrŸÏWpdŠF£„Ãá²]á+™l„Ëå²´¡Ø}µ±±1nÞ¼¹¨æb9#™l(Ôì‰ª¥¦’f›¬ZµÊlÑq\rÚÚ02­„=ÃKùž™äMÉd#òQ^ÄÕÈÅ<H&;}ØN\'UUUŠN°°žd²‡ŸÏGcc£\"“	€•â_—L6ü¦­¯¯_Ö$D¥ÐÖÖ¦fž˜;2UWW³fÍ\ZKÍ»r×]w™-\Z’L6ÄívSWW§$„	6lØ`¶è˜d²©Lµµµx<žŠó)5®ÙÔ%™lÚÔóz½ÔÕÕéÍ˜‡½{÷Z)þÉdãoÜ\r6(	1?ü°Ù¢àu°Çt¢/­ä@3ëý,`jo*ŸÏG2™Äëõê\ns`a\ZQp¦	mƒ÷å…üÚ\Z\0/0Avóøûs÷ç¥¦¦†\r6ðæ›oÊšÛÐÞÞnefûÙü/jæU6áÜ7cxø°àn‡ƒ‡zHïÞ|üã·Rük’ieàü­ß¿™ÌT¿i×®]Åik–YŠ}1çÓÖÖfvq€³®k«%•/S:÷³!¡F\0¿™ƒ÷ïßÏ;ï¼Sp…ÍoÝe!…\\¼^ïÌÖ`VÅzâ‰\'¬ï˜}G2U6G\0dGáCÀaà5`ÁT]CCmmmVö‡»·ÛÍÆùÄ\'>QV«_].7n´¼R[[kÖ¬±rÈ—%ÓÊá¥Ûüí{Àur[ö.Ä¾ð…‚eª©©áî»ï¦¥¥¥¬€óe«©©±tÜ“O>i¥x¹+J¦•Áõßº_D÷ÍÊTUUE{{;–Íd2¤R©™+^¸\\®²üÍoº™ß¾y>áÛÛÛ­ô•\0žÿH­úXñÜAvnX¨#{ÕN²W´3UÓ÷ìÙÃ[o½ÅÐÐÐ¼åòû8ŒŽŽât:+bM”aŒŽŽ2666ï˜ÚîÝ»­<lˆÜ@­dZ¹ÑéfîöK²Y½ÿ\0¬ñN§“§Ÿ~šÃ‡Ï[.ÓÛÛ‹Ëå¢©©©bdúðÃéííóÒ¡‡¶úZn;À±ÌmÝ=À8îBîÛAÌO+Pm¦`2™äÆœ<y’®®®9›D.—‹êêj<OEÌ:Ïï­>==}Û$I{{;>ú¨Õ¨tÛé•\Z™vÈ“ââñxhjj¢µµ•?ü‘‘‘Û\neÑhtE¼æ@ `U$€ÏÍáUD¯×Ë=÷ÜÃîÝ»inn^Ñë\0_üâ­ö.³iÕgóÒØØHkk+n·›_üâôöö®ÈÉ°‡²ÚOÊ\0óŽè.·Lê÷”!uuuìÚµ‹uëÖáõzéêê*éþÞKÍ‘#G\n™µñoüÖ¸R¹% òÆ‹2ì¸Çb1®\\¹Â©S§¸|ùrY^Æ¥‘,Ž\'Av€vëB…Ê¡Ïô=UÝò#¡å––Z[[Ù¼ysEïµ8vìX!\"Å€?4S°úL\'Ï«ú–N§“ºº:>úÑ’N§9{ö,Äb±ŠÚ?bïÞ½<þøã…|d€¿^¨yWNÍ<€«dGîEb‘H„¡¡!º»»¹rå\n}}}qîÏ=÷Û¶m+ôðW€gLGó2‘i…\rÞŠ‘N§™žžfbb‚‘‘._¾Ì{ï½ÇèèhY^/)pèÐ¡Å,9	ì³Ô4.£pýuàïUmË;)‘¿¤f8¦¯¯ŸÿüçôôôÇË¦é·Èhd:áPÎ2þRÕ¶r\"U0äâÅ‹\\¸pë×¯3==]²sp¹\\·DÅ§žzŠGyd±‰’‚D*G™\0’]ô&*DªÉÉIèëëãâÅ‹Œ‰DH§ÓK­òë•òâ8p€íÛ·c—Ú‚E*W™ »çE©Ê!™L211A0dppë×¯344ÄÄÄÓÓÓ¤Óé™[!unöæ™SSS455ñØcñ±}ì–eêË%R9Ë4[ª\'r	\n¿ªì’r°~±QÊ0¦¦¦˜ššbdd„`0ÈðððÌÙH$B4\Z½%½žo–åûd™Lfæ*‡555TWW“ÉdX½z5÷Ýwwß}7~¿ÇƒÛí.ÆBKY»J•I”–ýÀ·ùÍæ–‹JT$“IR©ñx|&‡¹téÑh”¾¾>B¡[g”544p»ÝêëëijjÂëõR__OMM\r§ÓY‰2À!²É/$“(6-dgG­%_æžÇ0Œ™ÄA:ÆétÎD©üÀüåo€™\r!ÝqhbÀ§™g¸dÅâÙ™)%]‡‘jy‰f×Ï\".	y3×u(*ZÏ$æbð0%žÙïp8p:3Ñ(‰ŠžZ\n‘$“Xˆ3d—h¿Tò”ñLî5ø¸ÍF(jæ‰åèK½–‹VŽ\n’è-²C,Kýd’I*ÕC”ïJí’J$™D1øðÇ”Ï`ŒìþßÏ,Ç“K&Q>IvÏóÇ0q}¨%èÿÈ^ÚåÌr¾	’I,…XE6cÖ²MÁT®évšìÄè3åòÂ%“(Ek°›lf0¿çaõ<Q,Læ~¿\0Œ“:QÊ>UþO‚™+OµÚ9\0\0\0\0IEND®B`‚',20,20);
/*!40000 ALTER TABLE `workflow_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_prerequisite`
--

DROP TABLE IF EXISTS `workflow_prerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_prerequisite` (
  `id_prerequisite` int(11) NOT NULL AUTO_INCREMENT,
  `id_action` int(11) NOT NULL,
  `prerequisite_type` varchar(255) NOT NULL,
  `uid_prerequisite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_prerequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_prerequisite`
--

LOCK TABLES `workflow_prerequisite` WRITE;
/*!40000 ALTER TABLE `workflow_prerequisite` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_prerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_prerequisite_duration_cf`
--

DROP TABLE IF EXISTS `workflow_prerequisite_duration_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_prerequisite_duration_cf` (
  `id_prerequisite` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`id_prerequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_prerequisite_duration_cf`
--

LOCK TABLES `workflow_prerequisite_duration_cf` WRITE;
/*!40000 ALTER TABLE `workflow_prerequisite_duration_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_prerequisite_duration_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_history`
--

DROP TABLE IF EXISTS `workflow_resource_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_history` (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `id_resource` int(11) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `id_action` int(11) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_access_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_history`),
  KEY `history_id_workflow_fk` (`id_workflow`),
  KEY `history_id_action_fk` (`id_action`),
  KEY `history_id_resource_fk` (`id_resource`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_history`
--

LOCK TABLES `workflow_resource_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_history` DISABLE KEYS */;
INSERT INTO `workflow_resource_history` VALUES (3,1,'FORMS_FORM_RESPONSE',1,1,'2024-03-12 15:32:04','auto'),(17,1,'FORMS_FORM_RESPONSE',1,2,'2024-03-12 15:39:34','auto'),(18,1,'FORMS_FORM_RESPONSE',1,7,'2024-03-12 15:39:35','auto'),(19,1,'FORMS_FORM_RESPONSE',1,4,'2024-03-12 15:41:30','voirie'),(20,1,'FORMS_FORM_RESPONSE',1,10,'2024-03-12 15:42:43','espacepublic'),(21,1,'FORMS_FORM_RESPONSE',1,3,'2024-03-12 15:43:50','espacepublic'),(22,1,'FORMS_FORM_RESPONSE',1,3,'2024-03-12 15:45:48','petiteenfance'),(23,1,'FORMS_FORM_RESPONSE',1,6,'2024-03-12 15:47:39','voirie'),(24,1,'FORMS_FORM_RESPONSE',1,8,'2024-03-12 15:47:39','auto'),(25,1,'FORMS_FORM_RESPONSE',1,6,'2024-03-12 15:53:42','voirie'),(26,1,'FORMS_FORM_RESPONSE',1,8,'2024-03-12 15:53:42','auto'),(27,1,'FORMS_FORM_RESPONSE',1,6,'2024-03-12 16:18:55','voirie'),(28,1,'FORMS_FORM_RESPONSE',1,8,'2024-03-12 16:18:55','auto'),(31,4,'FORMS_FORM_RESPONSE',1,1,'2024-06-05 14:36:31','auto'),(32,4,'FORMS_FORM_RESPONSE',1,2,'2024-06-05 14:36:56','auto'),(33,4,'FORMS_FORM_RESPONSE',1,7,'2024-06-05 14:36:57','auto'),(34,5,'FORMS_FORM_RESPONSE',2,16,'2024-06-07 15:56:39','auto'),(35,5,'FORMS_FORM_RESPONSE',2,11,'2024-06-07 15:56:54','auto'),(36,5,'FORMS_FORM_RESPONSE',2,17,'2024-06-07 15:56:54','auto');
/*!40000 ALTER TABLE `workflow_resource_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_user_history`
--

DROP TABLE IF EXISTS `workflow_resource_user_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_user_history` (
  `id_history` int(11) NOT NULL,
  `user_access_code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `first_name` varchar(255) DEFAULT '',
  `last_name` varchar(255) DEFAULT '',
  `realm` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_user_history`
--

LOCK TABLES `workflow_resource_user_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_user_history` DISABLE KEYS */;
INSERT INTO `workflow_resource_user_history` VALUES (19,'voirie','agent.voirie@citelibre.org','Agent','Voirie','BACK_OFFICE_USER'),(20,'espacepublic','agent.espacepublic@citelibre.org','Agent','EspacePublic','BACK_OFFICE_USER'),(21,'espacepublic','agent.espacepublic@citelibre.org','Agent','EspacePublic','BACK_OFFICE_USER'),(22,'petiteenfance','agent.petiteenfance@citelibre.org','Agent','PetiteEnfance','BACK_OFFICE_USER'),(23,'voirie','agent.voirie@citelibre.org','Agent','Voirie','BACK_OFFICE_USER'),(25,'voirie','agent.voirie@citelibre.org','Agent','Voirie','BACK_OFFICE_USER'),(27,'voirie','agent.voirie@citelibre.org','Agent','Voirie','BACK_OFFICE_USER');
/*!40000 ALTER TABLE `workflow_resource_user_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_workflow`
--

DROP TABLE IF EXISTS `workflow_resource_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_workflow` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) NOT NULL,
  `id_state` int(11) DEFAULT NULL,
  `id_workflow` int(11) NOT NULL,
  `id_external_parent` int(11) DEFAULT NULL,
  `is_associated_workgroups` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_resource`,`resource_type`,`id_workflow`),
  KEY `workflow_resource_workflow_id_resource_fk` (`id_resource`),
  KEY `workflow_resource_workflow_resource_type_fk` (`resource_type`),
  KEY `workflow_resource_workflow_id_workflow_fk` (`id_workflow`),
  KEY `fk_document_id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_workflow`
--

LOCK TABLES `workflow_resource_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_resource_workflow` DISABLE KEYS */;
INSERT INTO `workflow_resource_workflow` VALUES (1,'FORMS_FORM_RESPONSE',2,1,1,0),(4,'FORMS_FORM_RESPONSE',2,1,1,0),(5,'FORMS_FORM_RESPONSE',7,2,4,0);
/*!40000 ALTER TABLE `workflow_resource_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_workgroup`
--

DROP TABLE IF EXISTS `workflow_resource_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_workgroup` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `resource_type` varchar(255) DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `workgroup_key` varchar(255) DEFAULT NULL,
  KEY `workflow_resource_workgroup_id_resource_fk` (`id_resource`),
  KEY `workflow_resource_workgroup_resource_type_fk` (`resource_type`),
  KEY `workflow_resource_workgroup_id_workflow_fk` (`id_workflow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_workgroup`
--

LOCK TABLES `workflow_resource_workgroup` WRITE;
/*!40000 ALTER TABLE `workflow_resource_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_resource_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_state`
--

DROP TABLE IF EXISTS `workflow_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_state` (
  `id_state` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `is_initial_state` smallint(6) DEFAULT 0,
  `is_required_workgroup_assigned` smallint(6) DEFAULT 0,
  `id_icon` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `uid_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_state`),
  KEY `fk_state_id_workflow` (`id_workflow`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_state`
--

LOCK TABLES `workflow_state` WRITE;
/*!40000 ALTER TABLE `workflow_state` DISABLE KEYS */;
INSERT INTO `workflow_state` VALUES (1,'Demande de contact dÃ©posÃ©e','Une demande de contact rentre dans le workflow. L\'affectation aux entitÃ©s organisationnelles est rÃ©alisÃ©e en tÃ¢che automatique sur cet Ã©tat.',1,1,0,NULL,1,'9fbb58ee-1d0d-11ef-8590-0242ac180003'),(2,'Demande en cours d\'instruction','La demande de contact est en cours d\'instruction. L\'usager a Ã©tÃ© notifiÃ©.',1,0,0,NULL,2,'9fbb5c42-1d0d-11ef-8590-0242ac180003'),(3,'Demande clÃ´turÃ©e','La demande a Ã©tÃ© traitÃ©e, l\'usager en a Ã©tÃ© informÃ©.',1,0,0,NULL,4,'9fbb5d15-1d0d-11ef-8590-0242ac180003'),(4,'En attente d\'informations','La sollicitation a fait l\'objet d\'une demande d\'informations complÃ©mentaires. L\'agent est en attente de l\'usager',1,0,0,NULL,3,'9fbb5da0-1d0d-11ef-8590-0242ac180003'),(5,'Sollicitation supprimÃ©e','Sollicitation supprimÃ©e',1,0,0,NULL,5,'9fbb5e26-1d0d-11ef-8590-0242ac180003'),(6,'Dossier dÃ©posÃ©','La rÃ©ponse au formulaire rentre dans le workflow. ',2,1,0,NULL,1,'9fbb5eab-1d0d-11ef-8590-0242ac180003'),(7,'Dossier en instruction','L\'usager a Ã©tÃ© notifiÃ©. Il est possible de clÃ´turer le dossier depuis cet Ã©tat ou de demander des complÃ©ments/corrections Ã  l\'usager.',2,0,0,NULL,2,'9fbb5f17-1d0d-11ef-8590-0242ac180003'),(8,'Demande refusÃ©e','La demande ne peut Ãªtre traitÃ©e pour diffÃ©rentes raisons.',2,0,0,NULL,3,'9fbb5f8c-1d0d-11ef-8590-0242ac180003'),(9,'Dossier traitÃ©','La demande a Ã©tÃ© traitÃ©e et l\'acte mis au courrier',2,0,0,NULL,4,'9fbb600a-1d0d-11ef-8590-0242ac180003'),(10,'Dossier en attente de correction','Une demande de correction a Ã©tÃ© envoyÃ©e Ã  l\'usager. On attend son renvoi.',2,0,0,NULL,5,'9fbb6076-1d0d-11ef-8590-0242ac180003'),(11,'Dossier en attente de complÃ©ment','La demande ne peut Ãªtre traitÃ©e car elle semble incomplÃ¨te. En attente de complÃ©ment.',2,0,0,NULL,6,'9fbb60fe-1d0d-11ef-8590-0242ac180003'),(12,'Demande anonymisÃ©e','PassÃ© le dÃ©lai configurÃ©, les informations relatives aux donnÃ©es personnelles sont remplacÃ©es.',2,0,0,6,7,'9fbb631b-1d0d-11ef-8590-0242ac180003'),(13,'Demande ArchivÃ©e/SupprimÃ©e','PassÃ© le dÃ©lai renseignÃ© dans la configuration, la demande est supprimÃ©e',2,0,0,5,8,'9fbb63dd-1d0d-11ef-8590-0242ac180003');
/*!40000 ALTER TABLE `workflow_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_state_controller_form_response_value`
--

DROP TABLE IF EXISTS `workflow_state_controller_form_response_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_state_controller_form_response_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `is_multiform` smallint(6) NOT NULL DEFAULT 0,
  `id_form` int(11) DEFAULT NULL,
  `id_step` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `response_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_state_controller_form_response_value` (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_state_controller_form_response_value`
--

LOCK TABLES `workflow_state_controller_form_response_value` WRITE;
/*!40000 ALTER TABLE `workflow_state_controller_form_response_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_state_controller_form_response_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task`
--

DROP TABLE IF EXISTS `workflow_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task` (
  `id_task` int(11) NOT NULL AUTO_INCREMENT,
  `task_type_key` varchar(50) DEFAULT NULL,
  `id_action` int(11) NOT NULL DEFAULT 0,
  `display_order` int(11) DEFAULT 0,
  `uid_task` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_task`),
  KEY `task_id_action_fk` (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task`
--

LOCK TABLES `workflow_task` WRITE;
/*!40000 ALTER TABLE `workflow_task` DISABLE KEYS */;
INSERT INTO `workflow_task` VALUES (1,'taskUnitAssignmentAutomatic',1,1,'9fcf3bb8-1d0d-11ef-8590-0242ac180003'),(2,'taskTypeArchive',1,2,'9fcf3e5c-1d0d-11ef-8590-0242ac180003'),(3,'taskTypeArchive',7,1,'9fcf3f00-1d0d-11ef-8590-0242ac180003'),(4,'taskTypeArchive',8,1,'9fcf3f78-1d0d-11ef-8590-0242ac180003'),(5,'taskTypeArchive',9,1,'9fcf414c-1d0d-11ef-8590-0242ac180003'),(6,'taskNotifyGru',2,1,'9fcf4209-1d0d-11ef-8590-0242ac180003'),(7,'taskUnitAssignmentManual',3,1,'9fcf435e-1d0d-11ef-8590-0242ac180003'),(8,'taskTypeComment',3,2,'9fcf43de-1d0d-11ef-8590-0242ac180003'),(9,'taskNotifyGru',3,3,'9fcf4430-1d0d-11ef-8590-0242ac180003'),(10,'taskUnitAssignmentManual',4,1,'9fcf447e-1d0d-11ef-8590-0242ac180003'),(11,'taskUnitAssignmentManual',10,1,'9fcf44cd-1d0d-11ef-8590-0242ac180003'),(13,'completeFormResponseTypeTask',6,1,'9fcf4517-1d0d-11ef-8590-0242ac180003'),(14,'taskNotifyGru',6,3,'9fcf4560-1d0d-11ef-8590-0242ac180003'),(15,'taskTypeComment',6,2,'9fcf45aa-1d0d-11ef-8590-0242ac180003'),(16,'taskNotifyGru',5,2,'9fcf45f3-1d0d-11ef-8590-0242ac180003'),(17,'taskTypeComment',5,1,'9fcf4640-1d0d-11ef-8590-0242ac180003'),(19,'taskNotifyGru',11,1,'9fcf4782-1d0d-11ef-8590-0242ac180003'),(20,'taskUnitAssignmentAutomatic',11,2,'9fcf47cd-1d0d-11ef-8590-0242ac180003'),(22,'resubmitFormResponseTypeTask',12,1,'9fcf48a1-1d0d-11ef-8590-0242ac180003'),(23,'taskTypeComment',12,2,'9fcf48ff-1d0d-11ef-8590-0242ac180003'),(24,'taskNotifyGru',12,3,'9fcf495b-1d0d-11ef-8590-0242ac180003'),(26,'taskTypeComment',13,2,'9fcf49af-1d0d-11ef-8590-0242ac180003'),(27,'taskNotifyGru',13,3,'9fcf4a01-1d0d-11ef-8590-0242ac180003'),(28,'completeFormResponseTypeTask',13,1,'9fcf4a54-1d0d-11ef-8590-0242ac180003'),(29,'taskNotifyGru',14,1,'9fcf4aa9-1d0d-11ef-8590-0242ac180003'),(30,'taskTypeComment',15,1,'9fcf4af5-1d0d-11ef-8590-0242ac180003'),(31,'taskNotifyGru',15,2,'9fcf4b46-1d0d-11ef-8590-0242ac180003'),(32,'taskTypeArchive',16,1,'9fcf4b9a-1d0d-11ef-8590-0242ac180003'),(33,'taskTypeArchive',16,2,'9fcf4bf9-1d0d-11ef-8590-0242ac180003'),(34,'taskTypeArchive',17,1,'9fcf4c59-1d0d-11ef-8590-0242ac180003'),(35,'taskTypeArchive',17,2,'9fcf4cb6-1d0d-11ef-8590-0242ac180003'),(36,'taskTypeArchive',18,1,'9fcf4d0a-1d0d-11ef-8590-0242ac180003'),(37,'taskTypeArchive',18,2,'9fcf4d72-1d0d-11ef-8590-0242ac180003'),(38,'taskTypeArchive',19,1,'9fcf4dcd-1d0d-11ef-8590-0242ac180003'),(39,'taskTypeArchive',19,2,'9fcf4e20-1d0d-11ef-8590-0242ac180003'),(40,'taskTypeArchive',20,1,'9fcf4e76-1d0d-11ef-8590-0242ac180003'),(41,'taskTypeArchive',20,2,'9fcf4ed2-1d0d-11ef-8590-0242ac180003'),(42,'taskTypeArchive',21,1,'9fcf4f2e-1d0d-11ef-8590-0242ac180003'),(43,'taskTypeArchive',21,2,'9fcf4f85-1d0d-11ef-8590-0242ac180003');
/*!40000 ALTER TABLE `workflow_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_alert_gru_cf`
--

DROP TABLE IF EXISTS `workflow_task_alert_gru_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_alert_gru_cf` (
  `id_task` int(11) NOT NULL,
  `id_spring_provider` varchar(255) DEFAULT NULL,
  `marker_provider_ids` varchar(1000) DEFAULT NULL,
  `demand_status` int(11) DEFAULT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `set_onglet` smallint(6) DEFAULT NULL,
  `message_guichet` text DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `days_to_alert` int(11) DEFAULT NULL,
  `id_state_after` int(11) DEFAULT NULL,
  `alert_subject` varchar(255) DEFAULT NULL,
  `marker_alert` varchar(255) DEFAULT NULL,
  `alert_after_before` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_alert_gru_cf`
--

LOCK TABLES `workflow_task_alert_gru_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_alert_gru_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_alert_gru_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_alert_gru_history`
--

DROP TABLE IF EXISTS `workflow_task_alert_gru_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_alert_gru_history` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `message_guichet` text DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_alert_gru_history`
--

LOCK TABLES `workflow_task_alert_gru_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_alert_gru_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_alert_gru_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_archive_cf`
--

DROP TABLE IF EXISTS `workflow_task_archive_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_archive_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `next_state` int(11) NOT NULL,
  `type_archival` varchar(255) DEFAULT NULL,
  `delay_archival` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_archive_cf`
--

LOCK TABLES `workflow_task_archive_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_archive_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_archive_cf` VALUES (2,5,'DELETE',1095),(3,5,'DELETE',1095),(4,5,'DELETE',1095),(5,5,'DELETE',1095),(32,13,'DELETE',1825),(33,12,'ANONYMIZE',365),(34,13,'DELETE',1825),(35,12,'ANONYMIZE',365),(36,13,'DELETE',1825),(37,12,'ANONYMIZE',365),(38,13,'DELETE',1825),(39,12,'ANONYMIZE',365),(40,13,'DELETE',1825),(41,12,'ANONYMIZE',365),(42,13,'DELETE',1825),(43,12,'ANONYMIZE',365);
/*!40000 ALTER TABLE `workflow_task_archive_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_archive_resource`
--

DROP TABLE IF EXISTS `workflow_task_archive_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_archive_resource` (
  `id_resource` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `initial_date` timestamp NULL DEFAULT NULL,
  `archival_date` timestamp NULL DEFAULT NULL,
  `is_archived` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_resource`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_archive_resource`
--

LOCK TABLES `workflow_task_archive_resource` WRITE;
/*!40000 ALTER TABLE `workflow_task_archive_resource` DISABLE KEYS */;
INSERT INTO `workflow_task_archive_resource` VALUES (1,2,'2024-03-12 15:32:04',NULL,0),(1,3,'2024-03-12 15:39:35',NULL,0),(1,4,'2024-03-12 15:47:39',NULL,0),(4,2,'2024-06-05 14:36:31',NULL,0),(4,3,'2024-06-05 14:36:57',NULL,0),(5,32,'2024-06-07 15:56:39',NULL,0),(5,33,'2024-06-07 15:56:39',NULL,0),(5,34,'2024-06-07 15:56:54',NULL,0),(5,35,'2024-06-07 15:56:54',NULL,0);
/*!40000 ALTER TABLE `workflow_task_archive_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_assign_user_config`
--

DROP TABLE IF EXISTS `workflow_task_assign_user_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_assign_user_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `provider_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_assign_user_config`
--

LOCK TABLES `workflow_task_assign_user_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_assign_user_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_assign_user_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_assign_user_information`
--

DROP TABLE IF EXISTS `workflow_task_assign_user_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_assign_user_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `information_key` varchar(255) NOT NULL,
  `information_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_assign_user_information`
--

LOCK TABLES `workflow_task_assign_user_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_assign_user_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_assign_user_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_assignment_cf`
--

DROP TABLE IF EXISTS `workflow_task_assignment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_assignment_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_multiple_owner` smallint(6) DEFAULT 0,
  `is_notify` smallint(6) DEFAULT 0,
  `message` varchar(255) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `is_use_user_name` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_assignment_cf`
--

LOCK TABLES `workflow_task_assignment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_assignment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_assignment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_change_state_config`
--

DROP TABLE IF EXISTS `workflow_task_change_state_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_change_state_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_next_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_change_state_config`
--

LOCK TABLES `workflow_task_change_state_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_change_state_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_change_state_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_change_state_information`
--

DROP TABLE IF EXISTS `workflow_task_change_state_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_change_state_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `new_state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_change_state_information`
--

LOCK TABLES `workflow_task_change_state_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_change_state_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_change_state_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_choice_config`
--

DROP TABLE IF EXISTS `workflow_task_choice_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_choice_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_choice_config`
--

LOCK TABLES `workflow_task_choice_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_choice_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_choice_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_choose_state_config`
--

DROP TABLE IF EXISTS `workflow_task_choose_state_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_choose_state_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `controller_name` varchar(100) DEFAULT NULL,
  `id_state_ok` int(11) NOT NULL,
  `id_state_ko` int(11) NOT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_choose_state_config`
--

LOCK TABLES `workflow_task_choose_state_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_choose_state_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_choose_state_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_choose_state_information`
--

DROP TABLE IF EXISTS `workflow_task_choose_state_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_choose_state_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `new_state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_choose_state_information`
--

LOCK TABLES `workflow_task_choose_state_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_choose_state_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_choose_state_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_comment_config`
--

DROP TABLE IF EXISTS `workflow_task_comment_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_comment_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT 0,
  `is_richtext` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_comment_config`
--

LOCK TABLES `workflow_task_comment_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_comment_config` DISABLE KEYS */;
INSERT INTO `workflow_task_comment_config` VALUES (8,'Indiquer le service auquel la sollicitation doit Ãªtre transfÃ©rÃ©e',1,0),(15,'Indiquer les informations manquantes pour le traitement de la sollicitation',1,0),(17,'Motif de la clÃ´ture du dossier',1,0),(23,'Indiquer le champ Ã  corriger',1,0),(26,'Indiquer le champ Ã  complÃ©ter',1,0),(30,'Motif du refus',1,0);
/*!40000 ALTER TABLE `workflow_task_comment_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_comment_value`
--

DROP TABLE IF EXISTS `workflow_task_comment_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_comment_value` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  `comment_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`),
  KEY `comment_value_id_history_fk` (`id_history`),
  KEY `comment_value_id_task_fk` (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_comment_value`
--

LOCK TABLES `workflow_task_comment_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_comment_value` DISABLE KEYS */;
INSERT INTO `workflow_task_comment_value` VALUES (21,8,'petite enfance'),(22,8,'voirie'),(23,15,'A quel niveau de l\'avenue de la RÃ©publique l\'avez-vous constatÃ©, s\'il vous plait?'),(25,15,'Nous n\'avons rien constatÃ© au numÃ©ro 12, pourriez-vous Ãªtre plus prÃ©cis, svp?'),(27,15,'Toujours pas... Un autre numÃ©ro peut-Ãªtre?');
/*!40000 ALTER TABLE `workflow_task_comment_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_complete_response`
--

DROP TABLE IF EXISTS `workflow_task_complete_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_complete_response` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `message` mediumtext DEFAULT NULL,
  `is_complete` smallint(6) NOT NULL DEFAULT 0,
  `date_completed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_complete_response`
--

LOCK TABLES `workflow_task_complete_response` WRITE;
/*!40000 ALTER TABLE `workflow_task_complete_response` DISABLE KEYS */;
INSERT INTO `workflow_task_complete_response` VALUES (23,13,'',1,'2024-03-12 15:48:12'),(25,13,'',1,'2024-03-12 15:55:48'),(27,13,'',1,'2024-03-12 16:19:28');
/*!40000 ALTER TABLE `workflow_task_complete_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_complete_response_cf`
--

DROP TABLE IF EXISTS `workflow_task_complete_response_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_complete_response_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_state_after_edition` int(11) NOT NULL DEFAULT 0,
  `default_message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_complete_response_cf`
--

LOCK TABLES `workflow_task_complete_response_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_complete_response_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_complete_response_cf` VALUES (13,2,''),(28,7,'');
/*!40000 ALTER TABLE `workflow_task_complete_response_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_complete_response_history`
--

DROP TABLE IF EXISTS `workflow_task_complete_response_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_complete_response_history` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `iteration_number` int(11) NOT NULL DEFAULT 0,
  `new_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`,`id_question`,`iteration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_complete_response_history`
--

LOCK TABLES `workflow_task_complete_response_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_complete_response_history` DISABLE KEYS */;
INSERT INTO `workflow_task_complete_response_history` VALUES (23,13,42,0,'Bonjour,\r\nJ\'ai repÃ©rÃ© un nid-de-poule, au niveau du 12, avenue de la RÃ©publique de CiteLibre. Cela devient dangereux. Une intervention est-elle prÃ©vue prochainement?\r\nMerci'),(25,13,42,0,'Bonjour,\r\nJ\'ai repÃ©rÃ© un nid-de-poule, au niveau du 16, avenue de la RÃ©publique de CiteLibre. Cela devient dangereux. Une intervention est-elle prÃ©vue prochainement?\r\nMerci');
/*!40000 ALTER TABLE `workflow_task_complete_response_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_complete_response_value`
--

DROP TABLE IF EXISTS `workflow_task_complete_response_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_complete_response_value` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_entry` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_complete_response_value`
--

LOCK TABLES `workflow_task_complete_response_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_complete_response_value` DISABLE KEYS */;
INSERT INTO `workflow_task_complete_response_value` VALUES (23,42),(25,42);
/*!40000 ALTER TABLE `workflow_task_complete_response_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_confirm_action_config`
--

DROP TABLE IF EXISTS `workflow_task_confirm_action_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_confirm_action_config` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_confirm_action_config`
--

LOCK TABLES `workflow_task_confirm_action_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_confirm_action_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_confirm_action_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_editformresponse_config`
--

DROP TABLE IF EXISTS `workflow_task_editformresponse_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_editformresponse_config` (
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `is_multiform` smallint(6) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_editformresponse_config`
--

LOCK TABLES `workflow_task_editformresponse_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_editformresponse_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_editformresponse_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_editformresponse_config_value`
--

DROP TABLE IF EXISTS `workflow_task_editformresponse_config_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_editformresponse_config_value` (
  `id_config_value` int(11) NOT NULL AUTO_INCREMENT,
  `id_config` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) DEFAULT NULL,
  `id_step` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `response` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_config_value`),
  KEY `index_task_editformresponse_config_value` (`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_editformresponse_config_value`
--

LOCK TABLES `workflow_task_editformresponse_config_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_editformresponse_config_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_editformresponse_config_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_forms_editresponse_history`
--

DROP TABLE IF EXISTS `workflow_task_forms_editresponse_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_forms_editresponse_history` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `iteration_number` int(11) NOT NULL DEFAULT 0,
  `previous_value` mediumtext DEFAULT NULL,
  `new_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`,`id_question`,`iteration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_forms_editresponse_history`
--

LOCK TABLES `workflow_task_forms_editresponse_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_forms_editresponse_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_forms_editresponse_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_formspdf_cf`
--

DROP TABLE IF EXISTS `workflow_task_formspdf_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_formspdf_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_forms` int(11) DEFAULT 0,
  `format` varchar(15) DEFAULT NULL,
  `id_template` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_formspdf_cf`
--

LOCK TABLES `workflow_task_formspdf_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_formspdf_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_formspdf_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_formspdf_template`
--

DROP TABLE IF EXISTS `workflow_task_formspdf_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_formspdf_template` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_form` int(11) NOT NULL DEFAULT -1,
  `is_generic` smallint(6) NOT NULL DEFAULT 1,
  `content` longtext DEFAULT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_formspdf_template`
--

LOCK TABLES `workflow_task_formspdf_template` WRITE;
/*!40000 ALTER TABLE `workflow_task_formspdf_template` DISABLE KEYS */;
INSERT INTO `workflow_task_formspdf_template` VALUES (1,'Default Template',-1,1,'<!DOCTYPE html><html><head><title>Export PDF formulaire ${form_title} le ${creation_date!}</title></head><body><h1 style=\"font-size: 30px; text-align: center; background-color: #f0f0f0;\">${form_title}</h1><!-- division pour les reponses du formulaire a copier depuis les signets disponibles --><div id=\"form-response-summary\" style=\"margin-bottom: 3em;\"><h2 style=\"font-size: 18px;\"> signet rep 1 </h2><h2 style=\"font-size: 18px;\"> signet rep 2 </h2><h2 style=\"font-size: 18px;\"> signet rep n </h2></div><!-- division pour le texte du copyright --><div id=\"copyright\" style=\"position: fixed; bottom: 0; width: 100%; text-align: center; background-color: #f0f0f0; padding: 5px;\"> Copyright (c) 2002-2023, City of Paris All rights reserved</div></body></html>');
/*!40000 ALTER TABLE `workflow_task_formspdf_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_linkedvaluesformresponse_config`
--

DROP TABLE IF EXISTS `workflow_task_linkedvaluesformresponse_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_linkedvaluesformresponse_config` (
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `id_task` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_linkedvaluesformresponse_config`
--

LOCK TABLES `workflow_task_linkedvaluesformresponse_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_linkedvaluesformresponse_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_linkedvaluesformresponse_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_linkedvaluesformresponse_config_value`
--

DROP TABLE IF EXISTS `workflow_task_linkedvaluesformresponse_config_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_linkedvaluesformresponse_config_value` (
  `id_config_value` int(11) NOT NULL AUTO_INCREMENT,
  `id_config` int(11) NOT NULL DEFAULT 0,
  `id_form` int(11) NOT NULL DEFAULT 0,
  `id_question_source` int(11) NOT NULL DEFAULT 0,
  `question_source_value` varchar(255) DEFAULT NULL,
  `id_question_target` int(11) NOT NULL DEFAULT 0,
  `question_target_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_config_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_linkedvaluesformresponse_config_value`
--

LOCK TABLES `workflow_task_linkedvaluesformresponse_config_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_linkedvaluesformresponse_config_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_linkedvaluesformresponse_config_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notification_cf`
--

DROP TABLE IF EXISTS `workflow_task_notification_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notification_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_mailing_list` int(11) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notification_cf`
--

LOCK TABLES `workflow_task_notification_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notification_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notification_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_gru_cf`
--

DROP TABLE IF EXISTS `workflow_task_notify_gru_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_gru_cf` (
  `id_task` int(11) NOT NULL,
  `id_spring_provider` varchar(255) DEFAULT NULL,
  `marker_provider_ids` varchar(1000) DEFAULT NULL,
  `demand_status` int(11) DEFAULT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `set_onglet` smallint(6) DEFAULT NULL,
  `message_guichet` text DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `content_cleaned` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_cf`
--

LOCK TABLES `workflow_task_notify_gru_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_gru_cf` VALUES (6,'notifygru-forms.ProviderService.@.1','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'AccusÃ© de rÃ©ception de votre sollicitation nÂ°${position_43!} sur le thÃ¨me ${position_5!}','<p>Bonjour&nbsp; ${position_2!}&nbsp; ${position_1!},</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande &agrave; nos services.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service&nbsp;concern&eacute; a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>&nbsp;</p>\r\n<p>Pour rappel votre demande, point&eacute;e sur la th&eacute;matique \"${position_5!}\" porte sur le message suivant :</p>\r\n<p>${position_42!}</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','Mairie de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(9,'notifygru-forms.ProviderService.@.1','workflow-notifygru.commentMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation nÂ°${position_43!} a Ã©tÃ© transfÃ©rÃ©e au service concernÃ©','<p>Bonjour&nbsp;${position_2!} ${position_1!},</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction votre dossier a &eacute;t&eacute; transf&eacute;r&eacute; au service&nbsp;${comments!}.</p>\r\n<p>Votre dossier est toujours en cours d\'instruction et vous obtiendrez une r&eacute;ponse par ce nouveau service.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(14,'notifygru-forms.ProviderService.@.1','workflow-notifygru.commentMarkerProvider;workflow-forms.completeFormResponseMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation nÂ°${position_43!} nÃ©cessite quelques prÃ©cisions','<p>Bonjour&nbsp;${position_2!} ${position_1!},</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction, il nous manque les pr&eacute;cisions suivantes pour pouvoir traiter votre demande&nbsp;n&deg;${position_43!} :&nbsp;${comments!}</p>\r\n<p>Merci de bien vouloir apporter les compl&eacute;ments d\'informations accessibles sur <a href=\"${complete_form_url!}\">cette page</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(16,'notifygru-forms.ProviderService.@.1','workflow-notifygru.commentMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Traitement de votre demande nÂ°${position_43!}','<p>Bonjour&nbsp;${position_2!} ${position_1!},</p>\r\n<p><br /> Apr&egrave;s instruction, votre dossier de sollicitation&nbsp;n&deg;${position_43!} a &eacute;t&eacute; cl&ocirc;tur&eacute;.</p>\r\n<p>Les services en charge vous indiquent que : ${comments!}</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; notre service num&eacute;rique de sollicitation</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(19,'notifygru-forms.ProviderService.@.4','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'AccusÃ© de rÃ©ception de votre demande d\'acte de mariage nÂ°${position_87!}','<p>Bonjour ${position_83!}&nbsp; ${position_84!},</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande d\'acte de mariage.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service d\'&eacute;tat civl a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>Pour rappel, l\'acte demand&eacute; concerne un mariage ayant eu lieu le&nbsp;${position_59!} &agrave;&nbsp;${position_58!}.&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(24,'notifygru-forms.ProviderService.@.4','workflow-notifygru.commentMarkerProvider;workflow-forms.resubmitFormResponseMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre demande d\'acte de mariage nÂ°${position_87!} nÃ©cessite votre attention','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s une premi&egrave;re instruction, il semblerait qu\'une erreur se soit gliss&eacute;e lors de la saisie de votre demande dans le champ&nbsp;:&nbsp;${comments!}</p>\r\n<p>Merci de bien vouloir apporter une correction sur <a href=\"${resubmit_form_url!}\">cette page</a> afin que nous puissions poursuivre l\'instruction.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(27,'notifygru-forms.ProviderService.@.4','workflow-notifygru.commentMarkerProvider;workflow-forms.completeFormResponseMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre demande d\'acte de mariage nÂ°${position_87!} nÃ©cessite votre attention','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s une premi&egrave;re instruction, il semblerait que nous n\'ayons pas les informations suffisantes pour y r&eacute;pondre. Pourriez-vous&nbsp;compl&eacute;ter vos saisie&nbsp;du champ&nbsp;:&nbsp;${comments!}</p>\r\n<p>Merci de bien vouloir apporter le compl&eacute;ment sur <a href=\"${complete_form_url!}\">cette page</a> afin que nous puissions poursuivre l\'instruction.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(29,'notifygru-forms.ProviderService.@.4','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Traitement de votre demande d\'acte de mariage nÂ°${position_87!}','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s instruction de votre demande, votre acte de mariage a &eacute;t&eacute; post&eacute; &agrave; l\'adresse&nbsp;${position_78!}. Votre demande&nbsp;a &eacute;t&eacute; donc &eacute;t&eacute; cl&ocirc;tur&eacute;e.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; notre service num&eacute;rique de sollicitation</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(31,'notifygru-forms.ProviderService.@.4','workflow-notifygru.commentMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Au sujet de votre demande d\'acte de mariage nÂ°${position_87!}','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s instruction de votre demande, nous ne pouvons donner suite &agrave; votre demande ${position_78!}. En effet : ${comments!}.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; notre service num&eacute;rique de sollicitation</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0);
/*!40000 ALTER TABLE `workflow_task_notify_gru_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_gru_history`
--

DROP TABLE IF EXISTS `workflow_task_notify_gru_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_gru_history` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `crm_status_id` int(11) DEFAULT 1,
  `message_guichet` text DEFAULT NULL,
  `status_text_guichet` varchar(255) DEFAULT NULL,
  `sender_name_guichet` varchar(255) DEFAULT NULL,
  `subject_guichet` varchar(255) DEFAULT NULL,
  `demand_max_step_guichet` smallint(6) DEFAULT 1,
  `demand_user_current_step_guichet` smallint(6) DEFAULT 1,
  `is_active_onglet_guichet` smallint(6) DEFAULT 0,
  `status_text_agent` varchar(255) DEFAULT NULL,
  `message_agent` text DEFAULT NULL,
  `is_active_onglet_agent` smallint(6) NOT NULL DEFAULT 0,
  `subject_email` varchar(255) DEFAULT NULL,
  `message_email` text DEFAULT NULL,
  `sender_name_email` varchar(255) DEFAULT NULL,
  `recipients_cc_email` varchar(255) DEFAULT NULL,
  `recipients_cci_email` varchar(255) DEFAULT NULL,
  `is_active_onglet_email` smallint(6) DEFAULT 0,
  `message_sms` text DEFAULT NULL,
  `billing_account_sms` varchar(255) DEFAULT NULL,
  `billing_group_sms` varchar(255) DEFAULT NULL,
  `is_active_onglet_sms` smallint(6) NOT NULL DEFAULT 0,
  `id_mailing_list_broadcast` int(11) DEFAULT NULL,
  `email_broadcast` varchar(255) DEFAULT NULL,
  `sender_name_broadcast` varchar(255) DEFAULT NULL,
  `subject_broadcast` varchar(255) DEFAULT NULL,
  `message_broadcast` text DEFAULT NULL,
  `recipients_cc_broadcast` varchar(255) DEFAULT NULL,
  `recipients_cci_broadcast` varchar(255) DEFAULT NULL,
  `is_active_onglet_broadcast` smallint(6) DEFAULT 0,
  `code_event` varchar(45) DEFAULT NULL,
  `type_event` varchar(45) DEFAULT NULL,
  `message_event` text DEFAULT NULL,
  `content_cleaned` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_history`
--

LOCK TABLES `workflow_task_notify_gru_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_history` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_gru_history` VALUES (17,6,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'AccusÃ© de rÃ©ception de votre sollicitation nÂ°1 sur le thÃ¨me Espace Public','<p>Bonjour&nbsp; Foo&nbsp; Bar,</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande &agrave; nos services.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service&nbsp;concern&eacute; a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>&nbsp;</p>\r\n<p>Pour rappel votre demande, point&eacute;e sur la th&eacute;matique \"Espace Public\" porte sur le message suivant :</p>\r\n<p>Bonjour,\r\nJ\'ai repÃ©rÃ© un nid-de-poule, avenue de la RÃ©publique de CiteLibre. Cela devient dangereux. Une intervention est-elle prÃ©vue prochainement?\r\nMerci</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','Mairie de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/serviceEZ/rest/api/token] : ',0),(21,9,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation nÂ°1 a Ã©tÃ© transfÃ©rÃ©e au service concernÃ©','<p>Bonjour&nbsp;Foo Bar,</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction votre dossier a &eacute;t&eacute; transf&eacute;r&eacute; au service&nbsp;petite enfance.</p>\r\n<p>Votre dossier est toujours en cours d\'instruction et vous obtiendrez une r&eacute;ponse par ce nouveau service.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/serviceEZ/rest/api/token] : ',0),(22,9,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation nÂ°1 a Ã©tÃ© transfÃ©rÃ©e au service concernÃ©','<p>Bonjour&nbsp;Foo Bar,</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction votre dossier a &eacute;t&eacute; transf&eacute;r&eacute; au service&nbsp;voirie.</p>\r\n<p>Votre dossier est toujours en cours d\'instruction et vous obtiendrez une r&eacute;ponse par ce nouveau service.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/serviceEZ/rest/api/token] : ',0),(23,14,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation nÂ°1 nÃ©cessite quelques prÃ©cisions','<p>Bonjour&nbsp;Foo Bar,</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction, il nous manque les pr&eacute;cisions suivantes pour pouvoir traiter votre demande&nbsp;n&deg;1 :&nbsp;A quel niveau de l\'avenue de la RÃ©publique l\'avez-vous constatÃ©, s\'il vous plait?</p>\r\n<p>Merci de bien vouloir apporter les compl&eacute;ments d\'informations accessibles sur <a href=\"http://localhost:8080/serviceEZ/jsp/site/Portal.jsp?page=workflow-complete-form&#38;id_history=23&#38;id_task=13&#38;signature=417ea3277747dceb9072f8ff891b20359a8dc81c&#38;timestamp=1710258459412&#38;url_return=http://localhost:8080/lutece\">cette page</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/serviceEZ/rest/api/token] : ',0),(25,14,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation nÂ°1 nÃ©cessite quelques prÃ©cisions','<p>Bonjour&nbsp;Foo Bar,</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction, il nous manque les pr&eacute;cisions suivantes pour pouvoir traiter votre demande&nbsp;n&deg;1 :&nbsp;Nous n\'avons rien constatÃ© au numÃ©ro 12, pourriez-vous Ãªtre plus prÃ©cis, svp?</p>\r\n<p>Merci de bien vouloir apporter les compl&eacute;ments d\'informations accessibles sur <a href=\"http://localhost:8080/serviceEZ/jsp/site/Portal.jsp?page=workflow-complete-form&#38;id_history=25&#38;id_task=13&#38;signature=f14a04a7e264db839fd3a98a05e7ea80c8b70a19&#38;timestamp=1710258822175&#38;url_return=http://localhost:8080/lutece\">cette page</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/serviceEZ/rest/api/token] : ',0),(27,14,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation nÂ°1 nÃ©cessite quelques prÃ©cisions','<p>Bonjour&nbsp;Foo Bar,</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction, il nous manque les pr&eacute;cisions suivantes pour pouvoir traiter votre demande&nbsp;n&deg;1 :&nbsp;Toujours pas... Un autre numÃ©ro peut-Ãªtre?</p>\r\n<p>Merci de bien vouloir apporter les compl&eacute;ments d\'informations accessibles sur <a href=\"http://localhost:8080/serviceEZ/jsp/site/Portal.jsp?page=workflow-complete-form&#38;id_history=27&#38;id_task=13&#38;signature=ce26ffee3d2b8184ae86d1876fd9d052295cae59&#38;timestamp=1710260335138&#38;url_return=http://localhost:8080/serviceEZ\">cette page</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/serviceEZ/rest/api/token] : ',0),(32,6,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'AccusÃ© de rÃ©ception de votre sollicitation nÂ°2 sur le thÃ¨me Espace Public','<p>Bonjour&nbsp; Sarah&nbsp; Connor,</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande &agrave; nos services.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service&nbsp;concern&eacute; a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>&nbsp;</p>\r\n<p>Pour rappel votre demande, point&eacute;e sur la th&eacute;matique \"Espace Public\" porte sur le message suivant :</p>\r\n<p>Bonjour,\r\nJe constate qu\'un abribus est endommagÃ©, rue de la RÃ©publique.\r\nPourriez-vous intervenir, s\'il vous plait ?\r\nMerci,\r\nSarah</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','Mairie de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPost on URL [http://localhost:8080/serviceEZ/rest/api/token] : ',0),(35,19,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'AccusÃ© de rÃ©ception de votre demande d\'acte de mariage nÂ°1','<p>Bonjour test&nbsp; test,</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande d\'acte de mariage.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service d\'&eacute;tat civl a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>Pour rappel, l\'acte demand&eacute; concerne un mariage ayant eu lieu le&nbsp;01/06/2024 &agrave;&nbsp;Terminone 20167 Peri.&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0);
/*!40000 ALTER TABLE `workflow_task_notify_gru_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_gru_mapping_manager`
--

DROP TABLE IF EXISTS `workflow_task_notify_gru_mapping_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_gru_mapping_manager` (
  `id_notifygrumappingmanager` int(11) NOT NULL,
  `beankey` varchar(255) NOT NULL DEFAULT '',
  `connection_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `mobilephonenumber` int(11) NOT NULL DEFAULT 0,
  `fixedphonenumber` int(11) NOT NULL DEFAULT 0,
  `email` int(11) NOT NULL DEFAULT 0,
  `demandetype` int(11) NOT NULL DEFAULT 0,
  `demand_reference` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_notifygrumappingmanager`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_mapping_manager`
--

LOCK TABLES `workflow_task_notify_gru_mapping_manager` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_mapping_manager` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_gru_mapping_manager` VALUES (1,'notifygru-forms.ProviderService.@.1',-1,-1,4,-1,3,0,43),(2,'notifygru-forms.ProviderService.@.4',-1,-1,-1,-1,82,1,87);
/*!40000 ALTER TABLE `workflow_task_notify_gru_mapping_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_resubmit_response`
--

DROP TABLE IF EXISTS `workflow_task_resubmit_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_resubmit_response` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `message` mediumtext DEFAULT NULL,
  `is_complete` smallint(6) NOT NULL DEFAULT 0,
  `date_completed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_resubmit_response`
--

LOCK TABLES `workflow_task_resubmit_response` WRITE;
/*!40000 ALTER TABLE `workflow_task_resubmit_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_resubmit_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_resubmit_response_cf`
--

DROP TABLE IF EXISTS `workflow_task_resubmit_response_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_resubmit_response_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_state_after_edition` int(11) NOT NULL DEFAULT 0,
  `default_message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_resubmit_response_cf`
--

LOCK TABLES `workflow_task_resubmit_response_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_resubmit_response_cf` VALUES (22,7,'');
/*!40000 ALTER TABLE `workflow_task_resubmit_response_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_resubmit_response_history`
--

DROP TABLE IF EXISTS `workflow_task_resubmit_response_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_resubmit_response_history` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_task` int(11) NOT NULL DEFAULT 0,
  `id_question` int(11) NOT NULL DEFAULT 0,
  `iteration_number` int(11) NOT NULL DEFAULT 0,
  `previous_value` mediumtext DEFAULT NULL,
  `new_value` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_history`,`id_task`,`id_question`,`iteration_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_resubmit_response_history`
--

LOCK TABLES `workflow_task_resubmit_response_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_resubmit_response_value`
--

DROP TABLE IF EXISTS `workflow_task_resubmit_response_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_resubmit_response_value` (
  `id_history` int(11) NOT NULL DEFAULT 0,
  `id_entry` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_history`,`id_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_resubmit_response_value`
--

LOCK TABLES `workflow_task_resubmit_response_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_unittree_information`
--

DROP TABLE IF EXISTS `workflow_task_unittree_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_unittree_information` (
  `id_history` int(11) NOT NULL,
  `id_task` int(11) NOT NULL,
  `information_key` varchar(255) NOT NULL,
  `information_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_information`
--

LOCK TABLES `workflow_task_unittree_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_information` DISABLE KEYS */;
INSERT INTO `workflow_task_unittree_information` VALUES (3,1,'ASSIGNED_UNIT','Voirie'),(19,10,'ASSIGNED_UNIT','Espace Public'),(19,10,'ASSIGNOR_UNIT','Voirie'),(20,11,'ASSIGNED_UNIT','Voirie'),(20,11,'ASSIGNOR_UNIT','Espace Public'),(21,7,'ASSIGNED_UNIT','Petite Enfance'),(21,7,'ASSIGNOR_UNIT','Voirie'),(22,7,'ASSIGNED_UNIT','Voirie'),(22,7,'ASSIGNOR_UNIT','Petite Enfance'),(29,20,'ASSIGNED_UNIT','Etat Civil'),(31,1,'ASSIGNED_UNIT','Voirie'),(35,20,'ASSIGNED_UNIT','Etat Civil');
/*!40000 ALTER TABLE `workflow_task_unittree_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_unittree_unit_assignment_cf`
--

DROP TABLE IF EXISTS `workflow_task_unittree_unit_assignment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_unittree_unit_assignment_cf` (
  `id_task` int(11) NOT NULL,
  `assignment_type` varchar(50) DEFAULT NULL,
  `unit_selections` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_unit_assignment_cf`
--

LOCK TABLES `workflow_task_unittree_unit_assignment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_unit_assignment_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_unittree_unit_assignment_cf` VALUES (1,'create','ParametrableUnitSelection'),(7,'transfer','UnitSelectionFromAll'),(10,'assign_up','UnitSelectionParent'),(11,'transfer','UnitSelectionAssignor'),(20,'create','UnitSelectionSpecificUnit');
/*!40000 ALTER TABLE `workflow_task_unittree_unit_assignment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_unittree_unit_selection_parametrable_cf`
--

DROP TABLE IF EXISTS `workflow_task_unittree_unit_selection_parametrable_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_unittree_unit_selection_parametrable_cf` (
  `id_task` int(11) NOT NULL,
  `parametrable_config_handler` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_unit_selection_parametrable_cf`
--

LOCK TABLES `workflow_task_unittree_unit_selection_parametrable_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_unit_selection_parametrable_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_unittree_unit_selection_parametrable_cf` VALUES (1,'forms-unittree.formsParametrableConfigurationHandler');
/*!40000 ALTER TABLE `workflow_task_unittree_unit_selection_parametrable_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_unittree_unit_selection_specific_unit_cf`
--

DROP TABLE IF EXISTS `workflow_task_unittree_unit_selection_specific_unit_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_unittree_unit_selection_specific_unit_cf` (
  `id_task` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_unit_selection_specific_unit_cf`
--

LOCK TABLES `workflow_task_unittree_unit_selection_specific_unit_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_unit_selection_specific_unit_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_unittree_unit_selection_specific_unit_cf` VALUES (20,2);
/*!40000 ALTER TABLE `workflow_task_unittree_unit_selection_specific_unit_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_update_status`
--

DROP TABLE IF EXISTS `workflow_task_update_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_update_status` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_update_status`
--

LOCK TABLES `workflow_task_update_status` WRITE;
/*!40000 ALTER TABLE `workflow_task_update_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_update_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_userassignment_assignment_notification_cf`
--

DROP TABLE IF EXISTS `workflow_task_userassignment_assignment_notification_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_userassignment_assignment_notification_cf` (
  `id_task` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `recipients_cc` mediumtext DEFAULT NULL,
  `recipients_bcc` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_userassignment_assignment_notification_cf`
--

LOCK TABLES `workflow_task_userassignment_assignment_notification_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_userassignment_assignment_notification_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_userassignment_assignment_notification_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_workflow`
--

DROP TABLE IF EXISTS `workflow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_workflow` (
  `id_workflow` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enabled` smallint(6) DEFAULT 0,
  `workgroup_key` varchar(255) DEFAULT NULL,
  `uid_workflow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_workflow`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_workflow`
--

LOCK TABLES `workflow_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_workflow` DISABLE KEYS */;
INSERT INTO `workflow_workflow` VALUES (1,'Contacter ma mairie','Workflow de distribution des demandes au sein des services compÃ©tents','2024-03-05 16:38:00',1,'all','9fb11dcf-1d0d-11ef-8590-0242ac180003'),(2,'Demande d\'acte de mariage','Workflow de suivi des demandes d\'actes permettant de notifier les demandeurs Ã  chaque Ã©tape, de demander des complÃ©ments et corrections, et de l\'instruction','2024-03-14 16:29:11',1,'all','9fb127db-1d0d-11ef-8590-0242ac180003');
/*!40000 ALTER TABLE `workflow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_workgroup_cf`
--

DROP TABLE IF EXISTS `workflow_workgroup_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_workgroup_cf` (
  `id_task` int(11) NOT NULL DEFAULT 0,
  `workgroup_key` varchar(255) NOT NULL,
  `id_mailing_list` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`,`workgroup_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_workgroup_cf`
--

LOCK TABLES `workflow_workgroup_cf` WRITE;
/*!40000 ALTER TABLE `workflow_workgroup_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_workgroup_cf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-07 16:29:59
