-- MariaDB dump 10.19  Distrib 10.6.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: matomo
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

CREATE DATABASE matomo;

USE matomo;

--
-- Table structure for table `matomo_access`
--

DROP TABLE IF EXISTS `matomo_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_access` (
  `idaccess` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `access` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idaccess`),
  KEY `index_loginidsite` (`login`,`idsite`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_access`
--

LOCK TABLES `matomo_access` WRITE;
/*!40000 ALTER TABLE `matomo_access` DISABLE KEYS */;
INSERT INTO `matomo_access` VALUES (1,'citelibre',1,'view');
/*!40000 ALTER TABLE `matomo_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_blob_2024_06`
--

DROP TABLE IF EXISTS `matomo_archive_blob_2024_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_blob_2024_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_blob_2024_06`
--

LOCK TABLES `matomo_archive_blob_2024_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_blob_2024_06` DISABLE KEYS */;
INSERT INTO `matomo_archive_blob_2024_06` VALUES (1,'Actions_actions',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x���͎�0�_%\n\'�2v>�# q�.Q�z�����X��x^�L\Z�i�d���C�I矙��_RFك`N����=��cv�.yf�5#��wB�ObYq�+��b�?|��Z˜۱`��\0/(xP��Ӊ�M�&@E��?h�l�k>��]�H����~��CM��I�L6B�ɽ������hs�O}��5����+L��\r\0{���J׵�z��%��C<�V���a:��UZԷ��-�:geg\"��%P6��}h�Ⱥ̓mU�x]���(sClD���P4�%O�t%�)����� �\\��6�R�����\Z��\'�J�������.�$+�u���1>�4c|Y�ur1ʃ<n\ZD�\Z�2�s�6$���e\r���G�\0��u��53\"dƓm*7v7�s\08��U�o��,y��Xsk���C�8]�&�����F��U־�~?Ҿ��|\'�����՟�+�l��q+/��1�(F����\"�Q΂����,�2�(g�����ȋ&�\"y��	��PD��5��KDi\r�\Z!��2�a��F�<��<��C�=<q�7��;����8r8:�=�o���F�E�\0�O,��(5!��Xb�X]z�X`D,�?�\Z>�X`D,�´l�X0��Kbi\r�K>N, ��rb�YSd�X�T|��g�i��\n8���}�'),(1,'Actions_actions_url',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�}�[r� ���.*��}���%��JHәL�^�4����O�N!�K\n*N�Zz74�I�O�K*CK���e-�>�JR��]��/��\'��/U�l\\+9�z�7\\�ܳ�0wvמY�6{S�+�\\�pb���ݤmw\"�6�r�\Z�s�\'>������S�\0��i,{���Y���R�ezI�K2�&��|0�I\0\0������{�l,1�H�zvѪ���s���(���OP�r��Y�$]dZLF`�c���/��R\r�K�_�P��%��f���*��~����:ś%��s˯�Ȗߚ�r��]���f�}}��v��\\ 0w6�cg�%\Z��ܟS�Yu���;f,��)�Ik����y�*ci\np\\ϑcp�8K<?��w5'),(1,'Actions_actions_url_chunk_0_99',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x��K��0ǿK{Lۼ���z]��C/�M��-�{�*߽6��`��K+m��H3�����I(�/��S�1�UR_p����/��t�%wi����GW�oE)�l����������(��摥O[.��w9�a�X]ޒ�3��C��E�\0u���A(���eV9P�\0E��Gw�S����1��y*�������S$����<~b�0pR��\0G�kT��Yos{�yZ>�eeZ#�S��.w�פv{��!�3���f�2��D������Q�#OW�ų)��1�C[���^!����b�r���?�D����E��]Q���p�֖�wu��)K+��90�-��?Q�(��\n�!w8��<Ίd��&\'r稙ȯ�8�p2�Zun��T����J(�u/�硬V}(��8��&+vIv(���85U�.��c#i��L�o��Y��-��`!�W\Zq:�`�����Z���҆�\0Kg~?X�d���+�6`�C\Z�rq��C�\0��@}H3X*��TL0�e4��KŔ�YH�3������Y�3�q�M���	��)53�>$R�4�6Ze)m�I�Ҙ�� e�xq��!�Z�!���[��\n)�H�@�o@����z�2���ܩ+\0�6D0��C�HG��nyAZ^��A����u�0Ȝ�=��}`��� q��AL� &zz��5� 6��phC��V� ���8���	���wt&z�f�`�d�G-.����2�3F�/�}Zƒ51I)*U☉3fOCuԜ��ԍ4��H�������t�g��m�_J�j�ԛ�)i���j�@źE�(vm�R���]�k��e�N��%�:�&\n�G��M�[���Hf���Nǧ��T�*�VĽRetU��1�O'),(1,'Actions_downloads',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Actions_outlink',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Actions_sitesearch',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Actions_SiteSearchCategories',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Contents_name_piece',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Contents_piece_name',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'DevicePlugins_plugin',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�}�A�0л��\"���C�\"�\"H�a���`�Y$�\'�7I\',�v)��(��r9��F<9A�U��oc,[���#[��z7�O#U�t�uª��e�����|Iь�z}���$4x}�t)ץ%L~r�G�:�T\n��Qvsl})��\\�n'),(1,'DevicesDetection_brands',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�5�K\n�0D�$�V���;DpQ�˒��J]<�3��`5�ߜ;���4��Vl�)(A^�O��JKE�$���L��ͥ�/�#�'),(1,'DevicesDetection_browserEngines',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs���l��̼l%�L+# 6bc 6b(m\nb��Ay@l�\r\r�ZL�\"� ^���Uu-�?��Z\0�%�'),(1,'DevicesDetection_browsers',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�5�;\n�0D��/Ζ6V�a�@��a��F��1�a�O���s��u���h �����%)Uɦe�\\-ye3\r�&�����n.yW�$b'),(1,'DevicesDetection_browserVersions',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�5�;\n�0D��n~�lic�\"Xҥ����c>0��h$	�7;ZE�)�~���\r�8�mX�H�UXqJT��0��3��Ne�O_�GJ �>n.���%�'),(1,'DevicesDetection_models',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�5�]\n�0��\"9A֦����;lu�Р��-��nJ|���j�g��7j��e�츀\"���{z\\�Z���u�p5Ș�h��s�!���P�1	�lZO���͝[�CA*>'),(1,'DevicesDetection_os',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs����2J>�~J֙VF@l��@l�&P��61����J\ZB���EjA�D+��Z�1~ֵ�\0�$�'),(1,'DevicesDetection_osVersions',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�5��	� D{��F]�l�`r�y{�\Z��1�ɰ�F2�o�\0��~*IC]gޘ�`W��V��0�界�Z�&�|͘)à�y�d�^%�'),(1,'DevicesDetection_types',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs��A��VF@l��@l�&P��61��@*͡��!T��X��K�2����g][\0�Y#M'),(1,'Events_action_category',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Events_action_name',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Events_category_action',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Events_category_name',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Events_name_action',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Events_name_category',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Goals_ItemsCategory',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Goals_ItemsCategory_Cart',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Goals_ItemsName',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Goals_ItemsName_Cart',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Goals_ItemsSku',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Goals_ItemsSku_Cart',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Referrers_keywordByCampaign',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Referrers_keywordBySearchEngine',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Referrers_searchEngineByKeyword',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Referrers_type',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs��3���J��@iS���3\0bs(mh�bb\0�����kA��Y��\0��#N'),(1,'Referrers_urlBySocialNetwork',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Referrers_urlByWebsite',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'Resolution_configuration',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�5�M\n� ���	f��,��w0h!�k�wo[|�x/�QH2�o\"�	���y��fߒ,�p���%2R`V�?t�އ�H��2����i=ej�7IZ{h�\'�'),(1,'Resolution_resolution',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�5��	� D{�\nv����r�y	��g\r���(�����&ctDP��nT�$��#��J�3��F2�ָ|H;�qlٓ�_3WR0�\\7g��8z%�'),(1,'UserCountry_city',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�5�K\n�0D�$�V���;DpQ�˒��J]<�3��`5�ߜ;���4��Vl�)(A^�O��JKE�$���L��ͥ�/�#�'),(1,'UserCountry_country',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�5�K\n� D��	��N��;�Ѕ�N��ܽ���c>0�`�\nE�́ѱ!4���#\"<=HEt�INq��m�\\V\"g_ʼ&���fR�͛S�^x}$�'),(1,'UserCountry_region',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�5�K\n�0D�$�V���;DpQ�˒��J]<�3��`5�ߜ;���4��Vl�)(A^�O��JKE�$���L��ͥ�/�#�'),(1,'UserId_users',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2���\0O�'),(1,'UserLanguage_language',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs�����<��b%�L+# 6bc 6b(m\nb��Ay@l�\r\r�ZL�\"� ^���Uu-�?��Z\0�X%�'),(1,'VisitorInterest_daysSinceLastVisit',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x���=1��Rp4M?4�\\�nt�\n\n��\'8�ߍ�m�-/Jx���}mL{�.�����gW����������ױ����� ���\Z{^%Q�����y��\n�P�]��@@��,!Bԅl		�.KȐu�h	�.�T!�;\Z�@���1�B���	![���,�rK��)ek-zI�1��!�5e�\0��$�'),(1,'VisitorInterest_pageGap',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x���1�0л uD2�$)l9@��J,e���\n�/�Ow����b]��ש�p���\0;��6��7r%�󗞪�f!98*�X��а�B�A�Ʉ�)�_a	���!�x�5$<��gr�-59��L�#����F'),(1,'VisitorInterest_timeGap',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x���1�0л uD�8������!R��Q�^:�Sk�/O@�\n��:�ǎ	���k��#��U�����9W�7����W�?�Y�S`Xd$�ihP�[,@����(S���9ڥD�����?�9R\\�E�]�P� Xk�,�{����#�|�D�_'),(1,'VisitorInterest_visitsByVisitCount',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x���=\n�0�:\n$�/���wp�C [Ɛ�W�����aÇ�4)vn�cZ���yX����gO��$$il�>d\\�i\Z��)�׽\0%��+h$d�XȑP�`�DB���\Z	�\ZZ$t�X葰Ђ�\n��J<�\n	�RI���K�ڨr��j6�To7G\n�g������FY�D���@c'),(1,'VisitTime_localTime',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x���;�0��pf�\0�w�@J�D�q�\0���Tk,��\'�n����2{h����\'�yyo]�6W�:C��,�L�;�9�	��{q�[�ٽ��uȫm��BT5Z5Q5�jU#�FQ5�jU3�fQu��ATiuU\'Z�DUp� ��\'�O�@�	����w�s�Ƙ���P�HA�8SP9TR�S�U�XA�8WPyTb�Tb�d/��\'��Me�+�xu|�*'),(1,'VisitTime_serverTime',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47','x���;�0��pf�\0�w�@J�D�q�\0���Tk,��\'�n����2{h����\'�yyo]�6W�:C��,�L�;�9�	��{q�[�ٽ��uȫm��BT5Z5Q5�jU#�FQ5�jU3�fQu��ATiuU\'Z�DUp� ��\'�O�@�	����w�s�Ƙ���P�HA�8SP9TR�S�U�XA�8WPyTb�Tb�d/��\'��Me�+�xu|�*'),(2,'Actions_actions',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x���͎�0�_%\n\'�2v>�# q�.Q�z�����X��x^�L\Z�i�d���C�I矙��_RFك`N����=��cv�.yf�5#��wB�ObYq�+��b�?|��Z˜۱`��\0/(xP��Ӊ�M�&@E��?h�l�k>��]�H����~��CM��I�L6B�ɽ������hs�O}��5����+L��\r\0{���J׵�z��%��C<�V���a:��UZԷ��-�:geg\"��%P6��}h�Ⱥ̓mU�x]���(sClD���P4�%O�t%�)����� �\\��6�R�����\Z��\'�J�������.�$+�u���1>�4c|Y�ur1ʃ<n\ZD�\Z�2�s�6$���e\r���G�\0��u��53\"dƓm*7v7�s\08��U�o��,y��Xsk���C�8]�&�����F��U־�~?Ҿ��|\'�����՟�+�l��q+/��1�(F����\"�Q΂����,�2�(g�����ȋ&�\"y��	��PD��5��KDi\r�\Z!��2�a��F�<��<��C�=<q�7��;����8r8:�=�o���F�E�\0�O,��(5!��Xb�X]z�X`D,�?�\Z>�X`D,�´l�X0��Kbi\r�K>N, ��rb�YSd�X�T|��g�i��\n8���}�'),(2,'Actions_actions_url',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�}�[r� ���.*��}���%��JHәL�^�4����O�N!�K\n*N�Zz74�I�O�K*CK���e-�>�JR��]��/��\'��/U�l\\+9�z�7\\�ܳ�0wvמY�6{S�+�\\�pb���ݤmw\"�6�r�\Z�s�\'>������S�\0��i,{���Y���R�ezI�K2�&��|0�I\0\0������{�l,1�H�zvѪ���s���(���OP�r��Y�$]dZLF`�c���/��R\r�K�_�P��%��f���*��~����:ś%��s˯�Ȗߚ�r��]���f�}}��v��\\ 0w6�cg�%\Z��ܟS�Yu���;f,��)�Ik����y�*ci\np\\ϑcp�8K<?��w5'),(2,'Actions_actions_url_chunk_0_99',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x��K��0ǿK{Lۼ���z]��C/�M��-�{�*߽6��`��K+m��H3�����I(�/��S�1�UR_p����/��t�%wi����GW�oE)�l����������(��摥O[.��w9�a�X]ޒ�3��C��E�\0u���A(���eV9P�\0E��Gw�S����1��y*�������S$����<~b�0pR��\0G�kT��Yos{�yZ>�eeZ#�S��.w�פv{��!�3���f�2��D������Q�#OW�ų)��1�C[���^!����b�r���?�D����E��]Q���p�֖�wu��)K+��90�-��?Q�(��\n�!w8��<Ίd��&\'r稙ȯ�8�p2�Zun��T����J(�u/�硬V}(��8��&+vIv(���85U�.��c#i��L�o��Y��-��`!�W\Zq:�`�����Z���҆�\0Kg~?X�d���+�6`�C\Z�rq��C�\0��@}H3X*��TL0�e4��KŔ�YH�3������Y�3�q�M���	��)53�>$R�4�6Ze)m�I�Ҙ�� e�xq��!�Z�!���[��\n)�H�@�o@����z�2���ܩ+\0�6D0��C�HG��nyAZ^��A����u�0Ȝ�=��}`��� q��AL� &zz��5� 6��phC��V� ���8���	���wt&z�f�`�d�G-.����2�3F�/�}Zƒ51I)*U☉3fOCuԜ��ԍ4��H�������t�g��m�_J�j�ԛ�)i���j�@źE�(vm�R���]�k��e�N��%�:�&\n�G��M�[���Hf���Nǧ��T�*�VĽRetU��1�O'),(2,'Actions_downloads',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Actions_outlink',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Actions_sitesearch',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Actions_SiteSearchCategories',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Contents_name_piece',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Contents_piece_name',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'DevicePlugins_plugin',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�}�A�0л��\"���C�\"�\"H�a���`�Y$�\'�7I\',�v)��(��r9��F<9A�U��oc,[���#[��z7�O#U�t�uª��e�����|Iь�z}���$4x}�t)ץ%L~r�G�:�T\n��Qvsl})��\\�n'),(2,'DevicesDetection_brands',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�5�K\n�0D�$�V���;DpQ�˒��J]<�3��`5�ߜ;���4��Vl�)(A^�O��JKE�$���L��ͥ�/�#�'),(2,'DevicesDetection_browserEngines',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs���l��̼l%�L+# 6bc 6b(m\nb��Ay@l�\r\r�ZL�\"� ^���Uu-�?��Z\0�%�'),(2,'DevicesDetection_browsers',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�5�;\n�0D��/Ζ6V�a�@��a��F��1�a�O���s��u���h �����%)Uɦe�\\-ye3\r�&�����n.yW�$b'),(2,'DevicesDetection_browserVersions',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�5�;\n�0D��n~�lic�\"Xҥ����c>0��h$	�7;ZE�)�~���\r�8�mX�H�UXqJT��0��3��Ne�O_�GJ �>n.���%�'),(2,'DevicesDetection_models',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�5�]\n�0��\"9A֦����;lu�Р��-��nJ|���j�g��7j��e�츀\"���{z\\�Z���u�p5Ș�h��s�!���P�1	�lZO���͝[�CA*>'),(2,'DevicesDetection_os',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs����2J>�~J֙VF@l��@l�&P��61����J\ZB���EjA�D+��Z�1~ֵ�\0�$�'),(2,'DevicesDetection_osVersions',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�5��	� D{��F]�l�`r�y{�\Z��1�ɰ�F2�o�\0��~*IC]gޘ�`W��V��0�界�Z�&�|͘)à�y�d�^%�'),(2,'DevicesDetection_types',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs��A��VF@l��@l�&P��61��@*͡��!T��X��K�2����g][\0�Y#M'),(2,'Events_action_category',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Events_action_name',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Events_category_action',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Events_category_name',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Events_name_action',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Events_name_category',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Goals_ItemsCategory',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Goals_ItemsCategory_Cart',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Goals_ItemsName',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Goals_ItemsName_Cart',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Goals_ItemsSku',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Goals_ItemsSku_Cart',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Referrers_keywordByCampaign',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Referrers_keywordBySearchEngine',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Referrers_searchEngineByKeyword',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Referrers_type',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs��3���J��@iS���3\0bs(mh�bb\0�����kA��Y��\0��#N'),(2,'Referrers_urlBySocialNetwork',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Referrers_urlByWebsite',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'Resolution_configuration',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�5�M\n� ���	f��,��w0h!�k�wo[|�x/�QH2�o\"�	���y��fߒ,�p���%2R`V�?t�އ�H��2����i=ej�7IZ{h�\'�'),(2,'Resolution_resolution',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�5��	� D{�\nv����r�y	��g\r���(�����&ctDP��nT�$��#��J�3��F2�ָ|H;�qlٓ�_3WR0�\\7g��8z%�'),(2,'UserCountry_city',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�5�K\n�0D�$�V���;DpQ�˒��J]<�3��`5�ߜ;���4��Vl�)(A^�O��JKE�$���L��ͥ�/�#�'),(2,'UserCountry_country',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�5�K\n� D��	��N��;�Ѕ�N��ܽ���c>0�`�\nE�́ѱ!4���#\"<=HEt�INq��m�\\V\"g_ʼ&���fR�͛S�^x}$�'),(2,'UserCountry_region',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�5�K\n�0D�$�V���;DpQ�˒��J]<�3��`5�ߜ;���4��Vl�)(A^�O��JKE�$���L��ͥ�/�#�'),(2,'UserId_users',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2���\0O�'),(2,'UserLanguage_language',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs�����<��b%�L+# 6bc 6b(m\nb��Ay@l�\r\r�ZL�\"� ^���Uu-�?��Z\0�X%�'),(2,'VisitorInterest_daysSinceLastVisit',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x���=1��Rp4M?4�\\�nt�\n\n��\'8�ߍ�m�-/Jx���}mL{�.�����gW����������ױ����� ���\Z{^%Q�����y��\n�P�]��@@��,!Bԅl		�.KȐu�h	�.�T!�;\Z�@���1�B���	![���,�rK��)ek-zI�1��!�5e�\0��$�'),(2,'VisitorInterest_pageGap',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x���1�0л uD2�$)l9@��J,e���\n�/�Ow����b]��ש�p���\0;��6��7r%�󗞪�f!98*�X��а�B�A�Ʉ�)�_a	���!�x�5$<��gr�-59��L�#����F'),(2,'VisitorInterest_timeGap',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x���1�0л uD�8������!R��Q�^:�Sk�/O@�\n��:�ǎ	���k��#��U�����9W�7����W�?�Y�S`Xd$�ihP�[,@����(S���9ڥD�����?�9R\\�E�]�P� Xk�,�{����#�|�D�_'),(2,'VisitorInterest_visitsByVisitCount',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x���=\n�0�:\n$�/���wp�C [Ɛ�W�����aÇ�4)vn�cZ���yX����gO��$$il�>d\\�i\Z��)�׽\0%��+h$d�XȑP�`�DB���\Z	�\ZZ$t�X葰Ђ�\n��J<�\n	�RI���K�ڨr��j6�To7G\n�g������FY�D���@c'),(2,'VisitTime_localTime',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x���;�0��pf�\0�w�@J�D�q�\0���Tk,��\'�n����2{h����\'�yyo]�6W�:C��,�L�;�9�	��{q�[�ٽ��uȫm��BT5Z5Q5�jU#�FQ5�jU3�fQu��ATiuU\'Z�DUp� ��\'�O�@�	����w�s�Ƙ���P�HA�8SP9TR�S�U�XA�8WPyTb�Tb�d/��\'��Me�+�xu|�*'),(2,'VisitTime_serverTime',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47','x���;�0��pf�\0�w�@J�D�q�\0���Tk,��\'�n����2{h����\'�yyo]�6W�:C��,�L�;�9�	��{q�[�ٽ��uȫm��BT5Z5Q5�jU#�FQ5�jU3�fQu��ATiuU\'Z�DUp� ��\'�O�@�	����w�s�Ƙ���P�HA�8SP9TR�S�U�XA�8WPyTb�Tb�d/��\'��Me�+�xu|�*'),(3,'Actions_actions',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�Ŗˎ�0F_Q��6ⷹ�l+uю*U�D��*��L�h����\r�q�g4M#}|>A�$Y����$Sa|hb/��lIr;ibĶ��2�.kb}%���ȇ��[�cU;�1������@�뉽���|\0�b�wb�܉�~Տ�fW��$-	{���_v��<�\\�ʚ���� ͻ�}l+h9�ֆ��3!O�j� �17���a��S�κ�|ȓ�I����u�@abuV6�j��vT��J�K�@���U�iR��+l�H�u�\"MC��uC�f1�o�9E���v�\'9$�H��yUۜ0Z�J�?�|~�(��[yvg�Z���+��2ͫl}\n��zQ���2h;❭�a�kW5���ZK8݉ߞ���)�Rx�f���-�m��_5�r�n3����)#=	���M\'�y�n1���ޓ\"+��Z�~��(�V����9�)\'�/ծ�����A���\';��䗵���^Q����XE����4Q/M�ڙ�V�t��M��f��g:�\\#g\"sg��s&;y�Zg\"Sg���]��9���g�:34wf��:�L0v�p��u8�L�s��{���4P!�;��+��cљc�c������Jzipki������4aN�}ה4efF�`.M��^+M0�&�LvV�0\'��4���F�d M\'0��p����H30���϶�{z�=�6��'),(3,'Actions_actions_url',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�}�[r� ���.*��}���%��JHәL�^�4����O�N!�K\n*N�Zz74�I�O�K*CK���e-�>�JR��]��/��\'��/U�l\\+9�z�7\\�ܳ�0wvמY�6{S�+�\\�pb���ݤmw\"�6�r�\Z�s�\'>������S�\0��i,{���Y���R�ezI�K2�&��|0�I\0\0������{�l,1�H�zvѪ���s���(���OP�r��Y�$]dZLF`�c���/��R\r�K�_�P��%��f���*��~����:ś%��s˯�Ȗߚ�r��]���f�}}��v��\\ 0w6�cg�%\Z��ܟS�Yu���;f,��)�Ik����y�*ci\np\\ϑcp�8K<?��w5'),(3,'Actions_actions_url_chunk_0_99',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x���n�0�߅E���{�j�լf1Dm�!�HU�}lƍ1�6�\"j�4@Ǉ98I���dS��#8�b~\0m�\r\'|�C\'���.�-�u��Z�*�&�W��c��n���P�<e��n��o�q�%;��o�\"k�M��Z�,����	��?�6	�n\0B�	�ܲ7B��Q\Z�~<DMvH�\"m����G��l���]�Ϛ:zΚ�������Y1�֊��#���)���.�e��\Z�\"�#�:�B�Pg\Zl��LM��세v�R�r�˓r���U$Ӫ0��%�!:V�.��x�7�\'d7��P=��ɼEN�7`\"r��Zm0�yW�y�de1\\!3�ߞ��<����cZ숛Wd.�(/�dL�I=:_7��E��������ڜؑ��P��K|�Z���}���:/wq�/�&��W�f�}�K�YS ��I��#�ma��A�7Ԣ\r��j��W�\rV�	L��l��l�4�c��\r�\r��x�R��)�zo���Y�!{)��3Ox���N����	����N�9�m^?��O9�����0\n�K�m���!��� (s\r��\Z9�\Zƺ~7�8��pt���6C��k��	����t{�y�뽍�Y@8�k� `s�u��y%�gB8O�(��\r�:q氶6{B�	�;\'2�W�ǔ�c�(M,��Qw!�R*i?��M�D��<�>�P�*pa�@��c�a��!�tbZ��\0�Q�/�{�D���6B�\"gL҆�<�7\r5	f�`�/��v���^�SEP���X@ud�r�ېy����oMh�ё���\'=Q��f���u��a��\n�Y)3�ߗy�VeMT7qմ��GeOG��i�v�V9�4%��I�2���5_���h�X���+&��Xׂ�a�3ֵq���1_����-X�ZЌ2iF��~&�Zؤm3\"�H���j,-<}ל��]s�����#\Zn��?���'),(3,'Actions_downloads',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Actions_outlink',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Actions_sitesearch',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Actions_SiteSearchCategories',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Contents_name_piece',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Contents_piece_name',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'DevicePlugins_plugin',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x���Q�0��cC�w��T� C�!�ݽ����۟�������!��ڃ��q\09s���G*��eK�!C!e�7F�֐����Pȵ3��r�oGF�t7�I3*�(�P���r=_\\�w6��!je4Z�g�vLkE\\���lGǷfJs�8\'A?�~�8���\r.�6'),(3,'DevicesDetection_brands',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=�A� ����?�L<�p�H�����M\'��x�\n\'�A�舠VΫ�t8I�_��eU��q{����*£�[u����v�Ώik��y\0�&�'),(3,'DevicesDetection_browserEngines',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=�A� ��� ����L<4/	�\"z�t�i6��\'�O\"ʍ��~d��k��$��4�k݂�6Y�\Zs��}��}5���UwJյ�k}\0H(�'),(3,'DevicesDetection_browsers',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=��\r�0Dw���sIC�F���.e�݉!P<��w>�E�0,�_Hh��y�\n�v�;q��!-(���=#�`҃Bxt|�F���;��u���oQ�\''),(3,'DevicesDetection_browserVersions',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=�;� D�0������;`bABGI���h1�I��H���%ÂR��D�������� ��3j�n	r�i�]aZ\\�mP��ؽסY�]�\'@��n;���(V'),(3,'DevicesDetection_models',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=�[\n�0D�R�\n�(��C�5��Ti��ws��q�3L�FIP`.�Q2h	C\\�3��;~�7��)���n�	��;���3=�[�m��k�Y{��?U��۫�(�*o/�u�?,�'),(3,'DevicesDetection_os',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=��	� D{�\n4~���=�A��Q�=n49���L�F�P�`>hT�u�:�G$��+ۺfX\r��L`�g�?�f��W��������$(�.k�{\0�W\'x'),(3,'DevicesDetection_osVersions',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=��	� D{����V�` ��G���19<��!QG�O<j��xݙ����#��,q�\\�+U_H����;�cz�@Z�ھS1����O�@m�-pkf(Q'),(3,'DevicesDetection_types',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=��\r� w��\0f��J} �㉲{IK�8Ų<F�+�D�舠&�ը�Y�ۺ\\�|�d9�U\n�4�3dPO�ު3��ZmG�0�֎�z�8&\n'),(3,'Goals_ItemsCategory',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Goals_ItemsCategory_Cart',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Goals_ItemsName',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Goals_ItemsName_Cart',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Goals_ItemsSku',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Goals_ItemsSku_Cart',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Referrers_keywordByCampaign',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Referrers_keywordBySearchEngine',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Referrers_searchEngineByKeyword',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Referrers_type',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2��δ2�N�2�1,����L��r�Rs��3����6b3mi\rҕie0�M̠<��9���K�2��������\0�c#%'),(3,'Referrers_urlBySocialNetwork',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Referrers_urlByWebsite',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'Resolution_configuration',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=�;\n�0D�H���Q�MK��@\nC�4㻯�����ejk�GB=0���n;�����gRI�Oq̤��=����|R����3t�A!\\8��K3�w3O�6�-����*�'),(3,'Resolution_resolution',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=�A� �������x ��ń�w��I7��djk��BB���μ\'�e����LZ 7����b�|�n)F4+=(�Q�w:4�[�d0j�M[{\0IA(�'),(3,'UserCountry_city',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=�A� ����?�L<�p�H�����M\'��x�\n\'�A�舠VΫ�t8I�_��eU��q{����*£�[u����v�Ώik��y\0�&�'),(3,'UserCountry_country',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=�K\n�0D��/���;DpQ许*���V���,z�a��BFo��*�Y��j�v���SZPR�3�{A��I�҃Bxtz�F���;�>tm�1nx\n\'|'),(3,'UserCountry_region',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=�A� ����?�L<�p�H�����M\'��x�\n\'�A�舠VΫ�t8I�_��eU��q{����*£�[u����v�Ώik��y\0�&�'),(3,'UserId_users',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�K�2���\0O�'),(3,'UserLanguage_language',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x�=�;\n� �}@�\'����A�H*��qͧv`���2G�OZ��x�B<=��U�3���^3�yi&�,d؁�\r�ڙ��ķ߻�D(�.k;�~!('),(3,'VisitorInterest_daysSinceLastVisit',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x���=!��\"t��5n]��صXp�����^;th�ۋ�	����ZX�Ĵ�ke�jI���X�s��GZ�s~]J-Ϫba�d�*n���j^[�8��Qb�A)��b$e�$ŀ�+)$+NR,XY����J�^V&I	d��U,�	p`1�/s������L~�wط-������O� �YS���Q����$i{��/�'),(3,'VisitorInterest_pageGap',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x���1\n�0л:\n,�NRi�z:�e�{�:�l_��v3IvtK�,_A�ح\Zm�����萰�wӨ�(���$f�v���`�(+V)�3V2R\n��T�X�H�x�Q�2\r�b��$��<d\"K����Y�SYo��D��CW�_�(ŀ'),(3,'VisitorInterest_timeGap',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x���1\n�0л:\n$�q��-�R�Ȗ1������ھ����@�\ni�ǎ�-��FmG	�P[a^��������Sj���?�Y�S�����K�I�N��P��F_̄-��\'��92S�I����%�-�=��$0S��*��\Z���ɫ���t~\0��ʙ'),(3,'VisitorInterest_visitsByVisitCount',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x���;\n�0�:\n$���[�;����-��ݫ%СH�~?��e�%�C�u�w`��d	G��N]	���(�k�^��)��=a*����=%B���)	��$Oɐ}%{J��+�S*T_�����+��$	;�Byw��Lx��d��f.�q�[���O��n�wC^��^�C1҃��t}Z[�'),(3,'VisitTime_localTime',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x���A\n�0����K���C�`���K��6�P�q5�D�ЏLnɷٛq�X�o�����X�x\\�eZ��Ρ,R�m��������o���^��&j4j�h�Ѩ�&\ZM�hK��&�i4k��v�hO��&:�蠉���I(�Tg	�%���:<���gz}�R��_༵y�u��E8UY�DZ�s�W�`A$8Y��Dj���[��2�[��2�i��8%:OW�$J�ON]�'),(3,'VisitTime_serverTime',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47','x���A\n�0����K���C�`���K��6�P�q5�D�ЏLnɷٛq�X�o�����X�x\\�eZ��Ρ,R�m��������o���^��&j4j�h�Ѩ�&\ZM�hK��&�i4k��v�hO��&:�蠉���I(�Tg	�%���:<���gz}�R��_༵y�u��E8UY�DZ�s�W�`A$8Y��Dj���[��2�[��2�i��8%:OW�$J�ON]�');
/*!40000 ALTER TABLE `matomo_archive_blob_2024_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_invalidations`
--

DROP TABLE IF EXISTS `matomo_archive_invalidations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_invalidations` (
  `idinvalidation` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idarchive` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `period` tinyint(3) unsigned NOT NULL,
  `ts_invalidated` datetime DEFAULT NULL,
  `ts_started` datetime DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT 0,
  `report` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idinvalidation`),
  KEY `index_idsite_dates_period_name` (`idsite`,`date1`,`period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_invalidations`
--

LOCK TABLES `matomo_archive_invalidations` WRITE;
/*!40000 ALTER TABLE `matomo_archive_invalidations` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_invalidations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2022_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`name`(6))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_10`
--

LOCK TABLES `matomo_archive_numeric_2022_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2022_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`name`(6))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_11`
--

LOCK TABLES `matomo_archive_numeric_2022_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2022_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`name`(6))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_12`
--

LOCK TABLES `matomo_archive_numeric_2022_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2024_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2024_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2024_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`name`(6)),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2024_05`
--

LOCK TABLES `matomo_archive_numeric_2024_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2024_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2024_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2024_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2024_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2024_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`name`(6)),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2024_06`
--

LOCK TABLES `matomo_archive_numeric_2024_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2024_06` DISABLE KEYS */;
INSERT INTO `matomo_archive_numeric_2024_06` VALUES (1,'Actions_nb_pageviews',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(1,'Actions_nb_uniq_pageviews',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',4),(1,'done',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',1),(1,'max_actions',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(1,'nb_actions',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(1,'nb_uniq_visitors',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',1),(1,'nb_visits',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',1),(1,'PagePerformance_domcompletion_hits',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(1,'PagePerformance_domcompletion_time',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',81),(1,'PagePerformance_domprocessing_hits',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(1,'PagePerformance_domprocessing_time',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',873),(1,'PagePerformance_network_hits',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(1,'PagePerformance_onload_hits',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(1,'PagePerformance_onload_time',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',28),(1,'PagePerformance_pageload_hits',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(1,'PagePerformance_pageload_time',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',3062),(1,'PagePerformance_servery_time',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',2073),(1,'PagePerformance_server_hits',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(1,'PagePerformance_transfer_hits',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(1,'PagePerformance_transfer_time',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',7),(1,'sum_visit_length',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',446),(1,'UserCountry_distinctCountries',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',1),(2,'Actions_nb_pageviews',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(2,'Actions_nb_uniq_pageviews',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',4),(2,'done',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',1),(2,'max_actions',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(2,'nb_actions',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(2,'nb_uniq_visitors',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',1),(2,'nb_visits',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',1),(2,'PagePerformance_domcompletion_hits',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(2,'PagePerformance_domcompletion_time',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',81),(2,'PagePerformance_domprocessing_hits',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(2,'PagePerformance_domprocessing_time',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',873),(2,'PagePerformance_network_hits',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(2,'PagePerformance_onload_hits',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(2,'PagePerformance_onload_time',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',28),(2,'PagePerformance_pageload_hits',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(2,'PagePerformance_pageload_time',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',3062),(2,'PagePerformance_servery_time',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',2073),(2,'PagePerformance_server_hits',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(2,'PagePerformance_transfer_hits',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(2,'PagePerformance_transfer_time',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',7),(2,'sum_visit_length',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',446),(2,'UserCountry_distinctCountries',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',1),(3,'Actions_nb_pageviews',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(3,'Actions_nb_uniq_pageviews',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',4),(3,'done',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',1),(3,'max_actions',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(3,'nb_actions',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(3,'nb_uniq_visitors',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',1),(3,'nb_visits',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',1),(3,'PagePerformance_domcompletion_hits',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(3,'PagePerformance_domcompletion_time',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',81),(3,'PagePerformance_domprocessing_hits',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(3,'PagePerformance_domprocessing_time',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',873),(3,'PagePerformance_network_hits',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(3,'PagePerformance_onload_hits',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(3,'PagePerformance_onload_time',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',28),(3,'PagePerformance_pageload_hits',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(3,'PagePerformance_pageload_time',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',3062),(3,'PagePerformance_servery_time',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',2073),(3,'PagePerformance_server_hits',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(3,'PagePerformance_transfer_hits',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(3,'PagePerformance_transfer_time',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',7),(3,'sum_visit_length',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',446),(3,'UserCountry_distinctCountries',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',1),(4,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',1),(4,'max_actions',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(4,'nb_actions',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',6),(4,'nb_uniq_visitors',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',1),(4,'nb_visits',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',1),(4,'sum_visit_length',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',446),(5,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2024-06-07','2024-06-07',1,'2024-06-07 10:39:47',1),(6,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',1),(6,'max_actions',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(6,'nb_actions',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',6),(6,'nb_uniq_visitors',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',1),(6,'nb_visits',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',1),(6,'sum_visit_length',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',446),(7,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2024-06-03','2024-06-09',2,'2024-06-07 10:39:47',1),(8,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',1),(8,'max_actions',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(8,'nb_actions',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',6),(8,'nb_uniq_visitors',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',1),(8,'nb_visits',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',1),(8,'sum_visit_length',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',446),(9,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2024-06-01','2024-06-30',3,'2024-06-07 10:39:47',1);
/*!40000 ALTER TABLE `matomo_archive_numeric_2024_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2024_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2024_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2024_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`name`(6)),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2024_07`
--

LOCK TABLES `matomo_archive_numeric_2024_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2024_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2024_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_brute_force_log`
--

DROP TABLE IF EXISTS `matomo_brute_force_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_brute_force_log` (
  `id_brute_force_log` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(60) DEFAULT NULL,
  `attempted_at` datetime NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_brute_force_log`),
  KEY `index_ip_address` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_brute_force_log`
--

LOCK TABLES `matomo_brute_force_log` WRITE;
/*!40000 ALTER TABLE `matomo_brute_force_log` DISABLE KEYS */;
INSERT INTO `matomo_brute_force_log` VALUES (1,'172.17.0.1','2022-11-10 16:08:05','citelibre');
/*!40000 ALTER TABLE `matomo_brute_force_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_changes`
--

DROP TABLE IF EXISTS `matomo_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_changes` (
  `idchange` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_time` datetime NOT NULL,
  `plugin_name` varchar(60) NOT NULL,
  `version` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `link_name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idchange`),
  UNIQUE KEY `unique_plugin_version_title` (`plugin_name`,`version`,`title`(100))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_changes`
--

LOCK TABLES `matomo_changes` WRITE;
/*!40000 ALTER TABLE `matomo_changes` DISABLE KEYS */;
INSERT INTO `matomo_changes` VALUES (1,'2022-10-24 14:51:28','PrivacyManager','4.12.0','User Opt-Out Improvements','The privacy manager user opt-out has been updated to provide new code generation options that improve compatibility and allow additional customisation.','For more information go here','https://matomo.org/blog/2022/09/improvements-to-matomo-opt-out-form-feature/'),(4,'2024-06-07 10:13:37','ProfessionalServices','5.0.0-rc3','New Plugin Alert: Never miss a bug again with Crash Analytics!','This powerful new Matomo On-Premise plugin automatically tracks JavaScript errors in real-time, allowing for rapid bug resolution. With custom alerts, scheduled crash reports and the ability to precisely trace the steps a web visitor took to generate a bug, you can enhance your website\'s reliability, boost conversion rates and ultimately drive revenue.','Try it free for 30 days','https://plugins.matomo.org/CrashAnalytics?mtm_campaign=in-app-crash-analytics-notification&mtm_kwd=crash-analytics&mtm_source=in-app&mtm_medium=notification&mtm_content=crash-analytics&mtm_group=in-app');
/*!40000 ALTER TABLE `matomo_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_custom_dimensions`
--

DROP TABLE IF EXISTS `matomo_custom_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_custom_dimensions` (
  `idcustomdimension` bigint(20) unsigned NOT NULL,
  `idsite` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `scope` varchar(10) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `extractions` text NOT NULL,
  `case_sensitive` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idcustomdimension`,`idsite`),
  UNIQUE KEY `uniq_hash` (`idsite`,`scope`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_custom_dimensions`
--

LOCK TABLES `matomo_custom_dimensions` WRITE;
/*!40000 ALTER TABLE `matomo_custom_dimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_custom_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_goal`
--

DROP TABLE IF EXISTS `matomo_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_goal` (
  `idsite` int(11) NOT NULL,
  `idgoal` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `match_attribute` varchar(20) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `pattern_type` varchar(25) NOT NULL,
  `case_sensitive` tinyint(4) NOT NULL,
  `allow_multiple` tinyint(4) NOT NULL,
  `revenue` double NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `event_value_as_revenue` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsite`,`idgoal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_goal`
--

LOCK TABLES `matomo_goal` WRITE;
/*!40000 ALTER TABLE `matomo_goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_locks`
--

DROP TABLE IF EXISTS `matomo_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_locks` (
  `key` varchar(70) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `expiry_time` bigint(20) unsigned DEFAULT 9999999999,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_locks`
--

LOCK TABLES `matomo_locks` WRITE;
/*!40000 ALTER TABLE `matomo_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_action`
--

DROP TABLE IF EXISTS `matomo_log_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_action` (
  `idaction` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(4096) DEFAULT NULL,
  `hash` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `url_prefix` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idaction`),
  KEY `index_type_hash` (`type`,`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_action`
--

LOCK TABLES `matomo_log_action` WRITE;
/*!40000 ALTER TABLE `matomo_log_action` DISABLE KEYS */;
INSERT INTO `matomo_log_action` VALUES (1,'CiteLibre ServiceEZ - Home',2755426357,4,NULL),(2,'localhost:8080/serviceEZ/jsp/site/Portal.jsp',4280245483,1,0),(3,'localhost:8080/serviceEZ/',730637562,1,0),(4,'CiteLibre ServiceEZ - Demande d&#039;acte de Mariage - Pour votre demande d&#039;acte, veuillez préciser le motif',3132300288,4,NULL),(5,'localhost:8080/serviceEZ/jsp/site/Portal.jsp?page=forms&view=stepView&id_form=4&init=true',2523549751,1,0),(6,'CiteLibre ServiceEZ - Demande d&#039;acte de Mariage - Votre demande',4082456046,4,NULL),(7,'localhost:8080/serviceEZ/jsp/site/Portal.jsp?page=forms',521397587,1,0),(8,'CiteLibre ServiceEZ - Contacter ma mairie - Ma demande',2942564248,4,NULL),(9,'localhost:8080/serviceEZ/jsp/site/Portal.jsp?page=forms&view=stepView&id_form=1&init=true',3879599221,1,0);
/*!40000 ALTER TABLE `matomo_log_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_conversion`
--

DROP TABLE IF EXISTS `matomo_log_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_conversion` (
  `idvisit` bigint(20) unsigned NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idaction_url` int(10) unsigned DEFAULT NULL,
  `idlink_va` bigint(20) unsigned DEFAULT NULL,
  `idgoal` int(11) NOT NULL,
  `buster` int(10) unsigned NOT NULL,
  `idorder` varchar(100) DEFAULT NULL,
  `items` smallint(5) unsigned DEFAULT NULL,
  `url` varchar(4096) NOT NULL,
  `revenue` float DEFAULT NULL,
  `revenue_shipping` double DEFAULT NULL,
  `revenue_subtotal` double DEFAULT NULL,
  `revenue_tax` double DEFAULT NULL,
  `revenue_discount` double DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_seconds_since_first` int(10) unsigned DEFAULT NULL,
  `visitor_seconds_since_order` int(10) unsigned DEFAULT NULL,
  `visitor_count_visits` int(10) unsigned NOT NULL DEFAULT 0,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(255) DEFAULT NULL,
  `referer_type` tinyint(3) unsigned DEFAULT NULL,
  `config_browser_name` varchar(40) DEFAULT NULL,
  `config_client_type` tinyint(1) DEFAULT NULL,
  `config_device_brand` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `config_device_model` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `config_device_type` tinyint(4) DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `location_region` char(3) DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  `pageviews_before` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`idvisit`,`idgoal`,`buster`),
  UNIQUE KEY `unique_idsite_idorder` (`idsite`,`idorder`),
  KEY `index_idsite_datetime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_conversion`
--

LOCK TABLES `matomo_log_conversion` WRITE;
/*!40000 ALTER TABLE `matomo_log_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_conversion_item`
--

DROP TABLE IF EXISTS `matomo_log_conversion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_conversion_item` (
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idvisit` bigint(20) unsigned NOT NULL,
  `idorder` varchar(100) NOT NULL,
  `idaction_sku` int(10) unsigned NOT NULL,
  `idaction_name` int(10) unsigned NOT NULL,
  `idaction_category` int(10) unsigned NOT NULL,
  `idaction_category2` int(10) unsigned NOT NULL,
  `idaction_category3` int(10) unsigned NOT NULL,
  `idaction_category4` int(10) unsigned NOT NULL,
  `idaction_category5` int(10) unsigned NOT NULL,
  `price` double NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`idvisit`,`idorder`,`idaction_sku`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_conversion_item`
--

LOCK TABLES `matomo_log_conversion_item` WRITE;
/*!40000 ALTER TABLE `matomo_log_conversion_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_conversion_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_link_visit_action`
--

DROP TABLE IF EXISTS `matomo_log_link_visit_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_link_visit_action` (
  `idlink_va` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `idvisit` bigint(20) unsigned NOT NULL,
  `idaction_url_ref` int(10) unsigned DEFAULT 0,
  `idaction_name_ref` int(10) unsigned DEFAULT NULL,
  `custom_float` double DEFAULT NULL,
  `pageview_position` mediumint(8) unsigned DEFAULT NULL,
  `server_time` datetime NOT NULL,
  `idpageview` char(6) DEFAULT NULL,
  `idaction_name` int(10) unsigned DEFAULT NULL,
  `idaction_url` int(10) unsigned DEFAULT NULL,
  `search_cat` varchar(200) DEFAULT NULL,
  `search_count` int(10) unsigned DEFAULT NULL,
  `time_spent_ref_action` int(10) unsigned DEFAULT NULL,
  `idaction_product_cat` int(10) unsigned DEFAULT NULL,
  `idaction_product_cat2` int(10) unsigned DEFAULT NULL,
  `idaction_product_cat3` int(10) unsigned DEFAULT NULL,
  `idaction_product_cat4` int(10) unsigned DEFAULT NULL,
  `idaction_product_cat5` int(10) unsigned DEFAULT NULL,
  `idaction_product_name` int(10) unsigned DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `idaction_product_sku` int(10) unsigned DEFAULT NULL,
  `idaction_event_action` int(10) unsigned DEFAULT NULL,
  `idaction_event_category` int(10) unsigned DEFAULT NULL,
  `idaction_content_interaction` int(10) unsigned DEFAULT NULL,
  `idaction_content_name` int(10) unsigned DEFAULT NULL,
  `idaction_content_piece` int(10) unsigned DEFAULT NULL,
  `idaction_content_target` int(10) unsigned DEFAULT NULL,
  `time_dom_completion` mediumint(8) unsigned DEFAULT NULL,
  `time_dom_processing` mediumint(8) unsigned DEFAULT NULL,
  `time_network` mediumint(8) unsigned DEFAULT NULL,
  `time_on_load` mediumint(8) unsigned DEFAULT NULL,
  `time_server` mediumint(8) unsigned DEFAULT NULL,
  `time_transfer` mediumint(8) unsigned DEFAULT NULL,
  `time_spent` int(10) unsigned DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idlink_va`),
  KEY `index_idvisit` (`idvisit`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_link_visit_action`
--

LOCK TABLES `matomo_log_link_visit_action` WRITE;
/*!40000 ALTER TABLE `matomo_log_link_visit_action` DISABLE KEYS */;
INSERT INTO `matomo_log_link_visit_action` VALUES (1,1,'��5F���I',1,0,0,NULL,1,'2024-06-07 10:13:37','Zkx17B',1,2,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,378,0,5,1359,2,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'��5F���I',1,2,1,NULL,2,'2024-06-07 10:17:27','yZxjvt',1,3,NULL,NULL,230,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,35,0,3,87,1,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'��5F���I',1,3,1,NULL,3,'2024-06-07 10:19:19','QCDhty',4,5,NULL,NULL,112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,25,123,0,6,194,1,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,'��5F���I',1,5,4,NULL,4,'2024-06-07 10:19:48','69CTez',6,7,NULL,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12,138,0,7,336,1,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,'��5F���I',1,7,6,NULL,5,'2024-06-07 10:20:59','5ORP4u',1,3,NULL,NULL,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,30,70,0,2,25,1,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,'��5F���I',1,3,1,NULL,6,'2024-06-07 10:21:02','1enaZD',4,5,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,129,0,5,72,1,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,'��5F���I',1,5,4,NULL,7,'2024-06-07 10:44:35','cxrBvP',8,9,NULL,NULL,1413,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26,116,0,5,131,1,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `matomo_log_link_visit_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_profiling`
--

DROP TABLE IF EXISTS `matomo_log_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_profiling` (
  `query` text NOT NULL,
  `count` int(10) unsigned DEFAULT NULL,
  `sum_time_ms` float DEFAULT NULL,
  `idprofiling` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idprofiling`),
  UNIQUE KEY `query` (`query`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_profiling`
--

LOCK TABLES `matomo_log_profiling` WRITE;
/*!40000 ALTER TABLE `matomo_log_profiling` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_profiling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_visit`
--

DROP TABLE IF EXISTS `matomo_log_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_visit` (
  `idvisit` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `visit_last_action_time` datetime NOT NULL,
  `config_id` binary(8) NOT NULL,
  `location_ip` varbinary(16) NOT NULL,
  `profilable` tinyint(1) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `visit_first_action_time` datetime NOT NULL,
  `visit_goal_buyer` tinyint(1) DEFAULT NULL,
  `visit_goal_converted` tinyint(1) DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_seconds_since_first` int(10) unsigned DEFAULT NULL,
  `visitor_seconds_since_order` int(10) unsigned DEFAULT NULL,
  `visitor_count_visits` int(10) unsigned NOT NULL DEFAULT 0,
  `visit_entry_idaction_name` int(10) unsigned DEFAULT NULL,
  `visit_entry_idaction_url` int(10) unsigned DEFAULT NULL,
  `visit_exit_idaction_name` int(10) unsigned DEFAULT NULL,
  `visit_exit_idaction_url` int(10) unsigned DEFAULT 0,
  `visit_total_actions` int(10) unsigned DEFAULT NULL,
  `visit_total_interactions` mediumint(8) unsigned DEFAULT 0,
  `visit_total_searches` smallint(5) unsigned DEFAULT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(255) DEFAULT NULL,
  `referer_type` tinyint(3) unsigned DEFAULT NULL,
  `referer_url` varchar(1500) DEFAULT NULL,
  `location_browser_lang` varchar(20) DEFAULT NULL,
  `config_browser_engine` varchar(10) DEFAULT NULL,
  `config_browser_name` varchar(40) DEFAULT NULL,
  `config_browser_version` varchar(20) DEFAULT NULL,
  `config_client_type` tinyint(1) DEFAULT NULL,
  `config_device_brand` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `config_device_model` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `config_device_type` tinyint(4) DEFAULT NULL,
  `config_os` char(3) DEFAULT NULL,
  `config_os_version` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `visit_total_events` int(10) unsigned DEFAULT NULL,
  `visitor_localtime` time DEFAULT NULL,
  `visitor_seconds_since_last` int(10) unsigned DEFAULT NULL,
  `config_resolution` varchar(18) DEFAULT NULL,
  `config_cookie` tinyint(1) DEFAULT NULL,
  `config_flash` tinyint(1) DEFAULT NULL,
  `config_java` tinyint(1) DEFAULT NULL,
  `config_pdf` tinyint(1) DEFAULT NULL,
  `config_quicktime` tinyint(1) DEFAULT NULL,
  `config_realplayer` tinyint(1) DEFAULT NULL,
  `config_silverlight` tinyint(1) DEFAULT NULL,
  `config_windowsmedia` tinyint(1) DEFAULT NULL,
  `visit_total_time` int(10) unsigned NOT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `location_region` char(3) DEFAULT NULL,
  `last_idlink_va` bigint(20) unsigned DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idvisit`),
  KEY `index_idsite_config_datetime` (`idsite`,`config_id`,`visit_last_action_time`),
  KEY `index_idsite_datetime` (`idsite`,`visit_last_action_time`),
  KEY `index_idsite_idvisitor_time` (`idsite`,`idvisitor`,`visit_last_action_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_visit`
--

LOCK TABLES `matomo_log_visit` WRITE;
/*!40000 ALTER TABLE `matomo_log_visit` DISABLE KEYS */;
INSERT INTO `matomo_log_visit` VALUES (1,1,'��5F���I','2024-06-07 10:44:35','6�;����b','�\0\0',1,NULL,'2024-06-07 10:13:37',0,0,0,0,NULL,1,1,2,8,9,7,7,0,NULL,NULL,1,'','en-us','Blink','CH','125.0',1,'','generic desktop',0,'LIN','6.6',0,'12:13:37',0,'1920x1200',1,0,0,1,0,0,0,0,1859,NULL,'us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `matomo_log_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_logger_message`
--

DROP TABLE IF EXISTS `matomo_logger_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_logger_message` (
  `idlogger_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL,
  `message` text DEFAULT NULL,
  PRIMARY KEY (`idlogger_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_logger_message`
--

LOCK TABLES `matomo_logger_message` WRITE;
/*!40000 ALTER TABLE `matomo_logger_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_logger_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_option`
--

DROP TABLE IF EXISTS `matomo_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_option` (
  `option_name` varchar(191) NOT NULL,
  `option_value` longtext NOT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_option`
--

LOCK TABLES `matomo_option` WRITE;
/*!40000 ALTER TABLE `matomo_option` DISABLE KEYS */;
INSERT INTO `matomo_option` VALUES ('Feedback.nextFeedbackReminder.admin','2023-04-24',0),('fingerprint_salt_1_2022-10-22','{\"value\":\"s8kjru7jweabu4zzio7oopu1lwgp579h\",\"time\":1666623209}',0),('fingerprint_salt_1_2022-10-23','{\"value\":\"d74tu9kvw104py3isbxgh3bwea232wo4\",\"time\":1666623209}',0),('fingerprint_salt_1_2022-10-24','{\"value\":\"wmaeda68smtgyakmta7nsjma145n3djh\",\"time\":1666623209}',0),('fingerprint_salt_1_2022-10-25','{\"value\":\"wvlsy5tp5goyrajmiak49n9x9lxdu09j\",\"time\":1666623209}',0),('fingerprint_salt_1_2024-06-05','{\"value\":\"4plk1nwlmbe6rf93enkzbztuhpmhtoc6\",\"time\":1717755217}',0),('fingerprint_salt_1_2024-06-06','{\"value\":\"4ivysnmz75msdzy4o00cael0o4rg7y9l\",\"time\":1717755217}',0),('fingerprint_salt_1_2024-06-07','{\"value\":\"3y40b0caynahj9o0u7d5j5l1fvsml7g9\",\"time\":1717755217}',0),('fingerprint_salt_1_2024-06-08','{\"value\":\"1c7dmto4t0333loec1efo9vk5u8xv6gh\",\"time\":1717755217}',0),('geoip2.loc_db_url','https://download.db-ip.com/free/dbip-city-lite-2022-11.mmdb.gz',0),('geoip2.updater_last_run_time','1668038400',0),('geoip2.updater_period','month',0),('install_mail_sent','1',0),('install_version','4.12.1',0),('lastTrackerCronRun','1717755217',0),('MatomoUpdateHistory','4.12.3,4.12.1,',0),('MobileMessaging_DelegatedManagement','false',0),('PrivacyManager.doNotTrackEnabled','1',0),('PrivacyManager.ipAnonymizerEnabled','1',0),('SitesManager_DefaultTimezone','Europe/Paris',0),('SocialDefinitions','YToxNDQ6e3M6OToiYmFkb28uY29tIjtzOjU6IkJhZG9vIjtzOjg6ImJlYm8uY29tIjtzOjQ6IkJlYm8iO3M6MTU6ImJsYWNrcGxhbmV0LmNvbSI7czoxMToiQmxhY2tQbGFuZXQiO3M6ODoiYnNreS5hcHAiO3M6NzoiQmx1ZXNreSI7czoxMToic2t5ZmVlZC5hcHAiO3M6NzoiQmx1ZXNreSI7czoxMToiYnV6em5ldC5jb20iO3M6NzoiQnV6em5ldCI7czoxNDoiY2xhc3NtYXRlcy5jb20iO3M6MTQ6IkNsYXNzbWF0ZXMuY29tIjtzOjE4OiJnbG9iYWwuY3l3b3JsZC5jb20iO3M6NzoiQ3l3b3JsZCI7czoxNDoiZ2FpYW9ubGluZS5jb20iO3M6MTE6IkdhaWEgT25saW5lIjtzOjg6ImdlbmkuY29tIjtzOjg6IkdlbmkuY29tIjtzOjEwOiJnaXRodWIuY29tIjtzOjY6IkdpdEh1YiI7czoxNToicGx1cy5nb29nbGUuY29tIjtzOjk6Ikdvb2dsZSUyQiI7czoxNDoidXJsLmdvb2dsZS5jb20iO3M6OToiR29vZ2xlJTJCIjtzOjI4OiJjb20uZ29vZ2xlLmFuZHJvaWQuYXBwcy5wbHVzIjtzOjk6Ikdvb2dsZSUyQiI7czoxMDoiZG91YmFuLmNvbSI7czo2OiJEb3ViYW4iO3M6MTI6ImRyaWJiYmxlLmNvbSI7czo4OiJEcmliYmJsZSI7czoxMjoiZmFjZWJvb2suY29tIjtzOjg6IkZhY2Vib29rIjtzOjU6ImZiLm1lIjtzOjg6IkZhY2Vib29rIjtzOjE0OiJtLmZhY2Vib29rLmNvbSI7czo4OiJGYWNlYm9vayI7czoxNDoibC5mYWNlYm9vay5jb20iO3M6ODoiRmFjZWJvb2siO3M6MTE6ImZldGxpZmUuY29tIjtzOjc6IkZldGxpZmUiO3M6MTA6ImZsaWNrci5jb20iO3M6NjoiRmxpY2tyIjtzOjEyOiJmbGl4c3Rlci5jb20iO3M6ODoiRmxpeHN0ZXIiO3M6MTE6ImZvdG9sb2cuY29tIjtzOjc6IkZvdG9sb2ciO3M6MTQ6ImZvdXJzcXVhcmUuY29tIjtzOjEwOiJGb3Vyc3F1YXJlIjtzOjE5OiJmcmllbmRzcmV1bml0ZWQuY29tIjtzOjE2OiJGcmllbmRzIFJldW5pdGVkIjtzOjE0OiJmcmllbmRzdGVyLmNvbSI7czoxMDoiRnJpZW5kc3RlciI7czo3OiJncmVlLmpwIjtzOjQ6ImdyZWUiO3M6OToiaGFiYm8uY29tIjtzOjU6IkhhYm9vIjtzOjIwOiJuZXdzLnljb21iaW5hdG9yLmNvbSI7czoxMToiSGFja2VyIE5ld3MiO3M6NzoiaGk1LmNvbSI7czozOiJoaTUiO3M6ODoiaHl2ZXMubmwiO3M6NToiSHl2ZXMiO3M6OToiaWRlbnRpLmNhIjtzOjk6ImlkZW50aS5jYSI7czoxMzoiaW5zdGFncmFtLmNvbSI7czo5OiJJbnN0YWdyYW0iO3M6MTU6ImwuaW5zdGFncmFtLmNvbSI7czo5OiJJbnN0YWdyYW0iO3M6MTA6ImxhbmctOC5jb20iO3M6NjoibGFuZy04IjtzOjc6Imxhc3QuZm0iO3M6NzoiTGFzdC5mbSI7czo5OiJsYXN0Zm0ucnUiO3M6NzoiTGFzdC5mbSI7czo5OiJsYXN0Zm0uZGUiO3M6NzoiTGFzdC5mbSI7czo5OiJsYXN0Zm0uZXMiO3M6NzoiTGFzdC5mbSI7czo5OiJsYXN0Zm0uZnIiO3M6NzoiTGFzdC5mbSI7czo5OiJsYXN0Zm0uaXQiO3M6NzoiTGFzdC5mbSI7czo5OiJsYXN0Zm0uanAiO3M6NzoiTGFzdC5mbSI7czo5OiJsYXN0Zm0ucGwiO3M6NzoiTGFzdC5mbSI7czoxMzoibGFzdGZtLmNvbS5iciI7czo3OiJMYXN0LmZtIjtzOjk6Imxhc3RmbS5zZSI7czo3OiJMYXN0LmZtIjtzOjEzOiJsYXN0Zm0uY29tLnRyIjtzOjc6Ikxhc3QuZm0iO3M6MTI6ImxpbmtlZGluLmNvbSI7czo4OiJMaW5rZWRJbiI7czo3OiJsbmtkLmluIjtzOjg6IkxpbmtlZEluIjtzOjE2OiJsaW5rZWRpbi5hbmRyb2lkIjtzOjg6IkxpbmtlZEluIjtzOjE0OiJsaXZlam91cm5hbC5ydSI7czoxMToiTGl2ZUpvdXJuYWwiO3M6MTU6ImxpdmVqb3VybmFsLmNvbSI7czoxMToiTGl2ZUpvdXJuYWwiO3M6MTU6Im1hc3RvZG9uLnNvY2lhbCI7czo4OiJNYXN0b2RvbiI7czoxNDoibWFzdG9kb24uY2xvdWQiO3M6ODoiTWFzdG9kb24iO3M6MTk6Im1hc3RvZG9uLnRlY2hub2xvZ3kiO3M6ODoiTWFzdG9kb24iO3M6MTI6Im1hc3RvZG9uLnh5eiI7czo4OiJNYXN0b2RvbiI7czoxMToibWFzdG9kb24uYXQiO3M6ODoiTWFzdG9kb24iO3M6MTI6Im1hc3RvZG9uLmFydCI7czo4OiJNYXN0b2RvbiI7czo4OiJtYW1vdC5mciI7czo4OiJNYXN0b2RvbiI7czo5OiJwYXdvby5uZXQiO3M6ODoiTWFzdG9kb24iO3M6ODoibXN0ZG4uaW8iO3M6ODoiTWFzdG9kb24iO3M6ODoibXN0ZG4uanAiO3M6ODoiTWFzdG9kb24iO3M6MTI6ImZyaWVuZHMubmljbyI7czo4OiJNYXN0b2RvbiI7czoxOToicm8tbWFzdG9kb24ucHV5by5qcCI7czo4OiJNYXN0b2RvbiI7czo4OiJxdWV5Lm9yZyI7czo4OiJNYXN0b2RvbiI7czoxMjoiYm90c2luLnNwYWNlIjtzOjg6Ik1hc3RvZG9uIjtzOjE2OiJzb2NpYWwudGNobmNzLmRlIjtzOjg6Ik1hc3RvZG9uIjtzOjc6ImtuemsubWUiO3M6ODoiTWFzdG9kb24iO3M6MTM6Im1hc3RvZG9udC5jYXQiO3M6ODoiTWFzdG9kb24iO3M6MTg6ImJpdGNvaW5oYWNrZXJzLm9yZyI7czo4OiJNYXN0b2RvbiI7czoxMzoiZm9zc3RvZG9uLm9yZyI7czo4OiJNYXN0b2RvbiI7czoxMjoiY2hhb3Muc29jaWFsIjtzOjg6Ik1hc3RvZG9uIjtzOjExOiJjeWJyZS5zcGFjZSI7czo4OiJNYXN0b2RvbiI7czoxMDoidmlzLnNvY2lhbCI7czo4OiJNYXN0b2RvbiI7czoxMDoibWVpbnZ6Lm5ldCI7czo2OiJNZWluVloiO3M6NzoibWl4aS5qcCI7czo0OiJNaXhpIjtzOjEwOiJtb2lrcnVnLnJ1IjtzOjEwOiJNb2lLcnVnLnJ1IjtzOjEyOiJtdWx0aXBseS5jb20iO3M6ODoiTXVsdGlwbHkiO3M6MTA6Im15Lm1haWwucnUiO3M6MTA6Im15Lm1haWwucnUiO3M6MTQ6Im15aGVyaXRhZ2UuY29tIjtzOjEwOiJNeUhlcml0YWdlIjtzOjk6Im15bGlmZS5ydSI7czo2OiJNeUxpZmUiO3M6MTE6Im15c3BhY2UuY29tIjtzOjc6Ik15c3BhY2UiO3M6MTQ6Im15eWVhcmJvb2suY29tIjtzOjEwOiJteVllYXJib29rIjtzOjU6Im5rLnBsIjtzOjE0OiJOYXN6YS1rbGFzYS5wbCI7czoxMDoibmV0bG9nLmNvbSI7czo2OiJOZXRsb2ciO3M6MTY6Im9kbm9rbGFzc25pa2kucnUiO3M6MTM6Ik9kbm9rbGFzc25pa2kiO3M6OToib3JrdXQuY29tIjtzOjU6Ik9ya3V0IjtzOjEyOiJxem9uZS5xcS5jb20iO3M6NToiT3pvbmUiO3M6MTE6InBlZXBldGguY29tIjtzOjc6IlBlZXBldGgiO3M6MTM6InBpbnRlcmVzdC5jb20iO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3QuY2EiO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3QuY2giO3M6OToiUGludGVyZXN0IjtzOjE1OiJwaW50ZXJlc3QuY28udWsiO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3QuZGUiO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3QuZGsiO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3QuZXMiO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3QuZnIiO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3QuaWUiO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3QuanAiO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3QubnoiO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3QucHQiO3M6OToiUGludGVyZXN0IjtzOjEyOiJwaW50ZXJlc3Quc2UiO3M6OToiUGludGVyZXN0IjtzOjk6InBsYXhvLmNvbSI7czo1OiJQbGF4byI7czoxMDoicmVkZGl0LmNvbSI7czo2OiJyZWRkaXQiO3M6MTM6Im5wLnJlZGRpdC5jb20iO3M6NjoicmVkZGl0IjtzOjE0OiJwYXkucmVkZGl0LmNvbSI7czo2OiJyZWRkaXQiO3M6MTA6InJlbnJlbi5jb20iO3M6NjoiUmVucmVuIjtzOjExOiJza3lyb2NrLmNvbSI7czo3OiJTa3lyb2NrIjtzOjEyOiJzbmFwY2hhdC5jb20iO3M6ODoiU25hcGNoYXQiO3M6MTA6InNvbmljby5jb20iO3M6MTA6IlNvbmljby5jb20iO3M6MTc6InN0YWNrb3ZlcmZsb3cuY29tIjtzOjEzOiJTdGFja092ZXJmbG93IjtzOjExOiJzdHVkaXZ6Lm5ldCI7czo3OiJTdHVkaVZaIjtzOjE2OiJsb2dpbi50YWdnZWQuY29tIjtzOjY6IlRhZ2dlZCI7czoxMToidGFyaW5nYS5uZXQiO3M6ODoiVGFyaW5nYSEiO3M6MTY6IndlYi50ZWxlZ3JhbS5vcmciO3M6ODoiVGVsZWdyYW0iO3M6MjI6Im9yZy50ZWxlZ3JhbS5tZXNzZW5nZXIiO3M6ODoiVGVsZWdyYW0iO3M6MTE6InRocmVhZHMubmV0IjtzOjc6IlRocmVhZHMiO3M6MTM6ImwudGhyZWFkcy5uZXQiO3M6NzoiVGhyZWFkcyI7czoxMDoidGlrdG9rLmNvbSI7czo2OiJUaWtUb2siO3M6MTA6InR1ZW50aS5jb20iO3M6NjoiVHVlbnRpIjtzOjEwOiJ0dW1ibHIuY29tIjtzOjY6InR1bWJsciI7czoxMToidC51bWJsci5jb20iO3M6NjoidHVtYmxyIjtzOjExOiJ0d2l0dGVyLmNvbSI7czo3OiJUd2l0dGVyIjtzOjQ6InQuY28iO3M6NzoiVHdpdHRlciI7czoxNToic291cmNlZm9yZ2UubmV0IjtzOjExOiJTb3VyY2Vmb3JnZSI7czoxNToic3R1bWJsZXVwb24uY29tIjtzOjExOiJTdHVtYmxlVXBvbiI7czo2OiJ2ay5jb20iO3M6OToiVmtvbnRha3RlIjtzOjEyOiJ2a29udGFrdGUucnUiO3M6OToiVmtvbnRha3RlIjtzOjExOiJ5b3V0dWJlLmNvbSI7czo3OiJZb3VUdWJlIjtzOjg6InlvdXR1LmJlIjtzOjc6IllvdVR1YmUiO3M6ODoidjJleC5jb20iO3M6NDoiVjJFWCI7czoxMDoidmlhZGVvLmNvbSI7czo2OiJWaWFkZW8iO3M6OToidmltZW8uY29tIjtzOjU6IlZpbWVvIjtzOjE1OiJ2a3J1Z3VkcnV6ZWkucnUiO3M6MTU6InZrcnVndWRydXplaS5ydSI7czo4OiJ3YXluLmNvbSI7czo0OiJXQVlOIjtzOjk6IndlaWJvLmNvbSI7czo1OiJXZWlibyI7czo0OiJ0LmNuIjtzOjU6IldlaWJvIjtzOjEyOiJ3ZWV3b3JsZC5jb20iO3M6ODoiV2VlV29ybGQiO3M6MTQ6ImxvZ2luLmxpdmUuY29tIjtzOjE5OiJXaW5kb3dzIExpdmUgU3BhY2VzIjtzOjEzOiJ3b3JrcGxhY2UuY29tIjtzOjk6IldvcmtwbGFjZSI7czoxNToibC53b3JrcGxhY2UuY29tIjtzOjk6IldvcmtwbGFjZSI7czoxNjoibG0ud29ya3BsYWNlLmNvbSI7czo5OiJXb3JrcGxhY2UiO3M6OToieGFuZ2EuY29tIjtzOjU6IlhhbmdhIjtzOjg6InhpbmcuY29tIjtzOjQ6IlhJTkciO30=',0),('TaskScheduler.timetable','a:1:{s:45:\"Piwik\\Plugins\\GeoIp2\\GeoIP2AutoUpdater.update\";i:1670371214;}',0),('TransactionLevel.testOption','1',0),('UpdateCheck_LastCheckFailed','',0),('UpdateCheck_LastTimeChecked','1717756740',1),('UpdateCheck_LatestVersion','5.0.3',0),('usercountry.location_provider','geoip2php',0),('usercountry.switchtoisoregions','1666623242',0),('useridsalt','n0ZvZZTJnu6ByxagVzYvOXKV_Sjg-gXWW61y-PrY',1),('UsersManager.lastSeen.admin','1668096310',1),('UsersManager.lastSeen.citelibre','1717756787',1),('UsersManager.lastSeen.super user was set','1668096298',1),('version_Actions','5.0.3',1),('version_Annotations','5.0.3',1),('version_API','5.0.3',1),('version_BulkTracking','5.0.3',1),('version_Contents','5.0.3',1),('version_core','5.0.3',1),('version_CoreAdminHome','5.0.3',1),('version_CoreConsole','5.0.3',1),('version_CoreHome','5.0.3',1),('version_CorePluginsAdmin','5.0.3',1),('version_CoreUpdater','5.0.3',1),('version_CoreVisualizations','5.0.3',1),('version_CoreVue','5.0.3',1),('version_CustomDimensions','5.0.3',1),('version_CustomJsTracker','5.0.3',1),('version_Dashboard','5.0.3',1),('version_DevicePlugins','5.0.3',1),('version_DevicesDetection','5.0.3',1),('version_Diagnostics','5.0.3',1),('version_Ecommerce','5.0.3',1),('version_Events','5.0.3',1),('version_Feedback','5.0.3',1),('version_GeoIp2','5.0.3',1),('version_Goals','5.0.3',1),('version_Heartbeat','5.0.3',1),('version_ImageGraph','5.0.3',1),('version_Insights','5.0.3',1),('version_Installation','5.0.3',1),('version_Intl','5.0.3',1),('version_IntranetMeasurable','5.0.3',1),('version_JsTrackerInstallCheck','5.0.3',1),('version_LanguagesManager','5.0.3',1),('version_Live','5.0.3',1),('version_log_conversion.pageviews_before','SMALLINT UNSIGNED DEFAULT NULL',1),('version_log_conversion.revenue','float default NULL',1),('version_log_link_visit_action.idaction_content_interaction','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_name','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_piece','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_target','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_event_action','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_event_category','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_name','INTEGER(10) UNSIGNED',1),('version_log_link_visit_action.idaction_product_cat','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_cat2','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_cat3','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_cat4','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_cat5','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_name','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_sku','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_url','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idpageview','CHAR(6) NULL DEFAULT NULL',1),('version_log_link_visit_action.product_price','DOUBLE NULL',1),('version_log_link_visit_action.search_cat','VARCHAR(200) NULL',1),('version_log_link_visit_action.search_count','INTEGER(10) UNSIGNED NULL',1),('version_log_link_visit_action.server_time','DATETIME NOT NULL',1),('version_log_link_visit_action.time_dom_completion','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_dom_processing','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_network','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_on_load','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_server','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_spent_ref_action','INTEGER(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_transfer','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_visit.config_browser_engine','VARCHAR(10) NULL',1),('version_log_visit.config_browser_name','VARCHAR(40) NULL1',1),('version_log_visit.config_browser_version','VARCHAR(20) NULL',1),('version_log_visit.config_client_type','TINYINT( 1 ) NULL DEFAULT NULL1',1),('version_log_visit.config_cookie','TINYINT(1) NULL',1),('version_log_visit.config_device_brand','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL1',1),('version_log_visit.config_device_model','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL1',1),('version_log_visit.config_device_type','TINYINT( 100 ) NULL DEFAULT NULL1',1),('version_log_visit.config_flash','TINYINT(1) NULL',1),('version_log_visit.config_java','TINYINT(1) NULL',1),('version_log_visit.config_os','CHAR(3) NULL',1),('version_log_visit.config_os_version','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL',1),('version_log_visit.config_pdf','TINYINT(1) NULL',1),('version_log_visit.config_quicktime','TINYINT(1) NULL',1),('version_log_visit.config_realplayer','TINYINT(1) NULL',1),('version_log_visit.config_resolution','VARCHAR(18) NULL',1),('version_log_visit.config_silverlight','TINYINT(1) NULL',1),('version_log_visit.config_windowsmedia','TINYINT(1) NULL',1),('version_log_visit.location_browser_lang','VARCHAR(20) NULL',1),('version_log_visit.location_city','varchar(255) DEFAULT NULL1',1),('version_log_visit.location_country','CHAR(3) NULL1',1),('version_log_visit.location_latitude','decimal(9, 6) DEFAULT NULL1',1),('version_log_visit.location_longitude','decimal(9, 6) DEFAULT NULL1',1),('version_log_visit.location_region','char(3) DEFAULT NULL1',1),('version_log_visit.profilable','TINYINT(1) NULL',1),('version_log_visit.referer_keyword','VARCHAR(255) NULL1',1),('version_log_visit.referer_name','VARCHAR(255) NULL1',1),('version_log_visit.referer_type','TINYINT(1) UNSIGNED NULL1',1),('version_log_visit.referer_url','VARCHAR(1500) NULL',1),('version_log_visit.user_id','VARCHAR(200) NULL',1),('version_log_visit.visit_entry_idaction_name','INTEGER(10) UNSIGNED NULL',1),('version_log_visit.visit_entry_idaction_url','INTEGER(11) UNSIGNED NULL  DEFAULT NULL',1),('version_log_visit.visit_exit_idaction_name','INTEGER(10) UNSIGNED NULL',1),('version_log_visit.visit_exit_idaction_url','INTEGER(10) UNSIGNED NULL DEFAULT 0',1),('version_log_visit.visit_first_action_time','DATETIME NOT NULL',1),('version_log_visit.visit_goal_buyer','TINYINT(1) NULL',1),('version_log_visit.visit_goal_converted','TINYINT(1) NULL',1),('version_log_visit.visit_total_actions','INT(11) UNSIGNED NULL',1),('version_log_visit.visit_total_events','INT(11) UNSIGNED NULL',1),('version_log_visit.visit_total_interactions','MEDIUMINT UNSIGNED DEFAULT 0',1),('version_log_visit.visit_total_searches','SMALLINT(5) UNSIGNED NULL',1),('version_log_visit.visit_total_time','INT(11) UNSIGNED NOT NULL',1),('version_log_visit.visitor_count_visits','INT(11) UNSIGNED NOT NULL DEFAULT 01',1),('version_log_visit.visitor_localtime','TIME NULL',1),('version_log_visit.visitor_returning','TINYINT(1) NULL1',1),('version_log_visit.visitor_seconds_since_first','INT(11) UNSIGNED NULL1',1),('version_log_visit.visitor_seconds_since_last','INT(11) UNSIGNED NULL',1),('version_log_visit.visitor_seconds_since_order','INT(11) UNSIGNED NULL1',1),('version_Login','5.0.3',1),('version_Marketplace','5.0.3',1),('version_MobileMessaging','5.0.3',1),('version_Monolog','5.0.3',1),('version_Morpheus','5.0.3',1),('version_MultiSites','5.0.3',1),('version_Overlay','5.0.3',1),('version_PagePerformance','5.0.3',1),('version_PrivacyManager','5.0.3',1),('version_ProfessionalServices','5.0.3',1),('version_Proxy','5.0.3',1),('version_Referrers','5.0.3',1),('version_Resolution','5.0.3',1),('version_RssWidget','1.0',1),('version_ScheduledReports','5.0.3',1),('version_SegmentEditor','5.0.3',1),('version_SEO','5.0.3',1),('version_SitesManager','5.0.3',1),('version_Tour','5.0.3',1),('version_Transitions','5.0.3',1),('version_TwoFactorAuth','5.0.3',1),('version_UserCountry','5.0.3',1),('version_UserCountryMap','5.0.3',1),('version_UserId','5.0.3',1),('version_UserLanguage','5.0.3',1),('version_UsersManager','5.0.3',1),('version_VisitFrequency','5.0.3',1),('version_VisitorInterest','5.0.3',1),('version_VisitsSummary','5.0.3',1),('version_VisitTime','5.0.3',1),('version_WebsiteMeasurable','5.0.3',1),('version_Widgetize','5.0.3',1);
/*!40000 ALTER TABLE `matomo_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_plugin_setting`
--

DROP TABLE IF EXISTS `matomo_plugin_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_plugin_setting` (
  `plugin_name` varchar(60) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `json_encoded` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `user_login` varchar(100) NOT NULL DEFAULT '',
  `idplugin_setting` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idplugin_setting`),
  KEY `plugin_name` (`plugin_name`,`user_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_plugin_setting`
--

LOCK TABLES `matomo_plugin_setting` WRITE;
/*!40000 ALTER TABLE `matomo_plugin_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_plugin_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_privacy_logdata_anonymizations`
--

DROP TABLE IF EXISTS `matomo_privacy_logdata_anonymizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_privacy_logdata_anonymizations` (
  `idlogdata_anonymization` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idsites` text DEFAULT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `anonymize_ip` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `anonymize_location` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `anonymize_userid` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `unset_visit_columns` text NOT NULL,
  `unset_link_visit_action_columns` text NOT NULL,
  `output` mediumtext DEFAULT NULL,
  `scheduled_date` datetime DEFAULT NULL,
  `job_start_date` datetime DEFAULT NULL,
  `job_finish_date` datetime DEFAULT NULL,
  `requester` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`idlogdata_anonymization`),
  KEY `job_start_date` (`job_start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_privacy_logdata_anonymizations`
--

LOCK TABLES `matomo_privacy_logdata_anonymizations` WRITE;
/*!40000 ALTER TABLE `matomo_privacy_logdata_anonymizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_privacy_logdata_anonymizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_report`
--

DROP TABLE IF EXISTS `matomo_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_report` (
  `idreport` int(11) NOT NULL AUTO_INCREMENT,
  `idsite` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `idsegment` int(11) DEFAULT NULL,
  `period` varchar(10) NOT NULL,
  `hour` tinyint(4) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL,
  `format` varchar(10) NOT NULL,
  `reports` text NOT NULL,
  `parameters` text DEFAULT NULL,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_sent` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `evolution_graph_within_period` tinyint(4) NOT NULL DEFAULT 0,
  `evolution_graph_period_n` int(11) NOT NULL,
  `period_param` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idreport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_report`
--

LOCK TABLES `matomo_report` WRITE;
/*!40000 ALTER TABLE `matomo_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_report_subscriptions`
--

DROP TABLE IF EXISTS `matomo_report_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_report_subscriptions` (
  `idreport` int(11) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `ts_subscribed` timestamp NULL DEFAULT current_timestamp(),
  `ts_unsubscribed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idreport`,`email`),
  UNIQUE KEY `unique_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_report_subscriptions`
--

LOCK TABLES `matomo_report_subscriptions` WRITE;
/*!40000 ALTER TABLE `matomo_report_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_report_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_segment`
--

DROP TABLE IF EXISTS `matomo_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_segment` (
  `idsegment` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `hash` char(32) DEFAULT NULL,
  `login` varchar(100) NOT NULL,
  `enable_all_users` tinyint(4) NOT NULL DEFAULT 0,
  `enable_only_idsite` int(11) DEFAULT NULL,
  `auto_archive` tinyint(4) NOT NULL DEFAULT 0,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_edit` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idsegment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_segment`
--

LOCK TABLES `matomo_segment` WRITE;
/*!40000 ALTER TABLE `matomo_segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_sequence`
--

DROP TABLE IF EXISTS `matomo_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_sequence` (
  `name` varchar(120) NOT NULL,
  `value` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_sequence`
--

LOCK TABLES `matomo_sequence` WRITE;
/*!40000 ALTER TABLE `matomo_sequence` DISABLE KEYS */;
INSERT INTO `matomo_sequence` VALUES ('matomo_archive_numeric_2022_10',0),('matomo_archive_numeric_2022_11',0),('matomo_archive_numeric_2022_12',0),('matomo_archive_numeric_2024_05',0),('matomo_archive_numeric_2024_06',9),('matomo_archive_numeric_2024_07',0);
/*!40000 ALTER TABLE `matomo_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_session`
--

DROP TABLE IF EXISTS `matomo_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_session` (
  `id` varchar(191) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_session`
--

LOCK TABLES `matomo_session` WRITE;
/*!40000 ALTER TABLE `matomo_session` DISABLE KEYS */;
INSERT INTO `matomo_session` VALUES ('12022358a3bd8d40e54ed40ce10b01bc20d408a2daa66594cfb6ccc9eeb5c9fcd5d060d391cc4eb54d5eb2c182306ade33423381c64a42019feb522e64f08118',1666627774,1209600,'a:1:{s:4:\"data\";s:1880:\"YToxMjp7czo0OiJfX1pGIjthOjc6e3M6MTU6InNpdGVXaXRob3V0RGF0YSI7YToxOntzOjM6IkVOVCI7aToxNjY2NjMwNDA4O31zOjE5OiJjaGFuZ2VQYXNzd29yZE5vbmNlIjthOjE6e3M6NDoiRU5WVCI7YToxOntzOjU6Im5vbmNlIjtpOjE2NjY2Mjc4ODM7fX1zOjIwOiJkZWxldGVBdXRoVG9rZW5Ob25jZSI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNjY2NjI3ODgzO319czoyOToiVHdvRmFjdG9yQXV0aC5kaXNhYmxlQXV0aENvZGUiO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTY2NjYyNzg4Mzt9fXM6NToiTG9naW4iO2E6MTp7czo0OiJFTlZUIjthOjI6e3M6MTQ6InJlZGlyZWN0UGFyYW1zIjtpOjE2NjY2MjkwNTQ7czoxNjoibGFzdFBhc3N3b3JkQXV0aCI7aToxNjY2NjI5MDU0O319czoxNToiY29uZmlybVBhc3N3b3JkIjthOjE6e3M6NDoiRU5WVCI7YToxOntzOjU6Im5vbmNlIjtpOjE2NjY2Mjc4NDg7fX1zOjE3OiJhZGRBdXRoVG9rZW5Ob25jZSI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNjY2NjI3ODU0O319fXM6OToidXNlci5uYW1lIjtzOjU6ImFkbWluIjtzOjIyOiJ0d29mYWN0b3JhdXRoLnZlcmlmaWVkIjtpOjA7czoyMDoidXNlci50b2tlbl9hdXRoX3RlbXAiO3M6MzI6IjlkZjMxNThjZjAwZTM0YzY1N2RlMWQzYTkyYjVlMDI5IjtzOjEyOiJzZXNzaW9uLmluZm8iO2E6Mzp7czoyOiJ0cyI7aToxNjY2NjI2NzkxO3M6MTA6InJlbWVtYmVyZWQiO2I6MDtzOjEwOiJleHBpcmF0aW9uIjtpOjE2NjY2MzEzNzQ7fXM6MTI6Im5vdGlmaWNhdGlvbiI7YToxOntzOjEzOiJub3RpZmljYXRpb25zIjthOjA6e319czoxNToic2l0ZVdpdGhvdXREYXRhIjthOjE6e3M6MTM6Imlnbm9yZU1lc3NhZ2UiO2I6MTt9czoxOToiY2hhbmdlUGFzc3dvcmROb25jZSI7YToxOntzOjU6Im5vbmNlIjtzOjMyOiI1N2M5OTBkNTdmODIwYzNlOTRlNjYxYjBiNTEyZWU2ZCI7fXM6MjA6ImRlbGV0ZUF1dGhUb2tlbk5vbmNlIjthOjE6e3M6NToibm9uY2UiO3M6MzI6ImJiNTYzNGMyZWY0Mzc3NzkzYzkyZThmNDYzMjRiYjRlIjt9czoyOToiVHdvRmFjdG9yQXV0aC5kaXNhYmxlQXV0aENvZGUiO2E6MTp7czo1OiJub25jZSI7czozMjoiNzY5MTRjNWViNjhmN2ViMmU4YTg4OWFkMzcxZmVkOTgiO31zOjU6IkxvZ2luIjthOjI6e3M6MTQ6InJlZGlyZWN0UGFyYW1zIjthOjI6e3M6NjoibW9kdWxlIjtzOjEyOiJVc2Vyc01hbmFnZXIiO3M6NjoiYWN0aW9uIjtzOjExOiJhZGROZXdUb2tlbiI7fXM6MTY6Imxhc3RQYXNzd29yZEF1dGgiO3M6MTk6IjIwMjItMTAtMjQgMTY6MDA6NTQiO31zOjE1OiJjb25maXJtUGFzc3dvcmQiO2E6MTp7czo1OiJub25jZSI7czozMjoiNzNjN2M0MTBhYmU4OGU5NjMwMDQyMjMwOWE2ZTYwYTQiO319\";}'),('1aaa4858400393317b29b8270b900d5b0f0a545867cf0e433bb73272c335c2469961bcaae3ce6d89bc2d32a5b94ce59d0ca6d81aa8ce530ba0e23e05d70cb91d',1668096339,1209600,'a:1:{s:4:\"data\";s:8:\"YTowOnt9\";}'),('223ba2a8371c103dffe919cb1c3936b7c045a355d8ccac6b63744c572944861333af0fa37b28ce2a3cc20873ae90be80c0f205e4768ac6ba57e2fc0309954c4b',1666789621,1209600,'a:1:{s:4:\"data\";s:552:\"YTo3OntzOjEyOiJub3RpZmljYXRpb24iO2E6MTp7czoxMzoibm90aWZpY2F0aW9ucyI7YTowOnt9fXM6NDoiX19aRiI7YToxOntzOjE1OiJzaXRlV2l0aG91dERhdGEiO2E6MTp7czozOiJFTlQiO2k6MTY2Njc5MjAxMDt9fXM6OToidXNlci5uYW1lIjtzOjU6ImFkbWluIjtzOjIyOiJ0d29mYWN0b3JhdXRoLnZlcmlmaWVkIjtpOjA7czoyMDoidXNlci50b2tlbl9hdXRoX3RlbXAiO3M6MzI6ImNjMGJhOGYxODRkOTI0OTUyYTQ1YTQzZjBiMDNlNDg3IjtzOjEyOiJzZXNzaW9uLmluZm8iO2E6Mzp7czoyOiJ0cyI7aToxNjY2Nzg4NDA1O3M6MTA6InJlbWVtYmVyZWQiO2I6MDtzOjEwOiJleHBpcmF0aW9uIjtpOjE2NjY3OTMyMjE7fXM6MTU6InNpdGVXaXRob3V0RGF0YSI7YToxOntzOjEzOiJpZ25vcmVNZXNzYWdlIjtiOjE7fX0=\";}'),('25e110736d6402185d24f6ca1bace722c612b887aebace9b14debc4799d9cc093215a921190206a4db518c2a87037c9cea7fe9a4835c0c63f197d7f3c69d360c',1668096529,1209600,'a:1:{s:4:\"data\";s:1976:\"YToxMjp7czo0OiJfX1pGIjthOjg6e3M6MTE6IkxvZ2luLmxvZ2luIjthOjE6e3M6NDoiRU5WVCI7YToxOntzOjU6Im5vbmNlIjtpOjE2NjgwOTcwMjE7fX1zOjE1OiJzaXRlV2l0aG91dERhdGEiO2E6MTp7czozOiJFTlQiO2k6MTY2ODA5OTkyNjt9czoxOToiY2hhbmdlUGFzc3dvcmROb25jZSI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNjY4MDk3MTI5O319czoyMDoiZGVsZXRlQXV0aFRva2VuTm9uY2UiO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTY2ODA5NzEyOTt9fXM6Mjk6IlR3b0ZhY3RvckF1dGguZGlzYWJsZUF1dGhDb2RlIjthOjE6e3M6NDoiRU5WVCI7YToxOntzOjU6Im5vbmNlIjtpOjE2NjgwOTcxMjk7fX1zOjU6IkxvZ2luIjthOjE6e3M6NDoiRU5WVCI7YToyOntzOjE0OiJyZWRpcmVjdFBhcmFtcyI7aToxNjY4MDk4MjkzO3M6MTY6Imxhc3RQYXNzd29yZEF1dGgiO2k6MTY2ODA5ODI5Mzt9fXM6MTU6ImNvbmZpcm1QYXNzd29yZCI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNjY4MDk3MDg1O319czoxNzoiYWRkQXV0aFRva2VuTm9uY2UiO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTY2ODA5NzA5Mzt9fX1zOjk6InVzZXIubmFtZSI7czo5OiJjaXRlbGlicmUiO3M6MjI6InR3b2ZhY3RvcmF1dGgudmVyaWZpZWQiO2k6MDtzOjIwOiJ1c2VyLnRva2VuX2F1dGhfdGVtcCI7czozMjoiZWQzOWFkMzJmNjAyYThiM2I3NDBjYmRmZjI3ZmFkNGMiO3M6MTI6InNlc3Npb24uaW5mbyI7YTozOntzOjI6InRzIjtpOjE2NjgwOTY0NDE7czoxMDoicmVtZW1iZXJlZCI7YjowO3M6MTA6ImV4cGlyYXRpb24iO2k6MTY2ODEwMDEyOTt9czoxMjoibm90aWZpY2F0aW9uIjthOjE6e3M6MTM6Im5vdGlmaWNhdGlvbnMiO2E6MDp7fX1zOjE1OiJzaXRlV2l0aG91dERhdGEiO2E6MTp7czoxMzoiaWdub3JlTWVzc2FnZSI7YjoxO31zOjE5OiJjaGFuZ2VQYXNzd29yZE5vbmNlIjthOjE6e3M6NToibm9uY2UiO3M6MzI6IjY3MzZlYzJlMjExYzNiMTA5ZmVkNzNmMTQyZmZmYzIyIjt9czoyMDoiZGVsZXRlQXV0aFRva2VuTm9uY2UiO2E6MTp7czo1OiJub25jZSI7czozMjoiY2M2N2M2NjE2ZTY5MzgzNzZmMmZiNTJhMzdiODBjNGUiO31zOjI5OiJUd29GYWN0b3JBdXRoLmRpc2FibGVBdXRoQ29kZSI7YToxOntzOjU6Im5vbmNlIjtzOjMyOiIwODJlNGQxNDU3Mjk2ZTc2YjUwYzQwZmNlMzZjMzZkZSI7fXM6NToiTG9naW4iO2E6Mjp7czoxNDoicmVkaXJlY3RQYXJhbXMiO2E6Mjp7czo2OiJtb2R1bGUiO3M6MTI6IlVzZXJzTWFuYWdlciI7czo2OiJhY3Rpb24iO3M6MTE6ImFkZE5ld1Rva2VuIjt9czoxNjoibGFzdFBhc3N3b3JkQXV0aCI7czoxOToiMjAyMi0xMS0xMCAxNjowODoxMyI7fXM6MTU6ImNvbmZpcm1QYXNzd29yZCI7YToxOntzOjU6Im5vbmNlIjtzOjMyOiIwMzMxNmE2MzViZWE5MzVhZjRmMmEyNjc1NjUyNzcyMyI7fX0=\";}'),('301ed8def24874cdf3dda9414ac3d61d1e85facdea1b09d5ac6495f1bea52f53fe2aa46cc9893ee30ac77c0731d2c083068f3c16c15b9ddee3981a72376ff72f',1666627231,1209600,'a:1:{s:4:\"data\";s:8:\"YTowOnt9\";}'),('cd8ba9170187bc9a33c6e270884b68d12048b6ccf1239ed4cb4a1aa96a9e8670530114bbb4f512832fbde0437f36d7475da70bab6d0bcab385bfd60e04ecf6f8',1717756787,1209600,'a:1:{s:4:\"data\";s:456:\"YTozOntzOjI2OiJMYW5ndWFnZXNNYW5hZ2VyLnNlbGVjdGlvbiI7YToxOntzOjU6Im5vbmNlIjtzOjMyOiJiMDlkNmFjMDAwZTNhNzk3NTJlYmRlOGE0MjRhMTE0ZiI7fXM6NDoiX19aRiI7YToyOntzOjI2OiJMYW5ndWFnZXNNYW5hZ2VyLnNlbGVjdGlvbiI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNzE3NzU3MzQxO319czoxMToiTG9naW4ubG9naW4iO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTcxNzc1NzM2NTt9fX1zOjExOiJMb2dpbi5sb2dpbiI7YToxOntzOjU6Im5vbmNlIjtzOjMyOiI1MjA2Mzg3NmY3MzA4MGRkMTlkMDc1YTYzY2ViZjU2NCI7fX0=\";}'),('fb54c42521801aca0ebcf6da56c285d0def1acc4f4cddb6562b5bb745c23205acd6df09f44c3dcd6297cbea0eebdc9fc9e35f22f6f5791565b4aa3132b6efcc7',1666626783,1209600,'a:1:{s:4:\"data\";s:488:\"YTo0OntzOjEyOiJub3RpZmljYXRpb24iO2E6MTp7czoxMzoibm90aWZpY2F0aW9ucyI7YTowOnt9fXM6MzE6IkNvcmVQbHVnaW5zQWRtaW4uYWN0aXZhdGVQbHVnaW4iO2E6MTp7czo1OiJub25jZSI7czozMjoiMTc1NjA2YzcwZDVkNDliNjNhMDIyNTVhNTkxZDI1YzEiO31zOjQ6Il9fWkYiO2E6Mjp7czozMToiQ29yZVBsdWdpbnNBZG1pbi5hY3RpdmF0ZVBsdWdpbiI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNjY2NjI3MzUxO319czoxNToic2l0ZVdpdGhvdXREYXRhIjthOjE6e3M6MzoiRU5UIjtpOjE2NjY2MzAzNjU7fX1zOjE1OiJzaXRlV2l0aG91dERhdGEiO2E6MTp7czoxMzoiaWdub3JlTWVzc2FnZSI7YjoxO319\";}');
/*!40000 ALTER TABLE `matomo_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_site`
--

DROP TABLE IF EXISTS `matomo_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_site` (
  `idsite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ecommerce` tinyint(4) DEFAULT 0,
  `sitesearch` tinyint(4) DEFAULT 1,
  `sitesearch_keyword_parameters` text NOT NULL,
  `sitesearch_category_parameters` text NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `currency` char(3) NOT NULL,
  `exclude_unknown_urls` tinyint(1) DEFAULT 0,
  `excluded_ips` text NOT NULL,
  `excluded_parameters` text NOT NULL,
  `excluded_user_agents` text NOT NULL,
  `excluded_referrers` text NOT NULL,
  `group` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `keep_url_fragment` tinyint(4) NOT NULL DEFAULT 0,
  `creator_login` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idsite`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_site`
--

LOCK TABLES `matomo_site` WRITE;
/*!40000 ALTER TABLE `matomo_site` DISABLE KEYS */;
INSERT INTO `matomo_site` VALUES (1,'Cite Libre ServiceEZ','http://localhost:8080/serviceEZ','2022-10-24 12:53:29',0,1,'','','Europe/Paris','USD',0,'','','','','','website',0,'anonymous');
/*!40000 ALTER TABLE `matomo_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_site_setting`
--

DROP TABLE IF EXISTS `matomo_site_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_site_setting` (
  `idsite` int(10) unsigned NOT NULL,
  `plugin_name` varchar(60) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `json_encoded` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `idsite_setting` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idsite_setting`),
  KEY `idsite` (`idsite`,`plugin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_site_setting`
--

LOCK TABLES `matomo_site_setting` WRITE;
/*!40000 ALTER TABLE `matomo_site_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_site_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_site_url`
--

DROP TABLE IF EXISTS `matomo_site_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_site_url` (
  `idsite` int(10) unsigned NOT NULL,
  `url` varchar(190) NOT NULL,
  PRIMARY KEY (`idsite`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_site_url`
--

LOCK TABLES `matomo_site_url` WRITE;
/*!40000 ALTER TABLE `matomo_site_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_site_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_tracking_failure`
--

DROP TABLE IF EXISTS `matomo_tracking_failure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_tracking_failure` (
  `idsite` bigint(20) unsigned NOT NULL,
  `idfailure` smallint(5) unsigned NOT NULL,
  `date_first_occurred` datetime NOT NULL,
  `request_url` mediumtext NOT NULL,
  PRIMARY KEY (`idsite`,`idfailure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_tracking_failure`
--

LOCK TABLES `matomo_tracking_failure` WRITE;
/*!40000 ALTER TABLE `matomo_tracking_failure` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_tracking_failure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_twofactor_recovery_code`
--

DROP TABLE IF EXISTS `matomo_twofactor_recovery_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_twofactor_recovery_code` (
  `idrecoverycode` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `recovery_code` varchar(40) NOT NULL,
  PRIMARY KEY (`idrecoverycode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_twofactor_recovery_code`
--

LOCK TABLES `matomo_twofactor_recovery_code` WRITE;
/*!40000 ALTER TABLE `matomo_twofactor_recovery_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_twofactor_recovery_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_user`
--

DROP TABLE IF EXISTS `matomo_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_user` (
  `login` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `twofactor_secret` varchar(40) NOT NULL DEFAULT '',
  `superuser_access` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_registered` timestamp NULL DEFAULT NULL,
  `ts_password_modified` timestamp NULL DEFAULT NULL,
  `idchange_last_viewed` int(10) unsigned DEFAULT NULL,
  `invited_by` varchar(100) DEFAULT NULL,
  `invite_token` varchar(191) DEFAULT NULL,
  `invite_link_token` varchar(191) DEFAULT NULL,
  `invite_expired_at` timestamp NULL DEFAULT NULL,
  `invite_accept_at` timestamp NULL DEFAULT NULL,
  `ts_changes_shown` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_user`
--

LOCK TABLES `matomo_user` WRITE;
/*!40000 ALTER TABLE `matomo_user` DISABLE KEYS */;
INSERT INTO `matomo_user` VALUES ('admin','$2y$10$uaGht/GMXOl2Ye5Ifx2WDe1/FHOgDWQtRiNzIssWc/MVmYBsPf5yO','admin@demo.com','',1,'2022-10-24 12:51:56','2022-10-24 12:51:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('anonymous','','anonymous@example.org','',0,'2022-10-24 12:51:23','2022-10-24 12:51:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('citelibre','$2y$10$SZRn.lO0ooUq31V8IWrIFujxCMUeJgLbG4cFa5phSL5Xf.Yx0kbbi','citelibre@atos.net','',0,'2022-11-10 15:06:16','2022-11-10 15:07:21',NULL,'admin',NULL,'ed821eeb6b1522aecf7f6a03739624088162f5decb0d57c8667cc89f137fd17266d52747e10963f4a7886cc0b557fc1a0c6a60b124540bc4b6deb4d1a844b25b',NULL,'2022-11-10 15:07:21',NULL);
/*!40000 ALTER TABLE `matomo_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_user_dashboard`
--

DROP TABLE IF EXISTS `matomo_user_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_user_dashboard` (
  `login` varchar(100) NOT NULL,
  `iddashboard` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `layout` text NOT NULL,
  PRIMARY KEY (`login`,`iddashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_user_dashboard`
--

LOCK TABLES `matomo_user_dashboard` WRITE;
/*!40000 ALTER TABLE `matomo_user_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_user_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_user_language`
--

DROP TABLE IF EXISTS `matomo_user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_user_language` (
  `login` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  `use_12_hour_clock` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_user_language`
--

LOCK TABLES `matomo_user_language` WRITE;
/*!40000 ALTER TABLE `matomo_user_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_user_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_user_token_auth`
--

DROP TABLE IF EXISTS `matomo_user_token_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_user_token_auth` (
  `idusertokenauth` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `password` varchar(191) NOT NULL,
  `hash_algo` varchar(30) NOT NULL,
  `system_token` tinyint(1) NOT NULL DEFAULT 0,
  `last_used` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_expired` datetime DEFAULT NULL,
  `secure_only` tinyint(2) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idusertokenauth`),
  UNIQUE KEY `uniq_password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_user_token_auth`
--

LOCK TABLES `matomo_user_token_auth` WRITE;
/*!40000 ALTER TABLE `matomo_user_token_auth` DISABLE KEYS */;
INSERT INTO `matomo_user_token_auth` VALUES (1,'anonymous','anonymous default token','e17f271371f48c16efa434763caade541d4425ccceda758d728f74a11e791dbac57000c47d0d21b41564f3b2910194232c4c3361a2770150674df3777ece742b','sha512',0,'2024-06-07 10:39:00','2022-10-24 14:51:23',NULL,0),(2,'admin','serviceEZ','e94d7d3c290690b297e09b8dc7f6580f5e58dd09cdc43b95a5738ab457b6f79301266c8af272c7b28ee0699cb912404a00d6742417fe60602f3580bd45b33f49','sha512',0,NULL,'2022-10-24 16:01:10',NULL,0),(3,'citelibre','cite-libre','3c409da9e0edcc765157faa8f178d614c4646d2df3fb037561ab7a195abb3ebda8a4b9cbe5e11c6d26a5162ea46ef4d22e42f17b92c484a7d4f6da2ce228ae83','sha512',0,'2024-06-07 10:39:47','2022-11-18 06:28:14',NULL,0);
/*!40000 ALTER TABLE `matomo_user_token_auth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-07 11:01:11
