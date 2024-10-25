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
INSERT INTO `core_admin_role` VALUES ('all_site_manager','Site Manager'),('assign_groups','Assigner des groupes aux utilisateurs'),('assign_roles','Assigner des roles aux utilisateurs'),('CREATE_REFERENCE_IMPORT','Import csv file'),('forms_manager','FORMS - Gestion des formulaires'),('forms_multiview','FORMS - Visualisation des résultats des formulaires'),('forms_multiview_unitree','Vue des réponses de son entité'),('kibana_dashboards_manager','Gestion des tableaux de bords Kibana'),('mylutece_manager','Gérer les patramètres avancés Mylutece'),('profiles_manager','Profiles management'),('profiles_views_manager','Profiles Views management'),('sollicitation_administrateur','[Sollicitation] Organisation de la prise de contact'),('sollicitation_gestionnaires','[Sollicitation] - Gestionnaires des sollicitations'),('sollicitation_instructeurs','[Sollicitation] - Visualisation et traitement des réponses'),('super_admin','Super Administrateur'),('unittree_management','Gestion des entités'),('workflow_manager','Workflow management');
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
) ENGINE=MyISAM AUTO_INCREMENT=1937 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role_resource`
--

LOCK TABLES `core_admin_role_resource` WRITE;
/*!40000 ALTER TABLE `core_admin_role_resource` DISABLE KEYS */;
INSERT INTO `core_admin_role_resource` VALUES (1,'all_site_manager','PAGE','*','VIEW'),(2,'all_site_manager','PAGE','*','MANAGE'),(3,'super_admin','INSERT_SERVICE','*','*'),(4,'all_site_manager','PORTLET_TYPE','*','*'),(5,'all_site_manager','ADMIN_USER','*','*'),(6,'all_site_manager','SEARCH_SERVICE','*','*'),(7,'all_site_manager','XSL_EXPORT','*','*'),(1907,'forms_manager','FORMS_FORM','*','*'),(1908,'forms_multiview','FORM_PANEL_CONF','*','*'),(1935,'forms_manager','GLOBAL_FORMS_ACTION','multiviewconfig','*'),(1910,'kibana_dashboards_manager','kibana_dashboard','*','*'),(205,'assign_roles','ROLE_TYPE','*','ASSIGN_ROLE'),(207,'mylutece_manager','MYLUTECE','*','*'),(150,'profiles_manager','PROFILES','*','*'),(151,'profiles_views_manager','PROFILES_VIEWS','*','*'),(165,'CREATE_REFERENCE_IMPORT','REFERENCE_IMPORT','*','*'),(210,'unittree_management','UNIT_TYPE','*','*'),(912,'workflow_manager','WORKFLOW_ACTION_TYPE','*','*'),(923,'workflow_manager','WORKFLOW_STATE_TYPE','*','*'),(1911,'sollicitation_instructeurs','FORMS_FORM','1','VIEW_FORM_RESPONSE'),(1912,'sollicitation_instructeurs','FORM_PANEL_CONF','forms-unittree','*'),(1913,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','5','*'),(1914,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','6','*'),(1915,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','4','*'),(1916,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','10','*'),(1917,'sollicitation_instructeurs','WORKFLOW_ACTION_TYPE','3','*'),(1918,'sollicitation_instructeurs','WORKFLOW_STATE_TYPE','1','*'),(1919,'sollicitation_instructeurs','WORKFLOW_STATE_TYPE','2','*'),(1920,'sollicitation_instructeurs','WORKFLOW_STATE_TYPE','4','*'),(1921,'sollicitation_gestionnaires','FORMS_FORM','1','MODIFY'),(1922,'sollicitation_gestionnaires','FORMS_FORM','1','PARAM'),(1923,'sollicitation_gestionnaires','FORMS_FORM','1','PUBLISH'),(1924,'sollicitation_gestionnaires','FORM_PANEL_CONF','forms-unittree-subunit','*'),(1925,'sollicitation_gestionnaires','WORKFLOW_ACTION_TYPE','2','*'),(1926,'sollicitation_gestionnaires','WORKFLOW_STATE_TYPE','3','*'),(1927,'sollicitation_administrateur','FORMS_FORM','1','DELETE'),(1928,'sollicitation_administrateur','FORMS_FORM','1','CREATE'),(1929,'sollicitation_administrateur','GLOBAL_FORMS_ACTION','multiviewconfig','*'),(1930,'sollicitation_administrateur','GLOBAL_FORMS_ACTION','multiviewExport','*'),(1931,'sollicitation_instructeurs','WORKFLOW_STATE_TYPE','3','*'),(1932,'forms_multiview_unitree','FORM_PANEL_CONF','forms-userassignment','*'),(1933,'forms_multiview_unitree','FORM_PANEL_CONF','forms-unittree-subunit','*'),(1934,'forms_multiview_unitree','FORM_PANEL_CONF','forms-unittree','*'),(1936,'forms_manager','GLOBAL_FORMS_ACTION','multiviewExport','*');
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user`
--

LOCK TABLES `core_admin_user` WRITE;
/*!40000 ALTER TABLE `core_admin_user` DISABLE KEYS */;
INSERT INTO `core_admin_user` VALUES (1,'admin','Admin','admin','admin@lutece.fr',0,'PLAINTEXT:adminadmin','fr',0,0,0,'1980-01-01 00:00:00',NULL,0,'1980-01-01 00:00:00','all'),(9,'dirgen','Générale','Direction','direction.generale@citelibre.org',0,'PBKDF2WITHHMACSHA512:40000:d9e2fd3436a8df3aba19239ee5b414ea:cc884675e46526c7b50757ecfe34a3f2f4813035468ff85ecf8bce466a2161b6e838cb6afd8300eaf6a98216ec36a715149fb8f3126ef3ca7a13f9ddb570345489795fd8defbd77610cf06a75411793dd123108aab56de76ae34a9a008b34617980c74bec00cd67318cfb45dbafb453f8adc7a5f220866071703fce32da561f7','fr',1,1,0,NULL,1757586052641,0,NULL,'all'),(10,'resscolaire','AffairesScolaires','Responsable','res.scolaire@citelibre.org',0,'PBKDF2WITHHMACSHA512:40000:86b8188e6d37fd38b22d15c725fdc873:811e14cc3cb6420ed8ebd569cf9e8a3434bc4d9ecb7f8dbe3c1c151a32b8581b75d3e4ad2ac8fb6fe260d09884efc45bf6bd75b3bdcf684c776e9eaca22cf8ebbfcf2f3c07ee74a48705ed8b5c5e48834291b05d8f5bc272eded98f827db5db8d4c7a326ca443688153754af841e009cc969cac37a7d07bbb589ada598c343a0','fr',2,1,0,NULL,1757586110636,0,NULL,'all'),(11,'centreloisirs','Centre de loisirs','Agent','centre.loisirs@citelibre.org',0,'PBKDF2WITHHMACSHA512:40000:a14df94c4971c59a870aee0d69c9ec62:09923a547fb5efec082d629150e9e8e6af6c70c54139ae9726a305f570f5d0b06ed09816b3cfab60d4112ce25e8099867872d87e2fcddc72fd266a399b11aa817f3146c27019a0829692c83940f943c9e1180364930b1d71de098a1ad45e28d2e2fbe0a268e9ad9fea00cc29df8a149f9ec59415c313cbe8db260fddc4fe994c','fr',2,1,0,NULL,1757586150127,0,NULL,'all'),(12,'ecoles','Ecoles','Agent','agent.ecoles@citelibre.org',0,'PBKDF2WITHHMACSHA512:40000:923f0dc2316996c30d5400c81b79fa18:80c3565d80192040b37aab9a2e31f1ff748b5ed9d376b5025470eb493277b694da81d4e009748999781a346854f3c49e99b5d31caba8c591ef88cba07a68ca8ce0b1b772c185fbe854ab4098db7a52515ba6d028afd603c8c74b505092e8e8e34d845372136b9fdcc183be08a3e01e92dfe52a16d09261c7e336126d06852a74','fr',3,1,0,NULL,1757586182704,0,NULL,'all'),(13,'petiteenfance','Petite enfance','Agent','petite.enfance@citelibre.org',0,'PBKDF2WITHHMACSHA512:40000:befd5db9f117ff946c78f4ad6ba6ec03:9205ed10173d92571d45a96b968f4bb034790e188d7b51c9151ea521d664775d19c5e9913afc89b6b9657356fa0b7b79de05a9c6e5734d32ac360c6fc69aa77a6f6156dc528ef8f5448ebce3a6c30895315f346eb94fc48452e0a386426c2b7de86ca76b4605be06e662ed377d98a8fd23f6dca156b16741d0e2a4ac5fef6af3','fr',3,1,0,NULL,1757586220595,0,NULL,'all'),(14,'espacepublic','EspacePublic','Responsable','espace.public@citelibre.org',0,'PBKDF2WITHHMACSHA512:40000:e86edf89fed1f53850487fd98b2201f9:6915db80662dd091adf7d4fe5fedfa8340dc45f46770a287bf0e265a51cc3bd3c989ff3021f3c93472735277f7658eab9cd9d113329d1eff798af395aef3e7d21ac09f5938b93f4149c6b88a8222746a8f29e92a0dc38ef74a92c2a91cd21736031f8f221a6847fe609ee84bff0a09e4ad42de781c70ffa146717ebce12ab0d4','fr',3,1,0,NULL,1757586259276,0,NULL,'all'),(15,'espacesverts','Espaces verts','Agent','espaces.verts@citelibre.org',0,'PBKDF2WITHHMACSHA512:40000:6a9bdd7c0207c734ca2f3e4d766c23a4:5b7b0b5dbd64eca98354e710bd478baf2eeaf3f3fa462f24fb2dd79d222b9f52196ef458a9ca065c1ef238735729ee361e4b9144de923e68ddbed1dfb1a8b6aa7b7efdaa382be545eafced0f4e36a313f7fc8c229c7abc889af48d562bfde93017676fced500f8f65482cb9966bfd9c246a97d412b9bf4e21124d4125f6c5ed4','fr',3,1,0,NULL,1757586292330,0,NULL,'all'),(16,'Voirie','Agent voirie','Agent','agent.voirie@citelibre.org',0,'PBKDF2WITHHMACSHA512:40000:9599d40e813fd4436af27beb7edf32d5:9a95312a9e87404cefd3fdab9329c73f610f98a127a774d9a35f55bcbbe350482743245f9d3c105c2b5449560071c73ff10fb3cef9cecf3b021564925f9752f189765e20df5d21c704b77bc12debaa2096e1cfc13ba25a50d7cce5a7513a8a42209210ba1ba8e3c6ab251df103968b6cb75be5e975c3bdb1c833da9576d95e93','fr',3,0,0,NULL,1757592908068,0,'2024-09-11 12:15:08','all'),(17,'etatcivil','EtatCivil','Responsable','responsable.etatcivil@citelibre.org',0,'PBKDF2WITHHMACSHA512:40000:4615adf2f1f69ef9cb958a2a5ebafca0:0cb83490a9d300b948d2e5e55d678ebbd5599d38598fe148986255dd24c66fc60e713b838eb3c4bb9bebc1bb919b6c4d9d8d3371022efbe03d5a2167cac365202a2cff508d1900e6a76667d91b44d6f735a6b97374ce502650a5f595a59e80952bb934e3b4b58213b7722d78f1df063d686ec759a0d324dbc2322d6f524efb4d','fr',2,1,0,NULL,1757586399339,0,NULL,'all'),(18,'respologement','LogementHabitat','Responsable','responsable.logement@citelibre.org',0,'PBKDF2WITHHMACSHA512:40000:962b741005aa3afbe3511a50efad2c53:3c5441e213c89f38f96d72fb6040e899a8df938f3d55ef75f5cfd71e0861e26c5e199b81ad38c32f218535b516c1c10abefa5c0cddce77b1aa4fa05cd2c6794d2a9224d0885f1e3ff5373d5671ae3b5d96807e0dd420bcbc5fbd4203b1be112bd402b55f7bbde050da95f514eff9b582986e5c61ca43ea9d4e697fbfdd366cac','fr',2,1,0,NULL,1757586444988,0,NULL,'all');
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
INSERT INTO `core_connections_log` VALUES ('admin','172.22.0.1','2024-03-08 13:48:10',0),('admin','172.22.0.1','2024-03-08 13:48:15',0),('admin','172.22.0.1','2024-03-12 13:57:24',0),('admin','172.18.0.1','2024-09-11 11:54:16',0),('admin','172.18.0.1','2024-09-11 11:54:21',0),('admin','172.18.0.1','2024-09-11 11:54:26',0);
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
INSERT INTO `core_datastore` VALUES ('adminavatar.site_property.avatarserver.Url',''),('captcha.defaultProvider','JCaptcha'),('core_banned_domain_names','yopmail.com'),('core.advanced_parameters.access_failures_captcha','1'),('core.advanced_parameters.access_failures_interval','10'),('core.advanced_parameters.access_failures_max','3'),('core.advanced_parameters.account_life_time','12'),('core.advanced_parameters.account_reactivated_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.account_reactivated_mail_subject','Votre compte a bien été réactivé'),('core.advanced_parameters.default_user_language','fr'),('core.advanced_parameters.default_user_level','0'),('core.advanced_parameters.default_user_notification','1'),('core.advanced_parameters.default_user_status','0'),('core.advanced_parameters.email_pattern','^[\\w_.\\-!\\#\\$\\%\\&\'\\*\\+\\/\\=\\?\\^\\\\}\\{\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$'),('core.advanced_parameters.email_pattern_verify_by',''),('core.advanced_parameters.expired_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.expired_alert_mail_subject','Votre compte a expiré'),('core.advanced_parameters.first_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.first_alert_mail_subject','Votre compte va bientôt expirer'),('core.advanced_parameters.force_change_password_reinit','true'),('core.advanced_parameters.lock_reset_token_to_session',''),('core.advanced_parameters.maximum_number_password_change',''),('core.advanced_parameters.nb_alert_account','2'),('core.advanced_parameters.notify_user_password_expired',''),('core.advanced_parameters.other_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.other_alert_mail_subject','Votre compte va bientôt expirer'),('core.advanced_parameters.password_duration',''),('core.advanced_parameters.password_expired_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.password_expired_mail_subject','Votre mot de passe a expiré'),('core.advanced_parameters.password_format_numero',''),('core.advanced_parameters.password_format_special_characters',''),('core.advanced_parameters.password_format_upper_lower_case',''),('core.advanced_parameters.password_history_size',''),('core.advanced_parameters.password_minimum_length','8'),('core.advanced_parameters.reset_token_validity','60'),('core.advanced_parameters.time_before_alert_account','30'),('core.advanced_parameters.time_between_alerts_account','10'),('core.advanced_parameters.tsw_size_password_change',''),('core.advanced_parameters.use_advanced_security_parameters',''),('core.backOffice.defaultEditor','tinymce'),('core.cache.status.AccessRulesCacheService.enabled','1'),('core.cache.status.asynchronousupload.asynchronousUploadCacheService.enabled','0'),('core.cache.status.BaseUserPreferencesCacheService.enabled','1'),('core.cache.status.BaseUserPreferencesCacheService.maxElementsInMemory','1000'),('core.cache.status.DatastoreCacheService.enabled','0'),('core.cache.status.EntryTypeServiceManagerCache.enabled','1'),('core.cache.status.formsCacheService.enabled','1'),('core.cache.status.formsCacheService.overflowToDisk','0'),('core.cache.status.formsCacheService.timeToIdleSeconds','86400'),('core.cache.status.formsCacheService.timeToLiveSeconds','86400'),('core.cache.status.LinksIncludeCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.enabled','1'),('core.cache.status.LuteceUserCacheService.maxElementsInMemory','1000'),('core.cache.status.MailAttachmentCacheService.diskPersistent','true'),('core.cache.status.MailAttachmentCacheService.enabled','1'),('core.cache.status.MailAttachmentCacheService.maxElementsInMemory','10'),('core.cache.status.MailAttachmentCacheService.overflowToDisk','true'),('core.cache.status.MailAttachmentCacheService.timeToLiveSeconds','7200'),('core.cache.status.MyPortalWidgetContentService.enabled','1'),('core.cache.status.MyPortalWidgetService.enabled','1'),('core.cache.status.PageCacheService.enabled','1'),('core.cache.status.PageCachingFilter.enabled','0'),('core.cache.status.PageCachingFilter(CAUTION:NEVERUSEWITHUSERDYNAMICDATA).enabled','0'),('core.cache.status.pathCacheService.enabled','1'),('core.cache.status.PortalMenuService.enabled','1'),('core.cache.status.PortletCacheService.enabled','0'),('core.cache.status.public_image_resource.enabled','0'),('core.cache.status.SEOFriendlyUrlCacheService.enabled','0'),('core.cache.status.SiteMapService.enabled','1'),('core.cache.status.StaticFilesCachingFilter.enabled','1'),('core.cache.status.StaticFilesCachingFilter.timeToLiveSeconds','604800'),('core.cache.status.workflow.alertGruConfigCacheService.enabled','0'),('core.cache.status.workflow.notifyGruConfigCacheService.enabled','0'),('core.crypto.key','0be4ef16cbc6a541c08c7d68caf113685e4950b4cfbca94e71813c71a1fc0bf7'),('core.daemon.accountLifeTimeDaemon.interval','86400'),('core.daemon.accountLifeTimeDaemon.onStartUp','true'),('core.daemon.alert.interval','43200'),('core.daemon.alert.onStartUp','true'),('core.daemon.alertCleaner.interval','43200'),('core.daemon.alertCleaner.onStartUp','true'),('core.daemon.AlertGruDaemon.interval','86400'),('core.daemon.AlertGruDaemon.onStartUp','true'),('core.daemon.anonymizationDaemon.interval','86400'),('core.daemon.anonymizationDaemon.onStartUp','false'),('core.daemon.archiveDaemon.interval','86400'),('core.daemon.archiveDaemon.onStartUp','true'),('core.daemon.archiveIndexer.interval','360'),('core.daemon.archiveIndexer.onStartUp','true'),('core.daemon.automaticActionDaemon.interval','30'),('core.daemon.automaticActionDaemon.onStartUp','true'),('core.daemon.changeStateDaemon.interval','10'),('core.daemon.changeStateDaemon.onStartUp','false'),('core.daemon.chooseStateActionDaemon.interval','10'),('core.daemon.chooseStateActionDaemon.onStartUp','false'),('core.daemon.crmClientSender.interval','60'),('core.daemon.crmClientSender.onStartUp','true'),('core.daemon.fullIndexingDaemon.interval','86400'),('core.daemon.fullIndexingDaemon.onStartUp','true'),('core.daemon.incrementalIndexingDaemon.interval','3000'),('core.daemon.incrementalIndexingDaemon.onStartUp','true'),('core.daemon.indexer.interval','300'),('core.daemon.indexer.onStartUp','true'),('core.daemon.mailSender.interval','86400'),('core.daemon.mailSender.onStartUp','true'),('core.daemon.notifyHistoryCleanerDaemon.interval','10'),('core.daemon.notifyHistoryCleanerDaemon.onStartUp','false'),('core.daemon.seoFriendlyUrlGenerator.interval','3600'),('core.daemon.seoFriendlyUrlGenerator.onStartUp','true'),('core.daemon.seoSitemapGenerator.interval','3600'),('core.daemon.seoSitemapGenerator.onStartUp','true'),('core.daemon.solrindexer.interval','86400'),('core.daemon.solrindexer.onStartUp','true'),('core.daemon.temporaryfilesDaemon.interval','86400'),('core.daemon.temporaryfilesDaemon.onStartUp','false'),('core.daemon.threadLauncherDaemon.interval','86400'),('core.daemon.threadLauncherDaemon.onStartUp','true'),('core.daemon.userControllerCodeDataDaemon.interval','10'),('core.daemon.userControllerCodeDataDaemon.onStartUp','false'),('core.frontOffice.defaultEditor','sceeditor'),('core.plugins.status.accesscontrol-forms.installed','true'),('core.plugins.status.accesscontrol-forms.pool','portal'),('core.plugins.status.accesscontrol.installed','true'),('core.plugins.status.accesscontrol.pool','portal'),('core.plugins.status.address-autocomplete.installed','true'),('core.plugins.status.address.installed','true'),('core.plugins.status.adminavatar.installed','true'),('core.plugins.status.archive-client.installed','true'),('core.plugins.status.archive.installed','true'),('core.plugins.status.archive.pool','portal'),('core.plugins.status.asynchronous-upload.installed','true'),('core.plugins.status.asynchronous-upload.pool','portal'),('core.plugins.status.automaticroleprovider.installed','true'),('core.plugins.status.avatar.installed','true'),('core.plugins.status.blobstore.installed','true'),('core.plugins.status.blobstore.pool','portal'),('core.plugins.status.blobstoreclient.installed','true'),('core.plugins.status.captcha.installed','true'),('core.plugins.status.contact.installed','true'),('core.plugins.status.contact.pool','portal'),('core.plugins.status.filegenerator.installed','true'),('core.plugins.status.filegenerator.pool','portal'),('core.plugins.status.forms-breadcrumbaccordion.installed','true'),('core.plugins.status.forms-breadcrumbaccordion.pool','portal'),('core.plugins.status.forms-documentproducer.installed','true'),('core.plugins.status.forms-documentproducer.pool','portal'),('core.plugins.status.forms-multiviewmapleaflet.installed','true'),('core.plugins.status.forms-solr.installed','true'),('core.plugins.status.forms-template.installed','true'),('core.plugins.status.forms-template.pool','portal'),('core.plugins.status.forms-unittree.installed','true'),('core.plugins.status.forms-unittree.pool','portal'),('core.plugins.status.forms-userassignment.installed','true'),('core.plugins.status.forms-userassignment.pool','portal'),('core.plugins.status.forms.installed','true'),('core.plugins.status.forms.pool','portal'),('core.plugins.status.genericattributes-address.installed','true'),('core.plugins.status.genericattributes-openstreetmap.installed','true'),('core.plugins.status.genericattributes.installed','true'),('core.plugins.status.genericattributes.pool','portal'),('core.plugins.status.grusupply.installed','true'),('core.plugins.status.grusupply.pool','portal'),('core.plugins.status.html.installed','true'),('core.plugins.status.htmlpage.installed','true'),('core.plugins.status.htmlpage.pool','portal'),('core.plugins.status.htmltopdf.installed','true'),('core.plugins.status.jcaptcha.installed','true'),('core.plugins.status.leaflet.installed','true'),('core.plugins.status.limitconnectedusers.installed','true'),('core.plugins.status.matomo.installed','true'),('core.plugins.status.mermaidjs.installed','true'),('core.plugins.status.mermaidjs.pool','portal'),('core.plugins.status.modulenotifygrumappingmanager.installed','true'),('core.plugins.status.modulenotifygrumappingmanager.pool','portal'),('core.plugins.status.mylutece-cacheuserattribute.installed','true'),('core.plugins.status.mylutece-cacheuserattribute.pool','portal'),('core.plugins.status.mylutece-oauth2.installed','true'),('core.plugins.status.mylutece.installed','true'),('core.plugins.status.mylutece.pool','portal'),('core.plugins.status.myluteceaccessrules.installed','true'),('core.plugins.status.myluteceaccessrules.pool','portal'),('core.plugins.status.notifygru-forms.installed','true'),('core.plugins.status.notifygru-forms.pool','portal'),('core.plugins.status.oauth2.installed','true'),('core.plugins.status.poll.installed','true'),('core.plugins.status.poll.pool','portal'),('core.plugins.status.profiles.installed','true'),('core.plugins.status.profiles.pool','portal'),('core.plugins.status.referencelist.installed','true'),('core.plugins.status.referencelist.pool','portal'),('core.plugins.status.regularexpression.installed','true'),('core.plugins.status.regularexpression.pool','portal'),('core.plugins.status.rest.installed','true'),('core.plugins.status.seo.installed','true'),('core.plugins.status.seo.pool','portal'),('core.plugins.status.solr.installed','true'),('core.plugins.status.solr.pool','portal'),('core.plugins.status.systeminfo.installed','true'),('core.plugins.status.termofservice.installed','true'),('core.plugins.status.termofservice.pool','portal'),('core.plugins.status.themecitelibre.installed','true'),('core.plugins.status.unittree.installed','true'),('core.plugins.status.unittree.pool','portal'),('core.plugins.status.unittreeuserassignment.installed','true'),('core.plugins.status.unittreeuserassignment.pool','portal'),('core.plugins.status.userassignment.installed','true'),('core.plugins.status.userassignment.pool','portal'),('core.plugins.status.verifybackurl.installed','true'),('core.plugins.status.verifybackurl.pool','portal'),('core.plugins.status.workflow-alertforms.installed','true'),('core.plugins.status.workflow-alertforms.pool','portal'),('core.plugins.status.workflow-alertgru.installed','true'),('core.plugins.status.workflow-alertgru.pool','portal'),('core.plugins.status.workflow-forms.installed','true'),('core.plugins.status.workflow-forms.pool','portal'),('core.plugins.status.workflow-formsautomaticassignment.installed','true'),('core.plugins.status.workflow-formsautomaticassignment.pool','portal'),('core.plugins.status.workflow-formspdf.installed','true'),('core.plugins.status.workflow-formspdf.pool','portal'),('core.plugins.status.workflow-notifygru.installed','true'),('core.plugins.status.workflow-notifygru.pool','portal'),('core.plugins.status.workflow-rest.installed','true'),('core.plugins.status.workflow-unittree.installed','true'),('core.plugins.status.workflow-unittree.pool','portal'),('core.plugins.status.workflow-userassignment.installed','true'),('core.plugins.status.workflow-userassignment.pool','portal'),('core.plugins.status.workflow.installed','true'),('core.plugins.status.workflow.pool','portal'),('core.startup.time','Sep 11, 2024, 11:27:27 AM'),('core.templates.currentCommonsInclude','Bootstrap5Tabler'),('forms.display.form.columnTitle','true'),('forms.display.form.csv.separator',';'),('leaflet.icon.icons.default.installed','true'),('leaflet.icon.icons.green.installed','true'),('leaflet.icon.icons.red.installed','true'),('leaflet.icon.icons.yellow.installed','true'),('limitconnectedusers.site_property.limit_message.textblock','<div class=\'alert alert-danger\'>Le nombre maximal d\'utilisateur connecté simultanément a été atteint</div>'),('limitconnectedusers.site_property.limit_notification_mailing_list.textblock',''),('limitconnectedusers.site_property.limit_notification_message.textblock','Le nombre maximal d\'utilisateur connecté simultanément a été atteint'),('limitconnectedusers.site_property.limit_notification_sender_name','LUTECE'),('limitconnectedusers.site_property.limit_notification_subject.textblock','Le nombre maximal d\'utilisateur connecté simultanément a été atteint'),('matomo.site_property.server.http.url','http://localhost/'),('matomo.site_property.server.https.url','http://localhost/'),('matomo.site_property.site.id','1'),('matomo.site_property.widget.auth.token','cfa9a798abd584817e2eb94d7bc14bb0'),('mylutece.security.public_url.mylutece.url.createAccount.page','jsp/site/Portal.jsp?page=mylutece&action=createAccount'),('mylutece.security.public_url.mylutece.url.doActionsAll','jsp/site/plugins/mylutece/Do*'),('mylutece.security.public_url.mylutece.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),('mylutece.security.public_url.mylutece.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),('mylutece.security.public_url.mylutece.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login'),('mylutece.security.public_url.mylutece.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),('mylutece.security.public_url.mylutece.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutece&action=lostPassword'),('mylutece.security.public_url.mylutece.url.modifyAccount.page','jsp/site/Portal.jsp?page=mylutece&action=modifyAccount'),('myluteceaccessrules.site_property.application_code',''),('portal.site.site_property.admin_home_url','jsp/admin/plugins/forms/MultiviewForms.jsp?plugin_name=forms'),('portal.site.site_property.avatar_default','themes/admin/shared/images/unknown.svg'),('portal.site.site_property.back_images','themes/admin/tabler/images/bg_login1.svg, themes/admin/tabler/images/bg_login2.svg'),('portal.site.site_property.bo.showXs.checkbox','1'),('portal.site.site_property.bo.showXsWarning.checkbox','0'),('portal.site.site_property.email','<webmaster email>'),('portal.site.site_property.home_url','jsp/site/Portal.jsp'),('portal.site.site_property.layout.darkmode.checkbox','0'),('portal.site.site_property.layout.menu.checkbox','0'),('portal.site.site_property.layout.readmode.checkbox','0'),('portal.site.site_property.layout.user.darkmode.show.checkbox','1'),('portal.site.site_property.layout.user.menumode.show.checkbox','1'),('portal.site.site_property.layout.user.readmode.show.checkbox','0'),('portal.site.site_property.locale.default','fr'),('portal.site.site_property.login.image',''),('portal.site.site_property.logo_url','themes/admin/shared/images/logo-header-icon.svg'),('portal.site.site_property.meta.author','<author>'),('portal.site.site_property.meta.copyright','<copyright>'),('portal.site.site_property.meta.description','<description>'),('portal.site.site_property.meta.keywords','<keywords>'),('portal.site.site_property.name','CiteLibre ServiceEZ'),('portal.site.site_property.noreply_email','no-reply@citelibre.org'),('portal.site.site_property.popup_credits.textblock','&lt;credits text&gt;'),('portal.site.site_property.popup_legal_info.copyright.textblock','&lt;copyright text&gt;'),('portal.site.site_property.popup_legal_info.privacy.textblock','&lt;privacy text&gt;'),('portal.site.site_property.portlet.title.maxlength','75'),('seo.canonicalUrls.enabled','true'),('seo.config.uptodate','true'),('seo.generator.daemon.enabled','true'),('seo.generator.option.addHtmlSuffix','true'),('seo.generator.option.addPath','false'),('seo.replaceUrl.enabled','true'),('seo.rewrite.config.lastUpdate','Last update : Sep 11, 2024, 1:27:42 PM Urls count : 9 Result : OK'),('seo.sitemap.update.log','Last generation : Sep 11, 2024, 1:27:31 PM Urls count : 6 Result : OK'),('seo.sitmap.daemon.enabled','true'),('themecitelibre.site_property.bannerMessage.CloseButton.checkbox','1'),('themecitelibre.site_property.bannerMessage.htmlblock',''),('themecitelibre.site_property.bannerMessage.Position','bottom-right'),('themecitelibre.site_property.bannerMessage.Title',''),('themecitelibre.site_property.bannerMessage.Type','info'),('themecitelibre.site_property.footer.about','CiteLibre is made for cities, by cities, upon open source principals. <br> <a class=\"btn btn-link ps-0\" href=\"//:lutece.paris.fr\" title=\"[#i18n{portal.site.portal_footer.newWindow}] LUTECE website\" target=\"_blank><img src=\"images/poweredby.png\" alt=\"Powered by LUTECE\"></a> '),('themecitelibre.site_property.footer.about.title','A propos'),('themecitelibre.site_property.footer.cookieLabel','Cookies management'),('themecitelibre.site_property.footer.cookieLink','#cookiecitelibrepack'),('themecitelibre.site_property.footer.links.title','Liens importants'),('themecitelibre.site_property.robotIndex.checkbox','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `core_style` VALUES (3,'Menu Init','',3),(4,'Main Menu','',4),(5,'Breadcrumb','',5),(6,'Site Map','',6),(7,'Tree View Menu','',7),(8,'Site Map (Admin mode)',NULL,8),(100,'Défaut','HTML_PORTLET',0),(101,'Fond coloré','HTML_PORTLET',0),(200,'Défaut','MYLUTECE_PORTLET',0);
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
INSERT INTO `core_stylesheet` VALUES (211,'Menu Init','menu_init.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n<br /><br />\r\n	<div id=\"menu-init\">\r\n		<div id=\"menu-init-content\">\r\n            <ul id=\"menu-verti\">\r\n                <xsl:apply-templates select=\"menu\" />\r\n            </ul>\r\n        </div>\r\n     </div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n\r\n    <xsl:if test=\"$index &gt; 7\">\r\n        <li class=\"first-verti\">\r\n        	<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n          		<xsl:value-of select=\"page-name\" />\r\n	        </a>\r\n    	    <xsl:apply-templates select=\"sublevel-menu-list\" />\r\n        </li>\r\n   </xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" >\r\n	<ul>\r\n    	<li class=\"last-verti\">\r\n		 	<xsl:apply-templates select=\"sublevel-menu\" />\r\n 	    </li>\r\n    </ul>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n\r\n   <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n		<span><xsl:value-of select=\"page-name\" /></span>\r\n   </a>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(213,'Main Menu','menu_main.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    <xsl:param name=\"site-path\" select=\"site-path\" />\r\n    <xsl:template match=\"menu-list\">\r\n        <xsl:apply-templates select=\"menu\" />\r\n    </xsl:template>\r\n    <xsl:template match=\"menu\">\r\n        <li class=\"nav-item\">\r\n            <a href=\"{$site-path}?page_id={page-id}\" class=\"nav-link\" target=\"_top\">\r\n                <xsl:value-of select=\"page-name\" />\r\n            </a>\r\n        </li>\r\n    </xsl:template>\r\n</xsl:stylesheet>'),(215,'Breadcrumb','page_path.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n\r\n<xsl:template match=\"page\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page_link\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?{page-url}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>'),(217,'Site Map','site_map.xsl','<?xml version=\"1.0\"?> <xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"> 	<xsl:param name=\"site-path\" select=\"site-path\" /> 	<xsl:variable name=\"current-page-id\" select=\"current-page-id\" /> 	<xsl:template match=\"page[page-level=0]\"> 		<div id=\"lutece-map-tree\" class=\"lutece-tree\"> 			<ul> 				<li id=\"node-{page-id}\" class=\"lutece-tree-node\" data-tree-icon=\"home\"> 					<xsl:value-of select=\"page-name\" /> 					<xsl:if test=\"not(string(page-role)=\'none\')\"> 						<strong> 							<xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 							<xsl:value-of select=\"page-role\" /> 						</strong> 					</xsl:if> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\"><span class=\"ti ti-home-link ms-2\"></span></a> 					<ul> 						<xsl:apply-templates select=\"child-pages-list\" /> 					</ul> 				</li> 			</ul> 		</div> 	</xsl:template> 	<xsl:template match=\"page[page-level>0]\"> 		<xsl:variable name=\"index\" select=\"page-id\" /> 		<xsl:variable name=\"description\" select=\"page-description\" /> 		<xsl:choose> 			<xsl:when test=\"count(child-pages-list/*)>0\"> 			<li id=\"node-{$index}\" class=\"lutece-tree-node\" data-tree-icon=\"folder\"> 				<span class=\"node-name\"> 					<xsl:value-of select=\"page-name\" /> 					<xsl:if test=\"not(string(page-role)=\'none\')\"> 						<strong> 							<xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 							<xsl:value-of select=\"page-role\" /> 						</strong> 					</xsl:if> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-name } - {$description}\"><span class=\"ti ti-link mx-2\"></span></a> 				</span> 				<ul> 					<xsl:apply-templates select=\"child-pages-list\" /> 				</ul> 			</li> 			</xsl:when> 			<xsl:otherwise> 				<li id=\"node-{$index}\" class=\"lutece-tree-item\" data-tree-icon=\"file-symlink\"> 					<a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"> 						<span class=\"leaf-name\"><xsl:value-of select=\"page-name\" /></span> 						<xsl:if test=\"not(string(page-role)=\'none\')\"> 							<strong> 								<xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text> 								<xsl:value-of select=\"page-role\" /> 							</strong> 						</xsl:if> 					</a> 				</li>    			</xsl:otherwise> 		</xsl:choose> 	</xsl:template> 	<xsl:template match=\"child-pages-list\"> 		<xsl:apply-templates select=\"page\" /> 	</xsl:template> </xsl:stylesheet>'),(253,'Tree View Menu','menu_tree.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n	<xsl:variable name=\"menu-list\" select=\"menu\" />\r\n\r\n	<script type=\"text/javascript\">\r\n		$(document).ready(function(){\r\n			$(\"#tree\").treeview({\r\n				animated: \"fast\",\r\n				collapsed: false,\r\n				unique: true,\r\n				persist: \"cookie\"\r\n			});\r\n		\r\n		});\r\n	</script>    \r\n	\r\n	<xsl:if test=\"not(string(menu)=\'\')\">\r\n	    <xsl:text disable-output-escaping=\"yes\">		    \r\n            <div class=\"tree4\">		\r\n			<h2>&#160;</h2>\r\n			<ul id=\"tree\" class=\"tree4\">\r\n                <xsl:apply-templates select=\"menu\" />        \r\n			</ul>	\r\n			</div>\r\n		 	 <br />\r\n		</xsl:text> \r\n	</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n		<li>\r\n          <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\" >\r\n               <xsl:value-of select=\"page-name\" />\r\n           </a>	   \r\n		   <br />\r\n		   <xsl:value-of select=\"page-description\" />\r\n			<xsl:apply-templates select=\"sublevel-menu-list\" /> \r\n			\r\n		</li> 	\r\n		\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" > \r\n	\r\n	<xsl:apply-templates select=\"sublevel-menu\" /> 	    	\r\n\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n		 <ul >\r\n			<li>\r\n				<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n					<xsl:value-of select=\"page-name\" />\r\n				</a>\r\n			</li>			\r\n		</ul>\r\n		\r\n   \r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(279,'Site Map (Admin mode)','admin_site_map_admin.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n    <xsl:param name=\"site-path\" select=\"site-path\" />\r\n    <xsl:variable name=\"current-page-id\" select=\"current-page-id\" />\r\n    <xsl:template match=\"page[page-level=0]\">\r\n        <div id=\"lutece-map-tree\" class=\"lutece-tree\">\r\n            <ul>\r\n                <li class=\"lutece-tree-node\" data-tree-icon=\"home\">\r\n                    <xsl:value-of select=\"page-name\" />\r\n                    <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                        <strong>\r\n                            <xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                            <xsl:value-of select=\"page-role\" />\r\n                        </strong>\r\n                    </xsl:if>\r\n                    <a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\"><span class=\"ti ti-link\"></span></a>\r\n                    <ul>\r\n                        <xsl:apply-templates select=\"child-pages-list\" />\r\n                    </ul>\r\n                </li>\r\n            </ul>\r\n        </div>\r\n    </xsl:template>\r\n    <xsl:template match=\"page[page-level>0]\">\r\n        <xsl:variable name=\"index\" select=\"page-id\" />\r\n        <xsl:variable name=\"description\" select=\"page-description\" />\r\n        <xsl:choose>\r\n            <xsl:when test=\"count(child-pages-list/*)>0\">\r\n            <li id=\"node-{$index}\" class=\"lutece-tree-node\" data-tree-icon=\"folder\">\r\n                <xsl:value-of select=\"page-name\" />\r\n                <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                    <strong>\r\n                        <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                        <xsl:value-of select=\"page-role\" />\r\n                    </strong>\r\n                </xsl:if>\r\n                <a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"><span class=\"ti ti-link\"></span></a>\r\n                <ul>\r\n                    <xsl:apply-templates select=\"child-pages-list\" />\r\n                </ul>\r\n                </li>   \r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n            <li id=\"node-{$index}\" class=\"lutece-tree-item\" data-tree-icon=\"file\">\r\n                <xsl:value-of select=\"page-name\" />\r\n                <xsl:if test=\"not(string(page-role)=\'none\')\">\r\n                    <strong>\r\n                        <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n                        <xsl:value-of select=\"page-role\" />\r\n                    </strong>\r\n                </xsl:if>\r\n                <a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\"><span class=\"ti ti-link\"></span></a>\r\n                <xsl:apply-templates select=\"child-pages-list\" />\r\n            </li>    \r\n            </xsl:otherwise>\r\n        </xsl:choose>\r\n    </xsl:template>\r\n    <xsl:template match=\"child-pages-list\">\r\n        <xsl:apply-templates select=\"page\" />\r\n    </xsl:template>\r\n</xsl:stylesheet>'),(10,'Rubrique HTML - Défaut','portlet_html.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n<xsl:variable name=\"device_class\">\r\n<xsl:choose>\r\n	<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n	<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n	<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n	<xsl:otherwise></xsl:otherwise>\r\n</xsl:choose>\r\n</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n	<xsl:choose>\r\n	<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n	<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:when>\r\n	<xsl:otherwise>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:otherwise>\r\n</xsl:choose>\r\n</div>\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n\r\n\r\n\r\n'),(285,'Rubrique HTML - Fond coloré','portlet_html_background.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h2>\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h2>\r\n				<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<div class=\"portlet-background-content -lutece-border-radius\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n		</div>\r\n    </div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>'),(310,'Rubrique MyLutece - Défaut','portlet_mylutece.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n			<xsl:choose>\r\n	        <xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:when>\r\n	        <xsl:otherwise>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:otherwise>\r\n			</xsl:choose>\r\n			<div class=\"clearfix\">&#160;</div>\r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"mylutece-portlet\">\r\n	<xsl:apply-templates select=\"user-not-signed\" />\r\n	<xsl:apply-templates select=\"lutece-user\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"user-not-signed\">\r\n	<form class=\"form\" action=\"jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp\" method=\"post\">\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@delegated=\'true\']\" />\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\" />\r\n		<xsl:if test=\"count(lutece-user-authentication-service[@loginpassword-required=\'true\']) &gt;= 1\">\r\n			<label for=\"username\">Code d\'acc&#232;s :</label>\r\n			<input name=\"username\" class=\"input-normal\" id=\"username\" autocomplete=\"off\" tabindex=\"1\" type=\"text\"/><br />\r\n			<label for=\"password\">Mot de passe :</label>\r\n			<input name=\"password\" class=\"input-normal\" id=\"password\" autocomplete=\"off\" tabindex=\"2\" type=\"password\" />\r\n			<button class=\"btn btn-small\" tabindex=\"3\" type=\"submit\"><i class=\"icon-user\">&#160;</i>&#160;Connexion</button>\r\n		</xsl:if>\r\n	</form>\r\n	<xsl:apply-templates select=\"lutece-user-new-account-url\" />\r\n	<xsl:apply-templates select=\"lutece-user-lost-password-url\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\">\r\n	<label class=\"radio\" for=\"auth_provider\" >\r\n		<input type=\"radio\" name=\"auth_provider\" value=\"{name}\" checked=\"checked\" />\r\n		<xsl:value-of select=\"display-name\" />\r\n	</label>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@delegated=\'true\']\">\r\n	<a href=\"{url}?auth_provider={name}\">\r\n		<img src=\"{icon-url}\" alt=\"{display-name}\" title=\"{display-name}\"/>\r\n	</a>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user\">\r\n    <p>\r\n	<strong>Bienvenue&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-given\" />&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-family\" />\r\n	</strong>\r\n	</p>\r\n    <xsl:apply-templates select=\"lutece-user-logout-url\" />\r\n    <xsl:apply-templates select=\"lutece-user-view-account-url\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-logout-url\">\r\n   <form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n   	<button type=\"submit\" class=\"btn\"><i class=\"icon-off\">&#160;</i>&#160;D&#233;connexion</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-new-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n		<button type=\"submit\" class=\"btn\"><i class=\"icon-plus\">&#160;</i>&#160;Cr&#233;er un compte</button>&#160;\r\n    </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-lost-password-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-lock\">&#160;</i>&#160;Mot de passe perdu</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-view-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-edit\">&#160;</i>&#160;Voir mon compte</button>&#160;\r\n	</form>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n');
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
INSERT INTO `core_template` VALUES ('core_account_reactivated_mail','Bonjour ${first_name} ! Votre compte utilisateur a bien été réactivé. Il est désormais valable jusqu\'au ${date_valid}.'),('core_expiration_mail','Bonjour ${first_name} ! Votre compte a expiré. Vous ne pourrez plus vous connecter avec, et les données vous concernant ont été anonymisées'),('core_first_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('core_other_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('core_password_expired','Bonjour ! Votre mot de passe a expiré. Lors de votre prochaine connexion, vous pourrez le changer.');
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
INSERT INTO `core_user_password_history` VALUES (1,'PBKDF2WITHHMACSHA512:40000:dfcb0adbca60ef026043640c1f6821e5:f8306837f2495665ebc50c79c3cbc8bc451a5238ab95fad52fd87863c7262c462c85585332bf21c87c046a221002712958d83cc4ef5a5176d726fa6d6cb0f2d8c78012a731d8a9c77c2608ce51899e0c2d9a130b93a8fac357ae4d108ddf44f0c471b25b1e091332663ccc6391d45d7d050dc3c3a11a1975e975c63b017c6024','2024-06-03 10:01:53'),(1,'PBKDF2WITHHMACSHA512:40000:172a29202add8d56d5b49841cfcd310b:05bbd77563c2d174ef40b9bcd1ee9813e99e78d289789706a338cd6538f941cec73a96e85d9a13815c11f9faadde3a06d3e7fb56bccb6302e5844f08cf0cdbf308eeb312c9f4aac391a04cefb591e9dede5b7f917b883e91fe0a0c9d338b4b15001cb5b9b7e82684a711ec6a84d20a4b1d0d6e7291a0244249b699cf992a29fb','2024-06-07 15:26:12'),(1,'PBKDF2WITHHMACSHA512:40000:0ccbcef566669895444880b409d4e1ad:dc5e810e2d0f8fe60495798069f5e99b3337ce142fdd9d6a227a3f6887584f81c5602c6720db3b5eb8ddf0def4a363cab21a95bcb1704514ce35ea388f2b14b69e1b9e9865e702289b038125d5c826b4fcfbe86e6718cad016f16d7e2cf4b413a4b9c6e60e121c11d5de152225951f9834849892d0f12dde90a08f8b77c47fe1','2024-09-11 09:32:30'),(5,'PBKDF2WITHHMACSHA512:40000:82c68002da58aa3fc98573b828dc0f92:87b8d14f13f6a7c3ea67db6e07d7c506c70d858f10695a10dd6ae916e71c26555087ec1531175cb5fea6e363f60eda527b8783d45a3c62252cdefaad984190cc898183a9e1fb3dd2f75c08a94d4b356b75349d651d93b0f8dfd33c751d9cf984c377cb335c3a6979d7d50eac65980b981ed5f423b94e5039fcbd6e240406a281','2024-03-12 15:37:35'),(5,'PBKDF2WITHHMACSHA512:40000:cb27f86b760365f5b91d1486796a252a:07d28d07a75f6b41ae435085e5be63ebfbc3ab331ac08cca8e0978400f7feeb86824b86f7a2b381e50a11ac9e0bcef782b9aefddb66edb6e02b57cc20e640d3390b0f4365eb059ba23a344114f3ebeeab4ad59b124ff90a18fb306cc5059f72f6471f382014937a6c1be51b405fabbf0bfe7d219dead1d87eaa75b5780f71f3f','2024-03-12 15:37:52'),(6,'PBKDF2WITHHMACSHA512:40000:12bc85cfee1c84ada42184db0f585bd2:073c337496db8b349ed000f7f80851db3b89a14efdeabb23071a44f8d6cb7ff57cacf6b233b970ae09fbd51eb7e63a7961c0a012bc0551233cf8b2861e6c7892bb4b98f06c932452d43099a88c1774e9e6670bfb2a3258e10bc8f03a5b80a9804766d945bdaa96cb257c9b34a7e5e8776c2f2fc297514b7b0ae651c2d2e78874','2024-03-12 15:36:22'),(6,'PBKDF2WITHHMACSHA512:40000:423e23bba77c71fad7b25844a82d19e3:b655d85f8f7a10be0006d653a299691ea4c5ff93fb834853c9d72c7c52cca4afd27b6936595605745392b656727194a9042a6ff28e25976f5bba9121f19710954dae14ab2bd35c1dc20b39b829c16aa3996df18f50b22ca1f1e9f8e9afb48bfa3f9477a4b3f2effdeccb0539a1b5015953475361f1fbf5673d7dfd94b57c1b3d','2024-03-12 15:36:36'),(7,'PBKDF2WITHHMACSHA512:40000:31e13a761d44bb516e4876f6d6efd5a9:393113a50b1cf932afd0b137dc15c15454c3f48790bf5b498fc0734e3c9af37989298b7e8e211614ffd26c5e8dce812d237def13348cd7a96c1520eec2178e9fd354bbac8dfa24f9078792f4586cacc908865a1a57e12e315250ee33bb7ca7f9372b26fb87239d1322f8594581e7c779f65a5bb060cfdb55d584968db0dfa9d6','2024-03-12 15:34:33'),(7,'PBKDF2WITHHMACSHA512:40000:ed0fbc804a9612f983bef9d25593a85b:860171e61e7609ddeec428b4127182eceb368b42439ead08ffafea9880f84329d78b52abda75f6b5cecfe66743c823d10b6878ff90a470516263a0472bb38bdb2798de4b3fbd920cf5ea51e358b2d93d3052d5e972d6a6a3e0b29d37e2b3fcbcf14e7c77936cbd05d0f3b1aa45a6ca8ef474752f8ee04dbdea64b4c31f8eb36c','2024-03-12 15:34:50'),(8,'PBKDF2WITHHMACSHA512:40000:817428814558b481c52378afb38a61cf:03db2eac54ab4b847b9f1496048d1ef07d10728e4f2a846bd9bb54f3f9cc756c3f2b82181194347b2849884a42a853917fefc7a04ed3b345c9bce4c98f2ccb78870e85f8725976c41ccce4302a64097168ffe5964ec477806f23850f7107ab951d5bc4c3b76aa543e09618012f0e2884c7d04803fc1c960ddaab1c377cd8ab52','2024-03-12 15:44:34'),(8,'PBKDF2WITHHMACSHA512:40000:dfe26e33fa61efb67333567beea45ad0:b08687413cea5337dda4dd6bcc9fcde0b64a8c39d5083cbf1ade620b3e5f28c8eee944ea9b3e20f9387130ee9881814ae315c8fdaea8aab6533036d8aa47885aa1c4dae1b1475a2f25fff28f783bd90c22878cbce57b27a9894e7c087856a170f76b6662c5f7250134fdfa4308ed80791836d2c7f22376819acadcccb7fd3080','2024-03-12 15:44:52');
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
INSERT INTO `core_user_right` VALUES ('ACCESSCONTROL_MANAGEMENT',1),('ACCESSRULES_MANAGEMENT',1),('ADMINAVATAR_MANAGEMENT',1),('BREADCRUMBACCORDION_MANAGEMENT',1),('BREADCRUMBACCORDION_MANAGEMENT',5),('BREADCRUMBACCORDION_MANAGEMENT',9),('CONFIG_DOCUMENT_PRODUCER_MANAGEMENT',1),('CONTACT_MANAGEMENT',1),('CORE_ADMIN_SITE',1),('CORE_ADMIN_SITE',2),('CORE_ADMIN_SITE',5),('CORE_ADMINDASHBOARD_MANAGEMENT',1),('CORE_CACHE_MANAGEMENT',1),('CORE_DAEMONS_MANAGEMENT',1),('CORE_DASHBOARD_MANAGEMENT',1),('CORE_EDITORS_MANAGEMENT',1),('CORE_FEATURES_MANAGEMENT',1),('CORE_LEVEL_RIGHT_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',2),('CORE_LOGS_VISUALISATION',1),('CORE_MAILINGLISTS_MANAGEMENT',1),('CORE_MAILINGLISTS_MANAGEMENT',5),('CORE_MODES_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',2),('CORE_PLUGINS_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',2),('CORE_PROPERTIES_MANAGEMENT',5),('CORE_RBAC_MANAGEMENT',1),('CORE_RIGHT_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',2),('CORE_SEARCH_INDEXATION',1),('CORE_SEARCH_INDEXATION',2),('CORE_SEARCH_MANAGEMENT',1),('CORE_SEARCH_MANAGEMENT',2),('CORE_STYLES_MANAGEMENT',1),('CORE_STYLESHEET_MANAGEMENT',1),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',2),('CORE_WORKGROUPS_MANAGEMENT',1),('CORE_WORKGROUPS_MANAGEMENT',2),('CORE_XSL_EXPORT_MANAGEMENT',1),('ELASTICDATA_MANAGEMENT',1),('ENTRY_TYPE_MANAGEMENT',1),('FORMS_CATEGORIES',1),('FORMS_MANAGEMENT',1),('FORMS_MANAGEMENT',5),('FORMS_MANAGEMENT',6),('FORMS_MANAGEMENT',9),('FORMS_MANAGEMENT',10),('FORMS_MANAGEMENT',17),('FORMS_MANAGEMENT',18),('FORMS_MULTIVIEW',1),('FORMS_MULTIVIEW',5),('FORMS_MULTIVIEW',6),('FORMS_MULTIVIEW',7),('FORMS_MULTIVIEW',8),('FORMS_MULTIVIEW',9),('FORMS_MULTIVIEW',10),('FORMS_MULTIVIEW',11),('FORMS_MULTIVIEW',12),('FORMS_MULTIVIEW',13),('FORMS_MULTIVIEW',14),('FORMS_MULTIVIEW',15),('FORMS_MULTIVIEW',16),('FORMS_MULTIVIEW',17),('FORMS_MULTIVIEW',18),('FORMS_QUESTION_EXPORT_ORDER_MANAGEMENT',1),('GIS_MANAGEMENT',1),('GIS_MANAGEMENT',2),('HTMLPAGE_MANAGEMENT',1),('KIBANA_MANAGEMENT',1),('KIBANA_RBAC_MANAGEMENT',1),('MATOMO_MANAGEMENT',1),('MATOMO_MANAGEMENT',5),('MODULENOTIFYGRUMAPPINGMANAGER_MANAGEMENT',1),('MYLUTECE_CACHEUSERATTRIBUTE_MANAGEMENT',1),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER',1),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION',1),('MYLUTECE_MANAGEMENT',1),('POLL_MANAGEMENT',1),('PROFILES_MANAGEMENT',1),('PROFILES_VIEWS_MANAGEMENT',1),('REFERENCELIST_MANAGEMENT',1),('REGULAR_EXPRESSION_MANAGEMENT',1),('SEO_MANAGEMENT',1),('SOLR_CONFIGURATION_MANAGEMENT',1),('SOLR_FIELDS_MANAGEMENT',1),('SOLR_INDEX_MANAGEMENT',1),('SYSTEMINFO_MANAGEMENT',1),('TEMPLATE_STEP_MANAGEMENT',1),('TERMOFSERVICE_MANAGEMENT',1),('UNITS_MANAGEMENT',1),('UNITS_MANAGEMENT',5),('USERCODES_MANAGEMENT',1),('VERIFYBACKURL_MANAGEMENT',1),('VIEW_TEMP_FILES',1),('VIEW_TEMP_FILES',5),('VIEW_TEMP_FILES',6),('WORKFLOW_MANAGEMENT',1),('WORKFLOW_MANAGEMENT',5),('WORKFLOW_MANAGEMENT',9);
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
INSERT INTO `core_user_role` VALUES ('all_site_manager',1),('all_site_manager',2),('assign_groups',1),('assign_groups',2),('assign_groups',3),('assign_roles',1),('assign_roles',2),('assign_roles',3),('CREATE_REFERENCE_IMPORT',1),('forms_manager',1),('forms_manager',2),('forms_manager',9),('forms_manager',17),('forms_multiview',1),('forms_multiview',9),('forms_multiview_unitree',17),('kibana_dashboards_manager',1),('mylutece_manager',1),('profiles_manager',1),('profiles_views_manager',1),('sollicitation_administrateur',5),('sollicitation_administrateur',9),('sollicitation_gestionnaires',5),('sollicitation_gestionnaires',6),('sollicitation_gestionnaires',9),('sollicitation_gestionnaires',10),('sollicitation_gestionnaires',14),('sollicitation_gestionnaires',18),('sollicitation_instructeurs',5),('sollicitation_instructeurs',6),('sollicitation_instructeurs',7),('sollicitation_instructeurs',8),('sollicitation_instructeurs',9),('sollicitation_instructeurs',10),('sollicitation_instructeurs',11),('sollicitation_instructeurs',12),('sollicitation_instructeurs',13),('sollicitation_instructeurs',14),('sollicitation_instructeurs',15),('sollicitation_instructeurs',16),('sollicitation_instructeurs',18),('super_admin',1),('super_admin',2),('unittree_management',1),('unittree_management',2),('workflow_manager',1),('workflow_manager',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elasticdata_indexer_action`
--

LOCK TABLES `elasticdata_indexer_action` WRITE;
/*!40000 ALTER TABLE `elasticdata_indexer_action` DISABLE KEYS */;
INSERT INTO `elasticdata_indexer_action` VALUES (4,'3',1,'FormsDataSource'),(5,'5',1,'FormsDataSource'),(6,'6',1,'FormsDataSource');
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
INSERT INTO `forms_form` VALUES (1,'Contacter ma mairie','Formulaire pour solliciter les services administratifs à propos d\'un sujet précis. Le formulaire a pour vocation d\'être simple.','2024-03-05 14:04:06','2024-03-12 15:24:49','2024-03-01 12:00:00',NULL,0,'all',1,0,0,'forms-breadcrumbaccordion.breadcrumbAccordion',1,'jsp/site/Portal.jsp',0,0,0,0,'','',0,0,1,0),(4,'Demande d\'acte de Mariage','Demande d\'acte de Mariage','2024-03-14 16:51:09','2024-06-07 15:47:21','2024-03-11 12:00:00',NULL,0,'all',2,1,1,'forms-breadcrumbaccordion.breadcrumbAccordion',1,'jsp/site/Portal.jsp',0,0,0,0,'','',0,0,0,0);
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
INSERT INTO `forms_group` VALUES (1,'Vos coordonnées','',1,1,1,'',''),(2,'Sujet de votre demande','',1,1,1,'',''),(9,'Votre demande','',1,1,1,'',''),(13,'Lieu et date','',8,1,1,'',''),(14,'Identité de la personne dont vous demandez l\'acte','<p>Les actes de naissance et les tables d&eacute;cennales de naissance ant&eacute;rieurs &agrave; l\'ann&eacute;e 1922 ont &eacute;t&eacute; num&eacute;ris&eacute;s et vous pouvez les consulter directement sur le site des <a href=\"https://archives.paris.fr/a/1/accueil/\" target=\"_blank\">Archives de Paris</a></p>\r\n<p>Seuls les actes enregistr&eacute;s &agrave; Paris peuvent &ecirc;tre d&eacute;livr&eacute;s. Pour une autre commune,</p>',8,1,1,'',''),(15,'Identité du conjoint','',8,1,1,'',''),(16,'Identité des parents','<p>Attention Si vous souhaitez recevoir une copie int&eacute;grale, un extrait avec mention de la filiation ou un extrait plurilingue, n&rsquo;oubliez pas de pr&eacute;ciser dans votre demande toutes les indications concernant les parents : Le nom et pr&eacute;noms de la m&egrave;re / des m&egrave;res Le nom et pr&eacute;noms du p&egrave;re / des p&egrave;res &Agrave; d&eacute;faut, le service de l&rsquo;&eacute;tat civil ne pourra vous d&eacute;livrer qu&rsquo;un extrait sans mention de la filiation.</p>',8,1,1,'',''),(17,'Type d\'acte demandé','',8,1,1,'',''),(18,'Vos coordonnées','',9,1,1,'','');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
INSERT INTO `forms_question` VALUES (1,'Nom','question_989','',1,1,0,0,0,'Nom',0,0,0),(2,'Prénom','question_990','',2,1,0,0,0,'Prénom',0,0,0),(3,'Courriel','question_991','',3,1,0,0,0,'Courriel',0,0,0),(4,'Numéro de téléphone','question_992','',4,1,0,0,0,'Numéro de téléphone',0,0,0),(5,'Sélectionnez le domaine sur lequel porte votre demande','question_993','',5,1,0,0,0,'Sélectionnez le domaine sur lequel porte votre demande',0,0,0),(40,'Thématique Affaires Scolaires','question_40','',40,1,0,0,0,'Thématique Affaires Scolaires',0,0,0),(41,'Thématique Espace Public','question_41','',41,1,0,0,0,'Thématique Espace Public',0,0,0),(42,'Votre message','question_42','',42,1,0,0,0,'Votre message',0,0,0),(43,'Numéro de dossier','question_43',NULL,43,1,0,0,0,'Numéro de dossier',0,0,0),(55,'Motif de la demande','question_95','',55,7,0,0,0,'Motif de la demande',0,0,0),(56,'Préciser le motif','question_96','',56,7,0,0,0,'Préciser le motif',0,0,0),(57,'commentaire','question_97','<p>Les actes de mariage ant&eacute;rieur &agrave; 1946 et les tables annu&eacute;lles et d&eacute;cennales correspondantes ont &eacute;t&eacute; num&eacute;ris&eacute;s et vous pouvez les consulter directement sur le site de CiteLibre</p>\r\n<p>Seuls les actes enregistr&eacute;s &agrave; <strong>CiteLibre</strong>&nbsp;peuvent &ecirc;tre d&eacute;livr&eacute;s. Si l\'acte concerne une autre commune, Veuillez consulter&nbsp;<a href=\"https://www.service-public.fr/particuliers/vosdroits/R42837\" target=\"_blank\">service-public.fr </a></p>',57,8,0,0,0,'commentaire',0,0,0),(58,'Lieu du mariage','question_99','',58,8,0,0,0,'Lieu',0,0,0),(59,'Date du mariage','question_100','',59,8,0,0,0,'Date du mariage',0,0,0),(60,'Nom','question_101','',60,8,0,0,0,'Nom',0,0,0),(61,'Prénom','question_102','',61,8,0,0,0,'Prénom',0,0,0),(62,'Nom','question_103','',62,8,0,0,0,'Nom',0,0,0),(63,'Prénom','question_104','',63,8,0,0,0,'Prénom',0,0,0),(64,'Nom Parent 1','question_105','',64,8,0,0,0,'Nom Parent 1',0,0,0),(65,'Prénom Parent 1','question_106','',65,8,0,0,0,'Prénom Parent 1',0,0,0),(66,'Nom Parent 2','question_107','',66,8,0,0,0,'Nom Parent 2',0,0,0),(67,'Nom Parent 3','question_108','',67,8,0,0,0,'Nom Parent 3',0,0,0),(68,'Nom Parent 4','question_109','',68,8,0,0,0,'Nom Parent 4',0,0,0),(69,'Prénom Parent 2','question_110','',69,8,0,0,0,'Prénom Parent 2',0,0,0),(70,'Prénom Parent 3','question_111','',70,8,0,0,0,'Prénom Parent 3',0,0,0),(71,'Prénom Parent 4','question_112','',71,8,0,0,0,'Prénom Parent 4',0,0,0),(72,'Qualité du demandeur','question_113','',72,8,0,0,0,'Qualité du demandeur',0,0,0),(73,'Nombre d\'actes demandés','question_114','',73,8,0,0,0,'Nombre d\'actes demandés',0,0,0),(74,'Type d\'acte demandé :','question_115','',74,8,0,0,0,'Type d\'acte demandé :',0,0,0),(75,'commentaire','question_116','<p>Le demandeur d\'un acte doit &ecirc;tre majeur</p>',75,9,0,0,0,'commentaire',0,0,0),(78,'Adresse','question_119','',78,9,0,0,0,'Adresse',0,0,0),(80,'Pays (Attention ! si l\'adresse est à l\'étranger, l\'indication du pays est obligatoire)','question_121','',80,9,0,0,0,'Pays (Attention ! si l\'adresse est à l\'étranger, l\'indication du pays est obligatoire)',0,0,0),(81,'commentaire','question_122','<p>Vous serez inform&eacute; de l\'&eacute;volution de votre demande sur cette adresse mail.</p>\r\n<p>Des erreurs de saisie peuvent entra&icirc;ner l\'envoi &agrave; tort d\'informations dans la boite mail d\'un tiers. La ville de CiteLibre ne saurait &ecirc;tre tenue pour responsable d\'une transmission erron&eacute;e.</p>',81,9,0,0,0,'commentaire',0,0,0),(82,'Adresse mail','question_123','',82,9,0,0,0,'Adresse mail',0,0,0),(83,'Prénom authentifié','question_44','',83,9,0,0,0,'Prénom authentifié',0,0,0),(84,'Nom authentifié','question_45','',84,9,0,0,0,'Nom authentifié',0,0,0),(85,'commentaire','question_124','<p>&lt;p&gt;Merci de bien v&amp;eacute;rifier le r&amp;eacute;capitulatif de votre demande ci-dessus.&lt;br /&gt;Vous pouvez modifier les informations saisies si besoin avant de valider votre demande.&lt;/p&gt;</p>',85,10,0,0,0,'commentaire',0,0,0),(86,'J’accepte les conditions générales d’utilisation et je certifie sur l’honneur l’exactitude des informations fournies.','question_125',NULL,86,10,0,0,0,'J’accepte les conditions générales d’utilisation et je certifie sur l’honneur l’exactitude des informations fournies.',0,0,0),(87,' Numéro','question_126',NULL,87,10,0,0,0,' Numéro',0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question_entry_response`
--

LOCK TABLES `forms_question_entry_response` WRITE;
/*!40000 ALTER TABLE `forms_question_entry_response` DISABLE KEYS */;
INSERT INTO `forms_question_entry_response` VALUES (67,62,67),(68,63,68),(69,65,69),(70,65,70),(71,65,71),(72,65,72),(73,65,73),(74,66,74),(75,67,75),(76,68,76),(77,69,77),(78,70,78),(79,71,79),(80,72,80),(81,73,81),(82,74,82),(83,75,83),(84,76,84),(85,77,85),(86,78,86),(87,79,87),(88,80,88),(89,81,89),(98,90,98),(99,92,99),(100,92,100),(101,92,101),(102,92,102),(103,92,103),(104,93,104),(105,94,105),(106,95,106),(107,96,107),(108,97,108),(109,98,109),(110,99,110),(111,100,111),(112,101,112),(113,102,113),(114,103,114),(115,104,115),(116,105,116),(117,106,117),(118,107,118),(119,108,119),(120,110,120),(121,111,121),(122,112,122),(123,113,123),(124,114,124),(125,117,125),(126,117,126),(127,118,127),(128,119,128),(129,120,129),(130,121,130),(131,122,131),(132,123,132),(133,124,133),(134,125,134),(135,126,135);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question_response`
--

LOCK TABLES `forms_question_response` WRITE;
/*!40000 ALTER TABLE `forms_question_response` DISABLE KEYS */;
INSERT INTO `forms_question_response` VALUES (62,3,55,7,0),(63,3,56,7,0),(64,3,57,8,0),(65,3,58,8,0),(66,3,59,8,0),(67,3,60,8,0),(68,3,61,8,0),(69,3,62,8,0),(70,3,63,8,0),(71,3,64,8,0),(72,3,65,8,0),(73,3,66,8,0),(74,3,69,8,0),(75,3,67,8,0),(76,3,70,8,0),(77,3,68,8,0),(78,3,71,8,0),(79,3,72,8,0),(80,3,73,8,0),(81,3,74,8,0),(90,5,55,7,0),(91,5,57,8,0),(92,5,58,8,0),(93,5,59,8,0),(94,5,60,8,0),(95,5,61,8,0),(96,5,62,8,0),(97,5,63,8,0),(98,5,64,8,0),(99,5,65,8,0),(100,5,66,8,0),(101,5,69,8,0),(102,5,67,8,0),(103,5,70,8,0),(104,5,68,8,0),(105,5,71,8,0),(106,5,72,8,0),(107,5,73,8,0),(108,5,74,8,0),(109,5,75,9,0),(110,5,84,9,0),(111,5,83,9,0),(112,5,82,9,0),(113,5,78,9,0),(114,5,80,9,0),(115,5,81,9,0),(116,5,85,10,0),(117,5,86,10,0),(118,5,87,10,0),(119,6,1,1,0),(120,6,2,1,0),(121,6,3,1,0),(122,6,4,1,0),(123,6,5,1,0),(124,6,41,1,0),(125,6,42,1,0),(126,6,43,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_response`
--

LOCK TABLES `forms_response` WRITE;
/*!40000 ALTER TABLE `forms_response` DISABLE KEYS */;
INSERT INTO `forms_response` VALUES (3,4,'john.doe@citelibre.org','2024-03-15 11:43:27','2024-03-15 11:43:27',1,0,NULL,NULL,'2024-03-15 11:43:27'),(5,4,'test@paris.fr','2024-06-07 15:56:39','2024-06-07 15:56:39',0,0,NULL,NULL,'2024-06-07 15:56:39'),(6,1,NULL,'2024-09-11 12:12:52','2024-09-11 12:12:52',0,0,NULL,'admin','2024-09-11 12:12:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_response_step`
--

LOCK TABLES `forms_response_step` WRITE;
/*!40000 ALTER TABLE `forms_response_step` DISABLE KEYS */;
INSERT INTO `forms_response_step` VALUES (8,3,7,0),(9,3,8,1),(11,5,7,0),(12,5,8,1),(13,5,9,2),(14,5,10,3),(15,6,1,0);
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
INSERT INTO `forms_step` VALUES (1,'Ma demande','',1,1,1),(7,'Pour votre demande d\'acte, veuillez préciser le motif','Motif de la demande',4,1,0),(8,'Votre demande','',4,0,0),(9,'Coordonnées','',4,0,0),(10,'Validation','',4,0,1);
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
INSERT INTO `genatt_entry` VALUES (1,1,'FORMS_FORM',106,NULL,'Nom','question_989','','',0,0,1,NULL,0,'',0,'',0,1),(2,1,'FORMS_FORM',106,NULL,'Prénom','question_990','','',0,0,2,NULL,0,'',0,'',0,1),(3,1,'FORMS_FORM',106,NULL,'Courriel','question_991','','',0,0,3,NULL,0,'',0,'',0,1),(4,1,'FORMS_FORM',119,NULL,'Numéro de téléphone','question_992','','',0,0,4,NULL,0,'',0,'',0,1),(5,1,'FORMS_FORM',105,NULL,'Sélectionnez le domaine sur lequel porte votre demande','question_993','','',0,0,5,NULL,0,'',0,NULL,0,1),(40,1,'FORMS_FORM',105,NULL,'Thématique Affaires Scolaires','question_40','','',0,0,0,NULL,0,'',0,NULL,0,1),(41,1,'FORMS_FORM',105,NULL,'Thématique Espace Public','question_41','','',0,0,0,NULL,0,'',0,NULL,0,1),(42,1,'FORMS_FORM',107,NULL,'Votre message','question_42','Message limité à 2500 caractères','',0,0,0,NULL,0,'',0,NULL,0,1),(43,1,'FORMS_FORM',112,NULL,'Numéro de dossier','question_43',NULL,NULL,0,0,0,NULL,0,'',0,NULL,0,1),(55,4,'FORMS_FORM',101,NULL,'Motif de la demande','question_95','','',0,0,1,NULL,0,'',0,NULL,0,0),(56,4,'FORMS_FORM',106,NULL,'Préciser le motif','question_96','','',0,0,2,NULL,0,'',0,'',0,1),(57,4,'FORMS_FORM',103,NULL,NULL,'question_97',NULL,'<p>Les actes de mariage ant&eacute;rieur &agrave; 1946 et les tables annu&eacute;lles et d&eacute;cennales correspondantes ont &eacute;t&eacute; num&eacute;ris&eacute;s et vous pouvez les consulter directement sur le site de CiteLibre</p>\r\n<p>Seuls les actes enregistr&eacute;s &agrave; <strong>CiteLibre</strong>&nbsp;peuvent &ecirc;tre d&eacute;livr&eacute;s. Si l\'acte concerne une autre commune, Veuillez consulter&nbsp;<a href=\"https://www.service-public.fr/particuliers/vosdroits/R42837\" target=\"_blank\">service-public.fr </a></p>',0,0,3,NULL,0,'',0,NULL,0,0),(58,4,'FORMS_FORM',109,NULL,'Lieu du mariage','question_99','','',0,0,4,NULL,0,' checkaddress',0,NULL,0,1),(59,4,'FORMS_FORM',104,NULL,'Date du mariage','question_100','','',0,0,5,NULL,0,'',0,NULL,0,1),(60,4,'FORMS_FORM',106,NULL,'Nom','question_101','','',0,0,6,NULL,0,'',0,'',0,1),(61,4,'FORMS_FORM',106,NULL,'Prénom','question_102','','',0,0,7,NULL,0,'',0,'',0,1),(62,4,'FORMS_FORM',106,NULL,'Nom','question_103','','',0,0,8,NULL,0,'',0,'',0,1),(63,4,'FORMS_FORM',106,NULL,'Prénom','question_104','','',0,0,9,NULL,0,'',0,'',0,1),(64,4,'FORMS_FORM',106,NULL,'Nom Parent 1','question_105','','',0,0,10,NULL,0,'',0,'',0,1),(65,4,'FORMS_FORM',106,NULL,'Prénom Parent 1','question_106','','',0,0,11,NULL,0,'',0,'',0,1),(66,4,'FORMS_FORM',106,NULL,'Nom Parent 2','question_107','','',0,0,12,NULL,0,'',0,'',0,1),(67,4,'FORMS_FORM',106,NULL,'Nom Parent 3','question_108','','',0,0,13,NULL,0,'',0,'',0,1),(68,4,'FORMS_FORM',106,NULL,'Nom Parent 4','question_109','','',0,0,14,NULL,0,'',0,'',0,1),(69,4,'FORMS_FORM',106,NULL,'Prénom Parent 2','question_110','','',0,0,15,NULL,0,'',0,'',0,1),(70,4,'FORMS_FORM',106,NULL,'Prénom Parent 3','question_111','','',0,0,16,NULL,0,'',0,'',0,1),(71,4,'FORMS_FORM',106,NULL,'Prénom Parent 4','question_112','','',0,0,17,NULL,0,'',0,'',0,1),(72,4,'FORMS_FORM',105,NULL,'Qualité du demandeur','question_113','','',0,0,18,NULL,0,'',0,NULL,0,1),(73,4,'FORMS_FORM',120,NULL,'Nombre d\'actes demandés','question_114','','',0,0,19,NULL,0,'',0,'',0,1),(74,4,'FORMS_FORM',101,NULL,'Type d\'acte demandé :','question_115','','',0,1,20,NULL,0,'',0,NULL,0,0),(75,4,'FORMS_FORM',103,NULL,NULL,'question_116',NULL,'<p>Le demandeur d\'un acte doit &ecirc;tre majeur</p>',0,0,21,NULL,0,'',0,NULL,0,0),(78,4,'FORMS_FORM',106,NULL,'Adresse','question_119','','',0,0,24,NULL,0,'',0,'',0,1),(80,4,'FORMS_FORM',106,NULL,'Pays (Attention ! si l\'adresse est à l\'étranger, l\'indication du pays est obligatoire)','question_121','','',0,0,26,NULL,0,'',0,'',0,1),(81,4,'FORMS_FORM',103,NULL,NULL,'question_122',NULL,'<p>Vous serez inform&eacute; de l\'&eacute;volution de votre demande sur cette adresse mail.</p>\r\n<p>Des erreurs de saisie peuvent entra&icirc;ner l\'envoi &agrave; tort d\'informations dans la boite mail d\'un tiers. La ville de CiteLibre ne saurait &ecirc;tre tenue pour responsable d\'une transmission erron&eacute;e.</p>',0,0,27,NULL,0,'',0,NULL,0,0),(82,4,'FORMS_FORM',106,NULL,'Adresse mail','question_123','','',1,0,28,NULL,0,'',0,'',0,1),(83,4,'FORMS_FORM',113,NULL,'Prénom authentifié','question_44','','',0,0,29,NULL,0,'',0,NULL,0,1),(84,4,'FORMS_FORM',113,NULL,'Nom authentifié','question_45','','',0,0,30,NULL,0,'',0,NULL,0,1),(85,4,'FORMS_FORM',103,NULL,NULL,'question_124',NULL,'<p>&lt;p&gt;Merci de bien v&amp;eacute;rifier le r&amp;eacute;capitulatif de votre demande ci-dessus.&lt;br /&gt;Vous pouvez modifier les informations saisies si besoin avant de valider votre demande.&lt;/p&gt;</p>',0,0,31,NULL,0,'',0,NULL,0,0),(86,4,'FORMS_FORM',116,NULL,'J’accepte les conditions générales d’utilisation et je certifie sur l’honneur l’exactitude des informations fournies.','question_125',NULL,NULL,0,0,32,NULL,0,'',0,NULL,0,0),(87,4,'FORMS_FORM',112,NULL,'Numéro','question_126',NULL,NULL,0,0,33,NULL,0,'',0,NULL,0,1);
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
INSERT INTO `genatt_entry_type` VALUES (101,'Bouton radio',0,0,0,'forms.entryTypeRadioButton','dot-circle','forms',5,0),(102,'Case à cocher',0,0,0,'forms.entryTypeCheckBox','check-square','forms',6,0),(103,'Commentaire',0,1,0,'forms.entryTypeComment','comment','forms',11,0),(104,'Date',0,0,0,'forms.entryTypeDate','calendar','forms',4,0),(105,'Liste déroulante',0,0,0,'forms.entryTypeSelect','list-alt','forms',7,0),(106,'Zone de texte court',0,0,0,'forms.entryTypeText','file-alt','forms',2,0),(107,'Zone de texte long',0,0,0,'forms.entryTypeTextArea','sticky-note','forms',3,0),(108,'Fichier',0,0,0,'forms.entryTypeFile','file','forms',9,0),(109,'Géolocalisation',0,0,0,'forms.entryTypeGeolocation','map-marked-alt','forms',16,0),(110,'Image',0,0,0,'forms.entryTypeImage','image','forms',10,0),(111,'Utilisateur MyLutece',0,0,1,'forms.entryTypeMyLuteceUser','user','forms',13,1),(112,'Numérotation',0,0,0,'forms.entryTypeNumbering','hashtag','forms',8,0),(113,'Attribut de l\'utilisateur MyLutece',0,0,0,'forms.entryTypeMyLuteceUserattribute','user','forms',14,0),(114,'Tableau',0,0,0,'forms.entryTypeArray','table','forms',17,1),(115,'Regroupement',1,0,0,'forms.entryTypeGroup','indent','forms',1,0),(116,'Conditions d\'utilisation',0,0,0,'forms.entryTypeTermsOfService','gavel','forms',12,0),(117,'Lecture automatique fichier (OCR)',0,0,0,'forms.entryTypeAutomaticFileReading','file','forms',18,1),(118,'Camera',0,0,0,'forms.entryTypeCamera','camera','forms',15,0),(119,'Numéro de téléphone',0,0,0,'forms.entryTypeTelephoneNumber','phone-square','forms',19,0),(120,'Nombre',0,0,0,'forms.entryTypeNumber','hashtag','forms',5,0),(121,'Liste triable',0,0,0,'forms.entryTypeSelectOrder','list-ol','forms',20,0),(122,'Galerie image',0,0,0,'forms.entryTypeGalleryImage','image','forms',21,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=787 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_field`
--

LOCK TABLES `genatt_field` WRITE;
/*!40000 ALTER TABLE `genatt_field` DISABLE KEYS */;
INSERT INTO `genatt_field` VALUES (1,1,NULL,'exportable','false',0,1,NULL,0,NULL,NULL),(2,1,NULL,'exportable_pdf','false',0,2,NULL,0,NULL,NULL),(3,1,'%e','anonymizable','true',0,3,NULL,0,NULL,NULL),(4,1,NULL,'text_config','',0,4,NULL,0,NULL,NULL),(5,1,NULL,'width','0',0,5,NULL,0,NULL,NULL),(6,1,NULL,'max_size','-1',0,6,NULL,0,NULL,NULL),(7,1,NULL,'placeholder','',0,7,NULL,0,NULL,NULL),(8,1,NULL,'confirm_field','false',0,8,NULL,0,NULL,NULL),(9,2,NULL,'exportable','false',0,9,NULL,0,NULL,NULL),(10,2,NULL,'exportable_pdf','false',0,10,NULL,0,NULL,NULL),(11,2,'%e','anonymizable','true',0,11,NULL,0,NULL,NULL),(12,2,NULL,'text_config','',0,12,NULL,0,NULL,NULL),(13,2,NULL,'width','0',0,13,NULL,0,NULL,NULL),(14,2,NULL,'max_size','-1',0,14,NULL,0,NULL,NULL),(15,2,NULL,'placeholder','',0,15,NULL,0,NULL,NULL),(16,2,NULL,'confirm_field','false',0,16,NULL,0,NULL,NULL),(17,3,NULL,'exportable','false',0,17,NULL,0,NULL,NULL),(18,3,NULL,'exportable_pdf','false',0,18,NULL,0,NULL,NULL),(19,3,'%e','anonymizable','true',0,19,NULL,0,NULL,NULL),(20,3,NULL,'text_config','',0,20,NULL,0,NULL,NULL),(21,3,NULL,'width','0',0,21,NULL,0,NULL,NULL),(22,3,NULL,'max_size','-1',0,22,NULL,0,NULL,NULL),(23,3,NULL,'placeholder','',0,23,NULL,0,NULL,NULL),(24,3,NULL,'confirm_field','false',0,24,NULL,0,NULL,NULL),(25,4,NULL,'exportable','false',0,25,NULL,0,NULL,NULL),(26,4,NULL,'exportable_pdf','false',0,26,NULL,0,NULL,NULL),(27,4,'%e','anonymizable','true',0,27,NULL,0,NULL,NULL),(28,4,NULL,'autocomplete',NULL,0,28,NULL,0,NULL,NULL),(29,4,NULL,'defaultRegion','FR',0,29,NULL,0,NULL,NULL),(30,4,NULL,'placeholder','',0,30,NULL,0,NULL,NULL),(31,5,NULL,'exportable','false',0,31,NULL,0,NULL,NULL),(32,5,NULL,'exportable_pdf','false',0,32,NULL,0,NULL,NULL),(33,5,NULL,'anonymizable','false',0,33,NULL,0,NULL,NULL),(34,5,'1','use_ref_list','true',0,34,NULL,0,NULL,NULL),(347,5,'Espace Public','answer_choice','espace_public',0,347,NULL,0,NULL,NULL),(348,5,'Logement et Habitat','answer_choice','logement_habitat',0,348,NULL,0,NULL,NULL),(349,5,'Affaires Scolaires','answer_choice','affaires_scolaires',0,349,NULL,0,NULL,NULL),(350,40,NULL,'exportable','false',0,350,NULL,0,NULL,NULL),(351,40,NULL,'exportable_pdf','false',0,351,NULL,0,NULL,NULL),(352,40,NULL,'anonymizable','false',0,352,NULL,0,NULL,NULL),(353,40,'3','use_ref_list','true',0,353,NULL,0,NULL,NULL),(354,40,'Ecoles','answer_choice','ecoles',0,354,NULL,0,NULL,NULL),(355,40,'Centres de Loisirs','answer_choice','centres_loisirs',0,355,NULL,0,NULL,NULL),(356,40,'Petite Enfance','answer_choice','petite_enfance',0,356,NULL,0,NULL,NULL),(357,41,NULL,'exportable','false',0,357,NULL,0,NULL,NULL),(358,41,NULL,'exportable_pdf','false',0,358,NULL,0,NULL,NULL),(359,41,NULL,'anonymizable','false',0,359,NULL,0,NULL,NULL),(360,41,'2','use_ref_list','true',0,360,NULL,0,NULL,NULL),(361,41,'Voirie','answer_choice','voirie',0,361,NULL,0,NULL,NULL),(362,41,'Espaces Verts','answer_choice','espaces_verts',0,362,NULL,0,NULL,NULL),(363,42,NULL,'exportable','false',0,363,NULL,0,NULL,NULL),(364,42,NULL,'exportable_pdf','false',0,364,NULL,0,NULL,NULL),(365,42,'%e','anonymizable','true',0,365,NULL,0,NULL,NULL),(366,42,NULL,'text_config','',0,366,NULL,0,NULL,NULL),(367,42,NULL,'max_size','2500',0,367,NULL,0,NULL,NULL),(368,42,NULL,'width','0',0,368,NULL,0,NULL,NULL),(369,42,NULL,'height','8',0,369,NULL,0,NULL,NULL),(370,42,NULL,'richtext','false',0,370,NULL,0,NULL,NULL),(371,42,NULL,'placeholder','',0,371,NULL,0,NULL,NULL),(372,1,NULL,'used_in_correct_form_response','false',0,372,NULL,0,NULL,NULL),(373,1,NULL,'used_in_complete_form_response','false',0,373,NULL,0,NULL,NULL),(374,2,NULL,'used_in_correct_form_response','false',0,374,NULL,0,NULL,NULL),(375,2,NULL,'used_in_complete_form_response','false',0,375,NULL,0,NULL,NULL),(376,3,NULL,'used_in_correct_form_response','false',0,376,NULL,0,NULL,NULL),(377,3,NULL,'used_in_complete_form_response','false',0,377,NULL,0,NULL,NULL),(378,4,NULL,'used_in_correct_form_response','false',0,378,NULL,0,NULL,NULL),(379,4,NULL,'used_in_complete_form_response','false',0,379,NULL,0,NULL,NULL),(380,5,NULL,'used_in_correct_form_response','false',0,380,NULL,0,NULL,NULL),(381,5,NULL,'used_in_complete_form_response','false',0,381,NULL,0,NULL,NULL),(382,40,NULL,'used_in_correct_form_response','false',0,382,NULL,0,NULL,NULL),(383,40,NULL,'used_in_complete_form_response','false',0,383,NULL,0,NULL,NULL),(384,41,NULL,'used_in_correct_form_response','false',0,384,NULL,0,NULL,NULL),(385,41,NULL,'used_in_complete_form_response','false',0,385,NULL,0,NULL,NULL),(386,42,NULL,'used_in_correct_form_response','false',0,386,NULL,0,NULL,NULL),(387,42,NULL,'used_in_complete_form_response','true',0,387,NULL,0,NULL,NULL),(388,43,NULL,'exportable','false',0,388,NULL,0,NULL,NULL),(389,43,NULL,'exportable_pdf','false',0,389,NULL,0,NULL,NULL),(390,43,NULL,'anonymizable','false',0,390,NULL,0,NULL,NULL),(391,43,NULL,'prefix','',0,391,NULL,0,NULL,NULL),(479,55,NULL,'exportable','false',0,400,NULL,0,NULL,NULL),(480,55,NULL,'exportable_pdf','false',0,401,NULL,0,NULL,NULL),(481,55,NULL,'anonymizable','false',0,402,NULL,0,NULL,NULL),(482,55,'-1','use_ref_list','false',0,403,NULL,0,NULL,NULL),(483,55,'Prestations sociales, retraite','answer_choice','prestations_sociales_retraite',0,404,NULL,0,'',NULL),(484,55,'Généalogie','answer_choice','genealogie',0,405,NULL,0,'',NULL),(485,55,'Autre motif','answer_choice','autre_motif',0,406,NULL,0,'',NULL),(486,55,NULL,'used_in_correct_form_response','false',0,407,NULL,0,NULL,NULL),(487,55,NULL,'used_in_complete_form_response','false',0,408,NULL,0,NULL,NULL),(488,56,NULL,'exportable','false',0,409,NULL,0,NULL,NULL),(489,56,NULL,'exportable_pdf','false',0,410,NULL,0,NULL,NULL),(490,56,'','anonymizable','false',0,411,NULL,0,NULL,NULL),(491,56,NULL,'text_config','',0,412,NULL,0,NULL,NULL),(492,56,NULL,'width','0',0,413,NULL,0,NULL,NULL),(493,56,NULL,'max_size','-1',0,414,NULL,0,NULL,NULL),(494,56,NULL,'placeholder','',0,415,NULL,0,NULL,NULL),(495,56,NULL,'confirm_field','false',0,416,NULL,0,NULL,NULL),(496,56,NULL,'used_in_correct_form_response','false',0,417,NULL,0,NULL,NULL),(497,56,NULL,'used_in_complete_form_response','false',0,418,NULL,0,NULL,NULL),(498,57,NULL,'exportable','false',0,419,NULL,0,NULL,NULL),(499,57,NULL,'exportable_pdf','false',0,420,NULL,0,NULL,NULL),(500,57,NULL,'anonymizable','false',0,421,NULL,0,NULL,NULL),(501,57,NULL,'display_in_bo','false',0,422,NULL,0,NULL,NULL),(502,57,NULL,'used_in_correct_form_response','false',0,423,NULL,0,NULL,NULL),(503,57,NULL,'used_in_complete_form_response','false',0,424,NULL,0,NULL,NULL),(504,58,NULL,'exportable','false',0,425,NULL,0,NULL,NULL),(505,58,NULL,'exportable_pdf','false',0,426,NULL,0,NULL,NULL),(506,58,'','anonymizable','false',0,427,NULL,0,NULL,NULL),(507,58,NULL,'provider','wsaddress',0,428,NULL,0,NULL,NULL),(508,58,NULL,'editMode','',0,429,NULL,0,NULL,NULL),(509,58,NULL,'viewNumber','',0,430,NULL,0,NULL,NULL),(510,58,NULL,'idAddress','idAddress',0,431,NULL,0,NULL,NULL),(511,58,NULL,'address','address',0,432,NULL,0,NULL,NULL),(512,58,NULL,'additionalAddress','additionalAddress',0,433,NULL,0,NULL,NULL),(513,58,NULL,'X','X',0,434,NULL,0,NULL,NULL),(514,58,NULL,'Y','Y',0,435,NULL,0,NULL,NULL),(515,58,NULL,'geometry','geometry',0,436,NULL,0,NULL,NULL),(516,58,NULL,'used_in_correct_form_response','true',0,437,NULL,0,NULL,NULL),(517,58,NULL,'used_in_complete_form_response','false',0,438,NULL,0,NULL,NULL),(518,59,NULL,'exportable','false',0,439,NULL,0,NULL,NULL),(519,59,NULL,'exportable_pdf','false',0,440,NULL,0,NULL,NULL),(520,59,'','anonymizable','false',0,441,NULL,0,NULL,NULL),(521,59,NULL,'placeholder','',0,442,NULL,0,NULL,NULL),(522,59,NULL,'default_date_value',NULL,0,443,NULL,0,NULL,NULL),(523,59,NULL,'used_in_correct_form_response','true',0,444,NULL,0,NULL,NULL),(524,59,NULL,'used_in_complete_form_response','false',0,445,NULL,0,NULL,NULL),(525,60,NULL,'exportable','false',0,446,NULL,0,NULL,NULL),(526,60,NULL,'exportable_pdf','false',0,447,NULL,0,NULL,NULL),(527,60,'%g','anonymizable','true',0,448,NULL,0,NULL,NULL),(528,60,NULL,'text_config','',0,449,NULL,0,NULL,NULL),(529,60,NULL,'width','0',0,450,NULL,0,NULL,NULL),(530,60,NULL,'max_size','-1',0,451,NULL,0,NULL,NULL),(531,60,NULL,'placeholder','',0,452,NULL,0,NULL,NULL),(532,60,NULL,'confirm_field','false',0,453,NULL,0,NULL,NULL),(533,60,NULL,'used_in_correct_form_response','false',0,454,NULL,0,NULL,NULL),(534,60,NULL,'used_in_complete_form_response','false',0,455,NULL,0,NULL,NULL),(535,61,NULL,'exportable','false',0,456,NULL,0,NULL,NULL),(536,61,NULL,'exportable_pdf','false',0,457,NULL,0,NULL,NULL),(537,61,'%g','anonymizable','true',0,458,NULL,0,NULL,NULL),(538,61,NULL,'text_config','',0,459,NULL,0,NULL,NULL),(539,61,NULL,'width','0',0,460,NULL,0,NULL,NULL),(540,61,NULL,'max_size','-1',0,461,NULL,0,NULL,NULL),(541,61,NULL,'placeholder','',0,462,NULL,0,NULL,NULL),(542,61,NULL,'confirm_field','false',0,463,NULL,0,NULL,NULL),(543,61,NULL,'used_in_correct_form_response','false',0,464,NULL,0,NULL,NULL),(544,61,NULL,'used_in_complete_form_response','false',0,465,NULL,0,NULL,NULL),(545,62,NULL,'exportable','false',0,466,NULL,0,NULL,NULL),(546,62,NULL,'exportable_pdf','false',0,467,NULL,0,NULL,NULL),(547,62,'%g','anonymizable','true',0,468,NULL,0,NULL,NULL),(548,62,NULL,'text_config','',0,469,NULL,0,NULL,NULL),(549,62,NULL,'width','0',0,470,NULL,0,NULL,NULL),(550,62,NULL,'max_size','-1',0,471,NULL,0,NULL,NULL),(551,62,NULL,'placeholder','',0,472,NULL,0,NULL,NULL),(552,62,NULL,'confirm_field','false',0,473,NULL,0,NULL,NULL),(553,62,NULL,'used_in_correct_form_response','false',0,474,NULL,0,NULL,NULL),(554,62,NULL,'used_in_complete_form_response','false',0,475,NULL,0,NULL,NULL),(555,63,NULL,'exportable','false',0,476,NULL,0,NULL,NULL),(556,63,NULL,'exportable_pdf','false',0,477,NULL,0,NULL,NULL),(557,63,'%g','anonymizable','true',0,478,NULL,0,NULL,NULL),(558,63,NULL,'text_config','',0,479,NULL,0,NULL,NULL),(559,63,NULL,'width','0',0,480,NULL,0,NULL,NULL),(560,63,NULL,'max_size','-1',0,481,NULL,0,NULL,NULL),(561,63,NULL,'placeholder','',0,482,NULL,0,NULL,NULL),(562,63,NULL,'confirm_field','false',0,483,NULL,0,NULL,NULL),(563,63,NULL,'used_in_correct_form_response','false',0,484,NULL,0,NULL,NULL),(564,63,NULL,'used_in_complete_form_response','false',0,485,NULL,0,NULL,NULL),(565,64,NULL,'exportable','false',0,486,NULL,0,NULL,NULL),(566,64,NULL,'exportable_pdf','false',0,487,NULL,0,NULL,NULL),(567,64,'%g','anonymizable','true',0,488,NULL,0,NULL,NULL),(568,64,NULL,'text_config','',0,489,NULL,0,NULL,NULL),(569,64,NULL,'width','0',0,490,NULL,0,NULL,NULL),(570,64,NULL,'max_size','-1',0,491,NULL,0,NULL,NULL),(571,64,NULL,'placeholder','',0,492,NULL,0,NULL,NULL),(572,64,NULL,'confirm_field','false',0,493,NULL,0,NULL,NULL),(573,64,NULL,'used_in_correct_form_response','false',0,494,NULL,0,NULL,NULL),(574,64,NULL,'used_in_complete_form_response','false',0,495,NULL,0,NULL,NULL),(575,65,NULL,'exportable','false',0,496,NULL,0,NULL,NULL),(576,65,NULL,'exportable_pdf','false',0,497,NULL,0,NULL,NULL),(577,65,'%g','anonymizable','true',0,498,NULL,0,NULL,NULL),(578,65,NULL,'text_config','',0,499,NULL,0,NULL,NULL),(579,65,NULL,'width','0',0,500,NULL,0,NULL,NULL),(580,65,NULL,'max_size','-1',0,501,NULL,0,NULL,NULL),(581,65,NULL,'placeholder','',0,502,NULL,0,NULL,NULL),(582,65,NULL,'confirm_field','false',0,503,NULL,0,NULL,NULL),(583,65,NULL,'used_in_correct_form_response','false',0,504,NULL,0,NULL,NULL),(584,65,NULL,'used_in_complete_form_response','false',0,505,NULL,0,NULL,NULL),(585,66,NULL,'exportable','false',0,506,NULL,0,NULL,NULL),(586,66,NULL,'exportable_pdf','false',0,507,NULL,0,NULL,NULL),(587,66,'%g','anonymizable','true',0,508,NULL,0,NULL,NULL),(588,66,NULL,'text_config','',0,509,NULL,0,NULL,NULL),(589,66,NULL,'width','0',0,510,NULL,0,NULL,NULL),(590,66,NULL,'max_size','-1',0,511,NULL,0,NULL,NULL),(591,66,NULL,'placeholder','',0,512,NULL,0,NULL,NULL),(592,66,NULL,'confirm_field','false',0,513,NULL,0,NULL,NULL),(593,66,NULL,'used_in_correct_form_response','false',0,514,NULL,0,NULL,NULL),(594,66,NULL,'used_in_complete_form_response','false',0,515,NULL,0,NULL,NULL),(595,67,NULL,'exportable','false',0,516,NULL,0,NULL,NULL),(596,67,NULL,'exportable_pdf','false',0,517,NULL,0,NULL,NULL),(597,67,'%g','anonymizable','true',0,518,NULL,0,NULL,NULL),(598,67,NULL,'text_config','',0,519,NULL,0,NULL,NULL),(599,67,NULL,'width','0',0,520,NULL,0,NULL,NULL),(600,67,NULL,'max_size','-1',0,521,NULL,0,NULL,NULL),(601,67,NULL,'placeholder','',0,522,NULL,0,NULL,NULL),(602,67,NULL,'confirm_field','false',0,523,NULL,0,NULL,NULL),(603,67,NULL,'used_in_correct_form_response','false',0,524,NULL,0,NULL,NULL),(604,67,NULL,'used_in_complete_form_response','false',0,525,NULL,0,NULL,NULL),(605,68,NULL,'exportable','false',0,526,NULL,0,NULL,NULL),(606,68,NULL,'exportable_pdf','false',0,527,NULL,0,NULL,NULL),(607,68,'%g','anonymizable','true',0,528,NULL,0,NULL,NULL),(608,68,NULL,'text_config','',0,529,NULL,0,NULL,NULL),(609,68,NULL,'width','0',0,530,NULL,0,NULL,NULL),(610,68,NULL,'max_size','-1',0,531,NULL,0,NULL,NULL),(611,68,NULL,'placeholder','',0,532,NULL,0,NULL,NULL),(612,68,NULL,'confirm_field','false',0,533,NULL,0,NULL,NULL),(613,68,NULL,'used_in_correct_form_response','false',0,534,NULL,0,NULL,NULL),(614,68,NULL,'used_in_complete_form_response','false',0,535,NULL,0,NULL,NULL),(615,69,NULL,'exportable','false',0,536,NULL,0,NULL,NULL),(616,69,NULL,'exportable_pdf','false',0,537,NULL,0,NULL,NULL),(617,69,'%g','anonymizable','true',0,538,NULL,0,NULL,NULL),(618,69,NULL,'text_config','',0,539,NULL,0,NULL,NULL),(619,69,NULL,'width','0',0,540,NULL,0,NULL,NULL),(620,69,NULL,'max_size','-1',0,541,NULL,0,NULL,NULL),(621,69,NULL,'placeholder','',0,542,NULL,0,NULL,NULL),(622,69,NULL,'confirm_field','false',0,543,NULL,0,NULL,NULL),(623,69,NULL,'used_in_correct_form_response','false',0,544,NULL,0,NULL,NULL),(624,69,NULL,'used_in_complete_form_response','false',0,545,NULL,0,NULL,NULL),(625,70,NULL,'exportable','false',0,546,NULL,0,NULL,NULL),(626,70,NULL,'exportable_pdf','false',0,547,NULL,0,NULL,NULL),(627,70,'%g','anonymizable','true',0,548,NULL,0,NULL,NULL),(628,70,NULL,'text_config','',0,549,NULL,0,NULL,NULL),(629,70,NULL,'width','0',0,550,NULL,0,NULL,NULL),(630,70,NULL,'max_size','-1',0,551,NULL,0,NULL,NULL),(631,70,NULL,'placeholder','',0,552,NULL,0,NULL,NULL),(632,70,NULL,'confirm_field','false',0,553,NULL,0,NULL,NULL),(633,70,NULL,'used_in_correct_form_response','false',0,554,NULL,0,NULL,NULL),(634,70,NULL,'used_in_complete_form_response','false',0,555,NULL,0,NULL,NULL),(635,71,NULL,'exportable','false',0,556,NULL,0,NULL,NULL),(636,71,NULL,'exportable_pdf','false',0,557,NULL,0,NULL,NULL),(637,71,'%g','anonymizable','true',0,558,NULL,0,NULL,NULL),(638,71,NULL,'text_config','',0,559,NULL,0,NULL,NULL),(639,71,NULL,'width','0',0,560,NULL,0,NULL,NULL),(640,71,NULL,'max_size','-1',0,561,NULL,0,NULL,NULL),(641,71,NULL,'placeholder','',0,562,NULL,0,NULL,NULL),(642,71,NULL,'confirm_field','false',0,563,NULL,0,NULL,NULL),(643,71,NULL,'used_in_correct_form_response','false',0,564,NULL,0,NULL,NULL),(644,71,NULL,'used_in_complete_form_response','false',0,565,NULL,0,NULL,NULL),(645,72,NULL,'exportable','false',0,566,NULL,0,NULL,NULL),(646,72,NULL,'exportable_pdf','false',0,567,NULL,0,NULL,NULL),(647,72,NULL,'anonymizable','false',0,568,NULL,0,NULL,NULL),(648,72,'-1','use_ref_list','false',0,569,NULL,0,NULL,NULL),(649,72,'Le titulaire de l\'acte','answer_choice','le_titulaire_de_lacte',0,570,NULL,0,'',NULL),(650,72,'Son parent ou son grand-parent','answer_choice','son_parent_ou_son_grandparent',0,571,NULL,0,'',NULL),(651,72,'son fils ou sa fille. son petit-fils ou sa petite-fille','answer_choice','son_fils_ou_sa_fille_son_petitfils_ou_sa_petitefille',0,572,NULL,0,'',NULL),(652,72,'Son conjoint','answer_choice','son_conjoint',0,573,NULL,0,'',NULL),(653,72,'son frère ou sa soeur. Son oncle ou sa tante','answer_choice','son_frere_ou_sa_soeur_son_oncle_ou_sa_tante',0,574,NULL,0,'',NULL),(654,72,'Autre','answer_choice','autre',0,575,NULL,0,'',NULL),(655,72,NULL,'used_in_correct_form_response','false',0,576,NULL,0,NULL,NULL),(656,72,NULL,'used_in_complete_form_response','false',0,577,NULL,0,NULL,NULL),(657,73,NULL,'exportable','false',0,578,NULL,0,NULL,NULL),(658,73,NULL,'exportable_pdf','false',0,579,NULL,0,NULL,NULL),(659,73,'','anonymizable','false',0,580,NULL,0,NULL,NULL),(660,73,NULL,'text_config',NULL,0,581,NULL,0,NULL,NULL),(661,73,NULL,'min','1',0,582,NULL,0,NULL,NULL),(662,73,NULL,'max','2',0,583,NULL,0,NULL,NULL),(663,73,NULL,'suffix','',0,584,NULL,0,NULL,NULL),(664,73,NULL,'placeholder','',0,585,NULL,0,NULL,NULL),(665,73,NULL,'used_in_correct_form_response','false',0,586,NULL,0,NULL,NULL),(666,73,NULL,'used_in_complete_form_response','false',0,587,NULL,0,NULL,NULL),(667,74,NULL,'exportable','false',0,588,NULL,0,NULL,NULL),(668,74,NULL,'exportable_pdf','false',0,589,NULL,0,NULL,NULL),(669,74,NULL,'anonymizable','false',0,590,NULL,0,NULL,NULL),(670,74,'-1','use_ref_list','false',0,591,NULL,0,NULL,NULL),(671,74,'Une copie intégrale de l\'acte Reproduction de l\'acte original, mentions marginales comprises','answer_choice','une_copie_integrale_de_lacte_reproduction_de_lacte_original_mentions_marginales_comprises',0,592,NULL,0,'',NULL),(672,74,'Un extrait d\'acte avec filiation Regroupe l\'identité de l\'interressé(e), de ses parents et les dernières mentions marginales','answer_choice','un_extrait_dacte_avec_filiation_regroupe_lidentite_de_linterressee_de_ses_parents_et_les_dernieres_mentions_marginales',0,593,NULL,0,'',NULL),(673,74,'Un extrait d\'acte avec filiation Regroupe l\'identité de l\'interressé(e), de ses parents et les dernières mentions marginales','answer_choice','un_extrait_dacte_avec_filiation_regroupe_lidentite_de_linterressee_de_ses_parents_et_les_dernieres_mentions_marginales',0,594,NULL,0,'',NULL),(674,74,'Un extrait plurilingue Extrait d\'acte d\'état civil, destiné à être utilisé à l\'étranger','answer_choice','un_extrait_plurilingue_extrait_dacte_detat_civil_destine_a_etre_utilise_a_letranger',0,595,NULL,0,'',NULL),(675,74,NULL,'used_in_correct_form_response','false',0,596,NULL,0,NULL,NULL),(676,74,NULL,'used_in_complete_form_response','false',0,597,NULL,0,NULL,NULL),(677,75,NULL,'exportable','false',0,598,NULL,0,NULL,NULL),(678,75,NULL,'exportable_pdf','false',0,599,NULL,0,NULL,NULL),(679,75,NULL,'anonymizable','false',0,600,NULL,0,NULL,NULL),(680,75,NULL,'display_in_bo','false',0,601,NULL,0,NULL,NULL),(681,75,NULL,'used_in_correct_form_response','false',0,602,NULL,0,NULL,NULL),(682,75,NULL,'used_in_complete_form_response','false',0,603,NULL,0,NULL,NULL),(703,78,NULL,'exportable','false',0,624,NULL,0,NULL,NULL),(704,78,NULL,'exportable_pdf','false',0,625,NULL,0,NULL,NULL),(705,78,'%g','anonymizable','true',0,626,NULL,0,NULL,NULL),(706,78,NULL,'text_config','',0,627,NULL,0,NULL,NULL),(707,78,NULL,'width','0',0,628,NULL,0,NULL,NULL),(708,78,NULL,'max_size','-1',0,629,NULL,0,NULL,NULL),(709,78,NULL,'placeholder','',0,630,NULL,0,NULL,NULL),(710,78,NULL,'confirm_field','false',0,631,NULL,0,NULL,NULL),(711,78,NULL,'used_in_correct_form_response','true',0,632,NULL,0,NULL,NULL),(712,78,NULL,'used_in_complete_form_response','true',0,633,NULL,0,NULL,NULL),(719,80,NULL,'exportable','false',0,640,NULL,0,NULL,NULL),(720,80,NULL,'exportable_pdf','false',0,641,NULL,0,NULL,NULL),(721,80,'','anonymizable','false',0,642,NULL,0,NULL,NULL),(722,80,NULL,'text_config','',0,643,NULL,0,NULL,NULL),(723,80,NULL,'width','0',0,644,NULL,0,NULL,NULL),(724,80,NULL,'max_size','-1',0,645,NULL,0,NULL,NULL),(725,80,NULL,'placeholder','',0,646,NULL,0,NULL,NULL),(726,80,NULL,'confirm_field','false',0,647,NULL,0,NULL,NULL),(727,80,NULL,'used_in_correct_form_response','false',0,648,NULL,0,NULL,NULL),(728,80,NULL,'used_in_complete_form_response','false',0,649,NULL,0,NULL,NULL),(729,81,NULL,'exportable','false',0,650,NULL,0,NULL,NULL),(730,81,NULL,'exportable_pdf','false',0,651,NULL,0,NULL,NULL),(731,81,NULL,'anonymizable','false',0,652,NULL,0,NULL,NULL),(732,81,NULL,'display_in_bo','false',0,653,NULL,0,NULL,NULL),(733,81,NULL,'used_in_correct_form_response','false',0,654,NULL,0,NULL,NULL),(734,81,NULL,'used_in_complete_form_response','false',0,655,NULL,0,NULL,NULL),(735,82,NULL,'exportable','false',0,656,NULL,0,NULL,NULL),(736,82,NULL,'exportable_pdf','false',0,657,NULL,0,NULL,NULL),(737,82,'%g','anonymizable','true',0,658,NULL,0,NULL,NULL),(738,82,NULL,'text_config','',0,659,NULL,0,NULL,NULL),(739,82,NULL,'width','0',0,660,NULL,0,NULL,NULL),(740,82,NULL,'max_size','-1',0,661,NULL,0,NULL,NULL),(741,82,NULL,'placeholder','',0,662,NULL,0,NULL,NULL),(742,82,NULL,'confirm_field','false',0,663,NULL,0,NULL,NULL),(743,82,NULL,'used_in_correct_form_response','false',0,664,NULL,0,NULL,NULL),(744,82,NULL,'used_in_complete_form_response','false',0,665,NULL,0,NULL,NULL),(745,83,NULL,'exportable','false',0,666,NULL,0,NULL,NULL),(746,83,NULL,'exportable_pdf','false',0,667,NULL,0,NULL,NULL),(747,83,'%g','anonymizable','true',0,668,NULL,0,NULL,NULL),(748,83,NULL,'attribute_name','user.name.given',0,669,NULL,0,NULL,NULL),(749,84,NULL,'exportable','false',0,670,NULL,0,NULL,NULL),(750,84,NULL,'exportable_pdf','false',0,671,NULL,0,NULL,NULL),(751,84,'%g','anonymizable','true',0,672,NULL,0,NULL,NULL),(752,84,NULL,'attribute_name','user.name.family',0,673,NULL,0,NULL,NULL),(753,85,NULL,'exportable','false',0,674,NULL,0,NULL,NULL),(754,85,NULL,'exportable_pdf','false',0,675,NULL,0,NULL,NULL),(755,85,NULL,'anonymizable','false',0,676,NULL,0,NULL,NULL),(756,85,NULL,'display_in_bo','false',0,677,NULL,0,NULL,NULL),(757,85,NULL,'used_in_correct_form_response','false',0,678,NULL,0,NULL,NULL),(758,85,NULL,'used_in_complete_form_response','false',0,679,NULL,0,NULL,NULL),(759,86,NULL,'exportable','false',0,680,NULL,0,NULL,NULL),(760,86,NULL,'exportable_pdf','false',0,681,NULL,0,NULL,NULL),(761,86,NULL,'anonymizable','false',0,682,NULL,0,NULL,NULL),(762,86,NULL,'link','Lien',0,683,NULL,0,NULL,NULL),(763,86,NULL,'tos','<p>&lt;p&gt;J&amp;rsquo;accepte les conditions g&amp;eacute;n&amp;eacute;rales d&amp;rsquo;utilisation et je certifie sur l&amp;rsquo;honneur l&amp;rsquo;exactitude des informations fournies. Il est rappel&amp;eacute; que toute personne proc&amp;eacute;dant &amp;agrave; une fausse d&amp;eacute;claration pour elle-m&amp;ecirc;me ou pour autrui peut s&amp;rsquo;exposer aux sanctions pr&amp;eacute;vues aux articles 441-1 du code p&amp;eacute;nal et suivants.&lt;/p&gt;</p>',0,684,NULL,0,NULL,NULL),(764,86,NULL,'agreement','false',0,685,NULL,0,NULL,NULL),(765,86,NULL,'used_in_correct_form_response','false',0,686,NULL,0,NULL,NULL),(766,86,NULL,'used_in_complete_form_response','false',0,687,NULL,0,NULL,NULL),(767,87,NULL,'exportable','false',0,688,NULL,0,NULL,NULL),(768,87,NULL,'exportable_pdf','false',0,689,NULL,0,NULL,NULL),(769,87,NULL,'anonymizable','false',0,690,NULL,0,NULL,NULL),(770,87,NULL,'prefix','',0,691,NULL,0,NULL,NULL),(771,87,NULL,'used_in_correct_form_response','false',0,692,NULL,0,NULL,NULL),(772,87,NULL,'used_in_complete_form_response','false',0,693,NULL,0,NULL,NULL),(773,83,NULL,'used_in_correct_form_response','false',0,694,NULL,0,NULL,NULL),(774,83,NULL,'used_in_complete_form_response','false',0,695,NULL,0,NULL,NULL),(775,84,NULL,'used_in_correct_form_response','false',0,696,NULL,0,NULL,NULL),(776,84,NULL,'used_in_complete_form_response','false',0,697,NULL,0,NULL,NULL),(782,1,NULL,'disabled','false',0,698,NULL,0,NULL,NULL),(783,2,NULL,'disabled','false',0,699,NULL,0,NULL,NULL),(784,3,NULL,'disabled','false',0,700,NULL,0,NULL,NULL),(785,4,NULL,'disabled','false',0,701,NULL,0,NULL,NULL),(786,42,NULL,'disabled','false',0,702,NULL,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_response`
--

LOCK TABLES `genatt_response` WRITE;
/*!40000 ALTER TABLE `genatt_response` DISABLE KEYS */;
INSERT INTO `genatt_response` VALUES (67,'prestations_sociales_retraite',55,0,483,NULL,1,0),(68,'',56,0,NULL,NULL,1,0),(69,'85188_d3tyrt',58,0,510,NULL,1,0),(70,'la place 85210 La Réorthe',58,0,511,NULL,1,0),(71,'-1.066207',58,0,513,NULL,1,0),(72,'46.601912',58,0,514,NULL,1,0),(73,'street',58,0,515,NULL,1,0),(74,'1709510400000',59,0,NULL,NULL,1,0),(75,'',60,0,NULL,NULL,1,0),(76,'',61,0,NULL,NULL,1,0),(77,'',62,0,NULL,NULL,1,0),(78,'',63,0,NULL,NULL,1,0),(79,'',64,0,NULL,NULL,1,0),(80,'',65,0,NULL,NULL,1,0),(81,'',66,0,NULL,NULL,1,0),(82,'',69,0,NULL,NULL,1,0),(83,'',67,0,NULL,NULL,1,0),(84,'',70,0,NULL,NULL,1,0),(85,'',68,0,NULL,NULL,1,0),(86,'',71,0,NULL,NULL,1,0),(87,NULL,72,0,NULL,NULL,1,0),(88,'',73,0,NULL,NULL,1,0),(89,NULL,74,0,NULL,NULL,1,0),(98,'prestations_sociales_retraite',55,0,483,NULL,1,0),(99,'2a209_41w80b',58,0,510,NULL,1,0),(100,'Terminone 20167 Peri',58,0,511,NULL,1,0),(101,'8.862041',58,0,513,NULL,1,0),(102,'42.004148',58,0,514,NULL,1,0),(103,'street',58,0,515,NULL,1,0),(104,'1717200000000',59,0,NULL,NULL,1,0),(105,'Connor',60,0,NULL,NULL,1,0),(106,'Sarah',61,0,NULL,NULL,1,0),(107,'Reese',62,0,NULL,NULL,1,0),(108,'Kyle',63,0,NULL,NULL,1,0),(109,'',64,0,NULL,NULL,1,0),(110,'',65,0,NULL,NULL,1,0),(111,'',66,0,NULL,NULL,1,0),(112,'',69,0,NULL,NULL,1,0),(113,'',67,0,NULL,NULL,1,0),(114,'',70,0,NULL,NULL,1,0),(115,'',68,0,NULL,NULL,1,0),(116,'',71,0,NULL,NULL,1,0),(117,'son_fils_ou_sa_fille_son_petitfils_ou_sa_petitefille',72,0,651,NULL,1,0),(118,'1',73,0,NULL,NULL,1,0),(119,'une_copie_integrale_de_lacte_reproduction_de_lacte_original_mentions_marginales_comprises',74,0,671,NULL,1,0),(120,'test',84,0,NULL,NULL,1,0),(121,'test',83,0,NULL,NULL,1,0),(122,'john.connor@citelibre.org',82,0,NULL,NULL,1,0),(123,'',78,0,NULL,NULL,1,0),(124,'',80,0,NULL,NULL,1,0),(125,'true',86,0,764,NULL,1,0),(126,'<p>&lt;p&gt;J&amp;rsquo;accepte les conditions g&amp;eacute;n&amp;eacute;rales d&amp;rsquo;utilisation et je certifie sur l&amp;rsquo;honneur l&amp;rsquo;exactitude des informations fournies. Il est rappel&amp;eacute; que toute personne proc&amp;eacute;dant &amp;agrave; une fausse d&amp;eacute;claration pour elle-m&amp;ecirc;me ou pour autrui peut s&amp;rsquo;exposer aux sanctions pr&amp;eacute;vues aux articles 441-1 du code p&amp;eacute;nal et suivants.&lt;/p&gt;</p>',86,0,763,NULL,1,0),(127,'1',87,0,NULL,NULL,1,0),(128,'CiteLibre',1,0,NULL,NULL,1,0),(129,'Citoyen',2,0,NULL,NULL,1,0),(130,'citoyen.citelibre@citelibre.org',3,0,NULL,NULL,1,0),(131,'',4,0,NULL,NULL,1,0),(132,'espace_public',5,0,347,NULL,1,0),(133,'voirie',41,0,361,NULL,1,0),(134,'Bonjour,\r\n\r\nPourriez-vous, s\'il vous plaît, installer un feu de circulation à l\'angle de l\'avenue de la République et de la rue Jean Jaurès?\r\nCette intersection est dangereuse.\r\n\r\nBien cordialement\r\nCitoyen Citelibre',42,0,NULL,NULL,1,0),(135,'1',43,0,NULL,NULL,1,0);
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
INSERT INTO `html_portlet` VALUES (2,'<ul class=\"features\"> \n <li>Lutece is FreeSoftware. Full OpenSource licensed under BSD.</li> \n <li>Full responsive design Back and Front</li> \n <li>Compliant with Twitter Bootstrap themes</li> \n <li>Very modular and flexible architecture based on plugins, APIs, IoC</li> \n <li>Over 300 plugins available for many needs : Content Management, Collaborative, Workflows, ...</li> \n <li>Runs on Java Platform and rely on powerful build tools such as Apache Maven</li> \n <li>Uses best of breed Java Open Source stacks : Lucene, Spring, Ehcache, Freemarker, ...</li> \n</ul> \n<p class=\"logo\">&nbsp;</p>'),(4,'<h2>Get into the Back Office of this demo site</h2> \n<p class=\"mb20\">Sign in as administrator with <em>admin/adminadmin</em>.</p> \n<p><a class=\"btn btn-primary\" title=\"Access to admin [Open  in new window]\" href=\"jsp/admin/AdminLogin.jsp\" target=\"\"><span class=\"fa fa-door-open\">&nbsp;</span> Enter Back Office</a></p> \n<p>&nbsp;</p>'),(5,'<h3>Resources</h3> \n<hr> \n<div class=\"row\"> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"GitHub site [Open  in new window]\" href=\"https://github.com/lutece-platform\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/github-logo.png\" alt=\"Github logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Access to our code repository</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Docker Hub site [Open  in new window]\" href=\"https://hub.docker.com/u/lutece\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/docker-logo.png\" alt=\"Docker images\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Grab some Docker images to run demos</h4> \n   </div> \n  </div> \n </div> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Lutece Wiki site [Open  in new window]\" href=\"https://fr.lutece.paris.fr/fr/jsp/site/Portal.jsp?page=wiki&amp;action=changeLanguage&amp;page_name=home&amp;language=en\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/wiki-logo.png\" alt=\"WIKI\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Read our technical documentation</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\" Twitter Site [Open  in new window]\" href=\"https://twitter.com/LuteceNews\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/twitter-logo.png\" alt=\"Twitter logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Follow us on Twitter</h4> \n   </div> \n  </div> \n </div> \n</div>'),(6,'<section id=\"lutece\" class=\"lutece\">\r\n    <div class=\"container\">\r\n        <div class=\"row align-items-center\">\r\n            <div class=\"col-lg-6\">\r\n                <div class=\"lutece-content\">\r\n                    <h1 class=\"my-3\">CiteLibre Service\'EZ, votre outil clé en main</h1>\r\n                    <p class=\"font-weight-bold\" >\r\n                        FR : CiteLibre est la suite logicielle de services numériques clé en main réutilisant les composants du framework open source <a href=\"https://lutece.paris.fr/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. Elle permet aux municipalités de tester, réutiliser et de paramétrer les services disponibles pour répondre à leurs besoins. CiteLibre est gratuit, open source, entièrement personnalisable et sécurisé.<br/>\r\nFélicitations, vous avez déployé votre service numérique de démarches en ligne paramétrable. Prochaine étape, créer votre propre formulaire. Toute la documentation est disponible <a href=\"https://lutece.paris.fr/support/wiki/howto-plugin-forms.html\" title=\"Wiki Lutece - Forms\" target=\"_blank\">ici</a>. <br/>\r\nAu fil de l\'utilisation de l\'application, vous pourrez exploiter des outils d\'aide à la décision (statistiques métier réalisées avec la couche ElasticSearch / Kibana). Mettez en place les règles de gestion propre à vos usages et appropriez-vous les détails des notifications envoyées à vos usagers.\r\n                    </p>\r\n                    <p class=\"font-weight-bold\">\r\n                        EN: <i>CiteLibre is the turnkey digital services software suite reusing components from the open source framework <a href=\"https://lutece.paris.fr/en/\" title=\"Site Lutece\" target=\"_blank\">Lutece</a>. It enables municipalities to test, reuse and parameterize the services available to meet their needs. CiteLibre is free, open source, fully customizable and secure.<br/>\r\nCongratulations, you\'ve deployed your digital administrative procedure system. Next step is to create your own form. The full documentation is available <a href=\"https://lutece.paris.fr/support/wiki/howto-plugin-forms.html\" title=\"Wiki Lutece - Forms\" target=\"_blank\">here</a>.<br/>\r\nAs you use the application, you\'ll be able to harness decision-making tools (business statistics produced with the ElasticSearch / Kibana suite). Set up management rules specific to your uses and take ownership of the details of notifications sent to your users.</i>\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-6\">\r\n                <img src=\"images/site/city-home.svg\" alt=\"\">\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>'),(7,'<div class=\"lutece-content mt-5\">\r\n	<h2 class=\"my-3\">Connectez-vous à l\'administration de l\'application</h2>\r\n	<p class=\"font-weight-bold\">FR : Connectez-vous à l\'interface d\'administration en utilisant le login <strong>\"admin\"</strong> et le mot de passe <strong>\"adminadmin\"</strong> (vous serez invités à réinitialiser le mot de passe). Vous pourrez alors personnaliser les services de démo.<br/>Vous trouverez également tous les <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Liens utiles\">liens utiles</a> avec les informations de connexion pour utiliser tous les services mis à disposition dans l\'application.</p>\r\n	<p class=\"font-weight-bold\">EN: <i>Log in to the administration interface using login <strong>\"admin\"</strong> and password <strong>\"adminadmin\"</strong> (you will be prompted to reset the password). You can test each of its features and customize the demo form.<br/>You will also find all <a href=\"jsp/site/Portal.jsp?page_id=3\" title=\"Useful links\">Useful links</a> with connection credentials to use all available features.</i></p>\r\n	<p class=\"text-center\">\r\n		<a class=\"btn-solid-reg\" href=\"jsp/admin/AdminLogin.jsp\" target=\"_blank\" title=\"Go to admin login page [Open in new window]\">\r\n			<span class=\"icon\"><i class=\"ti ti-user-cog\"></i></span>\r\n			<span class=\"text\">Administration</span>\r\n		</a>\r\n	</p>\r\n</div>'),(8,'<h2>Choisissez le meilleur parcours usager pour accéder à vos services numériques</h2>\r\n<p class=\"text-center\">\r\n	<a class=\"btn-solid-reg\" href=\"jsp/site/Portal.jsp?page=forms&view=stepView&id_form=4&init=true\" target=\"_blank\" title=\"Démo\">\r\n		<span class=\"icon\"><i class=\"ti ti-map-2\"></i></span>\r\n		<span class=\"text\">Acte de Mariage</span>\r\n	</a>\r\n	<a class=\"btn-solid-reg\" href=\"jsp/site/Portal.jsp?page=forms&view=stepView&id_form=1&init=true\" target=\"_blank\" title=\"Démo\">\r\n		<span class=\"icon\"><i class=\"ti ti-map-2\"></i></span>\r\n		<span class=\"text\">Contacter ma Mairie</span>\r\n	</a>\r\n</p>'),(10,'<p><strong>ServiceEZ</strong> est un service numérique qui comprend un ensemble de fonctionnalités rendues possibles grâce à l\'ajout de serveurs tiers permettant notamment les statistiques de visites (<strong>Matomo</strong>) et métier (<strong>ElasticSearch</strong> et <strong>Kibana</strong>), ou encore l\'authentification en back office (<strong>keycloak</strong>). Seuls les emails sont émulés par un outil (<strong>MailPit</strong>) permettant d\'intercepter tous les envois effectués depuis l\'application pour vous donner une bonne idée des possibilités. Ces envois seront à pérenniser en utilisant votre propre serveur de messagerie d\'entreprise.</p>\r\n<p>Voici l\'ensemble des liens vers ces applicatifs, avec les identifiants des comptes utilisateurs vous permettant de vous connecter aux interfaces d\'administration :</p>\r\n\r\n<style>\r\ntable {\r\n	font-family: arial, sans-serif;\r\n	border-collapse: collapse;\r\n	width: 100%;\r\n}\r\n\r\ntd, th {\r\n	border: 1px solid #dddddd;\r\n	text-align: left;\r\n	padding: 4px;\r\n}\r\n\r\n/*tr:nth-child(even) {\r\n	background-color: #ff3300;\r\n}*/\r\n</style>\r\n\r\n<table>\r\n	<tr style=\"background-color: #ff3300;\">\r\n		<th>Service</th>\r\n		<th>Identifiants</th>\r\n		<th>Commentaires</th>\r\n	</tr>\r\n	<tr>\r\n		<td><b>Back Office Service\'EZ</b><br/><a href=\"http://localhost:8080/serviceEZ/jsp/admin/site/AdminLogin.jsp\" target=\"_blank\">(lien)</a></td>\r\n		<td>Identifiant : admin<br/>Mot de passe : adminadmin<br/><i>Lors de la première connexion, il vous sera demandé de le modifier</i></td>\r\n		<td>Le \"back office\" est l\'interface d\'administration de votre application de gestion des démarches en ligne paramétrables. Il vous permet de gérer les comptes et leurs autorisations associées, l\'éditorial, le paramétrage de votre application, et de gérer les démarches des usagers au quotidien : créer vos nouvelles démarches, définissez votre flux de travail et les notifications à envoyer, et laissez l\'application faire le reste.</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>MailPit</b><br/><a href=\"http://localhost:1080/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nécessaire</td>\r\n		<td>MailPit est un petit outil permettant d\'intercepter les notifications envoyées sur un port particulier pour en afficher le contenu avec une légère mise en forme. Il suffit de cliquer sur une ligne de notification pour déplier le contenu. Cela vous permet de tester les envois effectués par l\'application.</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>Matomo</b><br/><a href=\"http://localhost/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nécessaire</td>\r\n		<td>Matomo est un logiciel libre et open source de mesure de statistiques d\'audience. Lorsqu\'un usager navigue sur l\'application, les pages qu\'il consulte, le temps passé, ainsi que les éléments techniques de son origine géographe, et son navigateur internet sont consultables depuis cette interface, mais également dans le back office de l\'application (menu \"Site\" -> \"Statistiques Web Matomo\").</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>SolR</b><br/><a href=\"http://localhost:8983/solr/#/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nécessaire</td>\r\n		<td>SolR est une base de données optimisée pour la recherche, conçue sous licence libre. Elle est utilisée pour indexer les créneaux disponibles de façon optimisée et pour restituer ces disponibilités sur une carte géographique.</td>\r\n	</tr>\r\n	<tr>\r\n		<td><b>ElasticSearch / Kibana</b><br/><a href=\"http://localhost:5601/s/dev/app/home#/\" target=\"_blank\">(lien)</a></td>\r\n		<td>Pas d\'identifiant nécessaire</td>\r\n		<td>ElasticSearch est également une base de données permettant l\'indexation optimisée de données. Cette pile est utilisée pour stocker les statistiques métier liées à l\'utilisation du service. Vous pourrez ensuite paramétrer votre propre tableau de bord pour exploiter ces données</td>\r\n	</tr>\r\n	<tr>\r\n		<td rowspan=\"2\"><b>Keycloak</b><br/><a href=\"http://localhost:8081/admin/\" target=\"_blank\">(lien)</a></td>\r\n		<td>(<i>Compte admin</i>)<br/>Identifiant : admin<br/>Mot de passe : admin1234</td>\r\n		<td rowspan=\"2\">Keycloak est un outil open source permettant de l\'authentification unique et la gestion d\'identité, développé par la communauté WildFly et hébergé par RedHat.</td>\r\n	</tr>\r\n	<tr>\r\n		<td>(<i>Compte utilisateur de démo</i>)<br/>Identifiant : test@paris.fr<br/>Mot de passe : test1234=TEST1234</td>\r\n	</tr>\r\n</table>');
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
INSERT INTO `referencelist_reference` VALUES (1,'Demandes de contact','Thématiques liées aux demandes de contact'),(2,'espace_public','Thématiques liées aux demandes relatives à l\'espace public'),(3,'affaires_scolaires','Thématiques liées aux demandes relatives aux affaires scolaires');
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
INSERT INTO `regularexpression_regular_expression` VALUES (1,'Fichier JPG','image/jpeg','image/jpeg','Expression régulière pour les fichiers de type jpeg.','Le format du fichier n\'est pas valide. Veuillez choisir une image de type jpeg.'),(2,'Email','(^([a-zA-Z0-9]+(([\\.\\-\\_]?[a-zA-Z0-9]+)+)?)\\@(([a-zA-Z0-9]+[\\.\\-\\_])+[a-zA-Z]{2,4})$)|(^$)','admin@lutece.fr','Expression régulière pour les emails.','Le format de l\'email est incorrect.');
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
INSERT INTO `solr_indexer_action` VALUES (1,'5',2,'FORMS_FORM',-1),(2,'7',3,'FORMS_FORM',-1),(3,'8',3,'FORMS_FORM',-1),(4,'6',3,'FORMS_FORM',-1),(5,'40',2,'FORMS_FORM',-1),(6,'41',2,'FORMS_FORM',-1),(7,'42',2,'FORMS_FORM',-1),(8,'43',2,'FORMS_FORM',-1),(13,'44',2,'FORMS_FORM',-1),(14,'45',2,'FORMS_FORM',-1),(15,'46',3,'FORMS_FORM',-1),(16,'47',3,'FORMS_FORM',-1),(17,'48',3,'FORMS_FORM',-1),(18,'49',3,'FORMS_FORM',-1),(19,'50',3,'FORMS_FORM',-1),(20,'51',3,'FORMS_FORM',-1),(21,'52',3,'FORMS_FORM',-1),(22,'53',3,'FORMS_FORM',-1),(23,'54',3,'FORMS_FORM',-1),(24,'9',3,'FORMS_FORM',-1),(25,'10',3,'FORMS_FORM',-1),(26,'11',3,'FORMS_FORM',-1),(27,'12',3,'FORMS_FORM',-1),(28,'13',3,'FORMS_FORM',-1),(29,'14',3,'FORMS_FORM',-1),(30,'15',3,'FORMS_FORM',-1),(31,'16',3,'FORMS_FORM',-1),(32,'17',3,'FORMS_FORM',-1),(33,'18',3,'FORMS_FORM',-1),(34,'19',3,'FORMS_FORM',-1),(35,'20',3,'FORMS_FORM',-1),(36,'23',3,'FORMS_FORM',-1),(37,'21',3,'FORMS_FORM',-1),(38,'24',3,'FORMS_FORM',-1),(39,'22',3,'FORMS_FORM',-1),(40,'25',3,'FORMS_FORM',-1),(41,'26',3,'FORMS_FORM',-1),(42,'27',3,'FORMS_FORM',-1),(43,'28',3,'FORMS_FORM',-1),(44,'29',3,'FORMS_FORM',-1),(45,'30',3,'FORMS_FORM',-1),(46,'31',3,'FORMS_FORM',-1),(47,'32',3,'FORMS_FORM',-1),(48,'33',3,'FORMS_FORM',-1),(49,'34',3,'FORMS_FORM',-1),(50,'35',3,'FORMS_FORM',-1),(51,'36',3,'FORMS_FORM',-1),(52,'44',3,'FORMS_FORM',-1),(53,'45',3,'FORMS_FORM',-1),(54,'37',3,'FORMS_FORM',-1),(55,'38',3,'FORMS_FORM',-1),(56,'39',3,'FORMS_FORM',-1),(57,'57',2,'FORMS_FORM',-1),(58,'75',2,'FORMS_FORM',-1),(59,'79',2,'FORMS_FORM',-1),(60,'81',2,'FORMS_FORM',-1),(61,'82',2,'FORMS_FORM',-1),(62,'2',1,'FORMS_FORM_RESPONSE',-1),(63,'2',2,'FORMS_FORM_RESPONSE',-1),(64,'2',2,'FORMS_FORM_RESPONSE',-1),(65,'2',2,'FORMS_FORM_RESPONSE',-1),(66,'60',2,'FORMS_FORM',-1),(67,'61',2,'FORMS_FORM',-1),(68,'62',2,'FORMS_FORM',-1),(69,'63',2,'FORMS_FORM',-1),(70,'64',2,'FORMS_FORM',-1),(71,'65',2,'FORMS_FORM',-1),(72,'66',2,'FORMS_FORM',-1),(73,'69',2,'FORMS_FORM',-1),(74,'67',2,'FORMS_FORM',-1),(75,'70',2,'FORMS_FORM',-1),(76,'68',2,'FORMS_FORM',-1),(77,'71',2,'FORMS_FORM',-1),(78,'78',2,'FORMS_FORM',-1),(79,'76',2,'FORMS_FORM',-1),(80,'77',2,'FORMS_FORM',-1),(81,'82',2,'FORMS_FORM',-1),(82,'83',2,'FORMS_FORM',-1),(83,'84',2,'FORMS_FORM',-1),(84,'2',2,'FORMS_FORM_RESPONSE',-1),(85,'3',2,'FORMS_FORM_RESPONSE',-1),(86,'79',3,'FORMS_FORM',-1),(87,'88',2,'FORMS_FORM',-1),(88,'88',3,'FORMS_FORM',-1),(89,'76',3,'FORMS_FORM',-1),(90,'77',3,'FORMS_FORM',-1),(91,'1',2,'FORMS_FORM',-1),(92,'2',2,'FORMS_FORM',-1),(93,'3',2,'FORMS_FORM',-1),(94,'4',2,'FORMS_FORM',-1),(95,'42',2,'FORMS_FORM',-1),(96,'1',2,'FORMS_FORM_RESPONSE',-1),(97,'1',3,'FORMS_FORM_RESPONSE',-1),(98,'4',2,'FORMS_FORM_RESPONSE',-1),(99,'4',3,'FORMS_FORM_RESPONSE',-1),(100,'6',1,'FORMS_FORM_RESPONSE',-1),(101,'6',2,'FORMS_FORM_RESPONSE',-1),(102,'6',2,'FORMS_FORM_RESPONSE',-1);
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
INSERT INTO `template_field` VALUES (1,1,'-1','use_ref_list','false',0,1,NULL,0,NULL),(2,1,'','anonymizable','false',0,2,NULL,0,NULL),(3,1,'-1','use_ref_list','false',0,3,NULL,0,NULL),(4,1,'','anonymizable','false',0,4,NULL,0,NULL),(5,1,NULL,'used_in_correct_form_response','false',0,5,NULL,0,NULL),(6,1,NULL,'used_in_complete_form_response','false',0,6,NULL,0,NULL),(7,1,NULL,'exportable','true',0,7,NULL,0,NULL),(8,1,NULL,'text_config','',0,8,NULL,0,NULL),(9,1,NULL,'width','0',0,9,NULL,0,NULL),(10,1,NULL,'max_size','-1',0,10,NULL,0,NULL),(11,1,NULL,'confirm_field','false',0,11,NULL,0,NULL),(12,1,NULL,'exportable_pdf','true',0,12,NULL,0,NULL),(13,2,'-1','use_ref_list','false',0,13,NULL,0,NULL),(14,2,'','anonymizable','false',0,14,NULL,0,NULL),(15,2,'-1','use_ref_list','false',0,15,NULL,0,NULL),(16,2,'','anonymizable','false',0,16,NULL,0,NULL),(17,2,NULL,'used_in_correct_form_response','false',0,17,NULL,0,NULL),(18,2,NULL,'used_in_complete_form_response','false',0,18,NULL,0,NULL),(19,2,NULL,'exportable','false',0,19,NULL,0,NULL),(20,2,NULL,'default_date_value',NULL,0,20,NULL,0,NULL),(21,3,'-1','use_ref_list','false',0,21,NULL,0,NULL),(22,3,'','anonymizable','false',0,22,NULL,0,NULL),(23,3,'-1','use_ref_list','false',0,23,NULL,0,NULL),(24,3,'','anonymizable','false',0,24,NULL,0,NULL),(25,3,NULL,'used_in_correct_form_response','false',0,25,NULL,0,NULL),(26,3,NULL,'used_in_complete_form_response','false',0,26,NULL,0,NULL),(27,3,NULL,'exportable','true',0,27,NULL,0,NULL),(28,3,NULL,'text_config','',0,28,NULL,0,NULL),(29,3,NULL,'width','0',0,29,NULL,0,NULL),(30,3,NULL,'max_size','-1',0,30,NULL,0,NULL),(31,3,NULL,'confirm_field','false',0,31,NULL,0,NULL),(32,3,NULL,'exportable_pdf','true',0,32,NULL,0,NULL),(33,4,'-1','anonymizable','false',0,33,NULL,0,NULL),(34,4,'-1','use_ref_list','false',0,34,NULL,0,NULL),(35,4,'','anonymizable','false',0,35,NULL,0,NULL),(36,4,'-1','use_ref_list','false',0,36,NULL,0,NULL),(37,4,'','anonymizable','false',0,37,NULL,0,NULL),(38,4,NULL,'used_in_correct_form_response','false',0,38,NULL,0,NULL),(39,4,NULL,'used_in_complete_form_response','false',0,39,NULL,0,NULL),(40,4,NULL,'exportable','false',0,40,NULL,0,NULL),(41,4,'Salarié ','answer_choice','Salarie',0,41,NULL,0,''),(42,4,'Free-lance ','answer_choice','Free_lance',0,42,NULL,0,''),(43,4,'Apprenti ','answer_choice','Apprenti',0,43,NULL,0,''),(44,4,'Stagiaire','answer_choice','Stagiaire',0,44,NULL,0,''),(45,5,'-1','use_ref_list','false',0,45,NULL,0,NULL),(46,5,'','anonymizable','false',0,46,NULL,0,NULL),(47,5,'-1','use_ref_list','false',0,47,NULL,0,NULL),(48,5,'','anonymizable','false',0,48,NULL,0,NULL),(49,5,NULL,'used_in_correct_form_response','false',0,49,NULL,0,NULL),(50,5,NULL,'used_in_complete_form_response','false',0,50,NULL,0,NULL),(51,5,NULL,'exportable','false',0,51,NULL,0,NULL),(52,5,NULL,'text_config','',0,52,NULL,0,NULL),(53,5,NULL,'width','0',0,53,NULL,0,NULL),(54,5,NULL,'max_size','-1',0,54,NULL,0,NULL),(55,5,NULL,'confirm_field','false',0,55,NULL,0,NULL),(56,6,'-1','use_ref_list','false',0,56,NULL,0,NULL),(57,6,'','anonymizable','false',0,57,NULL,0,NULL),(58,6,'-1','use_ref_list','false',0,58,NULL,0,NULL),(59,6,'','anonymizable','false',0,59,NULL,0,NULL),(60,6,NULL,'used_in_correct_form_response','false',0,60,NULL,0,NULL),(61,6,NULL,'used_in_complete_form_response','false',0,61,NULL,0,NULL),(62,6,NULL,'exportable','false',0,62,NULL,0,NULL),(63,6,NULL,'text_config','',0,63,NULL,0,NULL),(64,6,NULL,'width','0',0,64,NULL,0,NULL),(65,6,NULL,'max_size','-1',0,65,NULL,0,NULL),(66,6,NULL,'confirm_field','false',0,66,NULL,0,NULL),(67,7,'-1','use_ref_list','false',0,67,NULL,0,NULL),(68,7,'','anonymizable','false',0,68,NULL,0,NULL),(69,7,'-1','use_ref_list','false',0,69,NULL,0,NULL),(70,7,'','anonymizable','false',0,70,NULL,0,NULL),(71,7,NULL,'used_in_correct_form_response','false',0,71,NULL,0,NULL),(72,7,NULL,'used_in_complete_form_response','false',0,72,NULL,0,NULL),(73,7,NULL,'exportable','false',0,73,NULL,0,NULL),(74,7,NULL,'text_config','',0,74,NULL,0,NULL),(75,7,NULL,'width','0',0,75,NULL,0,NULL),(76,7,NULL,'max_size','-1',0,76,NULL,0,NULL),(77,7,NULL,'confirm_field','false',0,77,NULL,0,NULL),(78,8,'-1','use_ref_list','false',0,78,NULL,0,NULL),(79,8,'','anonymizable','false',0,79,NULL,0,NULL),(80,8,'-1','use_ref_list','false',0,80,NULL,0,NULL),(81,8,'','anonymizable','false',0,81,NULL,0,NULL),(82,8,NULL,'used_in_correct_form_response','false',0,82,NULL,0,NULL),(83,8,NULL,'used_in_complete_form_response','false',0,83,NULL,0,NULL),(84,8,NULL,'exportable','false',0,84,NULL,0,NULL),(85,8,NULL,'text_config','',0,85,NULL,0,NULL),(86,8,NULL,'width','0',0,86,NULL,0,NULL),(87,8,NULL,'max_size','-1',0,87,NULL,0,NULL),(88,8,NULL,'confirm_field','false',0,88,NULL,0,NULL),(89,9,'-1','anonymizable','false',0,89,NULL,0,NULL),(90,9,'-1','use_ref_list','false',0,90,NULL,0,NULL),(91,9,'','anonymizable','false',0,91,NULL,0,NULL),(92,9,'-1','use_ref_list','false',0,92,NULL,0,NULL),(93,9,'','anonymizable','false',0,93,NULL,0,NULL),(94,9,NULL,'used_in_correct_form_response','false',0,94,NULL,0,NULL),(95,9,NULL,'used_in_complete_form_response','false',0,95,NULL,0,NULL),(96,9,NULL,'exportable','true',0,96,NULL,0,NULL),(97,9,'moins de 50 000 euros par an','answer_choice','moins_de_50_000_euros_par_an',0,97,NULL,0,''),(98,9,'moins de 100 000 euros par an','answer_choice','moins_de_100_000_euros_par_an',0,98,NULL,0,''),(99,9,'moins de 200 000 euros par an','answer_choice','moins_de_200_000_euros_par_an',0,99,NULL,0,''),(100,9,'+ de 200 000 euros par an','answer_choice','plus_de_200_000_euros_par_an',0,100,NULL,0,''),(101,9,NULL,'exportable_pdf','true',0,101,NULL,0,NULL),(102,10,'-1','use_ref_list','false',0,102,NULL,0,NULL),(103,10,'','anonymizable','false',0,103,NULL,0,NULL),(104,10,'-1','use_ref_list','false',0,104,NULL,0,NULL),(105,10,'','anonymizable','false',0,105,NULL,0,NULL),(106,10,NULL,'used_in_correct_form_response','false',0,106,NULL,0,NULL),(107,10,NULL,'used_in_complete_form_response','false',0,107,NULL,0,NULL),(108,10,NULL,'exportable','true',0,108,NULL,0,NULL),(109,10,NULL,'text_config','',0,109,NULL,0,NULL),(110,10,NULL,'width','0',0,110,NULL,0,NULL),(111,10,NULL,'max_size','-1',0,111,NULL,0,NULL),(112,10,NULL,'confirm_field','false',0,112,NULL,0,NULL),(113,10,NULL,'exportable_pdf','true',0,113,NULL,0,NULL),(114,11,'-1','use_ref_list','false',0,114,NULL,0,NULL),(115,11,'','anonymizable','false',0,115,NULL,0,NULL),(116,11,'-1','use_ref_list','false',0,116,NULL,0,NULL),(117,11,'','anonymizable','false',0,117,NULL,0,NULL),(118,11,NULL,'used_in_correct_form_response','false',0,118,NULL,0,NULL),(119,11,NULL,'used_in_complete_form_response','false',0,119,NULL,0,NULL),(120,11,NULL,'exportable','true',0,120,NULL,0,NULL),(121,11,NULL,'text_config','',0,121,NULL,0,NULL),(122,11,NULL,'width','0',0,122,NULL,0,NULL),(123,11,NULL,'max_size','-1',0,123,NULL,0,NULL),(124,11,NULL,'confirm_field','false',0,124,NULL,0,NULL),(125,11,NULL,'exportable_pdf','true',0,125,NULL,0,NULL),(126,12,'-1','use_ref_list','false',0,126,NULL,0,NULL),(127,12,'','anonymizable','false',0,127,NULL,0,NULL),(128,12,'-1','use_ref_list','false',0,128,NULL,0,NULL),(129,12,'','anonymizable','false',0,129,NULL,0,NULL),(130,12,NULL,'used_in_correct_form_response','false',0,130,NULL,0,NULL),(131,12,NULL,'used_in_complete_form_response','false',0,131,NULL,0,NULL),(132,12,NULL,'exportable','true',0,132,NULL,0,NULL),(133,12,NULL,'text_config','',0,133,NULL,0,NULL),(134,12,NULL,'width','0',0,134,NULL,0,NULL),(135,12,NULL,'max_size','-1',0,135,NULL,0,NULL),(136,12,NULL,'confirm_field','false',0,136,NULL,0,NULL),(137,12,NULL,'exportable_pdf','true',0,137,NULL,0,NULL),(138,13,'-1','use_ref_list','false',0,138,NULL,0,NULL),(139,13,'','anonymizable','false',0,139,NULL,0,NULL),(140,13,'-1','use_ref_list','false',0,140,NULL,0,NULL),(141,13,'','anonymizable','false',0,141,NULL,0,NULL),(142,13,NULL,'used_in_correct_form_response','false',0,142,NULL,0,NULL),(143,13,NULL,'used_in_complete_form_response','false',0,143,NULL,0,NULL),(144,13,NULL,'exportable','true',0,144,NULL,0,NULL),(145,13,NULL,'text_config','',0,145,NULL,0,NULL),(146,13,NULL,'width','0',0,146,NULL,0,NULL),(147,13,NULL,'max_size','-1',0,147,NULL,0,NULL),(148,13,NULL,'confirm_field','false',0,148,NULL,0,NULL),(149,13,NULL,'exportable_pdf','true',0,149,NULL,0,NULL),(150,14,'-1','use_ref_list','false',0,150,NULL,0,NULL),(151,14,'','anonymizable','false',0,151,NULL,0,NULL),(152,14,'-1','use_ref_list','false',0,152,NULL,0,NULL),(153,14,'','anonymizable','false',0,153,NULL,0,NULL),(154,14,NULL,'used_in_correct_form_response','false',0,154,NULL,0,NULL),(155,14,NULL,'used_in_complete_form_response','false',0,155,NULL,0,NULL),(156,14,NULL,'exportable','true',0,156,NULL,0,NULL),(157,14,NULL,'text_config','',0,157,NULL,0,NULL),(158,14,NULL,'width','0',0,158,NULL,0,NULL),(159,14,NULL,'max_size','-1',0,159,NULL,0,NULL),(160,14,NULL,'confirm_field','false',0,160,NULL,0,NULL),(161,14,NULL,'exportable_pdf','true',0,161,NULL,0,NULL),(162,15,'-1','use_ref_list','false',0,162,NULL,0,NULL),(163,15,'','anonymizable','false',0,163,NULL,0,NULL),(164,15,'-1','use_ref_list','false',0,164,NULL,0,NULL),(165,15,'','anonymizable','false',0,165,NULL,0,NULL),(166,15,NULL,'used_in_correct_form_response','false',0,166,NULL,0,NULL),(167,15,NULL,'used_in_complete_form_response','false',0,167,NULL,0,NULL),(168,15,NULL,'exportable','true',0,168,NULL,0,NULL),(169,15,NULL,'text_config','',0,169,NULL,0,NULL),(170,15,NULL,'width','0',0,170,NULL,0,NULL),(171,15,NULL,'max_size','-1',0,171,NULL,0,NULL),(172,15,NULL,'confirm_field','false',0,172,NULL,0,NULL),(173,15,NULL,'exportable_pdf','true',0,173,NULL,0,NULL),(174,16,'-1','use_ref_list','false',0,174,NULL,0,NULL),(175,16,'','anonymizable','false',0,175,NULL,0,NULL),(176,16,'-1','use_ref_list','false',0,176,NULL,0,NULL),(177,16,'','anonymizable','false',0,177,NULL,0,NULL),(178,16,NULL,'used_in_correct_form_response','false',0,178,NULL,0,NULL),(179,16,NULL,'used_in_complete_form_response','false',0,179,NULL,0,NULL),(180,16,NULL,'exportable','true',0,180,NULL,0,NULL),(181,16,NULL,'text_config','',0,181,NULL,0,NULL),(182,16,NULL,'width','0',0,182,NULL,0,NULL),(183,16,NULL,'max_size','-1',0,183,NULL,0,NULL),(184,16,NULL,'confirm_field','false',0,184,NULL,0,NULL),(185,16,NULL,'exportable_pdf','true',0,185,NULL,0,NULL),(186,17,'-1','use_ref_list','false',0,186,NULL,0,NULL),(187,17,'','anonymizable','false',0,187,NULL,0,NULL),(188,17,'-1','use_ref_list','false',0,188,NULL,0,NULL),(189,17,'','anonymizable','false',0,189,NULL,0,NULL),(190,17,NULL,'used_in_correct_form_response','false',0,190,NULL,0,NULL),(191,17,NULL,'used_in_complete_form_response','false',0,191,NULL,0,NULL),(192,17,NULL,'exportable','true',0,192,NULL,0,NULL),(193,17,NULL,'text_config','',0,193,NULL,0,NULL),(194,17,NULL,'width','0',0,194,NULL,0,NULL),(195,17,NULL,'max_size','-1',0,195,NULL,0,NULL),(196,17,NULL,'confirm_field','false',0,196,NULL,0,NULL),(197,17,NULL,'exportable_pdf','true',0,197,NULL,0,NULL),(198,18,'-1','use_ref_list','false',0,198,NULL,0,NULL),(199,18,'','anonymizable','false',0,199,NULL,0,NULL),(200,18,'-1','use_ref_list','false',0,200,NULL,0,NULL),(201,18,'','anonymizable','false',0,201,NULL,0,NULL),(202,18,NULL,'used_in_correct_form_response','false',0,202,NULL,0,NULL),(203,18,NULL,'used_in_complete_form_response','false',0,203,NULL,0,NULL),(204,18,NULL,'exportable','true',0,204,NULL,0,NULL),(205,18,NULL,'text_config','',0,205,NULL,0,NULL),(206,18,NULL,'width','0',0,206,NULL,0,NULL),(207,18,NULL,'max_size','-1',0,207,NULL,0,NULL),(208,18,NULL,'confirm_field','false',0,208,NULL,0,NULL),(209,18,NULL,'exportable_pdf','true',0,209,NULL,0,NULL),(210,19,'-1','use_ref_list','false',0,210,NULL,0,NULL),(211,19,'','anonymizable','false',0,211,NULL,0,NULL),(212,19,'-1','use_ref_list','false',0,212,NULL,0,NULL),(213,19,'','anonymizable','false',0,213,NULL,0,NULL),(214,19,NULL,'used_in_correct_form_response','false',0,214,NULL,0,NULL),(215,19,NULL,'used_in_complete_form_response','false',0,215,NULL,0,NULL),(216,19,NULL,'exportable','true',0,216,NULL,0,NULL),(217,19,NULL,'attribute_name','user.home-info.online.email',0,217,NULL,0,NULL),(218,19,NULL,'exportable_pdf','true',0,218,NULL,0,NULL),(219,20,'-1','use_ref_list','false',0,219,NULL,0,NULL),(220,20,'','anonymizable','false',0,220,NULL,0,NULL),(221,20,'-1','use_ref_list','false',0,221,NULL,0,NULL),(222,20,'','anonymizable','false',0,222,NULL,0,NULL),(223,20,NULL,'used_in_correct_form_response','false',0,223,NULL,0,NULL),(224,20,NULL,'used_in_complete_form_response','false',0,224,NULL,0,NULL),(225,20,NULL,'exportable','true',0,225,NULL,0,NULL),(226,20,NULL,'text_config','',0,226,NULL,0,NULL),(227,20,NULL,'width','0',0,227,NULL,0,NULL),(228,20,NULL,'max_size','-1',0,228,NULL,0,NULL),(229,20,NULL,'confirm_field','false',0,229,NULL,0,NULL),(230,20,NULL,'exportable_pdf','true',0,230,NULL,0,NULL),(231,21,'-1','use_ref_list','false',0,231,NULL,0,NULL),(232,21,'','anonymizable','false',0,232,NULL,0,NULL),(233,21,'-1','use_ref_list','false',0,233,NULL,0,NULL),(234,21,'','anonymizable','false',0,234,NULL,0,NULL),(235,21,NULL,'used_in_correct_form_response','false',0,235,NULL,0,NULL),(236,21,NULL,'used_in_complete_form_response','false',0,236,NULL,0,NULL),(237,21,NULL,'exportable','true',0,237,NULL,0,NULL),(238,21,NULL,'text_config','',0,238,NULL,0,NULL),(239,21,NULL,'width','0',0,239,NULL,0,NULL),(240,21,NULL,'max_size','-1',0,240,NULL,0,NULL),(241,21,NULL,'confirm_field','false',0,241,NULL,0,NULL),(242,21,NULL,'exportable_pdf','true',0,242,NULL,0,NULL),(243,22,'-1','use_ref_list','false',0,243,NULL,0,NULL),(244,22,'','anonymizable','false',0,244,NULL,0,NULL),(245,22,'-1','use_ref_list','false',0,245,NULL,0,NULL),(246,22,'','anonymizable','false',0,246,NULL,0,NULL),(247,22,NULL,'used_in_correct_form_response','false',0,247,NULL,0,NULL),(248,22,NULL,'used_in_complete_form_response','false',0,248,NULL,0,NULL),(249,22,NULL,'exportable','true',0,249,NULL,0,NULL),(250,22,NULL,'text_config','',0,250,NULL,0,NULL),(251,22,NULL,'width','0',0,251,NULL,0,NULL),(252,22,NULL,'max_size','-1',0,252,NULL,0,NULL),(253,22,NULL,'confirm_field','false',0,253,NULL,0,NULL),(254,22,NULL,'exportable_pdf','true',0,254,NULL,0,NULL),(255,23,'-1','use_ref_list','false',0,255,NULL,0,NULL),(256,23,'','anonymizable','false',0,256,NULL,0,NULL),(257,23,'-1','use_ref_list','false',0,257,NULL,0,NULL),(258,23,'','anonymizable','false',0,258,NULL,0,NULL),(259,23,NULL,'used_in_correct_form_response','false',0,259,NULL,0,NULL),(260,23,NULL,'used_in_complete_form_response','false',0,260,NULL,0,NULL),(261,23,NULL,'exportable','true',0,261,NULL,0,NULL),(262,23,NULL,'text_config','',0,262,NULL,0,NULL),(263,23,NULL,'width','0',0,263,NULL,0,NULL),(264,23,NULL,'max_size','-1',0,264,NULL,0,NULL),(265,23,NULL,'confirm_field','false',0,265,NULL,0,NULL),(266,23,NULL,'exportable_pdf','true',0,266,NULL,0,NULL),(267,24,'-1','use_ref_list','false',0,267,NULL,0,NULL),(268,24,'','anonymizable','false',0,268,NULL,0,NULL),(269,24,'-1','use_ref_list','false',0,269,NULL,0,NULL),(270,24,'','anonymizable','false',0,270,NULL,0,NULL),(271,24,NULL,'used_in_correct_form_response','false',0,271,NULL,0,NULL),(272,24,NULL,'used_in_complete_form_response','false',0,272,NULL,0,NULL),(273,24,NULL,'exportable','true',0,273,NULL,0,NULL),(274,24,NULL,'text_config','',0,274,NULL,0,NULL),(275,24,NULL,'width','0',0,275,NULL,0,NULL),(276,24,NULL,'max_size','-1',0,276,NULL,0,NULL),(277,24,NULL,'confirm_field','false',0,277,NULL,0,NULL),(278,24,NULL,'exportable_pdf','true',0,278,NULL,0,NULL),(279,25,'-1','use_ref_list','false',0,279,NULL,0,NULL),(280,25,'','anonymizable','false',0,280,NULL,0,NULL),(281,25,'-1','use_ref_list','false',0,281,NULL,0,NULL),(282,25,'','anonymizable','false',0,282,NULL,0,NULL),(283,25,NULL,'used_in_correct_form_response','false',0,283,NULL,0,NULL),(284,25,NULL,'used_in_complete_form_response','false',0,284,NULL,0,NULL),(285,25,NULL,'exportable','true',0,285,NULL,0,NULL),(286,25,NULL,'text_config','',0,286,NULL,0,NULL),(287,25,NULL,'width','0',0,287,NULL,0,NULL),(288,25,NULL,'max_size','-1',0,288,NULL,0,NULL),(289,25,NULL,'confirm_field','false',0,289,NULL,0,NULL),(290,25,NULL,'exportable_pdf','true',0,290,NULL,0,NULL),(291,26,'-1','use_ref_list','false',0,291,NULL,0,NULL),(292,26,'','anonymizable','false',0,292,NULL,0,NULL),(293,26,'-1','use_ref_list','false',0,293,NULL,0,NULL),(294,26,'','anonymizable','false',0,294,NULL,0,NULL),(295,26,NULL,'used_in_correct_form_response','false',0,295,NULL,0,NULL),(296,26,NULL,'used_in_complete_form_response','true',0,296,NULL,0,NULL),(297,26,NULL,'exportable','true',0,297,NULL,0,NULL),(298,26,NULL,'file_max_size','2097152',0,298,NULL,0,NULL),(299,26,NULL,'max_files','1',0,299,NULL,0,NULL),(300,26,NULL,'export_binary','false',0,300,NULL,0,NULL),(301,27,'-1','anonymizable','false',0,301,NULL,0,NULL),(302,27,'-1','use_ref_list','false',0,302,NULL,0,NULL),(303,27,'','anonymizable','false',0,303,NULL,0,NULL),(304,27,'-1','use_ref_list','false',0,304,NULL,0,NULL),(305,27,'','anonymizable','false',0,305,NULL,0,NULL),(306,27,NULL,'used_in_correct_form_response','false',0,306,NULL,0,NULL),(307,27,NULL,'used_in_complete_form_response','false',0,307,NULL,0,NULL),(308,27,NULL,'exportable','true',0,308,NULL,0,NULL),(309,27,'Association','answer_choice','Association',0,309,NULL,0,''),(310,27,'société','answer_choice','societe',0,310,NULL,0,''),(311,27,'Personne physique','answer_choice','personne_physique',0,311,NULL,0,''),(312,28,'-1','use_ref_list','false',0,312,NULL,0,NULL),(313,28,'','anonymizable','false',0,313,NULL,0,NULL),(314,28,'-1','use_ref_list','false',0,314,NULL,0,NULL),(315,28,'','anonymizable','false',0,315,NULL,0,NULL),(316,28,NULL,'used_in_correct_form_response','false',0,316,NULL,0,NULL),(317,28,NULL,'used_in_complete_form_response','false',0,317,NULL,0,NULL),(318,28,NULL,'exportable','true',0,318,NULL,0,NULL),(319,28,NULL,'text_config','',0,319,NULL,0,NULL),(320,28,NULL,'width','0',0,320,NULL,0,NULL),(321,28,NULL,'max_size','-1',0,321,NULL,0,NULL),(322,28,NULL,'confirm_field','false',0,322,NULL,0,NULL),(323,29,'-1','use_ref_list','false',0,323,NULL,0,NULL),(324,29,'','anonymizable','false',0,324,NULL,0,NULL),(325,29,'-1','use_ref_list','false',0,325,NULL,0,NULL),(326,29,'','anonymizable','false',0,326,NULL,0,NULL),(327,29,NULL,'used_in_correct_form_response','false',0,327,NULL,0,NULL),(328,29,NULL,'used_in_complete_form_response','false',0,328,NULL,0,NULL),(329,29,NULL,'exportable','true',0,329,NULL,0,NULL),(330,29,NULL,'text_config','',0,330,NULL,0,NULL),(331,29,NULL,'width','0',0,331,NULL,0,NULL),(332,29,NULL,'max_size','-1',0,332,NULL,0,NULL),(333,29,NULL,'confirm_field','false',0,333,NULL,0,NULL),(334,30,'-1','use_ref_list','false',0,334,NULL,0,NULL),(335,30,'','anonymizable','false',0,335,NULL,0,NULL),(336,30,'-1','use_ref_list','false',0,336,NULL,0,NULL),(337,30,'','anonymizable','false',0,337,NULL,0,NULL),(338,30,NULL,'used_in_correct_form_response','false',0,338,NULL,0,NULL),(339,30,NULL,'used_in_complete_form_response','false',0,339,NULL,0,NULL),(340,30,NULL,'exportable','true',0,340,NULL,0,NULL),(341,30,NULL,'text_config','',0,341,NULL,0,NULL),(342,30,NULL,'width','0',0,342,NULL,0,NULL),(343,30,NULL,'max_size','-1',0,343,NULL,0,NULL),(344,30,NULL,'confirm_field','false',0,344,NULL,0,NULL),(345,31,'-1','use_ref_list','false',0,345,NULL,0,NULL),(346,31,'','anonymizable','false',0,346,NULL,0,NULL),(347,31,'-1','use_ref_list','false',0,347,NULL,0,NULL),(348,31,'','anonymizable','false',0,348,NULL,0,NULL),(349,31,NULL,'used_in_correct_form_response','false',0,349,NULL,0,NULL),(350,31,NULL,'used_in_complete_form_response','false',0,350,NULL,0,NULL),(351,31,NULL,'exportable','true',0,351,NULL,0,NULL),(352,31,NULL,'text_config','',0,352,NULL,0,NULL),(353,31,NULL,'width','0',0,353,NULL,0,NULL),(354,31,NULL,'max_size','-1',0,354,NULL,0,NULL),(355,31,NULL,'confirm_field','false',0,355,NULL,0,NULL),(356,32,'-1','anonymizable','false',0,356,NULL,0,NULL),(357,32,'-1','use_ref_list','false',0,357,NULL,0,NULL),(358,32,'','anonymizable','false',0,358,NULL,0,NULL),(359,32,'-1','use_ref_list','false',0,359,NULL,0,NULL),(360,32,'','anonymizable','false',0,360,NULL,0,NULL),(361,32,NULL,'used_in_correct_form_response','false',0,361,NULL,0,NULL),(362,32,NULL,'used_in_complete_form_response','false',0,362,NULL,0,NULL),(363,32,NULL,'exportable','true',0,363,NULL,0,NULL),(364,32,'Madame','answer_choice','Madame',0,364,NULL,0,''),(365,32,'Monsieur','answer_choice','Monsieur',0,365,NULL,0,''),(366,33,'-1','use_ref_list','false',0,366,NULL,0,NULL),(367,33,'','anonymizable','false',0,367,NULL,0,NULL),(368,33,'-1','use_ref_list','false',0,368,NULL,0,NULL),(369,33,'','anonymizable','false',0,369,NULL,0,NULL),(370,33,NULL,'used_in_correct_form_response','false',0,370,NULL,0,NULL),(371,33,NULL,'used_in_complete_form_response','false',0,371,NULL,0,NULL),(372,33,NULL,'exportable','true',0,372,NULL,0,NULL),(373,33,NULL,'text_config','',0,373,NULL,0,NULL),(374,33,NULL,'width','0',0,374,NULL,0,NULL),(375,33,NULL,'max_size','-1',0,375,NULL,0,NULL),(376,33,NULL,'confirm_field','false',0,376,NULL,0,NULL),(377,34,'-1','use_ref_list','false',0,377,NULL,0,NULL),(378,34,'','anonymizable','false',0,378,NULL,0,NULL),(379,34,'-1','use_ref_list','false',0,379,NULL,0,NULL),(380,34,'','anonymizable','false',0,380,NULL,0,NULL),(381,34,NULL,'used_in_correct_form_response','false',0,381,NULL,0,NULL),(382,34,NULL,'used_in_complete_form_response','false',0,382,NULL,0,NULL),(383,34,NULL,'exportable','true',0,383,NULL,0,NULL),(384,34,NULL,'text_config','',0,384,NULL,0,NULL),(385,34,NULL,'width','0',0,385,NULL,0,NULL),(386,34,NULL,'max_size','-1',0,386,NULL,0,NULL),(387,34,NULL,'confirm_field','false',0,387,NULL,0,NULL),(388,35,'-1','use_ref_list','false',0,388,NULL,0,NULL),(389,35,'','anonymizable','false',0,389,NULL,0,NULL),(390,35,'-1','use_ref_list','false',0,390,NULL,0,NULL),(391,35,'','anonymizable','false',0,391,NULL,0,NULL),(392,35,NULL,'used_in_correct_form_response','false',0,392,NULL,0,NULL),(393,35,NULL,'used_in_complete_form_response','false',0,393,NULL,0,NULL),(394,35,NULL,'exportable','true',0,394,NULL,0,NULL),(395,35,NULL,'text_config','',0,395,NULL,0,NULL),(396,35,NULL,'width','0',0,396,NULL,0,NULL),(397,35,NULL,'max_size','-1',0,397,NULL,0,NULL),(398,35,NULL,'confirm_field','false',0,398,NULL,0,NULL),(399,36,'-1','use_ref_list','false',0,399,NULL,0,NULL),(400,36,'','anonymizable','false',0,400,NULL,0,NULL),(401,36,'-1','use_ref_list','false',0,401,NULL,0,NULL),(402,36,'','anonymizable','false',0,402,NULL,0,NULL),(403,36,NULL,'used_in_correct_form_response','false',0,403,NULL,0,NULL),(404,36,NULL,'used_in_complete_form_response','false',0,404,NULL,0,NULL),(405,36,NULL,'exportable','true',0,405,NULL,0,NULL),(406,36,NULL,'text_config','',0,406,NULL,0,NULL),(407,36,NULL,'width','0',0,407,NULL,0,NULL),(408,36,NULL,'max_size','-1',0,408,NULL,0,NULL),(409,36,NULL,'confirm_field','false',0,409,NULL,0,NULL),(410,37,'-1','use_ref_list','false',0,410,NULL,0,NULL),(411,37,'','anonymizable','false',0,411,NULL,0,NULL),(412,37,'-1','use_ref_list','false',0,412,NULL,0,NULL),(413,37,'','anonymizable','false',0,413,NULL,0,NULL),(414,37,NULL,'used_in_correct_form_response','false',0,414,NULL,0,NULL),(415,37,NULL,'used_in_complete_form_response','false',0,415,NULL,0,NULL),(416,37,NULL,'exportable','true',0,416,NULL,0,NULL),(417,37,NULL,'text_config','',0,417,NULL,0,NULL),(418,37,NULL,'width','0',0,418,NULL,0,NULL),(419,37,NULL,'max_size','-1',0,419,NULL,0,NULL),(420,37,NULL,'confirm_field','false',0,420,NULL,0,NULL),(421,38,'-1','use_ref_list','false',0,421,NULL,0,NULL),(422,38,'','anonymizable','false',0,422,NULL,0,NULL),(423,38,'-1','use_ref_list','false',0,423,NULL,0,NULL),(424,38,'','anonymizable','false',0,424,NULL,0,NULL),(425,38,NULL,'used_in_correct_form_response','false',0,425,NULL,0,NULL),(426,38,NULL,'used_in_complete_form_response','false',0,426,NULL,0,NULL),(427,38,NULL,'exportable','true',0,427,NULL,0,NULL),(428,38,NULL,'text_config','',0,428,NULL,0,NULL),(429,38,NULL,'width','0',0,429,NULL,0,NULL),(430,38,NULL,'max_size','-1',0,430,NULL,0,NULL),(431,38,NULL,'confirm_field','false',0,431,NULL,0,NULL),(432,39,'-1','use_ref_list','false',0,432,NULL,0,NULL),(433,39,'','anonymizable','false',0,433,NULL,0,NULL),(434,39,'-1','use_ref_list','false',0,434,NULL,0,NULL),(435,39,'','anonymizable','false',0,435,NULL,0,NULL),(436,39,NULL,'used_in_correct_form_response','false',0,436,NULL,0,NULL),(437,39,NULL,'used_in_complete_form_response','false',0,437,NULL,0,NULL),(438,39,NULL,'exportable','true',0,438,NULL,0,NULL),(439,39,NULL,'attribute_name','user.home-info.online.email',0,439,NULL,0,NULL),(440,40,'-1','use_ref_list','false',0,440,NULL,0,NULL),(441,40,'','anonymizable','false',0,441,NULL,0,NULL),(442,40,'-1','use_ref_list','false',0,442,NULL,0,NULL),(443,40,'','anonymizable','false',0,443,NULL,0,NULL),(444,40,NULL,'used_in_correct_form_response','false',0,444,NULL,0,NULL),(445,40,NULL,'used_in_complete_form_response','false',0,445,NULL,0,NULL),(446,40,NULL,'exportable','false',0,446,NULL,0,NULL),(447,40,NULL,'display_in_bo','false',0,447,NULL,0,NULL),(448,41,'-1','use_ref_list','false',0,448,NULL,0,NULL),(449,41,'','anonymizable','false',0,449,NULL,0,NULL),(450,41,'-1','use_ref_list','false',0,450,NULL,0,NULL),(451,41,'','anonymizable','false',0,451,NULL,0,NULL),(452,41,NULL,'used_in_correct_form_response','false',0,452,NULL,0,NULL),(453,41,NULL,'used_in_complete_form_response','false',0,453,NULL,0,NULL),(454,41,NULL,'exportable','true',0,454,NULL,0,NULL),(455,41,NULL,'text_config','',0,455,NULL,0,NULL),(456,41,NULL,'width','0',0,456,NULL,0,NULL),(457,41,NULL,'max_size','-1',0,457,NULL,0,NULL),(458,41,NULL,'confirm_field','false',0,458,NULL,0,NULL),(459,41,NULL,'exportable_pdf','true',0,459,NULL,0,NULL),(460,42,'-1','use_ref_list','false',0,460,NULL,0,NULL),(461,42,'','anonymizable','false',0,461,NULL,0,NULL),(462,42,'-1','use_ref_list','false',0,462,NULL,0,NULL),(463,42,'','anonymizable','false',0,463,NULL,0,NULL),(464,42,NULL,'used_in_correct_form_response','false',0,464,NULL,0,NULL),(465,42,NULL,'used_in_complete_form_response','false',0,465,NULL,0,NULL),(466,42,NULL,'exportable','true',0,466,NULL,0,NULL),(467,42,NULL,'text_config','',0,467,NULL,0,NULL),(468,42,NULL,'width','0',0,468,NULL,0,NULL),(469,42,NULL,'max_size','-1',0,469,NULL,0,NULL),(470,42,NULL,'confirm_field','false',0,470,NULL,0,NULL),(471,42,NULL,'exportable_pdf','true',0,471,NULL,0,NULL),(472,43,'-1','use_ref_list','false',0,472,NULL,0,NULL),(473,43,'','anonymizable','false',0,473,NULL,0,NULL),(474,43,'-1','use_ref_list','false',0,474,NULL,0,NULL),(475,43,'','anonymizable','false',0,475,NULL,0,NULL),(476,43,NULL,'used_in_correct_form_response','false',0,476,NULL,0,NULL),(477,43,NULL,'used_in_complete_form_response','false',0,477,NULL,0,NULL),(478,43,NULL,'exportable','true',0,478,NULL,0,NULL),(479,43,NULL,'text_config','',0,479,NULL,0,NULL),(480,43,NULL,'width','0',0,480,NULL,0,NULL),(481,43,NULL,'max_size','-1',0,481,NULL,0,NULL),(482,43,NULL,'confirm_field','false',0,482,NULL,0,NULL),(483,43,NULL,'exportable_pdf','true',0,483,NULL,0,NULL),(484,44,'-1','use_ref_list','false',0,484,NULL,0,NULL),(485,44,'','anonymizable','false',0,485,NULL,0,NULL),(486,44,'-1','use_ref_list','false',0,486,NULL,0,NULL),(487,44,'','anonymizable','false',0,487,NULL,0,NULL),(488,44,NULL,'used_in_correct_form_response','false',0,488,NULL,0,NULL),(489,44,NULL,'used_in_complete_form_response','false',0,489,NULL,0,NULL),(490,44,NULL,'exportable','true',0,490,NULL,0,NULL),(491,44,NULL,'text_config','',0,491,NULL,0,NULL),(492,44,NULL,'width','0',0,492,NULL,0,NULL),(493,44,NULL,'max_size','-1',0,493,NULL,0,NULL),(494,44,NULL,'confirm_field','false',0,494,NULL,0,NULL),(495,44,NULL,'exportable_pdf','true',0,495,NULL,0,NULL),(496,45,'-1','use_ref_list','false',0,496,NULL,0,NULL),(497,45,'','anonymizable','false',0,497,NULL,0,NULL),(498,45,'-1','use_ref_list','false',0,498,NULL,0,NULL),(499,45,'','anonymizable','false',0,499,NULL,0,NULL),(500,45,NULL,'used_in_correct_form_response','false',0,500,NULL,0,NULL),(501,45,NULL,'used_in_complete_form_response','false',0,501,NULL,0,NULL),(502,45,NULL,'exportable','true',0,502,NULL,0,NULL),(503,45,NULL,'text_config','',0,503,NULL,0,NULL),(504,45,NULL,'width','0',0,504,NULL,0,NULL),(505,45,NULL,'max_size','-1',0,505,NULL,0,NULL),(506,45,NULL,'confirm_field','false',0,506,NULL,0,NULL),(507,45,NULL,'exportable_pdf','true',0,507,NULL,0,NULL),(508,46,'-1','use_ref_list','false',0,508,NULL,0,NULL),(509,46,'','anonymizable','false',0,509,NULL,0,NULL),(510,46,'-1','use_ref_list','false',0,510,NULL,0,NULL),(511,46,'','anonymizable','false',0,511,NULL,0,NULL),(512,46,NULL,'used_in_correct_form_response','false',0,512,NULL,0,NULL),(513,46,NULL,'used_in_complete_form_response','false',0,513,NULL,0,NULL),(514,46,NULL,'exportable','true',0,514,NULL,0,NULL),(515,46,NULL,'text_config','',0,515,NULL,0,NULL),(516,46,NULL,'width','0',0,516,NULL,0,NULL),(517,46,NULL,'max_size','-1',0,517,NULL,0,NULL),(518,46,NULL,'confirm_field','false',0,518,NULL,0,NULL),(519,46,NULL,'exportable_pdf','true',0,519,NULL,0,NULL),(520,47,'-1','use_ref_list','false',0,520,NULL,0,NULL),(521,47,'','anonymizable','false',0,521,NULL,0,NULL),(522,47,'-1','use_ref_list','false',0,522,NULL,0,NULL),(523,47,'','anonymizable','false',0,523,NULL,0,NULL),(524,47,NULL,'used_in_correct_form_response','false',0,524,NULL,0,NULL),(525,47,NULL,'used_in_complete_form_response','false',0,525,NULL,0,NULL),(526,47,NULL,'exportable','true',0,526,NULL,0,NULL),(527,47,NULL,'text_config','',0,527,NULL,0,NULL),(528,47,NULL,'width','0',0,528,NULL,0,NULL),(529,47,NULL,'max_size','-1',0,529,NULL,0,NULL),(530,47,NULL,'confirm_field','false',0,530,NULL,0,NULL),(531,47,NULL,'exportable_pdf','true',0,531,NULL,0,NULL),(532,48,'-1','use_ref_list','false',0,532,NULL,0,NULL),(533,48,'','anonymizable','false',0,533,NULL,0,NULL),(534,48,'-1','use_ref_list','false',0,534,NULL,0,NULL),(535,48,'','anonymizable','false',0,535,NULL,0,NULL),(536,48,NULL,'used_in_correct_form_response','false',0,536,NULL,0,NULL),(537,48,NULL,'used_in_complete_form_response','false',0,537,NULL,0,NULL),(538,48,NULL,'exportable','true',0,538,NULL,0,NULL),(539,48,NULL,'attribute_name','user.home-info.online.email',0,539,NULL,0,NULL),(540,48,NULL,'exportable_pdf','true',0,540,NULL,0,NULL),(541,49,'-1','use_ref_list','false',0,541,NULL,0,NULL),(542,49,'','anonymizable','false',0,542,NULL,0,NULL),(543,49,'-1','use_ref_list','false',0,543,NULL,0,NULL),(544,49,'','anonymizable','false',0,544,NULL,0,NULL),(545,49,NULL,'used_in_correct_form_response','false',0,545,NULL,0,NULL),(546,49,NULL,'used_in_complete_form_response','false',0,546,NULL,0,NULL),(547,49,NULL,'exportable','true',0,547,NULL,0,NULL),(548,49,NULL,'text_config','',0,548,NULL,0,NULL),(549,49,NULL,'width','0',0,549,NULL,0,NULL),(550,49,NULL,'max_size','-1',0,550,NULL,0,NULL),(551,49,NULL,'confirm_field','false',0,551,NULL,0,NULL),(552,49,NULL,'exportable_pdf','true',0,552,NULL,0,NULL),(553,50,'-1','use_ref_list','false',0,553,NULL,0,NULL),(554,50,'','anonymizable','false',0,554,NULL,0,NULL),(555,50,'-1','use_ref_list','false',0,555,NULL,0,NULL),(556,50,'','anonymizable','false',0,556,NULL,0,NULL),(557,50,NULL,'used_in_correct_form_response','false',0,557,NULL,0,NULL),(558,50,NULL,'used_in_complete_form_response','false',0,558,NULL,0,NULL),(559,50,NULL,'exportable','true',0,559,NULL,0,NULL),(560,50,NULL,'default_date_value',NULL,0,560,NULL,0,NULL),(561,50,NULL,'exportable_pdf','true',0,561,NULL,0,NULL),(562,51,'-1','use_ref_list','false',0,562,NULL,0,NULL),(563,51,'','anonymizable','false',0,563,NULL,0,NULL),(564,51,'-1','use_ref_list','false',0,564,NULL,0,NULL),(565,51,'','anonymizable','false',0,565,NULL,0,NULL),(566,51,NULL,'used_in_correct_form_response','false',0,566,NULL,0,NULL),(567,51,NULL,'used_in_complete_form_response','false',0,567,NULL,0,NULL),(568,51,NULL,'exportable','false',0,568,NULL,0,NULL),(569,51,NULL,'display_in_bo','false',0,569,NULL,0,NULL),(570,52,'-1','anonymizable','false',0,570,NULL,0,NULL),(571,52,'-1','use_ref_list','false',0,571,NULL,0,NULL),(572,52,'','anonymizable','false',0,572,NULL,0,NULL),(573,52,'-1','use_ref_list','false',0,573,NULL,0,NULL),(574,52,'','anonymizable','false',0,574,NULL,0,NULL),(575,52,NULL,'used_in_correct_form_response','false',0,575,NULL,0,NULL),(576,52,NULL,'used_in_complete_form_response','false',0,576,NULL,0,NULL),(577,52,NULL,'exportable','true',0,577,NULL,0,NULL),(578,52,'Madame','answer_choice','Madame',0,578,NULL,0,''),(579,52,'Monsieur','answer_choice','Monsieur',0,579,NULL,0,''),(580,53,'-1','use_ref_list','false',0,580,NULL,0,NULL),(581,53,'','anonymizable','false',0,581,NULL,0,NULL),(582,53,'-1','use_ref_list','false',0,582,NULL,0,NULL),(583,53,'','anonymizable','false',0,583,NULL,0,NULL),(584,53,NULL,'used_in_correct_form_response','false',0,584,NULL,0,NULL),(585,53,NULL,'used_in_complete_form_response','false',0,585,NULL,0,NULL),(586,53,NULL,'exportable','true',0,586,NULL,0,NULL),(587,53,NULL,'text_config','',0,587,NULL,0,NULL),(588,53,NULL,'width','0',0,588,NULL,0,NULL),(589,53,NULL,'max_size','-1',0,589,NULL,0,NULL),(590,53,NULL,'confirm_field','false',0,590,NULL,0,NULL),(591,53,NULL,'exportable_pdf','true',0,591,NULL,0,NULL),(592,54,'-1','use_ref_list','false',0,592,NULL,0,NULL),(593,54,'','anonymizable','false',0,593,NULL,0,NULL),(594,54,'-1','use_ref_list','false',0,594,NULL,0,NULL),(595,54,'','anonymizable','false',0,595,NULL,0,NULL),(596,54,NULL,'used_in_correct_form_response','false',0,596,NULL,0,NULL),(597,54,NULL,'used_in_complete_form_response','false',0,597,NULL,0,NULL),(598,54,NULL,'exportable','true',0,598,NULL,0,NULL),(599,54,NULL,'text_config','',0,599,NULL,0,NULL),(600,54,NULL,'width','0',0,600,NULL,0,NULL),(601,54,NULL,'max_size','-1',0,601,NULL,0,NULL),(602,54,NULL,'confirm_field','false',0,602,NULL,0,NULL),(603,54,NULL,'exportable_pdf','true',0,603,NULL,0,NULL),(604,55,'-1','use_ref_list','false',0,604,NULL,0,NULL),(605,55,'','anonymizable','false',0,605,NULL,0,NULL),(606,55,'-1','use_ref_list','false',0,606,NULL,0,NULL),(607,55,'','anonymizable','false',0,607,NULL,0,NULL),(608,55,NULL,'used_in_correct_form_response','false',0,608,NULL,0,NULL),(609,55,NULL,'used_in_complete_form_response','false',0,609,NULL,0,NULL),(610,55,NULL,'exportable','true',0,610,NULL,0,NULL),(611,55,NULL,'default_date_value',NULL,0,611,NULL,0,NULL),(612,55,NULL,'exportable_pdf','true',0,612,NULL,0,NULL),(613,56,'-1','use_ref_list','false',0,613,NULL,0,NULL),(614,56,'','anonymizable','false',0,614,NULL,0,NULL),(615,56,'-1','use_ref_list','false',0,615,NULL,0,NULL),(616,56,'','anonymizable','false',0,616,NULL,0,NULL),(617,56,NULL,'used_in_correct_form_response','false',0,617,NULL,0,NULL),(618,56,NULL,'used_in_complete_form_response','false',0,618,NULL,0,NULL),(619,56,NULL,'exportable','true',0,619,NULL,0,NULL),(620,56,NULL,'text_config','',0,620,NULL,0,NULL),(621,56,NULL,'width','0',0,621,NULL,0,NULL),(622,56,NULL,'max_size','-1',0,622,NULL,0,NULL),(623,56,NULL,'confirm_field','false',0,623,NULL,0,NULL),(624,56,NULL,'exportable_pdf','true',0,624,NULL,0,NULL),(625,57,'-1','use_ref_list','false',0,625,NULL,0,NULL),(626,57,'','anonymizable','false',0,626,NULL,0,NULL),(627,57,'-1','use_ref_list','false',0,627,NULL,0,NULL),(628,57,'','anonymizable','false',0,628,NULL,0,NULL),(629,57,NULL,'used_in_correct_form_response','false',0,629,NULL,0,NULL),(630,57,NULL,'used_in_complete_form_response','false',0,630,NULL,0,NULL),(631,57,NULL,'exportable','true',0,631,NULL,0,NULL),(632,57,NULL,'text_config','',0,632,NULL,0,NULL),(633,57,NULL,'width','0',0,633,NULL,0,NULL),(634,57,NULL,'max_size','-1',0,634,NULL,0,NULL),(635,57,NULL,'confirm_field','false',0,635,NULL,0,NULL),(636,57,NULL,'exportable_pdf','true',0,636,NULL,0,NULL),(637,58,'-1','use_ref_list','false',0,637,NULL,0,NULL),(638,58,'','anonymizable','false',0,638,NULL,0,NULL),(639,58,'-1','use_ref_list','false',0,639,NULL,0,NULL),(640,58,'','anonymizable','false',0,640,NULL,0,NULL),(641,58,NULL,'used_in_correct_form_response','false',0,641,NULL,0,NULL),(642,58,NULL,'used_in_complete_form_response','false',0,642,NULL,0,NULL),(643,58,NULL,'exportable','true',0,643,NULL,0,NULL),(644,58,NULL,'text_config','',0,644,NULL,0,NULL),(645,58,NULL,'width','0',0,645,NULL,0,NULL),(646,58,NULL,'max_size','-1',0,646,NULL,0,NULL),(647,58,NULL,'confirm_field','false',0,647,NULL,0,NULL),(648,58,NULL,'exportable_pdf','true',0,648,NULL,0,NULL),(649,59,'-1','use_ref_list','false',0,649,NULL,0,NULL),(650,59,'','anonymizable','false',0,650,NULL,0,NULL),(651,59,'-1','use_ref_list','false',0,651,NULL,0,NULL),(652,59,'','anonymizable','false',0,652,NULL,0,NULL),(653,59,NULL,'used_in_correct_form_response','false',0,653,NULL,0,NULL),(654,59,NULL,'used_in_complete_form_response','false',0,654,NULL,0,NULL),(655,59,NULL,'exportable','true',0,655,NULL,0,NULL),(656,59,NULL,'text_config','',0,656,NULL,0,NULL),(657,59,NULL,'width','0',0,657,NULL,0,NULL),(658,59,NULL,'max_size','-1',0,658,NULL,0,NULL),(659,59,NULL,'confirm_field','false',0,659,NULL,0,NULL),(660,59,NULL,'exportable_pdf','true',0,660,NULL,0,NULL),(661,60,'-1','use_ref_list','false',0,661,NULL,0,NULL),(662,60,'','anonymizable','false',0,662,NULL,0,NULL),(663,60,'-1','use_ref_list','false',0,663,NULL,0,NULL),(664,60,'','anonymizable','false',0,664,NULL,0,NULL),(665,60,NULL,'used_in_correct_form_response','false',0,665,NULL,0,NULL),(666,60,NULL,'used_in_complete_form_response','false',0,666,NULL,0,NULL),(667,60,NULL,'exportable','true',0,667,NULL,0,NULL),(668,60,NULL,'text_config','',0,668,NULL,0,NULL),(669,60,NULL,'width','0',0,669,NULL,0,NULL),(670,60,NULL,'max_size','-1',0,670,NULL,0,NULL),(671,60,NULL,'confirm_field','false',0,671,NULL,0,NULL),(672,60,NULL,'exportable_pdf','true',0,672,NULL,0,NULL),(673,61,'-1','use_ref_list','false',0,673,NULL,0,NULL),(674,61,'','anonymizable','false',0,674,NULL,0,NULL),(675,61,'-1','use_ref_list','false',0,675,NULL,0,NULL),(676,61,'','anonymizable','false',0,676,NULL,0,NULL),(677,61,NULL,'used_in_correct_form_response','false',0,677,NULL,0,NULL),(678,61,NULL,'used_in_complete_form_response','false',0,678,NULL,0,NULL),(679,61,NULL,'exportable','true',0,679,NULL,0,NULL),(680,61,NULL,'text_config','',0,680,NULL,0,NULL),(681,61,NULL,'width','0',0,681,NULL,0,NULL),(682,61,NULL,'max_size','-1',0,682,NULL,0,NULL),(683,61,NULL,'confirm_field','false',0,683,NULL,0,NULL),(684,61,NULL,'exportable_pdf','true',0,684,NULL,0,NULL),(685,62,'-1','use_ref_list','false',0,685,NULL,0,NULL),(686,62,'','anonymizable','false',0,686,NULL,0,NULL),(687,62,'-1','use_ref_list','false',0,687,NULL,0,NULL),(688,62,'','anonymizable','false',0,688,NULL,0,NULL),(689,62,NULL,'used_in_correct_form_response','false',0,689,NULL,0,NULL),(690,62,NULL,'used_in_complete_form_response','false',0,690,NULL,0,NULL),(691,62,NULL,'exportable','true',0,691,NULL,0,NULL),(692,62,NULL,'attribute_name','user.home-info.online.email',0,692,NULL,0,NULL),(693,62,NULL,'exportable_pdf','true',0,693,NULL,0,NULL),(694,63,'-1','use_ref_list','false',0,694,NULL,0,NULL),(695,63,'','anonymizable','false',0,695,NULL,0,NULL),(696,63,'-1','use_ref_list','false',0,696,NULL,0,NULL),(697,63,'','anonymizable','false',0,697,NULL,0,NULL),(698,63,NULL,'used_in_correct_form_response','false',0,698,NULL,0,NULL),(699,63,NULL,'used_in_complete_form_response','false',0,699,NULL,0,NULL),(700,63,NULL,'exportable','true',0,700,NULL,0,NULL),(701,63,NULL,'text_config','',0,701,NULL,0,NULL),(702,63,NULL,'width','0',0,702,NULL,0,NULL),(703,63,NULL,'max_size','-1',0,703,NULL,0,NULL),(704,63,NULL,'confirm_field','false',0,704,NULL,0,NULL),(705,63,NULL,'exportable_pdf','true',0,705,NULL,0,NULL),(706,64,'-1','use_ref_list','false',0,706,NULL,0,NULL),(707,64,'','anonymizable','false',0,707,NULL,0,NULL),(708,64,'-1','use_ref_list','false',0,708,NULL,0,NULL),(709,64,'','anonymizable','false',0,709,NULL,0,NULL),(710,64,NULL,'used_in_correct_form_response','false',0,710,NULL,0,NULL),(711,64,NULL,'used_in_complete_form_response','false',0,711,NULL,0,NULL),(712,64,NULL,'exportable','true',0,712,NULL,0,NULL),(713,64,NULL,'text_config','',0,713,NULL,0,NULL),(714,64,NULL,'max_size','500',0,714,NULL,0,NULL),(715,64,NULL,'width','0',0,715,NULL,0,NULL),(716,64,NULL,'height','5',0,716,NULL,0,NULL),(717,64,NULL,'richtext','false',0,717,NULL,0,NULL),(718,64,NULL,'exportable_pdf','true',0,718,NULL,0,NULL),(719,65,'-1','use_ref_list','false',0,719,NULL,0,NULL),(720,65,'','anonymizable','false',0,720,NULL,0,NULL),(721,65,'-1','use_ref_list','false',0,721,NULL,0,NULL),(722,65,'','anonymizable','false',0,722,NULL,0,NULL),(723,65,NULL,'used_in_correct_form_response','false',0,723,NULL,0,NULL),(724,65,NULL,'used_in_complete_form_response','false',0,724,NULL,0,NULL),(725,65,NULL,'exportable','false',0,725,NULL,0,NULL),(726,65,NULL,'text_config','-1- \r\n-2- \r\n-3- \r\n-4- \r\n-5- ',0,726,NULL,0,NULL),(727,65,NULL,'max_size','500',0,727,NULL,0,NULL),(728,65,NULL,'width','0',0,728,NULL,0,NULL),(729,65,NULL,'height','5',0,729,NULL,0,NULL),(730,65,NULL,'richtext','false',0,730,NULL,0,NULL),(731,65,NULL,'exportable_pdf','true',0,731,NULL,0,NULL),(732,66,'-1','anonymizable','false',0,732,NULL,0,NULL),(733,66,'-1','use_ref_list','false',0,733,NULL,0,NULL),(734,66,'','anonymizable','false',0,734,NULL,0,NULL),(735,66,'-1','use_ref_list','false',0,735,NULL,0,NULL),(736,66,'','anonymizable','false',0,736,NULL,0,NULL),(737,66,NULL,'used_in_correct_form_response','false',0,737,NULL,0,NULL),(738,66,NULL,'used_in_complete_form_response','false',0,738,NULL,0,NULL),(739,66,NULL,'exportable','true',0,739,NULL,0,NULL),(740,66,'Sciences humaines et sociales','answer_choice','Sciences_humaines_sociales',0,740,NULL,0,''),(741,66,'Sciences exactes ','answer_choice','Sciences_exactes',0,741,NULL,0,''),(742,66,'Biologie et Médecine','answer_choice','Biologie_medecine',0,742,NULL,0,''),(743,66,NULL,'exportable_pdf','true',0,743,NULL,0,NULL);
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
INSERT INTO `template_question` VALUES (1,'Secteur d\'activité','question_111','',1,1,0,1,0,'Secteur d\'activité ',0,0),(2,'Date de création de l\'activité ','question_112','',2,1,0,0,0,'Date de création de l\'activité ',0,0),(3,'Effectif de l\'entreprise','question_113','',3,1,0,1,0,'Effectif de l\'entreprise ',0,0),(4,'Nombre de personnes par statut','question_114','',4,1,0,0,0,'Nombre de personnes par statut ',0,0),(5,'Nombre de personnes salariées','question_115','',5,1,0,0,0,'Nombre de personnes salariées',0,0),(6,'Nombre de personne en free-lance','question_116','',6,1,0,0,0,'Nombre de personne en free-lance',0,0),(7,'Nombre d\'apprentis','question_117','',7,1,0,0,0,'Nombre d\'apprentis',0,0),(8,'Nombre de stagiaires','question_118','',8,1,0,0,0,'Nombre de stagiaires',0,0),(9,'Chiffre d\'affaires','question_119','',9,1,0,1,0,'Chiffre d\'affaires',0,0),(10,'Numéro de SIRET','question_100','',10,2,0,0,0,'Numéro de SIRET ',0,0),(11,'Nom','question_102','',11,2,1,1,0,'Nom',0,0),(12,'Prénom','question_103','',12,2,1,1,0,'Prénom',0,0),(13,'Nom de l\'entreprise ou de la marque','question_104','',13,2,0,1,0,'Nom de l\'entreprise ou de la marque ',0,0),(14,'Adresse de résidence','question_105','',14,2,0,1,0,'Adresse de résidence ',0,0),(15,'Code postal','question_106','',15,2,0,1,0,'Code postal',0,0),(16,'Ville','question_107','',16,2,0,1,0,'Ville',0,0),(17,'Téléphone fixe','question_108','',17,2,0,1,0,'	Téléphone fixe ',0,0),(18,'Téléphone portable','question_109','',18,2,0,1,0,'Téléphone portable ',0,0),(19,'Courriel','question_110','',19,2,0,0,0,'Courriel',0,0),(20,'Nom','question_44','',20,3,0,0,0,'Nom',0,0),(21,'Prénom','question_45','',21,3,0,0,0,'Prénom',0,0),(22,'Fonction','question_46','',22,3,0,0,0,'Fonction',0,0),(23,'Adresse/rue','question_47','',23,3,0,0,0,'Adresse/rue ',0,0),(24,'Téléphone','question_48','',24,3,0,0,0,'Téléphone ',0,0),(25,'Email','question_49','',25,3,0,0,0,'Email ',0,0),(26,'RIB de l\'organisme','question_50','',26,3,0,0,0,'RIB de l\'organisme',0,0),(27,'Le demandeur est','question_69','',27,4,0,0,0,'Le demandeur est',0,0),(28,'Nom de la structure','question_70','',28,4,0,0,0,'Nom de la structure',0,0),(29,'numéro SIRET ou RNA','question_71','',29,4,0,0,0,'numéro SIRET ou RNA',0,0),(30,'Nom de la structure','question_73','',30,4,0,0,0,'Nom de la structure',0,0),(31,'numéro SIRET ou RNA','question_75','',31,4,0,0,0,'numéro SIRET ou RNA',0,0),(32,'Civilité','question_76','',32,4,0,0,0,'Civilité',0,0),(33,'Nom','question_77','',33,4,0,0,0,'Nom',0,0),(34,'Prénom','question_78','',34,4,0,0,0,'Prénom',0,0),(35,'Téléphone','question_79','',35,4,0,0,0,'Téléphone',0,0),(36,'Adresse de la structure ou perso','question_81','',36,4,0,0,0,' Adresse de la structure ou perso',0,0),(37,'Code postal','question_82','',37,4,0,0,0,'Code postal',0,0),(38,'Ville','question_83','',38,4,0,0,0,'Ville',0,0),(39,'Courriel','question_131','',39,4,0,0,0,'Courriel',0,0),(40,'commentaire','question_206','<p>Attention : Les caract&egrave;res &lt; &gt; # &amp; \"\" ne sont pas autoris&eacute;s dans la saisie des contenus.</p>',40,4,0,0,0,'commentaire',0,0),(41,'Nom','question_254','',41,5,0,1,0,'Nom',0,0),(42,'Prénom','question_255','',42,5,0,1,0,'Prénom',0,0),(43,'A','question_257','',43,5,0,0,0,'A',0,0),(44,'Nationalité','question_258','',44,5,0,0,0,'Nationalité',0,0),(45,'Adresse','question_259','',45,5,0,0,0,'Adresse',0,0),(46,'Code postal','question_260','',46,5,0,0,0,'Code postal',0,0),(47,'Ville','question_261','',47,5,0,0,0,'Ville',0,0),(48,'Courriel','question_262','',48,5,0,1,0,'Courriel',0,0),(49,'Téléphone fixe ou portable','question_263','',49,5,0,1,0,'Téléphone fixe ou portable',0,0),(50,'Né.e','question_270','',50,5,0,0,0,'Né.e',0,0),(51,'commentaire','question_253','<p>L&rsquo;espace CoWaC accueille &eacute;tudiants, entrepreneurs et associations dans les secteurs M&eacute;tiers d&rsquo;art, Mode et Design ou d&eacute;veloppant un projet de soutien &agrave; ces secteurs. Il offre un v&eacute;ritable poste de travail hors de chez soi et des interactions avec d&rsquo;autres professionnels pour enrichir ses comp&eacute;tences, d&eacute;velopper son r&eacute;seau ou partager des ressources. 3 formules du ponctuel au temps complet pour b&eacute;n&eacute;ficier d&rsquo;un des 8 postes de travail en co-working ainsi qu&rsquo;un acc&egrave;s &agrave; des salles de r&eacute;union. Profiter de l&rsquo;espace CoWaC c&rsquo;est &eacute;galement acc&eacute;der &agrave; l&rsquo;offre conseil et accompagnement des Ateliers de Paris.<br />&bull;&nbsp;&nbsp;&nbsp; &frac14; temps (5 jours/mois ou 10 demi-journ&eacute;es/mois) &agrave; 60&euro; le mois.<br /><br />&bull;&nbsp;&nbsp;&nbsp; &frac12; temps (10 jours/mois ou 20 demi-journ&eacute;es/mois) &agrave; 100&euro; le mois<br /><br />&bull;&nbsp;&nbsp;&nbsp; Temps complet (acc&egrave;s illimit&eacute;) &agrave; 160&euro; le mois<br /><br />&bull;&nbsp;&nbsp;&nbsp; Tarif &eacute;tudiant : 8&euro; la journ&eacute;e, 4&euro; la demi-journ&eacute;e<br /><br /><br />Pi&egrave;ce &agrave; joindre au dossier<br />&bull;&nbsp;&nbsp;&nbsp; dossier de candidature <a href=\"https://cdn.paris.fr/paris/2021/02/02/bfcc124133723c6c3cefe25d37d1d4c9.pdf\" target=\"_blank\">(t&eacute;l&eacute;charger)</a><br /><br />Informations :<br />Pour toutes questions compl&eacute;mentaires : Ateliers de Paris, kadija.ouadi@paris.fr , 30 rue du Faubourg Saint Antoine, 75012 Paris. T&eacute;l. : 01 71 18 75 74<br />Vous serez recontact&eacute;s suite &agrave; votre candidature. Si votre dossier est valid&eacute;, votre accueil pourra &ecirc;tre mis en liste d&rsquo;attente si toutes les places sont prises.</p>',51,6,0,0,0,'commentaire',0,0),(52,'Civilité','question_4','',52,7,0,0,0,'Civilité',0,0),(53,'Nom','question_5','',53,7,1,1,0,'Nom',0,0),(54,'Prénom','question_6','',54,7,1,1,0,'Prénom',0,0),(55,'Date de naissance (JJ/MM/AAAA)','question_7','',55,7,0,0,0,'Date de naissance (JJ/MM/AAAA)',0,0),(56,'Nationalité','question_9','',56,7,0,0,0,'Nationalité ',0,0),(57,'Responsabilités','question_10','',57,7,0,0,0,'Responsabilités ',0,0),(58,'Laboratoire /Organisme','question_11','',58,7,0,0,0,'Laboratoire /Organisme ',0,0),(59,'Adresse/rue','question_12','',59,7,0,0,0,'Adresse/rue',0,0),(60,'Code postal','question_13','',60,7,0,0,0,'Code postal',0,0),(61,'Ville','question_14','',61,7,0,0,0,'Ville ',0,0),(62,'Email','question_15','',62,7,0,1,0,'Email',0,0),(63,'Téléphone','question_16','',63,7,0,0,0,'Téléphone',0,0),(64,'Titre du projet (en français et/ou en anglais, max 3 lignes) et son abrégé (3 ou 4 mots)','question_17','',64,8,0,0,0,'Titre du projet (en français et/ou en anglais, max 3 lignes) et son abrégé (3 ou 4 mots) ',0,0),(65,'Cinq mots Clés','question_18','',65,8,0,0,0,'Cinq mots Clés',0,0),(66,'Champ disciplinaire principal','question_19','',66,8,0,0,0,'Champ disciplinaire principal',0,0);
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
INSERT INTO `unittree_unit` VALUES (0,-1,'ROOT','Direction Générale','Racine des entités'),(1,0,'espace_public','Espace Public','Espace Public'),(2,0,'etat_civil','Etat Civil','Etat Civil'),(3,0,'logement_habitat','Logement et Habitat','Logement et Habitat'),(4,0,'affaires_scolaires','Affaires Scolaires','Affaires Scolaires'),(5,4,'ecoles','Ecoles','Ecoles'),(6,4,'petite_enfance','Petite Enfance','Petite Enfance'),(7,4,'centres_loisirs','Centres de Loisirs','Centres de Loisirs'),(8,1,'voirie','Voirie','Voirie'),(9,1,'espaces_verts','Espaces Verts','Espaces Verts');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_unit_assignment`
--

LOCK TABLES `unittree_unit_assignment` WRITE;
/*!40000 ALTER TABLE `unittree_unit_assignment` DISABLE KEYS */;
INSERT INTO `unittree_unit_assignment` VALUES (8,5,'FORMS_FORM_RESPONSE',-1,2,'create',NULL,1),(9,6,'FORMS_FORM_RESPONSE',-1,8,'create',NULL,1);
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
INSERT INTO `unittree_unit_user` VALUES (0,5),(0,9),(1,6),(1,14),(2,17),(3,18),(4,10),(5,12),(6,8),(6,13),(7,11),(8,7),(8,16),(9,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action`
--

LOCK TABLES `workflow_action` WRITE;
/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
INSERT INTO `workflow_action` VALUES (1,'Action d\'arriver sur l\'&#233;tat Demande de contact déposée','',1,1,-1,4,0,0,0,1,'9fc6a64e-1d0d-11ef-8590-0242ac180003'),(2,'Accuser réception (automatique)','Envoi d\'un accusé de réception pour notifier l\'usager suite à l\'exécution de l\'action, la demande passe en instruction',1,2,-1,4,1,0,1,0,'9fc6a914-1d0d-11ef-8590-0242ac180003'),(3,'Transférer la sollicitation','L\'agent considère qu\'il n\'est pas le bon contact pour instruire la sollicitation et décide de la transférer au bon service',1,2,-1,6,0,0,2,0,'9fc6a9f6-1d0d-11ef-8590-0242ac180003'),(4,'Escalader la sollicitation','L\'agent transfère la sollicitation à sa hiérarchie',1,2,-1,7,0,0,3,0,'9fc6aabc-1d0d-11ef-8590-0242ac180003'),(5,'Clôturer la sollicitation','Une fois traitée, la sollicitation prend fin',1,3,-1,11,0,0,4,0,'9fc6ab92-1d0d-11ef-8590-0242ac180003'),(6,'Demander des précisions','La sollicitation initiale de l\'usager ne suffit pas à instruire la demande. L\'agent lui demande donc des compléments.',1,4,-1,9,0,0,5,0,'9fc6ac41-1d0d-11ef-8590-0242ac180003'),(7,'Action d\'arriver sur l\'&#233;tat Demande en cours d\'instruction','',1,2,-1,4,0,0,0,1,'9fc6acc7-1d0d-11ef-8590-0242ac180003'),(8,'Action d\'arriver sur l\'&#233;tat En attente d\'informations','',1,4,-1,4,0,0,0,1,'9fc6ad4e-1d0d-11ef-8590-0242ac180003'),(9,'Action d\'arriver sur l\'&#233;tat Demande clôturée','',1,3,-1,4,0,0,0,1,'9fc6adc6-1d0d-11ef-8590-0242ac180003'),(10,'Réaffecter à l\'entité émettrice','La sollicitation a été traitée par un service tiers, elle retourne au principal service instructeur',1,2,-1,8,0,0,6,0,'9fc6ae48-1d0d-11ef-8590-0242ac180003'),(11,'Accuser réception (automatique)','Envoi d\'un accusé de réception pour notifier l\'usager suite à l\'exécution de l\'action, la demande passe en instruction',2,7,-1,4,1,0,1,0,'9fc6aec4-1d0d-11ef-8590-0242ac180003'),(12,'Demander d\'apporter une correction','La saisie de l\'usager ne permet pas de traiter la demande car elle semble erronée',2,10,-1,9,0,0,2,0,'9fc6af38-1d0d-11ef-8590-0242ac180003'),(13,'Demander d\'apporter un complément','La saisie de l\'usager ne permet pas de traiter la demande car elle semble incomplète',2,11,-1,9,0,0,3,0,'9fc6afaf-1d0d-11ef-8590-0242ac180003'),(14,'Clôturer le dossier','La demande est traitée, l\'acte est envoyé, la demande est cloturée.',2,9,-1,11,0,0,4,0,'9fc6b027-1d0d-11ef-8590-0242ac180003'),(15,'Refus de la demande','Les éléments fournis ne permettent pas de traiter la demande. Un message est envoyé à l\'usager et la demande clôturée',2,8,-1,5,0,0,5,0,'9fc6b0a3-1d0d-11ef-8590-0242ac180003'),(16,'Action d\'arriver sur l\'&#233;tat Dossier déposé','',2,6,-1,4,0,0,0,1,'9fc6b12b-1d0d-11ef-8590-0242ac180003'),(17,'Action d\'arriver sur l\'&#233;tat Dossier en instruction','',2,7,-1,4,0,0,0,1,'9fc6b1a8-1d0d-11ef-8590-0242ac180003'),(18,'Action d\'arriver sur l\'&#233;tat Demande refusée','',2,8,-1,4,0,0,0,1,'9fc6b21b-1d0d-11ef-8590-0242ac180003'),(19,'Action d\'arriver sur l\'&#233;tat Dossier traité','',2,9,-1,4,0,0,0,1,'9fc6b285-1d0d-11ef-8590-0242ac180003'),(20,'Action d\'arriver sur l\'&#233;tat Dossier en attente de correction','',2,10,-1,4,0,0,0,1,'9fc6b2ee-1d0d-11ef-8590-0242ac180003'),(21,'Action d\'arriver sur l\'&#233;tat Dossier en attente de complément','',2,11,-1,4,0,0,0,1,'9fc6b35c-1d0d-11ef-8590-0242ac180003'),(22,'Action d\'arriver sur l\'&#233;tat Sollicitation anonymisée','',1,14,-1,4,0,0,0,1,'bacdfed3-de6f-477d-b01c-378479957bd6');
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
INSERT INTO `workflow_action_state_before` VALUES (1,1),(2,1),(3,2),(4,2),(5,2),(6,2),(7,2),(8,4),(9,3),(10,2),(11,6),(12,7),(13,7),(14,7),(15,7),(16,6),(17,7),(18,8),(19,9),(20,10),(21,11),(22,14);
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
INSERT INTO `workflow_icon` VALUES (4,'Valider','image/png',0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E987969700001B8C7A5458745261772070726F66696C6520747970652065786966000078DAAD9C697A1B2D9485FFB38A5E4231C372189FA777D0CBEFF750B213CB43ECE48BE348964B14DCCB3D03A098F57FFFBBCDFFF0A7D4984C88B9A49AD2C59F5043758D27E5BAFFDC8FF60AE7DFF367FAC7EFECDBD7CD188F5F385ED2458F0BD37A5CDF783DFE7A430E8FD7FBDBD74D7E34E4CAA3A1C72F5E1AF4BAB3E3C9E3BAF268C8BBFB75FBF8D9D4C7FB5AF86D388FEF52CF3DF5A6FB574F3F874C3066A43DEF8C5BDEFA8B7F8B2EF0FA0EBEF198CEBF998BAC8F3CF7E715E7EDC7B133AF4F9F82B7F3C7B1BBDAE30AFF3614E64A8F0BD2538C1EAFDBF871EC4E847EEF917D79EADEFE6245F7F2D677B1DB7B96BDD73DBA1612914AE631A8EBD1C479C6859D50FAF3B6C457E63BF23C9FAFCA576188838C4DB2D9F91AC656EB88F6B6C14EDBECB6EB3C0E3BE86270CB116EE7DC20CA7AAD10FEEA86570A82BEEC76D9573F8D2F64629035CFCBEEB52FF6DCB79EFB0D5BB8F3B45CE92C8D59DEF1EECB7CF4E2DF7CBD36B4B7A6AEB52798F9C48A7E394D3DBAA1CCE95FAE2221763F621A4F7CCF97B9DEE6E625B19E0CC613E6C200DBD5EF267AB4BFE6963F79F65C17AF60AEBB346C9E8F060811F78E74C67A32702526B64DF6CACE656B8963213F8D9E5302AE93011BA39BD66C72C3EC2739C5E9DEBC27DB73AD8BEE7E196821119112C9A4A6FA46B24288CC9F1C0A73A8451F838931A698638935B6E4534831A5949330AA659F438E39E59C4BAEB9155F428925955C4AA9A555573D10166BAAD9D4526B6D8D9B369A6EBCBB71456BDD75DF438F3DF5DC4BAFBD0DA6CF08238E34F228A38E36DDF493F29F696633CBACB32DBB984A2BACB8D2CAABACBADA66AE6DBFC38E3BEDBCCBAEBBBD66ED91D5B759B34F99FB3A6BF69135652C9CEBF2AFACF172CE2F4D58C14954CEC8980B968C67658009ED94B3ABD8109C32A79C5DD55114D191351B959C6995313218967571DBD7DCFDCADC97793331FC286FEEB3CC19A5EEBFC89C51EA1E997B9FB70FB236DB61147F12A42A544C2FBF01362E58A5B9D2C449BF1EFBB47ED9B1878B33743A501927C530466D71D50DE1791BF929B5411F8C2DDDDA424704428C22DB6B8260D7C81E38C8754E1BE915F5BE87F76517AFE7ABB8D856DE73EF92F9666820C3351813F8BA451135F5AA67792F7BDE421D3103A9F1AF1B342F2DFE6B83E6B98B7FDBA0F96CCC3F6DD0FC2988DF6DD0FC2988DF6DD07C372B7F6AD0FC34CD9F3568FE76DE3C3768FE7522FED5CC5EBD72E506A75A45C2A6B97C9FF34AA9F76992DEBB6CF3BBFB1053191325D082E57B8D5112BC1F6C1AE040599E76465970713BE5FDFBA379F30278442752B9FA72056192CA6C7EB46E7BB07E8E2BD56967AD014CE29A0144C5A57BB67199845CA996FB7460A783C1C1A79EB68D7DF6112D022684629DFA13AF06E0DD52EE20FC48AE8F4B0148C9C4BD41472232E70963EA51EC0D25441BE2F71FCD372E04541160B50F6F1329002C4BCFF19A156540C7CB5C21549373DA0CA78E906C778DA1E4B5F6006B4916D01618FBBCF2CC20AE7E4790F676F17A4C897EC590CFCC6E3E45C0155A7D9F89B78998FB8EC6C7C1304CB77B8A8DD1F5880294FE3B17A6B6DBF545DBBF3F9AF6CD0BEFC75D99D9A92CDDB2BA92DB19D62CAE19BA33090E9CE4FF1085AF8360BE1F85AF83605EA2B021B2D84F29C51CD24C6943B2BDA8A3B0F11A1068E81935E04B72AEC56AC5D71EA7E4CB00B3511BAB5554C39535F41510EDA57297E1982CF79062BBBBCBB85495CCFFF31CDD3FB3DF4C9600D3EE815E000814C1EB0E1DE62A0E3DEB347FDE62A7C27C48782BBE1F3467EEF6FEBD39F37BF7FEA539F37EB47FD79CF92C783F6DCE7C16BC9F3667BECEC5F79B33DF49ED779A331F04AF7B2C1777B23B08C42CCA8FF9595192ABE435FC8A5410B88CAE1D6BCF59068560C03C647F2F0B2740718CBB50E5DF908AE3516B28BDDD63A3A14BC2B0AF7421267D3F85B06ECADEE96AE5146B48A38B0B671E8CAC879CF78030D4D61A36DE2C876C8564FCC8CFB2D3B8A717F63DFAAA724B493DC9074E669BDCE5FAB4CFE6B9D34EF1DAA72FDBBA1BB6625AFDEEB3F0A4EF8F4ADC3CD738BF06418A037D2EB71A16A5DB808DC8A8F26A6184868D8024A2AD58991DF13729B92B9B34479EA9CF0AD731AA94ED0DA3B936E4817A23F822443177ADD51C8EFAE0D17CF60BFBDA7F42FC0C52EA7E5F1327500A81A703CE80CD239C0824685A1EC1B609A5DD513931BD239AEE34BF04749F9FF6C1654650CD2B34FFC6D5EFF32FA43E33E0E4BF2FD9925742397482F4DB629373F1A1130442A15B5FD2B85DFBB9BFE6EB0E7FDCDF605158774F963B5776289BB2548761D59ED79FE7112D957D4D021BD03EB9E02197966F0C318854220377A1611D0393764497E280A4EAE8AD7AC699578CFD4C8CAB733FC7D3790DAF5EC57486690677D378462E8E4EC7E58973CC94603AC34C6377B7C6662C79DA913BF205013377B275C08C18C41A912BD011C697E940D083A3D0F09014819AB0A3C91A2288D28D47CDEA2A3A7E3372C1CAFDEAA379DF49FA58CE85516EFB52CAE352D466CFB7CEADE0D4AFFB133B7A605EBA20707BEE021568EF4BEF6E70CDA31B2F81124A8E73A5B93B22397E3AF2DA0D614F3C05F2E8CA73479E02617E1689CF03617E1689CF03617E1689CF03617E1689CF03617E1689CF03617E1689CF03617E1689CF0361FEB238B2780B3F605B5DA203667616D0D71C7304FEA7F74B8CEEBB75B12C4C9077E194E5F83A05E8A305A4A7E5C398212D393CE7B75BABCDA48D8E14B0696B7297E02FCCD8B5AEE2E7D1D273FF0E80E62D021E297D0BE923A389DBB39B78C2EA17A836AF58FD24FDC9CA2DFE0F901EF1FFA5F437CF06E82BC4FEAABFE6A5C32F4C77F7E450DD83E8D4632988249DF2C0FDDBD21CE4EFD7817D7370FF1621B30EE5A2AE04B1AA997A6655D0C2A0686DF163F7E59E479EE4F843BD4EE4D170D998C91F59AD57CBF54AD71A827947D76FC7F086BB7E511743886F7594F9AE90FA93F8D342D47F22FECCDBC5C7BF177FE67DA7FF4EFC996783E728511A8B3377DE95F93BDD8E7D863620DFEC34EF09BA1FA1C54EF00220C3EBDA161B9A5387B6EBDC05445A0529984F87AFE43D23B531565508B5D532F58FB4E9D7D44650EE4CEE34EC34F56A5A7376B8853172736D8532BA1D97AD2BCC9C14E116FA2BF4F55346D5F707F46595D6236B256036CE3BAEE0E3AD29000B5B094B694D08479E856DF39A590B590B103F0D2DD7886ECBCB1A54CEA565A23262B2ADAC4250D2CED123726CB1B65D921EBD2083ADAD97B72EBB90E71C2B3B6F670010EFE5C3D77EDFBDBEFBACB4BEF459BD7BE9F24B871FDDE537AF1D361FF498FEF676FD50079877A0BF8E67FB3828DC42ACF2514CCDAFA0AEA25E869A5FF92B9FEEBB9C1EFCB5E2E739346F93F8F739348F249EA0FC54A5FDCEC8E6252CFCFBD56C297FCA9E790ACD1D983B2CBAE00ECBF5E74962BE374BFE3C49CCCFD5E2C793C43CDD832B6091DE7AA96939E0A4BA5457CC3079A8D48476955424120C5205D9C7B97457F395325A3F1006E6BD32F8BB5536F3913A785E1A7CB332A835569BCFB652294C65EDC5B5314D0FA5032309BC9B3A7D50137DB73B8550E64A6164BC8B75405E06D297076B335D128FAC1CFEB4A0F93762C23CAB9FBF1513663F3131A03F6BF76196E4A8F4D57D6BAE2BD17344E1A7729498E0C2CEE87C012ABDA3FA9936C337FA9006E19E7E5D1673EC8910C9E9514BD011FF4E0C0955EC85BF8CAF6E57EC2CCD5A711153C219988C699288A922AA456C26C6839A140951D3BD4301353DD69AB42F418040F96E7BAE9E7ABC0CC383E46B6F8581F7D499E440FD1EF040C6F3DAE9ABB7D0445C4C7852DB21BE418FEC0581C2C419F21AD637E352C1C15E2829A47329CE521A733A68B1DAE9105961AA9F3145DFB5D5997D1D976322E0CACBB7D6465ED748B8077532512945BBC5B8F5D1E12F5521F7B3BE666ED94CC87EECD63DE61A436D478C85794ABA45779BBCD4425DC780E66BC1CE68578AD8FE8A4EF1DA121E011DE15B37BC106D1C9B51F74CF5662DB6854564E908044E0953D4A1F6CAFB998AE3BA77427A722D46CA02FD03DD0694FF609EE510A98FDA1CAA28874C4CCB8E9117F28C35650A05E071F700A180DDF6F0A46CD76C7B68A4C31A8087B057DB0269AA5BFBD8D891BA188956031752D686B3724175964529C2EC23027D9E5A406E0470FAAAC9405B179D48089A5647231716215498B2CD876B5FDA0DF7C30DD46F73982EE25296BD5AE662260DD974B397924CB55AB1F01E54AA9E69DCA4DB7601D4955FC6B7511125E538329D475C609EC2ECB52E903691030492DBB519C6BA28F6580B6857ACCE41F98A0C29DA61022EE8296D2DC801E0E81EA14214628FB34CCB3BA1AA5023456646A6A5E4B470876AB990764C8EA422ADBEE8981448F19D3D1BF3DDED8A7738E3DEAECE999FE97D9D0468B00F377133F9D837B5841BC1AEF7759895099B677573AEC80C1BCBFB1E481F19A52FDCE85606C1FA9B4A5D3B5B95C5AD079556F3729B9BB9AFF060BC566FC243B2DEEC9FCAD74D9952FF9BA6C4FDFF4953E61EE1BF37655E824553DDAEEB5E33D67EECCC572CB15CDBB5C98F707C642E2C2A628A22561B3A4186C801BB2F178C5435B71448575AEEF03B1AC2C1241B4F4229AD4455E1666A0BC9D7B3E4BC2EB992E04AB4CCDA8110C0416A7B3A572A5EB45517BFC4D5E678F511E8E6A62AAB4E9C658AAE53D5D780366805D0F1CC21A7200044B518870DE1F77662B3D06DF23B8C0ECED9D6334103041B424AD0029095F9038FA58A0D60709233BD6A70BB18583E5356A14D0786B6E21748C68080B4023331320A2F4910059C3538DD812F19EE6AA912CAEE6C947B6FBC5B481F6C53866FD622E05010C5D7928E0A0167CE9D8CD524F602FAC318F221630460101526BC712E1B14A0579768D885D5F8EBFBC0B338440845A6A62DEA125272005BA05AB0650552445001DAB91CED529669DA5087FA02E33D0AD1CA2107448EDB0FE1B0322E15DE83D4E046487FDB048B8382E4F2B84B2ADDA452517B2E138BCB37BD01A8231221C1321640280BB79ADC6262A4C72B98496DC327CA1A80D20A04B2E6022CC1E709DAFA0B46F44800DE314028C6142F4DADB945ACB3DCB23E86D4401D74841F6BFB84E1066B6111A023E55AC863AD285B1824E5408ED7824DDA0E04B30E89C22C4A4A804A9905298A5B5EE9AA4D27987C362426D9CA746362C4E62F2EE2C784DEE8CC3988B34AAD46ED04E4F9C5CABFF9CE56C57756FECD339C7E77E5FFF672D0BABFD724CDF6F17A3436E888664BD36AC9BEADDD9B25A503F35A547A5952FA6DA3C37C7E80E122B85667C49030B329BB122003D1B7024C526C9C139E8793B9DD3601DA110FA1BC34E375AE8BE2BB485473204DD71E39C1488852B44D98BCC9575E83385002BDFB8BF65AC8C6A1A2A05979965307E596A4713C2FE220522C05EB9867B6A15092D8F35A1D4D1851B0666B45086D9290F75367105123BD161D25B1DA94C4C560A200482652AF68E5385094703572ED0A68013C9E8EB6194F61C48C36CDCB22A6720745D6C02751DFF829E1A5D86E287491EA40950CE42DAD66293604B71B94FC30AD6B65A60C3C86459083104C5FE0D51E24A02A91B0D475F06DBDCEAF1AA6852482D87368A11954328061BDD7B0B05E0E7C3F17ABD80167302134D42043C0F5C56AAF85C644D452C90CD802A39437F81E9990C481F9877EB4CDC70CC0D97C855E81E6592AB89EECB8A8CE1968B853BC1881E6B058D33DAFB1FDED86EADB2535F3F71BAA6F97D4CC8B37FB7A373497B795F5BEB0CC5D59EF17119F1F1BA3E83018D2DB7665D90AA61C10D5A7AC8109B25BA82520B069838D5E210C817CADAFE95A39FC8882DADAC7AD13BF5031B9902C4A20EBFC479074B6264E8F8A0690715DA8DCC544F4494215DC846716F55223DCEB4680752A96223215D0DDB89BAAE3976320DEEB04210F3F38A8189EB308B8B1BD76FE205F58A8C02668077A71D9CD0C0778576B9D4C317F2262028F99D0174D1B2CB567662EDC808CB8C64263434F4D6CD21A3080BE46EFC2F004A33B6DDA388C2A3604F656B9516D7322B41673C5A2154AAADAED86781C9666013C500A0CB790FF47D7464C2B7E031E41A3C7D8FDA42A755616C972A1FC776A3218845F3E365DE7C02E960A9E2BBCB900165A0B21171E426A759621FF48A7513AD702D3A805EF4C9A09F1A5A5546898C0346260A5B51AA599B3D34E0B6663C8B44F6D2A037CAEC341DD81375C001B5D558B2C8B74B4991D207CC90A79F1EE281D9532C81CE49923460B9758250272A1542035BB2C7E17A50118C2A412A3F39C9FA6CC3BCA6E4192132241D150F975833495E28B0DE34CB38475769F9BF0BA8C223D5E470A54B611F85195641FDFA925E816864E15A6FBFC7647E2EBD02D62504A0A9A47B9309BB4121B9D74DE31283D1AB8FB3FD85E6997F96FB6575631DFDE5E61BE67909B7BD6A593173A6399545071685BDD0C042B12035BE6908D1505E95D2157C06245F7411B750F24904E1F9C8D3B84C5AF8DBB1B5610349791F9D4E1CBBC5F3733ADCE70BE6C66DE38F56B331394E3A65A33D1E719AAECF8BD9999254F0A6493EFB56BE8644A79DF6BB55A6C95D5D4BA7F6FFEB74EBDD9D45C3A35A67EFDD62D02F6D4ADB3B9A98EBD6C6DBEE994562FD52D83AAFBD529C72DFB4B38B979F3EE1C57C7C54F266BF3A5208E294F79057D32E5D2D208C5DDD0907BC0B9074C672BE010BA5E0902D882D4455E2D5A5B7C44E39733A46B006B3A191A86BFE6404068C38099BD757C41BB294EFB1F58A701D82C185F2449093064391B4B9583A4C81A4FC16D142645878025A3B32F6B108E235ED296585C4A7B0F096934E69A1DC92E469CD7397E819001C282F665890A09104C5E4D6B0A7B3593AF839436346C99383A21EDD1095500CDF0D11EB4DC501A8CE62C8BF486B1424241C67E22AF5016709C015CE6C603C1D619AE01AC48332A23F801D7E26E80276ABD04553B3E1C9D8407F4124923F29D0AA3430D9B2B7A421DC1C704CA87F2FAAC67A4048E00C382F5409477AC4092FCBE22B6469F1E0215E8B43F58686C529D8FAEC544E474932324019E81B60A52EED60053EDCA683965114EE28235CD08AD59C94CCFD0DB4AC6A2F512A8C0C440107AC0D2EA08322EB96590BA9FAD31089D69B4BD96148467D70A8B405EA49DF40347AD228F5156BD867A7A39CF5A600A8932B09BA69C98D8A2FFA919F016FF8B0251AB4D02A1DE488AD672CCA305A8A04B191C5E98A4F79D9C856C316C5AE8044FAF89E8733287C8A885250F47911679A0AE4FB25023B7EFE72E70065A923C42351109D0ED596302521D6175086C38D57A1C7D61F223C4BCBC6CE63DDC059F64BA940B4EBE93ADCCE4D180ED86318FFA0C58FF5F0EE62BB9658E87010674EC9BCBE8FD509F2AB94302661D28D079B4EEB5E04F4BDA84F48CBC350AF7445DAA1860DBB7D5C1144B181E50962D4DB1AD08FC6AA783E71344C62B4329F7C255A12F285E9D881D561F41C1F733638E7A95E3D1F9E93FECCB7CB6C3641E5B4C113135150AFAFFF5E6CA271B44E6B143A403D8BF75EA0FFBA01FEC069ADF377A3EEBD6479B2FCF9B7AE6FDAEDE6BE7E8DBB05A8391653E6BA493DC12F71E0230A08D80A189BC418B65CEA7A6305ACC3AC85BD95C012F7731A7184C2818B982F9B3E812DC0B8E9924C1B894376272EA44337AA89765D614A0EAB3512AC9806C3FABE122148BCB069579876080F2B5A8DD5A2085DE80E99A02AABE2564141C64F471AB14750A1E3DC25CAEC02575D4F57947AAD8B5090CC584E0D3E9486A9ADEB860F5B1BB192CA50F2A12B3CCCC1E21C882EEB0AFB317A112A2DA2F443116E292A5444D0417438A38484A3B432B19395EA17E90A3C15B9D60E3091116848E1123C00A739CC97D4CA3A59BBDBBAA8AC05C20B2D715CAA5559901DF81CACC6DEA1DA34789E069973E10009CE19123121DCD99D75597A8ACD0AFA1E54064DA95308348BFD417928B3917C14FDE455010A32065A152A1F4D2E69ED10BA899B235695116618D2FB894528FB205D42A4E0DCBD7B522074578001245504D42A7DA04C6A7B35DB601CBE9A4C057004E717BCC4422EA75603DD715309C15D54CB47AB7D07E5618A058939CC3D2CFC88B00A7568E882C3FC961B795CFEA149ABF455429043487F479058B0BA614D0CB7857B8721B4414787CE1681CB9836C2081CD5D1CC9001BD1FDB1662468D7A4863E18986386F31800417840684B520D0A047CE5BD9196FB86DB839CBAD54B49CB47484F3BA33E2A03EBC940A119CF1AD8F0B7A246E521A0CD283A51709F29E19E4CC4AC90016D037B20AE9244D4B14AF0F81CFC8735B4C4B0F03D52BD4C52803E9848652A66E71329D551FA5A6B3C46579B52084C9901184FAEA2E9836F90204340B890F014A11492358BA9A4C1616E753083497D3EC9B36CCD4F7B51F8A0E2F569992D673F5026781AFC803E1504B74F67A058487968658E2A8C97C5C088B7A0818880110E9F155B8A169387154B38248C06B439C7AC7368DEB418CCD291935A1C7C8023A7BAF817718DA4AE911952C845DE6DED82B163226D71D6A546003070490B4C7662A04CD35248A0356DF5399952984F1B3E22316AE8DE07BE0FB63FCE255C5AD13E07DBE74D095A2ED752BD768BEF157574A98E4F69E1F840FDBC4FC87FA73973B7F7EFCD99DFBBF72FCD99F7A3FDBBE6CC67C1FB6973E6EB5C7CBF39F3C7D4F6E003AE0F811F91B621A24B33AF748B18098BD651BC484A8368854886C7BD5E49550204B8436FE9706ED0E6C62852BB976B22039C1E13B5A0F6B5D1D900521FE9913E639A9D141DCA10D1E861D3A173990D7F9EB426B4BB0E3DEB9C05EC142C40BE10F73A4305B982C4638B9B0C280C9B394CF7D98D97846E9868B4DAE8A8789D3300C787979AAEDED3D4D6CA70C8A83A64119DB922D0D74CC3AD9CCF03AEA13505ED1AD061AFA55A02C213EDB2F7107B8F0E094B3D41605A694C3120CF102257D206BB816823008E09DA7E0A378026D57C474240C10D9A7668860CC5AFDA2706701CF7B60B8E2A7474AD3ED4961259EB686F02C01D1678E2BCFEEB87DCE93CA88670C7C531580FE38E35C0913AB0E320FDB88427CC22CC14F6DE284FBA0A0717112CE20868CD290368A0B9904C0BBF5EC0A1A4559D563B99D367B5C1FCBAE0619410810121FBC03F655C2CA00F42CDEDE931C1B1166B1143D06704DBF90F1E0680893EC5DC11CEA5430D857096A4FFD282990D50970104336DC6392FA38FA5238F311499A4748F15C6D712634460D74189AE8D2E619F36D9FD7D880E9BA555AACB6B83E9E8E4AA8F2E42FBF29B34AADD2CE67295F38A1D8AD1673C504B2BC11E6777D8277DBADD6807585D98EA8DCE2C6082E0C0B04B4759604E60291CDDC004A2AB514C8320504034C514B219FE5F2DD46DF45F44F4C2842CCC200F59B6217B89BED85FAF703E3D9AEF5E7869D709A4CF4DDB009D993F8306BB18B45BC319F2B01A4E2911DB2017E9C08CE08B340F4E06752899506EEB2071B5C4264503B6C1A668BBE80477847DA422A3F517FE2F579892307B1D54E918939689897FD8A3A90FE9F7DCD0C9055AA2CED27404915F246FBCEEB0A21605BB84AB0A54FFB78956D1E5499F08372F5A9AA83A223E2DFE9E51E27176379E266C473BAB9C687CA24482CE1A69C7F1F285B274B882407959E103E2D1E98403CDC685ECE85DBE0B2F4259E3F8904D8E7C42A7D40AAD5E9872DF0048DDF7B601FA9F01508D51ACCBF7A582AA4DEB99DDB93D8DBC1B4A55A60E91A0CDA10C6AE0C02F1DDCF1608B9F6F467756D120C4FF07D6015CF904B9714400000006624B4744002F003B00C2E786AA47000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E806070D24175EB70964000017E94944415478DAED9D69701CE599809F9E53D26834BA2C59962DC9F281F18D01630E1B8363E303DB4082D924EC2681504955766BA94D6D6D65A9650D2405FB230961030924019C228071306B2F6030601BE473E50B1F423E645BF7611DA3633477F7FE989111C49667343DF28CE77DAA54963C7D7C3DF33DF37EFDF6D76F2B9AA6210842EC18E42D1004914910442641109904411099044164120491491044264110442641B8729892A08D4F033703D700693A6CCF0128716A6B00E8936EA53BE78003C053406DA2365249D0E944A5C03A60411C3BBE909CB4008F02EB45A6C822D1BF8944C265380C5C27325D9A3F020F4B3F1122C40D5C9B2843BF4492494412868313C8498486244A36EF0111491826D9C00E894C5FD20FA44BBF1062603EB033D523D3D32292A003AF4A64826660B4F4054107CAB882C98844884C85D207049DF8712A0FF31E40AE2709FA71732ACB54249FBF70B520135D054164120491693087E5231074648744264190C8240882C82408229320884C822032098220320982C82408229320884C8220884C8220320982C8240882C82408229320884C82203209821031A6246DF73A42CFEC11AE2EFE53641A795E2541EA4B0B22930CF30441641204914910442641104426411099044164120491491004914910442641B87A30A5C0316AF2315F5152E6C990129904416412049149104426411044264110990441641204914910049149104426411099044108930A73F39E908F591099F461AD7CCC820CF30441641204914910049149104426411099044110990441641204914910442641104426411841A408A5106FA408A52008229320884C822032098220320982C82408229320884C8220884C8220320982C82408A98614A11404912962D6CAC72CC8304F1044264110990441109904416412049149100491491044264110990441641204416412049149107461A6C8143FD6009B81562018FE7773F8FF8742939F61FF5C498E884CFA63023602EB81954041F8D80BC27FAF0FBF6E4248766EBC52FD3A553ACF6660D96596B937BCDC72E98F71E151A010B839FCF735409ACEFBB0039583FEB684F7D12332E9C34F2210698065E1E59F97BEAF1BFD40FA08EDAB37FCEF80A41EC0178E54AA0CF362E7BB715E5E189AF411DC5751F8DF6F8545CA0847277524769E0A9169569C971712877F00968483C41EA006980074019D1299042172D28032601CF001B018F8A79110295522D3E7834E7A235D5E486E9470447A37FC773DF04B894CB1F397382F2F24AE5096F0CFD3C0FD51ACA70CC78D5490E979604B84CB6E413279572366E02DE010507C0981CC401E3009984D68F64439A1248635125752E53AD3AAF09B79EF10CBBCC3E56742087142D3BE9C2CA128717B0CEE6CE01CF053E0B9F07E154551F28119C03780C9C028A08F5046F030A16B575F00AD9AA6791545B9E8CC0E65F0415C011602DB87B1DE1DC08E61ACB7067810B809C807DA817DC06B61D92EF9594B778F9F44412D883FE027A806D1340D93D184C960C268346250E236783A0C5C07E486BF6CD700F3005B38C8A8E1CFDD0B1C07DE03B6015580F3627D22D5641A2E6B53A46F3B801FA3FFCC040002C100DE80978EDE0E000ED51FC217F0D1EF77D1DEDFC18CC219383D4E1C690E32AD998CB28FC29E66C762B2603418301A4C984D66CC46334683518F26B98127C311E9262073882FD30E6017F02AF0095F5E204EB9619EC874791E084768DDFA84D7EFA5B5BB95C3F587B9BF72F565979F513F87EEA013936222DF388AB2F4F114A61550905E80D59486DD62272F2397B1396319935D4C56461669E6B458C44A0F27277AC21169A8A4443EA1A96663812C4253CF9C129984AFF328F0AB70A78959A0E38DC779BEF2795EEB7A39E686D9143B0069A463512CE41B0B28B5963227770ED30AA63371D444C6E48CC19E66C76434C5F37C6B807EE0E3B0849584EE3E10990400FE083C1CEB469C2E27BFDBF9026B6B1F1B9146DB143BE5A649CCB4CD647EF1026E28B981B2FC3232D3324742A856E0B78432BF5D32CC137411A9AEBD8E27B63FA14B148A0697D6CB51FF41CE749FE250DF4196742C657EC97C164E5988CD6A8BB750D9843283F983931122938834BCCEEC75F1DC8EDF8C58241A4AAAAAC011BADA3AD9DBB5877555AFF2FC8A17287014C473B7E6F0B953B6A66917C495B979A9C903C043C35951D554361FDA4CEEBACC2B2ED2609AD5066AFD67D9DCF736E3D617B2F9D066542D6E93C5D5F0B9935951BECCDD8B4CA929D21BC34936385D4E1EF9EB231165E6AE043D5AF785DFEFAF5CCD237F7D84B6EEB6B80444A09950BA5C1210294A29A12BF951DF6374F0DC416EDE7A7D521EF4DE2507B8AE6C8E5E9BF313BA70FB9BF097924722536AF2C970447A65D72B4921D2401AFDEB3CBEF3712ACF54EAB10B8DD0ED1CBB08CD86F00C7E51644AAD84C384E188F4E3E30F25C501BAB4BF999440B97132CBC7AD60947D14FEA03FD65D788013846EED68F8FA8B92CD4B0D6E8B36E1100806F8D1C61F8D78CA5BF7F388EC3BB9A9F4260A1D85988DE658A3522BA10BB6FB069F2B49644A2DFE379A84432018E0E98F9E4E7A91AEB7CC6351E9224AF24AB09AADB16E4E213439F67D065DA895C8947AC3BBEC88BE7A350DB7CFCD0B152FF0F3BAC793FAA0F39402568C5EC175E3AEC391E1D06BF6795938F970D1AC9D44A6AB9BD2488777413588B3DFC96BFB5EE3B133FF9AD4076D53EC7C336F0D2BA7AE626CEED8588777839945A87029A92A532A97263E17C9F02EA806E9ECEBE4F3BAC354775633D53433A93FF045B6257C67C6B7995C34598FE1DDD7877A9F5CEA4519E6A538AAA6D2E3EEA1BAB99AF5556FB1A973231D5A5BD21E4FB97132F74F5AC38C71334933C7E5B6AC09E184CE4E19E6095FC1EBF752D75EC707A7B624BD4810CADEDD527E0B19D68C78EEE655396712BE42400D70BEE73C9575956C6FDF9EF4220D64EF0A1C05F1BCDD7D707412998450E6CEE3F350DB514B45D36754FB8F277DD26149C15DCC2C9EA967C261287E2E320917CE959C2E27071B0FB2BB77D745670F24954899CB583461116372C68CC4CD81000B442601005FC047635723C73A8E52A79E496A9196DA57F083E90F31BB643636AB2DE62F990851085DC31399527D88D7EFEDE7D4F9531CEA3B94D4C7726BFA021EBCF6416E99780BF6747B4C5149D554BAFABAA2596585C824433CBA5C5D54777C4153A021698F636012EB4DE5F3C84CCB8C797BFE809F83B507F1FABD91AE329AD0857191295571FBDCD476D472A2E7445267F00626B166DBB2633E4F523595D6EE56DE3BF52EFB6AF646B3EA7F884C293EC46BE8AEE7B4E754D21EC7E049AC7A14A4747BDDEC39B39BF73ADE65F1670BA3725A644A51FC413FAD3DAD7CD1514D97DA9994C730380D9E959E15F3F6026A8033E7CFF076CDC60BC918A7CB19F16853644AD1A8E4F57BE9727572AEEF2CCD6A729E2FCDCF58C882B2058C768C8EE99A92A66974F777B3BD6A3BFFFEE9CFD8D4BBE1C26B47EA237E4C9742A8AE86C8944A04B5207D9E3EEA9D0D9CF59C4DCA63986C9CCACA92554C1D33155B5A6CF5F1026A8016670B9FD57EC62EF7675F792DCAA1DE629129E54253E8FA92D3E3A435D89C74CDCF530AF841D9C32C9BB68C82AC8298CF955C1E17471B8FB0B5EDC38B5EB48E22AB77BDC8946204D400FDBE7E9C9E2E7C9A2FE9DABF3AF73ED6CC5E43514E1106436C5D37A80669EA6A626BED471CF65FBCD84A6B776BA49B2B1399520C05054551F0AB81A44B895F6F99C70353C322E93089B5C7DDC3EEB3BBD9EEBCE4ED491CAE3F1CE9E61C22530AE20BF8F0ABBE4B96C54A54EE2BBE8F59E366EB9206F7057C543755F35EDDBB434EA5DA747A533449089129A52253F864DD1DF02455BB97DB56B374CA32B232624B83078201EADBEB79B1E245BEFDE91ADE770D2D4B9405651E109952E99C2918C0E5EDA3D7DF9354498735131F607CC1F898A292A669B8BC2EAA5BAAD9DAF861C49705A2484214C96DEB298637E0A337D01B975B2EF29450AD118B62A147EBD6651FF7E57D8BDB26DC46BA253DA6ED04D520ADDD174F83EB85C89442F8837EDC7E377ECDAFAB4085C6D1CCB4CDA238A31887D5417FC04D87A79DCAEECA4B66CA226186790EF74DF92685D98531271DDC3E379F375C3A0DAE03D345A614C2A018302A467CAA4F37919638967153E14DDC30EE06F232F3B0596CF4FBFA69EE6E6646F34CF6B44C655FEF1ECE044F46BDFDFB8BEF67D6B859BADC39EBEC77F259FD6751CBDDDADD4A497E49248B4E14995288A01A24A006B0182C316FABC450CE42C71D7C67DA77995234857C7B3E46A311255C59ACD0514891A388F1B9E3B9B6690A3BDB7672C05D19714A7EB6F946965EB30C87CD11F38CF0A01AE444CB093EE87C3FAEEFAFC89442180D46AC262B861893B8258672EECA5DCA3DD7DCCBDCF2B9A45BD2FFE6226A86358392FC1272327328CE2E6642CE04AE6D9ECACECE0A0EF886BEC5C1A6D8593C6A31130A276032C4DE453B7A3B78BBFAEDB8DF512C32A51826A3890CE3F0CB60D9143B0B1C0B595ABE9439A573B0A5D98694373B231B9BC546BE3D9F92DC1226374DE6DA96A9ECEED979C9A1DFADE90B5850767BCCE5BA344DA3A3B7833FEC7989973B7E3FBCA1AC3D2FD245BB44A61413C96AB262320CFF1CA4DC34891B0A6E6046F14CB233222A618ED964A620AB80ACF42C0AB20A29CB2DE3DAA629EC6ADBC5BEFE3D5F19FA1519C6B278CC12A68C9E1273D2C117F071A8EE106F36BE31FCF72CF2C8F8A9C89442988D6632AD99E458B2B129F6A8B35A36C54E79DA044AB34B1995352AAAF9718AA2906E49A724AF841C5B78E8973B816B9BAEA5A2A382E3FE23B8B45EEECCFA06F34AE7916FCF8FE958554DA5D9D9CCC6131B3919AC1A992F2BE962A983A22858CD56D28C6964298EA8654A239D928C714C2E9C3CECEB3E0683014786830C6B06F9F67CC6E68C6352F364F634EFE14C7F0DDF285D4C597E59CCA58DDD5E3715A72BD8D4B931A6ED4453AB5C644A210C8A019BD5C6A88C02CC449FD1B3281626E54C26DF9E177386CD6C34936FCF27332D93C2AC42CA72CAE870B5336BECECD023606298151E5003D4B4D5F056CDFA9826F43E9813D5F3E19E1599520CABC94A4E5A360E6336A8D1AD3BCE544A6E7A2E06C5A84B5B06867E6373C79263CBC11BF062B3DAB098869FBAD7348D6E57375BAADF676BFF7B31B56FF5C4E89E2A2F32A5D8302FCD9246A17D34D9C6ECD073C3A339A1D77C2880D168D4B55D0683017BBA9D4C2DF3423B878B3FE8E748FD1136346E88B95DD7145E13E9A24E9059E32987C568C191EE20D79C17F56D184182F4787BF578D0F225658FB58864ABB3958DD51B39EA3F18737BC6E68D8D74D10E91290531194DD8D3EC641833A24E40B407DB38D77D0EA7CB49500D26D471F9023E6A5A6A78B9F265FED2B14E976D46516AF9A8C894A2433D9BD546BE352FEA759BD5060E74EDA7AAA98A5E4F2F9AA625C431A99A4AAFBB97238D47F8B0F5035D26B2FE7E5A54F732BD2932A52819960CCA1DE59418CAA35EF7B8E7285B6AB670B8F6103DEE9E8410CAEBF752D751C7B6DA4F2E3B552952564C5F1171CE03589F2A098827AEE64033E8035D0EDC18D1F025CD8637E8638CB9983A6F74F3D59AD5065E6AFF2D670ED4706FFB7DDC3EF1764AF24BF47E766CE4E771E1E7F156D655B26D887A0ED1929F15F145E30B55575241A6B557F1B16501E94037500B4C0FFF7DD9C8343E673C7B6B2A86BDE38FFBB770FCC451F6B5DCC5CA89AB983B7E2EA3B246E952A321E290102EF57CBAED341F356C1DD66D1E1763C38D9BA299CAB4379564BA9AE909FF00BC024C05FEE572C377455158326D09EC8F6DE7CD6A037FEEFA13870E1F6279D30A964D5ECAD4E26964A5678DC803C702C100ADDDADEC3C57C12E57856EDB5D307941348BFF72E01739674A6E0C5FFBFD8541720D1D9DAC193C5EF2942E8D38EA3FC87F353EC5937B9FE4F5CAD739D17C028F3FBE455B544DA5D7D3CBB1A6636C6DDDAA5BE9B2B5A5BF20DB961DE9E26E063D755D64BA3A643284877C1EA025D2957F32FF1F756DCC36F7873C75722DCFEC7C862D47DEA7A9B389801A885BD2A1BEA39EEDB5DBD8EBD52F2A3D3CEF87D12CFEFAA5BED984E4E3D78085D0C42027D00C3C4984731BB26DD9AC2DFD85AE0DEAD0DA78C3B98EC70FFF07BFDDF5DFEC39B507A7CBA96BD64F5555BAFBBBD95FBF9FAD9D1FEA77725DFA0B0A1C05D1ACF295D0AE5CE1D4E64260FB30D6BB03D8212E510C9C07061775C8008E132ED91BC9377CD62B69716BE0FCB43B593DEE1EEE9C7427E505E531571902F0F83D1CAD3FCAAFFFEF57BCDDF3A66E6D6DFD6E573443BC1A60A244A6AB87C6AF896401FA8163916EC06AB6B2E1C64D716B6085671B4F9FFE39CFEC7A86773F7F97868E0602C1E10FFD5455A5DBD5CDEE73BBD9D1BB4DB7766EB871533422013C36D409AC90BCD16920B46402D701EF017D916EE0EED977737FD677E2D6C00EAD8DB7BA5FE3C9236B796ED773EC3CB993AEBEAE689E6CFE65240D78F9A2B98AF71BDED3B55EFAF299CBA359DC49F842ED6024357E7544A7013AC33F870865F5FE0C5CF6C28F4131F0E41D4FB161D3EB716DE8C96015275BAAD8DF55C9CAA6552C9AB48889851323AEF5E00FFA6971B6F071CDC7ECF07CA45BBB4EDD578BC918950A179D0890AC323D1BFE7610862610894C00E3F2C651B5FA342FED7B893FB4FE2E5E851A01D8E5DDC1E13307D8D7B697D5E5F770EB845B28CA1933647D3C5FC047ABB395DD6776F35EDBBBBA0EEF22AC8B37382A3D7B35C9344B3CD117B3C94C517611CB272FE74C5F0D9FB8B6C6552897D6CB3BBD6FF1F9B1C32C6D5ECEDD93EE6676C96C726C39176EC5D0340D555371795D9C6D3BCBA7359FF249F3C754058EE8D28607731E62D575ABA25D6DE5A55E48D66C9E1027BA5C5DEC38B1833F7FB18E4FFBB7C555A8C1CCB5DCCAEAE2D5DC396911458E228C0623AAA6D2DEDB4E75CB17EC6EDCC3F6CE4FA80D9ED5A54D0FE63CC48BF7BD18EDF0EE70F89C54641222A3C7DD43C5C90A3E3EFB31EFB66F8E7BF1C6016C8A9DDB33EE646EFE5C6CE64CDC817E1AFA1A39DE7B8C6A5F95AE0987CEEFF54573BF128426138F2734073221659A1D3E5916128C7E6F3F275B4EB2F1D84636B4ACD76D126924E42905E419F2E9D57AF0693EDD9F7218E5F5A4019E017E36D4024A02DC8FA249D74D3C066664573555B1FEE89BFCF5FC5B113FD3289119A6487F7381F66224C275A64DD275130F455148B7A633B17022CB27AD609163C985E72F25230FE63C84EB61FF704472038B2259D0B876EDDA2B7D9C69C03DD27D135328B3C98CDD6A67946514168F05AFDF8F4BEBC34FF23CADFDF7D35EE6B1C58F459B6C181835FD3DB02BA2F72B41EEE33F07944AF74D4C026A806E5737E7DACF72A0FE20FBDBF6B3AEF30F49D1F63D4B0E30A76CCE7057FF1310F134F24491692192D54B68826A10AFDF4B675F270D5D0D1C6A3CC8D686AD7F53783F918675CFAD7A2EDA8CDD60FE07B837AA489E281566085D55FE67E9B6899D945035155FC087D3E5A4AAA98A8FCE7CC487E7B7E876FD2701A251C40987449609E055E07BD26D131F5553F1F83C347636B2BF6E3FDBEA3E616FCF9E117BE2048452E883A3E29B376C64E5AC95C339378A59A4449409E0514237BD094932FCEB75F772AAF514C79B8F53D15441ADFB1C55DE637870C7255AD9143BC5867117C47DFFD68F995B3E97CCB4CC586B4F0C5BA44495094237B6AD9528953CF8023EBA5C5D34763572FAFC69CE74D670DC59459DA796CE40071ECD834BEB1BB66036C54EB96912C596625A7C2D4CB34DE3FB33BFCFAC92D9D8AC368C06E315152991651A2CD53DE10445B674D9B8720D303AD6A15F2018A0CFD3478FBB8786CE061A9C0D9CE9AAC1AF05E8F5F570DE739E767F3BEDFE7682844A2CA72BA1BB6F8304096A4182044957D2C93466E23039B09BECA868146714336FEC3CA6174F273733178BC982D968D6A312525459BB64954918591E00DEE0CBE296C34E546868F8023EFC013F6E9F1B8FDF4D97CB49A7AB93034D07E8F1F6B0BB6317159EAFDE2D3BCF3A9F9B736FC162B030BD603A39E93914398AC8B066909D914DBA251DB3C98C5131EA219146A834DAB37ABC792293F0754A09CD8ED66D24A06A2A9AA65DE8FCC160F042D5A2A01AC468305E28B8E2F57B431D33FCF81BE042414893D18482A2574D3E37B08441A5BA4426215EBC03AC8E354A0D37AA0D4834B87FEA58D8F2D3F0A983AE480D08E152DC0B2C6084EF685614058362B8108D066E14D4311AFD5D3C44129984CBB113C8099FA00792F838B4F031647091422832CC13AEC4B9D4BA70B4529248A2CF085D62A98D7B54159984614A752B895B436444251299043DF823F04D12E71AA09B50FDEF1F5E899D8B4C821EDC06FC14B88B089E0F1507813E24F468979D57F24D1099847888F57D4219B3D2380C0503E1A1DB0E4213A37726CA818B4CC2489C63DD0BDC4E28333850F3D03A44140BF06579E7CF812E42D786DE19C973A068F97F64DCEFE8786585EC0000000049454E44AE426082,20,20),(5,'Refuser','image/png',0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E987969700001D137A5458745261772070726F66696C6520747970652065786966000078DAAD9C69561C399485FF6B15BD04CDC372349ED33BE8E5F77723120C690306975D3638895428DE7007495966FFDFFF1EF33FFC6ABE641353A9B9E56CF9155B6CBEF34DB5F7AFFBABB3F1FAFBFAB5C2E367EEFDEB66CEC70F3C2FE9A2C785793FAEEFBC9E7EBDA1C4C7EBE3FDEBA63C06F2F531D0E3072F0306DDD9F3CDE3BAFA1828F8FB75F7F8B7698FF7F5F8E6711E7F6ABBEEA937DD3F7AFA772C046325C60BDEF81D5CB0FC5D7541D09F183A5FF3F577E1221712DF8750AEBFDB9F63675EBF7D0ADE297F8E9DED8F2BC2FB50189B1F17E4A7183D5E77E9CFB1BB22F47646EEE55BFFFE073EFB97B7FC16BB73563D67DF4FD7632652D93C1ECA3E86B8BEE3C24128C3F5B6CCEFC29FC4F7E5FADDF85D79C449C616D91CFC9EC635E789F671D12DD7DD71FBFA3ADD648AD16F4FB8BDF7D387EBB54AF89B9F412988FAED8E2FA1856542254F93AC055EF6AF7371D77DDB75BFE92A775E8E2BBD6330C73B7EFB6DFEF4E24F7EBF0E748E4AD7B92B98E58A15F3F22A3DA6A1CCE96FAE2221EE3C629AAEF85EBFCD6B5A7FFD526203194C57982B0FD8EDB88718C9FDAAAD70E539705DB2D1D8BB355C598F010811F74E4CC60532603385EDB2B3C5FBE21C71ACE4A733735AC00F32E052F2CB99436E42C824A77ADD9BF714775DEB93BF5F065A4844A2690AA969A193AC1813F55362A5867A0A299A94524E25D5D452CF21C79C72CE250BA37A092596547229A596567A0D35D654732DB5D6567BF32D0061A9E5564CABADB5DEB96967E8CEBB3B57F43EFC08238E34F228A38E36FAA47C669C69E659669D6DF6E55758B4FFCAAB9855575B7DBB4D29EDB8D3CEBBECBADBEE875A3BE1C4934E3EE5D4D34E7FCDDA23ABEFB3E69E32F779D6DC236BCA58BCAE2BBFB2C6CBA5BC0CE10427493923633E3A325E94010ADA2B67B6BA18BD32A79CD9E6698AE4C99A4B4ACE72CA18198CDBF974DC6BEE7E65EED3BC9914BF9537FF51E68C52F75F64CE28758FCCFD9EB73F646DF58B51C2952075A1626AC301D8B860D7EE6B1727FDFA3A960BDBCD337D5A713081C673D20C73B69E763B105E70897FE53E99837175385799884088A728CE2E10CCCE128083D2D6728959D1EF6786504F0DFA7E579FFA2E679D530B7F783490C14E9E097C3DA2889647D377E56C77BD853EA202E9F1CF07342F23FEEB80E6798A3F1DD07CF4CCDF1DD07C15C4BF1DD07C15C4BF1DD0FC6D56BE1AD07C37CD1F0D687E5A37CF039A7F2DC41F55F61E8D2B0F38D51B1236AF1DC65A36E73196C97AEF763D9C1162CA752E94408F8E3F7BCE9AE1FDE8F20407EA0E8C33EB868BFBD5DE6FBF9A772F80474C22573BB6AF08935C570FB30F37A20B6BDADC965BAD4530896B261095B6EED9A73519B9D21CF719C0CE008363C8231F97C61A3339044C8CD579CD27D90EE0DD52EE42F899FD985601C8D9A473404722B2D615C63C92D81B4A482EA6BFFF6AFEE242401501D6C60C2E9302C0B28E92EC6A2803265ED78EB19952F2E171DA8CD90DDF7994B2F799602DC902DA22CFBE6C5905C4D5CF08D2393ED947490C9B62B92ABB879C005768F5F74CBC4FC43A7734FE1C0C43B9DD2536E7D05714A0F4DF7561EEA7DB4FC67EFBD5F4BFBCF0FE7A1A959DEBD62D9BAFA55F8FB5AAEF86E92C820327852FA2F07910CCDF47E1F3209897281C882C8DAB95528979E57C20D9513551D8784F08348E821A08357BDF5373E2EB80530A7582D9A88DDD1BAAC1163DFA8E88F6DAB8CBF414CBFD48A9DFD3E5B9D495D4FFF53DBA7F9570289608D39E895E000814417B870E7395A6BE1B0C7FBDC52D85F922E1A3F8FE6138738FF7EFC399B7D3FB97E1CCEF4FFBB3E1CC47C1FBEE70E6A3E07D7738F3792EFE7E38F337A9FD9BE1CC1F823702968B3BB91305620EE5477D3694E4AE65CFB0131D042EA36BE73E6BD5492318300FD93FEAC609D01CF36E54F937A4E27CF41A4AEF8CD419C84A188E9D2D62328CAB11F64DD927DB5EAF668D790E71E12A93271BB19433210C8DB5A74B37CB215B219930CBB3EC34FEE985733F7D53BBE5AC99940B4E565FDCC57E3867F33C69AF789D6B2EC7F91BB652DEE39EB3F0649C3FB5B879EE717E0C82540FFA58BF3B1665B8888D28A8F2E660848E8D8024926B589993F037397B5B4C5EB3AC3C5683EB78AA5CDC0DA3A575E4816623F82244A90CADD55C1CF587AFE6A31FB8D7F913E26790D2F4C75E38815A093C13F0066C9EF18A4086A6E5115C5F50DA1D952BA67744F39DE697809EEB5FE7C2659EA09957687EC3D5BFE75F487D55C095FFB1654B5E09E5A213A4DF119B5C175F748240A84CEB531A77FB3CCFD77C3EE13FCF373A14D63D93EDAF2B07944D5B6AC2B0EA28FBEB3A62A47AEC22B011ED532A1E726BF9C610834427F2E03E76AC63A46867F2394D48AACDD15BE039CB4E695C856107F7F37CBBEC0C9A55CAD7639AC9DDF43CB354CFA4D30EC439155A305F8F99E7197ECFC3B394E56619C81704CC3AD9B5093362105B42AE4047185FCA81A0474FA3E12169020DE16697354410E51B8FBAD3554CFC66E48A95FB3547F3FB249963BD2E4C72DB56294F5B515BA3DC3AB78153BFEE4FEC9881799982C0ED790A74A0BB2FBDA7C1358F69BC044A2839AF2BCD3D11C9F16B22AFD310F6A4AB411E53799EC85320CCF722F17120CCF722F17120CCF722F17120CCF722F17120CCF722F17120CCF722F17120CCF722F17120CC0F9BA388B7F003AEB72D3AA0B28B80BE955412F0BF42D862F4309C4F756382828F575BCECF53803EDA407ADE21CE15F396C3F3E1F8BDFBCADAE8C8119BB6177789C162C6ECB635AC4B4BAFF31600CD7B04BCA4F42DA42F194DDC9EDDC41356BF40B579C5EA27E94F566EF17F01E925FE3F95FEE6D9007D86D89FCDD7BC4CF885E9EE995C54F7203ACD580A224BA73C70FFB63417F20F7BC1BEB970FF1621AB4DE5A2ED0CB16A98765555D4C2A0686DF3CF11EA5D4781E4848B7ABDC8A3E3B23193DFB25AAF96EB95AEF508E637BA7EFF0CEFB8EB1775F108E9BD8E327F2BA4BE127F5A88FA4FC49F79BFF8F873F1677E9FF4CFC49F7936789E1665B0B4CAE05D85FF963F69ACD827E45BBCEA9EA087197B1A042F0232BCAE6DB1A99ABA68BBAD5341A45D9182E59AB0CD21F0A42EA5A60EA1B77AA1FF9136C32E6D04954171E7E99669B66BCDD9E316E62CDDF71DEB1C6E5AD7765C252BC23D8E57E81B571BB5301ED057D45A8FACD588D9B8DE616348B7A6002C5C232CB577211C7916B62DBB8A16B236207E0DB47D27BABD6C67503956CB4475A6EC7ADD95A0E4535240E4B8EA5CB7921EA322839D6B36385F7C2C6BCD5D7C702B0288F7F2E1EBBCEF59DF73565A5FE6ACD9BD4CF965C28FE9F293D7099B3FCC98F98E6EBFA903CC6FA0BF2FCFF6E7A0700BB1CA9F626A7E057557CD32B6F2CA5FE59ABE2FF9C15F3B7D9C43F33E893FCFA17924F10ACA7755DA5B46362F61E1EFCFAAA57E953DF3149A3B30775874C11D16FB759198BFAB92AF8BC47C5F2DFEB948CCD33DB80216197DD496B7074E9ACF6DA70293C7464F6857494D22C1205550425A5B77359F29A3FD0D61607E57063F5B65337F5207CF4B83EF5606B5C6EACAB5AD542BA5ACBDB83E9719B10E602483774BA70F5A66EEEEE418EBDA39CE8277711EC82B40FA0E606D614AE2915DE2570B9A3F1113E659FDFC544C98F3C4C480FE6A23C455B3A7D3F708BDFBA144AF99849FCA51A6C0859DC9870A54064FF753363374E69027E15E615B87390E4488E48CA425E8847F2786842A8DCA7F3C5F3BBEBA55BB73E2224AC21B988C32C9C45411D5223685F1A0264542D474EF50404D8FB526ED4B1020507EB8515AA01FADE1F120F9367AE5C1471E1439507F263C50F0BC6E85161C349136054F6A07C4379991B310284C5C20AFE942373E571CAC4549219D6BF58ED658CB438BCD2D8FC88A4BF34C3985A1ADCE12DAB49E42C095D7BF5A1B795D23E11EF4C942A554ED16E3D6E780BFD485DCCF8556B86537B18479FA08986B0CB59B29D53EF7E8048A52F52D4E98AB376461F05A6D0973321AD1CD2D60350616DC45126744D7033CEBDAA7B982397D8639C58A0C11D111812941E569A0487A4A842F57155EB632F029F6DEB0EBCC25B5ECF2602E3BD19D9B56F7DDB7E62401FA18580D4878D32088A544B247CA8B46DB61079BEAD2920B989DD03A35AF2C7808B9A55F0FAEC6A333C3EE1379B10615EFD20CB42E6ACDD763C5EF9BBCFA45299A44202A8A30912EDF2675E6A78D200BA57E5C4BA125BA8202763632D0A1DA666CDCDB9575E8C7ED97AB6B4683D8EADCA333D4569F0DA450F105D876A30D4B086D748C7310D828213ABA868F360FFE69D3E0A5DBCD7BD9FD53D5BD0B16A24302DCC513F0340E258D29885DB986DFDCCE6535BFD64EE8DCB94318D1D19AB674D5CCBAF999873737A3F97EED1856BF1F8CD6AEDB70979B3F6D7CF04E6F37ED10AE9B83F383838D0BFFCD5046D3FA2F8632F713FEFB50E625589F0C35DCB6F7CAAD764571EAA9A66A8FEF8B7FC2B4895AD826911121358DA0835C680D20D44AB866DD5250491D83671E0EE91E3C3F3803E089CE4304C4DC7ACCA165A395DF6D650EA2AFF409450C1F9FA94DE2D2E87C9147A3B712DEB2243B66649AA00030523CAF80B01DAC3313F46614B83150435E51A084759C069D60B55EEC199C1B2C3F681417A4A328FC1872A0D7E9ADBDB59960BC8B95509C1474C20D0BA27DE5E3F6D4149688A811B93A61657C55A223C2EA632E972446E244C18401C69903700CF03B01248DE626668778A78346B21BCC026BE17A3C5B927D8301E896B068433C8C43753011E246B079C3A43DECD0C9C2399040043EE2B44BEB281B7554C10BD1F2E71A758F799DA84195ED6BB5B3BBD8EBA2FB0F8882703ADEF6E201C4B316E006A1B5018938A8CB75C0AF8D449C724A60F37615BAEADAF986A3A2526A10256055CAA06D03AAE8661D61E1DF4026330E8B17EA84A7C8F89A3E643CE6609883A54B09C85E89B98E6E02612C39B9AA133C208FD7CE6307937BAD9472A6D775F702E321082988B5B717A632744466C6C2BFD06F1464000231A81E0C0E0E0208AA63D2B66C9A31F5B4FBF0009E1D485517D10CE0EFAAC4798FC57D2C1ED1166F287592CE8352BC59E4DD7DE1DAC65D4E2A3680916D4594F5DE6556D9E5B15DDE9DDB5DEFE8A2910565E34E7DAD1B5E6EBC21A030ED8C284F42403D42FAD9422EDB1E1861B9ADBDF182AF1E57CF042D5A5B9A6DD3B428C289D0EB35C2A5C3A3616D1C15691F75BA60565F7A8EFA4DEBD21B15339E57C8195599E8BA85C8855DB379B795EB636FBCC7770C72B5481DB7E957C888A93D6982DB82FD2204F3CC08635F0B40AFCB10A08816225E9621DEEEBCBCDB7731BF160FDE6FBD7CA421EFBD8C6B49E3DD4A92F9B59474AF24FD7407C93CABA1299CF0C085844086A4003E091E6AB007C86CAF4D3743C381F8E9ECC9B44555601049F40A986591401D57E43DE89C26514027212A5628993A433D540683E990A2FD20767AABC575A5091AAC26D05A83160A800B1A6C2C550875B3B00CDEA37052EBEAE99D2A9A52C76B3A658F7C00E4169A73818A64AE18473FCFB389794C69CCDE42B415196253BC5A66AABDC0DF0E7E8E86E2459F016649C75192165AB4DCE47DC7D4842EA9050867783E2CEA1EF947D1127F6E7CEDEBA42CBE583C23B09FC70D0DE8D15B63C491E2320144642ADC2E8F1A2D581046D52AEFAAA8A5ABFDE63C3680646B237EB863DBC81D841CE08733401C0F2261C0AB73EBF94A1B0C8FB212030C4A70209451932DCAE334A7BA9FE849382A00DC531AB3B7D4561711187A666931C9CA345CE7AF51437690D99DE64A25C37018503459B05591A1EEC66C1D64C781EA7451405DB666488FAD0E5A112F2A32948AD6F468D13C4029486EE9B4652DD415B0D4E80F074D14F083908DCB1EC071A6881BADCF8A25A1D98D9E0B16B387CC3B2D4F6ACE55DC4BADF8A000386C42CA73696B1BDADD98912A196F12810315F6A6884BE08D4E783DD5C7A4FEE84015BCE9AC406120C8E02D1A32A3C0291420C882A18B84180CA7BB24989544B81A588B02A4BC264ABBAE1451ABD027D8848C0D5C0B42262632245CAF5545697A53C7B5F128E5487A1C7C1B25EBE6BD0F414861EAA6A2C3987B7407D7760C108A01008EF40AAD979A43B02F2C0F2AC55B78A3F3180867182DE48E1261C0E832F3881928D68A82453B471284B152C9551DBD045CED316596A8F35911BD4A3B4DE6F53B147EBC0B30F66341D67CB422FBDD4D68F381BE7EB3A95BB520F5BCA0FE060525AEB4E5F3048302D42FB7D25FBEC294E48F07A22007C3D51820EBCA1F2D430D8C3A861310C475D31F09298A84475CA21170F184C5372D0E3D3CC0BD2C6DF0A688354A0B02D88BCE6D65E0D291F56E958ECD757861EDFF60DDB474AAA3C0302D3F1D94928CBB6A362F433C7C4F1E51D0E45AE7C47F2131E4227A47E2217010A39D42BE169342BE9006A180A7222665864841A564E0FA907161719E5C81CC1C25EDE04F8CA1A7AED14316BEC4100FF2160A53DAD782C4B8B7DAF1BB10B52BA614E0BC6172238D54133F428B01CB78FA8630EA3A6485E9A72A3A3A03282B8E54D19032808CAE83E739E1455045D07C39E829C00C76D19F2CB3D9B5A35D1C2A7CD0E4303B2089427409A2223C900778749B3FB0DE0470538B86C486E7A5A66CCB0DB4477A587D9643A7A08BCCF5A525A18935E4407B41F7A122A3081FAA1906BC2F8008D082C5D89BE7D53A89A0C70F9DEDA23CE4420A8EFBC48588D4999D8D6C221E686A3426DC47CCCC6AE09D07BD284009C22A2148F5B676EC9B707ED979E67DEBFDBCF3CCF3F98F9F769E51EBA15931400DA51CA62422720EF10A4B8ED691DDF075A7EAB0B7E93AE880AC230C74161AB4221712F8D90C7410EE151166861FBAD7B1B5101D9B401B8AEBD7D92825F9DCABCCDA750DF3FDE6AFE902EA379BE0D29B6F367E2594B4ED0B236A73E95E0100D3AF22B8F662DC2DB70C90AC4E2ED732EFCBA4E2BD08F632297DA4EBEDB4AE337F2FD37A6C069BD86FEE78B72DFE6B5A8F49DDDBE28F696DF9C2F21251EE2EAE8769ED910BA47263710E2A85DEB59452F599095F08B4D5B28FB0E93A0D9336D93E607F864117CAA64CF471378873143730E203F7D1DA5A90D144F96FDC85766260552D40A43CD0FD699D18318512F2F06D0C8D362076DE68C911A787A43E723FDC7CC1A51892DD756D891028AAA2E3793003B5CF89925A0D0E6BC3D1E0D64F0155D7A931ACD8BEEC1CC5EE00DDA84963BB6058A4009D01A48072DA59D3EA269A8B1240A9A21412AA1169467599D8002E4158100E8225F6203FE3D2061D0EC9AF8D9DF71D578B8127CE3003EE36EA582F868C9C47411875A43D78C2A775F803E203C9894415003A4295853EC410F5D9681C8F9804B10BF9C5D078200DAD1B24CB3C75E4868406E23382EC5DF949FE203DB3F43662898EE9CC0A6F3EB65009E4A04088234A100FE810853C04C036A4D051157428C07170735AF62547DA8A80CE19515B1429CAB95D8213A74C384605D017D65A2C82FE36E372180E7819A8FBB9FAB3E004623B1E7569D51842E8D62D87EC02B5076A82DC90C4E271D973B91250F6794FBC1509C1AA8307F2D7280F2D2CE0BDD02BC80BECE2C9B44219428B0EBCE9A0A2777830679A56F8A40DE940AD811DC90C446FBF8F31F9528B7C3A5ABE9D30F604F9BD941FBC93373C8F20CEBB58943F380A0F1101B422CE63E3915DC5E20238F06AB238197D2E0CF18D010576E3825EA69229F30CAB0C9E6754832C75A85CD423E2DB617918A8806814DA116913626C39684601A1D4B636983AC491F0074EF1213F5255E602F524EFF1EB88DA17BBEBEABDA3C3FD5C2529A9B93533E5A663D1B9111D3B0449B5B88189A72310D064B148249382DB7A9CFB28DB70DBCF53AFF549B87F6693042FAB69432BA7BE08B52B2E447FAF8CCA00C47C1D7C9E4E9F34AA3EF475E95071934EC93F76DFCC47DB6F5F6C246AD17929124CFFDA42331FEEA17DBE0FA863F66F26D5A3F974BBFB8B4DDFB7D3325F9D3EFA7AEFF69E9CD1A945D49DD322DF41AC63080ABE07385C3A82DBBCD57ECF94090666F2BE3E1B37D1FAD301644A262E06E16EB4240FF6D453B03F7142A7017471C39324643FCE95465B3AB81E9ABCE55EB35C9F1BBD6C499CEDE1F28DA81EEF4A0F7564DFE820D7A4ED919758D8A195490FDE327974DCD62A9B3ECF1AB5630F1974664B3FEB236D0677EFB2DFD28647EBD3BC5FB3653A4836F9504C16FA58BB2719C90426CAC3E2D00123CC47D5124E04A3B47AAC4F526247705155C09E7B055429B943C543108CBB707B3B6B8303E78070EC9E40EE285400452197068C2402C388B43FC26E2088746EA26DD0376256E9A06DE7E908CED1F4C1983A417A088727BC161C88C3CCD482A92D24720071923902040EB556DDD62672D4C2267DAEF32F883AF0B1757D525AFB377285BD03EB018AAE10E4D4E77101FB7AE1112E92AC03B0790831719EC0A11CC055230515EA7C2C10C9192E5F9F90E409E5FF82395D9845E5A0295B0911B44761575A1D6F19E1AA040111FCA5A3A30B4E73F5D2FF498B5E12AC5007AE8416C1F8E302DAB55E1386C710E2408A523860AC4C163254BB23E9432D5C1F3D075911F997D2E6116B9C04D074C4722A3C288A5D2638E81395DA648E32EBA1582C6748D280601C92461141AE32CDA63DEE3326059AF50126D4502D356B3B0EFDBDD2DE5BAB7F93128DFA8C4DA39B893A3A071A64401C2E14428140E038F83368119D63EB6E56EA05648530A1CF32B45BACF3D724B2769712BA072EEB9062A0B9E01AB406B8C7DD6A3D816B2A4027BB7EE10FCFCB13B7BABB8EDE6360D4EF0488BE4179B9DB42440658CC2034B181F01D26589516448D60DC43A6D6110C784AF8A12F92087B4099188EA6A33B3C0636437B0640102E06511F9B3E7E2F95E9AF95BF642E3DAFADD5A04F8051817887142F0D1779F486F9EC5A8DA7D8A24A22CFB826AD8A1DA0CF32D2EB2458A099E09F0FDAC3A396C627F4326D5A94EA5AFBAFCE2F2C68EAE9A068B85FD72102E4990DDA2D363551D39BC45011470B09E23E5C301A0BB14C5B72A71C46635235C29908812541ACC56B2A528BCFFCBDAD616A9504200F6C3A1777A037C912951F363D142DC354A03757BC369605AC1CE8F004FAA98975A1961D017F54B1F09BA272D7E943C42D84799FB142A8DFD4A0357FA8605F621C31B96F49DFE1BD1BED0D9EF3DE480ACAA70EB1FD6C38738FF7EFC399B7D3FB97E1CCEF4FFBB3E1CC47C1FBEE70E6F35CFCFD70E6EDF472CD15108D1549DBA4BA4FD62718A14CADB75AD493AD620F3A336354D153765507C8979DCC6C531CA60325409B8EA5F96B11052EC2A931237F6FD85D6735B4B90B523AE8D686B4AE337B533B82B59808BC2E1D093D45870171D8BEC3E05EA899D2B0B15AE935A815750946470FC1C2545AADEA92CA00EA702521D8210D0C323FE72B1E0BC57AB0422D5C36433EC6EA63E717476BFF1F489293DBCC102ED75E12381FBB410DF661AFD79D3EB788B403C07BD3FA8713960B2802B3C4931D6D1EE2D8783874A997F1E887BB4C4C9FB1DABF9483E3B1950B6D913ACF9855E731842367272D62E151E87BB8DC4E2DCB629A41546C137748A8094388C44CD82E1411B4B41934749CACB4F9F4FA183CD89E8A2F8E67D6D4A3E09FA9441CFBE4DE8000E06792B613B570177AD5D2023E461BEB0463E97F3490AA5FADC04B9836F16C9245C0FB293EA1147D701D07E8AE73B512587E4770A691EE20C555ABCEE0E00D6DBF3EAD8A074DC117A6AB4FB73F4E6FC96A781F1FA7B78C856FD2759C1BD8129C9790F06013F5A779AF4EBD6FADED1ECA44C79DB43E2E232F8E80E7F471216DE81A1E1399A25313580AB8191F4DA720BC02FD20651445EA5915C6E35297A7C19E80645D73556D3793AEAA818E0E93C1A7FA9F60C8E741633A89413156417FD7DE8F44191CEE2872874684CC2111109ED224558838804D7BAA3068BCADC04025901462F9CD13CD4F9F39FEF023B0586254B7235870D44A4EFFEB012D0C44EDA16A7702EEA7979C2CAE563C2DBCB0AE536DDAF0EB846EEFA2CD7A624EE96B1F6333203A1B6315330E401F9241C88C615A8C0004CE315B2D18902912BE18A5E9ECCF7AACD0C55C1BAE1D098421C41C624D6323882362760F3760A092B549B1D01F94ECB44EB4171ACDF4F499A5761869A0A170B9A09ACEEB2CAD6F30A71C6C368B8E84DF19B6147D1C1C68A2E9E1C58DBF43AA68AD4380076D8B5451D9CC1247E23A2D8EC7007DF2DECE99E361E123F1D347D147CBE1558C10FE80FBDEDED4EB3F2DCF0E94BA369DB4D2A2FFABC542AF8E53AC8AC778C5D5EE856E4F09D186EBB672DE3076AAE7FDD369BBD4FC3F4DC9158EF0E11CE900000006624B4744002F003B00C2E786AA47000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E806070D2528F1CA15180000136E4944415478DAED9D799454E599879FEABD9BDED81A9AAD115010191710376471C105178624133231710C3A47A3A3639233277F789CE838394EE64C128D036312D7CC2411134550E3022820B84411644740686493AD0BBAE986EEEAAEF9E3BD653708DDF756DDAAAEEAFB7BCEA9D35DD5F7D6BDB7EB3EF57EF7BDEFF77DA168348A102271B2F42F10423209219984904C4208C92484641242320921998410924988CE232703F6F161E062603850E0C3FB9501A124ED6B04A8D369E53BDB80E5C0434075BAEE64284DCB89AA80678109493CF14566B207B817982D99DC45A21F4B22D1012B81F324D3A97902B855E7897049037066BA34FDD249268924E2210C744F871D49976CDE748924E2A41C58A4C8D44A3D50A8F34224C0786069D023D3C31249F8C0338A4CB01BE8AB7341F8C0603A3119910E91A98FCE01E1137704B999371DDD4F12FE71719065AAD4E72FBA0A2A74154232092199DAB2521F81F091458A4C4228320921249310924908C92484641242482621249310924908C92484904C42482621249310423209219984904C42482621846B723274BF9FC5E6EC115D8B9F48A6D4F30C6932BEB4904C6AE609219984904C42482621846412423209219984904C4208C924846412A2EB901380638CEA63EE54023333A4229310924908C92484641242482621249310924908C92484904C42482621249310C22108B5790FEA631692C91F1ED0C72CD4CC1342320921998410924908C92484641242482621249310924908C92484904C42A4100D4229928D06A11442482621249310924908219984904C42482621249310423209219984904C42040D0D4229846472CD03FA98859A7942482621249310423209219984904C4208C92484641242320921998410924908C924842F9C2D9992C7378179C01740B3F3739EF37A7B44F588FBD199AC924CFE9303BC08CC066E002A9C63AF709ECF76FE9E83C874C676D6791D9493671E706D07CB4C73969BA2F33129DC0BF4012E769E0F070A7CDE4609F0619BE779CE360E4B267FB8CB854831AE75969FA973DF37EA81C2146DABD6F91993F428D0E844AA1635F312E7A6242F2FDAA73085DBAA747E7EC311A9C8894E2DA9D8781022D339495E5EA40F3703573941E23D600B3014A8010E2A3209E19E0260303010781D980CDC9D0A918212993E6973D1EB767991D9849C88F48AF3FC73E0E78A4C89F3FB242F2FD257A83CE7F130F0779229716602AFB95CF63594C9EB8AE402CF032B80FE9229316E04E674B0CC1C6739D11944A3AD8FE4712EB00DB84732C54F04F81A301D7819D88BA54BF73ACFA73B7F8FE8ACEE04892211387A148E1C81BA3A686880A62668494A463B0778D489524A4024C0F3CEC32B411915B60CB803FF2B139CAFB4081C3B06070ED8F3952BA0B111EA8FD86BA3FE06C261282B83E262E8DD1B8A4B202F0FB2B3203B077273ED919DED4794AAC752E94B2553EA782000C7381DF83F5FCF8963C7E08B2FE0939570E7D48E971F341AEAC2264DF7DE30E834E85D618F82022829811E3DA0FF00E8D71F4A4BEDF5F8C52A0496007F8FD5672696F188463BB5B07712F0761CEB5D062C92E3BE712FF00B2C0396B840EBD6C2E333E12F4FF9903A28717E16424E1E9457C0802A3867349C350A860D83CA7E265A4E0E84E23E842781DB2493488427805B137E9770181E9F0533EF4BCD5EE79640E5E930F26C183701C69C0F83075BF3B0938452334F222526D2F6EDF0D307FD89425E68AA85ED1FC3EE4DB0FA63B8FC1A18371E264E826EDDE2152AF6BF884B28452689141F478EC0638FA62E127544E900E8771AF4AA80476741454522EF165784526D5E30990ECC886BCD961678791E8C284E1F91000EEF805D5B61E90B30A68FED63FCA9F55BB1AA09C9243A14E98F71251BC261F8FE3FBACBCC75060D875A7FBF73AAEDEBDEBDF1BEDB8F9DFF959A79E2A45401EB89A78FD18A8FE1C6319979D4F396C379A3E35933020C03AA1599C4892C8C4BA4679ECE0C916269F413B9718C1D83777280956AE68993251C86C625D2FD3332E3089B6A4FFDB7FB67C0EDB75A158637CADDB682245330B8D473C22112B1932F534472C35F9E82BB6E8F47A8896EAE9F24533078D953C22112819F3D9CFA7B47E92DD4D392493CE134553A261A85FA7AF8D523F0F8BFFA73BD92AE42FDD77F7A5DAB900EBAF1A802A26B53E5BA79D7DC0C870FC30B7F825FFE8BBB772FAA8001A74359399475B7AA83BD7BA0E68055272433D150580645A5D01C812361A8F798029F791FF4AD845BBEE765ADA9CEFFB43AA83245E5940B910E1E84B56B60E306E87F36EC5CD5BE44BD06C0A4C970F6B9D0BF3F9494425616ECFD02B66E85375E85F7E7FABFAF8346C32513A1576FE8DEDDBA70ECDA09DBB6C2F2C5D0D4D07E22E2C4A4C4C597C0F0E16EB71EC232A2C31499C4576969B188B47103FCF97998FF62FBDFF23D86C09871565C3AD139A98B8A4CA450C8AAB8878FB0BE485959F0EE1CFFF675C478F8CE0C187B8175C52828B06B9F9A1AD8BD0B969D031F7D001B565845841BAE1C011BEAAC9ECF1D439D84CE52C9248EE7D8312B567DE33577225D7C195C3D052E1967C28442C717951616429F3E70C185ADAFF921D488F170FBDD70D9E5D68F29D6DD221AB5083570205455C1A02AF8B00A96BD057BD6B97BEF1FDE03BF7ED2CBDE3C73B2E82499824C2402FBF6C1471FC23B6FB72F5251055C30C1441A7769AB4827BDA6C9855EBDFC136AC478B8E36EB872B25D9F1DD7F00A59E7C0EC6C1838C896E9D70F0A0AE1B5A370F0337709892537C38489094527C91454A2511B77617B352C5B02DBD7B6BF7C692FEBE2D091487E0BD59E4827929565D5E2D9D970E810547F061FEC73770D75D324D87C14F2F3DDEED9BF63E570AD9BD75915E06BA570D86AEE962F6BFF842BAA80C9D7C3A5134C10B77D85DA0AF5ED9BE19269C913A96DA4EAD1C33A0B9E7F2194F476BFBD37DFF0B27713BEE2B2CEAA8012CB82AD5DDD715368D07038F73CE8D5D3BEFDBD10AF50F188D4364255565A47C1B1E3DDDF03BB73AA7DC1B8D416BB87279902DFC4ABAF874D9B60B58B11AF7AF7B5EB916EC5F16DCFAB508988D456A83E7D61E8E9DEA2D34B9E9AA2D7492635F12C9DBC713DECEF20859C5B62D9B2F272EF51291EA1FC1029265359998D0B51E8E14BE0FE1996E174475FEC26AE640A2C0D0D9678D8B4D17BE540227424945F22C5C8CEB6AC5EB6C73CDB07EF7B59FAFED82FCAE605B589B7E373D8BAA9E3E59B6A2D8A85C316D1121DFCF154593EBF458A45E0A646EFEBDD34093E775D383349320595A6262BF9D9B8016A5D4E5BB46F0F6CDE04A70DB1D4735696BF4275EF0193AFF657A468D42A3BAAAB211C47F40D87AD69DB3143D4CC0B6A543A76CCEAF0AAB7BA2FB9D9BE11967F64F56F7575FE8C011E13EAC28BE09E1F984C7E8A140EC3C68DB0F9D3E3C78670CB2AD7D3748570FA3A29320589E6669361E70ED8BED5FD7AF57B61FE4B56C6939B0BA79F61833DFA11A17AF7B647E263871F2FD2DA35B064117CFCBEFBC2D7F89B7A9381D98A4C41A3B1116AC27060B7B7F50EEF80177E0773E7C0A64FFD8B50B15220BF455AB8005E7DC17D7DDEC9709FD51BA3665ED088442CF910AE81481C17E6C9122A1922BDF2E7C444029B74C01D832553D08855784722F1A7C4D351A8648804367B873BCA245310696AB44722DDCCD349A8648904F08AEBCE8D21C914C4C814C5AAC513251D844AA648E0754099E9922968D74C47EAA0F6B03FEFD79942255B24EF49884AC914341A1BA1AE36BE7471BA08952A913C22990275BDD4D43AF9B29FA452A834150918259982445696DDD389A75E2D1EA1FC9E14221AB51EB4A914C97D7A7C982A20824473B35D37E5E625E7FD6342E5E6C1378BA16088CD94EEE7FE87C356DA943E1149CDBC40929D6D631C6425F1632F2AB59F478FF91F99B2B26C22E8214361C8F0B4FBF72A32058D9C1C282C4ACE7BF71D09D77FC386E31A34C8DFA81493A9B414CE1FDB7A4DE6E7B87C27A3674FB74BD648A6A089949F6F05A6C912E98A2BE1AC51D67D21FE59CF4F8DDFC388B9F99FB963B1640A12B9B956ED5D566E15107EA5C75325526709A5669EF80AA19045A682021BF8DE0F99522D52AA85723F8E9E640A14595950D40D7A57404E5EE68A942AA1A6789AE8ED11C91434F2F3EDA42F2E8783192C522A84BADEDBACF2922968CDBC82021B4F2E912EE2E92252B2853AC375FA3D2C9982485E9E8D2757DE33BE2444BA89944CA1060C70BBE401C914447272A0B8C4E654EA2A22254B28F77336AD964C416DEA75EB063D7A7A5BAFF71930E56BC911A9B1D16EC2E6E5F93B8C58346AE5537F7DD9FBFB3CE4A92FD3739229A81415D918783D86B89BBF28B704869E6927E8C8B3FC15E9D0219B89A3BCDCCA84FC1AF5A8572F9B09E3E00138B00FB6BCEFED3DA65CE776C928303B28323DD895E34C9B0F740A30D675F3A5B1112AFABB930960F010BB20F755A4302C980F4FFF16468F85A9D37C1E46AC179C3912868FB4F9A7BC346B7BF572BBE49765E54190E9812E7C6CA5402170089B017C94F3BCE3C834F834D8F08ECB13B3D0EE4D1517FB2FD2E38FD97E6C5D6FAFFB29547E81CDDE31B0CA8EC1AD4CB3E67AD9F697214F55E399CD61E79BF128F0343013E8B8575E280493AFF290B4C8B3C4855FD5E6278A04C9E960180A59842A2CF4B6DEF8095E96FEB964EA1A649DF0FB2C473077D74DDF7FC8DD561A0EC181FD507F2439227DF9D5E0B350D1686B3710B7151F77FDD4ED18E3000DB499D75632750D99B29C26DF51608FEBB5EFFC27F75BDAB513BED89B5897F7F6444A8650B179A8767CEE7EBCF119B779D9C21F4EF5CD26328F5F02794ED32E0CEC06FE0D7077C69797DB37714734D5C2FA55B0613D1C39923C91FC162A36D5E8AE1DEEAE97EEFAA9CDF2E19E872453D7E13F4EF2DA5C60A7EB77F8C18FDC2DB7772B2C781D56AEB021969325925F4245A3B07F3FBCF72EAC5CE66E9D3BEEF472545B9CA48F64EA22EC04DA8E8E9207D4036B5CBF437EBE65AFDC44A7CD1B6C56BD2D9BDD0F64198F48890A158DC2BE7DF0EE3258BCC0DD50D0B3E67AB95602B8AFBD0B589199F4070A9CDF8B81F38057813AD7EF70DDF570F9B75DA8BB0ADE5D62DFF66BD7B43F0251349A9848F10A151369D952787B01EC723975CEB553BCEC5518E7466D5B5401D135A2538C83CE630596D5FB1DD0F17C2D5959F09387E0AD3F74BCB5156FD828A7DBAB61E26570CEB9764F283FBFF51E5463A355362C590CBFF9EFF8453A512838F57DA868D4462F8A45A4F9AFC37B6FBB9BD06D59B597EEE9708A428050D4EF1164BC3109783B8EF53E71BE1D44FB5C04B8EB2ADAD404DBB7C393BF81E7FEA7E30BF6BE236D84A08957C0F0E150D9CFBA773437C3FE7DB066353CF7BFF0E932FF8EA674007CFD66B8EE06185465D5EFA1906DB3B6D6445AB208962D81752BDC5577CC9A0B37DCE8352A753FD91F3235329D234F7C2637172A2BE19A29B0750B7CF066FB42ED59678F4D6BAD6EAFA28F55A3D7D7DB3DA9CF365AB3D04F6211EA50D84A84060CB088D2D060E9EFCD9B60D94208EF7697BD9B32C3AB4800379CEA0F991A9944B2A8A981C58BE0F7CFC2F2B7DC97E0E49638253B0DAD098BA4895F02E595505C66035E1E6D80BA30D4EE73BFDD293360E6AFBD36EF563AD7A49249B88D008761E93BF0D602983FCF7D316C26B1A1CE4B7F25B062E2D338211D9E4ECD3C5DF7A423A5A530E932E8DFDF9A6EF366C3BE4FBBCEF1ADAEF12A12C0CFDA13291D2253CC78916E44A376FDB36E1DFCE93978F5797799B14C10A9DCF3F8175B80611D2D940EF799E6EACC4D434221ABB61E360CAEB90E2EBD0A8A2A32F778A6CC80AD4DF188D4005CE166C174C8E6BD044CD5D99B86C406CA1F350A5ABE05DD8AE183A5B07B5372130C7EF3D053F09DEF7A4D36C45A4DDFEBA879974ECD3C806D4095CEDE342512B19BB0DBB65A17F3E51FC12BBFCD8C7D9FB71CCE1B1DEFDA4F02AECBC8D345A64928AB97DE34375BE5C3C183B0738749B5F04D58F59EBBDAB7CE68D6FDE257F1241ADAB698A6796A19A7894C008F00FFACB336CD93122D2D562E140EC3FA75B0703E2C7CCDAACAD3A5E9975834729D70486799009E01FE41676D06D0D26295E33B775AB36FD14258FE5E6A67F32BAA383E2A3EF6225C7F433CD746098B948E3201DC8B757A1399D2FCABADB5529EB56BE1DD77E0F36DB0658D554324235AE59640CF81ADE23EBB00C65EE0C7802F718B94AE32010CC646155294CA141A1BAD1469D74ED8BC193EDB021BD6C18E6A081F80C6A370B42E7EC1724BA0F274E8DB1FF6ED81E167C1776FB1AAF56EDD6C8AD14E14299D656A2BD5DF3A098A729DB1496538D037E1A65F24627D8E6A0FC38E1DF6F86C8BBD5E7BD82ACA0FEEB74773B3AD5750D81AE55A9AED6741A1A5E24BCBAC0A231A85CAFE70E14536A26C8F1E36026C6EAE1FC38F79CADA65AA4C22B54C07FE48EBE096F1272AA2518B564D4D56D57DB4016AC25073103E5E6EF57F7F5D06ABDF3A7EDD11E3E1824BAC80F5AC51D0BDBB55B31715D9CC1D85852650E29108EC3ED20FB1E4179249F84D15561DED5F4BA0A5C5E48A9DFCCDCD16A962BF6767B7F6D83D76CC39339DE96FA0B513604E8EBDEECF40980DC055B419AA4B3289643107AB4C49ED34176DC7BACBCA3ABE5BBC7F336E2C762E1D7C4563408853310D9840AA2BFB43219328168D6291C8BF68F4AD6488249944472CC5BA683F094432F838A2CE311471928150D4CC139D712DF5AC13AD421924D112EC164B75B237269944BC528D237DC71049A9449249F8C113C0D7499F7B800DD8F8DFB775C6C62593F0834B811F0157E3667E28FF057A039BDA656967FE132493488658B76019B3AA243405234ED36D115618BD345D0E5C3289545C634D03266299C1D89887F9ED44B108ADC33B7F02D460F786E6A4F21AC82BFF0F13813315433BCB950000000049454E44AE426082,20,20),(6,'Transférer','image/png',0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E987969700001C277A5458745261772070726F66696C6520747970652065786966000078DAAD9C57761C3B9044FFB18A5902BC590EEC39B38359FEDCA86A5264D348949E281A35AB5189349111004A66FFDFFF1EF33FFC6936591353A9B9E56CF9135B6CBEF343B5F79FFBBBB3F1FA7AFD59E1F13BF7FE7533E7E3179E9774D1E3C2BC1FD7775E4FBFDE50E2E3F5F1FE75531E03F9FA18E8F18B970183EEECF9E1715D7D0C14FCFDBA7BFCDBB4C7FB7A7C339DC7676DD73DF5A6FB574FFF8E0567ACC478C11BBF830B96AF5517047DC6D0F5DAF5B57291E3A38714DAF5F50BDF99D71F9F9C77CAE7BEB3FD714578EF0A63F3E382FCE4A3C7EB2E7DEEBBCB436F2D722F3FFAF7BF88C13F3CF1D177E7AC7ACEBE67D763C653D93C26651F435C3F71E1D050D7DB321F85CFC4CFE5FA687C54A63889D8229A838F695C731ECF1E17DD72DD1DB7AFEFD34D4C8C7EFBC277EFA70FD76B3514DFFC0C0A41D4873BBE10866542254E93A8055EF6AFB6B8EBBEEDBADF74953B2FC795DE3198E31D1F3ECC672FFECDC7EB40E728759DBB9C592E5F61D7E570CC50E4F495AB08883B0F9FA6CBBFD787790DEBAF3F0A6C2082E972736582DD8E7B8891DCAFDC0A579C03D7251B8DBD4BC395F518001771EF843164747436BB905C76B6785F9CC38F95F8742CA704FC20022E25BF9C39C426844C70A806EECD7B8ABBAEF5C9DF2F032D0422851C0AA1A15008568C89FC29B192433D85144D4A29A7926A6AA9E790634E39E7928551BD84124B2AB994524B2BBD861A6BAAB9965A6BABBDF91680B0D4722BA6D5D65AEFDCB43374E7DD9D2B7A1F7E8411471A799451471B7D923E33CE34F32CB3CE36FBF22B2CCA7FE555CCAAABADBEDD269576DC69E75D76DD6DF743AE9D70E249279F72EA69A7BF46ED11D5F751734F91FB3E6AEE1135452C5ED7955F51E3E5525E86708293A49811311F1D112F8A0009ED15335B5D8C5E9153CC6CF31445F244CD25056739458C08C6ED7C3AEE3576BF22F76DDC4C8A3F8A9BFF2A7246A1FB2F226714BA47E43EC6ED93A8AD7E759470054855289FDA7000362ED8B5FBDAD5937E7D1FCB85EDE6993EAD3830A0314F8A61CED6D36E8786175CE25FB94F6C30AE0EE72A8608849845717681607696001C94B6964B5845BD9F19423D35E8E75D7DEABB9C754E2D7C323590C14EE604BE1EB5889647D34FE56C77BD853A2203A9F1EF07342F23FEEB80E6D9C4BF1DD07C35E79F0E687EE7C43F1DD0FCCE897F3AA0F9D3A8FC6E40F3D3307F35A0F9DBBC791ED0FC6B22FE5566EFD1B8F28053BD4161F3DA61AC65731E6399ACF76ED7C31921A65CE78209F4E8F8DC73D64CDF8F2E4F70A0EEC038B36E7A71BFCAFBED77F3EE05F0082372B563FB0A31C975F530FB7023BAB0A6CD6DB9D55A0493B866025169EB9E7D5A93A12BCD719F01EC0C3038863CF27169AC319383C0C4589D973DC97600EFA67217C2CFECC7B47240CE269D033AE291B52E37E691D4BD6909C9C5F4E7DFCD1F5C08A842C0DA98C165420058D651925D0D6680E175ED189B29251FA6D366CC6EF8CE54CADE6782B5040B688BCC7DD9B20A88ABDFE1A4737CB28F941836C57265760F3901AEB4D58F91781F88756E6F7CEE0C43BADD2936E7D07718A0F8DF7561EEA7DB6FC67EFBDDF43FBCF0FE7E1A999DEBD62D9BAFA55FD35AD57783390BE7D093C26FBCF0BD13CC9F7BE17B2798172F1C1A591A5729A512F3CAF9D0644795A174E33D69A07114D840A8D9FB9E9A53BF0E28A55027980DDBD8BDC11A6CD1D47784B4D7C65DA62759EE29A57E9BCBBC5495E4FFF533BC7F9570489648A73D13BE0010C883F6769DA5A34EFD3418FE7A8B5B72F3D5848FFCFBC970E61EEFDF87336FCDFB97E1CCC7D9FEDD70E62BE7FD7438F395F37E3A9CF93E167F3E9CF993D0FEC970E613E78D80E4E24EEE44819883F9919F0D26B96BD933EC440581CBF0DAB9CF5A75520806CC83F68FBA510214C7BC0B55FA0DAA381FB506D33B237506B2228663670B990CE32A847DB7EC936DAF57B1C63C877AE12A93998D58CA99340C8DB5A74B779783B6D264C22CCFB4D3F8A717CE3DFBA672CB5996940B4E565FDCC57E69B37936DACB5FE7B2E5387FC356CA7BDC360B4FC6F9ACC4CD738DF36B10A47AD0C7FADD9128C34564448195374747E8C8089A44720D297312FA26676F8BC96B9695C76AF43A66958BBB61B4B40E3D9035822F5C94CAD05ACDD5A33EF96EBEFA857BB51F173F8394CC1F7BA1046AC5F118E00DD83CE3E5814C9B9646707DD1D26EAF5C3EBD3D9AEF30BF38F45CFF3A172E3383665EA1F94DAFFE187F21F5950157FCC7962C796D28573B81FA1D7593EBE2AB9D40102A667DDBC6DD3ECFF69AEF0DFEDCDEE86058B725DB5F570E5A36652983E9AAA3ECDFE71123D563178E8D709F52D1905BCB37061F242A9189FBD8918E91A49DC9E73469526D8EDE02F32C3BA57125861DDCCFF3E3B233C8AA94AF699AC9DD349F59AAC7E8B4037E4E8512CCD734F33CC3EF79984B596E96017D81C0AC935D9B744604624BD015DA11C29774C0E9D1536868488A4043B8D9250D2144F9C6A3EE741586DF1DB922E57ED9683E1A898DF5BA30496D5B853C6D796D8D72F3DC064EFDBA3FBEC302F36282C0EDD9042AD0DD97DE6670CDC38C17470925E775A5B90D111DBF0C793543D893AE027998F26CC89323CCCF3CF1B523CCCF3CF1B523CCCF3CF1B523CCCF3CF1B523CCCF3CF1B523CCCF3CF1B523CCCF3CF1B523CC5F164751DF420FB8DEB6DA01995D04F4ADA49280FF15C256470FC3F954372228F87895E5FC3E04F0A30DA4E71DE25C316F293C1F8EDFBBAFAC8D8E1C91697B7197182C62CC6E5BC3BAB8F43A6F01D0BC47C08B4ADF44FAA2D1F8ED594D3C61F50B549B57AC7EA2FE44E526FF17905EE4FF5BEA6F9E05D07788FD9DBDE6C5E0974E775B72B5BA47A393C56210593CE581FBB7A4B9907FD80BF6CD85FB3709596D2A166D671AAB86695756452D0CAAAD6DFE3942BDF328109C70B55EAFE6D151D988C91F49AD57C9F5DAAE3505F3A15DBF9FC3BBDEF5AB753185F49E47993F2552BF237F5A88FA4FC89F79BFF8F8F7E4CF7C34FAEFC89F7916789E1265B0B4CAE05D85BFCB9F3456EC93E65BBCF21EA787197B1A382F0232BCAE6DB1A99CBADA765BA78248BB4205CB65B0CD21305397525385505BBD50FF509B61973682CA20B9F374CB34DBB5E6EC510B7396EEFB8E750E37AD6B3BAE92E5E11EC72BF48DAB8C5A180FE82B2AAD47D46A446C5CEFB031A49B530016AEE196DABB108E380BDB965D450B591B10BF06DABEE3DD5EB633B01CAB65A23A5376BDEE8A53F2292940725C75AE5B518F51A1C1CE351B9C2F3E96B5E62E3EB81501C47BF9F0D5EEDBEADB6685F5C56659F762F28BC10F73F9CDABC1E6138BB17774FB431E603E80FEBE34DBE74EE116EA2A9FF9D4FC72EAAEB232B6F2DABFCA65BE2FF9D1BF76FA3A86E67D10FF3E86E611C4CB293F65696F3BB279710B5FBFCB96FABBE89927D7DC8EB9DDA20B6EB7D8DF2789F9B32CF97D92989FB3C5CF93C43CDD832BE822A38FDAF2F6C049F3B9ED54E8E4B15113DA555291883088159490D6D65DCD77CC68FF8018988FCCE0EF56D9CC67ECE07969F0DDCAA0D6585DB9B6956A2595B517D7E73223D6018C64F06EE9F441CBD8EE4E8EB1AE9DE32C6817E781BC02A4EF00D6164C521FD925FE6E41F36FC88479663F7F4B26CC79EAC480FE6A23C455B3A7D2F708BDFBA140AF99849F8A5126C1859DC9870A54064FF5933633746CC81377AFB0AD431C073C447046D2127442BFE3435C9546E52FF36BC757B76A774EBD8894F0864E469A647C2A8F6A119BC478B4267942ADE9DEA1A0353DD69AB42F818340F9E14669817AB486E9D1E4DBE895898F3C4872A0FE4CFA4041F3BA155A70B489B44978423B687C138B9CA581D2890BCD6BBAD08DCF15056B615250E75ABDA334D6F2B4C5E6968764C5253B534E6168ABB38436AD271150E5F58FD6465ED748B80775B2602955BBC5A8F539E85FAA42EEE7422BDCB29B58C23C7D04C43582DACD946A9F6350D6D8DAB2F3ADF67DF086AF19D727B7B56F80B921255767A73691FF3698440E528EA79E32431A2777952413855166DFE10FA5B613D318BCDF2217F29CF6F448E534F24A21A4662011FD4A20EAA9420F7A49289DC8D061A5082985831051EA04DCF1F7FC2EC03BFDCC40CC4E2B6EC44E3C8C0379F07B73DC042C3ADAC8468FB4CDC85A0EDC705917AFA50BCAB36E6A91D63E13D8172806F84604A86D3399BE654B21944CB8CD4E301C4CA892B3242863FAC8CDEDD8A796515CAEE093A77048DD9D18EA44AA25F56EE668A1D559D75C358C4864F14D817153A5CA3BB7BE5EF9794B00CD27ACF5B4EF3711DEADFDBC94ADF925023EAEFDA81D3C88E40B8DBC577EA82EEDC5656EE370397AB01966DB424FE926E00D8580F69BA437F836A96CD796002D80C558B3607F20BD2516F6E60729DCCBBE66BA12C561E37ADCA8C4BB2556959108658A37A14C2B5C38E542FC64B0ABAFFD17839917D3FE7530F3769EFF32987976DADBC1B42C47FF742545ED6CC248A79FB6B49475028BA2242F8A2730E4AA5151101275FFBA61D73EEC217C12E19A47720F7E9296CB731DFEA2F3C0E19D84AB4BE7B6467036286A2134EFA2D7D18D0C56C00C263040095DFBAC004B54DB07401395C1C4963AC168BCD2CF5A7123F5E8B8A1E9D4583BFC465E28198C0091B90BB62DB21CDE24BD0128BA84F2A2FC36DC0960B6C08AB0AD0D216D9BDB2C9D2E2BEB86078BA3E6B58A51EB12E5E0C6818CF73551AC00435B651FC74BBDA89724AD57B4EB4223BAD2E966F02EF09814A7472D08C99C289694578F115F82788ECE409F24C7213D53AA08F9C8F8E9400CFBA6AFB50A700C075C0050B151D8140A4E16D5E26F1FD169572EE4B5419EEE50843D68AF23243144B8033C2F1921A29DA80BCFBC69B10D0C1E84C851AEFB44DCE9970E3A8177A01AF0949776045B4BD7B2A8CEDACDEEC2340E58DEC7D21A2230B0D2ECA0634F47DD394DF022DF44B050E4B44DDA37E88AC5C844C0A223F6F0144DD0E0E8BC0588F42A2066FBD6C27476AD443C90490E9C0DDA4177A27E4DE7CF4667A61E6EA62DF4E20825F730B52C985246780E9C15DBCA3E079A7CAC254F9A22B9D1435855DBF489ABFC803BD8D90B23CD4AE7DD69B8549369207C213F211DBCDF33FF32ABC06CE017BACF462F4FD8695D63AF805D34B8BAF15A6B2B0678240E865F0EB374388BDE9E6D80BEDA63D5F1B6B6C0E941750C08281D80F689FF4851F82ABD21C65EE364921EA66AE300ED4D8E3A448091A5E7A80FB77129391C48A29033314CC8EE0597C5C1EF376C3D1D8DB7783AD984D680A66E57A201ED6BEBFB5EF175AB303FEB155FB70AF35DAF18A29C5A3522EB038C5283CC4BBFD1E3E105D9EAF8DDBDEE64BE5E78FA93E310A5693F823A4E6690F70051A63F79D86BA5921AB67A2EEA568E0DBC34815D4708DA10A1205132FE01427A8377C518862B06E67AC80D185D87FBF6E31700B57438CE03065B242BB55581A870A9187236EA944CAA4537A3924153DB9CC165300C8A10AA058ACE0323D58A077F75982658F82EE5132167541D307202DEF13D8941EE9E1BF4BF8D150D3F4F9A05F414C29BA1C5AAC8A382A752D34081814F093858DD55603FE92C342803F7B3508E40902123F8088DD10E441BFE059AE70E62F7857607E61C30B7460C3AE47AE53C8A52477F827A13C0CB180158072E6DEC2634329256E1DEBE19BEEB9D5379C3CDFAC4523A0DE8DBB63833FD01738055AFD30A5BAA290D130F9886224AFC3B21221C97D71D25C212E9A1C3423A70471F63869BBE1440C15C80A7A3430C09D0422CA40089A02FC2C1F1209A2027E98D7A5222F7A0842DD1F7EE65352D20C60ED3BD040F0A0A5BE8809B7C4C80A251F63239BF17172F45062586CBC09E138BF7A0799FB546F00D3087676E94B0A317E411513FF0A16B7AD6C07E059B8582760544201BF3AAE05BCA34B730F78A9E6281E9236E4E5D616891FFE34AA1F9BB7DE28F2B85E6EFF6893F1E05B95646BFDFE42DF556D63BDC9B1837105C6BB78282071018DB3FAE8D3E7FEFD0CD70D417812C6E5BE98D50CC0502534954A27A3F50194E9712176E592410DD1D0348FC769D25B8D66B785F39DAA36EA2A43BAADFA899125932B927FA9AD3A178D411E9401F40B29646580EE1EF413287CA867BF10EED55D293E1F095DA58B9D16F86C464A71507F8D1EA746888C670D7D3055E1366F496E81A48D71528377C51BACF4E894E382BB7802A8134D42ECC0C2A1D0DF72343D7CA703D48586362A923224853B4AAB664338AA4F31AA4B14CA81E6D7D51E20224AA23D14348AE8E8F9846EE0D29A66F68A9890FA0F5893221687C325ED59313683932796BE70785A605964A8ED8135165C5C06F36AE850164BC042DB49E6205B84B4ED181AF9D94F68837EC70A557FC09043CA006258A3DA89F104CBFE102D750333A87ABD501EF4687E75030626AD09522D165A969DF371437097A4E8211C007600B209A2972708F41751E2926F27B66B57C46DA6855C892734E0716F58CC1D1A2020EDBB4FEB3E86A8E5A3C5103211E29B0C4DDC17129F53542010875AE04F483AFD2EA25D28F8569DCF41D029EE9F0BBA92420037D0CA6765A9C4967ADC75483BF1798B44A6765D7BD803348F2B75B026FAA9C52519D2FF3A6CCBF3DBAF0763BE0B3DE6C9E4BFC8BA314BF0EA7693A4FF5AD0521F352E2707C84036413E6CEBFC8574B13805596000A0E9DADE6BD61A2A0810BD80C14B4428EECA679D7DDB5104551DC67E72A0DE4D8736D1FE8F989E6C70D21A188E1543A7EB949CCA4F629EF762F0D6B6DD7C4A666011DEF2FBB97613E6DA20A88EA92F4EAD711D4EBF57B3755DCEEDE4B35D766AAE6FDB295FACE28B9F532EBC9282D5DBF1A151FC26F3F8CD26352EFCC7ADD54BDB1F18D51739C9ACF8B3F93B61E4CCBAE4306C01B9446DD3AFD0FF56E5BA2AFAA2A698A918AC67CC889D604A912FABC8EC6E735633A6B4758B2D9D7768E0B1925B2265D9416AD77D17BA8F59A372A0796AC25C358EA02A6F92D950EADD562B1A541CEB06C355E90277904F939E3F87AA0F549A0455F5EC7EA5C7FA38E49A501575D89F9E3388487A3B496A4D48210A06975A01619941046F4726E4A0BAE906FEABBD0495189AD4509BC460953A86810481CD49FDE87BAA8204A412C18A84F47ECC19270548E044C3CA72D2A3D6B19ECE8A47FD964B8E7D5C4172806A35316B8B2A3E5A0F41430098956DEB0109256279B18A40A4F95B9490B1C912B1C3A8829A06AB69E8380875C29B012BC0C129AC2CA067D886AC1C7C2F16E255166A3B8E0304112134111F28501E8F5A91AC2703AD2E2B2E60A42931987A927A1A207DB0072201B6921DC674269A03CC38277D5A47E945D950A27911B508E3798055508C62DDA14B4D55C775E01869BA6FA76CF5ABA02640364B674AD1CE25EC0ADC11DA6C08E0CC6B80DF416B0B7424617E068D430B52358F004C074E87E30F006EB85BC6C6D829109444027FE9A7F70138C57FEE2A84C72D367C23249581BC69E281F8696E52393657420BE2B0BC05A2D1F2522C0E828599CA935C5E821EF106768F7AAD63872FE068B0A18B608ED25A03A9C08A1B3B0E630D640DF7A47AB09E4CA1E2E388D5832AC0CB8734BFCCE4050D504E69AEBA4AC16065743E9DDCBF0DDE697B5D65BE27C75A4805AD3D12E124B3A686D468C085CB9D739EA01EE81EA230A636AB7788C48A7187464D2C4861650F022DECB5EA7A1992B5A63DFA09D00759DAC27B1717F69FC4CE1D5A475A0711004808D563FD18D456C473A405566928E605991E6DF1D44F97E1BCF681F4FE7C12F37E88CF96FF6AEBEDA85338F6D382D1F7E66DAC70DA82F36D1CC6317EDC9A8DFEC157FB2636ADE6E86BD9A851640FB84FB210692683A88A738A576249C8FD50333E09C47D311BF062B31DAEA421D24E97550A3611E03D1F2041A0B0C7768BF56E7F031CF0AE092A911DD077FAA9B161937321CD560A8426895D51E51F02F8A171B5286862A63C45551A33327ADBDA35666BD563F16E04C778E825D2E31114D08EB03AE90F8145106CA61A2B6733928657B725B8B628506175DE2530F132E58316C8ABBE9DC2D6C1E95ADBE3272AB60958F5A6A2F024DD472AFD7E3837AE00BC14F51436B517F7A424A9B8B897ED610A750AFA325D60E2CC07FE8A40BE0472535D4E471206825A1FB70A04A966CD0A322203DD414EABFA596FC8822E4D4E4B4CB78DC11B441BF180F891F1DF10D3010B521340230E9F3D4EA4B4BF8835058E98748D520E7909AF9DA71401C6B2942F211369CAB5622B58AA3874B2DA41AE13DA868E426340AAD1E81E8DCF4906AAE223C684C95BFEBD9B40E666BDE5D1B075D484A06A9BF6D6D0AC23DA9CE402875B49924B45D3206E6C4F05B4FDFA5560924440B02EF426F01C877E063F16D8BB4600F4C6F680785AAA7436A79494FF84DD7F08CD5BE4E0AE47470113CD7D91A84072D8CAF2814BA05CC84C990E663A164F5101D81141BCC1A4027B3177941A9C11DBBE6B92F896F169CD4D3893754DB035D2A106EA4BD0D40EA948D408B688A32320A823E5969AE5D7DE55A7490CF562E3AC42C619674580ABE1B9B1ECF1663F2D719A39BA26AE72DE80121A43B3C3D453AB7AEED050945DE02EBC11B9D48A9E4331A4501B63A74968B766948158B4F9F364C898B4E97D346E83F924DC8764482357A3A11920BC0A07CB48EAAED33CF5BD414F5502C180F8559B4C46B315BA759097CA450251E883FD9090331DBA1E214629C0D55D703B85AF3BC563EAFF54AAD46F5201509A929655A34A6B6E4C26CF64AF18CF7B1886CB4BB412CB5DA0F54B89A035742991CAD15F503D83195781F4846070A9AEE7D02ABC5FEEBF1ABED1F6722C2D0BA2E9CE4B1D9002B1362C3FFEF03045B347485EF8633F778FF3E9C796BDEBF0C673ECEF6EF86335F39EFA7C399EF63F1E7C399EF63F16EB8D45D0F05440E7D7A78A2542DFC13FD3CB237055280C2A3529BE32F8A02BCA94107BBF4F044F145CFE55D8F6E04EDFCC4E8D5B012BA9E06B0A128E238935A0355939EDFD583CBA36D5ACC044CEF229FABA973C730FCD2F2ED114BA72887079DAA007169352E56F0485B06AE69FBC06B413F715FBA936BDA310090D451E161163CDDD7BA48CC4DCF0852F22DE4EB5C02783F6B3080A216E862495A7D58D045840BC54259679ACDBC1656B4B600282C9BA91AED8858940AB0A6659BD1A1BFB9197A29EAA46A3F76CF4227873DD1B26003BDB7D40A0210293C9834BA709F0B6FA163FB3A2AE61FBBC0CE2FB3ABD62B405EA9C8AEB599D48835BA48CF293B209B8951E43AFCD2E7D09A12AA20269D9098424A3116226F22A89268ED6070C848A40D2D083B250809BA88AF025EA4BFA33B80EF495B6B63C1FDF1B89675E02453A79354B4BCAEF681201CA02E9FDD4621A0CEA931A69E0ADBF43AB203580359491166A6DD451D58F182EF485F5313815DD238798BBD1E7374112D8A3E809B6F9DCAA88D4E97F57F720C51091C9AC45BE6B552AEC7EA1BA20632CAEC111238854E4B2C6068438B3274F626F6EEAC1D80F3750A10486F538B270CA255075283D9423982816633AADC05A063E760DAA5383DA422D764005C4551C8753D9E6FAFFF2B252C59A33317B0005C89F832849CE4AC3A13D043D03637111183AA8C96B5E5AFCB912D9D2C9828DCBC2D4484AA5169C056D496E98766FFF010EC57DFCD53DB220160E770B773AD843B3DADEE90F2510FFC41B003BC8B36D1B43C86FCB3957E759D8382438A933952B5EC4B2338F8DF203A9B012B4D24B598B508364F589028F2284E9B915CD9FA8D163AB3AB780C0D5CC745D64301450A0C75D9C467291AF4AF1653EB2106751E6E804AC901C94A45A678B452AAAD306DF80257EF37B0E094E8549824DA1058D41EF582D1066CCAC0C03AA2B41AB58837E9BF0E81DE7A139961421D69F19C44CA95467EEE0D46AC74DAC3DC1B83B4C990B7F8A57751C1B4A18F0BF4A02D7A083EC019C3632FCDEB2F19865E25C706688225FA8F1016B2781C7479D3AEB99E6DD910E49AA084CB697FBA4D7331D67ADECFEE68610FE9F4FF26B78845AEBE5CCB00000006624B474400FF006F000070ACF0EE000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E80A12093B330AD0015B000018DA4944415478DAED9D79905BF75DC03FEFD42DED7D786DAF9DB5E3A36993D2B490497A40A7EE35A584949A428142335C2D90A1308594231C6DE94068180881994052DA92A633905E69B94AD3E2400FB7B5E3244E1C3BF1B5B677BDDE9576577AD2D33BF8E33DADD7CE7A57D24A5AADF5FDCC68B4DA7D4F4F5AFD3EFAFE8EEFEFF7537CDF471084D5A3CABF401044264110990441641204416412049149104426411099044110990461EDD0D7C16BFC287013B0038836E0F93280D2A4D7EA00F352AC1ACE71E0BBC09F0027DAF5452A6D9A4E340A7C02784D130BBEB03E3907DC013C2C325517893E2812092B700078B9C87465EE07DE2BE544A8120BD8D52E55BF7692494412EA210B74B7C30B6997DEBCBD229250275DC06312992E520062522E8455F06A605FA747A68F8A484203785022139C0586A42C080D600B6BD819D10E916950CA80D0207EB993AB797B91F124A171DCD4C9320DCBE72F5C2D48A2AB20884C8220322DE6807C044203794C2293204864120441641204914910442641109904411099044164120491491044264110442641109904416412044164120491491044264110990441A81A7D9DBEEE4F10ECD9235C5DFCA1C8D47A1EA44DD697164426A9E60982C82408229320884C8220884C8220320982C8240822932008229320884C8270F5A077C07BF4E5635E533A666748894C8220320982C8240822932008229320884C8220320982C8240882C82408229320884C82208474426EDE1FC9C72C884C8DE12EF99805A9E60982C8240822932008229320884C822032098220320982C82408229320884C8220884C82D04264114AA1D9C822948220884C8220320982C8240882C82408229320884C822032098220320982C82408229320741AB208A520884C5573977CCC8254F3044164120491491004914910442641109904411099044164120491491044264110442641109904A121BC4C646A1EEF04BE004C006E78FF85F0F7CBE1CBADEEDB5AF284C8D47874E05F818781B70103E17B1F081F3F1CFE5D4758EFBC72ADCA75A7149E2F006F5EE1985BC3E3DE22E5B129DC010C0237858F7700D1065F23057C67D16333BCC6ACC8D418DE57854815DE1C1E7FAF94FD865100622DBAD65C785F91B408D861A4F2A49AB77A7EBAC9C70BCB136BE1B586C3FB778422C5C3E8E4B5E2E29D1099AE6FF2F142FBF0B3C09E3048FC1F700C1803668069894C82503D51600BB009F837E00DC0AFB542A44E894C0717357AAB3D5E58DF286144FA52F8F81470B744A6D5F3E9261F2FB4AF506678FB28F01322D3EAB917F84A95C77E05E9C9BB1A3180CF02DF074644A6D5F1A3C0232B1CF348789CB006F8FEC55B13B901380EFCBAC8543F0EF0E3C05EE08BC0244177E964F8786FF877478A75EB25725D8F62D1A15028333F6F63590EE5B287E735C52C1DF8AB304A4907C42AF86C78AB954E59153603FC328DCF4C08BED11C8F92ED327DA108C0C14317B06D8F42C1657AC666F7CE34B9D932E9B44132A1D3D717239934300D154D53D175055D57310C0D4D5BF526EE37100C28EF01F6894CADE3AE0E788F7B814F35B24C944A2E9393059E3834CD873E7272C5E3077AB2148A3E9A0AA984CA862183BE5E9DFE5E8348442599D4E9EE3619D910677838413A6D128DE8AB112B067C037817417EA6C824AC9A3B80BF24E8015BB540879F99E6FE074EB06FBF55D3B993D317131572F32EA7275C342D78ACA94A2899C250BFCE75BBE3ECDA91E29A6B526C184E904C9AE8BA8A52FB3B5080CF108C49DD2E3209ABE17EE0BDAB7D926CAEC4FDFF78844FFD4BB6A12FCE752BF741FBC92AF94C4EDB3C75D4A63733CBF6AD263FF4AA0C2FBFA1972DA3291209B31EA158F43FB85D6412D644A453A7E6F8D8DDCFD61C851A21D9E4B4C7855C91678ED93C77B4C04D3FD8CDAB6F195E33A114DF5FD3F95BAF03BE56C7793F0C3C262EAC9D48F94299FBFEFE998647A2BA1B3F1185FE1E95EE2E8D3FFFC84B19E88FAFE6E9FEA11EA12437AF33D90BFC423D277A9ECFA35F3EC1CD7BBED9362255AA7FE7A73D0E1EB6D973EB7779F4CB2756D3B5FE5E82AC09894CC28A223D544F67433657E2F7FEF050CBAB74D5A26917DB5800B7DC18E30F3EB4BBDE28E553632F9F44A6CE621478A01E910E1C3CCFEBDEFAEDB61569716745857DFB2DF6DCFA5D0E1C3C5F57138860A86054641296E2ABD43159EF939F3EC27BDEF74CDBBFB94A37FAE5BCE77DCFF0C94F1FA9E72975E080C8242CD5E130568F4877DF37B12EDEE0E591693177DF37C1FBEFD88FE3D43CE9B6ABDA2685C8D419DC526B8783E378BCFF8EFDEB46A46AD8B7DFE28EDFFA5E3D42BD366C6B8A4C025FACA59DE4381E77DFF354CBDA479A16DC4C43C1349485C76D26D4032293707F58555911DF8742A1CCBD7F7798873E976D8944C9B8426F4665B84F63E360701B19D0E8CDA824E34A53A4DAB7DFE29EBF7EAAD6D362AC308D473220AE6E46ABADDEB9AECFEC5C89473E7782073E33DD7489621185744265B05FA7A75B2393D689C582DCBA52C92737EB707ECAE1ECA4C374CEC32E377608E753FF926570E0083FF3D3D7D672DADBC3FFE9894E95C917A756166966A6C8D387A779EE5881DE2E950BD9E6AC8E651A0AA984C2609FC6E8A6089B3745191A8890C99844A35A2893473667333E6E71F4798B63C74B9C9FF6B04A8DFD28EFBE6F821F7C553FD76EEFAEF61485A047749B4426E145785E10919E3D92E5912F9CE3F1FD56C3A3C062917A322A9B470CB68F45D9764D828D1B13F4744788270C0C434501CA8EC7FC5C99FEBE0889848EAE2B70B4D814A1DEF9F34FF2F87FFC1089B851ED29636187CE3E9149B88452C9E5D4A979FEEBBF275B22D2D6CD06BB7726D8B13DC9E8E624BD7D31E2311D5D5751556541F064C220B6F0FBF0499A24D407EF3CC8DFDC73632DA73CB8547412993ABA7AE7313565F1BDEF5FE05BDFCD374D244D83444C61D3069D5D3BE2ECDE9962CB9614FD7D316231034D5350146521D3DBF741D302B914854B33C09B20D4BEFD16FB1E3FC32D376F58557412993A14DF8762D1E5E4A979BEF99D5926A6DDA65DCBD415067A35B65D1363C7B5814803FD7162311D4D7BF1843E45014D53884474BA96EA876C8250EFFFE031BEF5D5412291AABB0FFF9420B7546492B6924F365BE2E013333CF96C69D9EC81D546A54C4A657493C9D8D638A39B92F4F5C516AA70CB9FDB5AA1FEEBABA779EB5BAA4EC57B8D54F304006CDBE5CCD93C878F14982F34AFC3D3D415FA7A34368E44181989D3DB1B251E33D034B54A195B27D4873E72929B6F1EA22B13A9E67085600CEF7691A9C3AB7896E570F4D81CCF1E2D35ED3A9A06D188427797C6E040849E9E28F178A58D54CBF3B44EA82F7EE9442D634F6F95C824553C66668A3C77344F76AEB9C3701153A12BAD93C99824E23ABAA1A2D431A7BC5542DD7DDF04EF7CC758B56DA721160DE28A4C1D88659539796A9E63C78B4DEBC15BF8B6D62012518846340C534355947AD7675852A885B9AD0D14EA3BFB276AE9D9FBFD4A554F64EAC02A5EC172183F6371FA6CF317B05D1823521AB08E588B22D4FB3F788C03FBAA96E97552CDEB50CA6597F3E72D9E3B9AA760353FD3CA71825CBB52D1C5B65D3CCFC7F7FDBAAA7AAD142A9B2B55DB11718DC8D4A151C9B65D66664A9C1AB71B9E49B014A5B24F6ECE617AC6666EBE4C3AEDA0EBC6AA9737BE5CA84B96326980504F3E79A1DAAA9E4230D7E96191A9A33A1E3CE6E6CB8C9F297066A2F9553CD78582E53375C1E1DCB92213C316C9A481AEAB44224AC3856A6484AAB1AAF70691A9032353D976C966CBE4E65AB26732B6E33335EDF2C2C922DDDDF30B79785D1905D3D4DA5AA852C9ADB657EF1552CDEB301CC7A36039E4661DDCD6B884EB4276CEE7F8499B58348F615C4C5CEDCA44DA5AA8C9C9029B36A5AA39748BC8D46104C9A40A8EE337BD4BFC92E8540E1688548F961632C32B3453A88524D9E7EA13EA8943D3D5CA9411993A9072D9A55CF65FB46063F585F6D2A8532D56C96762CA45558A2F6ABD679A245445264501F568898929B726A1BEF21FE7ABCDD55344A68E8B4C61B678C9AB59204D55308D20A3E162B5D1C72E876279957B7F49D9342D683F4D4EBBF05C3128E06A10295120936EBC508AA2A0AA0ABAA6A26973A84A91B3E7AB17AAC60565F68A4C9DD466723DF27987F97CF521A532CDBCAF5BA3A75B23950C0ABCE7F994CB3EB6EDE37A3EAE0B25DBA358F4C9173C1C37485B723D30740555017D51693B3F55E6D4698B785C231251D1548554CA041A299482AA8673A3B4CABCA8DA84AAA113625864EA24C271A67CDEABAA8A168B046B356CDD6CB26534CAF050944CDAC034D5602F5ACFC7713C3C2F5847C22EB958450FCB72B16D8FB2E3E3B97E50A075054DBD984A64182AE9B44E22AEE37904C797BD85F94D97B7ADEA134A2393892C4C328420327B7E9133936EC3DB8D225327B5971C0FABE8E2382B1722D3501819D478C9CE182FD99562EBD624FD7D41D677651E92EFFBE10EE97E10855C9FB2E351B63D1CD7C3717C7CCF47512F767E541C51D5707F5A53C534354C536DC43EB597A0AA41F77B3A1D5910A95CF629163D8AA512E767DC46CEE3BA4E64EA205425880EE51564D234E8EB52D93E16E586EB33ECDE99617030413CBEF4CCD8C5D90715C13CDF8750B48B6D36E59226BB020BD3D5833F557E561A2A9461A8A45226C3433E8542990BD33693530EB9390FCB5DFE7F5143F7F83691A98370C3E861E8CB17D6644C61645867D78E04D76E4FB3614372611E52951D5B2F124D51D6F04B4455300C8D64D2A0BF2FC6F090457F6F91B3934E4353AA6445D70E4253154C534551978F4A8998CAA69108A39B130C0CC4C288549F0D2F5A10650D85324D8D54CAA4AF37426F8F4E22D6D8156345A60E43D75562517559E1524995BE3E93DEDE08F1B881AAAEFF62122CD2A2128D69A4D306DD5D06C9848AB94294EEE98D567B891991A9C3448A4434F465A28CA6423CA6924AEA0B8B9EB4436469945086AE128BE924121AF198BA6264D2B5AA15F9BAC8D44118864A22A1934E6BCB16A2A06BBAB11D016D2394AAA06BCAC2BA7C0DAD4A4A11EB1C1425187B8946AE5CBD71BD2097CEB25C8A4517D7F5F0AFA2D5DA7DCFC771FDF07DADFCC66A58474F64EA245455211137E8EB35AE18995CCF673EEF717ECA667ABA885570F03CEFAA78FF9EE7532AB9E4F365E6E65DACA2BFEC38D32D37D6B463E93DD235DE6104590106F1A8B2E47A79AE0B333997D3E3254E9ECAD3D313C53435E2711D55BD72FBE9D22FF9CB9F57B9C2EF2FFD7B336B959EE753B25D72B33613934526276DB23977D9A9286FDED35F5B9B548A572755F32012D5181888928CAB4C4E2F5D92AC129C3A53E69967F3C4E34111A97491EB5AB05497EFFBF861B5A93248BBF8E7C50A053F05C7E3B3705F19A0D5B4CA2D68C734BABD5689483333454E9F9EE7F917F29C1C2F919DF32E49CCBD9CEDDBD3D55E222B327520A6A191499B64D21A9AE62C59CDA9CC3F7AFA590BDF87F979872DA3097A7BA344A31A9AAA0403C04E909B57491D72C3B648255D697103FF62EAD1C508A5AA411B2E993448A54C9209236CA3A8A1508D13697AA6C8F1E3733C757896A70E1738391E0CD82E57CD1B1949567B990B225307A2EB2AC9A44E34AA2C5B90AC92CFF8848B5D2E30355DE6C4498B817E93582CC8EA2E953C4AA52059B46C7BD8650FDBF603A93C1F55511684509420CB7C71D34BD71552498DC1C1089B3725D07595784C0F256B8648B33CF9748E8387E63976C266B68A64DF1AF66C3A24327568552F1137E8EE5AF9A3B74A3EE7A63C727325C6CF9649A7340C3DC89FB3C384D1CA540BC701CF27C814F702212A43346A980FE87960E8C138567FAFC6D8D628F19846266D904C06512918D7521A2ED2A1A7721C78629EE75EB083EADD0A227DE057066BB9DC6744A60E2516D7D9B23946329E5F71D17EBB1C4C009CB75CCE4D790B82B81E4BB6372E9F10B8F8779A16E4FDF5F5286CDC10E19AAD09B66C49323818279534314DAD21633FAB1509E08D7B36567B391F78B85364FAA3AB39D02CFA40DF02BCB29A93120903DBF6E8C9A8CC17AA9B83E0BAC19CA55AB85CAC644C61C3A0CEB5635176ED4CB27D5B8AE1E104E9748448A479221D3C549B48007DBD55778B4F74526FDE5D57F17B4B03312047B078FC75E1E36589C70C4637C73979F642EBA2614461A85F67C7B628BB77A61644CAB440A423CFD726D287EFDC5CCBEBF966E50719B45DDFCC86DF8C45E001E05E60C511564581D7FFC848CB5EA46904D3DEC7B646D8B923C9B6361609E0E69B876AB9F4DD22D3D5817AD9CF7F1B0AB622F1B8C14FDDDAD5A2A804037D3AD76C89B1754BB2AD457AF76D5DD5AE310E60B1685F5B91E9EA90490DAB7C45E05CB527FFE2EDD736FD0556E647F5F7E90C0D45191888914E37B7B3A15E91007EF6DD63B51CFECF57FA6613D61F1F07CCB06A9705CE027F0C94AB39B92B13E1DDB735373A69AA4234A29049EB7465828159D3684F91DE7D5B1703FDF15A4EF91391E9EAE1CF96F8DDE781F16A9FE0D77E7577F3A3931ECCF035CD601C69F16A41ED2212C0EDBF5053A43E1676FA884C5709E380BDB8AD0F148027AB7D824844E3C3776E6EFA0BADAC62B4389DA89D44FAF09D9B6B692B017C68B906ACB03E19012A73AB93C0CB814781F96A9FE0CD6FDACC2B5F1669DA0B2C87F3A32CCBC52EBB781E75CF916A8648006FDCB3A996C3B38403B522D3D5179D2A0B784F03DF07FE0EF825A0AAA2A5AA0A77FEF68EA6BC38D7F329581ED99C43366753C83B941DB7AA8979AD12E98B0FDDB0B01660952C9908B05E076DEF09BF1D84E57180AAA68A6EDC98E25FFFE9653CF8C91778F4BFE71AB638A3EB42A1E8737ECAE1DC44918D234532191343D716D6CC5B4B913E7CE7E66AD7C55B1C95EEB99A64BA5E3C692C86A1323414E70DAF1FE0C4E9124F1EB11B269455F2397FC1E1E4A922438305D26913C3D04824969F70D86C916EB93156ED2E178B79DB1523BC1423A1423C6E70DD753DDCF6F641768D990D5B532ED8F0CCE3F4B8CD0B2FE4191FCF333353C4B29C15D798B87C3E522345BAE72F7EA0D6D30EB06890F672B4BBEEBA6B2D3FBF2DC07BA418B70FB1A8CE86E1385D19D0703837E92C6C1BB3BAB613786EB02F94A1836128E8BAB2A8AB5CA1B23C3254D62F8792ED30335DE2F889C6452480871EBC9168A4A68A990FDC449007493B56F3A4DDD386A45226AF7DF5064686E3241367F8CFAFCF919B5F5D7776653BCE13A76C0C3D8FEBF9144B2E9B8A2E3DBD5112E1860095C1DC20223964B3254E9E9A5F98D8D708911E7BF455B54CFCABF0312E1B576A37990E48D16DD3081533181BEBE24D7B3C0A96C7D71ECFAF7A5DEECA7478CF2B51B03C66671D72599B919138BD3D51E2091DD308EA96B6ED323B6773E64C81678FCC71E8E97CCDD328AE24528DE349100CD0FEEE4A07B54307C4E781B74BF16D2F140562319DB1B10C7B5EEF303B7B966F1F2CAE7A4F23ABE43339ED61956C72B32E5317CA6C3C57647020422663128D06325996C3F4B4CDE9F122CF1DB378E154B9216DA41ABBC02148667D7D3507B6834C9F1399DA13555548A74C5EB2BB1BD7F3492426F9FE218B0BB9D54507BBEC939DF329D93E33398F33E7CAF4745B64523A914850CDB38A1EB99CCBC494C3E494C3BCE5D77DCD0FFCCA20EFDABBAD1E917CE0E757AADE2D7C01F9EDB15CE77160548A6F7BE2BA1EB99CCDF113B31C3838C38143737CE35B56439E5BD3C0D415E2318588A12C6CD56997A164FBE4AD8BDB7CD6C383F7EEE486EBFBEB7D79FF00DC5E75346F13995E077C4D8A6D3B0BE52FF4AC8D9FC973F08919BEFE788E232F941BB29DE552DDF0AB897EB7DC18E3631FB9BE9E8E86C535A65B6BAA1AFBEDB390F43DC06F48B16D5F7C3FE865B36D975CAEC4E1676678EC1B53ECFB767ED51D038D6495D1A8D2E1B0ADE676A6DF5EABB23F08FC9C14DBF6C7F37C8A258733E379BE77E002FFF3BF333CF94C8999D9D6AD4B6E1ACA2551F18F7F67136F79D3E67ADA46AB16A91D6502B88360D29BB04EAA7F73F336C78EE578FA708E6F7D27C79973654E4FB8AB6AEBAC54254C27D405713FFEA75BB9F115032493E66AE749D52D52BBCA044166C45D12A5D60FB6ED92CD96387336CFB1E7E7387EBCC0B3472DCE4D9699CBFB949D60FDBD7A05D334E8CDA8F4F5684C673DC6460DDEF5CE115EFAD25E127163C98DAB5B29523BCBB458AA1F0B3B28BAA4C836951DC0D06A9E2058D9D5239F2F333B67333E9E67FC4C81E3270A388ECFDCBCCBF48CC34CD62537E7E1858B589A4625EB215815D6F37C4C43211653492554120915DF83A1418357BEA29BDDBBBAE9E98962182A86A1356229E59A7AEDD6AB4C426BD90B3CC4E55BA6D7D151E1FB414785E378589683550C22D7CC4C89034F64999B73F8DEC102CF9F762E3977F3B0C6CB5F1AC7301476ED4CD1D565323418ECC0D19589108DEA98A65A55B679352F15F84DAE30A542641256CB28419A57C36A025EB8D54CA5F0BB6E10C12A7F535525D870C6875229A8032AAA4234DCB5AF92AF575987BC41BBCD58C01E96C90217998446F10841664A4B37B6AD44B58A448B8B6703B76CFA7AD8746828329F49B812B702AFA1C599FDC1E6D4CA42340AB6A4A191D1E8279B2192C824ACC43EA03B6CA03BEBF87DF8E17B88B3C4422852CD13D6A22DF589305A29EB48A26F100CB19C68F6C54426A15EA96EA67DD71069A9442293D008EE076EA37DC6002D82F5BF6F5F8B8B8B4C4223B805F800F046AAD81FAA0902FD3BC1D62EFBD6F29F203209CD10EB3D043D66A34DA80A3A61D5ED3182C4E87DEDF2C64526A1156DAC5B81D712F40C56D63C8C2C13C51C2E2EEF7C109821181B7AA4956DA05AF97FAE1A50BAE1243B2C0000000049454E44AE426082,20,20),(7,'Escalader','image/png',0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E987969700001C2E7A5458745261772070726F66696C6520747970652065786966000078DAAD9C6976153D13A4FF6B15BD04CDC372349ED33BE8E5F713AA6B03060CE6FD3078B8AEAB4AE5101921A930FBFFFDDF63FE0F7F9AADDEC4546A6E395BFEC4169BEF7C53EDF3E7F9EA6CBC9FEF9F155EBF733FBE6EE67CFDC2F3922E7A5D98F7EBFACEEBE9DB1B4A7CBD3E7E7CDD94D740BEBE067AFDE26DC0A03B7BBE795D575F0305FFBCEE5E3F9BF67A5F8FDF4DE7F5AFB67B4FBDE9F9D5879F63C1192B315EF0C6EFE082E573D50541FF62E87CCDF773E1221712DFA7FB0ABFFDB5EFCCFBB71F9C77CAAF7D67FBEB8AF0A32B8CCDAF0BF2071FBD5E77E9D7BEBB1EFADE22F7F6ADFFF11739F897277EF6DD39AB9EB39FD9F598F15436AF49D9D710F73B2E1CB832DCB7653E0AFF12DF97FBD1F8A84C7112B14534071FD3B8E63CDE3E2EBAE5BA3B6EDFAFD34D4C8C7E7BDCEDBD9F3EDCD72AEE6F7E068520EAC31D5F420BCB844A2426510BBCECDF6D71F7BEEDDE6FBACA9D97E34AEF18CCF18E9F3ECCAF5EFC978FF781CE51EA3A779D59AEAFB0EB3A1C3314397DE62A02E2CECBA7E9FAF77E98F7B07EFBA3C0062298AE9B2B13EC763C438CE4BEE556B8710E5C976C34F6290D57D66B005CC4BD13C6B840046C26B15D76B6785F9CC38F95F8742C27C9FD20022E25BF9C39C426844C70AAD7BD794F71F75A9FFCF332D04220542285D0B4D009568C89FC29B192433D85144D4A29A7926A6AA9E790634E39E7928551BD84124B2AB994524B2BBD861A6BAAB9965A6BABBDF91680B0D4722BA6D5D65AEFDCB43374E7DD9D2B7A1F7E8411471A799451471B7D923E33CE34F32CB3CE36FBF22B2CCA7FE555CCAAABADBEDD269576DC69E75D76DD6DF743AE9D70E249279F72EA69A7BF47ED15D51FA3E63E44EEF3A8B957D414B178AF2BDFA2C6CBA5BC0DE10427493123623E3A225E140112DA2B66B6BA18BD22A798D9E6298AE4899A4B0ACE728A18118CDBF974DC7BECBE45EED3B89914BF1437FFBBC81985EE7F1139A3D0BD22F773DC7E11B5D56F47093740AA42F9D48603B071C1AEDDD7AE9EF4EDEB582E6C37CFF469C581018D79520C73B69E763B34BCE0123FE53EB1C1B83A9CAB1822106216C5D90582D959027050DA5A2E6115F57E6608F5D4A0EF77F5A9EF72D639B5F08FA9810C763227F0F5A845B43C9ABE2B67BBFB16EA880CA4C63F1FD0BC8DF85F07341F4DFCD701CDEFE6FCD501CD9F9CF8B7039A3F39F16F07347F1B953F0D68BE1AE6DF0D68FE356F3E0E68FE6B22FE5366EFD1B8F28053BD4161F3DA61AC65731E6399ACF76ED7C31921A65CE78209F4E8F8B7E7AC99BE1F5D9EE040DD817166DDF4E27ECBFBFBAFE68717C0238CC8D58EED2BC424D7D5C3ECC38DE8C29A36B7E5566B114CE29A0944A5AD7BF6694D86AE34C77D06B033C0E018F2C8C7A5B1C64C0E021363755EF624DB01BC87CA5D849FD98F69E5809C4D3A0774C4236B5D37E691D4BD6909C9C5F4F75FCD5F5C08A842C0DA98C165420058D651925D0D6680E175ED189B29251FA6D366CC6EF8CE54CADE6782B5040B688BCC7DD9B20A88ABDFE1A4737CB2AF941836C57233BB879C0057DAEACF91F83110EB3CDEF8B5330CE9F6A4D89C435F6180E27FF7C2DC4FB79F8CFDFD57D3FFF2C2E7EB696476AE5BB76CBE967EA7B5AAEF067316CEA127853F78E1732798BFF7C2E74E306F5E3834B2346E29A512F3CAF9D0644795A174E33D69A07114D840A8D9FB9E9A53BF0E28A55027980DDBD8BDC11A6CD1D47784B4D7C65DA627599E29A5FE98CBBC5495E4FFFD1EDEBF4A38244BA4D39E095F0008E441FBB80E7195A6BE1B0C7FDFE296DC7C9BF0917F7F319C79C6FBEFC399EFCDFB2FC3999F67FB6FC399DF39EFABC399DF39EFABC399CF63F1F7C399BF09EDDF0C677EE1BC11905CDCC99D281073303FF2B3C124772D7B869DA82070195E3BF759AB4E0AC18079D0FE51374A80E2984FA14ABF4115E7ABD6607A67A4CE4056C470EC6C219361DC42D84FCB3ED9F67A8B35E639D40B5799CC6CC452CEA46168AC3D5D7ABA1CB495261366F9483B8DFFF0C27966DF546E39CB9272E164F5C55DEC6F6D361F8DF6F2D7B9B61CE71FD84A798FC766E1C938BF2A71F3B1C6F93508523DE863FDEE4894E12232A2C0CA9BA3237464044D22B9869439097D93B3B7C5E435CBCA63357A1DB3CAC53D305A5A871EC81AC1172E4A6568ADE6F6A85F7C35BFFB857BB71F177F0429993FF64209D48AE331C01BB079C6EB814C9B9646707DD1D21EAF5C9F3E1ECD4F98DF1C7AEE4FE7E2323368E61D9ABFEBD53FC75F487D33E0C67F6CC992F78672DB09D4EFA89BDC8B6F3B812054CCFAB48DBB7D3EDA6B3E37F8D7F64607C37A2CD9FE5E3968D994A50CA6AB8EB2FF9C478C548F5D3836C27D4A45436E2DDF187C90A84426EE63473A469276269FD3A449B5397A0BCCB3EC94C64D0C3BB89FE7DB6567905529DF699AC9DD349F59AAC7E8B4037E4E8512CC779A799EE1F73CCCA52C37CB80BE4060D6C9AE4D3A2302B125E80AED08E14B3AE0F4E82934342445A021DCEC928610A2FCE05177BA0AC39F8E5C9172DF6C343F1B898DF55E98A4B6AD429EB6BCB64679786E03A7BEDD1FDF6181793341E0F6D1042AD03D973E6670CDCB8C37470925E7BDD23C86888E5F43DECD10F6A45B202F533E1AF2C111E66B9EF8BD23CCD73CF17B4798AF79E2F78E305FF3C4EF1D61BEE689DF3BC27CCD13BF7784F99A277EEF08F38FC551D4B7D003AEB7AD76406617017D2BA924E07F85B0D5D1C3703ED58D080A3EDEB29C9F87007EB481F4BC439C2BE62D85E7C3F17BF795B5D19123326D2FEE1283458CD96D6B58974BAFF33D009A1F11F052E987485F1A8DDF3EAA890F58FD06D5E61DAB3F507FA2F290FF0BA497FC7F4AFDCD4701F419627F66AF7933F8ADD33D96DC56F76A74B2580C228BA7BC70FF913417F987BDB06F2EEE3F2464B5A958B49D69AC1AA6DDAC8A5A18545BDBFC38427DF228109C705BAF57F3E8A86CC4E497A4D6BBE47A6FD79A82F9A95DFF38871F7AD7B7D6C514D28F3CCAFC2D91FA13F9D342D4FF84FC991F171FFF9DFC999F8DFE37F2673E0A3C4F8932585A65F0AEC2DFE54F1A2BF649F32D5E798FD3C38C3D0D9C1701195ED7B6D8544EDDB6DDD6A920D2AE50C1720DB6390466EA526AAA106AAB17EA1F6A33ECD246501924779E6E9966BBD69C3D6A61CED27DDFB1CEE1A6756DC755B23CDCE37887BE71CBA885F182BEA2D27A45AD46C4C67D878D213D9C02B0700DB7D4DE8570C459D8B6EC2A5AC8DA80F81D68FB8E777BD9CEC072AC9689EA4CD9F5BA2B4EC9A7A400C971D5B96E453D4685063BD76C70BEF858D69ABBF8E05604109FE5C377BB1FAB1F9B15D6379B65DD9BC96F06BFCCE537EF069B5F588CBDA3DB2FF200F313E8EFABD97EED146EA1AEF22B9F9A6F4EDD5556C656DEFB57B9E6FB925FFD6BA7DFC7D0FC18C47F8FA17905F13AE5AB2CEDFB8E6CDEDCC2E7CFB2A5FE297AE6836B1EC73C6ED1058F5BEC9F93C4FC5D96FC3949CCD7D9E2AF93C47CB80757D045461FB5E5ED8193E673DBA9D0C963A326B4ABA4221161102B2821ADADBB9ACF98D1FE0231303F33837F5B6533BF62071F97067F5819D41AAB2B775BA95652597B717D2E33621DC04806EF96CE17B48CEDEEE418EBDA39CE8276711EC82B40FA0E606DC124F5915DE29F1634FF854C988FECE75FC984391F3A31A0BFDA0871D5ECA9F43D42EF7E28D06B26E1A7629449706167F2A10295C153FDA4CD0C1D1BF2C4DD2B6CEB10C7010F119C91B4049DD0EFF81057A551F9CBFCDAF1D5ADDA9D532F2225BCA1939126199FCAA35AC426315EAD499E506B7A7628684DAFB526ED4BE020507EB8515AA01EAD617A34F9367A65E2230F921CA83F933E50D0BC6E85161C6D226D129ED00E1ADFC4226769A074E242F39A2E74E37345C15A9814D4B956EF288DB53C6DB1B9E5215971C9CE945318DAEA2CA14DEB49045479FDABB591F73512EE419D2C584AD56E316A7D0EFA97AA90FBB9D00AB7EC2696304F1F01718DA07633A5DAE7187C8BAD2D3BDF6ADF076FF84A3E044FCCDA42BBE3DFDC7A1D709C867DCE14402C7668637269DE3A2EF4CDEE41B4C2DB33776D9B864EAAF1EEDA422CA327707F7797F7B4A7478AA82D131A69E4E26E910CEB3977AD154D1A6D0A9479EDB452B7A10E01FC8A70196A060CF2CF5C2FF89D7E66C866B8D38A1BB1131C070A1183E6B80BB874B4A98D36693B5441CAD8F05A17EF3206A55A3775499B9F091C0446BCC84704B56DCBF4305B0A61ADB3B7D9098C831555F29764654C1FB9B91DFBD4328ACB15ACF2141169BC4D0AD69F48E9A48E935B6875D635570D2312E546AAC2BEA958E5A05BBF5F05327F60B0A77DBEA1F0BE0E647E2D087E5E07526B7891CA374AF9AC025169DA973399FB386A0671480F5A2DF4941E32DE500BE8C049AA837593DC706D09DC02B88C350B2648B6586261EFD4BA4BE159039EAE44F1D9B85E372AF1698F5525257299E2432ED30A17B35C88AFC1CC53D1FF7D30F366DA7F1DCCC4EFE6F95F0633DFCFF3B3C1B444472FA500A3763961A7D34F5B5ACA3A8D85CAEE2446F14486645551101231814A3D3A1FF61056897CCD23E9075749CBE5B90E7FD17C60F24EC2D86574886B0467C3ED9CCDBBE8758C23831BB0845966A082EE9E2BC812450100D3446530B1A5AE301AAFA069D78A1BDDC720A1393EC8A6262F949CD15A496C0127151A0C48841C0893D6E202957A5CD0CCA90C1DCA30C045D11194D074B030C6D39F55C3D11AC8DBD48F6547AE6891A8919DA75991D8452574C87F0F46F86918BAD24022A25827524A5F35D2211A1159698D4153C9B6A0BE68D03D65BDB2409402682F398CFEC3076414D7A227130A62C21242DF1BE4CF1B1644D1C746210393C0DC81BFAC3D92AF89C0D7445BD72EF9021C854C7491B0E8833A3213E2A552BBEDE127932A69D572F95ED23810715A3C4DA904D9D9128D770CE11DA0AA932CCD273A4DD4DE489F8C0200A7580815E42C0ED762164EC9C0DDDCF67325F5C196B61DAD7858A4AFF158A096994E78183D6E8644DBC8458BFDDD2F9D07046C8358DA0EABAE52FD52B29259B14397A406259102B8150CEE021A8F92114E65C147E2973BADC3D60CC7DB4947862A2F74DB1234595BF1DDB5B41088CE32930BC5D3C00549D320FAB502DA75C6D4412C1468439DB5D5C0F35DA05CD8A43DFF54E027032262672F809EC789F388D532277C959A3BC1D144204EF6049201C2217E0463821DD523D8A5A410B670052AD6CFEEA1ED74B092100D4DEA883644F783A07AF2BAA2EF0B640B0E8D4FB9D5C2CB7E1F183FA3A96412794EF0450A9DC70E4C9B6D1826EAA1B54CA134120F0C68B75490F53EEB4483A204F5FA6E0F58CAB50C4F13F46B478AB0F99ECC6B03D8EB6042A4A43ACC1934583F379CCFFB8DF9FB86F379BF317FD3708638AC96A1E8B4018AAA41E6ADEDEEF9D02ACDB94BF59FAF64FDCDF98AD2EE16F4D4E90E80227B3FF7EA118DE43C18098382C8EAAC47DD811AC37100DE868838F4485F5ADFE859299B13450BC78B02BB5144D312BEEB7B56D49B5FF05D98F55804355F66132B002B8A5641D5207D34614C0B026D0A99410DAFD1145E9DDBB4F09C065D04832AEF26E12B00225059901F8829D8DF504A05949F41CBB5009737145A8657E905307F6D37409E34148C5C3BAD1CB60BAB730255CA162276E06C2227B09FFB1BBA015562F6F6070E07D39A001843C0B656C37B4977051C7BD2962F01B7EB1EFA83EE7B2D2DED7C3B0E9A981BEE68D43212E40F4A0D6B18A307ADC339E87F0127631CCAD30AFE325DE436127380874A926B1D1E0D0C5D83017C35EEB1EEFB77AF02BDC3BE5DEE2F756019E64A242638040B2E131DB020DFF81ADC2028E694ACE314D425C5447B207E3486087E17800AC482A0B7120F10EBEAD1324F8D3AB1082C32FFA2CD318F2B36BD1FAAB71DFE02E86863138F909713C133011DB201ADC1BD511630F5C05D00ACDDE5CFEEDE37F65A34CBE1CA884FA5518ED69C54D6CF1222F5EB69494F319000DE920307882A04157D4C64630CB47FEBAAC19609600526B732422D77E2CFA8D1E56303C8BFAF6EB7007DA48B08DA01F7AA038E9D8E7A488EA84350068D7AC54E4F5F058E1F71C3FC3B70FC881BE6DF81E347DC30FF061C9479A2FB41F5212F995B5A83D4DC5A4125D536D5F0D089962E8D58616DEFAD9A46A158687CBAF886B1D209073A1AE13E61006D9A2E774C480A9DFBB8411FBD68802371E914AC049ADCA41F93E59972879168551771ECE88855CBA79E409B41770DE279C32A0586D84783BAC08DE2CE3AABEF666B154A804EEFA192CB9A1D7AB851AEE920BEDD40EC1AB46298D3DFD5893A36EFAB6DD0FC66A07DE1F73820A6A5B6F2D8B230A753FCE1D668D2A9FD9454EE867AE746C00AF20A0EA205301D0384A9905B01D54515D74919A6D2A5D08B0EF0590BD61C40C0ABA2CBC42D06BDD93C7CB2C0608F4A8BBF74BAFB02575A52DD8614A4C39BCE352C1BBDBF49AAE3535AF669999E9C20A3219C01D805C8D76E6197422E08E91A3C6F2EB81EC2F644307DA80323E07494AA6FADFC242D87394450CDA6D0069A0E4214A632601AD05A922DF1034C98177602E6F5F3BA70B80428F3A5E673CCFEA5EBCD2B8B7FB77F35F61FB612DE4E4F98BF3F3EF1DBD313CFCEF1DD0CFA792BE8D90952129EEAC5B603BF02FF608B903832B3C1F657F39B764A79D320EF4181E1C5C0C052880D52BF90CE874EF29C94981ECB6A69CF32B0D6712394565B0AA3DFA345B4C7799E05CDBB6B19E687CD5355FF777BC84EA756BFED9B2A40DA35B561696FC63C0B82E0FF1AE27C5A30720FC200B95A252D5784BD19151F29F666949E887ACC32D7AEE7CCDC9B59EF9BA93BFCB4ABFCCDAC9751CFAEB20DE6DAB555F3E5CDA5DC3E66EDA0D80322A037562CCEB546B64E8AB448FC585F7034D082FD004E7286F86947A262D74289889C1FAF3E93CF6D61A0D4298C83C58D042261FB206A3BA13D48473A3706ACD48C1696EAD4A1525865574B19E003841EF976F63D089426BA081E4537873F24B414C9E801120F31478EC258E9B4114A02150AF4C9B8A1F747BBC62B91D90033ECDBC7C4DB91548C06F5177A55588496D2A6C4E4826AADBA8BA1191D6EBAB4906575BF1262406E91252D9791F919F7855DE14F43DD6EF4B4C0CEBABCA7B182A372B0838C42AD4B0270B482230563674D22F9643A9EC6EF7822B736EFAA3F98B45CD99612A243524D59DD95B65E8D3F5007377B1AB4162D802B2945E1263DA1ED495B2969076D6C2585710E69AC816EAD749D828A2A4C6C2603626A8929C064D0EFDE02CDD2790974D6734089E2AB7409020075A2AEF33CC90E86804FD4ACE713E840B8D0904413958291DEEBB99FCAACC90CBF4622247C5A5AEFDA164F4E6688F748D0B450295AC081692134C0ED66F0C3D2D13B90DFEB210C185F0576AAF45B113FA5678D8CB8165B031496382050C8FB03FE1DC41849588A69CD5B9812280AF27AC81110473E2688F6A2E92353A07DDDC5BB37E9837651AC13C02174E0280B124D35ED8CB303EF3F8B06F98016CC108A5B92D049DA4D8FA168651730A7D32E2E43C9E1890595727664A2A2C529C8682E48CF1D1D8004FBD3836C4E9A5CAB98DA6119F769BC57819246C9A3B9FA4317E94AD565444181B0C38D23C98A1E43A79232683E8717B54138B4B4CB9B1A3C12488415689DC2D17269769A08FC4D0EB83BC772D1775BC6DFA13CB8219CFF6EC3D881A66971CD4255945A512E19218824ED03BD3642596D4B40C2E768A4AD32F104FE6A29A3B8E56F50EFA632058E9C9F975F692F144F93C2804BF42024DC1112C8745B77644B9A7A8C3220C653DCB453A0099E99B5897A77285460BFD889335F39264473DAD707CDFEB49566BEB49736E007DFCCFA61D7D47C7143EC3746E930FC97F63EDFB63EDF4D9B569B6A9027F3A4D9A9819A24B81BBF7784A14D3D1E648FC824C8116CA8E09276BE069940308F1E8964A0866654CA9929DCA2A1B99623428D3065B0A4A6D8FBBEE28B59D3FB33B3760C53F9147C8EAF831AB41EEA78BB90CD4A641D480BADF64B9208D6C68FEA47882BD022F8BB1F425903EDE80E2D520805B4460186B70E20226FE86BBC06F70074E8BD08E5D6220A14A14253BD4B3A9D0982FE7AA28E6E1B7BF5597787BA159F9ABAE03E925988146D61E891D0FB50A3F63F0845D461D4D6A927DAEBD0528A845007FD8A8E147B8FBA5F7DD6198BA4A103214FDCC84A50CA6B7321EB01944DC5D0156909AE55B83CA837F889BACD5A8EA356C242DFC28650C400F318917684DDF8181E19A8B7EA05AE77AF0BC86FDA7448BBD221447F22A47A586EE0A444AC54301A901E4E133368DFA315242FB67D61E074CCA3A6C722F9B4CB949CB67C320A946E8EC3B138E4A827391AE5489A6C389DD9085E9872D8AAAEA325E0499B8213D714226D70D04C7C680D020704484A4C18598FC1757D254F200E56277D751C48127EA044E16DC8308A42D6C26A929E2B49E1790DC6AFF3DF194EE0C458371A92C064A81D7AC7803B2753395BCB1EF72C2C37CD766F0F3D397AF82F68A905473F92584772CA73EAAC94405AA7A69323C7B49C74DC06CED868067A7093AF55A7CE9E2D4BAFFB23C0B657732A4B4FAA8EF6DA98CE7AC047DCDA7906F292BCC5112E8A2E54478E51779463F01F4F73AF791027100248D0DD3CA2C7FAA1A780964149A13FCE5DE724DF6011E80330D235B5126A0C515868BE3A4FD4A5FFC53844294925EE948304E0A8E87E52E5AE0097132C6CA2DE454A3E6FED78D5E0B508A9D5FA4345D21B17AD843679B4E5C6002055AEDA4F30902D2407759540043D41A52B67572F8239EAB1ACDBDB75C00D9E19CB6B0B02322B0CA5B53F470CB67931D6C5ADC47CBBD5360212677B9D00D09E96D319A93F0E8516F9DF0CA53311FF93A1CC33C3FF3E947973D67F1DCA7CF3FB7F1BCA7C1FC295B5327C48D53D6C03980BE256C71368EBB54D0BE8D90AF78CF0920CFD3F39DB55B52953B6217D684BF3B64FEA35C2D16DBF8B5B5A89D766D371414B593A0F2149BE619F62E253BBAE5C80FE83EC2221828A925A48D28CC0D248438746529CCD22904AA7E66DB3AE2AEB43D03A7FCA9511C1B4A9A36A999E4817491EAA47A3B83F87B033CC038D14FA644E101FDA649192DE75F7E0ADA6D910F234FF7DFF3B08D8A640759A9E079EA18BF7B91C5A2FECAEC5C6C3AD53170B02A4F133DC7D3761359D4C275D52EF917B30539D91CBBD19240745D8E571FA178DA83B7A3CF27A6991D1CF06C0ECAD0E269805F36B4A0AA88F10880C2704B0276AD2103E94B99C68B52802464E31F656D16D2724F8801EE667462E44C1AFB6F7A06C10C10665A3E4059CC14F13325D9841914D0EE9AA2774B48786EE453369D3FEA0849DB86C2934A1A8756504088C0454558F3DB48FDD9A2119D0B230476203730AA83D90ADEDD1A40E03B1F050C75DA1CB53CBE22963035C12FEA9BDB75A8918D778C3946F3F2108B6672D26DD072AB96742D8BD1EA844FB81E4F9F540A5BE3FF781CA9DEF2D8953D353D0C0DA40A86C3D050008130E31594B526A532E6925534B6FF69E236C97DD4EB1998396D193DF47CF16985E163D1C3E400F2011E12DE8AC83E78809FAA40D1B751823DCFF9763CB32FD571687B043A868E9220D1D972121D0D888822969D98B16769509650E5DAF0DBDD894A63BD07245B612FEC71FB5D2021D32F4B5AC68BEF440E8275F5F03D1393B7740F511EE91A131F47F9D68F4E4183A0B21B3681BDA0A4337BE58181A33EAB99FC0AFB430AEF5B3B3EFFADD520B61C099C5957AC8EA363AC683A89A1DAEA9C74E83D52EE82E3BD94081AE882C41AFBD4E2EF540ACB2389773742D8497365A662108E8306E802A1EF02129318F2BB3F00B6D41CE2DFBE15C2DA421EBBC2A44198E77CFB7301C4418F9EF6AC862075BA38EA1E7CAA873A73368B69010A86C6AA181897ADEB82190B4A7286AAFC764617F1844A71CA5D80A63D172ECA024D3E0A78AA2B7258A2EB77B464B7AE5FE85902625D98294634920D81BCA074314A6D9FB3C151402B6E5C1BB0C3DB47A7E5ACF4C4190CD8FA785A5FCE89AFF1FFC8D9C909B2B3D8800000006624B474400FF00FF00FFA0BDA793000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E806070D381AC6712884000018D34944415478DAED9D7B905C5779E07FE7DEDBB71F333D3D4F3D2D4BB264846D61593690E0803150988D89639C4DE23C6AB389702AA9BC96DA542A9550BB0BCBA648FEC82E4915EC262106AA763731A9C231F1C6404830C6400CC6B68C30B664591A4BA3794833FD7EDDD7D93FEE9D91646B666EF774F7CCA8BF5F55976634B7BB6F779F5F7FDF39F79CEF28AD358220AC1D43DE024110990441641204914910049149104426411099044164120441641284F5C3DA04E7F871E06DC00120D581C7CB01AA4BE7EA011569561DE734F03DE063C0E4463D49B541A713ED063E07DCD1C5862F6C4E66800F010F894CF122D1EF8B44C22A3C071C169996E7D3C007A59D0831A903376C94D46F23C9242209ED50004636C2896C94D1BCFB4524A14D8681C725325DA406A4A55D086BE01DC093FD1E993E2E22091DE0B31299601AD8266D41E8007B58C7C1888D1099B64A1B103AC4AFF7739A773F723D49E81C6FEB6799B6CBE72F5C2DC84457411099044164BA94E7E423103AC8E31299044122932008229320884C8220320982C8240882C82408229320884C822032098220320982C8240822932008229320884C8220320982C82408426CAC4D7ADE9F23DCB347B8BAF82F2253EFF92C1BA4BEB42032499A2708229320884C822032098220320982C82408229320884C8220884C82203209C2D583D507AF51CBC7BCAEF4CDCE90129904416412049149104426411044264110990441641204914910049149104426411099044188E887B9791F958F5910993AC347E4631624CD130491491044264110442641109904416412044164120491491044264110990441109904A18748114AA1DB48114A411044264110990441641204416412049149104426411099044110990441641204914910FA0D2942290822536C3E221FB320699E20884C822032098220320982C8240822932008229320884C8220320982C8240882C8240822932074849B45A6EEF1B3C0178159C08FFEFD62F4FF2BA1E5D6F66D3D795E64EA3C16F005E021E01E604BF4DAB744BF3F14FDDD42D8ECBC65BDDA75BF349E2F023FBECA31F745C7DD2DEDB12B7C08D80ABC2DFAFD0090EAF0736481EF5EF2BB1D3D474964EA0CBF1943A4457E3C3AFE93D2F63B460D48F7E8B9CAD1BF8B923600278A5481A4796BE717BB7CBCB032E91E3ED7F6E8DF9F8E44CA44D129E8C593F743643AD4E5E3858DC32F01774541E2DBC049601F900716243209427C52C01E6017F025E0BDC06FF742A47E894C472FE9F4C63D5ED8DCA828223D1AFD7E06F853894C6BE7FF74F97861E30A6547B78F033F2332AD9D4F028FC53CF6316424EF6A24017C1E7816D82932AD8D9F041E5EE59887A3E38475406BBD74EB22B700A781DF1199DAC7037E0AB81FF807608E70B8742EFAFDFEE8EF9E34EBDE4B1478016EC3C3A93A342B4D9CBA8BEFFAE8A02B6259C09F45514A0620D6C0E7A35BABF44B55D81CF0EB747E660200BE17E0355DAAF35500A69E9DC6737CBCAA4B7DBEC1C49BC669141AA47249ECC12483130324B3492CDBC4300C0CCBC04C98980913C35C731CB885F082F25DC0932253EFF8481FBCC6FB81FFDDC936E1363DCAB325A69E9BE6E8BDC7563DFEDCAD330485002C30274C527B9324B724496D4962A54C12599BF4688ADC3543E476E6480FA548A4126B112B0D3C01FC3CE1FC4C914958331F02FE3BE108D89A059AFEC134473F798CE283AD4D89F39EB9986507C703DC6FBA94B31500545A810DE616137B7782E15B738C1F1C636CFF18C33B86486553189681522DBF0405FC2DE135A9074426612D7C1AF8E05A1FA456A8F1D4A79E66EAC3D39D3DBB68B69D2E87FD27EFAC87F78C47EDAB75E6AEBF40E6E634DBEED8C2CE37EF606CCF28C9C1643B4271C97BF080C824AC8B480BAF2EF0CD8F3ED57214EA8464DE331EA51365AACFD4C8FF9B223BDFB19DFD77EE233960AF8B50AACB4391AB7127F0B536EEF72EE0717161FD446A569B7CEBCF9EEA7C246A13758D22B1D722B125C17B3E7527435BB26B79B8BF6E472891A93FB91FF89B76FA483AD01C7BF48558030AEB21943E1BB6E7438F1CE4E04FDC8832DAEE06FE31F007ADDC4126BA8A482DF58B1EFDD52F6D48910074F16260387AEF311EFDD52F519A2BB7FB70BF1FBD571299842BB21BF8216DAC317AF599333C71DBB736E58BBEE37BB773EDADBBDAB9AB07EC0726253209AFE59FDB11E93B9F797A7388B44C37E989DBBEC5773EF3743B8F6801CF499A275C69C0615F3B221D3F72B26B8D5F5DA330AE33966EEA1A85DAA29615634556C8E88E1F39C93F7CF0317CAFE545B7C371B320191AEF0FDE0E1C69E50EBE17F08FBFF6E5CE0F796741E514C6A881993330872DCC01036529740041D5C7BDE0E14FFB04042B0AD22AC5074BFC235FE6EEBF781FA6D5521C7967D47F7A48FA4C423EFA868D2DD2D73FFE0DCEFDE7998E9E84DAA230779BD83B12D8DB6D52134992A3491283090CCB20F0029C92437DA64EED953A8D1F36F1CFF81D150A207764A81DA1EA8435252432F5797A174B24AD354EDDE5A94F7DB7F3225DA348EC4F30704386EC75830CEE1C20339121954B914827304C45E00534AB0E95990A852D45F2E90235AB8E7FCAEF78847A62DF93BCEB0FEF68E56E69C2653AF7894CFDC9EEB8E95DE007D44B0D9EFFBB63BCFA7B673B2E92FD8604D95BB28CBD6984917DC30C4E0C921A0A453213264A85D7B03CC7233B31482A97C2481AA016A8D179A1A63E3CCD77B63FCD5B7FE5CDADDCEDDEE83D9DEC5799B438B5BA48D5851AD3C76628BC58C4BCD9C47FDEEFAC4887B34C1C1E63E2867172DB87486653E1D20AF3F2C9A989B44D2295C04C9A2853A194E202F35D11EAF891935C7BFB2EB61DD81AFBE5108E88EE97C824BCFE9B26D0D44B0D665F9CE3F8E75FA6F885127A4E774CA4C4FE30224D1C1E63E2C60986A3A51366C24419EA7573E84C43611836CA08255BFC73B784FAEA1B1FE7672A1F2039908C7B977DD180CEEBD640C9D0789FE3363D165ECDF3CA63A73B2FD25E8BECCD038CDF32CAC40DE34B2259B6F5BA8874D97D0D45226931303AC0D875636C3D34C1F85BC718389CC1DC6BB6376CBE025FF99D7F69F52E9F95C8245C9EDE790195F365A6BE7B8EFCD70A1D1769F09641C66E1965FC8DE3E4765C1429CE7CB94B857A2D556A1D8D50C5074B9CF8A5935CFFCED897E1AE189D44A67E4DEFB4C66DB82C4C16987D620EF7076E67453A1489B4189172F1455A0FA19EBAF369F634769348C656E2BF115EDA1199A4AFA4A915EACC3C3343F59BB58E34CAD78A3471C33823BB86490FA75B16693D847AF1CB2FF1A69FBC29EEE177489A2700E0393E85A922F9EF17095E093A2FD28DE38C5C3B4C6624432269ADA9004AAF843A7AEF31F6E5F79219CEC43A2DC26B780F884C7D9EE2393587F913F3549FAD6D68917A2DD4B1875F68E5DAD3FB2532498A472D5F23FFC302FE597FC38BD44BA18E1F39C9E15FB8256EDF691B975CC41599FA10A7EE929FCC5379A9BAA611BC5E8AD44BA14EFFEB642B237BFF6931D51399FA34C52B9D29D338D1EC9C483785830DDD14A957423D75E7D35CAF63CB74A7A4797D8AEFFA9467CBE45F2C102C049B4EA45E09552BD4E20E445C2732F56954F29A1EB5853AD553F5A5E2236D8B74384AED7A2C522F849A3A3A1D37D553446B9D44A67E92C9D7342A4D4A674B344F3537B548DD16AAC554EFBD2253BFC984C6777C1A8526FEB4BFE945EAB6506ED38B3BAA779BA4797D46E00538358766BE09CED5215237852ACF9618BD7634CEA17B44A67E43854B1EB4A7630F896F069196174AAD49A8A9E7A6E3CA941399FA10CFF1F19D205CC650BE7A445A5EA8F04B4307BAE5F550A71F7935EE5C3D2532F55F6002347E63F5FE92DAB2F944BAA2509AB0EA9117A05D4DAD518F5DF5A8F86029AC3A1E8FFB45A67EEB33551CBCD22ABB8D66C1DC6D92B929C3D8A191A5D9DF9B41A4D70B9521F003BCA6875B76F1F21ECD82B3B4454D070721B6CB4ADB3E4247699E575E39D531260C927B6C720786183B30BAE944BA54282B6991194E93DB3944F6DA41923B9318E3DD790D22533F4526D7C7ABBB683758312A19C306C96D49B2BBB264B76549E752EB2252276A3A2E0A951A4A911E4F931849A00654C797BE030745A67EEA33190A651A6867E5466A0C28EC119BF4488A54368595B4D6B235CB4539021DDE6248A275FC6357EE272A0CD3C0B24D12E90456C6C448C57F2DE5D9D8156DF74B9FA99F22931F107801CA5EBE31A9B442251466D2C04A5A980963A952D05A9F5B07A1188669ACBAA18D0E34811F800FA6657644E66E2332F5118669602563364C1D4507DD19897DC7C7737D0CCB206128D42A36E940E3363C74A049A474DBCBDEB5D60481C6737DBCBA87DFF0D16E97DE5F69627D269465606496FFD8755D1334355ECDC36B78F8AE8F0E82B6D3ADC00FF01C8F7AB941A3D4C06B7AAB9605D53A8C4ACD6A93EA7C957AA981DBF496225BABA32E81EBE3541C1A85066EC125A8C59F2D3F303610F7D0BC44A6BE12C9C44A5A188995BF43755DE3145C1AF9064ED5C1CFA5312DB3E5BD0697442A3628CF55D05A934B18B14AEC067E40A3D4A03C5326954BA1B769C8A549B4D07FD35AE37B3ECD9A4375BE4675A68633E7864B4FCAF1DFB3987C5D64EA23CC84813D9824319C587E06441982428073DEA13253A53A5F0BAB0B254C0C15BFEFB42452A14EFE6C91E29922F6A0CDC0688638B963E06B9AE52685D34512991A811FDD27A6506174D3B87597EA852AC533252A93559C73EE65DB754A9F49680BA51489A48999325039B5EC85CBE07C8073C6A57CAA42715B91D450122B61620F24312D155BA45AA14EE16C910B2F5DA074BA4C6EEF10DE3E2FDE685EA0F19A3ED5E91ABE130E9C2CB18A505A6BB4AF71EB0E95F92A8533050A2F17A8BF5227986F6DCFA716EAE8894C7D2593A1B00792A4B7A450B6422F977095C19FF3A9BD5C273F56C01EB431132659A5B0333686A9968D50978974A6C0F91F5E60FEF93C8D9926A9D114811BC4DB4A416B7410E0945C6A93F5D74F81CAA5B1ECCBEB956BADC33E921FE0D45DAA0BA1480B270A948F5770CEB804E7E3F7977247865A797B3F2132F51956D222399CC41836C2396ACB4597F301CEA4432957C64C873B520064270623A1C2E1ED4B1BB2F635AEE3512F5E14E9C2D1052A472BE163BA7E78ED2896F991535E8073CEC12FFBD10863249AD697975B8E461F7DD7C7A92D46A4220BC7F3145E28D278A54930D35A54DA73EFB592E6092BA479298BC16D0398C3062BCED02B433013504F365066316CACD110F7C0F800C98CBDB49305100E3F375CEAA506C5A922175E9A5F12C93DED61ED345B3DDB25A382528077CE83E0E20C70DF0DC86E1D2439985CDA01D0737C9AD526B5F91A8533250A2F17289FA8503F5EC79BF45AAEC43471603CEEA10591A91F23936D91CAA5B0C62C9A5967C56F6A3DA7F1F1A9512770C3E1F246D121B76B8881B10CF6808D659B4B0DB9516E509EA9907FA540FEFB79CACF57715F8E3AFC3B4DB45E4CC5740CF12F894E0D4D301DD0C44107650227C0293B547754490DA7B092E163BB75977ABE4175BA4AF95485DAA91ACEA48B7FD66FABA4D9C835B1772E9D1799FA10C33248669398193356CAB32854BD5AC7CB7B34CE37A9ECAE30B02D1336E474D884BC86477DA14E65AA4AE56485DA8B75DC535E58B4250BDA0D6B50B472AD482915463E2B8A9404389E43A91ED09C6B52DA5AC61E0E3746438357F3682E3834679A38E7DC7093E9F3ED6F32DDC29E4DDF1799FA34D5B3076CEC313BF67DF49CC6AFFB61BA75C1A3F16A83E278097B3481990A2393DFF0710B2ECD191777EA35D1A01C8A1478C15250D25AAF3CCCBEB8D199A150497531F52C07B81517EF9C4763B4899109A73F01044D4D500A080AC19A240278C383FB5A39FC6F45A63EC5CED864AF1B64E1BA7CFCA2FD65D0658D57F4F0A77D9A430E6A40A16C8532C2C813D4028285204CEB5ED3907553A38370F020F6681E84C7FA5C765D4CCF85CBEE836C804A5F2EA4AEEB8ED41C7FE3FB0FC4FEAE011EEA17993E7A35079A4B3ED0BB81B7C44B5F6C0227C0DA69E2B4BA034624959FF597FDFB154FD452E190BAA12E1B058C23D56AE7D20DB2E383710F9D5DEA8FF6814C1FB98A5FDB1090068A84C5E30F46BFAF1A99727B8798FCC699F69FB9956FFF2C6082913030ACF8B32896966C78BAA3FBD8AEC6A1470EB632A9F65F97FAA392F46C6A4AD1376303F80CF04960D550A394E2C05D6FE86D08B515861DC9D4C2EC6F1D005E6FDFD47D77EC6DE5F03F1599AE0E8CD7FCFCA948B0D553BD8CCD8E8F6DEBD9899A432689810456C204156F4F5BC332C28BC53DCC9F76FED1F6B835C601EA5CB2AFADC87475C86444295F0398897BE71FFDADB7F4E424555A61660CAC948591308995E5452B640D2B1ACDCBF6E60DBDED81C3AD1CFE7F97FB6613361FFF03B0A3D4AE004C03FF1588B5FC2D339C61E71F6DEF8DF5E9706162DC3A124A456BAF9217A732F5222A0D6D69C9DA8F894C570F7F7C85FF7B04988AFB006FFFDDDBBB7F96362853A12C15ABBFB478B1D6300D4CDB40257AF366FEC86FBCB995C34F12ED1828325D1D4C7179D5701BA801C7E23E40226971E89183DD4FF5A26171A554ACD13C85C2B40C0CDB801E44A6438F1C6CA5AF04F0E1953AB0C2E66427908A7E1E040E03FF0FA8C47D80833F712383BF30D83D91320A2369605A062A668B5386C2481898497369864337B9F1EE1B5A39BC4074A15664BAFAA25323FA79017816F85FC0AF11CE1D88D5707FEC633FD29DB3CB824A298C4458662CF6C55A75B1008C99315E37D3A193DC3DF9DEA599E731B9E24480CD7AD1F613D1B783B0321E106BEDC3E8AE11EE7AF9DD3CFB97CF73FE7F5EE8FC45527371DD534C97A2D13C3365A2924698C07629BD8BB9D3C5A551E91357934C87C4930EB7F584496E7B8EEBEEDE4DED648DEA576A1D154A7BE1466B81E787935C8953C32108673FE8EE4C19CA1D198ABBCBC5A5DCB3DC1F24CD139648666C76DCBC837DBFB897CCBBD39DB9B653065DD178258F66B1895373C3E292AB89E405B80D17B7E68515689DCE8B74F75FBCAFD5BB3DC7251769AF96C824748981910CD7BF673F866D7066EF14F92F16E2CF2C5F4E8E8AC69973A94C5529CF55C80CA7C30BB2CB5C73D2BE0ECB739DAF519BADE32D78E16CF00E72D79FBFBBD57E92063EB0D201EB2D93F47B3620E9A114D7BF6B3FB99D43BC943DC1DC4317088EB72F94AE6BDC2997D2C9320B3BF2A4869228D32099B1C321F3D7D49168D61CCAB3650AA70AD4266B78B37E4753CE9FCADFD3CAC2BF45FE84D75C57DA68323D274D776362A7136CB97E02FF9E00AFEA33FFF98570D56C9BA95E3013507BB1CE7C6E1ED336087CCDD0D6B0388B19157A0CFC70CFDDD26C99B9172FB0F0429EC62B0D74417754A416AF27417881F60F563B6823A4798F00F74AF3DD5828A5B0D33613FBC769BEBF895B70293D5A6EAB9602840BFA5CDBA59828E33B01CD92C3C8DE1C99B101EC4C02A5146EC3A53A5FA370BAC8C20FF2949EAB844BDFE7D62ED3621FA9C5D40EC2C9ACEF8973E04690E9EF45A60D2A94A14867536C3FB80DFD7301A70627293E59C63BE1B59576E9B31AC7712895039AB30EA53D25D25BD3D843364A815BF3A8CFD5A99EAED138D9B85843628DBCE1C17DDCF6EF6E6D47240DFCCA6AE9DDD2FBA5BB34ECD822A781DDD27C37268117502BD6993F35CFB96766987F7A9EC25F95DA7FC02C18DB0DCC511373C4C41C3440297433C02BFA78E73C7441772422DDF1BDDBB9F6D65DEDDEFDAF8107627FF96C1099EE04BE26CD76030B15ED0B5B5DA851385B60FA995966BE324BFDDB8DF61B7D365C9EB17441D6E95C0D87DC9121EEFAF377B733D07069C6745F4B917C83C804E155E5FF20CD76E3B2B89B9FE7F8D40B35665E9865F29FCE30FF581EFF94DFD3A5E55D8C468B030EFB5B4E8B37904C009F05FEBD34DB4D2056A0711B2EF9A902534F9F63EA9FA7A97CBB8AFF82DFB373505BD46551F1E62FDCC44DF7DCD84EDF68CD226D4499003E44B8E84DD824E95FA3DC60EEC405E67E709ED96FCCD138DDC039E6762C65BB527A68EE3297C47DCB570FB3FBADD7921C4CAE75BBD0B645DAA83201EC21AC2A24516A93E0391EB57C8DC25491F99717289C2C517AA14473B2893F1FA01B1A5DD1ED0B9605EB7A8BC4CE04EE8C4BE6A63437FCF201AEB96507F640B891C07A8AB49165BA54AA0F440314C3D264BBCA01604D15567410EDD45769D22835C89F2D523A5BA278B214CEB52B7934CF37712F787817BCA505224BCB2BFC702A117E543762D0C0CC5958D9B0FC717A678AED3FBA8DED07B732303A80699BE1E6016ACDCB335A1AB5DBAC3209BDE57EE06F6879C3CDD70F54A0C368E5BB3E4EDDC5ADBBD40A75EA0B3566BE37875372C87FB340F35F2E9FC16ABF23C1F0ED390CDB60ECE028E99114D9ED43D8990499E13489B48D95302F9B86B4965305FE23CB2CA9109984B5B29B709A57C732011DE8CB6A8B077E801FED04A8FD00651A4BE590BD6658244F2948A4C2E20F8B752316F7D5ED804410CE6CB88B1566818B4C42A7789870668AEAE593EA4B6A912B435DB66567872402F87AD475E828B29E49588EFB803BE8F1CCFEC5CA448BD168B1004B07A3D1CF7543249149588D278191A883EE6DE2D7A1A3D790E10A855024CD13D6A32FF5B9285AA94D24D11384975826BBFD642293D0AE543FC6C65DA9DD53894426A1137C1AF8B76C9C6B8075C2FADF0FACC7938B4C4227783BF0BBC0FB88B13F541704FA32E1D62E4FAEE79B203209DD10EB970947CC76772115F4A2D4ED71C289D14F6E94172E3209BDE863DD07BC93706470B1E661728528E671B1BCF351204F786DE8E15EF6815AE5FF032917C2AF7C12F2790000000049454E44AE426082,20,20),(8,'Renvoyer','image/png',0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E987969700001A017A5458745261772070726F66696C6520747970652065786966000078DAE59C59761CB99244FFB18A5E4260069683F19CB7835E7E5F432447911449BDBF164B6232198970F8606E0620CAACFFFDCF36FFC39F92BC3321E6926A4A177F420DD5355E94EBFE737FB75738FF9E3FD33F7E67DFBE6FC678FCC2F1962E7A5C98D6E3FAC6FBF1E503393CDEEF6FDF37F931902B8F811EBF781AD0EBCE8E178FEBCA6320EFEEF7EDE367531F9F6BE1D5741E7F4B3DF7D487EE5FBDFB39649C3123E3E123B7BCF517FF165DE0F537F8C6F774FECD5C64CF6BAEE2DF7006F9C077E6F9E53BE7EDFCB1EFAEF6B8C2BF7585B9D2E382F4CE478FF76DFCD877C743AF2DB24F2FDDDB5F34F770C4F5A7EFF69E65EF75CFAE8584A792794CEA7A0C715E7161C795FE7C2CF195F91B799DCF57E5AB30C541C426D1EC7C0D63AB75F871DB60A76D76DB75BE0F3B3031B8E570B7736E387FDE2BB8BFBAE11582A02FBB5DF6D54FE30B711A44CD2B22CFB6D873DF7AEE376CE1CED372A5B30C66F9C41F5FE6A3377FF3F53CD0DE4A5D6B8F33F3F115761D8F638622A77FB98A80D8FDF0693CFE3D5FE639AC2F7F14584F04E371736182EDEAF7103DDA97DCF227CE9EEBE215CC759786CDF331002EE2DE1163AC270257B23EDA64AFEC5CB6163F16E2D3B09C12709D08D818DDB466131BEF13C1294EF7E633D99E6B5D74F7DB400B8188144A2634D537821542247F7228E4508B3E0613634C31C7126B6CC9A790624A29276154CB3E871C73CA39975C732BBE84124B2AB994524BABAE7A202CD654B3A9A5D6DA1A376D0CDDF874E38AD6BAEBBE871E7BEAB9975E7B1BA4CF08238E34F228A38E36DDF493F29F696633CBACB32DBB48A515565C69E555565D6D936BDBEFB0E34E3BEFB2EB6ECF517B44F56DD4ECBBC87D1D35FB889A2216CE75F9256ABC9DF3D310567012153322E68225E2591120A19D6276151B8253E414B3AB3A8A223AA266A38233AD224604C3B22E6EFB1CBB97C87D193713C38FE2E63E8B9C51E8FE1B91330ADD23727FC6ED83A8CD763A8A3F015215CAA797DF001B17ACD25C69EA492FDFFBB47ED9B1878B33740CA8CC936218A3B6B8EAA6E1791BF929B5810DC6966E6DC1108110B3C8F69A20D835B2070E729DD346ACA2DEF7F0BEECE2F57A1517DBCA7BEE5D327F991AC8700DE604BE6EB5889A7AD5ABBC973D1FA18EC8406AFCEB01CDD388FF3AA0796FE26F07349FCDF9A7039ABF39F1BB039ABF39F1BB039AEF46E56F039A9F86F9B301CD6FF3E6FD80E65F13F15799BD7AE5CA0D4EB50A854D73F93EE79552EFD3247D76D9E677F721A632264CA005CBDF354649F4FD60D30007CAF28C33CA2A223D2AEFD7DFCD9B37C0238C48E5EACB1588492AB3F9D1BAEDC1FA39AE54A79DB50630896B06101597EED9C6651274A55AEED3819D0E06079F7ADA36F6D947B41098108A75B2275E0DC0BBA9DC41F8915C1F971C9092897B838E7864CEE3C6D4A3BA372D21DA10BFFFDD7CE34240150256FBF0361102C0B2F41CAF596106185EE60AA19A9CD3663A758464BB6B4C25AFB507584BB080B6C0DCE795670671F53B9CB4B78BD72325FA15433E99DD7C8A802B6DF5CF48BC0DC4DCB7373E768621DDEE141BA3EB3B0C50FCEF5C98DA6ED71763BFFE6EDA372FBCBFEF4A66A7B274CBEA4A6E675AB3B8663067E21C7A92FF8B17BE7682F9BE17BE768279F2C2A691C57E4A29E690664A9B26DB8B0CA51BAF41030D3DC3067C49CEB558ADFAB547E4F832C06CD8C66A15D670654D7D05487BA9DC653892E59E526CB7B9CC4B5549FE9FD7F0FE99FD2659029D760FF80240200F5EB7EB105771E85567F8F3113BE5E6D384B7FCFBC170E61EEFDF8733AFCDFB97E1CC9FB3FDDD70E633E7FD7438F399F37E3A9CF93A16DF1FCE7C27B4DF19CE7CE0BCEE915CDCC9EE2010B3303FF2B3C22457C96BF815A92070195E3BD69EB30C0AC18079D0FE5E164A80E21877A14ABF4115C7A3D6607ABBC7C6409788615FE9824CFA7E0A61DD2D7BA7AB9553AC218DAE5E38F360663DE4BC070D4363AD61E3DDE5A0AD34193FF27BDA69DCBB37F63DFBAA724B4996E40327B34DEE727D6AB3796FB493BFF6B1655B77C3564CABDF360B4FFAFEA8C4CDFB1AE7D7204871A0CFE55643A2741B901119565E2D1DA121236812D156A4CC8EE89B94DC954D9A23CFD467A5D731AB94ED0DA3B936E881AC117CE1A298BBD66A4E8FFAE0BBF9EC17F6D97E5CFC1EA4647E5F1325500A8EC70067C0E6118E07126D5A1AC1B6494BBBBD727C7A7B34DD617E72E83E3FED83CBCCA09A67687ED5ABFF8CBF90FA64C0897F5F9225CF0DE5B413A8DF563739179F7602412898F5651BB76BBFB7D77C6DF0C7F6060BC3BA2D59EE5CD969D994A50CA6ABF6BCFE9E478C54F635716C80FBE482865C5ABE31F82052894CDC8586740C24ED882EC54193AAA3B7EA99675E31F6931857E77E8E97F31A5E56C574A6690677D37C462E0EA3E3F2F839664A309D69A6B1BB5B6333973CEDC81DFA0281993BD93AE88C08C41AA12BB423842FE980D383A3D0D090148186B0A3491A4288D28D47CDEA2A0CBF3B7241CABDD868FE34121BCBB9304A6D5F0A795CF2DAECF9E6B9159C7AB93FBEC302F36482C0EDBD0954A0BD2FBDCDE09A87194F8E124A8E73A5B90D111D3F863C9B21EC89A7401EA6BC37E49D23CCCF3CF1B923CCCF3CF1B923CCCF3CF1B923CCCF3CF1B923CCCF3CF1B923CCCF3CF1B923CCCF3CF1B923CC2F8B23AB6FA1076CAB4BED80CCCE02FA9A638EC0FFF47EA9A3FB6E5D2C0B11E45D386539BE0E01FC6801E969F93066484B0ACFF9EDD66A3369A3230564DA9ADC25F80B3176ADABF879B8F4DCAF01D0BC45C043A56F227D68347E7BAF26DE61F513549B67AC7E47FD89CA4DFE0F901EF2FF25F537EF05D05788FD95BDE6C9E0A74E775B725ADDA3D1C9623188249EF2C0FD5BD21CE4EFD7817D7370FF2621B30EC5A2AE4463D530F56455D0C2A0DADAE2C7EECB9D479EE0F8D37A9D9A47436523267F24B59E25D773BBD614CC1FEDFAED1CDEF4AE97D6C514E25B1E65BE4BA4FE46FEB410F55F217FE6EDE2E3EFC99FF9D3E8DF913FF35EE0394A94C1E2CC9D4F65FE9B6EC73E431B34DFEC94F738DD8FD062C7790190E17D6D8B0DE5D469DB75EE0222AD0215CCC7E02B79CF4C6D8C5515426DB54CFD436DFA35B511943BC99D869DA65E4D6BCE0EB530466EAEAD5046B7E3B2758599933CDC427F86BE7ECAA8FAFE80BEACD27A44AD04C4C6F9C4157CBC390560612B6E29AD09E188B3B06D5E336B216B01E267A0E51ADE6D795903CBB9B44C54464CB69555704ADA397A488E2DD6B64BD4A31768B0B5F5F2D66517F29C6365E7ED0C00E2BD7CF86CF76DF56DB3C2FA64B3AC7B32F9C9E087B9FCE6D960F381C5D8DBDBF5431E60FE00FD7534DBC74EE116EA2A1FF9D4BC38751559196A7EEE5FF998EF727AF4AF153F8FA1791BC4DFC7D03C82789CF25396F6BA239B27B7F0EF57D952FE163DF3CE35B7636EB7E882DB2DD7DF93C47C2F4BFE9E24E6E76CF1E32431EFEEC1157491DE7AA96939E0A4BA5457CC74F250A909ED2AA9484418C40AB28F73E9AEE62B66B47E400CCC9FCCE077AB6CE62376F07E69F0CDCAA0D6586D3EDB4AA590CADA8B6B639A1E4A074612783775FAA0266CB73B8550E64A6164B48B75405E06D297076B3326A98FAC1CFEB6A0F91B3261DEB39FDF9209B3DF7562407FD6EEC32CC951E9ABFBD65C57A0E788C24FC52891E0C2CEE87C012ABDA3FA499BE11B36A481BBA75F97451C7B3C44707AD4127444BFE3435C157BE13FE657B72B769666AD7A1129E10C9D8C3449F8541ED5223689F1684DF2845AD3BD43416B7AAC35695F020781F2DDF65C3DF57819A64793AFBD1526DE5327C981FA3DE80319CD6BA7AFDED226E222E1096DA7F10D2CB2170D944E9C695EC3FA665C2A28D80B2605752EC5594A634E475BAC763A485698B233A6E8BBB63AB3AFE3722402AABC7C6B6DE4798D847B5027139652B45B8C5A1F9DFEA52AE47ED6D7CC2D9B09D98FDDBA475C23A8ED8811F0A83EB59A6C5A0B8CE883F64606C754A98A10DB7235800F11129403A65A727B216A6CBFA00617E81113E98D010E291EF05AD1418912FD8A29384237A14414420FD19303A1127F6D9CECE4C3322D400D280480C5DD1300E277DBC313925DB3ED0103AD0557F06AB58C04D26C6D53A336EAF24520D19781AADA705626A8BEB228353AF78898EEC975E8440087AF9AE84A57CE04AA8C5647C3D5169E53C848D28F318D0BDCFCEA6B97DCB34D05F871D40599B92243ED4031C4D646AFBE9651E698C5F740DC2AC9079FA6069555D6CC6F2FECFC6A21EA6B72FCD1BA8EF9686187E2D1565B02402C2E47EED15566F52D46D1EB0AFB47D70D5217EC1A54ADADD308AD3C408B3593F801E317A1B8D4E108320476D81C0E3E8D301FF7C841CDAEA83C441423CCEE9659579C8729FAF0FF79202DB0D1096D8E417B9470CBE1C6956B344987A9DA6AE44076C481BC5401E07FF5F1B2E0C9CEAF2EA411751A5BC20DA611A74D636EFE43B181A8664541E4D411ACEE2D6A5F7DAF3A1B9C0E61A4C455B4B03C3CD572764C8188A0064E51478A80694D61BAE9AAF3B6E70C0BD5C620BE5ABEC89C2A1FE42491000EE7731A303798067441CB79364EC0C97A7A11796516595536AC6197D3D0812D3ABDF37E56A4E892A57E14DFAABA12BD146C9B347F9408E6800EBB8F197B8044B41E17A0ED8109BC3A3A72CCCE3837009241D9B857BB82FA4BBDC857DC5C10BB23543F534F14C4F09E493633521CDAC4F5BB63E81A2D02580180D06E824ED86CD42F1D08D8ABA11106280BF41F075AE11CA4705C88288AB6C6C91C0AA5858628C22AD7BB8734004AE405B5D9BB5C4857D25A2785B76C1C97D6CA5D4B0DC8852AD86E284E3E45EC939F453BD03AC1A35E4443C173B9265CE25C8137B818607121F3934EF5387F05C93F87F5DE9A38E80E3480D09DB6B7234EEC6BA9A1D279660C3769CE99CB757C89EFE41B115EAAFBDD02900CC497621824E0CB4BB89387630E798048051E76BC9DB1028CB7847ACAAD1915CBE7B484D416FD1D801D579ADE0CBB68CF8D9E244B80A89C8BBAE500876DEB7D8AFE69BBB2C6ABCA8F44365D15004FA3D0A90866D8611433B8C6D37381FE90DA4456326AEA1E63E21C1EF6A08C1A8780791D7D8C8E8F105AC41B50E6FCBCF8615E26FA9FED597FC623CD273CCB7DB83BF1C5728779CBB2EEA583D78B3667202DDBBC59B4517F511F7E59B4318F559BEF2FDAACE447CC8421B610DC84210C9AAF87B07B3A8DD6F58A7396AC04C166AEF49B4AE56F8FE22759E41472B941C6A72A13EF915B34F3D87CEF908A60CAF463E119C4C22CF86575D1883421CC692C57AA8EE4312B28E28656D281A7A82060B3E10A995A1C0E0286CC52AEA40103A7C1424A6A448C07DF66A6DBBAD9B5EED2374C03BEE7F60C584FC6C1D4801AE2D98A45AA5082C6432261AE10716CF5B47FE80359EC5788BD92E99AB58EC541D330801C40B9854D3AC62089527602A7D3D50D058832B9040890AC8081B95B38DDD0CC0136A0A1E8986B6C3A1B78C1443669A07333144617E03970A82E03EA7841C290EAC9A1F3918B0C878CF2C624FBF9CC24EF37E0190E6D2762603325DFA9DF0CE33CF4D2A458A8201437261C7E113BB74CF47871A48CFBE02B857E06A76B318BFEC3DC2C79B97CB2A35C5395E623795433C2063C8388E17DE83E118F011A07394AB985B384A5140C2D9543661C75444ED3A3D63E85B83B12625DD932092E16B855544FCBDC1ABBFC95B586E22BD009CE4C6425D28A44546137857DEB288BD0B2216AA40900BFC110E4E8EA0E394AE43305A20286B1930ABE928FDBB6CFE998F91E1FFB3B1D33DFE3631FD2B17EC3C95DC422A33E5E8FC106869050AE696D72DB6F60C1378E0D81425139972CCD167ED2521FCDE1FAAA9C8410EE4873D88EDC43E26C43B9884F78475167EA1EFD41D80ACDD4EF0C701CFEE15365409A7E298B2E4A02D31B68B3055046FE82EBD34C0FE58FEA7DAD82120D0202C54496907C359026D39611EE5553E828FE61D65E0D497D80FA25BF9B13190D9669BBD53ACDB8AAA812CA50C21354822DF06346C6914CBD4591300814A0EBD0DEA14B1089E1D3B40CA927CD51C114580C750C736A942945AFD4CBA582003BF207E40B67948D6C402BD1FF818A45BDCF39AD51A6DA158037302DD08A6BA25E93D3296D49BF5E0B1A05ED05AD461A93F8DB418D6885F0123544FA134D7D18944F5D97CFA01BFDBED1F660E9BE43084404220E71CBD2F09B321CDE08DD10614F8E6AA1D7026E1EB6A9ED8C26CFEECE287BC9BB40315D77F64D625375A2462BA8734D3420200E704059E02674EC91826435D9E18C039A4AE8F7126FD901FB6A057AF7141465980BDDA2D6190BE18C413E4CA207B7540DB53F27E48F75D0C775677EAE833EAE3BF3BAF0BEA83B9D5FBC5AD656B81A3B93D3D201D4941A5472834795CF66FA1DBA894EA5A385D29896BA22FA10AD45719EC5C37B4BCFEA38E5CB869E8E50683BEF326031C97F338C5DE289D65964B7F7F29DEB7AA243C7B481C4358979D5FAE0BD140CC919872FC021DB398BD35C1F8FC35CDAE523F35F76F9EE69BFD9EE7C31EB61D4BD4D2F4EF464D6618C6FCC7A182556F5D6ACF31487F6218E590666FB6C143CFE71B6400E856F6809C7DF470B48549A5F783A5AD091423AEBADA305055F1693578E538B20C1668801B84312E606A66C18440D50984082DC4846BF774DE542C0960A4FA7D26DF6B63B435829114623E9E9A1013E8B40C83A550482E1AEDDC6A014B57A1120B4F47CEE5A06A5497F3BCBB23A90BA8DED696130D14726A397DAA176ADCC562D7D0A18F3C82F32BE46BBA4FDC62479F97D804C7A580EE0E59DE8312A205D91BB6E808572C23BD5D3DF1AF5E45BF37C7C0ED050C7FF7BF380A8700B79B9F418C08EA8F582EC8468618577560F3D6103B35E5DCFD8F45E5388AE63E8A4C021FA53EC8CCB53BDB094345FA09698009F84B125EE1AF40C491C127FE1DEEC026590965A31A8D02E780AB0BA1DE9934137685580D934D1AA299526571AB502078CE625DE8D608AC38EDA69161D3E10D2BE168CABA7496BB2449BACBA1B23DCA082FDD1A5DE9B76FC12588DB424593A750AD341A680D36303DA0462CF82C2013D2F2158D2AA45CCE03574163847089510747257B506D6F179986E8B8C11958D042E5B91BDB180278645CCC07D60188D24405A793DAA10CACE03BD466A3B1AE4E4EEA45BA60661DA07FF523DF8A77DAF57DB80AF360129396D03BEDA043488428F82A511F649208B1B8B49734B92195C43DC540AB9EA21041C5D91C733522109E596D564E87367A310DD4FBB49D033A1A036B8C8AE8CD61F5AEAE735A5100937AD05418D0425D63E481EADAB93C9342D44329F3BCBD070E17FDC5E193AC52A29A26734AE7FDA1F31CCB2EF17B3FEE948CC2746FD6C3FCBBC6C4A3E9B362EED94E41BE06DDAC5F7011F890BBF3717EA45CBDC498BAF1B5CCBFEF22524E3B49D41BB5434B79E736320DA07E23D7700D12540D752BFC01461A24C5B91D0806C0D1D5A9F43E41FAD6418A658849B4BE121ECE21E11416FE12131693D6A3032F80421070DF6D99C215941DA72D61B6C6B65543322ED010104F06859F73C41A38CA22652D192BFCE6DD98EC4460D0F722A432AB170D35E402D91462609D1CA902B4737809C801CCCDF6AD5467501F37789C2ED94A5D34275A1B2719585E580021EF85325254C078A4D7FA855C400B159284E679BF619828EA079BF691805FE364FDFAB18320AD0723A5274555B559A7132702BE431C900935C2594A27D8A00C3380B3A145185C85131806C1BDD5F00CB9A5065E8C8A0F2B3B6F924268D830C20D97A40C981C784B8491AC324F520C1BA0F8A40248605B92B32C81EBD898E659611A0C41100B9D6B3997958887071D7AEA542478EEA34DDD6B91A3D8BA8FD34EDC8D77B8141C2D2EAA1A6A056B55B4BAD66C3C510D1B6D0A1304CE64C100690E8B4AEDD1AE0461F94D24720C1E5F2BBBD05114FAFA71F74FE488B7BF433C0B1692D9D0E0A5FDCB05BEE372DDD977602DF2059021D1C4FAC26E9056B6E6A01B48F95AA817C34D146FA2E1C9DE0386AA201375A3E4517839B16503B8B5797D4244937E9C78EAADA48F742041D113421573D4537B571D043B0B800E08BD0E8E27486C06BEBC6D1631C2A502BFC3A57417CEF7DBDFBA0B2480BEA482795056620FEBD267BCE2A8341DAFDBB373D21343A0E03CBBE69D5BC4F3CBF1ECEF4A77DEB7F1CCEBC36EF5F86337FCEF677C3993F67FBBBE1CC67CEFBE970E6EB587C315C0F1E8A31B5C65AC244F87964026F75F0740409AE59821F7A7A16CC12E9A3E2C7855204DC803298A294F30ED9A33AA21E9E71D2516625E4E186AFD80C6886CE68E00A8437E9A0329AB0FBA4237CF7DE66EE57461EF59C2DA55DC965080403A461AC1E30D5F2663ACBB70D1D0619849E500A50B40B3A0B7036602942015A9CFC1400F384AAC41BD85A74DE66A0692131554F2B5E0358C37D1DD989D0A23CD1BCDA2EBFB404A34D56F16D748903B610F5A87948028A01B48744CC2BD0B8609F904AE0BDEC9696D59275C2CDD419CA0E0DA1DDB73DC12E781E9293AED5B40C2B3A8DA93DD668608EA358F42D256E1986E6D821866A5C7BE831D736662B30586D25160B60D32C5B2DE03BED488F3303377E161303E30D9A0442FC880FA719CDEDC38E1990C003AD34EDF15EE7B12C92A456448F4E5AD19EB295DBB39E5DB7CE9E5309C0465337D16B7F00D657DC08689DB8D935E516AD50659DF54ED5FA00F4EA303CB8188D56A0AE6EF53F1C481A506A317BAD7BC1D2D3B6DB0F6D1CD70D2A81C030B6B56854C03220C78820D739E540F8A56ECFFF9B217759338A081A98E918AA809698BF74D228A549500A0EC2FBC88DA4B51A5D2D591FB57E540B4A6658D83A495B4FC43058DECFF3EB5DE557DFCD772F3C2DA3A56297D3B291D64C9B5B0D9E3377A807FC89306572E9F1FDBA1A094DFB1E5EFFAF0081FEC5AF9C44C0101BA55063CE5AD5D174B58CEBA44E20C56665EDD967445EB9E867382BCEDAEBAE143C4915F580607D70ED54A645F5D09729C8A628103C0FAF2206C6D6CD1DB2D33AC7D4F614BEB43A4D40F9A93387773B025EA7E3D20E6BEBACC646E649D74046E1E3C8FC09190B9D4245302C2D599578854A3B82C1B5AD9322A480FEF705DA8039FB33DA73701B8898A00151861E5323B089E0AAA2092B4BC29C2B6792F84A5E7B3D37B30C77D7A7C7921719AC80520E6843EEB35AC07F691B07C6584FFA170187D697BCA6419726B1ED7A3BBB2D5962FE0F7AC5A26353A3F45500000006624B4744004500C200BC39ACD1CF000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E806070E0A2B7899C296000019F34944415478DAED9D7B8C5CD77D98BFFBBE73E7B50F2E77F95C527CE86D5AB25547B1AB2870A23416D2586E5D3535D0C6B5811A2D5ABB6ED2A2688B484D00B568E338285C14A85349681BC72950394E24DB050C39B66CC98E658912258A92F87E2CC97DCCCECECC9DB9CFD33F66965A92CBDD99D9D917E7F70183E52EEFCCDC7BE77CF33BE7775E9A520A4110568E2EB7401044264110990441641204416412049149104426411099044110990461FD3037C1393E01DC0FDC0AB83D78BD22A0ADD2B9C640558A55CF3905BC0CFC2E707AA39EA4B64187138D034F030FAC62C117362717812F005F1799DA8B44FF4A241296E155E01E91E9C67C15F88C9413A14DEAC0ED1BA5EAB791641291846E98050637C2896C946CDEA32292D02503C0F72432BD870F64A45C082BE0AF032FF47B647A4244127AC053129960021893B220F4803DAC6332622344A6512903428FF85C3F57F31E45FA9384DE717F3FCBB44D3E7FE1664106BA0A82C8240822D3425E958F40E821DF93C824081299044110990441641204914910442641104426411099044164120491491004914910442641109904411099044164120491491044264110DAC6DCA4E7FD34CD3D7B849B8BDF1199D69EA7D820EB4B0B229354F30441641204914910442641104426411099044164120491491004914910442641B87930FBE01A957CCCEB4ADFEC0C29914910442641109904416412044164120491491044264110990441109904416412049149108416FD3036EF71F9980591A9373C261FB320D53C411099044164120441641204914910442641104426411099044164120491491004914910D610598452586D64114A411044264110990441641204416412049149104426411099044110990441641204914910FA0D5984521044A6B6794C3E6641AA798220320982C8240882C82408229320884C8220884C8220320982C8240822932008229320884C82D013DE2732AD1E7F07F8267009485A3FBFD9FAFB52287974FD584F5E13997A8F09FC5FE0EBC0AF015B5BD7BEB5F5FBD75BFF6F226C76EE5BAF72DD2F85E79BC0AF2E73CC23ADE33E26E57155F802300ADCDFFAFD56C0EDF17BE481BF5AF0BBDD7A8F3991A937FC9336449AE7575BC77F45CA7ECFF081CC1ABD57A5F5735ED20610B622552AD5BC95F3A9553E5E589ACC1ABED7B6D6CFBFDD12C96B45A7742DDEBC1F22D3A1553E5ED838FC7DE0A156907811380EEC034AC08C442641681F17D803EC02BE0DFC32F04FD742A47E894C8717347ADB3D5ED8DC68AD88F417ADDFCF02BF2F9169E5FCEF553E5ED8B842D9ADC713C02745A695F315E05B6D1EFB2D2493773362017F0ABC02EC109956C6DF049E59E698675AC709EBC01A0D99783F700AF8672253F7C4C0278047813F072ED34C975E6EFDFE68EBFF6329D66B2F5192A604718C1F85D4C290461C13A509A95A15B54CE00F5B514A12102BE04F5B8F4EE99755618BC0E7E8FDC884E6375A9A122609338D3A00AF4F4F12A629F524A11406DC5618602E0AC95B1659D3624B2643D6B2B175035DD730351D53D7B10D035D5BF126EEEFA7D9A1FC10F082C8B4763CD607D7F828F0BF7A5926822466D2F7393233C597CE9C5CDEE4D912814AD1D1F0749DAD96C590693264D938BA41D63419B46DB67959C6B2390AB6836B9A2B112B037C1FF80D9AE333452661C57C01F812CD0CD88A053A3633CDFF3C7D82C375BFA3E796D3E44AE5CF4F52A692F84A3B44D7347420A3E90C9B26B779590EE60BECCD1718CBE6C8D936A66E7473011AF02734FBA43E2B32092BE1ABC06756FA22E5A0C1536F1FE5D9D9DEF68FCE8F039A6F3F852AA11C269C0A037E385766DCB6F940719043C35BD89D2F92B5ED6EBF11E6EFC1674526615D443A5799E30F8FBDD17114EA8564E534E148A3CEC930E0845FE5BEC12DFCFCB61DEB2694C8242275851F45FCF7B78EF43C12752355254D79B15AE1A8EFF38D8BE779FCEE7B18F1B2DDBE64D742C9D8BCFEE451E01F76557895E2DBA74FF0F197BEBFEE222D24548AD934E1DD30E0532FBFC4B74F9F58496AFD3334474D74D6F8526A5D67163F083CDFC5F37E11F89E38D1B5485FEB26D9500E1AFCDEEBAFAC7995AE93C8B070AEC5A18CC7BFBCE37DDD46294587593E894CFDC538F0643722BD3679894FFEE4871B5624B87ED2D2E1BACFA75E7E89D7262F75F3721ACDAE82719149588CEFD2C564BDAFBD7D94DF7AEBC886BFB81B15E6DF7AEB085F7BFB68B7398557452661B184C3BE6E447AF2D2854D71814B4DA77DF2D2057EFBA72F12A71D4FBA1D68B7492132F5071FE934E110A729BFFDD31797146961E1315B9DAA1B99C3759F7FFDB31F7723D42FB4DA9A92801028B5BE61DB16E9BFBC71986FDD205B676A1A795D67D03019B36CD2D658EF204D8994623A8E984E1242A536E4CD3894F178E2DE0F61EA1DE95FA7B9A6C4927542E1E6AFDEB5259202EA51C4D36FBF7943915C4DE37637C33DC501F6E40A0C3A0E19D3224A13E65A23BE2FF8358E54CABC59F72927C9DAAC66D26184FACA1B87F9FCDDF774F2B40CCD693A8F884CFDC978BBD5BB5429E682806F9E3ECE3333538B1EE3693A1FCAE7F9E8E8760E0C0C92B36C745D434343D334529512A72907C39083D5410E94A6F949B9C489A041638345A9676767D8FAF6517EE3E0ED9D3CEDD75BF7F474BFCAA4C4A9E5459A69D4796B669A937E8DBCAE5359A45D718BE3F0D0D80E6E1D1C5E74C88EA1E918868E9331197433ECCCE7D936E9F19DCB13BC56F78957209479CDC87093F7269FCD17E28593D1DA79AF272F5DE0BE9151F60F0EB57B1A1ACD8CE87E894CC20D23D2BBB3333C7BF13C876F50E875E0AE5C817DC5413CCB5AB6A34AD7348A8ECB3D23A32814FEC479DE0A1A1DCB63028EA69337742C4DC340C3D5750C4D23699DA7A3EBE868F86942A4147E9A50495202952E1B11FFF19157F8C6CF3D806759ED9EDABE5642E7059149B88A304938579DE3F9CB176F28124056D73958289277ECB6E70FE99A46C171B863680BC7AB15CE4521D5653269A6A6E1B6121C59DD206B180C59169E6EE099268396CDEE5C9E8C61D2486282A43923375629F538A696C494C2904A1C732168301D47949284788968F53B877FCA7FFA60270B58F1D462D14964EA63923465AAEEF3EAF414876BD525AB463B2C9B1DB91C86D659025CD734061C973B0A03FCB83C4B350D979468C83019B56C862D8BAD8E4BD1B619B21D1CD364D8751974330C38EF4D04564A91B61E719A9228C55C18500903CED7AA9CA9D5385BF799080326E3989A4AAFBBCEC3759F1F5D38C7CF6FDFB9A2E82432F5290A682431E7AA73BC3C37CB6C922C5D7A321E436E772B1DDB8641C17618324DCE4521E9826A9CAB69D89A46D13018304CB63B2E3B3D8F6D992CDBB2593CD3C2B32C5CC3C4D475B46BA2A2A669189A860158860140CEB6813CE385016E6FD4395D2973B43CCB71BFC6D9A0C164925C27D463C78FF1E7A3633846DB4AFC1ECDAE1D91A9EF65528A7210F07AA9C4F1A0B164FADAD634F6E7F27896DD5D04548A44A5D8BA8EAE69782D813C5D67D8B4C81906C396CD16C7655B26C38E6C9E11CF236BD918BADEF5F45FD734D996CBB3359B6577BEC86BD3931C9E2DF14EDDE7721C5DD79E7AFEDC19FEC6F82DEDBEFC0352CD13AEB495266A55DEF1ABCB36D2B71826E3F942A79D9C5708E29899A041298E28E83A45C360D0B418304DB6D80E79D362C871D8E26618F5B20CB9195CB37745D3D074B6E7F278A645D634C9946678A356E16C145D15A1BE74E624F78F6DA7E8B4B59E8C46B30FEFB322539F57F1FC38E244658E9341B0ECF17B1C97AD5EB6EB08E14711938D064AC16EDB61D0B2D86A3B6C7533146D9B9C6931E46628D80E79DBBE525DEB3503AECB5DC32384694A98A644AACAC538BE4AA8E74E9FECA4EFE961894C52C563B6D1E078AD424D2D9D5DD381FDAD9580BAABE2A5CC85017351C48865B3CD7519B26DB667B20C380E45DB21D35ADACB368D8E131C9D32E86678DFF00849AA88D294D0AF713979AF87EAC94B17F8C4BE03EDB69DC658D0892B32F5217E1471AE5AE14CA3B16CE7665E37B8255FC0EE325A44494A250A710C9DDB7279B6BA19061D9751CF2367DBE46C1B0DAD17EBE0B5CD968CC781E200D538A291A6F8F5DA5529FB972F5DEC24B3F7EFE6AB7A22531F56F1EA71C485BACFA5385AF6F81DB6CD8E6CAEEBC21E26094A297679390AB6CD90EB52B01D0AB6B36AD5B9651B3B9AC6787100A3D5069C8D23DE09832B5F2C8F1D3FC6FF6B5FA607A59AD7A74449C264DDE744AD4AD0C6909B7D198FA14C772971D5CAE2652D9BA2E390B71C3CCB22639A570AF27AA16B1A3BF305C224613A0CA8944B9C8BDEFB7229078D761311B72CAC120B7D1495C224613608B81006CB4E91705B29F18C6975FD7E1A1A436E3381319871C95AD6BA8BB450A8DD852207F305B6590EEE82E8FBC6F454DB818ED65C2791A98F48D3946A1432E1D7986CA38AB7C534D99D2B745DF853A5704C83A2E392B56C2CDDB8AED375BDB1749DBD8501F667B30C1AC695CEE4C78E1FEBE4657E59AA797D1899A224A11C45D4DA986DDA4C897B5DA7C4350D1CC3EC597221550A9422D534944A516A3EFA35A34C37FD609AA631E46618715CC62C9B5252BF32FA3C48E276B37A1F1099FA8C384DF1E398B9385A76C29E0E1CC8E6C97799126F56A3747AA151D23AEF5A14122609619290A894245528142990B36C065D97BCED607428AF6B1AEC2F0E70AEEE733E0C69B452E593BECFCE7CA19D97D82332F5199A06BAD61C3DBD5C4ABC6818EC5D414A7CBE31B152FC28A2D4A833DDF0996904CC4521E528225409F538214611A78AAD8EC3BE7C91BD85225B325E47E76DEA06635E8E5D198F915A9599B43976EFC8CC54BB321545A63E244C5222955EB760E3B5ECB06CB6AF2025BEA248A4148D38662E68500A0226EB3E971A754A61C06418301345D495A29626D4D3940418A91B5C6C04CC0475C6730546BD2C85D668F376AE2167DBECCE15D85E29733A0CA82AC577272FB53B564F1399FA2D32A1018AB08DF6D2FED618B9356DD329452389990D02E68206B341C054A3C144C3673A08B81C454CC511A5F4BD51DFF33F1B694A35AD301136D85BABB2C7CBB2B730C08E6C9EA2E32C9B4431759D01C761C8B2C9EB3AD534ED74C1CD4745A63E2249536A714C6D99E916AEA6B12F97EFE960D376DA73B528A4D4683059F729050D2683809930603A0A998A2266E3F84A15ECBAE72B452949A8240997E38877EB3EFB6B3EF70E0D71606088E18CB76C8262B1EBED2009B14D64EA23E6B3797E9A2E59C5DB6A5A2B4A89772352350A99F27D26EA352ED46A4C060D26C390CB71889F2454D2E614F4A5DA7AB152C440238E292509D349C25C12311745DC39B885D16C16C7346FD8960BE2986A1C9374B95485C8D447C4ADFD63974B3EEC75579612EF84B415912ED76A9CABD53853AB72AEE1733108984A22FC5435930C1D2EC6122BC5641491A629F534A116C51C2816192F16C95BCEA2512AEF38CCC5317369D2CDA5DC2532F5117A6B56EA5205D3D434F667F3ADD9AAAB5FEDACB422D205BFCAA96A85E37E8DD341E386D5B94E994E12827A9D52143311D439E0D7B87B78841DF9C2755F160A18BC6661950ED2E3FB45A67E6A33A99444A5D72D9BB59082AEB3375FC0D25777106AAA54737521352F96A296C49493986A9AF644A479AA69CAA92864B23CCBA9BA8FAE696C5B643D8B01C7653C9B832EF79D1299FA0843D3B17563C93164BB6C674D52E2F32316B2B68D65E8149CE6FBDE5DAF71B656E358ADC2BB8D3AB33D5A1136568AB24AA8050D924B1354A3880F6FDBC158367795E0171BF5ABD6DF1399841B0BA56B384B2416F679D9AB56FF596DA19A52D9644C8B41C76557BEC09D71C45DD50A2F4F4FF283D91926E2B867EF192BC5D1A0C1A5CB1357766A5FD8A63435EDAA052E3BE81E28894C7D84A9EB388679C36A9EAB698CB9190C7D6D3B6A359A63E474C3C0320C3CCB226F3B0C3A2E86A6F1DCF414E5EE920237642649F8CEC479061C97DD8522A6AE631B06C3D70C9FEAE05EFCA5C8D46732654D93BC612C3A02C2D234A234258893AEA75DF42A62B9A6C9F65C9E0F0C8FF04EADCACFFC5ACF3700F841758EF36FBFC9A17C8183F902619AF2FDE9C9AED7451799FA085DD3700C135BD73135EDBAF94C89820B759F5A1452749C759F2E6119063BF305EECC1778AB515F7635D86EAA7C6F070D4E8401E6F424C0752275B08E9ECC67EA27344DC3B32C862D67D10FDE5729EFD47DDE2DCFD2E8613B6525D53FCFB41871320CAEE214F758291AADC7420E65BC4E5EE6CB22539F611B0605CBC2B9C12A4067C2801F4C5DE2DDD91241B2FE42E99AC690E32C99CE5F2D3E3A322AD53CE1C6DFF4AE6132E2BA78BA4679915A5343290ED76AE42F9E275129FB0786F02C6B5D468FCFB7F3344DC34FD77ECBB4FD85B6375B9C1599FA10CBD029D80E39C3408FE3451BF5E534E1F9F22C7E92F0D134656FA148CEB631750343D3AE64DFD6824429AA5144465BFB4AD4F65CBEDD43A745A63EC4D40DB266B39AB7D477BDAF525EACCE317126E08097655F2ECF8E6C8E6137836759D8BA8165E898BADEB319B58BD188232E37EA046AED2353077B36BD2E32F569552F6B35D7F95EB6202BC55B4183B78206DE6C892DA6C9B8E3B22BE3B13DE331E6790C3A2E39DBC6354C2CC3B8D211DB2BCA41C085BABFE84E86ABC9A747B77772F89F884C7D4AC634D995F1706BD5B6FB547C9572260A39138598B50A795D67CCB41877338C7B59B67B5946321E05C7C1332D6CC3B8D2DEE956AD44A55CF26B4C84C19AEF89FB4B3B77B77BA802BEDE2F323D7E93079AF90FF463C07DED3C296BD984694A4137AE2C1ED209F313F14A49C2D1A081375766D834D869BBECF13C767959463359065D979C65E3980696DE59D44A95A212841C29CD703268F474E06B3B0CB79F16BF74A50ADD07323D76135F5B01C800659A8BC7DFD5FA7DE9C86459ECF2B25C6E7554AE145FA5F851CAD928E2AFFC2A055D679B655F15B5B6649ABB5C64DA885A0AA886214767A6F8D9DC2CE52459D39BFAC5DD7B3BA9AABED44F32DDCCCCB51E004F0277005F6499CE780D7870C76EBE7CF654CF4F28568A99246126A973B451C72DCFB2C534D9E538ECC964D999CD329A69B6B5B2968D6B36770434340D348D344DA9B444FAEEE5094E86016B9D7AB87FACA3F6D2EF8B4C37070B87D8E9C07FA5B923C3B21D249E65F1B181219EEB72EE4E5B55B56BDA5A3FAE5519983118B32CF6643CC6BD2CDBBC2C5BDC0C59CB22558A6A14F2666986974AD3BC5EF7975DC2B9D73C3C30D4EE1AE3007516EC6B2B32DD1C32E9AD2A5F03B8D88E4C009F3E783BCFFDE4876B76B2B1524C25315349CC9B8D3A5EB9C416C364B7EB32E6B84469CA99469D7361C07492AC793B09E0EFED3BD8C9E17FBCF017916973F307C0BF00429ABDF0B3C0BF079E0696ED24293A2E0F0F0CF1EC2A46A7A5A256354DA9A621A7A210B35AC10442A548D7E9663E3C30C48897EDE429BF7BED379BB079F90F8BFCEDCF80F3EDBEC0E7EEB87B435CC8FC60D3741DCFE137DBDF7E13E0782BE92332DD249C6F45A5796CC0078EB4FB028E61F2C5DD7BFBFE467E71F7DE4EDA4A00FF66B13AB7B0B9D901CC97821C700FF02C506DF7051EDABD97DBD768AAFA46E59776EDE9E4F0595A1DB522D3CD179D1AAD7FCF00AF00FF0DF847405B1D34BAA6F1CF6FBDB36F6FE0FF78FF7D9D6E47B3E840004DAD43C664010F02CF77F1BCC3AD6F0761697E0E686B4F98284D385799E38F4FBECB0F2A73EBDA7659EBEA5D9B8BF32F8C4A838BFDC766CDE61D124F7A8BA51B8C7A391EDC3AC6F920E0C43A7496AE7921CA789D8A04F06B378CF0528C84793CCBE2CEA1111E1EDDC6B86DDFD485E350C6E3897B3FD4E9D35E654127EDCD1299845562C0757960FB4E2C4DE747D393FCCCAFAEF988EDB5E0F1431FECB49DA4808F2F75C07ACB24ED9E0D48DE76F8C8F69D6CF3B27817CEF2A3CA1CBEBA792A7DFFE7AF7DB893897FF3FC47AEE957DA68098879E3850D8602FC28E4D8CC0C7F71E10C3FA955D77C9CDC6A8954ECBC1BE038B07FB9833642B5F8CFA4E86E3C3420635ADC521CE0C1AD63DCEE66D66585A05EB6919EFBF02F7623521DF8683B076E8436D337805F97E2BBF1D0358DBC6D73FBE030A95278972FF166DDA792269B2AD3F7E9D1ED7C72FFAD9DB691E603F4A797ABDE6DA46A1EC029605C8AEFC6244953CA61C099B932AF95A679A332C72B9DEDF7BA6EFCE7DBEEE27D1DAE7FB7803FA239A585CD24D38374D7792BAC11A95204714C296870A156E5F5D2342F954B9C8DA275992AD14EB5EEF1431FEC26D1B0B0C6F448475563B5716EC49781CF4BB1DDD84909A5146192500E1A1C2BCDF0C2D4655EAE55A82DB34FEE268A466D271C36B24C004F01FF408AEDE68954176A150E4F4FF152699A778346CF17D75FB2C17FCD96A29FDFB5875FD9BDB79BB6D18A45DA8832017C81E6A4376193485509034E946739562EF1727996CB51C8649290AED2FC241DF074FD8AB8FF76EF01EEDD3A46D6B657BA1866D7226D549900F6D05C5548A2D42661BEEA3751AB72B232C769BFC689BACF5414E1ABE61EB5714BBEB44B81F2BAC1A061504E137659369FD8B19BBB8647F02C0B43D7D755A48D2CD342A93EDE4A500C48915D556E05C6561AA5E234A5168554C2900BB52A137E8D337E8D583537802EC53173AD4DA0D356D1B35AFD57290A05A4AAF93757D7F074034FD751C0886573EFE010B70D0E33E8BA587A73A7C11EF47E7594B5DBAC32096BCBA3C0D76065E57361A2224E53EA71442389290701B341C0EBB33354E29837FCEA75FBD56E354CEEF0B2989AC6ADF90245DB6634E3E1991605A7B9EE9EA5EBE87A4FD63757349746FB722F6E9EC8245CCB38CDD1D13DAB09A4D7ED509892B4C252A2520C4D47A966540A5B0B4E6ADA7BBBF6CD2F08B9D2E596AFA10E3CC412A3C04526A1573C437364CA9A8E219A8F6AF3122D2C9D3D3C91BF6C351D7A9E181184C578047880351ED9AFB5249A8F46DA82478FA2D1DF5D0D91442661395EA03945FB8F8078135F876A5D83C7220BA148354F588FB6D4D3AD68A56D2289BE4FB38BE5F46ABF99C824742BD587D9B833B5D754229149E8055F05FE161BA70FB04E73FDEFCFAEC79B8B4C422FF808CD35CF7F8536F6875A0581BE43736B9717D6F326884CC26A88F59B343366E3AB50158C5B55B7EFD11C18FDC246B9709149588B36D623C02FD0CC0CCEAF79E82C11C562DE5BDEF93050A2D937F4CC5AB6813AE5FF030CC43CB244AAFF8E0000000049454E44AE426082,20,20),(9,'Demande de compléments','image/png',0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E987969700001B9F7A5458745261772070726F66696C6520747970652065786966000078DAAD9C6976DC389084FFE314730462078E83F5BDB9C11C7FBE004BB255D66AB7D596CA251608E412199100DBACFFFBDF6DFE873FA5BA6042CC25D5942EFE841AAA6BBC28D7FDE7FE69AF70BE9F3FD33F7E67DFBE6FC678FCC2F1962E7A5C98D6E3FAC6FBF1D7077278BCDFDFBE6FF26320571E033D7EF132A0D79D1D2F1ED795C740DEDDEFDBC7BF4D7D7CAE85DF96F3F85BEAB9A73E74FFEAE9DF21638C1919CF3BE396B7FEE27BD1055E7F836FFC4CE77BE622EB23AF033F9B5EBF6F3BF3FAF2C9783BBF6FBBAB3DAEF06F4D61AEF4B8203DD9E8F1BE8DEFDBEE58E8F719D99797EEED2F46742F1FFDC3767BCFB2F7BA57D742C252C93C16753D8638AFB8B0634A7F3E96F8CAFC8DBCCEE7ABF25558E2C063136F76BE86B1D53AACBD6DB0D336BBED3A3F871D4C31B8E530B7736E387FDE2B98BFBAE1E582A02FBB5DF6D54FE30B7E1A78CDF3B67B9D8B3DF7ADE77EC316EE3C2D573ACB60964FFCF165DE7BF36FBE5E07DA5BA16BED31663EB6625E4EA1C734E4397DE72A1C62F7C3A6F1D8F77C99EBAD6F5E1CEBF1603C662E2CB05DFD1EA247FB2BB6FCF1B3E7BA780573DDA961F37C0C8089B8776432D6E3812B11CC36D92B3B97ADC58E05FF34664E0AB88E076C8C6E5AB3F18DF709E714A77BF3996CCFB52EBAFB6DA00547449226E39AEA1BCE0A21123F391462A8451F838931A698638935B6E4534831A5949330AA659F438E39E59C4BAEB9155F428925955C4AA9A555573D10166BAAD9D4526B6D8D9B36866E7CBA71456BDD75DF438F3DF5DC4BAFBD0DC2678411471A799451479B6EFA49FACF34B39965D6D9965D84D20A2BAEB4F22AABAEB689B5ED77D871A79D77D975B757AF3DBCFAD66BF6C9739F7BCD3EBC268F85735DFEE535DECEF965082B3889F2191E73C1E2F12C0F10D04E3EBB8A0DC1C973F2D9551D49111D5EB351CE99561EC383615917B77DF5DD2FCF7DEA3713C38FFCE63EF29C91EBFE0BCF19B9EEE1B93FFDF68ED7663B15C51F07290B65D3CB6F808D0B5669AE34D5A45F3FFBB47ED9B1878B337426505927C930466D71D54DC1F336F2AFD4067330B6746B0B131108B18A6CAF09825D237BE020D7396D6456E4FB1EDE975DBC5EAFE2625B79CFBD4BE62F4B0319AEC19AC0D7AD125153AF7A95F7B2E723E41111488E7F3EA07919F15F0734CF53FCDB01CD476BFEE980E62B237E7740F39511BF3BA0F9AE57BE1AD0FCD4CD1F0D68FE366E9E0734FF1A887F15D9AB57AEDCE054AB50D83497EF735E29F53E4DD267976D7E771F622A63C2045AB0FC5D639444DD0F360D70A02CCF38A32C6A713BE9FDFB4FF3E60DF08849A472F5E50AC42495D9FC68DDF660FD1C57AAD3CE5A0398C43503888A4BF76CE33209BA522DF7E9C04E0783834F3D6D1BFBEC235A084C08C53ACD275E0DC0BBA9DC41F8915C1F970C9092897B838E5864CE63C6D4A3AA372521DA10BFFFD37CE34240150256FBF036E102C0B2F41CAF5961064CBCCC15423539A7CD72EA08C976D7584A5E6B0FB01667016D81B5CF2BCF0CE2EA7718696F17AF4748F42B867C22BBF9140157CAEA9F9E78EB88B96F6BBC6F0C43B8DD213646D74F18A0F8DFB930B5DDAE4FC6FEFDA769DFBCF0FEB92B919DCAD22DAB2BB99D65CDE29A613A13E35093FC1756F8DC08E6FB56F8DC08E6C50A9B4216FB49A598439A296D8A6C2F9A28D5780D0A68E81936E04B72AEC56A55AF3D4AC9970166C33656ABB0862B6BE92B40DA4BE52EC3112CF79262BBA7CBBA9495C4FF790DEF9FD96F82255069F7802F0004B2E0759B0E7115875E75863F1FB153663E4578CBBEEF0C67EEF1FE7D38F3FBF4FE6538F3E76AFF6E38F391F17E3A9CF9C8783F1DCE7CEE8BEF0F67BEE3DAEF0C67DE315EF7482EEE6477108859981FF1596192ABE435FC8A6410B80CAF1D6BCF59068960C03C687F2F0B2540728C3B51A5DFA08AE3916B30BDDD6363A04BC4B0AF7441267D3F89B0EE92BDD3D5CA49D69046572D9C79B0B21E72DE8382A1B1D6B0F1AE72D0568A8C1FF999761AF7F4C6BE575F956E296926F9C0C96C93BB5C1FCED93C4FDAC95EFBCC655B77C3564CABDF73169EF4FD5E8A9BE71CE7D7204871A0CFE55643A2741B901119565E2D15A121232812D156A4CC8EE89B94DC954D9A23CFD467A5D6B1AA94ED0DA3B936E8816623F8C2443177F56A4E8D7AE7A7F9E817F675FE98F819A434FDBE264AA0140CCF049C019B4738164894696904DB2625EDB6CAB1E96DD174BBF9C5A0FBFC6B1F5C6605D5BC42F36FB5FA4FFF0BA94F041CFFF72559F25A504E3981FA6D559373F129271084C2B43E2DE376EDE7F99ACF27FCFE7C838561DD3359EE5CD929D9A4A5264C55ED797D1D478C54F635316C80FBE482865C6ADF186C10C94416EE42433A0682764497E2A048D5D15BF5AC33AF18FB098CAB733FC7CB790DAF59C57496690677D37A462E8E49C7E5B173CCA4603ACB4C6377B7C6662D79DA913BF405023377B275501911883542572847085FC201A30747A2A12149020D614793348410A51B8F9AD5554CFCAEC80529F76B8EE6CF4932C7722E8C52DB975C1E97AC367BBE796E05A77EDD1FDB3103F3320581DBF314C8407B5F7A4F836B1ED378319450729C2BCD3D11D1F13391D769087BE24990C7549E27F26408F3334B7C6C08F3334B7C6C08F3334B7C6C08F3334B7C6C08F3334B7C6C08F3334B7C6C08F3334B7C6C08F397C99155B7D003B6D5A572406467017DCD3147E07F7ABF54D17DB72E968508F22E9CB41C9FBB007EB480F4B47C1833A42585E7FC766BB599B4D19102326D4DEE12FC8518BBD655FC3C5C7AEEDF01D0BC45C043A56F227D6834767B56134F58FD02D5E615AB9FA83F5EB9C9FF01D243FE3FA5FEE659007D86D89FCDD7BC4CF8A5D2DD3339A5EE51E834633188249EF2C0FD5BD21CE4EFD7817D7370FF2621B30EF9A2AE4461D530F54455506350656DF1CFEECB1D471EE7F8537A9D8A47436523267F24B55E25D76BB9D612CC1FE5FAED1ADED4AE5FA58B25C4B73CCA7C97487D45FED488FA4FC89F79DB7CFC7BF267FE9CF4DF913FF32CF01C29CA6071E6CEA732FF4DB7639FA10D8A6F768A7B8CEE4768B163BC00C8F0BEB6C58662EA94ED3A77019156810AE633E12B79CF4A6D8C5519426EB54CFE436DFA35B511943BC19D869DA65E4D3D67875A182337D75628A3DB71D9BAC2CC49166EA1BF425F3F69547D7F405F566A3DBC560262E37CE20A3EDE9C02B0B015B394D68470F859D836AF99D5C85A80F81968B986755B5ED6C0722EB589CA88C9B6B20A46493B470FC9B1C5DA76897AF4020DB6B65EDEBAEC429E73ACECBC9D0140BCDB87AFF3BE677DCF596E7D99B366F732E597093FA6CB6F5E276CDE9931F3EDEDFA210F307F80FE3A9AED7DA3700B5595F76C6A7E197515CD32D4FC5ABFF299BECBE951BF56FCD887E6AD13FFDE87E6E1C463949FB2B4DF2BB279310BDF3F8B96F295F7CC93696EC3DC66D105B759AEAF83C47C2F4ABE0E12F373B6F87E9098A77B700555A4B75E6A5A0E38A92ED51533953C547242BB4A4A121106B182ECE35CBAABF98C19AD1F1003F32733F8BB2E9B798F1D3CB706DF7406D563B5F96C2B9542286B2FAE8D697A281D1849E0DDD4E9839A98BBDD298432570A23A35DAC03F23290BE3C589B9992EAC8CAE1AB86E6DF9009F3CC7EFE964C98FD548901FD59BB0FB32447A6AFEE5B735D8E9E230A3FE5A344800B3BA3F305A8F48EEC276C866FCC210DCC3DFDBA2CE2D863219CD3A35AD011FD8E0D3155EC85FF585FDDAED8599AB5AA458484335432C224615359544D6C02E3519A640995A67B8782D2F4E835695F020381F2DDF65C3DF97819964791AFBD1516DE5327C881FA3DA80319CD6BA7AFDE5226E222E0716DA7F00D66642F0A28953853BC86F5CDB85450B0174C0AEA5C8AB3A4C69C8EB258ED7490AC3035CF98A2EFDAEACCBE8ECB1108A8F2F2ADDEC86B8F847B9027139652B45B8C5A1F9DFAA52CE47ED6D7CC2D9B09D98FDDBA475C23A8ED8811F0B030FAB96A4ED559963883830B653B636C315E79BB315D0D154A38BB6A775FC344B82E86D9A57756317B88A73780777B26C5B8F3D4210F3B611BC289E4182B16CC998AAF115C242F6C18A610EE2B45040ED801A1BB32B1DABAB5CC2E4340E417827A71D7BEE14810ACC8425D0B034070075F9838328B99C75ACBEE09C2E33AC97ABC16EDB2765AC6F24D9B1F783A453B06ECC78DE8B13362E5220F3585E51D29029CE1324B75D7400B631678F105F8740089786EDE82738772B1E61A06B80DCFAAA975872313B99EBD492013E8EC88C895EDCE417D9F2B7FE0C3BB647E82477D1DC2FE4A1B21C3228E2FB4F1F74ED907CD7CF3B655F651CE2B27D4B26BB6E1AD080D44769E9A97026A0E05785A1A7EA825137B1F9D80AA43144E692D564E8D92A0D0E26F5A18C30B2D8CF3D0427FEE62B80D094E19B8EABA93B2D9E8EF9EF0B0984CA72AE6D7439933E3FF6028F358FC3F0F657CF86F8632F70A9327CA166F45BC57DB3AE7AEAC1A6B834248F2E0E84184236094092A85B00D609B182D1B153F8CCD2AE14432A533028E2176C6F779B421F55E032A1FE085768C112E9D761A30F1A84C2186B96817E2F8DA0680859C37EF47BCFAA86E8121A55A8FE3DB746945DEE9A2CBC5968084592185440C49697AEDB526ED12BBACCD4CA2B0725DA56A77BE61AAEC5366219E6C8562754A7C591D08776DCF30A14005C44E6103BC14BD54BBBB4C64D6433D48DFAA7A865C0FCBF055946332B7B25820052A874582C0D36B8BD08D36CA2C3380F3999C4772192470CA208076F906792EBC8957005453438A64A65FE2F0B993E99E7A95814E7224CE326C0BDA584641211E4C2A35160896D80E2C06C87B39CFE7676B35C5B000A819216F0950D93587C2A7135411BCA0AAE924CF69B2A8ED6AF74CB541C1C045789207A2B35AAC3B60E5CD2A106F9132B0B51C0B3E66EDCED7EB2C0A302B35E07E7C4842FBCB01D530257D1805D3D6F6C34FCA4E8F1DD0D1111CA0B30AE2EBEE98A2ECD4163C3F8D35D7328BFA31478030A21D9BA5C84144A90458004507D26CB42AE507F949486F426ED5859E8C215B5B14FC14BB31AD215A938F4E118FEBC013A61524A8B2836155B85C82E9ADA8834318A712344463D0867CB3354E62156BD86574B00DADC63C72091811FB74341C684FEC52BD73F65DFC6351D33BA1936D5CB530BC5C3BC043664549B2A65B7F51C8746FF42B78C6E4FD0A42D3B8015C1104B545A218C94E755ED4D81060F4390C6C31BCA7D6518E3224BD970BE7E8D810EB525F3B416CF6A32C4DA527DEA4B8605C5C8109293F8EB0C4F5B17A15A048D2CEEE2872D7D26185FB20E285952065117313FD5E4275683239AB651536D4585489A8800BC5D0A1DFD11972F0DEFA0D82A460C37AA731F1717D515BE2EC47988F36507E6F4A485C3CDA122F4D893F5A12E6830D9D5F5BE4DA4C7ADA4A52897A6C26651D671D4B5BD02E6C4F2D13291D674ECDF1A516CE9FFD973F7EF6222AB4BA2AADD70A09178C3E04214513EBA42208613B6151745405DE30E4815314E3A80BDF47121A1C5732EC6A6A723AFFEA177FA8868421BC1E7E904297168272800B3BA291CE993460762D248BA7C0F24FE87B03346B0B463C38C0EE411EEC526C84D7149D3484024D5BC0C90503C9224BC55F441B819C763E5E231E2DD3C63615CC6E5491D24A1FF741E1441DEF04B52F19C0D61CC86EB8989D8814C83ECEF3189C24003841E40DE822B4BCB9CFF4108C159395E1802A4F1E245891FCAC333E6E53A632C5AC343EA8E33BA5C2D8A785CC411DB27A40D154B84423D283CB0D1C6835E02F714F1485B21F32BA12A1920060D1C31AF917C08E92D5C1A4205E4514749306534708412E45CD591546A8715D8E50038D189248455DC5968B1C0FA373E2592C75F548B96C6B94EE0C299BC93684670F944012CC2EC4333408D20881ABD4711D3624E81C1A18C793827BC64E324DD829DF30DDCAC62E1D99AC6BD55B8541A01B900C6213FEE5EEEAF793A77EDD2D0F028C9B732D95044DB09B1AE7CB6CD53E800BC24C51A2E85E59DD258B104F54C6DA817C428EB403F988B79843CF365F81BA73A549014A31D971190F7407778911340415958F78DA65FEB43B69BEDB52FDAA3B693EDA9B7EF7F8C927FBCAE6050BC49E97BF374E6E3838FD6201C2B7E0C0DC2F5A561B907521D53B80E96C03F9EB5890900A8B4367754D9DBC44FC92967B21DD8AA263A156564B864AA84A592F0A6C227201E893E6C48E4ED13217AA39A4DBAF0624C2B42984C48A0B0CD6AEB5C254351BD534684D4ED79C053D80365E24208A0B511A25320BF7980002CC4026A350E78660264643F28B5C8173514966D0B1216A78F53AB2AFDAE8BA031B42BB46D3C95747E25089350C2AED1A4449814E4E47F82056878F481BC08F5CC3A049D04098AD024289FEA18AB899EBF8B9E95C1FCC2DA32F83EF013CD2390D88F0602D919B50C858BE817AFA36211ADC6658A2D2511F116B354ABCE68064BE00556E45890D75D48996240C9C5E93E64736918214C891BBB2C02D124DB0015EE746F06FE538E9B84448003C54A6F7E8C30DDB517E6122343F65AC879A265E43C8764064639E03FA12352A996D1002560D2F6B5D177F9948DF135F040A29A73649494C2B42784DDD145D9060CC0A9054D0E7D1B4E9C9851F545BF3D971859F545BF3C9F1896F575B8A24338A7EE1281DAB712C6B22FE00428F9FBACE53F35964A1283862380CB821A207375AEA5B43CC92848F43832532B96B9F2D033D335129C3777736AB7353E4DCBB3D3EDC5260D7BB1DAC7E6EA851674D482C9D1A3B3B967E3C6D9C0A08CA94E26EE7D8E979FFDE4195237FDB3FD5B2475AE66C9FBE9994CC7AA6F53429B5AB5F27156E55F73229756B7A7BD948D5B45E37526F6CFA6D52125454A0873DA3B61B6A3A3587DAD03BD9BF74E2DF65A25AE72F20AC600E66BE16F0BD3D9CDC15C2204227418612B405D90457A8C132C487BDB33A7E069FEE73C72269061CE860AA444F4D032052F100DA6A6875EA54FD2204D4CE6C884432003E816AA2D6B66920A68FBC134F80476EAA3C9426204E203A17A0D4D4AA9F9DE0CF974EE7B4A0E3A7113644EA06B22A5A9B0CA5A8230775A4647526AC7E0121EBEA50773486D2610370D5B401CC4DE5A6C28F06611137460AA4CC3AB881014F4E139DFA5ED46BA714BABBBA62174C4C10A06AF883AE9B50306997D11A797AA1892894A06B6606863C67DAE42D70A2D3B0C0D5A0B293C9654624235C64D901C401274858F87A841F90CABB568A43F47A14A2E764726A91A21BD4D88999B2D02D353B33101F095670090A850600672FFA277407FA320BF2641524514F276C9D3D96828565241DB70E39676464CF58BA2943AB9A519048F81AFE80FBCEC63D00DBB4C0B10D034DC8CF618D60538D199D8703814E5FCBEAAC1CE432B8A646EA65A196D49AA15E2BD809B6C0B14A710447D4F3186A7B995E518DD5F6F3C84825228374D590BE85A6E8430B0F5A9C0BD611C7C9336766E4EF66761BE1EE7699CFDA5DAFDDAE023E36F5FF29A5285464AD360D86B593859013EA436E1DD8BEFC501B72C44E89432D5EF8A2887A053F4F5BCC218011A137D74092599D50CF80544313F33A47722D42E9091BB820820DED4D96B47CF1612F7B91645147992E8B16FBE26CCDE75B3E3A517D1A7E3AA5FDF1C6A6796C8A7DB1BFC7B4F67BD3FAB59B627E6DA77CBD4DF734B9375B53E6796FEA8B5DB6D7A92D6686489070283D139013010DC6A8B16F158FD341BBAB1318C45EE1C2DA30223963514FA8EC8ADD188622322B790F2AC20A722D462D1F6002926D2F84738B314BC2C0A04932B0DE8A74A09FB4D3E2DDE3743CB4CBB31E7032CDAA932B3918492F8AFEC1D6087B80305482AD473D8795A2D3F392161AD0D15C442850E0E06EBCB948673D8B749155EB6246600268037E66C1D1A0BC4FE2F8F2FDAA732010617C570175960404E9D8A9F1AA13D44BC2F1823E69C3AE19421E8389B758F147990CFD12A236EB2E0414306D41F82B03D27643D98886718B0910150C540F8BEA651A5A14A1D9908900F6A43E58B515116EBB1DC73AED932CEDAC42CC20B2702FE8263A860FA2FCE6747AC6611A80574F7196E86FCE530FFF801E826B0C843F1FA7474E237046877224A296FA5C7A3E42A749072CD5DC5C68C1D20346C7F9DA13230AAE10A85F11C64DE5927A29A773DF915D59FB2F24F67071693723960ED1C2D02D8A55218E7297E012B3EB333954ABE3FEC91F847305D10B52E53E25226BCB400A360ADA1AC3DE0618ED0C128FCF26CCC6A154E384BFE2599436DCBFE59AA5EFF43CC8BACFFB104003F6192BDA18A9D0B2332CA7C38626F52A833EC27A6083684C248E3A0B61AAAFA8BCC85B2D4AA9716D8BAAB95EEFDE7CF03A7DA887D330C718980458CB5C3CFD40A8C618AB5AA8385588E712866C202681AE862C0A2F3B08F0F3DE510250FD21AA928ACC4E1A8480D2D33AF96AD311818DDB51A7158B1110848E043798745CCD1B626302CD520288754A2904472CBAAA270AD59DC34182498AA536762DA76545965EFA7E89339C961D64D4E14F68C62ED702192B95ADEA61C8A90D2C70DC0AEB277412E6E47414C46B074E7597DC078EEFA3E188E372EFCFDE07CECFD6384AE9C64935D5DF1C38BFF7ADE171FE717AFD34E9E739B46E7468E7BF184AC7F3FF93A1CC394BFF1F0C65EE15FEFB50E6C558FF3A94F965F7EF0D85860C89B21CC4702700B821397045C8681A6131F854CF578F3A03D66ACDFB2B8D6B48FD6937CEAF74EA231F696E9422814B652FEAE0A0ED170109514298F83013241270EF7AAE0C8CF370980ED7040EEEDD6884509E70F38C0E45E610B6B07E24333840041B8807845243C3EAD4C223AD743F6DA14629298A199005DEFB48B9DF7CF3A28A75CD3998E20897CA0C52947A82525B538DF92B0E9859E487AF60B0057E2891EA85553DC30329EA0CA84E1AEA3A9F06513A02356C039106211952DD064CBB60FEAC2EB240302F91DF511B3350E3A907799B767FEEB2AE7F9C424FCAAFAD5D0887DA11FAE084AD0D0A325FFBBC33367929273D59572BA5C9894251A321CD14788FA2CA41FBFD038667E0AC5DBB3C5C043129303F907B5025201AB876E9F13AEDE0D65445663AD2080E928411B3A50A894646E2253D2ADC24BAF438B74E9B322B75B629C7DAA3021F29ECB6756A4902EB85B2979E5400FCE01BC868AAFB354229C64F6D40445F12C2A052A60660082CB108DF58752A1DA720626CA342E931BFA67D9C555CA5746B535A32385BA3A0C81704D5D973C805F86A4D8FDE6B2BEA003DC5A6C1DFD3092A2C4198537474A41D144ED542947771E6B22A1F11664DCE58FDFF2B9206D47914D834EB1A3125D6ED87CE21A0B6B7A3121414D57249E501B065C448F69F53334C28A857A7299C0DA9A187218157D4CCD0F67653374707D788043C42D0209436D192A6D87331EA56361DE1205F7381848715482B8CA447D10FC5231A3E3FA4701E5FFCEA82777E42B78A85F33195410C3431AF66608B418F9D277BB54426E9FF06A1DD286508E25EFFEB09151F2519451934B0790B4A9064F014759C2C85A43B8340045EEACA3A6A00ABADE5A2AE62AC88C4A8BB02498D51F4BC697DB46E747641DB935E32BAC90B38CFF82C1A83C2DDDC21BB35924E46A056D593BA9CB0413A3C3C1DE3F13A6C9976403E2F6D102D2A6D435549F593E5939408EA46EDA47678D38905000346362EC9F4AD10D0FF0D23B6780A6EF10CEB365800AB6542756D24A6DA35C1557913CA98848A5786484E88B9CE609CA98C70B30F4A3D710183754BEDB960969893254995452EC8AE6078F13AFD399BD7D604FA5907C0EC7ABB3A35B9288CFF0F3FEA4C72411F60EE00000006624B4744002F003B00C2E786AA47000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E806070D2910757DE28A000013B14944415478DAED9D797454D77DC73F6FF6196D2304125880404058CC6682134830265E83315E9ADA38766C27D8A7F169B338717B7A52A7A913D7C769CF496ABBB6DB24DEE849629BB6A178A997601B071CE300061B2376844032128B7669F699FE3103C61449F366D348F3FD9C33471AE9BEFBEE7B733FF3BBF7BEFBEE3362B1184288F4B1E81408219984904C42482621846412423209219984904C4208C924C4E0611B02657C1058084C055C19C8AF0C30B254D630D0AD6A95710E015B81FB81867C2DA491A7D3896A8055C0E22C567C31346906EE069E974CC945A2BF95446200B6031748A6BE7902B843F54424890F989E2F4DBF7C92492289546807CAF3A120F9329AB742228914F102EB15993EA11770AB5E8834B808D858E891E941892432C0338A4C701418ADBA2032C004067130221F225395EA80C810771572336F05BA9E2432C7C24296698C3E7F315CD044572124931092E94CB6EB23101964BD2293108A4C4208C92484641242320921998410924908C92484641242320921249310924908C92484904C424826212493109249089134B6215AEE55C49FD9238617FF209972CF33E4C9FAD24232A9992784641242320921998410924908C92484641242320921249310924988E183AD008E31A68F7950299827432A3209219984904C42482621846412423209219984904C4208C924846412423209211214C2DCBC1FEB6316922933DCA78F59A8992784641242320921249310924908C92484904C42482621249310924908219984C8215A8452641B2D422984904C42482621249310423209219984904C424826218464124232092199842834B408A510922969EED3C72CD4CC1342320921998410924908C92484641242482621249310924908C92484904C4248262132C26CC9943D6E045E005A8048E2E70B89BFF7474CAF945F83C9879229F3D880DF01CF03CB81CAC4B15726DE3F9FF8BF0D31D4B970B0EA75A1549E1780A503A4B93E91EE2AD5C7AC703750052C4CBC9F0AB832BC8F1260F319EF1D897D744AA6CCF0574988748AA589F48FA9EE678C5EC09DA37D75257E9E92D40F0413912AAA665EFADC92E5F4A27FDC39DCD798C4CF3F4F88E44944A7682E765E0891694E96D38BFCE136E08A4490781738004C02DA805645262192C7054C00C601AF029703DFCE85488512993E38A3D39B6C7A31B4311211E9A5C4FB23C0CF1499D2E737594E2FF2572847E2F5207083644A9FC78057924CFB0A1AC91B8ED881D5C036A05A32A5C735C09A01D2AC49A41383402C163BFDCA22738143C0772453EA84813F0356002F02C7880F971E4BBC5F91F87F58D53AF71245236142413F017F0F7E5F37C1808F7038442C9695116D1BF070224A6900220D56275E6629945561CB80BBC8FCCC0400229130E15080AE8E93F1518103DB88848384823DF4769FA46AEC2CFCBDEDB83C65385DC514978DC2E529C1667360B158B05A6D586D76AC363B168B351351AA97F850FA46C9943BEE2B80635C01FC3A937522140CD0D1D642E3C1ED6C5977ED80E98FEC994734D28E61D8B0DA47E12A9A88ABA81277512536BB0B87AB044FF108BC1563F18EACC653548ADDE14A472C37F007E0ABC4E767A637E291E536EA402C01DE4A61BB2F01EBE578C6B81BF839F111B0B4056A6AD8C996B71EA3BDE5A9B40B661825895FDC1838B0D82A717A6A18317A1E95D53319356632DE8AF370794AB05A6D1846CA87F02470A72293488727803BD2CDA4A7BB9D775E7D9CC3BBEECD709F2A31DD2ED6450C88061B0907DFA7B7631D470F4EA1D83B9BF36A17336ED27C468D9E80D35D9CAA50A7CEC19D92490C8A48275A0EB37EED8F331285CC4A160EBE4FC7F17D74B7BF4F6BF3971937E522A6CE5982D355342842A99927915222E0EFE1ED971ECE78244A158B652C76E744ECAE4A96DEF23865E595E9649752934F3215262B806753E923C562513ED8F45252030A83215434DA08C0FCCBD63267C1D51846CA577F7E0AFC403289AC88D4D3DDCE2BBFBD27A5269DCD318FAA9AE5948F9A44897734C5A523292AADC0E92AC266B363B33BB0DAEC18868568344234122114F411F0F7E2EBE9A0ABE3186D278ED07CE83D4E343DDAE760C5E93E16E0AD5AC9E5373C986A948A6172944F32151635C02E52B8C7E8D0BEF759F7DC67934E3F6ADC77A8AE5D44C5E85A468C1A47A977643A51E25304033E8E1EDE4DFD9E7738F0C1FDC4A2C7FA4D7FD94D5B9930655E2ABB0A03938106C924CE663FF1D9D4A6F8E3EF9FA66ED3CA7ED39454DC44CDB4659C377E1695D59370B98B737240BE9E4EF6EE789B6D6FFF9048A8FE5391E94C662C788A2F5CFE8D5476D10E944B2691F68043322201DCF2FD0EDC45A5837670BEDE2EDE7B7315FBB77DBBCF34DEAA955C7FC72FB05A4D0F62BF9DA8ABFDF7D954C70A8245C04A331B442261FEEB97772425523EE0F694B0E4EA6FB1E42BEF62B18C3D778869798A354F7E9348C4F414CC8B137D4DC92478D1CC8043241266DD7F3F98F36B479960F28C052CBD751D166B6DA6857A5A328927006F320963B118017F2FEB5F7888237B7E34640F78CCF8A95C72C37FF6DD096A798A37D6FCB3E9E0C700B7F148A6E14D4DB2CDBB6834426F773B7F7AEBD7D47FF43743FEC0274C99C7F90BFB0E268777DDCB1F7FFFB4D96CAF4D9CD38295A99097263E944CF32E1A8DD0DDD9CAE103DB693BB61B9B63F6B0F8E0E72DBA11A7FBA23EFF5FB76925470FEF3193A501BCA1C824FA68DA45F1F574D27C6437BBB6ACE678E36F08073F1C16C7E6747998BBB8FF490C2FAF9A46C0DF6326DB4989011DC9243E4D2818E064CB61F67DF80A6D2DBF1BF002E850A376FA82814767FEC3F45DECCF9CEB8F9A355EC04423613ADB8F7378FF664E7EFC564E44F2FB7A38D15C4F4BD31E5A5BF6D1766C27FE9E7A22A1E3B88AA6E3AD9CC3E8F1173071EA02BC15A3D3DE5F5149395535F7D0D2F0B37E0724F67C781B53675F6C363A6D944C82582C4630E8A7F55803470FFD81506067D6F6150E0568D8BF9D033BDFE0C8EE9FF6394BA1A7632F3D1D6B69DA075BDF88CF5AB8F0E29BB13B9C69ED7FECE445FDCA04B061ED126AA7F9CDECEB1F39EB42AE642AE0BE526F773B4DF5EFD3D5FA4E9F153C1D7ABB3BA8DBF63A759B7E4ED0BFC9F4F6759B56D2D97A982B6EF8615A6B3E782BC626956EE7D6D798BB30E905AA16ABCF2412D12248DB89265A9B77108D1CCC7053AE9B3FAD7F96E71E99C7F6F537A624D2291AF7DEC7DE1D1BD22A4F71694552E9B6ACBB969EEEF664B335885FC3934C85DEC40BF87B397E741F5D6D995BF12A1A8D50B7ED4D563F7A391F6EB8396392D66D7E36ADEDED8EE427C97FF0EE1A33592F934C6AE2D1D3D5466BF32E22E1C68CE479BCB99E17567D8F3FBE74695A91E85CB41EFD25A1A03FE5EDADB6E47B33759B56120A06924D3E9A332EE24AA6022418F0D17AAC81CED63D191BC17BFDB77339D1F8AF592B733A3245C22153E90FEE36F565F0F792A9C09B781DAD47F0F7EC1B1265368C121C4E4FEA5F1E2645DCB0768999E44B245381120987E86C6BE164F36EA2E1D62151E6CA9ABBB0D91D296FDFDD71DCF4362606226A25538146A57028406F772B3D1DF5A7171FC977A65D90DEE22DADC71B4C6FD37830E9C7741924EE75924C8524533482CFD74DFBC946FC3DF543A2CC65A36EA776FAE7D3CAA361D76BA6B731D9D4BB5C32159A4C402414C4DFD34E247434FFFB4A964A2EBEE647A9DC667E9AF6D666DA5A9E4C695B13A37A9F954C054634122610E8C5EF6B234630EFCBBB68F96A2ACFAB4D2B8F3D1FBC91F2B61D6D2DC9269D20990A0E03C3308846C2793F3BFCC2CB5F3433F1F4DC030F9DADD46DFA49CADB371EDC9E746B543215209170906824F8C9D325F290054B5F63CE82ABD3CEE7BD379F2612DE9BF2F6FB77AC35330821990A2A2E1906B11844C2FEBC2C9FC532964B6EFC1333E75F91765EFB3E7A87FA1D7F9D561E2617945921990A292A45C204FDDD84029D79573687FB8B5C75FB5BD44EBD30EDBC4E1E6B64E38B9959A2CCC420C418DD82516084C341C2A1AEACDC72912A9ED2652CFDDAAF28AF1893765EDD9DADBCF6EC5D6935EF52453215547F294428E0231A0DE54D994A2B6E66E92D0F53523632EDBC7ABB3B78F5D97BE8ED7C79300E65A69A7985D467B258302C5662D1FC18162F197123CB6E7D342322F574B7F3F2AFBF4BFBB167325A4613C3E39315990A88683442341AC6B03806BD2C9EB2E55CF5B5C7282A294FBFC2B7B6F0EA7377D375F2B9413D26C95440582C566C3667C61EED922A56DB67B8F2A6C73212918E1ED9CBEF9F5F49D0F7CEA09F5FC9546842596D586D9E412DC3E26B575151392EED7C0ED46D62FD9A6BB37A01BAA4AC22D9A46D92A980B05A6DD8ED4E0C8B7DD0CA307EFA034C9AB120ED7C3EDAFA3A9BFEF7CA1C44F3A415795B0310852493CD8ED35D8CC3E51DB419109F5D7C6BDA79ECD8FC4A4E44322D9EAA58E160180636BB139BCD856194E57CFFA3C67D27EDE6DDFEBA4DBCF7EA55392BB39935FB245341C964C1E92AC25D5C0946EE47F4264C4F6F9A5067FB7136ACBD3D67E5F556999A45F190642A306C76272E8F178BD59BF37D8FAC9A98D6F6BBDE7F2DA7331B26CF327787AF642AB0669EC3E9A2C43B1A9B3DF73215958E4879DB582CC6EE2D8FE4B4BC55D553934DDA2E990A7210C281DB5386CD5191F34108BB3DF535C303BE6E4281CD392DEF88CAB1C9263D29990A5126AB0DA7BB04ABCD93F3C9AEE9AC171E0CF8727EAE9CAEA26493EE904C05DAD473BA8B707A2A7432FA61C60253F7323D079A015190389C1ECA2A6A39D1589BF145FBFBE3373F2F1B32E7E8FCF9CB92EECE01CF178A4C3F1ECE81E68C0FF42A20A93BEB5CEE2222E12076473501DF41C4FFA7D49BF4BCC1D3D3CA0B41A6FB86F3670EB8810EA0019899783F60642A1F3591831F6E9035E760FE656BCD4C063EBD30B9FA4C439BCEC437A31F781A780C8826D36F9A31EF0A9DBD3E98326BB199E43F934CC303CB59BF3F9E106C409C2E0FE3A6DDAF337816E3A73F405171D2D7E07C9CF15C5BC9343C64B2249A7C7EA039D98D172DFD96CEE0597CFED23BCD24FFED996F349A37B4F917E01E2048FC2A7C3BF013601530E07D1645C55EC64F7F80C3BBEECD49616FF97E07EEA2D2D4DAB36DC758FD6855D6A3525979A5994DEEEFAB9920861E3F3DC7DFD6024DC966F0A56BEED1594CF0C52FFFA599E407880FFA48A6614253222A9DC201F4021F259B81DDE164FE656B0BFE44CEBF6CAD99BE12C0BDFD7560C5D0A41A70257E2F062E005E06BA93CD60CE82AB29ADB8B9A04FE2ACCF99BA47AA9DC4855AC934FCA2D3A9F58E5B816DC0BF03DF0422C964601816965C57B8237BD7FD4583D9C7D69C7322C0501D807828F1ED20FA270C2435BB7444E53896AFDCCFE6377F494BC3BFE5D58AAFD96EDE8DAC1A6F362A3D349C649A234F328BCD66C75B3186C9B3AFA2BBE3003DEDAF0F7BA1BC552B99BBF01AB39B2DEFEB1F6AE689D3385D1EC6D5CEE63317DC82A7F492BC7EEC4C2644BAFE8E5F98DD6C3B675CA41D2E91496489A29272A6CFBD14ABCDC1A15D1339F9F10B399D599E2B96DFF688D97E520CB8AEDFE83EC8C7A47E4F1EE22E2A65DA9C2FE1ADA866E7E6125A0E3D3F284F95C8165FFD5E9B991BFF4EF14F9C755D29DF64DAAEAA9B9F389C6EAAAAA710092F271CEAE1C491D544A38DC3422493D793207E81F6070325CA873E93AE18E6218661E074B9A9AA9ECCE459CB281D750586A572C81E8FB76A25DFF8BB502A22F9804B9349980F7DA6FF01AE55F5CD47A12CB83D258C9D309358F426F6EF28A6AD652391D0BE2135D23763C1537CFE925BCDF6914EF593BE3150F32E9F647A86F80D7C35AABEF987C56AA3B87404E327CFC3535C4EE3C1F339D6B885B6E65F0D89F25F76D356264C9997EAE64F718E990EF92C13C0D781B75475F357A8A2122F0EE70CCA468CE6BC9AD934D5CFA5E9C0EBF476BD9BD5A750A4D3AC5B7EDB23A90C349CD96232753F46BEC8B41E7818F8AEAA6E9E0A65B1E270BAB13BC6505C5A4145550D23C74CE560DD344E34BD4224549F374DBF34A3D1A90187EB4D378B63B1583E7D66CF00B7ABEAE63FB1589460C04FDB89260EEFDFC291BD6FD0D9FA2E91505DEEFA7496CA4F45C57997FC8E390B96A7D2373A5BA4C9299527CF6402B89BF84D6F6208108D46F0F576D1D2B48FE6C33BF9B87E03FEEE43047C1F41CC979568651825586CE34E8BFB8565EB9838ED73B8DCC51886312822E5AB4C00131283128A5243847028484F571B6D279B3871743F6DC70ED076BC8E404F03E1F04962513FB15877CA8219460956FB141CEE6A42FE668ACACE67D6C2AF33AE762E4E7711168B755045CA6799CE94EA3A6009E05595CD2A5381D1E936FD22E1307E5F37BEDE4EDA8E37D27EB291F6E3078846C304039D047A8F13F49F201C3C412C16490C702456278B4588255E16AB1BABB5189BA30C9BBD8418313C25D58C9DB480F36A66525C3A029BCD81D5664F57228027CD0E360C4599446E59013CCB278B5BA628550C88110E0589844304033E82411FBD5DEDF474B7F271FD5602FE4E5A8FBE83BFE7CD4F6DEB745F44F9E82F60B13AA8AC9E89BBA89CB2116370383D788ABD389C6E6C363B46FA9108E2D791BE4F1FB7544826912E35C4A77965AC25108B4589C562A72B7F2412211A099FEE73592C564ED5C350289068D619381CAEC4EFF1893A569B0D30322111C467365C413FB3C02593C8146B88CF4C3172B9D35351ED944467D6CF0C4904F076A2EB9051743F93E88BEB81C5E47866BF61181886E574348ABFCF6834BA291B22492631101B81F244073D3C848F239638060F26A607A99927B2D9975A958856C61092E80FC42FB134647B679249A42AD517C9DF3BB5732A91641299E009E02BE4CF35401FF1F5BFEF1C8C9D4B26910916115FF3FC4A92783E5416047A8DF8A35D360EE649904C221B627D9DF888594D169A82E144D36D3DF189D11BF3E5C02593C8451FEB7AE062E22383A7D63C74F613C5C27CB2BCF307401BF16B436B72D90732CBFF0150C8D4E5B7B01DD20000000049454E44AE426082,20,20),(10,'Modifier','image/png',0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E987969700001CCF7A5458745261772070726F66696C6520747970652065786966000078DAAD9C69561C3B9484FF6B15BD84D42C2D47E339BD835E7E7FA12CB0290683FD8C0DB8C8524A77881B71A5C4ACFFFBDF6DFE873FD5B96242CC25D5942EFE841AAA6B7C53AEFBCFFDD55EE17C3E7FA67FFCCCBE7DDD8CF1F881E3255DF4B830ADC7F58DD7E3AF37E4F078BDBF7DDDE4C740AE3C067AFCE06540AF3B3BBE795C571E037977BF6E1FFF37F5F1BE167E5BCEE35FA9E79E7AD3FDA3A7FF878C3166643CEF8C5BDEFA8BCF451778FD0BBEF1359DCF998BECF9FEFEEC7DFDD876E6F5DB27E3EDFCB1EDAEF6B8C2BF3585B9D2E382F464A3C7EB367E6CBB63A1DF67645FBE756F7FB0937B58E2BDEDF69E65EF75AFAE8584A592792CEA7A0C71BEE3C28E29FD795BE223F32FF27D3E1F958FC212071E9B78B3F3318CADD661ED6D839DB6D96DD7F93AEC608AC12D87B99D73C3F9F35AC1FCD50D2F17047DD8EDB2AF7E1A5FF0D3C06B9E97DDEB5CECB96F3DF71BB670E769B9D25906B3BCE3DD87F9E8C5BFF9781D686F85AEB5C798F9D88A791D83330D794E9FB90A87D8FDB0693CF63D1FE6D5ADBFFEC8B11E0FC663E6C202DBD5EF217AB4BF62CB1F3F7BAE8B5730D79D1A36CFC70098887B4726633D1EB892F5D1267B65E7B2B5D8B1E09FC6CC4901D7F1808DD14D6B36BEF13EE19CE2746FDE93EDB9D64577BF0CB4E088488A645C537DC3592144E22787420CB5E8633031C614732CB1C6967C0A29A694721246B5EC73C831A79C73C935B7E24B28B1A4924B29B5B4EAAA07C2624D359B5A6AADAD71D3C6D08D7737AE68ADBBEE7BE8B1A79E7BE9B5B741F88C30E248238F32EA68D34D3F49FF996636B3CC3ADBB28B505A61C595565E65D5D536B1B6FD0E3BEEB4F32EBBEEF6EAB58757DF7ACD3E79EE6BAFD987D7E4B170AECBBFBCC6CB39BF0C610527513EC3632E583C9EE50102DAC96757B12138794E3EBBAA2329A2C36B36CA39D3CA6378302CEBE2B6AFBEFBE5B92FFD6662F891DFDC679E3372DD7FE13923D73D3CF7DE6F1F786DB65351FC7190B25036BDFC06D8B86095E64A534DFAF5B54FEB971D7BB8384367029575920C63D41657DD143C6F23FF4B6D3007634BB7B630118110ABC8F69A20D835B2070E729DD3466645BEEFE17DD9C5EBFB555C6C2BEFB977C9FC636920C3355813F8BA55226AEA55DFE5BDEC790B79440492E35F0F685E46FCD701CDF314FF7640F3D99A7F3AA0F99311BF3BA0F99311BF3BA0F9AE57FE34A0F9A99B3F1BD0FC6DDC3C0F68FE3510FF2AB257AF5CB9C1A956A1B0692EDFE7BC52EA7D9AA4F72EDBFCEE3EC454C68409B460F9B7C62889BA1F6C1AE040599E714659D4E276D2FBF7AFE6CD0BE0119348E5EACB1588492AB3F9D1BAEDC1FA39AE54A79DB50630896B06101597EED9C6651274A55AEED3819D0E06079F7ADA36F6D947B41098108A759A4FBC1A807753B983F023B93E2E19202513F7061DB1C89CC78CA947556F4A42B4217EFFABF9C685802A04ACF6E16DC2058065E9395EB3C20C9878992B846A724E9BE5D41192EDAEB194BCD61E602DCE02DA026B9F579E19C4D5CF30D2DE2E5E8F90E8570CF94476F32902AE94D5F79E78EB88B96F6B7C6C0C43B8DD213646D75718A0F8DFB930B5DDAE2FC6FEFDAB69DFBCF0FEBA2B919DCAD22DAB2BB99D65CDE29A613A13E35093FC1FACF0B511CCF7ADF0B511CC8B1536852CF6934A31873453DA14D95E3451AAF11A14D0D0336CC01744418BD5AA5E7B94922F03CC866DAC56610D57D6D25780B497CA5D862358EE25C5764F9775292B89FFF33DBC7F66BF099640A5DD03BE0010C882D76D3AC4551CFAAE33FC798B9D32F329C25BF6FD6038738FF7EFC399DFA7F72FC399F7ABFDBBE1CC67C6FBE970E633E3FD7438F3B52FBE3F9CF98E6BBF339CF9C078DD23B9B893DD412066617EC4678549AE92D7F02B9241E032BC76AC3D6719248201F3A0FDBD2C9400C931EE44957E832A8E47AEC1F4768F8D812E11C3BED20599F4FD24C2BA4BF64E572B2759431A5DB570E6C1CA7AC8790F0A86C65AC3C6BBCA415B29327EE467DA69DCD30BFB5E7D55BAA5A499E40327B34DEE727D3A67F33C69277BED33976DDD0D5B31AD7ECF5978D2F747296E9E739C1F8320C5813E975B0D89D26D4046645879B55484868CA048445B91323BA26F52725736698E3C539F955AC7AA52B6378CE6DAA0079A8DE00B13C5DCD5AB3935EA83AFE6B31FD8D7F963E26790D2F4FB9A288152303C1370066C1EE1582051A6A5116C9B94B4DB2AC7A6B745D3EDE61783EEF3BF7D70991554F30ACDBFD5EAF7FE17529F0838FEEF4BB2E4B5A09C7202F5DBAA26E7E2534E200885697D59C6EDDACFF3355F4FF8E3F9060BC3BA67B2DCB9B253B2494B4D98AADAF3FA731C3152D9D7C4B001EE930B1A72A97D63B041241359B80B0DE91808DA115D8A832255476FD5B3CEBC62EC2730AECEFD1CDFCE6B78CD2AA6B34C33B89BD63372714C3A2E8F9D632605D359661ABBBB35366BC9D38EDCA12F1098B993AD83CA8840AC11BA423942F8120E183D38120D0D491268083B9AA4218428DD78D4ACAE62E277452E48B95F7334EF27C91CCBB9304A6D5F72795CB2DAECF9E6B9159CFA757F6CC70CCCCB14046ECF532003ED7DE93D0DAE794CE3C55042C971AE34F74444C7CF445EA721EC8927411E53799EC89321CCCF2CF1B921CCCF2CF1B921CCCF2CF1B921CCCF2CF1B921CCCF2CF1B921CCCF2CF1B921CCCF2CF1B921CC5F264756DD420FD85697CA01919D05F435C71C81FFE9FD5245F7DDBA581622C8BB70D2727CED02F8D102D2D3F261CC9096149EF3DBADD566D246470AC8B435B94BF01762EC5A57F1F370E9B97F0740F316010F95BE89F4A1D1D8ED594D3C61F50B549B57AC7EA2FE78E526FF07480FF9FF92FA9B6701F415627F355FF332E1974A77CFE494BA47A1D38CC5209278CA03F76F497390BF5F07F6CDC1FD9B84CC3AE48BBA128555C3D41355418D4195B5C57FBB2F771C799CE34FE9752A1E0D958D98FC91D47A955CAFE55A4B30EFCAF5DB35BCA95DBF4A174B886F7994F92E91FA13F95323EA3F217FE66DF3F1EFC99F793FE9BF237FE659E0395294C1E2CC9D7765FE4EB7639FA10D8A6F768A7B8CEE4768B163BC00C8F0BAB6C58662EA94ED3A77019156810AE633E12B79CF4A6D8C5519426EB54CFE436DFA35B511943BC19D869DA65E4D3D67875A182337D75628A3DB71D9BAC2CC49166EA1BF425F3F69547D7F405F566A3DBC560262E3BCE30A3EDE9C02B0B015B394D68470F859D836AF99D5C85A80F81968B986755B5ED6C0722EB589CA88C9B6B20A46493B470FC9B1C5DA76897AF4020DB6B65EDEBAEC429E73ACECBC9D0140BCDB87AFF3BE677DCF596E7D99B366F732E597093FA6CB4F5E276C3E9831F3EDEDFA210F30EF407F1DCDF6B151B885AACA473635BF8CBA8A66196A7EAD5FF94CDFE5F4A85F2B7EEE43F3D6897FEF43F370E231CA4F59DAEF15D9BC9885CF5F454BF993F7CC93696EC3DC66D105B759AE3F0789F95E94FC3948CCCFD9E2C741629EEEC1155491DE7AA96939E0A4BA5457CC54F250C909ED2A29494418C40AB28F73E9AEE62B66B47E400CCC7B66F0775D36F3113B786E0DBEE90CAAC76AF3D9562A8550D65E5C1BD3F4503A3092C0BBA9D307353177BB530865AE144646BB5807E465207D79B0363325D59195C39F1A9A7F4326CC33FBF95B3261F6532506F467ED3ECC921C99BEBA6FCD75397A8E28FC948F12012EEC8CCE17A0D23BB29FB019BE31873430F7F4EBB288638F85704E8F6A4147F43B36C454B117FEB2BEBA5DB1B3346B558B080967A8648449C2A6B2A89AD804C6A334C9122A4DF70E05A5E9D16BD2BE040602E5BBEDB97AF2F1322C8F225F7B2B2CBCA74E9003F57B5007329AD74E5FBDA54CC445C0E3DA4EE11BCCC85E14502A71A6780DEB9B71A9A0602F9814D4B91467498D391D65B1DAE92059616A9E3145DFB5D5997D1D97231050E5E55BBD91D71E09F7204F262CA568B718B53E3AF54B59C8FDACAF995B3613B21FBB758FB84650DB1123E011FD222072ECDACBE5BB4924DA19A30EE06C94BB773524D7845BC4FDC545D3A848C789872121A56EBC353BA25DFD81EE29F9147AF91267A8295D7474A244BCD3A3AFB832A21C00BD6B9BC8986BB9AD7F2C66840A50F1AE4CE16545754784488FC99316DAC7D8E437D36E55BBED331DDAA37328A68B29A5D5A24E836CED1FDB5E67E5A6255F0B8BD77C7324428FF8C94CDB0F371B29CBCD6C210AE3E87E9BAE8DE16AC9A828C65BBD2BA19296F1C28431C82244FB4C59310E5B94242324F4FEDCAFE2769A11869C4C18B5CE168AD35997D51AB0912FED18A55CBC36C43089C5884459DA056135D7258C8E2338A4C51C1D4A4A2C980944320E77E6FD3A7D134BB69D62509267CCB496B66B62B6F9E336D20B9B349F50E05DBFDE9178D348120698B78AE27D2349B5E5C14A5F38E9DD462255B5B197B88D25E70CEA922236AB6F58F50632E4064272902B80E5188AA12974F4003BB3995049CAC655D79DC4CD461C77EADAC00022C4613E6E94C35D5F8B7252EC34869B9DC6E90FE8591F9E06331AEDBF18CCBC4CED5F0733BFAFF35F0633CF467B1E4C3D3E8AB1CD44B905DB0A2C7D5CB9C6A4E35C6D35E282504E28C80C0321298B179520772EEBFCEA023BB1B7B1A51D213B71DA34E6E62F4801A8934480F4D421B0EE6123FE94DEEA6C703A079212575145F3F0F0FFB3690B4A057108D0382E0762A24E282B1D5C696DCF1916BA918118C5F24134555921430D8AFA0F4B1BD257746A46A45EE10DB0289F6A23FA8A53F3BA39E27A51FC1A72C9788CB05CD50E6FEF7E9659FC9AC1824B0073CBDA50B0412C86A185964CFF6279D43E2A76A15882AF8E92625C560D6F5261D88578AF4D00A6A32661F48B3473CE9F2C73E464896D0C78911739F26B878A5B07CB6B6646E855E77B46A65006E8245EC0C09565516D01210777EB89ECDF2C034813296A1565A7ED11CBCAEABC9A8911CBCDE03002F23E35181F0B5B895CB31E8288C7D5CB8965B1F8B11D49594725A9675C8D320B0E908D73994E065A4F98A5DC12081733AA115EA7309368DB7D46052F86A4AAAC4380D62C17456D5D4464C6883326342D391F2BDF23BC664606DFF86237D4B604055400E25B69841194AFA9B55EA94C58C083CEE031884449316A4480E61E2C81D1A01A087F18E90802F9089104702988D0AC4539818050A2C1E4DC4B92B29885D700AF608031A200F8F31B123EFC6CA863EA18DC60036330B82957101B105F60BA77451DAC439BAAD029686DA20C2503398CC86A16AEFDB0B71BB22EB49A545291B9E502DFEC521BC5D5F91EBBCD1FDA17DFC66EF37137E827D8DDC5279736C55DD81EBEA841C65167F0011842BA74B8EE4F5DA597059A2FCF30E01EA816E185FCA054E8F046C83A8CA1148C540629EFB2030968A26E061103EE3A7934300A857F4D40288129A566F025E32C314015E7E11DDC960243F627888F4ED175EB0CC3AC54CF3131F8088C7E94F31F85820EB3007A3A1E2226DBB3A80C44E05809E607A33DE9458C4DA3304514B50842D7DE1D0EB0E8269788E7E575D44FEFA7D011D238AA5D93A49D0549B3838EB445196BB86648645810D267E9B09C07B72E02B821F9E021F0910216F8A4437ACC18BC50B6E6A00378AE837993151307211A0733C2F68000C4AB363EC1F4F2289BEFC5B90A71DE3A55D8219FF6BA7B38C18D36D6CE0349409E22F5BBC9329A85A61386ACA3454957A82FB3819AE383721535894048A7CC80E24439D5264B3C4486CC56463264C89256D51E1E3C2727CD0A223D0FD721FC16D3C1361EDB469B9708521D7D21498628D01044F2CF845548DBAB500E12268D3AF8B2606D9DDAA84311F9E2AFCE5CC3D323B38146C1B511AF15120CE5EC80B7588841B792440C057835383CBA1328F3449F87BA424A2F3C3FF65CD077AC461DC9B8AC49F2843CAD3A7B055E9FCC0082E0A1B8F8C2A1ABA9040C844A43308EBB771C5A2A27751C5E2225B9629139903FA1E00216C04CC3C533275F51842D534C701AAA09DF02CDC4D750758A1879A091801D6DC621FCD01A704994679C94B88870322B14DB51E0B1623930C593D1C5AA76576DDF263FC05B1FFEA831FFA2C3FEB1C634DFEF587FDDB036DFEF587FDDB036BF5E4093E02AE4ACC20168A7666EE4C4580B30B95050566087D51C35BE4337361510D28105C848B36157DB230929473ABCB0A9C53BBB8442230353276ABA621C7A11CA4908DB8A9A8793A8BB0878D8704AAD9AE1C96C4230B5904EB106BC30CCDDDF4281CE84EB757E967810FC93ED144A2003A8205CCA1090206E4CB8B10284A0B815D5A9704ECDEAC4B1AAA356B44EB6B747B66F657BB1811C240A5AF207480CE4ED0320913E7E8B23F5371C615C0AE1A612534ED1D5BDEA405C0F01A8F03D6BE05C514609150AD5A72A62125477C76E4C40123742904A0857878911F3A4895B1D9137B6F6B2899144556C301F34F62B7E20DA508E484BEA921DCC2043BA2027EAC1892AE45AA1CA6406A521A8AE656CBB927CDBB5CD35E7728BF9669BB62B6AD5A8554010A6C62221078BC29D43EEE95A109B88B683D656B32694111F539CF871A47A80F8B3A565012DBCCCA42E60033B539F60C9B6DBE43BE8B2E19877B84E7F2D06722C9E2A953B58C03CC5324B058E6047A828BC494E78D0E70C16545320AC040493AA16D609CC3AE93516899026B6F1D200B0574B8EC821792B9514E8621A40D2BE26B17A5AB40B60DE85850A77759C460F6738E32798C51B4978058248DBD86AD801120014EF669E6AA4A1F1B56E8953660DFD44A4C279D4F1A2FE39A3A33D36AB8D091122D3261C87AC155B44CE80085455D8F0BC10DF3B1263E80B6403D58408084BCC6B53E88B79ECAB287BFEE9849DF914B7DC87274A3EDDA232EF514BDB3DBFE3D61948A4E815B6488E4C5271CF2A00BF74DAD610756A4ADC272CE03C0C472491237545B525D05F24314A010DA08608E97F6F469D4D5C3F5EF692CD633359C958A654633B4771CFCCEE5D65AB13BDBFF694758AE76547F938F76CEDDC07E2065A430F12F92C860A42A81B775AF80429C852D5A2BE772302797A0BD0DE5EF69635AD665E36976F9EF134A997FDF65F937A4CE9F7FDF67B5AE6CC4BDDFD332975F77F4D4B5AB2BF98949B533ACFC30B128EC463F3A54016EB4E194DEBF5A0D2A54E59BC003096B3BACEF3AAA3E3606A09F025894076084B566F1B45D6800E64083C468F4E003BB1994DFE58CAE079E281D12C4A23A24BFD4671F36E6880FAFC4E5D42249D856236EABA17360CE037E82994A84761C07E1F850429A0900F4ED6DD50E5444A96A4754735612A0BB814AF67F5460BD22A91C4D7E9686E988C36A3A6E650E7E46F5CB15DC85132750093A090DA2A6A5DC3017CF78A2F3BD482D2C1A39C22FAE5284F9D3E848A0B342C690B469C565A9C6412641928E2FA0AD8030120AFDE330BC8C19BD0DD3DE1CB21CE920DACC49214A99684ECCD14CDDA31D45C525DAA4361910435C19A2F947EC541703FC87C17EA63488D4A89329045AC24927AD5A8BA4714769DF74664E6F308DA945A57F7C29614110CE9E5A7ED700FF47285A7A26993159D274061549498D303801676700BE4DAA8C0D5D178B9899610E2416DEB029C5237907778A13A3FCCCEEA1AC712068204D2CB920AD41CFE0087755006C175C4332F585FD44CE0A3CD0BCF55498FD46D3685225C2A3CEF15A595D84F282DB944892306903E7BA21D7A0A5697232D48AF5C82813604A90114AB03A7E0834C975025F5A9F4B070C6019F525888AE03730B96D9A50FC2569EE81C1F21415D230118242309FA4599EDB0681422B1BE93B368226AA4183F52E8D2E1CBE6C9378B0807EFAC0D2879D4DBD58C1A2E98A241AD094BAC098C667B392C0DBBE747EAD952EE3ABE1C4147C2BC9E0822BFF2C891EA4FDA44579C697AB22AA2F3CA1EA2A4612771104298E4CB08A7D3208FAAF39F9EAA7BECF7FF12D460921E478046F6DC871AB29534604259075D744EB27B6D440179DA1C473C429588D001E0B134B57C74F255BABBA343D4605691C078835C22B0C92F755BA0ECD88085FBE044A80BDC0D9AA773DAC31A3D19C5BAD168BC514DFE73AAFF8F1BE1EFB683CDDB9D3E7559A70CC1FCFF742EE9EDAEAEF9685B578F07FC36B92FB7325F3665CD27BBB29F4DEDFD7EE46362E6934DD5D74931A761C576A183735F395392A176532786ABBBB43D3514C5667B496C3DCB376285DD4218B9A10789A0A8CA6BB28AE01342A20AA1FDA302EB16C486AB80A5A84A9DB3F786051718CFC8E739D78B4F298C7AEFD19073223701E44AA757EA524AA5A4891ECBEA199E4D51805D4F1D167B0532B9491B308B7878A8781BA40C02447D421B33A7E0C91578B167D4A64D18078FD40A282D148E6E6696E251988DA407DB92367BD44F0D117C8C3BCC45F4A207921E0D9412A406937AD10309A30070484F4A84016EA571602441D11EA045EDF436B39A26AE69AB851A691BCB25CA8983A54707B71EE6C33C4367373144331E128F762EBA2DA409AAC88AC8FEB0BD68C1759E9BA188F878F5A1DE898A0BF40FA29CB4D58C76E756DB19C6B5452755541B40196ACE4ADC2EEA1B8F4B45FC2873B3E10DE77384698ECADC7CA396A8AF33B4F7028C502D9D8896A50C46318AA6DAE3470F536DD683B2EA94DA78229FB83AFCDB919B29539C57405CFBCB04B82B43802013EA9ED587B0B532DD3AF11D4669F3203ACC11A8B2EAAC564200F1E51A78A2B60E3984EEC72F14036D31EA7E11E9DA012B75B64474FD05A053C558380C60130131EBA0C11449B6A88089A92B7582A551B570172C1E5E42D4AEFBA81A126730D328896AD57C51F74C3B77684DD48357DFD223FC024E24F8BB37EAC5C2479B52344BD0543D0DAD1D7D9D09AA375D0EBABF1EABA47088DC34446C96F8F103AD46C456B5C6928B8ECA8304595040E8366ACFA30EF30439BC4BF1B90FDAEBD22EFFECC34D75051D601D4D425583A19450624D2D6488BC8E1A57DE92101984CFA51D8BF6787A8BBAA14DB88568853DAA9F92E280E11B4F9C5E3A0355A37E330012F02ABE5E416EE5B39E96DE971E93B54B4F23C06D3A72AF0F6D6E734D01DD32565F6672B90E5C814DA9A4AB031CD057CB95BB9EE25596E489BA5EF7A133C5928E17DCA72AA0AEEA5E6C6B1EDB36F3209D1EA738073FAE396F58D776CDFD38058341093F1DCC68B4FF6230F332B57F1DCCFCBECE7F19CC3C1BED6F07331F79E06F06339FB9F37530FDD202A852B5F33CA00F4B9E03120A2DE89642A3C3EC2ABCA6548A3F0C0B5E6D3BA9B161E95D1BA355C70274FE7D34D2EC6E00CEA3742814C56B8BE4F201A65D28831B363292F6853C656FE8582FEFAA49AD2B84F6449ABB48C8BB605D7F6C50073DD1EE28835BBF512042B36A84A398B0742422A9F1E8339AB2362A0D8819D44DB283D18014A8698544A7A2498307CCAE516AEC3910D7D320A50CB7D3369E76F711F1FCC7AB5345225E0EF9028314CB06CD62A4BE32FA82FEAFAD0E94AF5B79CF4281A661D4A5DF70F075E9BC223FD45854494CAF376B3BA8B7A8F20F621E664055A3CC81746D809BD449CA280341E363A304517D3AC0B980DCA439A3DF864E2E21C8C6B5A918C5756D687A785EC73675B3166D8906EA732545409909E4237366E775B15F10633886DF90F6AEE325C0766D99056DC6746882AAE69E3A622071D3A34E361A6D70C195B57903C67A4AB1A3C69E87CF1F87AB0A6AC6B9F0385C75C104E2396CEDB27ED98778044C7D98DBED7EE27668FCE6BEDD9DD348877687CB8186859BEB691EA76756A9AAA180766EE501D32FB21485D7141F36A64131125BF0DD090F6A3AE283AE85B974B8FA50F4E897BFD4727E35CAD9CCD4AFA8D0790D6A3B450E60432D7878482B63B64422E4A823B39674827D475D8FC8588DE2A5DF25D28B532638042D661CE1F2C76AE744D4FB83B57FF5F5F7818866EE10327E805660532A5988D40D47391C0AC7D52E4F2520E73CFA18154C6E15A7BE1DEAA8C1F87BDDE5741EC1FF42ED8597162D58DB1F085C382A21B711810BA6E42F5B7069B9A4DEBC4E34756DD4B58C4DFC43AE4CFD3A879EA14A05B2C76011FF61447E90BCD70D5654CBAF53A42DC6F4FA253824F00A14C8F2F698908EAC2033579D589CCA259514D11D5B1BDD200D7496C2A553FCF3B418F428B7276B8D272674464751D0ACCE75A1845936952EEA78136A49084096C6DE4BA0CE451031966B519E19F5B447DB354CD67D6F6AAEDF21A10EA8DA8CFC43C5697B1E6E94BB735B3BD801092895A5AD8A841687D324EDE3645B8D1F10D5F966756777C0FC3FA735023D7D4E57F400000006624B474400FF00FF00FFA0BDA793000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E806070E102926BA5961000017A04944415478DAED9D797494E5BDC73F937D21096B5843000311A5A8B8545A15AAAD1E4540B40A567B6DA9F7B4A78BA2687B7A7ADAAB5791F6DC5AA9B78AE2DE45AB3D578480B67543082DAD18160521C89E000902D920DB64E6FEF1BC436632DB3BC94C66C27C3FE7CC2113DED992F793EFF3FC9EE575B8DD6E84103D27453F0221249310924908C92484904C42482621249310924908219984881F697DE03D2E06A602A54056149EAF0070C4E8BD3A81269D5651671FF011F010B03F51DFA42341A71315032F0157C4F0C4177D9323C002E055C9642F897E2289441836031748A6E03C0B7C47E789B049333031519A7E8924934412DDA10E1890086F2451AA79732592E826FD81354AA64E4E01D93A2F440FB81C284FF6645A2C9144147851C9048781613A17441418431C8B1189904C43750E8828F1BD646EE6CD45E349227A4C4D669986EBF72FCE1434D15508C9248464F266B37E05228AAC513209A1641242482621249310924908C92484904C42482621249310924908219984904C42482621846412423209219984904C4208DBA4F5D1F7FD12E69A3DE2CCE2BF2453EFF32209B2BFB4904C6AE609219984904C42482621846412423209219984904C4208C924846412E2CC212D093EA35BBFE6B892345786543209219984904C42482621846412423209219984904C4208C924846412423209212C92616EDE83FA350BC9141D1ED0AF59A8992784641242320921249310924908C92484904C42482621249310924908219984E845B409A58835DA845208219984904C42482621846412423209219984904C4208C924846412423209916C68134A2124936D1ED0AF59A8992784641242320921249310924908C92484904C42482621249310924908219984904C424485C9922976DC02AC046A800EEBDF95D6F743E1D6ADDBB778B25532459F34E075E055602650687DF642EBFEABD6FFA721FA3A17C7EBBC4E96936725706D9863E658C75DA7F331262C00860253ADFBA54056945F230FF8D0EB7E86F51A0D92293AFCC086481EAEB58E7F42E77ED4380564F7D26B355AFF7A246D01DAACA472A999D7736E8BF1F12234D9BDF85AC3AD7FBF6E899463A593AB375E3C1992E9BC181F2F1287FF00AEB642E29FC06EE02CE004705CC924847DB280314011F057E06BC08F7A43A46449A62D5E9D5EBBC78BBE8DC34AA455D6FD83C0A35693B308186C7DBFCEFABF46C9648F3F4528D39F742E9E314265585F2FB6CEF562E01260A4F5FDA34005F07B603DD0DAA31774BBE33AAE361D78BF1B8FFB0AB02682E3DFC45E45EF2D0297C67529CF330337FE9705ED00AA815F00AF01CDEA33856616B03CCC31CBADE3445C4E7377E72DB669D59554ABE9F708308F1E8C7D258B4C4EE046602E5006D462CAA5B5D6FDB9D6FF3B7556C741A20E27B4B640F34938D5042DCDE06C07B7ABB7DE850318013C6C9D0BDD122AD9A6CFBC66DD22255976852D00BE47F46726580D2A27B4B542DD3173BF7213B4B741CB49683C0663BE004D75905B0039FD60C010C8C983F40C484981D434484B87F47448498DC53B1C6E259403F83366AC4A3245990792E033CE05FE18D573A2AD158ED540E566583E3BFCF15BA680B30E1C69903104F2C7425E21E417427A96112B6F20148E822123A15F3E646645532CEF847263E66CB6482611090B80DF04E953442ED0EE6DF0E61370F0F9C81EDB52D1F9757B259C5C0F47F2ACD33C1B1C19905E08FD8AA1680A144F825125306404E4E699E47238A2F1F31889A900BAAD964C8B6412767816F84E8F9FA5B10E963F09153F8B729FAAD1F7DF8E2A23DDB177E0D3F1307832945E0193A642D159A61918BD26DF22EB0F8CAD84924C12A967221D3E002F3F18790A4543B2960AA8DE05E9D930F9CBB1E8478DB2FA502EE02FE184924C12A97B349F84BFFC36FA49142945F360C6F74D2AA5C4A4383DDC6AF2A5002F492611A8D830BF7B89E082B5ABEC1514624DDE74F8EA7C183BD13F95DCEE68F59F1C561F6A51389934D13539457AA55BC586C63AF8CD7F26864800CD0760CFC7666CCA4F018711CAD91EAD571BA13E93F0A61878A15B227D5A014F5F98589FC6B907FEB1C48873D52DA654DE55A8D434D324CDCE8D4642A164121EDEA53B8BF5CA5E481C91F2AF84893F818C73CCFDB6EDB0FE3178EF2FD0541F38A1B272A0EEF398BF35C9945C0587B3BA25D2BBF313E313F4BF0666FC146EB90FA6FD183227770A55FE1B78FF75686A082C54C120A8AD868E8E98BD3D35F39283CB222E38743861C9777BBFE41D8C4133E19A0570C165667AD1F439E07241F91268DD6A09B5C41448AEBC3970936FC808387A08060D83D4E84F47523225076511F5933A9CF087C50924D26CB8FEC730E5722312406E3E5C79135CB600D22798EFB56E85F58FC39A10093564047C7E242609259992A379D7DFD6916E37349F825797C0E65F248E483316C217BEE83FBB213D130A0683DB6BB27FEB5658F718BCFF7F703288508523E0C4D1EEBC9BE592297929B6DDBC737598D2F7DFFE08FFBE3FB1449A3CD55FA4B656D8F20F786789A9EA79D3BAD534F942F5A1060D8513111725665B3FD3A4952999B726DE67AB79E7EA80FAE3667677F58ECE8E7DBCFB483316C2E44B212D2D8048EB61D5626878CF12240F722E85D451BE09B5E67538D91858A8FE83CCDA29FB38301551259308F4A7C665FE7AEFDB01E5AFC1EE3F9913319E14DE0C33EEB344EA9248AD2DB0B91CCA1641FDDB9D228DBD03E63D06972C84B471FE4DBE6009959965FE98D8E72CABA0E387AA79C94E6BAB99ACFAE15B70E07570D5C65FA4EBEF85732F3203AE5D45FA680DBCF90834ADEB1469CCED30EB8730BA04468F879434F8D763A6F9E711CA91622A80B979FE42459E292F02254A26D14987D374C4777C08FBDE8FAF48298530FCF6D0226D5A1B40A46FC20D0B2C8952A160207CED56B8F82EDF845AFB68E8265F647B4F044C27C994B4CD3BB739418FEC879D6BA1795B7CDFCFD0AB617608912AD6C2AA870324D28FA0A8A473C6B8A72F74CDEDF0C57BBAF4A11E870FDE082E54643C2C9944675FA9B10E2A2BA0767DE7E2BB7830E426B8F60750F2057F91DA3C89B4D857A4E2DB60F6DD503C21F0D28B8281F0D5B930E94E733C98F54F6B97044FA8C8B8423209EB246D33D36BAA3FF62F2DF7761F69E67D2691D20288E449A4C635FE228D1E1F7A0D537B3B38DB7CBFD752113AA1ECE3C08CE149A6A46FE2B59C82AA5D50BB29CE222D84732E0A9C48156B617597441A7DABE923054B24CFE73B56036F3E079F3EEB9FBAA7136AB9EFF20DB7AB73E7247BCC904C6AE241C309A8FA14DAAAE227D2F5F7C23917064EA44DE541126941E84472BBCD74A1B265F0F1B2CEA28A23CFCC38F74C3D6AA98075BF35429D6C34E5F1EA7DF0CA62338E658F61780DE24AA664A4A5D9141E6A77C6A782E749A4738325D23A58B5C837918AE6C1ACBB604CA9BD44FAF809B3F98AB788737F05D37EDAB97CC3BB0FB5BD025E7F0C2A97C1C71B22F9343FF77CA171A6646CE2359F82DA83D0B02BBE891448A4CDEB61F523BE8934FA56B8E11E281E1F5EA4B265F0C933BE89547C9B25E2047373BB60DDA366A6794B05AC7904B24775CEA6F8C374B8D076A97CBA644A569CED70BCC64C1B721EEFDDD71E7A4B689136959B44F216A9685EE8AA9D47A4A387E1AD178C485D1369D65D30B6D40CDCE6E6C3955F375FAFFD1F23547BA5B979D3580779B6E6078F53332F5953A9AD151A8EC3F1BD9D275DDC13A9D54AA4C55D44BA05E6DC1BBE695753052B9E802D8FFB8B34FB6EF37887D7E373F361DA1C9872A7192C0E44A5EDCB743930FB6A48A6A4C2D561AA5747ABA0616FEF26D2CC8521442A87B2877D27AD8EBA19667B9A76A9C1453A7210562E35553BEFA6DDE85BCD80EE980089E676436B339CAA07779089AE7F981EC927FC9A644ABA64C26C94DF54076D8713239136AD83555DFA48236F821BEE85B1678716A9A60A563D0D3B9EF31769F6021873B66F22791E77BC16DE7C1EB63D177AB0DA7E55EF42C9946C7438CDF8D2C913E06E8B7F226D596FFA485D13E9868546847022054A24EFA65DA044AAAD86954FC396A5E19BB9C76AEC7ED2319229D97038CCADC319FB92F8F0DB61D6FD81456A6D3603B2658BFC1369F63D306E62F03D1ADC6EA8A98655CB0227D2ACBBAC440B24D22158FDAC6FD93C14959BED7EDA02C9948CB4B79929368EBCD8BDC6886FC20DF7C1D9E7FB8BD4D20C1FBE07650FFA27D29CFB02EFCEDA55A4954FC0F665011269817FB1C15BA4B2A7E093A5F6FF906C5C1149114232255D3201B4B7C4EE3546DE01B31742C9A4E022BDF9B0B95C8C7722CD5A6012255C22AD5E063B9E0F5C6C185B1A22919EF115D00E916D28335732255B9FA9B9095A1B62D8B45B0025E7FA4BD1D20C1BDF83BF2E86531B7C459A731F8C3B277422D51E82B2A5B0EDE9088A0D2E33FEB46A596489D4BD22C4700DDA26139E6A5E6B63F4975C8CBC0366DE6D2DA30824D2FB2691BC451A75B3916F4C9844AAB5FA4801CBDFC18A0D2EB38278F533BE8F8B2192299970B69BCE7F477BF49ED3932E33832452AB25D25F7FE99F4876CADF470F199182265210918E1C347DA41D4FF6D65AAD496AE625132929E6C475B5454FA4D1B7C29CFB61FCA4C055BB8D6BE0AD2E4BCDED96BF6B0F41D9D341440A93482B9E809D2FF45C24FBE5F112255332E1EA30FDA6948CE83CDF59DF361B998C1AE72FC5699116FB171B3CE5EF908974D834D1828A14A4FC7DF8A019C8DDF954AFAF1E964C49954CA99091E9DF51EF0E595360EA8DE68A7D5D9FAFB5193EFAC088E49748F7864FA4A3874D132DE2443A68CAE6952FC56519BE644A3652D3203DA7E7CF935B14B882E611697588F27777136956B044B29A76654F1991A2596CE83FC8EE91272453D2899409A93DBC22B9230FC64EF55FA2E06C3773EDDEFA95BF4873EE0B9F489F1FF12F63FB141B26044FA415BF330BFBA29D48A9B615F94032251369E990D30FB2FB9B93B42727DE8400AB641BEBE0DD65BE53846C95BF5D70A4CAAC90DDF654E02942C19A76870E98F1A75888A4669E08DE6772983E537A16A4144047374FBE822FC188B1BE72B8DD50B507EA3FED1461C48D662FBC7167DB5B46E15DC6F63C7ED6DD41E6DA598954B614762E8D9D4819999249046A9EA540562EE41782A30715BDA24B207F80EFF75C1DB0AB029CD69525065F6D0671C7968610C9533478122A5FF41569D84CB8FEAE30E5EFDFC536918A22BA3EDC12C9946C646442BFFE90D61F9CDD49B7421835D17FCFEEA646A8FEB4B38996926A366D494935976FC91FD079A132EF445AF5946FB238F260E80C98B510264CF66F1AF666D3EEA2C8AE2A2F99922A99ACAB3E0C180619FDA13BF35D734A6154897F7FE968351CF3DA47A1E63558BD19728A216708944E8399F3CDE33C7DA4154FF88E077912E9B4486981455AF1BFB0EB99D8F7918A4BED1E5927999291F40CE857005983A0B11B4588BC62D35FF2A6A3030EEF87862E1B5AB657427D25D403E9D9D0761B64A5764EF5E93AB03A7406CCBC37B448654B7B472480A1A3EC1E794C322523A969909367C69A223D211D7930F662C82BF0FD7E6B331CD8167A7CA7B5111AEACC45D5563C19B86937FBFEE0221D3E002B7FD7BB55BBEC5CBB477E2C9992B5A9979D0BB983227F6C4A018CBFC0BF1F73B211F694877E6CF3E7F0E987B073836FB1C19348C19A762E171CDA67FA56BD29D25511AD65FAB3644A56B272A0701CEC1917D9A6FD05E7C1C82ED387DC2EA8DE0B7561F62C6FFA04DEFE359CDAEA9B4885D7064F24970BAA7643D993F0D973BD3B8EF4A519768F7403AF268B4C0F9EC939E3F50BBD0EB8D85E1121D72C5DCF1A094D11C834F632FF2A5E870B3EDB04AEFAD08F75D5C2C95ADF26E3D01966C3955022BDF138EC8DC35CBB8183ED1E797A5A7932C8F4C019FCD9F2816C4C177F3F30C9BA1F3E99868D850DEB2268E21542F1B990D5E5E99BEA61DF46FB27BB230FD286C3E08B60E63D507A7EE03E52D51ED3478A87487356443219784332C97426D360DD005E00CE01EE25DCDE1E0E077CF16A7823126D2F8061C5014AE287A0B13AFCE3FB5D0E0327C0D05228B900C69E03830A8324D21E78E3B7F1110960CA15911CFDA8643A3348015C5E5F3F09DC0984DF243B3B072E780836FDDC66B3677CE05271FE001831051A36F8F685520A20AB18C64C8331E7C1C8715038CACCC24E4D0B7CD94B970B0E7E06AB96C651A44576F718076806CA25D39925538AD5E46B018ED89209E0C61FDA9329A510469D6BC6A7BA523812AEFF9E99D170703DF41B09C327C1C4A9667037BFBFA91EA68599A9EE76C3FE4A78E33138F04AFC26ADCEB83392A35FF6BE2399FA368F010B8136CC287C1DF0DFC04B40F8751679FDCD5FE28A9F853E2E6D30949C1F78F37C87034614C3EC1FC0B19B60685167FAA444B008B1FE38BCF7727C459AB2C8343DEDF350D7BF6CA2EFF2CB00DF5B0154DB7E86790B6DF4974AAD15B58EE07DB0E1A361D2253064B89965114E2497CBEC94547F02766C82D5CFC18E57E3BB8C62CEF723397AB755F451329D217495260338057C82B5FF755832324DF56A7988499D25974376BF9EBF5BB70B4E9D84C67AA8AD3225F55DFF3057E468DE159FAB189E166945247D2500BF38974C7D9F9198B9612D403FCC35565763AE6867CF802BAE870DDF80C32F07489D3C1837D977C6B76D79DC666946F349B3D17ED56750B5130E6E82A3E5666C2ACE0BFA4E73D975911C5D8735502B99CEDC743A6EDD36614AE6BF0752C33E8323056E7B087E1D40A681D34D3F2835D5A6402E686D3109547310766F85DDFF86137BA0695764332E7A8B9FEC8F64793A049908D057655A62FD7510A171DA92096058112CFCCCECE5ED3D09356B206464854E1FB7DBA4CFB11AB386E9C00ED8FB21D4AC0357537C9B6F769A77C347479A4A4BCE2499CE932751262D1D060F878BAF8363BBE1F3BF1BA1EA3E3317071B3AAAB3A8E07641BBB53B6C4D35ECF918F66C3297F63CFE5162A64F208AE6C3B459913E6A66D01FA1CE22719AEC1C183F191A6E8372271C7FCFEC32B4E665D3CC1B32C25CC8F9E861933E95E550BB09DA6B7BF7FAB8D11269C1D3913E6A335E83B47EAD65B7DB1DCF8F341D785F67718271B2012AD6C1D67760EF4AE8380AF997C2E0B3A1B90E8EFECBFFEAE47D8DC54D91AC57023399782C5DCAE189944CEAF72422B9F970D157CCEC86F23C33FE53FFB6B99D093C74225291007E154AA44448268FF122D170BBCDF56F776F87B57F86DDAFF5BDA65C3091221B4F0233405B12EEA0449801B142676E02E27098E516A34BE0A21930E26A3347AFAF52341F1E6DEF8E48CDC055760E4C8402C41BC06C9DBD8928548A590C5832095CF360633FA82A87D65D8933D86A87AB9E87EBBE19E95892A7D5F4ED70CDBB446AE601ECC38CDC8B44A4C369A6001DDA0B9515B067231C78A66FBCF7EF7E0413A774F7D1CF6196B4D097649A8EAA7A898DABC35CDFB5FEB8991AB4AB02B6FF1D4EFC333107658BE6C3F71FEF4EA1C1BBC53427A2204F1099C08C2ADFADB336C18B126E17B4B5994DFAF76E874D6FC39EB7A06D6FE234FD7A9646B60B0E892C13C08BC01D3A6BFB8258D61CBC9A6AD8B111B6BD0B47FE096DDB7BEF3DA414FAA6E2ECD7E18A99DDE91BF558A4449409600166D19BE82BCDBF938D706017ECDD063BD741FD3EB3B597BB393669E5C883F4A24E71BFF10E9C7B89B95C4EB03557311629516502B316E701A5541FA2BD0D1A4E406DB5596A7164371CDA0E8DFBA1ED18B85ACCA4D7EE0AE6C883CCF1903B124E1D8141E7C257BE0513CE37FDA2D4D4B88A94C832794B758355A0E8AF3336A69402C37ADCF4733AE15493999254536516011ED90D2E27343740D351B3BB6BCBE7E0EE308F4BB5B60F737774DE52B321BD1F641640669EE9AFF51F09A597C25993A060A059639596DE538920C2AA5D5F9549F42E738157E8DCDCB2FB850ADCA650E1B46697B7369BBDC61B8EC3AE8F8C58FBD743C37BBE8FED7739147D09D23260F424C81B6066B367E59801D7CC6C484F3797AAE9B9446ECCD6684BA2D2FA944CA20BC598D9D1D16B09B85D4630CFC9DFD16112CCD3E74A4935E7B51B537E07EB2A87D63A2ACFD28FB434E379CF250233B3E16A42CC02974C225A2CC7CC4C71F4EAAB7A520DCC0C0CEFF3D311B5B7F281D575882ADA9D4804630E7005BD3DB3DFE1301279B62776383A6FD149A379B11049328970940303AC0EBAB30F7F0EB7F5197208B0118A9A79221E7DA997ACB472F42189D6628658F6C7FAC52493E8AE545F2671B73DE8558924938806CF023791386380CD98FDBFEF8CC78B4B26110D2EC3EC797E0D76AE0F157D81FE86B9B44B793C7F089249C442AC6F612A66C531680A3AADA6DB1ACCC4E8F244F9E09249F4461F6B0E300D5319F4EC79981922C59C4093F5F516E004666C68796FF68122E5FF015AB91748FE7FC5120000000049454E44AE426082,20,20),(11,'Cloturer','image/png',0x89504E470D0A1A0A0000000D49484452000000D3000000CC0806000000E9879697000019A57A5458745261772070726F66696C6520747970652065786966000078DAAD9C6976DC389084FFE314730462078E83F5BDB9C11C7FBE004BB2555A6CC96DB525B98A052672898804C036EBFFFE779BFFE14F49C99910734935A58B3FA186EA1ABF94EBFE73FFB45738DFCF9FE91FEFD9B7AF9B311E6F385ED2458F0BD37A5CDF783DFEFA400E8FD7FBDBD74D7E0CE4CA63A0C71B2F037ADDD9F1CBE3BAF218C8BBFB75FBF8B7A98FCFB5F0DB741E7F4B3DF7D487EEB79EFE1D32CE9891F1BC336E79EB2FBE175DE0F537F8C6CF74BE672EB2E777FDD1F74F7C675E7F7D72DECE1FFBEE6A8F2BFC5B57982B3D2E484F3E7ABC6EE3C7BE3B1EFADD22FBF2AB7BFBC6B81E8EB8DEFB6EEF59F65EF7EC5A48782A99C7A4AEC710E7372EECB8D29F8F25BE327F23BFE7F355F92A4C7110B1C91D3B5FC3D86A1DDEDE36D8699BDD769D9FC30E4C0C6E39DCED9C1BCE9FD70AEEAF6E788520E8CB6E977DF5D3F8429C0651F3BCEC5E6DB1E7BEF5DC6FD8C29DA7E54A6719CCF289775FE6A3177FF2F53AD0DE4A5D6B8F33F3F1157639791C3314397DE72A0262F7C3A7F1F8F77C99D7B0FEFAA3C07A22188F9B0B136C57BF87E8D1FECA2D7FE2ECB92E5EC15C7769D83C1F03E022EE1D31C67A227025EBA34DF6CACE656BF163213E0DCB2901D789808DD14D6B36B1F13E119CE2746F3E93EDB9D64577BF0CB4108848A16442537D23582144F22787420EB5E8633031C614732CB1C6967C0A29A694721246B5EC73C831A79C73C935B7E24B28B1A4924B29B5B4EAAA07C2624D359B5A6AADAD71D3C6D08D4F37AE68ADBBEE7BE8B1A79E7BE9B5B741FA8C30E248238F32EA68D34D3F29FF996636B3CC3ADBB28B545A61C595565E65D5D536B9B6FD0E3BEEB4F32EBBEEF61AB54754DF46CD3E45EEEBA8D947D414B170AECBBFA2C6CB39BF0C610527513123622E58229E150112DA296657B12138454E31BBAAA328A2236A362A38D32A6244302CEBE2B6AFB1FB15B92FE36662F856DCDC6791330ADD7F1139A3D03D22F73E6E1F446DB6837AFE044855289F5E7E036C5CB04A73A589937EFDECD3FA65C71E2ECED031A0324F8A618CDAE2AA1BC2F336F2AFD40636185BBAB505430442CC22DB6B8260D7C81E38C8754E1BB18A7ADFC3FBB28BD7EFABB8D856DE73EF92F9CBD440866B3027F0758B226AEA55BFE5BDECF90875440652E35F0F685E46FCD701CDB3893F1DD07C36E7EF0E68FEE4C4BF1DD0FCC9897F3BA0F9DBA8FC6940F3DD307F36A0F969DE3C0F68FE35117F94D9AB57AEDCE054AB48D83497EF735E29F53E4DD267976D7E771F622A63A2045AB0FC5D639404EF079B06385096679C51165CDC4E79FFFED3BC79013CC28854AEBE5C4198A4329B1FADDB1EAC9FE34A75DA596B0093B866005171E99E6D5C262157AAE53E1DD8E96070F0A9A76D639F7D448B8009A158277BE2D500BC5BCA1D841FC9F571C9012999B837E88847E63C6E4C3D8ABDA1846843FCFB9FE62F2E04541160B50F6F1321002C4BCFF19A156580E165AE10AAC9396DA6534748B6BBC654F25A7B80B5040B680BCC7D5E79661057EFE1A4BD5DBC1E29D1AF18F2C9ECE653045CA1D5F791781B88B96F6F7CEC0C43BADD293646D74F14A0F4DFB930B5DDAE2FC6FEFDA7697F79E1FD7357323B95A55B5657723BD39AC535833913E7C049FE0F5EF8DA09E6EFBDF0B513CC8B17364416FB29A598439A296D48B617190A1BAF0181869E5103BE24E75AAC567CEDE9947C1960366A63B58A6AB8B2A6BE02A2BD54EE321CC9724F29B6DB5CE6A5AA24FFCFEFE8FE99FD2659024CBB077A01209007AFDB75345771E8B7CEF0E72376CACD8784B7FCFBC170E61EEFDF8733BF9BF72FC399F7B3FDD970E633E77D7738F399F3BE3B9CF93A167F3F9CF99BD0FECD70E603E7754FCBC59DEC0E02318BF2233F2B4A7295BC865F910A0297D1B563ED39CBA0100C9887ECEF65D109501CE32E54F56F48C5F1A83594DEEEB131D02561D857BA1093BE9F42583765EF74B5728A35A4D1C585330F66D643CE7B40181A6B0D1B6F9643B642327EE467D969DCD30BFB9E7D55B9A5244BF28193D92677B93EB5D93C1BEDE4AF7D6CD9D6DDB015D3EAB7CDC293BE3F2A71F35CE3BC0D821407FA5C6E355A946E036D444695570B2334DA084822DA4A2BB323FD4D4AEECA26CD9167EAB3C275CC2A657BC368AE0D79206B045FB828E6AEB59AC3511FFC349FBD615FEDC7C5CF2025F3FB9A7402A5E0780C70066C1EE1782041D3EA116C9B50DAED95E3D3DBA3E90EF38B43F7F9D73EB8CC0CAA7985E6DFB8FA7DFC85D427034EFCFB525BF24A28874E907E5B6C722E3E7482402898F5258DDBB59FED355F1BFCB1BDC1A2B06E4B963B5776289BB294C1B06ACFEBCF79C448655F13C706B44F2EF4904BCB37061F442A9189BBD0681D03493BA24B71405275F4563DF3CC2BC67E12E3EADCCFF1EBBC869755319D699AC1DD349F918BC3E8B83C7E8E99124C679A69ECEED6D8CC254F3B7247BE2060E64EB60E989106B146E40A7444E34B3AE0F4E028347A488A4043D8D1D41A2288D28D47CDEA2A0CBF19B9D0CAFDB2D1BC37121BCBB930AADBBE14F2B8E4B5D9F3AD732B38F5EBFEF80E0BCC8B0902B76713A8407B5F7A9BC1350F335E1C25941CE74A731B22397E0C793543D8134F813C4C7936E4C911E67B9EF8DC11E67B9EF8DC11E67B9EF8DC11E67B9EF8DC11E67B9EF8DC11E67B9EF8DC11E67B9EF8DC11E687C591C55BF403B6D5253A20B3B380BEE69823F03FBD5F6274DFAD8B65D10479174E598EAF43803E5A407A5A3E8C19D25287E7FC766BB599B4D191026DDA9ADC25F88B66EC5A57F1F368E9B97F0740F316018F94BE85F491D1F8EDB99B78C2EA17A836AF58FD24FD89CA2DFE0F901EF1FFA5F437CF0DD05788FD95BDE6C5E017A6BB2D3954F7203A592C0591A4531EB87FB73407F9FB7560DF1CDCBF45C8AC43B1A82B41AC1AA69EAC0A5A1814AD2DFED97DB9F3C8131C7FA8D7893C1A5D36CDE4B75AADD796EB95AE3505F38EAEDFCEE10D77FDA22EA610DFEA28F3B742EA4FE24F0B51FF89F8336F171F7F2EFECC7BA37F26FECC7383E72851068B33773E95F96FBA1DFB0C6D40BED929EF71BA1FA1C58EF30220C3EBDA161BCAA943DB75EE0222AD8214CCC7E02B79CF4C6D8C5515426DB54CFD236DFA35B511943BC99D869DA65E4D6BCE8E6E618CDC5C5BA18C6EC765EB0A332779B885FE0A7DFD9451F5FD017D59A5F5885A09341BE71357F0F1D6148085ADB8A5B4268423CEC2B679CDAC85AC05889F81966B78B7E5650D2AE7D232511931D95656C12969E7E81139B658DB2E498F5E90C1D6D6CB5B975DC8738E959DB7330088F7F2E1ABDDB7D5B7CD0AEB8BCDB2EEC5E417831FE6F2CEABC1E6038BB1B7B7EB9B3AC0BC03FD757AB68F9DC22DC42A1FF9D4FC72EA2AB232D4FCCA5FF998EF727AF0D78A9FC7D0BC0DE2CF63681E413C4EF9AE4AFB9D91CD8B5BF8FE55B6943F45CF3CB9E676CCED165D70BBE5FA739298BFCB923F2789F9BE5AFC3849CCD33DB80216E9AD979A96034EAA4B75C50C93874A4D6857494522C12055907D9C4B77355F29A3F50D6160DE2B839FADB2998FD4C1F3D2E09B9541ADB1DA7CB6954A2195B517D7C6343D940E8C24F06EEAF4414DD86E770AA1CC95C2C8F42ED6017919485F1EACCD98241E5939FC6941F32762C23CAB9F9F8A09B39F9818D09FB5FB304B7254FAEABE35D715E839A2F053314A24B8B0333A5F804AEFA87ED266F8860D69E0EEE9D765698E3D1E22383D6A093AD2BFE3435C157BE13FE657B72B769666ADB88894700626234D123E9547B5884D623CA8499E1035DD3B1450D363AD49FB12380894EFB6E7EAA9C7CB303D48BEF65698784F9D2407EAF78007323DAF9DBE7A0B4DC445C213DA0EF10D2CB217040A1367C86B58DF8C4B850EF64249219D4B7196D298D3418BD54E87C80A5376C6147DD75667F655073896A72B2F7FB536F2BA46C23DA893894A29DA2DA65B1F1DFE5215723FEB6BE696CD84ECC76EDDD35CD350DB1163214F7B3D74B7217B5BD682E648DC16EC8C76A548DB5F937232B442D193E2E4D1F0CAE3824860BE041E2948E3B01CB5E7560C96185DE5BA932E6835A375E69B2DC41A56EFCD551B89523395C2AEDA1DA2A7476F280CE4F042DEF48D24424F45E6E55A18D4BF3B7092C013E555ACB5EC9E9037AE1793DB0912265B3B2D63F9A6BD0E029BA21D03B1E346F4B895DEE4A2EC68A9FAF2AE65C08B0059B85C032D83EF0A32F8026B3AF843FA366F81351456D8BD86014823AA6A6ADD11B54461679F402190D8917D2BDB9DC384FBF3953F099868E0F3BEA4AF3712D1BCD788DF5F16FB58672BFDB53AD76C23C411C5478709A2A740DBA6AD1F26E887965E62EFA39338950A4B703FF52BF90D19B59BC38AF25E0A30865B01C6E9CF34AC7FB90BA50CE05F75A9FC9A8D3E1AB4EEB078EBD051983F1ECAF8F8DF0C6564D67F3194B967F883A19227C516AF4562579B59E78895D51ADA80F3E058823CC86E7A159581580F61014243A165D3B073479135490C49466030C4AE76DDE7D1861A752AAE4C3016853146B874B06920BAA3AA8414E6A25D48E36B03A5C8F0E6FD88571FD52D244C31D57A42DFA64B2BF25297322EB604BA95155248E4909A4AA0124AB8623CCB01D72273913A45CB024C2FDB6C4425907FD296818F3DD6461FB656A172521D0E6809922EB46765A07EA69F2424E9BD0A8D82240526B53C9749BC7489BA903113EB98860336E09C9D87962F3B8533189F0C0F63380CAC25DC6171B4B605E4E73E5223A10E7DDB9979ED09E753588026AF542E7A7A816AA25DA275C901408FB7A4F03374B3090D778735F6FDCAAF172EA0983E8DF6822A8350E1181AA3CBE3733F6CDBD42ADA6F84D0F99CE989ABA5F00AB9429291695A4FC930E976F3DDE0EFEF266F5DC11A1A954CCF98C5639011790488CDB59C2B680E17030A3064FEA51341CEF3110046A8E86D5CC494F2B02135A45F0CDD0A5A5173B66BC127F9DAC075C06F560F62A268908470C7005FAF328AF27A3B290C3089CC0563AF66B66D8BDE10BAA514DC688E91E809F1C5B2282F7A2B802A22F11CBE2EA05F06CE486CD81955821B509A1B38360C87C37CCCB9218BA4ABAC6BD673FB0137211C2891596D3E1EA0DFAD5C5035BBA4330133F640A6A231CCCB36AA9ABFDC9D609F944B4579F6B285EAB4B51F72531BDEF2C7C86EFE0EDAFF8CECE6EFA0FDC30D8FC7064251F3E3CDD3EACDBD7873366D94C456CB2C6F366D24003FDAB6319F481040E76C0F30C73AD3E8C9528096928B91661EC264F6BD573B90011D0247D57A5A19D2D3CD19C26A914CEC38C6D7880201C2B4B6444B50AE70D140C588C8A5EFA6B2852F3A30A29DC1329DD146620438E90A68891864F0C15E7833AFD1EA72240F26109C99B3D63AF6753A9E406F7FF5BE112BF82B5B53C6513A4EFD9452E0A036926A8F725A35E508DE031361C6C78E4E895148A1B315A7FEC8EF68DABD0AF378ED7207C64875A5C582259C3D06A041D49F6C6ABF5E773FB96C4C8A211FE632735ABBF38ABAE6F35A53DFFC6AE0EFE611EDE09E0C7C98675EADA1D923092E22959732F3526D769C947B41B681FA342A346B2ED2A1355B80A2D02095B3FD4353D36AAC9E12CAA84580AB67AD8203C795445E48B0D55CC3A84A428BF704AF588A4CA76D5193D4234C86B03233AC801A263B20B6C72AFAB8B49F8308D61E9980FC3431D3D546D612552447B917C5FB06A6AC5F8F651FD20A5AE4E238758065372D3C2FF5689019CD182C83593A47EB7BE19E093668D3A7A4FD2B2B167213A6C5D2381D0826CC08C5769AD6582384746D2F4D4B5515E5B760D5874F5A32F39305DE8F5A32F39305DE8FD677CD4F16783F5ADFFDB0158540BADB344440ACE39EC95E18B8480DA6470B81A241C683D9DAB827F17408D6048BA4CC513CB272C5AE99BCB69B69C61B441261271890F274F443811E694C382F554FA6A9C9A2AF228B5236DE937E6B0BBD36DA851421EA9AF580A2B946BE4011802EB84E4057A0FE838D88A7B8B8059FF389EEA891120E4E69011BC09A4EA0374692B308B442CE6006A0829B970DE807BA273899644027C17CBCAD6541C07F0C657647E645916566AAD7423980500709AA52D5D33C6CDF921A50404BA76F296A6A01B7B403FE539381FCB32BDA79B96CD139600ABA0BDBBCCA52E7D220BB38005148AA08512DAEC2DB73525AFA5E4DA6ABBCB43A096CD2239EF404843A7039B5BE03F87AB212F2D5EA919BC8FBA5F3E37CCF747D015A8E5A6D361421DD95DD91B8DEA783E875E92E77828955197AEA82AAB156470475D21AA1D825EA2A16D15DD051851D2A62143D09FBC5468F3D973AE389964034EB1C07F73FBD46D041E741B701D04126296BB19A66508353BA7C51FD92A8FFD260DD2C6CFEBDC1BA59D87C45C31FB330826C17448EB59EB7E860F7854F684549C1862696F00E33A81D3F3BECDD495BD1B4A267E8D433848918CD3721A16E27D951EFF5532D809A50A3881E303C87721ABCBF6FB2D1769F1F4FBB8E4285DF365FAD8E7B9E0D4773761C5543DA6F24FADAD5B857D248AA49CBBECF2680BD01050ED6F2623E5CF762D431C9C8A9B7517A96E877B3CE61B317B35E7721977FB71D7BCC322FFBB1F7C193DFCC5A901D5DD5C3A5DC9ECEA4C32B1B99AEB24086D80AEEACA12EA7181DD6475BAC76E5C804EACCE71886B43035B9A7A72E749489D406C62918B48245EB90A89A5D104A90EB1E354273069225C5951A889374A91946D40230AC1CBC906BA18BA7D6A2889B305BD35CEE242BB8895C321FBEA133E757A7E7F1D42088F500282DA2FC76029494BCFA9DBA347EB8A1E36CF7FABA5E3D2F32413CF0E011DB74E6BE032530777F7EB56A456BD5ED528353414ACAB357B412493869F58EE37B469FA7A483FD76238ED17501B9BECE9239251B7AC66CA286108B2A8440CAE85101ADBEAD9C6103BAB6CE5D7A4E1370B117E83090EF1E1048F94A809105AEA419F4500595997C21E0673D5000A9A49279012C532D1D6E5FEE8A7AAC40CB39BD5E8B69F5F3E0432DD282BE1BF8E9707B3FABC79F73FB17D44E1CD0475ACA247D412A47D5D7A640AFD556E74DDE01A0050A24854B6E76EA19B4B5A34A65911FEB5E7686314D44171E746995F686B080CFA4761F124CCC8F4925909CF61ED702CB8E3ECD17B7D5DA00094D1AE83E3458AF7FDB85D0629CB81FBF84EB1F0E9ED881515BCA5F8F675CFFB26B746F1A9957DB1EA6FD74DBC7DCFB0DC73A19A766DC6B018454EA64DFD67A7EC6EB898E304885CCAAE57C18750EA8DDDA824E296E18F2AFEAB19620C9483F9D4E5EF13E0DED4020D04026EE5C494AB8CE41E55C898F73B61020DA9574462C7B7A915AEF8DE38EEE2DA8592BA940C6CC08F521F575548FAE365C4BC5B961581FE79E7A7428459DE8A6E18ED69CB3F7CEA2FF0766D063517B60C151C83803CD3168C329143D2439E0199ADB32112CF427A838D1F5D67349C6EBECBE9EC0A1C1471909D3463D47D5E8A14862F969D705442F417E823EB5A79E99A1E0B4DA8472C51746A7CC29C52D10AB42B4A6F3876F2FB7AF2312F07B4C2A47E7EE057800B0CFDD64BA43DDECAD09BF3E900164DCEE2D083CB43AE196F096791EB1E85F8C30DCEFD7C8641AB00D9FC11F5D4D69A9184789E18700869217A3234A5020243E58A83E17B59A4631311042A7ED9082FA81937D5E14F495B4D6CF85714D68C4255A5462EE312AA048F00BF59A4A01774AD27299D1F304A5E9D13ED482968CE23AF9DD035201949C99CC9536425E21B211CC88180D1AF27D122131A12B676353D6CEE158DC927B08DC751A0F223CE7C50927712D6BB6213CCB688BBEA111246C75F7730C643C3461CE62C9A5DAD23EBEC37DAB7BBFF48C979E974267D1E0DB884803244B45F6A659AA9650D465EB91A96DCF40CF6B266929F26A6B2E296680903E1E72D38324999E866A49AD21A9D145A8643AFD4EE2056786478DADE6DBCCB4C27061EB099A4EB4AFA7014465DB3980FDE1127D630C4BCBAE95FA1289C0A3FA4E480D6C55238A00F42403C8C6729D8662E34C3DA737B5B7D243404B044B1027BA44FDE1F0DA1C727945073F388AF61C5B8E80C8D93ABCCF429F5D5B72EA464C64E27C7316FADE524525F9C7C16A98F91CAB3E07AAFF71281D3EFD4F8632D6FF3743997B86FF3E947971D6BF0E657EF9FD7B43F5E003BDB80478419E47E3A9415EEAB6A61168C4D033010677E84AEF8426FE4AAA03A85C7B473480AA88ADF6CA8D02148F0B799874B82292A9D4D9A2F01BEDBC6D34BF3025AA8F02A135A5F703DD6BF714E42A394575127E917C5D7815C320BD9BA1E9A428AE7A5AC7E2BCD7334C31697B116CDF921628323F9D3680E8F666A499D293AC2940795DCBBF4D2B7A26AB77BD3AF4DA7D408FE324BA5F20441B9CF446B42134454BE77AF4D8F74DA27ADCB2325D2FDD4DD70E849841070805D9FB59B12931BEC16FA6302E6ACFC36260FF46399D1D5A90CA9DA58FE868DB052ED5699B0184D43AD2A52D82A06540753F5A4BB0B505171D8AB53B2A99B0F456F544D4DAF90CC470C1F5D4B5D81CC2D5CDA5676CCF1A08E012B44B3143402EDA682D72DD95713FA26FC3AC40559AF466DA86C6CDBE24FD4F08B435120A538BD2DF67FF400FDAD3C14E7C9BFD8913285F32DE41C4746D6D83E4954681805C82AD73EC09955AC785D0F20CA2B360DA9B4581E074988E41A70818B18C74646270914EE52F9AD144B0D6BCF722F53CF2A5FF3904034D59B34E4B8BC2D67E0EE80F371157EF133A36007C5BCB095A0311BE5E0A896FA0FFA0074BD05776C6A3C36E95A88554423BFAFAE6A1BFF3D3FCF1421F3D4ACEDAD5B4C639A3D5D3B948077420D986BEF3193ED1FF7100EAD20AFF45BF39CFC18F412BD2E800D68274D1038DDEA5778243B6DA42BF1021692D428CED271287FE270C73A1C357424B8D49AA363A6F46A9DA1E9F8FB58490B49CB9AAA87BA231B46100B1C108B18CAD9D5118C74390625132E8A2864EB5556DADBE3DD65F3723F5DCF450B5D74686C41CED2D3625D081C477264E0D9BB39E981CDA5D42485EDA322B7DEB09AF048089169DE66CB1D26A37682D51D4CE332DAD20381B8CE24915F6ACA72F3D3A72A16A07F7BD9F3070FA8FFC4A5D19D607AED6B24E46170D6E9549E0CB3ADCAA767D06245144246881D66A6D66FB58F6DBD969C9D1FC3F0FF1C994DB609C5800000006624B474400FF006F000070ACF0EE000000097048597300000B1200000B1201D2DD7EFC0000000774494D4507E806070E2120993BE677000013234944415478DAED9D6B6C5BE77D871FDE2491BAD117C997D851E83A4D13277686D5B58474B193A10D5AA369BC2D73A6A1BBC4F91060D8E6781FD6211896BA4B9B7DA8DD216801030DE20C9BDAA4C0ECB613BA1530EAA42EE2D4751B4771654B566459B22C369245911249913CE43E9054E5D692CEA1288AD4F93D0021517A0F7948BE0FFFEFFB7F2FC791C96410422C1EA7DE0221249310924908C92484904C42482621249310924908219984583EDC15708E5F05DA807B809A223C5E23E058A2734D0193AA5645E72A701EF8323050AE27E928D3E9442DC06BC0C34B58F1456532021C045E974CE622D13F4A22B100EF02BF2799E6E65BC001D513619218706FB934FDCA492689240A2104AC2A871329976CDE7E89240AC40F9C5664FA0D51C0AB7A2116C11F0067EC1E99BE2A91441138AEC8043780F5AA0BA208DCC5322623CA2132AD531D1045E2593B37F3F6A3F124513CDAEC2CD3067DFE62A5A089AE4248262124D36CDED547208AC86945262114998410924908C92484641242320921249310924908C92484641242482621249310924908219984904C42482621249310C234EE0A3DEFD7C85EB347AC2CFE4532959EE394C9FED24232A9992784641242320921998410924908C924846412423209212493109249889583DB06AF31A38F7959B1CD9521159984904C42482621249310423209219984904C424826218464124232092199841039EC3037EF4BFA9885642A0E2FE863166AE609219984904C4208C92484641242320921249310924908C924846412424826214A8836A1144B8D36A11442482621249310924908219984904C42482621249310423209219984904C42D80D6D4229846432CD0BFA98859A7942482621249310423209219984904C4208C92484641242320921998410924908C9244451D82E99968E3F05BE0F040123F7F3FBB9BFCF4746B7826FCBC97B92A9F8B881FF065E073E0734E75E7B73EEFEEBB9FFBB1195CECEE5AAD776A93CDF073EB340997DB9729F557D5C120E02EB80B6DCFD7B809A223F473D706ED6FDAADC7384255371F81B1322E5F94CAEFC3754F78B4614F096E8B922B99F7949E3402217A9D26AE62D9E3F5FE2F2627EBC257CAE0DB99F7F9213C9978B4EE9523CB91D22D38E252E2FCA87BF003E9D0B126F037DC0478071E0A6229310E6A901EE023603FF0B7C0AF8DB52886497C8746156A7D76C7951D9387211E97F72F70781AF29322D9EFF5AE2F2A27C85AACADDBE0A3C299916CF37801F9A2CFB4394C95B89788037805F027748A6C5F138706281322772E5C43290C964666E4BC883C055E0EF2453E1A4803F02F6033F007E4D365DFAEBDCFDFDB9FFA754AD4B2F9161184C4F4F138BC58846A3C4E37192C924E9F49264B4DDC0BFE7A29412108BE08DDCCD2A76D915B6117896E2CF4C00C0300C128904E3E3E300747777934C2689C7E384C361B66CD9C2E4E424757575F87C3E56AD5A456D6D2D1E8F0797CB85CBE5C2ED76E3F178703A171D071E243BA0FC69E04C513A694B1C5617620FF0E3028E7B0438ADEFF5A2B21FF8CF627EC1261209464747B974E9121D1D1D0B96F7F97C2493491C0E07D5D5D5F8FD7E1A1A1AF0FBFD783C1E7C3E1F8D8D8DAC5BB78EE6E666EAEBEBA9AEAE5EAC5819E0CFC8CECF5464128BE62070846C066CD102F5F6F672F2E449FAFBFB2D1D1B8D466F799C482482C3913D25A7D389C3E1A0AAAA8A8686065A5A5A080402DC79E79D343737535B5B8BDBED9E296F25A000DF213B26F58C64128BE15BC081C53E48381CE6BBDFFD2E6FBFFD76D1FB54F92622402A95221A8D120C06E9EAEAA2B9B9996DDBB671DF7DF7B169D3267C3E5F214231EB3D78463289651169787898575F7DD572142A8664D1689481810182C1208383836CDFBE9D9D3B772E9B50EA3349A48288C562747474143D12151C15DC6E7C3E1FB5B5B51C3C7890356BD62CE6E15E294428C964DF64C3B70BE923A5D3694E9F3E6D2AA1B01C42A552D9D18DF6F676F6ECD9B398E4C44BC03F4926B1242285C3615E7EF9E59237E94C576687E39641DF4020C0B3CF3E5B6894B29CE5934CF6A205E8A6803546172F5EE4E8D1A315F9A29F7BEE39B66DDB56C8A129602B3060A6B09660D88B53858874E2C4898A1069AEA4C3D1A3473971E244210FE906DE355B5832D92BE1F0914244EAECECAC8817385F2BABB3B393175F7C7126C56E01BFD9569064B2079F049EB672806118BCF8E28B15239219FAFBFB79E9A5970A116A77AEAF2999043FB09270300C83575E79A56C130DCB24D4AB66DA8462E537EFFC669B49F1789C37DE78839FFDEC67337FCF4F3075B95C15FF661886C1B56BD7387EFC38070E581A66F3925DA6B34F32D99316B3CDBB743A4D2412E1473FFA113FF9C94F66FE5E5555C5C68D1BD9BC79335EAFB7D0990565D3A78AC5620C0E0E72FEFC7956AF5ECDBE7DFBAC3CC4E773EFE9805D65CAC8A985450A8542F4F6F632343484D7EB25168B01B076ED5A76EEDCC9BDF7DE8BD7EBADF8D71A8BC5E8EEEEE6A73FFD299D9D9DECD8B1832D5BB6983DDC413623BA559149CC19913EF8E0034E9F3ECD071F7C704B7FC2EFF7B369D326D6AF5F8FDB5DF9D525954A118944F0FBFD0C0F0FF395AF7C85975F7ED9CA17C547C82674CE4826710B894482E1E161CE9E3DFB3B22E5FB4BF9C5794EA7936432B994AB609704A7D389C7E399791DF99F798E1C39C2F3CF3F6FE5218FDF2E3A49261B631806376FDEE4E2C58B5CB97265C10C57BE7C7F7F3F5353532CF3EC1973ED328783DADA5A0281006BD7AEBD6D99FEFE7ECE9D3BC7CE9D3B17159D24934DC964324C4F4F333C3CCCAF7EF52BA6A6A64C3509C7C7C73977EE1C43434385A4974B8ECBE562D3A64DF8FD7E56AF5E3DE7C4D763C78EB163C70EAAAAAACC3EF4BF929D0E27992453867038CCA54B97B871E386E928631806B1588C5028543132AD59B3C6D4B99E397386471F7DD4EC433FFC3BCD49552BFBF69582C120D7AE5D23994CEA0D013A3A3A08874D5F7DC641760C4F32D93D2AC5E371AE5DBBC6C8C888DE90599C3A75CA4AF1BD6AE64926262626B876ED1AD3D3D30575EA1D0E4745CC88C89FAB593A3B3BD9BB77AFD9BED37A660DE24A261B128BC5181E1E666464C452BF27BF3B505353138661544C36AFA9A989AAAA2AD3525DB870C14A66EF9FC92D71974C366DE205834142A190A5639D4E276BD7AEA5B5B595783C5E31AFB9A6A686B56BD7E2743A4D7D011C3B76CC8A4C7BD4CCB329A9548AB1B1310607074D251E66EF01EE72B9686C6CA4AEAEAE22A2D2ECE8941F744EA552A6F6340F87C33434349879F82D92C9A651299148303131C1E8E8E8CCE623F391482488C562333BAD3A1C0E3C1ECFCCFFD3E974598AE570386E19534AA7D3188641329924168B914824E63DFEF2E5CB66A39383EC5AA7D725938D48A7D34C4D4D596AE28D8D8DD1D3D383DBEDA6BEBE9EBABA3A1A1B1B71BBDD249349262626989A9A2AABE9454EA793DADA5A1A1B1BF1783CA45229262626989C9C241289D0D3D3C3D8D858319B7A9F924C368C4CC964924824623A8B170A85387FFE3C57AF5EC5EFF7F3C0030FF0C0030F505B5B4B3C1EA7BBBB9BF7DF7FBFACC6AA3C1E0FF7DF7F3F0F3EF8206EB79B783C4E4F4F0F5D5D5D844221C6C6C64C7D99241209B359BDDF5733CF66E4672F4C4E4E5A9AF170F3E64D42A1100D0D0DDC79E79D334D3BC330181F1FE7F2E5CBC4E3F1B268EE391C0E6A6A6AB8E38E3B66328EE9749A8989097A7B7B0987C3A69BA6A3A3A36CDCB8D1CCD3DE25996C46BECF631886A594785E9CDB55C27C6535D3FF2A657376AEF3B4F2BA2F5DBA6456A646D00C08DB914AA548A552455D316B3622E5B36A6EB7DBF2CDE572993EE76245480B5B3F3B14996C1899F2FDA652E3F57A59B76E1D7EBFBFA099138661100A8508068333AB80971A8B1BCAEC974C368B4AB158AC6495318FDBED261008B06BD7AE8257ECA6522946464678E79D77E8E9E92959B3D24212628364B219C96492E9E9E992260BAAAAAAD8B469135BB76E9D774DD142FDA0BABA3AAE5FBFCED5AB57CBAA8F36F3A5A1EA65AFC8148FC74BBE0E293F589C482448A55205CB947F8C329D7D71BF64B2114EA713A7D3597299128904FDFDFD343636B27EFDFA82FB4C232323F4F7F72F387BA19858488F6F954C36229F122FF5D209C330181E1E667272129FCF5770648A46A384C3E1B25DE12B996C84CBE5B2B414A1D87DB5B1B1316EDEBCB9A8E6623923996C28D4EC89AAA5A692669B03AC5AB5CA6CD1710DDADA3032AD843DC34BF99E99E44DC96423F217515EC4D5C8C53C48263B7DD84E275555558A4E16B0B08F9E64B2130E87039FCF476363A322930902818095E25F974C36FCA6ADAFAF5FD62444A5D0D6D6A6669E983B32555757B366CD1A4BCD17BB72D75D77992D1A924C36C4ED76535757A7248409366CD860B6E89864B2A94CB5B5B5783C9E8A1BF3293516AED9D425996CDAD4F37ABDD4D5D5E9CD9887BD7BF75A29FE1DC964E36FDC0D1B362809310F0F3FFCB0D9A219E075B0C774A22FADE44033EB03FD2C606A6F2A9FCF473299C4EBF5EA0A187360611A5170A6096D83F7E58515FCDA1A002F304176F3F8FB73F7E7A5A6A6860D1B36F0E69B6FCA9ADBD0DEDE6E6566FBD9FC2F6AE65536E1DC37631C7815F806B0E06E900E8783871E7A48EFDE1C7CFCE31FB752FC6B926965E0FCADDFBF9913CC54BF69D7AE5DC5696B96598A7D31E7D3D6D666768F718018B3AE6BAB2518952F533AF7B32117A14600BF9983F7EFDFCF3BEFBC537085CD6FDD6521855C12BC5EEFCCD66056C57AE28927AC14EF987D4732553647817F00126447E143C061E03560C1545D4343036D6D6D56F687BB05B7DBCDC68D1BF9C4273E5156AB5F5D2E171B376EB4BC0B525B5B1B6BD6ACB172C89725D3CAE1A5DBFCED7BC075725BF62EC417BEF0858265AAA9A9E1EEBBEFA6A5A5A5AC0680F31765ABA9A9B174DC934F3E69A5781FB92B064AA695C1F5DFBA5F054481F7CDCA545555457B7B3B1D1D1D0B96CD6432A452A9992B5EB85CAEB21EFCCD6FBA99DFBE793EE1DBDBDBADF495009EFF9D48ADFA58F1DC41766E581CA8237B8DD54EB257B43355D3F7ECD9C35B6FBDC5D0D0D0BCE5F2FB388C8E8EE2743A2B624D9461188C8E8E32363636EF98DAEEDDBBAD3C6C88DC40AD645AB9D1E966EEF64BB259BDFF0016ACF14EA793A79F7E9AC3870FCF5B2E1E8FD3DBDB8BCBE5A2A9A9A96264FAF0C30FE9EDED9DF3D2A1870F1FB6FA5A6E3B11C0B1CC6DDD3DC08F0B38EE42EEDB41CC4F2B506DA6603299E4C68D1B9C3C7992AEAEAE399B442E978BEAEA6A3C1E4F45CC3ACFEFAD3E3D3D7DDB24497B7B3B8F3EFAA8D5A874DBE911951A9976C893E2E2F178686A6AA2B5B5950F3FFC90919191DB0A651806D1687445BCE6402060552480CFCD19E1558D441EAFD7CB3DF7DCC3EEDDBB696E6E5ED1EB9D0281005FFCE217AD1EF62EB30669D56712F3D2D8D8486B6B2B6EB79B5FFCE217F4F6F6AEC8C9B0870E1DB2DA4FCA00F38EE82EB74CEAF79421757575ECDAB58B75EBD6E1F57AE9EAEA2AE9FEDE4BCD9123470A99B5F16FFCD6B852B92520F2C68B32ECB8C76231AE5CB9C2A953A7B87CF972595EC6A510912C8E2741768076EB4285CAA1CFF43D55DDF2237FA1E59696165A5B5BD9BC797345EFB51708043876EC582122C5803F3453B01CFA4C2781CFABFA961F4EA793BABA3A3EFAD18F924EA7397BF62C030303C462B18ADA3F62EFDEBD3CFEF8E3857C196480BF5EA879574ECD3C80AB6447EE4519621806914884A1A121BABBBBB972E50A7D7D7D1571EECF3DF71CDBB66D2BF4F05780674C47F33291690F850DDE8A12914EA7999E9E666262829191112E5FBECC7BEFBDC7E8E868595E2F29100870E8D0A1C52C0F3909ECB3D4342EA370FD75E0EF556DCB3B2991BFA466381CA6AFAF8F9FFFFCE7F4F4F4108FC7CBA6E9B7C868643AE150CE32011C07FE52D5B67222553018E4E2C58B5CB87081EBD7AF333D3D5DB27370B95CB744C5A79E7A8A471E7964B1899282442A4799000E925DF4262A44AAC9C949060606E8EBEBE3E2C58B8C8F8F13894448A7D34B12ADF2EB95F2E21E387080EDDBB7176397DA82452A579920BB16E70545A9CA21994C32313141301864707090EBD7AF333434C4C4C404D3D3D3A4D3E9995B21756EF6E699535353343535F1D8638FF1B18F7DEC9665EACB255239CB345BAA2772090ABFAAEC92720FB07EB151CA300CA6A6A6989A9A626464846030C8F0F0F0CC04D9482442341ABD25BD9E6F96E5FB64994C66E62A8735353554575793C96458BD7A35F7DD771F77DF7D377EBF1F8FC783DBED2EC61C424B59BB4A95499496FDC0B7F9CDE6968B4A5424934952A914F1787C2613180E87B974E912D16894BEBE3E42A15B679435343410080470BBDD040201EAEBEB696A6AC2EBF5525F5F4F4D4D0D1E8F07A7D3590C8932C021B2C92F249328362D64674717AD25905FE69EC7308C99C4413A9DC6E974CE44A9FC1CC0FCE56F80990D210BDD71680E62C0A7996716B86412C5E204D99929255D87918F6A798966D7CF222E097933D775282A5ACF24E6621FF030259ED9EF7038703A9D33D1281F898A188D9E5A0A912493588833649768BF0254F294F14CEE35F8B8CD46286AE689E5E84BBD968B568E0A92E82DB2432C034BFD649249142AD54394EF4AED924A24994431F816F0C794CF18608CECFEDFCF2CC7934B26510C3E4976CFF3C730717DA82510E8FFC85EDAE5CC72BE0992492C85587F453663D6B2044DC154AEE9769AECC4E833E5F2C2259328451F6B1FB09B6C6630BFE761F53C512C054CE67EBF008C931D1B3A51CA3E9055FE1F4F82992B4FB5DA390000000049454E44AE426082,20,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_history`
--

LOCK TABLES `workflow_resource_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_history` DISABLE KEYS */;
INSERT INTO `workflow_resource_history` VALUES (34,5,'FORMS_FORM_RESPONSE',2,16,'2024-06-07 15:56:39','auto'),(35,5,'FORMS_FORM_RESPONSE',2,11,'2024-06-07 15:56:54','auto'),(36,5,'FORMS_FORM_RESPONSE',2,17,'2024-06-07 15:56:54','auto'),(39,6,'FORMS_FORM_RESPONSE',1,1,'2024-09-11 12:12:52','auto'),(40,6,'FORMS_FORM_RESPONSE',1,2,'2024-09-11 12:13:05','auto'),(41,6,'FORMS_FORM_RESPONSE',1,7,'2024-09-11 12:13:05','auto');
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
INSERT INTO `workflow_resource_workflow` VALUES (5,'FORMS_FORM_RESPONSE',7,2,4,0),(6,'FORMS_FORM_RESPONSE',2,1,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_state`
--

LOCK TABLES `workflow_state` WRITE;
/*!40000 ALTER TABLE `workflow_state` DISABLE KEYS */;
INSERT INTO `workflow_state` VALUES (1,'Demande de contact déposée','Une demande de contact rentre dans le workflow. L\'affectation aux entités organisationnelles est réalisée en tâche automatique sur cet état.',1,1,0,NULL,1,'9fbb58ee-1d0d-11ef-8590-0242ac180003'),(2,'Demande en cours d\'instruction','La demande de contact est en cours d\'instruction. L\'usager a été notifié.',1,0,0,NULL,2,'9fbb5c42-1d0d-11ef-8590-0242ac180003'),(3,'Demande clôturée','La demande a été traitée, l\'usager en a été informé. Dans un an, les informations à anonymiser le seront.',1,0,0,NULL,4,'9fbb5d15-1d0d-11ef-8590-0242ac180003'),(4,'En attente d\'informations','La sollicitation a fait l\'objet d\'une demande d\'informations complémentaires. L\'agent est en attente de l\'usager',1,0,0,NULL,3,'9fbb5da0-1d0d-11ef-8590-0242ac180003'),(5,'Sollicitation supprimée','Sollicitation supprimée',1,0,0,NULL,6,'9fbb5e26-1d0d-11ef-8590-0242ac180003'),(6,'Dossier déposé','La réponse au formulaire rentre dans le workflow. ',2,1,0,NULL,1,'9fbb5eab-1d0d-11ef-8590-0242ac180003'),(7,'Dossier en instruction','L\'usager a été notifié. Il est possible de clôturer le dossier depuis cet état ou de demander des compléments/corrections à l\'usager.',2,0,0,NULL,2,'9fbb5f17-1d0d-11ef-8590-0242ac180003'),(8,'Demande refusée','La demande ne peut être traitée pour différentes raisons.',2,0,0,NULL,3,'9fbb5f8c-1d0d-11ef-8590-0242ac180003'),(9,'Dossier traité','La demande a été traitée et l\'acte mis au courrier',2,0,0,NULL,4,'9fbb600a-1d0d-11ef-8590-0242ac180003'),(10,'Dossier en attente de correction','Une demande de correction a été envoyée à l\'usager. On attend son renvoi.',2,0,0,NULL,5,'9fbb6076-1d0d-11ef-8590-0242ac180003'),(11,'Dossier en attente de complément','La demande ne peut être traitée car elle semble incomplète. En attente de complément.',2,0,0,NULL,6,'9fbb60fe-1d0d-11ef-8590-0242ac180003'),(12,'Demande anonymisée','Passé le délai configuré, les informations relatives aux données personnelles sont remplacées.',2,0,0,6,7,'9fbb631b-1d0d-11ef-8590-0242ac180003'),(13,'Demande Archivée/Supprimée','Passé le délai renseigné dans la configuration, la demande est supprimée',2,0,0,5,8,'9fbb63dd-1d0d-11ef-8590-0242ac180003'),(14,'Sollicitation anonymisée','Les informations qui ont été configurées pour être anonymisées sont désormais effectivement dégradées. Dans trois ans l\'ensemble des données seront supprimées.',1,0,0,NULL,5,'756f6d22-fe32-4dec-a554-4300107939be'),(15,'Archivage temp','Archivage temp',1,0,0,NULL,7,'988df050-9c53-4481-a78b-fd38c0229c01');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task`
--

LOCK TABLES `workflow_task` WRITE;
/*!40000 ALTER TABLE `workflow_task` DISABLE KEYS */;
INSERT INTO `workflow_task` VALUES (1,'taskUnitAssignmentAutomatic',1,1,'9fcf3bb8-1d0d-11ef-8590-0242ac180003'),(2,'taskTypeArchive',1,2,'9fcf3e5c-1d0d-11ef-8590-0242ac180003'),(3,'taskTypeArchive',7,1,'9fcf3f00-1d0d-11ef-8590-0242ac180003'),(4,'taskTypeArchive',8,1,'9fcf3f78-1d0d-11ef-8590-0242ac180003'),(5,'taskTypeArchive',9,1,'9fcf414c-1d0d-11ef-8590-0242ac180003'),(6,'taskNotifyGru',2,1,'9fcf4209-1d0d-11ef-8590-0242ac180003'),(7,'taskUnitAssignmentManual',3,1,'9fcf435e-1d0d-11ef-8590-0242ac180003'),(8,'taskTypeComment',3,2,'9fcf43de-1d0d-11ef-8590-0242ac180003'),(9,'taskNotifyGru',3,3,'9fcf4430-1d0d-11ef-8590-0242ac180003'),(10,'taskUnitAssignmentManual',4,1,'9fcf447e-1d0d-11ef-8590-0242ac180003'),(11,'taskUnitAssignmentManual',10,1,'9fcf44cd-1d0d-11ef-8590-0242ac180003'),(13,'completeFormResponseTypeTask',6,1,'9fcf4517-1d0d-11ef-8590-0242ac180003'),(14,'taskNotifyGru',6,3,'9fcf4560-1d0d-11ef-8590-0242ac180003'),(15,'taskTypeComment',6,2,'9fcf45aa-1d0d-11ef-8590-0242ac180003'),(16,'taskNotifyGru',5,2,'9fcf45f3-1d0d-11ef-8590-0242ac180003'),(17,'taskTypeComment',5,1,'9fcf4640-1d0d-11ef-8590-0242ac180003'),(19,'taskNotifyGru',11,1,'9fcf4782-1d0d-11ef-8590-0242ac180003'),(20,'taskUnitAssignmentAutomatic',11,2,'9fcf47cd-1d0d-11ef-8590-0242ac180003'),(22,'resubmitFormResponseTypeTask',12,1,'9fcf48a1-1d0d-11ef-8590-0242ac180003'),(23,'taskTypeComment',12,2,'9fcf48ff-1d0d-11ef-8590-0242ac180003'),(24,'taskNotifyGru',12,3,'9fcf495b-1d0d-11ef-8590-0242ac180003'),(26,'taskTypeComment',13,2,'9fcf49af-1d0d-11ef-8590-0242ac180003'),(27,'taskNotifyGru',13,3,'9fcf4a01-1d0d-11ef-8590-0242ac180003'),(28,'completeFormResponseTypeTask',13,1,'9fcf4a54-1d0d-11ef-8590-0242ac180003'),(29,'taskNotifyGru',14,1,'9fcf4aa9-1d0d-11ef-8590-0242ac180003'),(30,'taskTypeComment',15,1,'9fcf4af5-1d0d-11ef-8590-0242ac180003'),(31,'taskNotifyGru',15,2,'9fcf4b46-1d0d-11ef-8590-0242ac180003'),(32,'taskTypeArchive',16,1,'9fcf4b9a-1d0d-11ef-8590-0242ac180003'),(33,'taskTypeArchive',16,2,'9fcf4bf9-1d0d-11ef-8590-0242ac180003'),(34,'taskTypeArchive',17,1,'9fcf4c59-1d0d-11ef-8590-0242ac180003'),(35,'taskTypeArchive',17,2,'9fcf4cb6-1d0d-11ef-8590-0242ac180003'),(36,'taskTypeArchive',18,1,'9fcf4d0a-1d0d-11ef-8590-0242ac180003'),(37,'taskTypeArchive',18,2,'9fcf4d72-1d0d-11ef-8590-0242ac180003'),(38,'taskTypeArchive',19,1,'9fcf4dcd-1d0d-11ef-8590-0242ac180003'),(39,'taskTypeArchive',19,2,'9fcf4e20-1d0d-11ef-8590-0242ac180003'),(40,'taskTypeArchive',20,1,'9fcf4e76-1d0d-11ef-8590-0242ac180003'),(41,'taskTypeArchive',20,2,'9fcf4ed2-1d0d-11ef-8590-0242ac180003'),(42,'taskTypeArchive',21,1,'9fcf4f2e-1d0d-11ef-8590-0242ac180003'),(43,'taskTypeArchive',21,2,'9fcf4f85-1d0d-11ef-8590-0242ac180003'),(44,'taskTypeArchive',22,1,NULL),(45,'taskUnitAssignmentAutomatic',16,3,NULL);
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
INSERT INTO `workflow_task_archive_cf` VALUES (2,5,'DELETE',1095),(3,5,'DELETE',1095),(4,5,'DELETE',1095),(5,14,'ANONYMIZE',365),(32,13,'DELETE',1825),(33,12,'ANONYMIZE',365),(34,13,'DELETE',1825),(35,12,'ANONYMIZE',365),(36,13,'DELETE',1825),(37,12,'ANONYMIZE',365),(38,13,'DELETE',1825),(39,12,'ANONYMIZE',365),(40,13,'DELETE',1825),(41,12,'ANONYMIZE',365),(42,13,'DELETE',1825),(43,12,'ANONYMIZE',365),(44,5,'DELETE',1095);
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
INSERT INTO `workflow_task_archive_resource` VALUES (1,2,'2024-03-12 15:32:04',NULL,0),(1,3,'2024-03-12 15:39:35','2024-09-11 12:09:57',1),(1,4,'2024-03-12 15:47:39',NULL,0),(4,2,'2024-06-05 14:36:31',NULL,0),(4,3,'2024-06-05 14:36:57','2024-09-11 12:09:57',1),(5,32,'2024-06-07 15:56:39',NULL,0),(5,33,'2024-06-07 15:56:39',NULL,0),(5,34,'2024-06-07 15:56:54',NULL,0),(5,35,'2024-06-07 15:56:54',NULL,0),(6,2,'2024-09-11 12:12:52',NULL,0),(6,3,'2024-09-11 12:13:05',NULL,0);
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
INSERT INTO `workflow_task_comment_config` VALUES (8,'Indiquer le service auquel la sollicitation doit être transférée',1,0),(15,'Indiquer les informations manquantes pour le traitement de la sollicitation',1,0),(17,'Motif de la clôture du dossier',1,0),(23,'Indiquer le champ à corriger',1,0),(26,'Indiquer le champ à compléter',1,0),(30,'Motif du refus',1,0);
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
INSERT INTO `workflow_task_complete_response_history` VALUES (23,13,42,0,'Bonjour,\r\nJ\'ai repéré un nid-de-poule, au niveau du 12, avenue de la République de CiteLibre. Cela devient dangereux. Une intervention est-elle prévue prochainement?\r\nMerci'),(25,13,42,0,'Bonjour,\r\nJ\'ai repéré un nid-de-poule, au niveau du 16, avenue de la République de CiteLibre. Cela devient dangereux. Une intervention est-elle prévue prochainement?\r\nMerci');
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
INSERT INTO `workflow_task_notify_gru_cf` VALUES (6,'notifygru-forms.ProviderService.@.1','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Accusé de réception de votre sollicitation n°${position_43!} sur le thème ${position_5!}','<p>Bonjour&nbsp; ${position_2!} ${position_1!},</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande &agrave; nos services.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service&nbsp;concern&eacute; a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>&nbsp;</p>\r\n<p>Pour rappel votre demande, point&eacute;e sur la th&eacute;matique \"${position_5!}\" porte sur le message suivant :</p>\r\n<p>${position_42!}</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','Mairie de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(9,'notifygru-forms.ProviderService.@.1','workflow-notifygru.commentMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation n°${position_43!} a été transférée au service concerné','<p>Bonjour&nbsp;${position_2!} ${position_1!},</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction votre dossier a &eacute;t&eacute; transf&eacute;r&eacute; au service&nbsp;${comments!}.</p>\r\n<p>Votre dossier est toujours en cours d\'instruction et vous obtiendrez une r&eacute;ponse par ce nouveau service.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(14,'notifygru-forms.ProviderService.@.1','workflow-notifygru.commentMarkerProvider;workflow-forms.completeFormResponseMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre sollicitation n°${position_43!} nécessite quelques précisions','<p>Bonjour&nbsp;${position_2!} ${position_1!},</p>\r\n<p><br /> Apr&egrave;s une premi&egrave;re instruction, il nous manque les pr&eacute;cisions suivantes pour pouvoir traiter votre demande&nbsp;n&deg;${position_43!} :&nbsp;${comments!}</p>\r\n<p>Merci de bien vouloir apporter les compl&eacute;ments d\'informations accessibles sur <a href=\"${complete_form_url!}\">cette page</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(16,'notifygru-forms.ProviderService.@.1','workflow-notifygru.commentMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Traitement de votre demande n°${position_43!}','<p>Bonjour&nbsp;${position_2!} ${position_1!},</p>\r\n<p><br /> Apr&egrave;s instruction, votre dossier de sollicitation&nbsp;n&deg;${position_43!} a &eacute;t&eacute; cl&ocirc;tur&eacute;.</p>\r\n<p>Les services en charge vous indiquent que : ${comments!}</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; notre service num&eacute;rique de sollicitation</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(19,'notifygru-forms.ProviderService.@.4','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Accusé de réception de votre demande d\'acte de mariage n°${position_87!}','<p>Bonjour ${position_83!}&nbsp; ${position_84!},</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande d\'acte de mariage.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service d\'&eacute;tat civil a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>Pour rappel, l\'acte demand&eacute; concerne un mariage ayant eu lieu le&nbsp;${position_59!} &agrave;&nbsp;${position_58!}.&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(24,'notifygru-forms.ProviderService.@.4','workflow-notifygru.commentMarkerProvider;workflow-forms.resubmitFormResponseMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre demande d\'acte de mariage n°${position_87!} nécessite votre attention','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s une premi&egrave;re instruction, il semblerait qu\'une erreur se soit gliss&eacute;e lors de la saisie de votre demande dans le champ&nbsp;:&nbsp;${comments!}</p>\r\n<p>Merci de bien vouloir apporter une correction sur <a href=\"${resubmit_form_url!}\">cette page</a> afin que nous puissions poursuivre l\'instruction.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(27,'notifygru-forms.ProviderService.@.4','workflow-notifygru.commentMarkerProvider;workflow-forms.completeFormResponseMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Votre demande d\'acte de mariage n°${position_87!} nécessite votre attention','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s une premi&egrave;re instruction, il semblerait que nous n\'ayons pas les informations suffisantes pour y r&eacute;pondre. Pourriez-vous&nbsp;compl&eacute;ter vos saisie&nbsp;du champ&nbsp;:&nbsp;${comments!}</p>\r\n<p>Merci de bien vouloir apporter le compl&eacute;ment sur <a href=\"${complete_form_url!}\">cette page</a> afin que nous puissions poursuivre l\'instruction.</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(29,'notifygru-forms.ProviderService.@.4','',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Traitement de votre demande d\'acte de mariage n°${position_87!}','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s instruction de votre demande, votre acte de mariage a &eacute;t&eacute; post&eacute; &agrave; l\'adresse&nbsp;${position_78!}. Votre demande&nbsp;a &eacute;t&eacute; donc &eacute;t&eacute; cl&ocirc;tur&eacute;e.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; notre service num&eacute;rique de sollicitation</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(31,'notifygru-forms.ProviderService.@.4','workflow-notifygru.commentMarkerProvider',0,0,2,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Au sujet de votre demande d\'acte de mariage n°${position_87!}','<p>Bonjour&nbsp;${position_83!} ${position_84!},</p>\r\n<p><br />Apr&egrave;s instruction de votre demande, nous ne pouvons donner suite &agrave; votre demande ${position_78!}. En effet : ${comments!}.</p>\r\n<p>&nbsp;</p>\r\n<p>Merci d\'avoir utilis&eacute; notre service num&eacute;rique de sollicitation</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0);
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
INSERT INTO `workflow_task_notify_gru_history` VALUES (35,19,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Accusé de réception de votre demande d\'acte de mariage n°1','<p>Bonjour test&nbsp; test,</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande d\'acte de mariage.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service d\'&eacute;tat civil a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>Pour rappel, l\'acte demand&eacute; concerne un mariage ayant eu lieu le&nbsp;01/06/2024 &agrave;&nbsp;Terminone 20167 Peri.&nbsp;</p>\r\n<p>La ville de CiteLibre</p>','Ville de CiteLibre - Service Etat Civil','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - AbstractNotificationTransportRest.send invalid response : warning',0),(40,6,0,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,0,'Accusé de réception de votre sollicitation n°1 sur le thème Espace Public','<p>Bonjour&nbsp; Citoyen&nbsp; CiteLibre,</p>\r\n<p>&nbsp;</p>\r\n<p>Nous accusons bonne r&eacute;ception de votre demande &agrave; nos services.</p>\r\n<p>&nbsp;</p>\r\n<p>Le service&nbsp;concern&eacute; a bien&nbsp;re&ccedil;u votre sollicitation et vous r&eacute;pondra dans les plus brefs d&eacute;lais.</p>\r\n<p>&nbsp;</p>\r\n<p>Pour rappel votre demande, point&eacute;e sur la th&eacute;matique \"Espace Public\" porte sur le message suivant :</p>\r\n<p>Bonjour,\r\n\r\nPourriez-vous, s\'il vous plaît, installer un feu de circulation à l\'angle de l\'avenue de la République et de la rue Jean Jaurès?\r\nCette intersection est dangereuse.\r\n\r\nBien cordialement\r\nCitoyen Citelibre</p>\r\n<p>&nbsp;</p>\r\n<p>La ville de CiteLibre</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','Mairie de CiteLibre','','',1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'error','LibraryNotifyGru - Error HttpAccessTransport.doPostJSON on URL [http://localhost:8080/serviceEZ/rest/grusupply/notification] : ',0);
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
INSERT INTO `workflow_task_unittree_information` VALUES (3,1,'ASSIGNED_UNIT','Voirie'),(19,10,'ASSIGNED_UNIT','Espace Public'),(19,10,'ASSIGNOR_UNIT','Voirie'),(20,11,'ASSIGNED_UNIT','Voirie'),(20,11,'ASSIGNOR_UNIT','Espace Public'),(21,7,'ASSIGNED_UNIT','Petite Enfance'),(21,7,'ASSIGNOR_UNIT','Voirie'),(22,7,'ASSIGNED_UNIT','Voirie'),(22,7,'ASSIGNOR_UNIT','Petite Enfance'),(29,20,'ASSIGNED_UNIT','Etat Civil'),(31,1,'ASSIGNED_UNIT','Voirie'),(35,20,'ASSIGNED_UNIT','Etat Civil'),(39,1,'ASSIGNED_UNIT','Voirie');
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
INSERT INTO `workflow_task_unittree_unit_assignment_cf` VALUES (1,'create','ParametrableUnitSelection'),(7,'transfer','UnitSelectionFromAll'),(10,'assign_up','UnitSelectionParent'),(11,'transfer','UnitSelectionAssignor'),(20,'create','UnitSelectionSpecificUnit'),(45,'create','UnitSelectionSpecificUnit');
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
INSERT INTO `workflow_task_unittree_unit_selection_specific_unit_cf` VALUES (20,2),(45,2);
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
INSERT INTO `workflow_workflow` VALUES (1,'Contacter ma mairie','Workflow de distribution des demandes au sein des services compétents','2024-03-05 16:38:00',1,'all','9fb11dcf-1d0d-11ef-8590-0242ac180003'),(2,'Demande d\'acte de mariage','Workflow de suivi des demandes d\'actes permettant de notifier les demandeurs à chaque étape, de demander des compléments et corrections, et de l\'instruction','2024-03-14 16:29:11',1,'all','9fb127db-1d0d-11ef-8590-0242ac180003');
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

-- Dump completed on 2024-09-11 14:27:19
