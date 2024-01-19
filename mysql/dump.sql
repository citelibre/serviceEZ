-- MariaDB dump 10.19  Distrib 10.5.23-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: citelibreForms
-- ------------------------------------------------------
-- Server version	10.5.23-MariaDB

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

CREATE DATABASE lutece;

USE lutece;

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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_dashboard`
--

LOCK TABLES `core_admin_dashboard` WRITE;
/*!40000 ALTER TABLE `core_admin_dashboard` DISABLE KEYS */;
INSERT INTO `core_admin_dashboard` VALUES ('usersAdminDashboardComponent',1,1),('searchAdminDashboardComponent',1,2),('editorAdminDashboardComponent',1,3),('autoIncludesAdminDashboardComponent',1,4),('featuresAdminDashboardComponent',1,5),('xslExportAdminDashboardComponent',1,6),('myluteceAuthenticationFilterAdminDashboardComponent',1,3),('workflowAdminDashboardComponent',1,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_right`
--

LOCK TABLES `core_admin_right` WRITE;
/*!40000 ALTER TABLE `core_admin_right` DISABLE KEYS */;
INSERT INTO `core_admin_right` VALUES ('CORE_ADMIN_SITE','portal.site.adminFeature.admin_site.name',2,'jsp/admin/site/AdminSite.jsp','portal.site.adminFeature.admin_site.description',1,NULL,'SITE','ti ti-home-edit','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-site',1,0),('CORE_ADMINDASHBOARD_MANAGEMENT','portal.admindashboard.adminFeature.right_management.name',0,NULL,'portal.admindashboard.adminFeature.right_management.description',0,'','SYSTEM','ti ti-dashboard',NULL,8,0),('CORE_CACHE_MANAGEMENT','portal.system.adminFeature.cache_management.name',0,'jsp/admin/system/ManageCaches.jsp','portal.system.adminFeature.cache_management.description',1,'','SYSTEM','ti ti-clock-edit',NULL,1,0),('CORE_DAEMONS_MANAGEMENT','portal.system.adminFeature.daemons_management.name',0,'jsp/admin/system/ManageDaemons.jsp','portal.system.adminFeature.daemons_management.description',0,'','SYSTEM','ti ti-timeline-event',NULL,7,0),('CORE_DASHBOARD_MANAGEMENT','portal.dashboard.adminFeature.dashboard_management.name',0,NULL,'portal.dashboard.adminFeature.dashboard_management.description',0,'','SYSTEM','ti ti-layout-dashboard',NULL,9,0),('CORE_EDITORS_MANAGEMENT','portal.admindashboard.editorManagement.right.name',2,NULL,'portal.admindashboard.editorManagement.right.description',1,'','SYSTEM','ti ti-tools',NULL,10,0),('CORE_FEATURES_MANAGEMENT','portal.admin.adminFeature.features_management.name',0,NULL,'portal.admin.adminFeature.features_management.description',0,'','SYSTEM','ti ti-apps',NULL,6,0),('CORE_LEVEL_RIGHT_MANAGEMENT','portal.users.adminFeature.level_right_management.name',2,NULL,'portal.users.adminFeature.level_right_management.description',0,'','MANAGERS','ti ti-list-detail',NULL,4,0),('CORE_LINK_SERVICE_MANAGEMENT','portal.insert.adminFeature.linkService_management.name',2,NULL,'portal.insert.adminFeature.linkService_management.description',0,NULL,NULL,'ti ti-link',NULL,1,0),('CORE_LOGS_VISUALISATION','portal.system.adminFeature.logs_visualisation.name',0,'jsp/admin/system/ManageFilesSystem.jsp','portal.system.adminFeature.logs_visualisation.description',1,'','SYSTEM','ti ti-list-search',NULL,4,0),('CORE_MAILINGLISTS_MANAGEMENT','portal.mailinglist.adminFeature.mailinglists_management.name',2,'jsp/admin/mailinglist/ManageMailingLists.jsp','portal.mailinglist.adminFeature.mailinglists_management.description',0,'','MANAGERS','ti ti-mail-cog',NULL,5,0),('CORE_PAGE_TEMPLATE_MANAGEMENT','portal.style.adminFeature.page_template_management.name',0,'jsp/admin/style/ManagePageTemplates.jsp','portal.style.adminFeature.page_template_management.description',0,'','STYLE','ti ti-layout-board',NULL,1,0),('CORE_PLUGINS_MANAGEMENT','portal.system.adminFeature.plugins_management.name',0,'jsp/admin/system/ManagePlugins.jsp','portal.system.adminFeature.plugins_management.description',1,'','SYSTEM','ti ti-apps-filled',NULL,5,0),('CORE_PROPERTIES_MANAGEMENT','portal.site.adminFeature.properties_management.name',2,'jsp/admin/ManageProperties.jsp','portal.site.adminFeature.properties_management.description',0,NULL,'SITE','ti ti-checklist','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-properties',2,0),('CORE_RBAC_MANAGEMENT','portal.rbac.adminFeature.rbac_management.name',0,'jsp/admin/rbac/ManageRoles.jsp','portal.rbac.adminFeature.rbac_management.description',0,'','MANAGERS','ti ti-user-check',NULL,1,0),('CORE_RIGHT_MANAGEMENT','portal.users.adminFeature.right_management.name',0,'jsp/admin/features/ManageRights.jsp','portal.users.adminFeature.right_management.description',0,'','MANAGERS','ti ti-gavel',NULL,6,0),('CORE_ROLES_MANAGEMENT','portal.role.adminFeature.roles_management.name',2,'jsp/admin/role/ManagePageRole.jsp','portal.role.adminFeature.roles_management.description',0,'','USERS','ti ti-list-check',NULL,2,0),('CORE_SEARCH_INDEXATION','portal.search.adminFeature.indexer.name',0,'jsp/admin/search/ManageSearchIndexation.jsp','portal.search.adminFeature.indexer.description',0,'','SYSTEM','ti ti-settings-search',NULL,2,0),('CORE_SEARCH_MANAGEMENT','portal.search.adminFeature.search_management.name',0,NULL,'portal.search.adminFeature.search_management.description',0,'','SYSTEM','ti ti-database-search',NULL,3,0),('CORE_STYLES_MANAGEMENT','portal.style.adminFeature.styles_management.name',0,'jsp/admin/style/ManageStyles.jsp','portal.style.adminFeature.styles_management.description',1,'','STYLE','ti ti-brush',NULL,3,0),('CORE_STYLESHEET_MANAGEMENT','portal.style.adminFeature.stylesheet_management.name',0,'jsp/admin/style/ManageStyleSheets.jsp','portal.style.adminFeature.stylesheet_management.description',1,'','STYLE','ti ti-file-code',NULL,2,0),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT','portal.templates.adminFeature.ManageAutoIncludes.name',1,NULL,'portal.templates.adminFeature.ManageAutoIncludes.description',1,'','STYLE','ti ti-code-circle-2',NULL,4,0),('CORE_USERS_MANAGEMENT','portal.users.adminFeature.users_management.name',2,'jsp/admin/user/ManageUsers.jsp','portal.users.adminFeature.users_management.description',1,'','MANAGERS','ti ti-users',NULL,2,0),('CORE_WORKGROUPS_MANAGEMENT','portal.workgroup.adminFeature.workgroups_management.name',2,'jsp/admin/workgroup/ManageWorkgroups.jsp','portal.workgroup.adminFeature.workgroups_management.description',0,'','MANAGERS','ti ti-users-group',NULL,3,0),('CORE_XSL_EXPORT_MANAGEMENT','portal.xsl.adminFeature.xsl_export_management.name',2,NULL,'portal.xsl.adminFeature.xsl_export_management.description',1,'','SYSTEM','ti ti-file-export',NULL,11,0),('ACCESSCONTROL_MANAGEMENT','accesscontrol.adminFeature.ManageAccessControl.name',1,'jsp/admin/plugins/accesscontrol/ManageAccessControls.jsp','accesscontrol.adminFeature.ManageAccessControl.description',0,'accesscontrol',NULL,NULL,NULL,4,0),('USERCODES_MANAGEMENT','accesscontrol.adminFeature.ManageUserCodes.name',1,'jsp/admin/plugins/accesscontrol/ManageControllerUserCode.jsp','accesscontrol.adminFeature.ManageUserCodes.description',0,'accesscontrol',NULL,NULL,NULL,4,0),('ACCESSRULES_MANAGEMENT','myluteceaccessrules.adminFeature.ManageRules.name',1,'jsp/admin/plugins/myluteceaccessrules/ManageRules.jsp','myluteceaccessrules.adminFeature.ManageRules.description',0,'accessrules',NULL,NULL,NULL,4,0),('ADMINAVATAR_MANAGEMENT','adminavatar.adminFeature.ManageAdminAvatar.name',1,'jsp/admin/plugins/adminavatar/ManageAdminAvatar.jsp','adminavatar.adminFeature.ManageAdminAvatar.description',0,'adminavatar',NULL,NULL,NULL,4,0),('CONTACT_MANAGEMENT','contact.adminFeature.contact_management.name',3,'jsp/admin/plugins/contact/ManageContacts.jsp','contact.adminFeature.contact_management.description',0,'contact','APPLICATIONS','images/admin/skin/plugins/contact/contact.png',NULL,NULL,0),('ELASTICDATA_MANAGEMENT','elasticdata.adminFeature.ManageElasticData.name',1,'jsp/admin/plugins/elasticdata/ManageElasticData.jsp','elasticdata.adminFeature.ManageElasticData.description',0,'elasticdata',NULL,NULL,NULL,4,0),('VIEW_TEMP_FILES','filegenerator.adminFeature.temporary_files.name',2,'jsp/admin/plugins/filegenerator/ManageMyFiles.jsp','filegenerator.adminFeature.temporary_files.description',0,NULL,'SYSTEM',NULL,NULL,3,0),('FORMS_MANAGEMENT','forms.adminFeature.manageForms.name',1,'jsp/admin/plugins/forms/ManageForms.jsp','forms.adminFeature.manageForms.description',0,'forms',NULL,NULL,NULL,4,0),('FORMS_MULTIVIEW','forms.adminFeature.multiviewForms.name',2,'jsp/admin/plugins/forms/MultiviewForms.jsp','forms.adminFeature.multiviewForms.description',0,'forms',NULL,NULL,NULL,5,0),('FORMS_CATEGORIES','forms.adminFeature.categoriesForms.name',1,'jsp/admin/plugins/forms/ManageFormsCategories.jsp','forms.adminFeature.categoriesForms.description',0,'forms',NULL,NULL,NULL,6,0),('BREADCRUMBACCORDION_MANAGEMENT','module.forms.breadcrumbaccordion.adminFeature.manageBreadcrumbAccordion.name',1,'jsp/admin/plugins/forms/modules/breadcrumbaccordion/ManageBreadcrumbAccordion.jsp','module.forms.breadcrumbaccordion.adminFeature.manageBreadcrumbAccordion.description',0,'forms-breadcrumbaccordion',NULL,NULL,NULL,4,0),('CONFIG_DOCUMENT_PRODUCER_MANAGEMENT','module.forms.documentproducer.adminFeature.ManageConfigDocumentProducer.name',1,'jsp/admin/plugins/forms/modules/documentproducer/ManageConfigProducer.jsp?view=getSelectForm','module.forms.documentproducer.adminFeature.ManageConfigDocumentProducer.description',0,'forms-documentproducer',NULL,NULL,NULL,4,0),('TEMPLATE_STEP_MANAGEMENT','module.forms.template.adminFeature.manageTemplates.name',1,'jsp/admin/plugins/forms/modules/template/ManageTemplatesStep.jsp','module.forms.template.adminFeature.manageTemplates.description',0,'forms-template','MANAGERS',NULL,NULL,4,0),('ENTRY_TYPE_MANAGEMENT','genericattributes.adminFeature.manageEntryType.name',1,'jsp/admin/plugins/genericattributes/ManageEntryType.jsp','genericattributes.adminFeature.manageEntryType.description',0,'genericattributes',NULL,NULL,NULL,5,0),('GIS_MANAGEMENT','gis.adminFeature.gis_management.name',3,'jsp/admin/plugins/gis/ManageGis.jsp','gis.adminFeature.gis_management.description',0,'gis','APPLICATIONS','images/admin/skin/plugins/gis/gis.png',NULL,NULL,0),('HTMLPAGE_MANAGEMENT','htmlpage.adminFeature.htmlpage_management.name',3,'jsp/admin/plugins/htmlpage/ManageHtmlPage.jsp','htmlpage.adminFeature.htmlpage_management.description',0,'htmlpage','APPLICATIONS',NULL,NULL,NULL,0),('KIBANA_MANAGEMENT','kibana.adminFeature.KibanaDashboard.name',1,'jsp/admin/plugins/kibana/KibanaDashboard.jsp','kibana.adminFeature.KibanaDashboard.description',0,'kibana',NULL,NULL,NULL,4,0),('KIBANA_RBAC_MANAGEMENT','kibana.adminFeature.ManageKibana.name',1,'jsp/admin/plugins/kibana/ManageDashboards.jsp','kibana.adminFeature.ManageKibana.description',0,'kibana',NULL,NULL,NULL,4,0),('MATOMO_MANAGEMENT','matomo.adminFeature.ManageMatomo.name',1,'jsp/admin/plugins/matomo/Matomo.jsp','matomo.adminFeature.ManageMatomo.description',0,'matomo',NULL,NULL,NULL,4,0),('MODULENOTIFYGRUMAPPINGMANAGER_MANAGEMENT','modulenotifygrumappingmanager.adminFeature.ManageModulenotifygrumappingmanager.name',1,'jsp/admin/plugins/modulenotifygrumappingmanager/ManageNotifygruMappingManagers.jsp','modulenotifygrumappingmanager.adminFeature.ManageModulenotifygrumappingmanager.description',0,'modulenotifygrumappingmanager',NULL,NULL,NULL,4,0),('MYLUTECE_MANAGEMENT','mylutece.adminFeature.mylutece_management.name',2,'jsp/admin/plugins/mylutece/ManageMylutece.jsp','mylutece.adminFeature.mylutece_management.description',0,'mylutece','USERS',NULL,NULL,NULL,0),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER','mylutece.adminFeature.mylutece_management_authentication_filter.name',2,'jsp/admin/plugins/mylutece/security/ManageAuthenticationFilter.jsp','mylutece.adminFeature.mylutece_management_authentication_filter.description',0,'mylutece','USERS',NULL,NULL,NULL,0),('MYLUTECE_CACHEUSERATTRIBUTE_MANAGEMENT','mylutece-cacheuserattribute.adminFeature.ManageCacheUserAttribute.name',1,'jsp/admin/plugins/mylutece-cacheuserattribute/ManageCacheUserAttributes.jsp','mylutece-cacheuserattribute.adminFeature.ManageCacheUserAttribute.description',0,'mylutece-cacheuserattribute',NULL,NULL,NULL,4,0),('POLL_MANAGEMENT','poll.adminFeature.Manage.name',1,'jsp/admin/plugins/poll/ManagePollForms.jsp','poll.adminFeature.Manage.description',0,'poll',NULL,NULL,NULL,4,0),('PROFILES_MANAGEMENT','profiles.adminFeature.profiles_management.name',0,'jsp/admin/plugins/profiles/ManageProfiles.jsp','profiles.adminFeature.profiles_management.description',0,'profiles','MANAGERS','images/admin/skin/plugins/profiles/profiles.png',NULL,NULL,0),('PROFILES_VIEWS_MANAGEMENT','profiles.adminFeature.views_management.name',0,'jsp/admin/plugins/profiles/ManageViews.jsp','profiles.adminFeature.views_management.description',0,'profiles','MANAGERS','images/admin/skin/plugins/profiles/views.png',NULL,NULL,0),('REFERENCELIST_MANAGEMENT','referencelist.adminFeature.ReferenceListManage.name',1,'jsp/admin/plugins/referencelist/ManageReferences.jsp','referencelist.adminFeature.ReferenceListManage.description',0,'referencelist',NULL,NULL,NULL,4,0),('REGULAR_EXPRESSION_MANAGEMENT','regularexpression.adminFeature.regularexpression_management.name',0,'jsp/admin/plugins/regularexpression/ManageRegularExpression.jsp','regularexpression.adminFeature.regularexpression_management.description',0,'regularexpression','SYSTEM','images/admin/skin/plugins/regularexpression/regularexpression.png',NULL,NULL,0),('SEO_MANAGEMENT','seo.adminFeature.seo_management.name',1,'jsp/admin/plugins/seo/ManageSEO.jsp','seo.adminFeature.seo_management.name',0,'seo',NULL,NULL,NULL,4,0),('SOLR_INDEX_MANAGEMENT','search.solr.adminFeature.title',1,'jsp/admin/search/solr/ManageSearchIndexation.jsp','search.solr.adminFeature.description',0,'solr','SYSTEM','images/admin/skin/plugins/search/solr_FC.jpg',NULL,NULL,0),('SOLR_CONFIGURATION_MANAGEMENT','search.solr.adminFeature.configuration.title',1,'jsp/admin/search/solr/ManageSearchConfiguration.jsp','search.solr.adminFeature.configuration.description',0,'solr','SYSTEM','images/admin/skin/plugins/search/solr_FC.jpg',NULL,NULL,0),('SOLR_FIELDS_MANAGEMENT','search.solr.adminFeature.fields.title',1,'jsp/admin/search/solr/ManageSolrFields.jsp','search.solr.adminFeature.fields.description',0,'solr','SYSTEM','images/admin/skin/plugins/search/solr_FC.jpg',NULL,NULL,0),('SYSTEMINFO_MANAGEMENT','systeminfo.adminFeature.systeminfo_management.name',0,'jsp/admin/plugins/systeminfo/ManageSystemInfo.jsp','systeminfo.adminFeature.systeminfo_management.description',0,'systeminfo','SYSTEM',NULL,NULL,NULL,0),('TERMOFSERVICE_MANAGEMENT','termofservice.adminFeature.ManageTOS.name',1,'jsp/admin/plugins/termofservice/ManageEntrys.jsp','termofservice.adminFeature.ManageTOS.description',0,'termofservice',NULL,NULL,NULL,4,0),('UNITS_MANAGEMENT','unittree.adminFeature.unitsManagement.name',2,'jsp/admin/plugins/unittree/ManageUnits.jsp','unittree.adminFeature.unitsManagement.description',0,'unittree','MANAGERS','images/admin/skin/plugins/unittree/unittree.png','',NULL,0),('VERIFYBACKURL_MANAGEMENT','verifybackurl.adminFeature.ManageVerifybackurl.name',1,'jsp/admin/plugins/verifybackurl/ManageAuthorizedUrls.jsp','verifybackurl.adminFeature.ManageVerifybackurl.description',0,'verifybackurl',NULL,NULL,NULL,4,0),('WORKFLOW_MANAGEMENT','workflow.adminFeature.workflow_management.name',2,'jsp/admin/plugins/workflow/ManageWorkflow.jsp','workflow.adminFeature.workflow_management.description',0,'workflow','APPLICATIONS','images/admin/skin/plugins/workflow/workflow.png','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-workflow',NULL,0);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role`
--

LOCK TABLES `core_admin_role` WRITE;
/*!40000 ALTER TABLE `core_admin_role` DISABLE KEYS */;
INSERT INTO `core_admin_role` VALUES ('all_site_manager','Site Manager'),('super_admin','Super Administrateur'),('forms_manager','FORMS - Gestion des formulaires'),('forms_multiview','FORMS - Visualisation des résultats des formulaires'),('kibana_dashboards_manager','Gestion des tableaux de bords Kibana'),('assign_roles','Assigner des roles aux utilisateurs'),('assign_groups','Assigner des groupes aux utilisateurs'),('mylutece_manager','Gérer les patramètres avancés Mylutece'),('profiles_manager','Profiles management'),('profiles_views_manager','Profiles Views management'),('CREATE_REFERENCE_IMPORT','Import csv file'),('unittree_management','Gestion des entités'),('workflow_manager','Workflow management');
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
) ENGINE=MyISAM AUTO_INCREMENT=1911 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role_resource`
--

LOCK TABLES `core_admin_role_resource` WRITE;
/*!40000 ALTER TABLE `core_admin_role_resource` DISABLE KEYS */;
INSERT INTO `core_admin_role_resource` VALUES (1,'all_site_manager','PAGE','*','VIEW'),(2,'all_site_manager','PAGE','*','MANAGE'),(3,'super_admin','INSERT_SERVICE','*','*'),(4,'all_site_manager','PORTLET_TYPE','*','*'),(5,'all_site_manager','ADMIN_USER','*','*'),(6,'all_site_manager','SEARCH_SERVICE','*','*'),(7,'all_site_manager','XSL_EXPORT','*','*'),(1907,'forms_manager','FORMS_FORM','*','*'),(1908,'forms_multiview','FORM_PANEL_CONF','*','*'),(1909,'forms_manager','GLOBAL_FORMS_ACTION','',''),(1910,'kibana_dashboards_manager','kibana_dashboard','*','*'),(205,'assign_roles','ROLE_TYPE','*','ASSIGN_ROLE'),(207,'mylutece_manager','MYLUTECE','*','*'),(150,'profiles_manager','PROFILES','*','*'),(151,'profiles_views_manager','PROFILES_VIEWS','*','*'),(165,'CREATE_REFERENCE_IMPORT','REFERENCE_IMPORT','*','*'),(210,'unittree_management','UNIT_TYPE','*','*'),(912,'workflow_manager','WORKFLOW_ACTION_TYPE','*','*'),(923,'workflow_manager','WORKFLOW_STATE_TYPE','*','*');
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
  `last_login` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  `workgroup_key` varchar(50) DEFAULT 'all',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user`
--

LOCK TABLES `core_admin_user` WRITE;
/*!40000 ALTER TABLE `core_admin_user` DISABLE KEYS */;
INSERT INTO `core_admin_user` VALUES (1,'admin','Admin','admin','admin@lutece.fr',0,'PLAINTEXT:adminadmin','fr',0,0,0,NULL,NULL,0,'1979-12-31 23:00:00','all'),(2,'lutece','Lutece','lutece','lutece@lutece.fr',1,'PLAINTEXT:adminadmin','fr',1,0,0,NULL,NULL,0,'1979-12-31 23:00:00','all'),(3,'redac','redac','redac','redac@lutece.fr',1,'PLAINTEXT:adminadmin','fr',2,0,0,NULL,NULL,0,'1979-12-31 23:00:00','all'),(4,'valid','valid','valid','valid@lutece.fr',1,'PLAINTEXT:adminadmin','fr',3,0,0,NULL,NULL,0,'1979-12-31 23:00:00','all');
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_anonymize_field`
--

LOCK TABLES `core_admin_user_anonymize_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` DISABLE KEYS */;
INSERT INTO `core_admin_user_anonymize_field` VALUES ('access_code',1),('last_name',1),('first_name',1),('email',1);
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
);
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
);
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
);
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
);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_connections_log`
--

LOCK TABLES `core_connections_log` WRITE;
/*!40000 ALTER TABLE `core_connections_log` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_dashboard`
--

LOCK TABLES `core_dashboard` WRITE;
/*!40000 ALTER TABLE `core_dashboard` DISABLE KEYS */;
INSERT INTO `core_dashboard` VALUES ('CORE_SYSTEM',1,2),('CORE_USERS',1,1),('CORE_USER',4,1),('CORE_PAGES',2,1),('FORMS',3,2),('WORKFLOW',3,1);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_datastore`
--

LOCK TABLES `core_datastore` WRITE;
/*!40000 ALTER TABLE `core_datastore` DISABLE KEYS */;
INSERT INTO `core_datastore` VALUES ('core.advanced_parameters.password_duration','120'),('core.advanced_parameters.default_user_level','0'),('core.advanced_parameters.default_user_notification','1'),('core.advanced_parameters.default_user_language','fr'),('core.advanced_parameters.default_user_status','0'),('core.advanced_parameters.email_pattern','^[\\w_.\\-!\\#\\$\\%\\&\'\\*\\+\\/\\=\\?\\^\\\\}\\{\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$'),('core.advanced_parameters.email_pattern_verify_by',''),('core.advanced_parameters.force_change_password_reinit','false'),('core.advanced_parameters.password_minimum_length','8'),('core.advanced_parameters.password_format_upper_lower_case','false'),('core.advanced_parameters.password_format_numero','false'),('core.advanced_parameters.password_format_special_characters','false'),('core.advanced_parameters.password_history_size',''),('core.advanced_parameters.maximum_number_password_change',''),('core.advanced_parameters.tsw_size_password_change',''),('core.advanced_parameters.use_advanced_security_parameters',''),('core.advanced_parameters.account_life_time','12'),('core.advanced_parameters.time_before_alert_account','30'),('core.advanced_parameters.nb_alert_account','2'),('core.advanced_parameters.time_between_alerts_account','10'),('core.advanced_parameters.access_failures_max','3'),('core.advanced_parameters.access_failures_interval','10'),('core.advanced_parameters.expired_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.expired_alert_mail_subject','Votre compte a expiré'),('core.advanced_parameters.first_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.first_alert_mail_subject','Votre compte va bientôt expirer'),('core.advanced_parameters.other_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.other_alert_mail_subject','Votre compte va bientôt expirer'),('core.advanced_parameters.account_reactivated_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.account_reactivated_mail_subject','Votre compte a bien été réactivé'),('core.advanced_parameters.access_failures_captcha','1'),('core.advanced_parameters.notify_user_password_expired',''),('core.advanced_parameters.password_expired_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.password_expired_mail_subject','Votre mot de passe a expiré'),('core.advanced_parameters.reset_token_validity','60'),('core.advanced_parameters.lock_reset_token_to_session','false'),('core.backOffice.defaultEditor','tinymce'),('core.frontOffice.defaultEditor','sceeditor'),('core_banned_domain_names','yopmail.com'),('portal.site.site_property.name','LUTECE'),('portal.site.site_property.meta.author','<author>'),('portal.site.site_property.meta.copyright','<copyright>'),('portal.site.site_property.meta.description','<description>'),('portal.site.site_property.meta.keywords','<keywords>'),('portal.site.site_property.email','<webmaster email>'),('portal.site.site_property.noreply_email','no-reply@mydomain.com'),('portal.site.site_property.home_url','jsp/site/Portal.jsp'),('portal.site.site_property.admin_home_url','jsp/admin/AdminMenu.jsp'),('portal.site.site_property.popup_credits.textblock','&lt;credits text&gt;'),('portal.site.site_property.popup_legal_info.copyright.textblock','&lt;copyright text&gt;'),('portal.site.site_property.popup_legal_info.privacy.textblock','&lt;privacy text&gt;'),('portal.site.site_property.logo_url','themes/admin/shared/images/logo-header-icon.svg'),('portal.site.site_property.locale.default','fr'),('portal.site.site_property.avatar_default','themes/admin/shared/images/unknown.svg'),('portal.site.site_property.portlet.title.maxlength','75'),('portal.site.site_property.back_images','themes/admin/tabler/images/bg_login1.svg, themes/admin/tabler/images/bg_login2.svg'),('portal.site.site_property.bo.showXs.checkbox','1'),('portal.site.site_property.bo.showXsWarning.checkbox','0'),('portal.site.site_property.login.image',''),('portal.site.site_property.layout.menu.checkbox','0'),('portal.site.site_property.layout.darkmode.checkbox','0'),('portal.site.site_property.layout.readmode.checkbox','0'),('portal.site.site_property.layout.user.readmode.show.checkbox','0'),('portal.site.site_property.layout.user.darkmode.show.checkbox','1'),('portal.site.site_property.layout.user.menumode.show.checkbox','1'),('myluteceaccessrules.site_property.application_code',''),('adminavatar.site_property.avatarserver.Url',''),('core.cache.status.EntryTypeServiceManagerCache.enabled','1'),('leaflet.icon.icons.default.installed','true'),('leaflet.icon.icons.red.installed','true'),('leaflet.icon.icons.yellow.installed','true'),('leaflet.icon.icons.green.installed','true'),('limitconnectedusers.site_property.limit_message.textblock','<div class=\'alert alert-danger\'>Le nombre maximal d\'utilisateur connecté simultanément a été atteint</div>'),('limitconnectedusers.site_property.limit_notification_mailing_list.textblock',''),('limitconnectedusers.site_property.limit_notification_message.textblock','Le nombre maximal d\'utilisateur connecté simultanément a été atteint'),('limitconnectedusers.site_property.limit_notification_sender_name','LUTECE'),('limitconnectedusers.site_property.limit_notification_subject.textblock','Le nombre maximal d\'utilisateur connecté simultanément a été atteint'),('mylutece.security.public_url.mylutece.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login'),('mylutece.security.public_url.mylutece.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),('mylutece.security.public_url.mylutece.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),('mylutece.security.public_url.mylutece.url.createAccount.page','jsp/site/Portal.jsp?page=mylutece&action=createAccount'),('mylutece.security.public_url.mylutece.url.modifyAccount.page','jsp/site/Portal.jsp?page=mylutece&action=modifyAccount'),('mylutece.security.public_url.mylutece.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutece&action=lostPassword'),('mylutece.security.public_url.mylutece.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),('mylutece.security.public_url.mylutece.url.doActionsAll','jsp/site/plugins/mylutece/Do*'),('seo.rewrite.config.lastUpdate',''),('seo.config.uptodate','false'),('seo.generator.option.addPath','false'),('seo.generator.option.addHtmlSuffix','true'),('seo.replaceUrl.enabled','true'),('seo.generator.daemon.enabled','true'),('seo.canonicalUrls.enabled','true'),('seo.sitmap.daemon.enabled','true'),('seo.sitemap.update.log',''),('forms.display.form.columnTitle','true'),('forms.display.form.csv.separator',';'),('core.cache.status.formsCacheService.enabled','1'),('core.cache.status.formsCacheService.timeToIdleSeconds','86400'),('core.cache.status.formsCacheService.timeToLiveSeconds','86400'),('core.cache.status.formsCacheService.overflowToDisk','0');
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_feature_group`
--

LOCK TABLES `core_feature_group` WRITE;
/*!40000 ALTER TABLE `core_feature_group` DISABLE KEYS */;
INSERT INTO `core_feature_group` VALUES ('CONTENT','portal.features.group.content.description','portal.features.group.content.label',1,'ti ti-files'),('APPLICATIONS','portal.features.group.applications.description','portal.features.group.applications.label',3,'ti ti-apps'),('SYSTEM','portal.features.group.system.description','portal.features.group.system.label',7,'ti ti-shield-lock '),('SITE','portal.features.group.site.description','portal.features.group.site.label',2,'ti ti-world'),('STYLE','portal.features.group.charter.description','portal.features.group.charter.label',6,'ti ti-brush'),('USERS','portal.features.group.users.description','portal.features.group.users.label',4,'ti ti-users'),('MANAGERS','portal.features.group.managers.description','portal.features.group.managers.label',5,'ti ti-user-shield');
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
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
);
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
);
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
);
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
);
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
);
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
);
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page`
--

LOCK TABLES `core_page` WRITE;
/*!40000 ALTER TABLE `core_page` DISABLE KEYS */;
INSERT INTO `core_page` VALUES (1,0,'Home','Home Page','2024-01-19 15:25:52',1,1,1,'2024-01-19 15:25:52','none','default',0,'','application/octet-stream',NULL,NULL,1,0,0),(2,1,'Page 1','A child page','2024-01-19 15:25:52',0,1,2,'2024-01-19 15:25:52','none','default',1,NULL,'application/octet-stream',NULL,NULL,1,0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
);
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet`
--

LOCK TABLES `core_portlet` WRITE;
/*!40000 ALTER TABLE `core_portlet` DISABLE KEYS */;
INSERT INTO `core_portlet` VALUES (1,'HTML_PORTLET',1,'Qu\'est-ce que Lutece ?','2019-05-31 14:28:04',0,2,1,100,0,'2011-03-14 12:13:39',1,'none',273),(2,'HTML_PORTLET',1,'Infos','2019-05-31 13:51:57',0,1,3,100,0,'2015-05-15 13:26:01',1,'none',273),(4,'HTML_PORTLET',1,'Lutece','2019-06-03 08:23:25',0,1,4,100,0,'2019-05-31 09:55:16',1,'none',4369),(5,'HTML_PORTLET',1,'Autres informations','2019-05-31 14:51:33',0,1,5,100,0,'2019-05-31 13:01:47',1,'none',4369);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role`
--

LOCK TABLES `core_role` WRITE;
/*!40000 ALTER TABLE `core_role` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_search_parameter`
--

LOCK TABLES `core_search_parameter` WRITE;
/*!40000 ALTER TABLE `core_search_parameter` DISABLE KEYS */;
INSERT INTO `core_search_parameter` VALUES ('type_filter','none'),('default_operator','OR'),('help_message','Message d aide pour la recherche'),('date_filter','0'),('tag_filter','0'),('taglist',NULL);
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
);
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
);
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
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_template`
--

LOCK TABLES `core_template` WRITE;
/*!40000 ALTER TABLE `core_template` DISABLE KEYS */;
INSERT INTO `core_template` VALUES ('core_first_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('core_expiration_mail','Bonjour ${first_name} ! Votre compte a expiré. Vous ne pourrez plus vous connecter avec, et les données vous concernant ont été anonymisées'),('core_other_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('core_account_reactivated_mail','Bonjour ${first_name} ! Votre compte utilisateur a bien été réactivé. Il est désormais valable jusqu\'au ${date_valid}.'),('core_password_expired','Bonjour ! Votre mot de passe a expiré. Lors de votre prochaine connexion, vous pourrez le changer.');
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_text_editor`
--

LOCK TABLES `core_text_editor` WRITE;
/*!40000 ALTER TABLE `core_text_editor` DISABLE KEYS */;
INSERT INTO `core_text_editor` VALUES ('tinymce','portal.admindashboard.editors.labelBackTinyMCE',1),('tinymce5','portal.admindashboard.editors.labelBackTinyMCE5',1),('','portal.admindashboard.editors.labelBackNoEditor',1),('','portal.admindashboard.editors.labelFrontNoEditor',0),('sceeditor','portal.admindashboard.editors.labelFrontSceEditor',0);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_password_history`
--

LOCK TABLES `core_user_password_history` WRITE;
/*!40000 ALTER TABLE `core_user_password_history` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_right`
--

LOCK TABLES `core_user_right` WRITE;
/*!40000 ALTER TABLE `core_user_right` DISABLE KEYS */;
INSERT INTO `core_user_right` VALUES ('ACCESSCONTROL_MANAGEMENT',1),('ACCESSRULES_MANAGEMENT',1),('ADMINAVATAR_MANAGEMENT',1),('CONFIG_DOCUMENT_PRODUCER_MANAGEMENT',1),('CONTACT_MANAGEMENT',1),('CONTACT_MANAGEMENT',2),('CORE_ADMIN_SITE',1),('CORE_ADMIN_SITE',2),('CORE_ADMINDASHBOARD_MANAGEMENT',1),('CORE_CACHE_MANAGEMENT',1),('CORE_DAEMONS_MANAGEMENT',1),('CORE_DASHBOARD_MANAGEMENT',1),('CORE_EDITORS_MANAGEMENT',1),('CORE_FEATURES_MANAGEMENT',1),('CORE_LEVEL_RIGHT_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',2),('CORE_LOGS_VISUALISATION',1),('CORE_MAILINGLISTS_MANAGEMENT',1),('CORE_MODES_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',2),('CORE_PLUGINS_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',2),('CORE_RBAC_MANAGEMENT',1),('CORE_RIGHT_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',2),('CORE_SEARCH_INDEXATION',1),('CORE_SEARCH_INDEXATION',2),('CORE_SEARCH_MANAGEMENT',1),('CORE_SEARCH_MANAGEMENT',2),('CORE_STYLES_MANAGEMENT',1),('CORE_STYLESHEET_MANAGEMENT',1),('CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',2),('CORE_WORKGROUPS_MANAGEMENT',1),('CORE_WORKGROUPS_MANAGEMENT',2),('CORE_XSL_EXPORT_MANAGEMENT',1),('ELASTICDATA_MANAGEMENT',1),('ENTRY_TYPE_MANAGEMENT',1),('GIS_MANAGEMENT',1),('GIS_MANAGEMENT',2),('HTMLPAGE_MANAGEMENT',1),('HTMLPAGE_MANAGEMENT',2),('HTMLPAGE_MANAGEMENT',3),('KIBANA_MANAGEMENT',1),('KIBANA_RBAC_MANAGEMENT',1),('MATOMO_MANAGEMENT',1),('MODULENOTIFYGRUMAPPINGMANAGER_MANAGEMENT',1),('MYLUTECE_CACHEUSERATTRIBUTE_MANAGEMENT',1),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER',1),('MYLUTECE_MANAGEMENT',1),('POLL_MANAGEMENT',1),('PROFILES_MANAGEMENT',1),('PROFILES_VIEWS_MANAGEMENT',1),('REFERENCELIST_MANAGEMENT',1),('SEO_MANAGEMENT',1),('SOLR_CONFIGURATION_MANAGEMENT',2),('SOLR_FIELDS_MANAGEMENT',1),('SOLR_FIELDS_MANAGEMENT',2),('SOLR_INDEX_MANAGEMENT',1),('SOLR_INDEX_MANAGEMENT',2),('SYSTEMINFO_MANAGEMENT',1),('TERMOFSERVICE_MANAGEMENT',1),('UNITS_MANAGEMENT',1),('UNITS_MANAGEMENT',2),('USERCODES_MANAGEMENT',1),('VERIFYBACKURL_MANAGEMENT',1),('WORKFLOW_MANAGEMENT',1),('WORKFLOW_MANAGEMENT',2);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_role`
--

LOCK TABLES `core_user_role` WRITE;
/*!40000 ALTER TABLE `core_user_role` DISABLE KEYS */;
INSERT INTO `core_user_role` VALUES ('all_site_manager',1),('all_site_manager',2),('assign_groups',1),('assign_groups',2),('assign_groups',3),('assign_roles',1),('assign_roles',2),('assign_roles',3),('CREATE_REFERENCE_IMPORT',1),('forms_manager',1),('forms_manager',2),('forms_multiview',1),('kibana_dashboards_manager',1),('mylutece_manager',1),('profiles_manager',1),('profiles_views_manager',1),('super_admin',1),('super_admin',2),('unittree_management',1),('unittree_management',2),('workflow_manager',1),('workflow_manager',2);
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
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elasticdata_indexer_action`
--

LOCK TABLES `elasticdata_indexer_action` WRITE;
/*!40000 ALTER TABLE `elasticdata_indexer_action` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_action`
--

LOCK TABLES `forms_action` WRITE;
/*!40000 ALTER TABLE `forms_action` DISABLE KEYS */;
INSERT INTO `forms_action` VALUES (1,'forms.action.modify.name','forms.action.modify.description','jsp/admin/plugins/forms/ManageForms.jsp?view=modifyForm','cog','MODIFY',0),(3,'forms.action.params.name','forms.action.params.description','jsp/admin/plugins/forms/ManageSteps.jsp?view=manageSteps','step-forward','PARAM',0),(2,'forms.action.delete.name','forms.action.delete.description','jsp/admin/plugins/forms/ManageForms.jsp?view=confirmRemoveForm','trash','DELETE',0),(4,'forms.action.publish.name','forms.action.publish.description','jsp/admin/plugins/forms/ManageForms.jsp?view=modifyPublication','calendar','PUBLISH',0),(5,'forms.action.viewResponses.name','forms.action.viewResponses.description','jsp/admin/plugins/forms/MultiviewForms.jsp?current_selected_panel=forms','list-alt','VIEW_FORM_RESPONSE',0),(6,'forms.action.json.copy.name','forms.json.copy.description','jsp/admin/plugins/forms/ManageForms.jsp?action=duplicateForm','copy','MODIFY',0),(7,'forms.action.json.download.name','forms.json.download.description','jsp/admin/plugins/forms/ManageForms.jsp?action=doExportJson','download','MODIFY',0),(100,'module.forms.documentproducer.actions.extractpdf.name','module.forms.documentproducer.actions.extractpdf.description','jsp/admin/plugins/forms/modules/documentproducer/ManageConfigProducer.jsp?view=getManageConfigProducer','file-pdf-o','MODIFY',0);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_breadcrumbaccordion_config_item`
--

LOCK TABLES `forms_breadcrumbaccordion_config_item` WRITE;
/*!40000 ALTER TABLE `forms_breadcrumbaccordion_config_item` DISABLE KEYS */;
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_control`
--

LOCK TABLES `forms_control` WRITE;
/*!40000 ALTER TABLE `forms_control` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_control_question`
--

LOCK TABLES `forms_control_question` WRITE;
/*!40000 ALTER TABLE `forms_control_question` DISABLE KEYS */;
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_display`
--

LOCK TABLES `forms_display` WRITE;
/*!40000 ALTER TABLE `forms_display` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_form`
--

LOCK TABLES `forms_form` WRITE;
/*!40000 ALTER TABLE `forms_form` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_group`
--

LOCK TABLES `forms_group` WRITE;
/*!40000 ALTER TABLE `forms_group` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_message`
--

LOCK TABLES `forms_message` WRITE;
/*!40000 ALTER TABLE `forms_message` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question`
--

LOCK TABLES `forms_question` WRITE;
/*!40000 ALTER TABLE `forms_question` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question_entry_response`
--

LOCK TABLES `forms_question_entry_response` WRITE;
/*!40000 ALTER TABLE `forms_question_entry_response` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_question_response`
--

LOCK TABLES `forms_question_response` WRITE;
/*!40000 ALTER TABLE `forms_question_response` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_response`
--

LOCK TABLES `forms_response` WRITE;
/*!40000 ALTER TABLE `forms_response` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_response_step`
--

LOCK TABLES `forms_response_step` WRITE;
/*!40000 ALTER TABLE `forms_response_step` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_step`
--

LOCK TABLES `forms_step` WRITE;
/*!40000 ALTER TABLE `forms_step` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_transition`
--

LOCK TABLES `forms_transition` WRITE;
/*!40000 ALTER TABLE `forms_transition` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_unittree_unit_selection_config`
--

LOCK TABLES `forms_unittree_unit_selection_config` WRITE;
/*!40000 ALTER TABLE `forms_unittree_unit_selection_config` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_unittree_unit_selection_config_value`
--

LOCK TABLES `forms_unittree_unit_selection_config_value` WRITE;
/*!40000 ALTER TABLE `forms_unittree_unit_selection_config_value` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_entry`
--

LOCK TABLES `genatt_entry` WRITE;
/*!40000 ALTER TABLE `genatt_entry` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_field`
--

LOCK TABLES `genatt_field` WRITE;
/*!40000 ALTER TABLE `genatt_field` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_referenceitem_field`
--

LOCK TABLES `genatt_referenceitem_field` WRITE;
/*!40000 ALTER TABLE `genatt_referenceitem_field` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_response`
--

LOCK TABLES `genatt_response` WRITE;
/*!40000 ALTER TABLE `genatt_response` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `html_portlet`
--

LOCK TABLES `html_portlet` WRITE;
/*!40000 ALTER TABLE `html_portlet` DISABLE KEYS */;
INSERT INTO `html_portlet` VALUES (1,''),(2,'<ul class=\"features\"> \n <li>Lutece is FreeSoftware. Full OpenSource licensed under BSD.</li> \n <li>Full responsive design Back and Front</li> \n <li>Compliant with Twitter Bootstrap themes</li> \n <li>Very modular and flexible architecture based on plugins, APIs, IoC</li> \n <li>Over 300 plugins available for many needs : Content Management, Collaborative, Workflows, ...</li> \n <li>Runs on Java Platform and rely on powerful build tools such as Apache Maven</li> \n <li>Uses best of breed Java Open Source stacks : Lucene, Spring, Ehcache, Freemarker, ...</li> \n</ul> \n<p class=\"logo\">&nbsp;</p>'),(4,'<h2>Get into the Back Office of this demo site</h2> \n<p class=\"mb20\">Sign in as administrator with <em>admin/adminadmin</em>.</p> \n<p><a class=\"btn btn-primary\" title=\"Access to admin [Open  in new window]\" href=\"jsp/admin/AdminLogin.jsp\" target=\"\"><span class=\"fa fa-door-open\">&nbsp;</span> Enter Back Office</a></p> \n<p>&nbsp;</p>'),(5,'<h3>Resources</h3> \n<hr> \n<div class=\"row\"> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"GitHub site [Open  in new window]\" href=\"https://github.com/lutece-platform\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/github-logo.png\" alt=\"Github logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Access to our code repository</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Docker Hub site [Open  in new window]\" href=\"https://hub.docker.com/u/lutece\" target=\"_blank\"><img class=\"media-object\" src=\"images/local/skin/docker-logo.png\" alt=\"Docker images\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Grab some Docker images to run demos</h4> \n   </div> \n  </div> \n </div> \n <div class=\"col-xs-12 col-sm-6\"> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\"Lutece Wiki site [Open  in new window]\" href=\"https://fr.lutece.paris.fr/fr/jsp/site/Portal.jsp?page=wiki&amp;action=changeLanguage&amp;page_name=home&amp;language=en\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/wiki-logo.png\" alt=\"WIKI\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Read our technical documentation</h4> \n   </div> \n  </div> \n  <div class=\"media\"> \n   <div class=\"media-left\">\n    <a title=\" Twitter Site [Open  in new window]\" href=\"https://twitter.com/LuteceNews\" target=\"_blank\"> <img class=\"media-object\" src=\"images/local/skin/twitter-logo.png\" alt=\"Twitter logo\" width=\"100px\"> </a>\n   </div> \n   <div class=\"media-body\"> \n    <h4 class=\"media-heading\">Follow us on Twitter</h4> \n   </div> \n  </div> \n </div> \n</div>');
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
);
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
  `id_dashboard` int(6) NOT NULL,
  `idkibanadashboard` varchar(255) NOT NULL DEFAULT '',
  `title` mediumtext NOT NULL,
  `dataSourceName` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_dashboard`),
  UNIQUE KEY `idkibanadashboard` (`idkibanadashboard`)
);
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
);
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
);
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
);
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
  `content` mediumtext DEFAULT '',
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id_cache_user_attribute`)
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_item`
--

LOCK TABLES `referencelist_item` WRITE;
/*!40000 ALTER TABLE `referencelist_item` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelist_reference`
--

LOCK TABLES `referencelist_reference` WRITE;
/*!40000 ALTER TABLE `referencelist_reference` DISABLE KEYS */;
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_friendly_url`
--

LOCK TABLES `seo_friendly_url` WRITE;
/*!40000 ALTER TABLE `seo_friendly_url` DISABLE KEYS */;
INSERT INTO `seo_friendly_url` VALUES (1,'/sitemap.html','/jsp/site/Portal.jsp?page=map','2024-01-19 15:26:14','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(2,'/contacts.html','/jsp/site/Portal.jsp?page=contact','2024-01-19 15:26:14','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(3,'/credits.html','/jsp/site/PopupCredits.jsp','2024-01-19 15:26:14','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8');
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_indexer_action`
--

LOCK TABLES `solr_indexer_action` WRITE;
/*!40000 ALTER TABLE `solr_indexer_action` DISABLE KEYS */;
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
);
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
);
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
);
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
);
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
);
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
);
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
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
);
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
) ENGINE=MyISAM AUTO_INCREMENT=744 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
);
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
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_unit`
--

LOCK TABLES `unittree_unit` WRITE;
/*!40000 ALTER TABLE `unittree_unit` DISABLE KEYS */;
INSERT INTO `unittree_unit` VALUES (0,-1,'ROOT','Racine','Racine des entités');
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
  `assignment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `index_unittree_unit_assignment_resource` (`id_resource`,`resource_type`),
  KEY `index_unittree_unit_assignment_id_assigned_unit` (`id_assigned_unit`,`assignment_date`),
  KEY `index_unittree_unit_assignment_id_assignor_unit` (`id_assignor_unit`,`assignment_date`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_unit_assignment`
--

LOCK TABLES `unittree_unit_assignment` WRITE;
/*!40000 ALTER TABLE `unittree_unit_assignment` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unittree_unit_user`
--

LOCK TABLES `unittree_unit_user` WRITE;
/*!40000 ALTER TABLE `unittree_unit_user` DISABLE KEYS */;
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
);
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
  `id_authorized_url` int(6) NOT NULL,
  `url` mediumtext NOT NULL,
  `name` mediumtext NOT NULL,
  `application_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_authorized_url`)
);
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
  PRIMARY KEY (`id_action`),
  KEY `action_id_workflow_fk` (`id_workflow`),
  KEY `action_id_state_after_fk` (`id_state_after`),
  KEY `action_id_icon_fk` (`id_icon`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action`
--

LOCK TABLES `workflow_action` WRITE;
/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action_state_before`
--

LOCK TABLES `workflow_action_state_before` WRITE;
/*!40000 ALTER TABLE `workflow_action_state_before` DISABLE KEYS */;
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
);
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
);
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
);
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
);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_icon`
--

LOCK TABLES `workflow_icon` WRITE;
/*!40000 ALTER TABLE `workflow_icon` DISABLE KEYS */;
INSERT INTO `workflow_icon` VALUES (1,'Valider','image/png','\89PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0ש\CD\CA\5C\30\5C\30\01\BC\50\4C\54\45\FF\FF\FF\FD\FD\FD\FB\FB\FB\FC\FC\FC\F9\F9\F9\F6\F6\F6\F3\F3\F3\D2\D2\D2\FA\FA\FA\EB\EB\EB\D8\D8\D8\D3\D3\D3\B2\C7\DB\B3\B3\B3\B1\B1\B1\97\B3\CE\8F\AE\CA\77\9D\C0\63\8E\B6\7D\7D\7D\4F\7E\AA\47\71\98\4E\4E\4E
\5C\72\14\19\0C\14\1B\10\10\10\F8\F8\F8\F5\F5\F5\F4\F4\F4\F1\F1\F1\F0\F0\F0\EE\EE\EE\ED\ED\ED\EA\EA\EA\E7\E7\E7\E2\E2\E2\E1\E1\E1\D7\E2\EC\DE\DE\DE\DB\DB\DB\D6\D6\D6\D5\D5\D5\D1\D1\D1\CF\CF\CF\C1\D2\E2\CE\CE\CE\CB\CB\CB\CA\CA\CA\BA\CD\DF\C5
\C5\C5\C3\C3\C3\AF\C5\CF\AD\C3\D8\A9\C0\D6\A4\BD\D5\A3\BC\D4\B4\B5\B5\B2\B2\B2\AB\AB\AB\A9\A9\A9\A8\A8\A8\90\AD\C7\A7\A7\A7\8C\AC\C9\8B\AB\C9\A3\A3\A3\9E\9E\9E\9D\9D\9D\9B\9B\9B\7D\A1\C2\99\99\99\7A\9F\C1\78\9D\BF\76\9C\BF\92\93\93\72\99\BD
\8F\90\90\66\90\B7\62\8D\B5\5F\8B\B4\5D\8A\B4\80\80\80\59\87\B2\58\86\B1\57\85\B0\55\84\B0\54\83\AF\79\79\79\77\77\77\75\75\75\4E\7D\A9\73\73\73\4C\79\A3\6E\6E\6E\49\74\9C\48\73\9B\47\72\9A\5B\68\74\47\6C\8D\42\6A\8F\42\69\8D\5F\5F\5F\40\66
\89\5D\5E\5E\3D\62\84\3C\60\81\56\59\5B\3C\5F\7E\50\5A\60\56\56\56\35\56\74\4F\4F\4F\4B\4F\52\33\52\6E\33\51\6B\32\51\6D\40\4C\54\3A\4D\5E\48\48\48\3C\41\43\3C\3F\41\29\41\58\3C\3C\3C\31\3E\49\28\3D\51\26\3C\51\24\3A\4F\5C\27\39\4A\26\39\49
\24\37\49\2C\35\3B\2D\30\31\21\32\42\26\30\38\2C\2C\2C\1C\2D\3D\1B\2B\3A\5C\27\5C\27\5C\27\23\28\2C\25\25\25\24\24\24\1C\1C\1C\13\1E\28\16\17\17\0B\12\18\0B\0C\0B\08\0C\0E\08\09\08\CB\53\1B\25\5C\30\5C\30\5C\30\01\74\52\4E\53\5C\30\40\E6\D8
\66\5C\30\5C\30\5C\30\FB\49\44\41\54\78\DA\63\60\C0\02\98\18\B0\03\46\66\6C\A2\5C\5C\62\62\16\5C\5A\8C\58\24\6C\6C\8D\4B\78\39\30\C5\5C\72\13\F9\45\BB\F9\B0\E8\10\16\14\98\10\AE\8F\29\A1\55\CA\2F\DA\66\89\C5\55\65\1E\02\E2\91\BA\98\5C\5A\AC
\B3\75\8A\3B\79\59\E1\7C\56\26\88\5C\5A\C6\02\53\3F\F1\58\75\B8\37\D8\92\9A\B4\59\C0\36\FB\9B\E5\F5\5A\C9\C2\35\70\56\AB\D6\3B\B2\31\30\B0\E7\98\07\F5\E5\72\23\AC\66\76\0E\E6\A9\F1\92\63\CC\72\F0\CE\9C\E8\C6\89\64\A7\74\B9\BB\67\A3\4F\74\11
\4F\58\7B\95\91\14\4A\5C\30\35\08\5C\6E\B5\F4\9B\08\A5\4C\5C\6E\54\46\71\2B\4B\7A\BC\AF\AB\81\7D\54\6D\0F\1F\1B\AA\07\E4\5B\03\42\42\45\92\25\52\35\D1\82\9C\C9\AE\4E\24\26\AE\52\D2\49\01\DD\CF\32\15\69\09\19\12\F9\7A\2C\18\B1\A6\D2\55\D8\21
\E9\A2\88\25\9E\D9\9B\5C\27\47\70\B3\60\89\3A\0E\25\76\35\56\1C\69\80\91\81\08\5C\30\5C\30\C7\4B\2B\F9\3B\20\91\D6\5C\30\5C\30\5C\30\5C\30\49\45\4E\44\AE\42\60\82\27\2C\31\34\2C\31\34\29\2C\28\32\2C\27\52\65\66\75\73\65\72\27\2C\27\69\6D\61
\67\65\2F\70\6E\67\27\2C\27\89\50\4E\47\5C\72\5C\6E\5C\5A\5C\6E\5C\30\5C\30\5C\30\5C\72\49\48\44\52\5C\30\5C\30\5C\30\18\5C\30\5C\30\5C\30\18\08\03\5C\30\5C\30\5C\30\D7\A9\CD\CA\5C\30\5C\30\02\43\50\4C\54\45\FF\FF\FF\FC\FC\FC\FD\FD\FD\FB\FB
\FB\C3\4C\36\FA\FA\FA\F7\F7\F7\E8\E8\E8\F6\F6\F6\F9\F9\F9\F2\F2\F2\E6\E6\E6\BE\3B\5C\22\BA\3A\5C\22\F1\F1\F1\EC\EC\EC\EB\EB\EB\E0\E0\E0\DF\DF\DF\C7\C7\C7\B4\B4\B4\3B\17\11\E5\E5\E5\E2\E2\E2\E1\E1\E1\D4\D4\D4\CD\CD\CD\CA\CA\CA\C9\C9\C9\C5\C5
\C5\BE\BE\BE\AE\AE\AE\A5\A5\A5\A3\A3\A3\A0\A0\A0\CB\78\68\71\71\71\C8\4E\37\C6\4D\37\C4\4D\36\6D\6D\6D\C0\3B\5C\22\BF\3B\5C\22\BD\3B\5C\22\5F\5F\5F\BC\3B\5C\22\BB\3B\5C\22\BA\3B\5C\22\B9\3B\24\B7\39\5C\22\5C\5C\5C\5C\5C\5C\B2\38\21\57\57\57
\54\54\54\96\2E\1C\4E\1D\14\4C\1B\13\3C\18\12\2D\16\11\2D\15\10\F8\F8\F8\F4\F4\F4\F3\F3\F3\EE\EE\EE\ED\ED\ED\E9\E9\E9\E7\E7\E7\E3\E3\E3\DC\DC\DC\D7\D7\D7\D6\D6\D6\D3\D3\D3\D0\D0\D0\CF\CF\CF\C6\C6\C6\C1\C1\C1\B9\B9\B9\B8\B8\B8\B6\B6\B6\B5\B5
\B5\B0\B0\B0\AA\AA\AA\A7\A7\A7\A4\A4\A4\DD\8D\7D\9F\9F\9F\9D\9D\9D\9A\9A\9A\99\99\99\D1\7F\70\94\94\94\93\93\93\8F\8F\8F\8E\8E\8E\D9\70\5B\D6\6F\5B\CD\72\61\CC\72\61\8A\8A\8A\CA\6D\5B\C1\6E\5E\84\84\84\83\83\83\CE\66\53\D3\63\4E\D0\5F\49\7E
\7E\7E\7A\7A\7A\B0\63\54\78\78\78\76\76\76\C9\56\41\CE\52\3A\74\74\74\B4\5B\4A\72\72\72\6E\6E\6E\C2\4D\36\6C\6C\6C\6A\6A\6A\C2\46\2F\C2\41\29\63\63\63\AD\46\32\BE\3F\5C\27\BD\3F\28\BD\3D\25\C2\3B\5C\22\B8\3E\5C\27\BD\3C\24\B6\3D\26\B9\3A\5C
\22\B4\3A\23\B6\39\5C\22\B4\39\5C\22\B0\37\20\AD\36\20\A2\3A\26\A1\35\21\51\51\51\98\31\1E\96\31\1E\99\2F\1D\94\30\1E\92\2F\1E\91\2F\1E\92\2C\1B\82\26\18\82\26\17\3E\3E\3E\50\33\2E\3B\38\36\65\24\19\46\2F\2A\5C\5C\25\1B\35\30\2E\57\21\19\42
\20\19\39\5C\22\1E\3B\1F\5C\5A\26\26\26\3C\1D\19\4E\16\5C\72\49\16\0C\24\24\24\33\1D\18\41\17\10\37\5C\5A\16\35\1B\16\2E\1B\18\2D\19\16\20\1E\1E\2C\19\17\2E\18\15\31\17\12\30\16\11\37\13\0C\25\5C\5A\17\26\18\16\1D\5C\5A\19\1F\19\18\19\19\19
\2F\0E\07\24\12\0E\28\0E\5C\6E\5C\22\10\5C\72\15\15\15\23\0F\0C\25\0E\5C\6E\2C\0B\05\21\09\05\1D\09\06\18\09\06\0E\56\9B\6F\5C\30\5C\30\5C\30\01\74\52\4E\53\5C\30\40\E6\D8\66\5C\30\5C\30\01\73\49\44\41\54\78\DA\63\60\A0\2E\B0\13\91\66\63\86
\71\98\18\19\E1\12\31\73\E7\6B\B0\B3\41\D8\81\4B\16\C8\71\41\A5\98\66\86\64\9A\9B\08\72\30\01\D9\BE\6B\53\AA\37\4B\F2\31\81\25\18\A7\65\E4\AB\59\98\5C\6E\71\30\30\C8\2E\8D\AB\34\DB\E8\C7\5C\72\D1\C2\3C\9D\45\53\4B\7D\46\B1\38\9B\E0\A6\78\83
\49\8B\54\FC\A1\12\8C\C2\EB\59\78\78\58\66\15\BA\6C\49\6E\98\B2\B7\4C\D1\13\6A\14\03\57\84\35\8B\B6\AE\B1\E8\AE\9C\8A\C9\3B\B3\82\A5\05\60\4E\64\16\88\B2\62\D1\D3\37\2C\2A\E8\DB\57\A2\20\C5\CF\5C\6E\77\2F\2B\7B\9A\25\0B\2F\AF\6A\EB\B6\A9\E1
\C2\FC\CC\48\5E\E4\E4\36\5A\9C\DE\C8\CB\6B\6C\A9\21\69\8B\EC\77\26\D9\5C\72\91\35\4D\86\FA\7A\6D\56\B1\DC\9C\48\12\3E\FB\95\6B\5C\27\6C\15\2D\D5\D5\6E\B7\8E\66\47\D8\91\B4\50\D9\A0\77\77\AA\91\28\D0\D9\2D\6B\E4\E1\AE\CA\9B\93\D8\6C\B6\5C\27
\5B\C1\5B\65\99\BA\96\66\E7\6A\0F\2E\88\3F\98\E6\25\D4\F5\EC\28\57\94\62\97\30\B1\50\AB\EF\58\25\5C\22\06\F5\F9\EC\89\FD\07\AA\94\64\F8\59\D9\24\4C\CD\55\BB\56\06\09\41\CC\62\94\5B\BE\5D\5C\27\D4\CB\11\68\5C\27\87\90\CE\8A\75\DD\F2\E2\50\4B
\B8\DC\45\02\64\D8\C1\AE\E4\10\0C\CB\55\12\76\80\86\15\23\9F\98\B3\3D\D4\F5\6C\EC\AE\6E\4E\36\48\D1\C9\04\63\33\B3\71\B0\E2\4B\07\5C\30\37\31\50\EB\EA\A3\E2\D4\5C\30\5C\30\5C\30\5C\30\49\45\4E\44\AE\42\60\82\27\2C\31\34\2C\31\34\29\2C\28\33
\2C\27\43\6F\6D\6D\65\6E\74\61\69\72\65\27\2C\27\69\6D\61\67\65\2F\70\6E\67\27\2C\27\89\50\4E\47\5C\72\5C\6E\5C\5A\5C\6E\5C\30\5C\30\5C\30\5C\72\49\48\44\52\5C\30\5C\30\5C\30\20\5C\30\5C\30\5C\30\20\08\06\5C\30\5C\30\5C\30\73\7A\7A\F4\5C\30
\5C\30\5C\30\04\67\41\4D\41\5C\30\5C\30\D9\04\DC\B2\DA\02\5C\30\5C\30\06\78\49\44\41\54\78\9C\C5\96\4D\6C\13\E9\19\C7\FF\F3\65\C7\C4\CD\87\9D\8F\5C\72\64\ED\B8\0E\34\C2\8B\A3\04\A9\21\28\40\D4\5C\22\4E\14\38\01\07\4A\94\03\7B\D8\6D\C3\A1\6A
\A5\48\91\B8\51\84\A0\52\37\D9\6A\A5\2A\3D\80\84\2A\55\8A\90\E0\C2\5C\6E\11\40\7C\E4\40\4C\88\6C\C7\DE\86\75\4C\24\5C\27\31\AC\89\67\3C\B6\C7\33\F3\3E\3D\90\44\D9\AC\D7\76\AA\7E\FC\A5\F7\34\EF\BC\CF\EF\79\DE\79\FE\F3\5C\30\FF\67\09\95\6E\DC
\BF\7F\7F\F7\E9\D3\A7\4F\F0\3C\CF\CB\B2\9C\D7\34\2D\F7\9F\5C\30\10\2B\DD\78\EA\D4\A9\C1\91\91\91\DF\AC\AE\AE\E2\ED\DB\B7\C9\78\3C\FE\4D\24\12\99\99\99\99\09\04\83\C1\D9\48\24\F2\6D\3A\9D\7E\BF\5D\5C\30\AE\CC\73\E1\EA\D5\AB\BF\77\3A\9D\1F\77
\75\75\FD\CA\ED\76\7F\6C\18\06\04\41\80\24\49\10\84\0F\05\CC\E5\72\48\26\93\CB\F1\78\FC\9F\4B\4B\4B\51\C6\98\56\EC\6C\5C\22\82\24\49\5C\5C\20\10\08\8D\8E\8E\7E\59\09\60\C3\EC\EC\6C\82\D6\54\28\14\48\37\0C\CA\9B\26\65\73\39\CA\66\B3\94\CB\E5
\28\9F\CF\53\A1\50\A0\4A\35\31\31\11\D8\C8\B0\0C\80\E3\DC\B9\73\BF\DE\B5\6B\57\FD\B7\0B\0B\48\C9\32\E4\64\12\6C\6E\0E\92\D3\09\4E\92\40\8C\81\88\C0\18\83\AE\EB\65\17\C7\71\30\4D\73\87\CB\E5\6A\5C\72\85\42\21\BE\5C\5C\09\78\9E\47\4E\D3\10\9D
\9A\82\94\4C\62\7E\64\04\7A\3E\0F\B1\BA\5C\5A\20\02\C7\71\DB\5A\8C\31\EC\DC\B9\B3\76\68\68\E8\F3\C6\C6\C6\76\BE\BF\BF\FF\C8\F1\E3\C7\7F\59\5C\6E\82\88\50\5D\57\07\73\7C\1C\5A\4B\0B\2C\7D\7D\5C\30\63\95\5C\5C\61\51\71\1C\87\70\38\FC\5D\24\12
\59\16\8F\1E\3D\3A\32\34\34\74\F4\C6\8D\1B\7F\49\24\12\19\59\96\97\C7\C6\C6\C6\5C\30\E8\EB\C1\AB\2C\16\58\5C\5A\5C\5A\B0\3A\30\5C\30\87\69\C2\AA\EB\80\20\80\E3\CA\7D\C3\C5\83\5B\2C\16\84\C3\E1\98\AE\EB\09\F1\D2\A5\4B\57\63\B1\98\E7\E2\C5\8B
\9F\75\74\74\E0\FE\FD\FB\A1\E6\E6\E6\B6\F1\F1\F1\3F\2D\2C\2C\A4\19\63\10\45\11\3F\EF\EA\02\E3\38\F0\1F\EE\10\CC\34\FF\ED\5C\6E\5C\30\C0\EC\EC\EC\1C\5C\30\59\20\A2\E5\60\30\98\AA\AD\AD\3D\B0\67\CF\1E\FB\DE\BD\7B\1D\86\61\D8\9A\9B\9B\DB\88\A8
\AA\BF\BF\FF\17\6E\B7\BB\5E\56\14\64\33\19\E8\3C\0F\A4\D3\E0\25\09\10\2A\F6\B1\5C\72\09\82\5C\30\55\55\31\36\36\76\2B\16\8B\3D\11\5C\30\E8\8C\B1\85\A7\4F\9F\BE\4E\A5\52\9E\B6\B6\B6\5D\BD\BD\BD\1F\D5\D4\D4\D8\DF\BD\7B\57\B7\6F\DF\3E\9F\D3\E9
\B4\3D\BE\7F\1F\86\24\61\FE\8B\2F\50\9D\4E\A3\C6\EF\07\78\1E\DC\5A\59\2B\5D\92\24\21\91\48\D0\B5\6B\D7\46\15\45\F9\66\3D\85\3C\11\C5\5E\BD\7A\F5\2A\14\5C\6E\D9\9D\4E\E7\DE\9E\9E\9E\C6\EE\EE\6E\57\3E\9F\B7\28\B9\9C\24\BE\7F\0F\F7\D7\5F\63\65
\7E\1E\6D\C3\C3\B0\55\55\81\18\DB\76\17\88\A2\88\60\30\98\5C\5A\1D\1D\FD\33\80\E4\E6\5C\5A\EA\5C\30\96\16\17\17\67\9E\3C\79\A2\58\2C\16\9F\CF\E7\AB\F3\78\3C\92\AA\28\48\A8\2A\D2\99\0C\D2\9F\7C\82\9F\FA\7C\B0\8A\15\BB\F8\86\88\08\A2\28\E2\D9
\B3\67\B1\89\89\89\AF\5C\30\64\B6\5E\5C\22\03\90\52\14\25\38\39\39\19\93\65\D9\DB\D0\D0\D0\E4\F1\78\D0\E8\70\A0\AE\B3\13\3F\F3\FB\51\5D\55\05\5C\22\DA\56\E0\CD\5C\30\2F\5F\BE\5C\5C\BC\7D\FB\F6\DF\5C\30\E4\8B\19\11\01\58\D1\75\FD\EF\77\EF\DE
\FD\52\96\65\3C\7F\FE\1C\05\5D\87\C3\6E\87\45\14\C1\71\1C\78\9E\2F\5B\EE\AD\C1\D7\B5\B9\7D\4B\39\61\CE\EF\F7\4B\BD\BD\BD\F0\7A\BD\98\9E\9E\46\34\5C\5A\85\AE\EB\30\D7\5A\50\92\A4\92\59\6F\5D\AC\88\79\95\BC\C8\AE\AE\2E\BF\20\08\F0\7A\BD\B0\D9
\6C\98\99\99\81\AA\AA\B0\5A\AD\98\9A\9A\C2\89\13\5C\27\E0\72\B9\60\18\06\68\CD\96\37\07\DC\5C\6E\53\4C\A5\5C\30\44\BF\DF\BF\6F\FD\E0\A6\A6\26\1C\3A\74\08\93\93\93\18\1C\1C\84\C3\E1\40\28\14\C2\C0\C0\5C\30\0E\1C\38\5C\30\C6\D8\0F\32\2C\06\52
\B1\6C\36\5B\EB\F4\F4\F4\DB\54\2A\45\44\44\86\61\90\61\18\A4\28\5C\6E\5D\BE\7C\99\44\51\A4\1D\3B\76\D0\91\23\47\E8\D6\AD\5B\44\44\64\9A\26\69\9A\46\9A\A6\51\3E\9F\A7\DC\DA\2F\5B\55\55\52\55\95\32\99\0C\11\11\DD\BC\79\33\5C\30\A0\AE\24\40\67
\67\67\FF\D2\D2\12\4B\26\93\DF\03\30\4D\93\88\88\EE\DD\BB\47\BB\77\EF\26\5C\30\D4\DA\DA\4A\57\AE\5C\5C\21\55\55\49\D7\75\D2\34\6D\23\F8\3A\40\26\93\21\45\51\88\88\E8\FA\F5\EB\CF\5C\30\D4\94\04\38\7B\F6\EC\6F\B3\D9\2C\2D\2F\2F\7F\0F\60\33\C4
\9B\37\6F\68\70\70\90\5C\30\90\CF\E7\A3\4C\26\43\8C\B1\8D\EC\55\55\DD\D8\AF\69\5C\5A\99\A6\49\8F\1F\3F\D6\5A\5A\5A\FE\5C\30\C0\02\94\18\48\CE\9F\3F\FF\E9\C1\83\07\BB\73\B9\1C\EC\76\3B\5C\30\FC\A0\BD\EA\EA\EA\70\F2\E4\49\F8\7C\3E\D4\D6\D6\42
\92\24\34\37\37\C3\6A\B5\82\31\06\C3\30\20\8A\5C\22\0C\C3\5C\30\63\0C\81\40\C0\38\73\E6\CC\57\89\44\E2\AF\5C\30\4A\CE\8F\96\87\0F\1F\4E\9B\A6\B9\51\01\D3\34\8B\AE\CD\E3\DA\A3\47\8F\E8\CE\9D\3B\14\0E\87\29\9F\CF\53\2A\95\5C\22\45\51\28\95\4A
\51\38\1C\A6\E1\E1\E1\59\5C\30\7B\B0\69\5E\FC\31\1F\70\A8\AA\5A\15\8F\C7\CB\7E\B6\8C\31\98\A6\09\9E\E7\71\F8\F0\E1\8D\8E\20\5C\22\E8\BA\8E\6C\36\8B\B9\B9\39\48\92\04\C3\30\02\5C\30\E6\F1\C1\EC\4A\EA\5C\27\82\20\1C\6B\6A\6A\BA\FC\E2\C5\8B\D5
\72\43\26\63\8C\4C\D3\24\5D\D7\C9\30\0C\5C\22\5C\22\5A\5D\5D\A5\68\34\4A\0F\1E\3C\A0\48\24\42\44\44\C7\8E\1D\FB\DD\D6\40\3F\E6\03\19\D3\34\1F\24\93\C9\95\42\A1\F0\69\39\DA\CD\F6\6B\9A\26\D2\E9\34\5E\BF\7E\8D\74\3A\8D\8E\8E\0E\B4\B4\B4\40\96
\65\16\8D\46\E7\2A\05\20\5C\30\06\80\95\0B\17\2E\FC\C3\6E\B7\B7\B3\62\3E\BA\F9\20\51\E4\EB\EB\EB\6B\DC\6E\77\43\7B\7B\7B\43\67\67\67\4D\5F\5F\1F\AC\56\2B\5C\30\60\71\71\F1\BB\78\3C\3E\5F\29\C0\BA\DE\87\42\A1\3F\E2\83\69\94\BB\37\1E\40\15\80
\5A\9E\E7\3F\72\B9\5C\5C\6E\AF\D7\EB\F1\F9\7C\9E\9E\9E\9E\B6\58\2C\16\01\B0\B2\F5\A5\ED\4F\95\E5\25\5C\30\90\5C\30\D8\5C\30\D8\01\D4\03\68\02\90\06\30\0B\40\FB\6F\03\14\D3\7A\B7\11\2A\E8\80\FF\A9\FE\05\4D\11\5D\3C\36\C2\48\20\5C\30\5C\30\5C
\30\5C\30\49\45\4E\44\AE\42\60\82',14,14);
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
  PRIMARY KEY (`id_prerequisite`)
);
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
);
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
  KEY `history_id_action_fk` (`id_action`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_history`
--

LOCK TABLES `workflow_resource_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_history` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_workflow`
--

LOCK TABLES `workflow_resource_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_resource_workflow` DISABLE KEYS */;
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
);
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
  PRIMARY KEY (`id_state`),
  KEY `fk_state_id_workflow` (`id_workflow`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_state`
--

LOCK TABLES `workflow_state` WRITE;
/*!40000 ALTER TABLE `workflow_state` DISABLE KEYS */;
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
);
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
  PRIMARY KEY (`id_task`),
  KEY `task_id_action_fk` (`id_action`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task`
--

LOCK TABLES `workflow_task` WRITE;
/*!40000 ALTER TABLE `workflow_task` DISABLE KEYS */;
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_archive_cf`
--

LOCK TABLES `workflow_task_archive_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_archive_cf` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_archive_resource`
--

LOCK TABLES `workflow_task_archive_resource` WRITE;
/*!40000 ALTER TABLE `workflow_task_archive_resource` DISABLE KEYS */;
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_comment_config`
--

LOCK TABLES `workflow_task_comment_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_comment_config` DISABLE KEYS */;
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_complete_response_cf`
--

LOCK TABLES `workflow_task_complete_response_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_complete_response_cf` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_complete_response_history`
--

LOCK TABLES `workflow_task_complete_response_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_complete_response_history` DISABLE KEYS */;
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
);
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
);
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
);
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
);
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
);
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
);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
);
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_cf`
--

LOCK TABLES `workflow_task_notify_gru_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_cf` DISABLE KEYS */;
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
  PRIMARY KEY (`id_history`,`id_task`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_history`
--

LOCK TABLES `workflow_task_notify_gru_history` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_history` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_gru_mapping_manager`
--

LOCK TABLES `workflow_task_notify_gru_mapping_manager` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_gru_mapping_manager` DISABLE KEYS */;
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_resubmit_response_cf`
--

LOCK TABLES `workflow_task_resubmit_response_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_resubmit_response_cf` DISABLE KEYS */;
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
);
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
);
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_information`
--

LOCK TABLES `workflow_task_unittree_information` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_information` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_unit_assignment_cf`
--

LOCK TABLES `workflow_task_unittree_unit_assignment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_unit_assignment_cf` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_unit_selection_parametrable_cf`
--

LOCK TABLES `workflow_task_unittree_unit_selection_parametrable_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_unit_selection_parametrable_cf` DISABLE KEYS */;
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_unittree_unit_selection_specific_unit_cf`
--

LOCK TABLES `workflow_task_unittree_unit_selection_specific_unit_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_unittree_unit_selection_specific_unit_cf` DISABLE KEYS */;
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
);
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
);
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
  PRIMARY KEY (`id_workflow`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_workflow`
--

LOCK TABLES `workflow_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_workflow` DISABLE KEYS */;
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
);
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
