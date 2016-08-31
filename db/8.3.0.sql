-- MySQL dump 10.15  Distrib 10.0.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: userlike-typo3
-- ------------------------------------------------------
-- Server version	10.0.25-MariaDB-0ubuntu0.16.04.1

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `config` text NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text,
  `explicit_allowdeny` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text,
  `db_mountpoints` text,
  `pagetypes_select` varchar(255) NOT NULL DEFAULT '',
  `tables_select` text,
  `tables_modify` text,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text,
  `file_mountpoints` text,
  `file_permissions` text,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('71fec4715e14b3a7e3a075094bd85800','be_typo_user','192.168.100.254',13352841,1,1472677583,'a:3:{s:26:\"formProtectionSessionToken\";s:64:\"d232f09bcee01d28ef062601bf951ace7629ffff017a1f6bd342ae475af08505\";s:27:\"core.template.flashMessages\";N;s:31:\"TYPO3\\CMS\\Recordlist\\RecordList\";a:1:{s:12:\"search_field\";N;}}',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(6) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `db_mountpoints` text,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumtext,
  `file_mountpoints` text,
  `file_permissions` text,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1449993316,'admin','',0,'$P$CwY4YhL1U/ERsOvgJYStUVBLMfgtFu1',1,'',0,0,0,'','',NULL,0,1449993316,0,'',NULL,'','a:17:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:3:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:10:\"FormEngine\";a:2:{i:0;a:2:{s:32:\"561a9faa35221e4a26c342ff7dda9cf1\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:3:{s:6:\"colPos\";s:1:\"0\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:4:\"list\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:173:\"&edit[tt_content][1]=edit&defVals[tt_content][colPos]=0&defVals[tt_content][sys_language_uid]=0&defVals[tt_content][CType]=list&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"41e1503a912c8d1b703842bb19e74f1b\";a:4:{i:0;s:19:\"<em>[No title]</em>\";i:1;a:6:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:80:\"&edit[tt_content][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&workspace=\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"41e1503a912c8d1b703842bb19e74f1b\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:22:\"help_AboutAboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1449993396;s:15:\"moduleSessionID\";a:3:{s:10:\"web_layout\";s:32:\"031a7450c5feb46c28ed5d8e6eb86c2c\";s:10:\"FormEngine\";s:32:\"71fec4715e14b3a7e3a075094bd85800\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"71fec4715e14b3a7e3a075094bd85800\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":4:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p1\";}}}}}',NULL,NULL,1,'',0,0,NULL,1472675207,0,NULL,0,1,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
INSERT INTO `cf_cache_hash` VALUES (1,'576595e3254453bd2c9fcb290b77e434',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:3:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:2:{s:8:\"options.\";a:1:{s:9:\"leftIcons\";s:1:\"1\";}s:6:\"table.\";a:3:{s:13:\"virtual_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:2:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}}}s:11:\"pages_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:7:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:4:\"ITEM\";s:4:\"200.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:300;s:7:\"DIVIDER\";i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}}}s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:18:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:7:\"disable\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_common.xlf:disable\";s:8:\"iconName\";s:17:\"actions-edit-hide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 0 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:11:\"disablePage\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:6:\"enable\";s:5:\"label\";s:40:\"LLL:EXT:lang/locallang_common.xlf:enable\";s:8:\"iconName\";s:19:\"actions-edit-unhide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 1 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:10:\"enablePage\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"edit\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.edit\";s:8:\"iconName\";s:17:\"actions-page-open\";s:16:\"displayCondition\";s:16:\"canBeEdited != 0\";s:14:\"callbackAction\";s:18:\"editPageProperties\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"info\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.info\";s:8:\"iconName\";s:21:\"actions-document-info\";s:16:\"displayCondition\";s:16:\"canShowInfo != 0\";s:14:\"callbackAction\";s:13:\"openInfoPopUp\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:800;s:7:\"DIVIDER\";i:900;s:7:\"SUBMENU\";s:4:\"900.\";a:22:{s:5:\"label\";s:51:\"LLL:EXT:lang/locallang_core.xlf:cm.copyPasteActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:16:\"actions-edit-cut\";s:16:\"displayCondition\";s:53:\"isInCutMode = 0 && canBeCut != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:13:\"enableCutMode\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:24:\"actions-edit-cut-release\";s:16:\"displayCondition\";s:32:\"isInCutMode = 1 && canBeCut != 0\";s:14:\"callbackAction\";s:14:\"disableCutMode\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:17:\"actions-edit-copy\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 0\";s:14:\"callbackAction\";s:14:\"enableCopyMode\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:25:\"actions-edit-copy-release\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 1\";s:14:\"callbackAction\";s:15:\"disableCopyMode\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:9:\"pasteInto\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteinto\";s:8:\"iconName\";s:27:\"actions-document-paste-into\";s:16:\"displayCondition\";s:85:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedInto != 0\";s:14:\"callbackAction\";s:13:\"pasteIntoNode\";}i:800;s:4:\"ITEM\";s:4:\"800.\";a:5:{s:4:\"name\";s:10:\"pasteAfter\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteafter\";s:8:\"iconName\";s:28:\"actions-document-paste-after\";s:16:\"displayCondition\";s:86:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedAfter != 0\";s:14:\"callbackAction\";s:14:\"pasteAfterNode\";}i:900;s:7:\"DIVIDER\";i:1000;s:4:\"ITEM\";s:5:\"1000.\";a:5:{s:4:\"name\";s:6:\"delete\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_core.xlf:cm.delete\";s:8:\"iconName\";s:19:\"actions-edit-delete\";s:16:\"displayCondition\";s:38:\"canBeRemoved != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:10:\"removeNode\";}i:1100;s:7:\"DIVIDER\";i:1200;s:4:\"ITEM\";s:5:\"1200.\";a:4:{s:4:\"name\";s:10:\"clearCache\";s:5:\"label\";s:50:\"LLL:EXT:lang/locallang_core.xlf:labels.clear_cache\";s:8:\"iconName\";s:26:\"actions-system-cache-clear\";s:14:\"callbackAction\";s:16:\"clearCacheOfPage\";}}i:1000;s:7:\"SUBMENU\";s:5:\"1000.\";a:8:{s:5:\"label\";s:48:\"LLL:EXT:lang/locallang_core.xlf:cm.branchActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:15:\"mountAsTreeroot\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.tempMountPoint\";s:8:\"iconName\";s:26:\"actions-pagetree-mountroot\";s:16:\"displayCondition\";s:49:\"canBeTemporaryMountPoint != 0 && isMountPoint = 0\";s:14:\"callbackAction\";s:15:\"mountAsTreeRoot\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:12:\"expandBranch\";s:5:\"label\";s:47:\"LLL:EXT:lang/locallang_core.xlf:cm.expandBranch\";s:8:\"iconName\";s:23:\"actions-pagetree-expand\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:12:\"expandBranch\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:14:\"collapseBranch\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.collapseBranch\";s:8:\"iconName\";s:25:\"actions-pagetree-collapse\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:14:\"collapseBranch\";}}}}}}s:14:\"disableDelete.\";a:2:{s:17:\"sys_file_metadata\";s:1:\"1\";s:8:\"sys_file\";s:1:\"1\";}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}}s:6:\"setup.\";a:1:{s:8:\"default.\";a:1:{s:8:\"edit_RTE\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"c4604e24c03c614fb7965fcdb7f725aa\";}'),(2,'0e9c3034f9460b5e70a7abc53f713cfb',2145909600,'a:3:{s:4:\"mod.\";a:3:{s:9:\"web_list.\";a:5:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:22:\"enableLocalizationView\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:11:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:23:\"pages_language_overlay.\";a:1:{s:6:\"before\";s:5:\"pages\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"sys_domain.\";a:1:{s:5:\"after\";s:12:\"sys_template\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}s:12:\"searchLevel.\";a:1:{s:6:\"items.\";a:6:{i:-1;s:55:\"EXT:lang/locallang_core.xlf:labels.searchLevel.infinite\";i:0;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.0\";i:1;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.1\";i:2;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.2\";i:3;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.3\";i:4;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.4\";}}}s:8:\"wizards.\";a:2:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:4:{s:7:\"common.\";a:1:{s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";}s:8:\"special.\";a:1:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";}s:6:\"forms.\";a:1:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:1:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}}s:4:\"show\";s:1:\"*\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:11:{s:5:\"1280.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:5:\"1024.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"960.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"800.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:4:\"768.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"600.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"640.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"480.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"400.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"360.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"300.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}}}}s:4:\"RTE.\";a:4:{s:8:\"default.\";a:17:{s:5:\"proc.\";a:12:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:16:\"allowTagsOutside\";s:74:\"address, article, aside, blockquote, footer, header, hr, nav, section, div\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:75:\"class, align, id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:1:{s:5:\"unset\";s:1:\"1\";}}s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:5:\"class\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:3:\"FE.\";a:17:{s:5:\"proc.\";a:12:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:16:\"allowTagsOutside\";s:74:\"address, article, aside, blockquote, footer, header, hr, nav, section, div\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:75:\"class, align, id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:1:{s:5:\"unset\";s:1:\"1\";}}s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:5:\"class\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"0\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}s:11:\"hideButtons\";s:202:\"chMode, blockstyle, textstyle, underline, strikethrough, subscript, superscript, lefttoright, righttoleft, left, center, right, justifyfull, table, inserttag, findreplace, removeformat, copy, cut, paste\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"1\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}}s:7:\"config.\";a:1:{s:11:\"tt_content.\";a:1:{s:9:\"bodytext.\";a:2:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}s:6:\"types.\";a:2:{s:5:\"text.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}s:8:\"textpic.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}}}}}s:8:\"classes.\";a:12:{s:11:\"align-left.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyleft\";s:5:\"value\";s:17:\"text-align: left;\";}s:13:\"align-center.\";a:2:{s:4:\"name\";s:83:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifycenter\";s:5:\"value\";s:19:\"text-align: center;\";}s:12:\"align-right.\";a:2:{s:4:\"name\";s:82:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyright\";s:5:\"value\";s:18:\"text-align: right;\";}s:17:\"csc-frame-frame1.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame1\";s:5:\"value\";s:53:\"background-color: #EDEBF1; border: 1px solid #333333;\";}s:17:\"csc-frame-frame2.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame2\";s:5:\"value\";s:53:\"background-color: #F5FFAA; border: 1px solid #333333;\";}s:10:\"important.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:important\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:15:\"name-of-person.\";a:2:{s:4:\"name\";s:86:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:name-of-person\";s:5:\"value\";s:15:\"color: #10007B;\";}s:7:\"detail.\";a:2:{s:4:\"name\";s:78:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:detail\";s:5:\"value\";s:15:\"color: #186900;\";}s:16:\"component-items.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:13:\"action-items.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:24:\"component-items-ordered.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:21:\"action-items-ordered.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}}s:14:\"classesAnchor.\";a:6:{s:13:\"externalLink.\";a:3:{s:5:\"class\";s:13:\"external-link\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_titleText\";}s:24:\"externalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"external-link-new-window\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_new_window_titleText\";}s:13:\"internalLink.\";a:3:{s:5:\"class\";s:13:\"internal-link\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_titleText\";}s:24:\"internalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"internal-link-new-window\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_new_window_titleText\";}s:9:\"download.\";a:3:{s:5:\"class\";s:8:\"download\";s:4:\"type\";s:4:\"file\";s:9:\"titleText\";s:98:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:download_titleText\";}s:5:\"mail.\";a:3:{s:5:\"class\";s:4:\"mail\";s:4:\"type\";s:4:\"mail\";s:9:\"titleText\";s:94:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:mail_titleText\";}}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:1:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}}}'),(3,'70366f8a9440a6e5e095e8ccce045a73',2145909600,'a:13:{s:4:\"lib.\";a:6:{s:10:\"parseFunc.\";a:8:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:3:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:9:\"extTarget\";s:6:\"_blank\";s:6:\"target\";s:0:\"\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}}s:9:\"allowTags\";s:389:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}}s:14:\"parseFunc_RTE.\";a:10:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:4:{s:4:\"link\";s:4:\"TEXT\";s:5:\"link.\";a:3:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:3:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:22:\"parameters : allParams\";}s:9:\"extTarget\";s:6:\"_blank\";s:6:\"target\";s:0:\"\";}s:10:\"parseFunc.\";a:1:{s:9:\"constants\";s:1:\"1\";}}s:3:\"img\";s:4:\"TEXT\";s:4:\"img.\";a:2:{s:7:\"current\";s:1:\"1\";s:11:\"preUserFunc\";s:80:\"TYPO3\\CMS\\Rtehtmlarea\\Controller\\ImageRenderingController->renderImageAttributes\";}}s:9:\"allowTags\";s:389:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:3:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:3:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";s:5:\"tags.\";a:1:{s:4:\"img.\";a:1:{s:10:\"fixAttrib.\";a:3:{s:10:\"allparams.\";a:1:{s:5:\"unset\";s:1:\"1\";}s:23:\"data-htmlarea-file-uid.\";a:1:{s:5:\"unset\";s:1:\"1\";}s:25:\"data-htmlarea-file-table.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}}}s:12:\"encapsLines.\";a:4:{s:13:\"encapsTagList\";s:29:\"p,pre,h1,h2,h3,h4,h5,h6,hr,dt\";s:9:\"remapTag.\";a:1:{s:3:\"DIV\";s:1:\"P\";}s:13:\"nonWrappedTag\";s:1:\"P\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:6:\"&nbsp;\";}}}s:14:\"externalBlocks\";s:84:\"article, aside, blockquote, div, dd, dl, footer, header, nav, ol, section, table, ul\";s:15:\"externalBlocks.\";a:13:{s:11:\"blockquote.\";a:3:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";s:14:\"callRecursive.\";a:1:{s:11:\"tagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:1:{s:5:\"tags.\";a:1:{s:11:\"blockquote.\";a:1:{s:15:\"overrideAttribs\";s:37:\"style=\"margin-bottom:0;margin-top:0;\"\";}}}}}}s:3:\"ol.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:3:\"ul.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:6:\"table.\";a:4:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:5:\"tags.\";a:1:{s:6:\"table.\";a:1:{s:10:\"fixAttrib.\";a:1:{s:6:\"class.\";a:3:{s:7:\"default\";s:12:\"contenttable\";s:6:\"always\";s:1:\"1\";s:4:\"list\";s:12:\"contenttable\";}}}}s:18:\"keepNonMatchedTags\";s:1:\"1\";}}s:14:\"HTMLtableCells\";s:1:\"1\";s:15:\"HTMLtableCells.\";a:2:{s:8:\"default.\";a:1:{s:8:\"stdWrap.\";a:2:{s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:10:\"parseFunc.\";a:1:{s:18:\"nonTypoTagStdWrap.\";a:1:{s:12:\"encapsLines.\";a:1:{s:13:\"nonWrappedTag\";s:0:\"\";}}}}}s:25:\"addChr10BetweenParagraphs\";s:1:\"1\";}}s:4:\"div.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"article.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:6:\"aside.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"footer.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"header.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:4:\"nav.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"section.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dl.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dd.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}}}s:12:\"fluidContent\";s:13:\"FLUIDTEMPLATE\";s:13:\"fluidContent.\";a:5:{s:12:\"templateName\";s:7:\"Default\";s:18:\"templateRootPaths.\";a:2:{i:0;s:53:\"EXT:fluid_styled_content/Resources/Private/Templates/\";i:10;s:0:\"\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:52:\"EXT:fluid_styled_content/Resources/Private/Partials/\";i:10;s:0:\"\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:51:\"EXT:fluid_styled_content/Resources/Private/Layouts/\";i:10;s:0:\"\";}s:9:\"settings.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:6:\"media.\";a:1:{s:6:\"popup.\";a:9:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:5:\"crop.\";a:1:{s:4:\"data\";s:17:\"file:current:crop\";}s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"0\";}}s:15:\"directImageLink\";s:1:\"0\";s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:44:\"class=\"lightbox\" rel=\"lightbox[{field:uid}]\"\";}}}}}}s:9:\"stdheader\";s:18:\"< lib.fluidContent\";s:10:\"stdheader.\";a:1:{s:12:\"templateName\";s:10:\"HeaderOnly\";}}s:7:\"styles.\";a:1:{s:8:\"content.\";a:2:{s:3:\"get\";s:7:\"CONTENT\";s:4:\"get.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:8:\"colPos=0\";}}}}s:10:\"tt_content\";s:4:\"CASE\";s:11:\"tt_content.\";a:25:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:8:\"stdWrap.\";a:2:{s:9:\"editPanel\";s:1:\"1\";s:10:\"editPanel.\";a:5:{s:5:\"allow\";s:29:\"move, new, edit, hide, delete\";s:5:\"label\";s:2:\"%s\";s:14:\"onlyCurrentPid\";s:1:\"1\";s:13:\"previewBorder\";s:1:\"1\";s:5:\"edit.\";a:1:{s:13:\"displayRecord\";s:1:\"1\";}}}s:7:\"bullets\";s:18:\"< lib.fluidContent\";s:8:\"bullets.\";a:3:{s:12:\"templateName\";s:7:\"Bullets\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:4:{s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:11:\"isLessThan.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:9:\"fieldName\";s:8:\"bodytext\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:2:\"as\";s:7:\"bullets\";}i:20;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"20.\";a:4:{s:9:\"fieldName\";s:8:\"bodytext\";s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:7:\"equals.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:14:\"fieldDelimiter\";s:1:\"|\";s:2:\"as\";s:7:\"bullets\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:59:\"tt_content: header [header_layout], bodytext [bullets_type]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.bullets\";}}}}s:3:\"div\";s:18:\"< lib.fluidContent\";s:4:\"div.\";a:1:{s:12:\"templateName\";s:3:\"Div\";}s:6:\"header\";s:18:\"< lib.fluidContent\";s:7:\"header.\";a:2:{s:12:\"templateName\";s:6:\"Header\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:63:\"tt_content: header [header_layout|header_link], subheader, date\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:91:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.header\";}}}}s:4:\"html\";s:18:\"< lib.fluidContent\";s:5:\"html.\";a:2:{s:12:\"templateName\";s:4:\"Html\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:4:\"list\";s:18:\"< lib.fluidContent\";s:5:\"list.\";a:3:{s:12:\"templateName\";s:4:\"List\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:84:\"tt_content: header [header_layout], list_type, layout, select_key, pages [recursive]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.list\";}}}s:3:\"20.\";a:4:{s:9:\"form_form\";s:4:\"USER\";s:10:\"form_form.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:4:\"Form\";s:10:\"pluginName\";s:4:\"Form\";s:10:\"vendorName\";s:9:\"TYPO3\\CMS\";}s:15:\"userlike_widget\";s:4:\"USER\";s:16:\"userlike_widget.\";a:4:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:8:\"Userlike\";s:10:\"pluginName\";s:6:\"Widget\";s:10:\"vendorName\";s:12:\"UserlikeChat\";}}}s:4:\"menu\";s:18:\"< lib.fluidContent\";s:5:\"menu.\";a:3:{s:12:\"templateName\";s:4:\"Menu\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:9:\"fieldName\";s:5:\"pages\";s:9:\"delimiter\";s:1:\",\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:14:\"filterIntegers\";s:1:\"1\";s:12:\"filterUnique\";s:1:\"1\";s:2:\"as\";s:8:\"pageUids\";}i:20;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"20.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:19:\"selected_categories\";}}s:9:\"fieldName\";s:19:\"selected_categories\";s:9:\"delimiter\";s:1:\",\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:14:\"filterIntegers\";s:1:\"1\";s:12:\"filterUnique\";s:1:\"1\";s:2:\"as\";s:12:\"categoryUids\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:52:\"tt_content: header [header_layout], menu_type, pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:8:\"shortcut\";s:18:\"< lib.fluidContent\";s:9:\"shortcut.\";a:3:{s:12:\"templateName\";s:8:\"Shortcut\";s:10:\"variables.\";a:2:{s:9:\"shortcuts\";s:7:\"RECORDS\";s:10:\"shortcuts.\";a:2:{s:7:\"source.\";a:1:{s:5:\"field\";s:7:\"records\";}s:6:\"tables\";s:10:\"tt_content\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:43:\"tt_content: header [header_layout], records\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:93:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.shortcut\";}}}}s:5:\"table\";s:18:\"< lib.fluidContent\";s:6:\"table.\";a:3:{s:12:\"templateName\";s:5:\"Table\";s:15:\"dataProcessing.\";a:2:{i:10;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"10.\";a:5:{s:9:\"fieldName\";s:8:\"bodytext\";s:15:\"fieldDelimiter.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_delimiter\";}}}s:15:\"fieldEnclosure.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}}}s:15:\"maximumColumns.\";a:1:{s:5:\"field\";s:4:\"cols\";}s:2:\"as\";s:5:\"table\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:100:\"tt_content: header [header_layout], bodytext, [table_caption|cols|table_header_position|table_tfoot]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.table\";}}}}s:9:\"textmedia\";s:18:\"< lib.fluidContent\";s:10:\"textmedia.\";a:3:{s:12:\"templateName\";s:9:\"Textmedia\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:6:\"assets\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:126:\"tt_content: header [header_layout], bodytext, assets [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:94:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textmedia\";}}}}s:7:\"uploads\";s:18:\"< lib.fluidContent\";s:8:\"uploads.\";a:3:{s:12:\"templateName\";s:7:\"Uploads\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}s:12:\"collections.\";a:1:{s:5:\"field\";s:16:\"file_collections\";}s:8:\"sorting.\";a:1:{s:5:\"field\";s:16:\"filelink_sorting\";}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:127:\"tt_content: header [header_layout], media, file_collections, filelink_sorting, [filelink_size|uploads_description|uploads_type]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.uploads\";}}}}s:7:\"default\";s:18:\"< lib.fluidContent\";s:5:\"login\";s:3:\"COA\";s:6:\"login.\";a:2:{i:10;s:15:\"< lib.stdheader\";i:20;s:23:\"< plugin.tx_felogin_pi1\";}}s:7:\"plugin.\";a:3:{s:12:\"tx_frontend.\";a:1:{s:18:\"_CSS_DEFAULT_STYLE\";s:1598:\"	.ce-align-left { text-align: left; }\n	.ce-align-center { text-align: center; }\n	.ce-align-right { text-align: right; }\n\n	.ce-table td, .ce-table th { vertical-align: top; }\n\n	.ce-textpic, .ce-nowrap .ce-bodytext, .ce-gallery, .ce-row, .ce-uploads li, .ce-uploads div { overflow: hidden; }\n\n	.ce-left .ce-gallery, .ce-column { float: left; }\n	.ce-center .ce-outer { position: relative; float: right; right: 50%; }\n	.ce-center .ce-inner { position: relative; float: right; right: -50%; }\n	.ce-right .ce-gallery { float: right; }\n\n	.ce-gallery figure { display: table; margin: 0; }\n	.ce-gallery figcaption { display: table-caption; caption-side: bottom; }\n	.ce-gallery img { display: block; }\n	.ce-gallery iframe { border-width: 0; }\n	.ce-border img,\n	.ce-border iframe {\n		border: 2px solid #000000;\n		padding: 0px;\n	}\n\n	.ce-intext.ce-right .ce-gallery, .ce-intext.ce-left .ce-gallery, .ce-above .ce-gallery {\n		margin-bottom: 10px;\n	}\n	.ce-intext.ce-right .ce-gallery { margin-left: 10px; }\n	.ce-intext.ce-left .ce-gallery { margin-right: 10px; }\n	.ce-below .ce-gallery { margin-top: 10px; }\n\n	.ce-column { margin-right: 10px; }\n	.ce-column:last-child { margin-right: 0; }\n\n	.ce-row { margin-bottom: 10px; }\n	.ce-row:last-child { margin-bottom: 0; }\n\n	.ce-above .ce-bodytext { clear: both; }\n\n	.ce-intext.ce-left ol, .ce-intext.ce-left ul { padding-left: 40px; overflow: auto; }\n\n	.ce-uploads { margin: 0; padding: 0; }\n	.ce-uploads li { list-style: none outside none; margin: 1em 0; }\n	.ce-uploads img { float: left; padding-right: 1em; vertical-align: top; }\n	.ce-uploads span { display: block; }\";}s:14:\"tx_felogin_pi1\";s:8:\"USER_INT\";s:15:\"tx_felogin_pi1.\";a:46:{s:8:\"userFunc\";s:58:\"TYPO3\\CMS\\Felogin\\Controller\\FrontendLoginController->main\";s:10:\"storagePid\";s:0:\"\";s:9:\"recursive\";s:0:\"\";s:12:\"templateFile\";s:58:\"EXT:felogin/Resources/Private/Templates/FrontendLogin.html\";s:14:\"feloginBaseURL\";s:0:\"\";s:22:\"wrapContentInBaseClass\";s:1:\"1\";s:11:\"linkConfig.\";a:2:{s:6:\"target\";s:0:\"\";s:10:\"ATagParams\";s:14:\"rel=\"nofollow\"\";}s:15:\"preserveGETvars\";s:3:\"all\";s:22:\"showForgotPasswordLink\";s:0:\"\";s:14:\"showPermaLogin\";s:0:\"\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:20:\"newPasswordMinLength\";s:1:\"6\";s:22:\"welcomeHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:23:\"welcomeMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"successHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:23:\"successMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"logoutHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"logoutMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:20:\"errorHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"errorMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:21:\"forgotHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"forgotMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:27:\"forgotErrorMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:43:\"forgotResetMessageEmailSentMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordNotValidMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordTooShortMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:38:\"changePasswordNotEqualMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:29:\"changePasswordHeader_stdWrap.\";a:2:{s:4:\"wrap\";s:10:\"<h3>|</h3>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:30:\"changePasswordMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:34:\"changePasswordDoneMessage_stdWrap.\";a:2:{s:4:\"wrap\";s:12:\"<div>|</div>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:22:\"cookieWarning_stdWrap.\";a:2:{s:4:\"wrap\";s:45:\"<p style=\"color:red; font-weight:bold;\">|</p>\";s:16:\"htmlSpecialChars\";s:1:\"1\";}s:11:\"userfields.\";a:1:{s:9:\"username.\";a:2:{s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:18:\"<strong>|</strong>\";}}s:12:\"redirectMode\";s:0:\"\";s:19:\"redirectFirstMethod\";s:0:\"\";s:17:\"redirectPageLogin\";s:0:\"\";s:22:\"redirectPageLoginError\";s:0:\"\";s:18:\"redirectPageLogout\";s:0:\"\";s:15:\"redirectDisable\";s:0:\"\";s:10:\"email_from\";s:0:\"\";s:14:\"email_fromName\";s:0:\"\";s:7:\"replyTo\";s:0:\"\";s:7:\"domains\";s:0:\"\";s:24:\"showLogoutFormAfterLogin\";s:0:\"\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";s:18:\"_CSS_DEFAULT_STYLE\";s:48:\"		.tx-felogin-pi1 label {\n			display: block;\n		}\";}}s:7:\"config.\";a:1:{s:11:\"tx_extbase.\";a:3:{s:4:\"mvc.\";a:2:{s:16:\"requestHandlers.\";a:4:{s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";}s:48:\"throwPageNotFoundExceptionIfActionCantBeResolved\";s:1:\"0\";}s:12:\"persistence.\";a:4:{s:28:\"enableAutomaticCacheClearing\";s:1:\"1\";s:20:\"updateReferenceIndex\";s:1:\"0\";s:13:\"useQueryCache\";s:1:\"1\";s:8:\"classes.\";a:11:{s:41:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileMount.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:14:\"sys_filemounts\";s:8:\"columns.\";a:3:{s:6:\"title.\";a:1:{s:13:\"mapOnProperty\";s:5:\"title\";}s:5:\"path.\";a:1:{s:13:\"mapOnProperty\";s:4:\"path\";}s:5:\"base.\";a:1:{s:13:\"mapOnProperty\";s:14:\"isAbsolutePath\";}}}}s:45:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FileReference.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:18:\"sys_file_reference\";}}s:36:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\File.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:8:\"sys_file\";}}s:43:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"be_users\";s:8:\"columns.\";a:8:{s:9:\"username.\";a:1:{s:13:\"mapOnProperty\";s:8:\"userName\";}s:6:\"admin.\";a:1:{s:13:\"mapOnProperty\";s:15:\"isAdministrator\";}s:8:\"disable.\";a:1:{s:13:\"mapOnProperty\";s:10:\"isDisabled\";}s:9:\"realName.\";a:1:{s:13:\"mapOnProperty\";s:8:\"realName\";}s:10:\"starttime.\";a:1:{s:13:\"mapOnProperty\";s:16:\"startDateAndTime\";}s:8:\"endtime.\";a:1:{s:13:\"mapOnProperty\";s:14:\"endDateAndTime\";}s:14:\"disableIPlock.\";a:1:{s:13:\"mapOnProperty\";s:16:\"ipLockIsDisabled\";}s:10:\"lastlogin.\";a:1:{s:13:\"mapOnProperty\";s:20:\"lastLoginDateAndTime\";}}}}s:48:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\BackendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"be_groups\";s:8:\"columns.\";a:14:{s:9:\"subgroup.\";a:1:{s:13:\"mapOnProperty\";s:9:\"subGroups\";}s:10:\"groupMods.\";a:1:{s:13:\"mapOnProperty\";s:7:\"modules\";}s:14:\"tables_select.\";a:1:{s:13:\"mapOnProperty\";s:15:\"tablesListening\";}s:14:\"tables_modify.\";a:1:{s:13:\"mapOnProperty\";s:12:\"tablesModify\";}s:17:\"pagetypes_select.\";a:1:{s:13:\"mapOnProperty\";s:9:\"pageTypes\";}s:19:\"non_exclude_fields.\";a:1:{s:13:\"mapOnProperty\";s:20:\"allowedExcludeFields\";}s:19:\"explicit_allowdeny.\";a:1:{s:13:\"mapOnProperty\";s:22:\"explicitlyAllowAndDeny\";}s:18:\"allowed_languages.\";a:1:{s:13:\"mapOnProperty\";s:16:\"allowedLanguages\";}s:16:\"workspace_perms.\";a:1:{s:13:\"mapOnProperty\";s:19:\"workspacePermission\";}s:15:\"db_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:14:\"databaseMounts\";}s:17:\"file_permissions.\";a:1:{s:13:\"mapOnProperty\";s:24:\"fileOperationPermissions\";}s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}s:14:\"hide_in_lists.\";a:1:{s:13:\"mapOnProperty\";s:10:\"hideInList\";}s:9:\"TSconfig.\";a:1:{s:13:\"mapOnProperty\";s:8:\"tsConfig\";}}}}s:44:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FrontendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"fe_users\";s:8:\"columns.\";a:1:{s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}}}}s:49:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\FrontendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"fe_groups\";s:8:\"columns.\";a:1:{s:13:\"lockToDomain.\";a:1:{s:13:\"mapOnProperty\";s:12:\"lockToDomain\";}}}}s:40:\"TYPO3\\CMS\\Extbase\\Domain\\Model\\Category.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:12:\"sys_category\";}}s:42:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUser.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:8:\"be_users\";s:8:\"columns.\";a:4:{s:18:\"allowed_languages.\";a:1:{s:13:\"mapOnProperty\";s:16:\"allowedLanguages\";}s:17:\"file_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:15:\"fileMountPoints\";}s:15:\"db_mountpoints.\";a:1:{s:13:\"mapOnProperty\";s:13:\"dbMountPoints\";}s:10:\"usergroup.\";a:1:{s:13:\"mapOnProperty\";s:17:\"backendUserGroups\";}}}}s:47:\"TYPO3\\CMS\\Beuser\\Domain\\Model\\BackendUserGroup.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:9:\"be_groups\";s:8:\"columns.\";a:1:{s:9:\"subgroup.\";a:1:{s:13:\"mapOnProperty\";s:9:\"subGroups\";}}}}s:39:\"TYPO3\\CMS\\SysNote\\Domain\\Model\\SysNote.\";a:1:{s:8:\"mapping.\";a:3:{s:9:\"tableName\";s:8:\"sys_note\";s:10:\"recordType\";s:0:\"\";s:8:\"columns.\";a:3:{s:7:\"crdate.\";a:1:{s:13:\"mapOnProperty\";s:12:\"creationDate\";}s:7:\"tstamp.\";a:1:{s:13:\"mapOnProperty\";s:16:\"modificationDate\";}s:7:\"cruser.\";a:1:{s:13:\"mapOnProperty\";s:6:\"author\";}}}}}}s:9:\"features.\";a:2:{s:20:\"skipDefaultArguments\";s:1:\"0\";s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";}}}s:23:\"fluidAjaxWidgetResponse\";s:4:\"PAGE\";s:24:\"fluidAjaxWidgetResponse.\";a:4:{s:7:\"typeNum\";s:4:\"7076\";s:7:\"config.\";a:4:{s:8:\"no_cache\";s:1:\"1\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:17:\"additionalHeaders\";s:24:\"Content-Type: text/plain\";s:5:\"debug\";s:1:\"0\";}i:10;s:8:\"USER_INT\";s:3:\"10.\";a:1:{s:8:\"userFunc\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\Bootstrap->run\";}}s:7:\"module.\";a:4:{s:20:\"tx_extensionmanager.\";a:2:{s:9:\"settings.\";a:1:{s:13:\"repositoryUid\";s:1:\"1\";}s:9:\"features.\";a:1:{s:20:\"skipDefaultArguments\";s:1:\"0\";}}s:9:\"tx_belog.\";a:2:{s:12:\"persistence.\";a:1:{s:8:\"classes.\";a:3:{s:38:\"TYPO3\\CMS\\Belog\\Domain\\Model\\LogEntry.\";a:1:{s:8:\"mapping.\";a:2:{s:9:\"tableName\";s:7:\"sys_log\";s:8:\"columns.\";a:8:{s:7:\"userid.\";a:1:{s:13:\"mapOnProperty\";s:14:\"backendUserUid\";}s:7:\"recuid.\";a:1:{s:13:\"mapOnProperty\";s:9:\"recordUid\";}s:10:\"tablename.\";a:1:{s:13:\"mapOnProperty\";s:9:\"tableName\";}s:7:\"recpid.\";a:1:{s:13:\"mapOnProperty\";s:9:\"recordPid\";}s:11:\"details_nr.\";a:1:{s:13:\"mapOnProperty\";s:13:\"detailsNumber\";}s:3:\"IP.\";a:1:{s:13:\"mapOnProperty\";s:2:\"ip\";}s:10:\"workspace.\";a:1:{s:13:\"mapOnProperty\";s:12:\"workspaceUid\";}s:6:\"NEWid.\";a:1:{s:13:\"mapOnProperty\";s:5:\"newId\";}}}}s:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Workspace.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:13:\"sys_workspace\";}}s:42:\"TYPO3\\CMS\\Belog\\Domain\\Model\\HistoryEntry.\";a:1:{s:8:\"mapping.\";a:1:{s:9:\"tableName\";s:11:\"sys_history\";}}}}s:9:\"settings.\";a:3:{s:29:\"selectableNumberOfLogEntries.\";a:7:{i:20;s:2:\"20\";i:50;s:2:\"50\";i:100;s:3:\"100\";i:200;s:3:\"200\";i:500;s:3:\"500\";i:1000;s:4:\"1000\";i:1000000;s:3:\"any\";}s:21:\"selectableTimeFrames.\";a:8:{i:0;s:8:\"thisWeek\";i:1;s:8:\"lastWeek\";i:2;s:9:\"last7Days\";i:10;s:9:\"thisMonth\";i:11;s:9:\"lastMonth\";i:12;s:10:\"last31Days\";i:20;s:7:\"noLimit\";i:30;s:11:\"userDefined\";}s:18:\"selectableActions.\";a:7:{i:0;s:3:\"any\";i:1;s:14:\"actionDatabase\";i:2;s:10:\"actionFile\";i:3;s:11:\"actionCache\";i:254;s:14:\"actionSettings\";i:255;s:11:\"actionLogin\";i:-1;s:12:\"actionErrors\";}}}s:10:\"tx_beuser.\";a:2:{s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"0\";}s:9:\"settings.\";a:1:{s:5:\"dummy\";s:3:\"foo\";}}s:11:\"tx_sysnote.\";a:1:{s:5:\"view.\";a:3:{s:14:\"layoutRootPath\";s:39:\"EXT:sys_note/Resources/Private/Layouts/\";s:16:\"templateRootPath\";s:41:\"EXT:sys_note/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:40:\"EXT:sys_note/Resources/Private/Partials/\";}}}s:4:\"page\";s:4:\"PAGE\";s:5:\"page.\";a:4:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:1:{s:5:\"value\";s:1369:\"   <div style=\"width: 800px; margin: 15% auto;\">\n      <div style=\"width: 300px;\">\n        <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 150 42\"><path d=\"M60.2 14.4v27h-3.8v-27h-6.7v-3.3h17.1v3.3h-6.6zm20.2 12.9v14h-3.9v-14l-7.7-16.2h4.1l5.7 12.2 5.7-12.2h3.9l-7.8 16.2zm19.5 2.6h-3.6v11.4h-3.8V11.1s3.7-.3 7.3-.3c6.6 0 8.5 4.1 8.5 9.4 0 6.5-2.3 9.7-8.4 9.7m.4-16c-2.4 0-4.1.3-4.1.3v12.6h4.1c2.4 0 4.1-1.6 4.1-6.3 0-4.4-1-6.6-4.1-6.6m21.5 27.7c-7.1 0-9-5.2-9-15.8 0-10.2 1.9-15.1 9-15.1s9 4.9 9 15.1c.1 10.6-1.8 15.8-9 15.8m0-27.7c-3.9 0-5.2 2.6-5.2 12.1 0 9.3 1.3 12.4 5.2 12.4 3.9 0 5.2-3.1 5.2-12.4 0-9.4-1.3-12.1-5.2-12.1m19.9 27.7c-2.1 0-5.3-.6-5.7-.7v-3.1c1 .2 3.7.7 5.6.7 2.2 0 3.6-1.9 3.6-5.2 0-3.9-.6-6-3.7-6H138V24h3.1c3.5 0 3.7-3.6 3.7-5.3 0-3.4-1.1-4.8-3.2-4.8-1.9 0-4.1.5-5.3.7v-3.2c.5-.1 3-.7 5.2-.7 4.4 0 7 1.9 7 8.3 0 2.9-1 5.5-3.3 6.3 2.6.2 3.8 3.1 3.8 7.3 0 6.6-2.5 9-7.3 9\"/><path fill=\"#FF8700\" d=\"M31.7 28.8c-.6.2-1.1.2-1.7.2-5.2 0-12.9-18.2-12.9-24.3 0-2.2.5-3 1.3-3.6C12 1.9 4.3 4.2 1.9 7.2 1.3 8 1 9.1 1 10.6c0 9.5 10.1 31 17.3 31 3.3 0 8.8-5.4 13.4-12.8M28.4.5c6.6 0 13.2 1.1 13.2 4.8 0 7.6-4.8 16.7-7.2 16.7-4.4 0-9.9-12.1-9.9-18.2C24.5 1 25.6.5 28.4.5\"/></svg>\n      </div>\n      <h4 style=\"font-family: Verdana, Arial, Helvetica, sans-serif;\">Welcome to a default website made with <a href=\"https://typo3.org\">TYPO3</a></h4>\n   </div>\";}i:100;s:7:\"CONTENT\";s:4:\"100.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:8:\"colPos=0\";}}}s:9:\"sitetitle\";s:19:\"UserLike Typo3 Test\";s:6:\"types.\";a:2:{i:7076;s:23:\"fluidAjaxWidgetResponse\";i:0;s:4:\"page\";}}'),(4,'f683606abfaa9c5c73b00cb718af5c2c',2145909600,'a:0:{}'),(5,'a19b8de3be74571d1d878e11e82b0870',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:3:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:2:{s:8:\"options.\";a:1:{s:9:\"leftIcons\";s:1:\"1\";}s:6:\"table.\";a:3:{s:13:\"virtual_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:7:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}s:11:\"pages_root.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:12:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:4:\"ITEM\";s:4:\"200.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:300;s:7:\"DIVIDER\";i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:6:\"items.\";a:18:{i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:4:\"view\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.view\";s:8:\"iconName\";s:21:\"actions-document-view\";s:16:\"displayCondition\";s:16:\"canBeViewed != 0\";s:14:\"callbackAction\";s:8:\"viewPage\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:7:\"disable\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_common.xlf:disable\";s:8:\"iconName\";s:17:\"actions-edit-hide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 0 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:11:\"disablePage\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:6:\"enable\";s:5:\"label\";s:40:\"LLL:EXT:lang/locallang_common.xlf:enable\";s:8:\"iconName\";s:19:\"actions-edit-unhide\";s:16:\"displayCondition\";s:52:\"getRecord|hidden = 1 && canBeDisabledAndEnabled != 0\";s:14:\"callbackAction\";s:10:\"enablePage\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"edit\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.edit\";s:8:\"iconName\";s:17:\"actions-page-open\";s:16:\"displayCondition\";s:16:\"canBeEdited != 0\";s:14:\"callbackAction\";s:18:\"editPageProperties\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"info\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.info\";s:8:\"iconName\";s:21:\"actions-document-info\";s:16:\"displayCondition\";s:16:\"canShowInfo != 0\";s:14:\"callbackAction\";s:13:\"openInfoPopUp\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:7:\"history\";s:5:\"label\";s:42:\"LLL:EXT:lang/locallang_misc.xlf:CM_history\";s:8:\"iconName\";s:29:\"actions-document-history-open\";s:16:\"displayCondition\";s:19:\"canShowHistory != 0\";s:14:\"callbackAction\";s:16:\"openHistoryPopUp\";}i:800;s:7:\"DIVIDER\";i:900;s:7:\"SUBMENU\";s:4:\"900.\";a:22:{s:5:\"label\";s:51:\"LLL:EXT:lang/locallang_core.xlf:cm.copyPasteActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:3:\"new\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.new\";s:8:\"iconName\";s:16:\"actions-page-new\";s:16:\"displayCondition\";s:22:\"canCreateNewPages != 0\";s:14:\"callbackAction\";s:13:\"newPageWizard\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:16:\"actions-edit-cut\";s:16:\"displayCondition\";s:53:\"isInCutMode = 0 && canBeCut != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:13:\"enableCutMode\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:3:\"cut\";s:5:\"label\";s:38:\"LLL:EXT:lang/locallang_core.xlf:cm.cut\";s:8:\"iconName\";s:24:\"actions-edit-cut-release\";s:16:\"displayCondition\";s:32:\"isInCutMode = 1 && canBeCut != 0\";s:14:\"callbackAction\";s:14:\"disableCutMode\";}i:500;s:4:\"ITEM\";s:4:\"500.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:17:\"actions-edit-copy\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 0\";s:14:\"callbackAction\";s:14:\"enableCopyMode\";}i:600;s:4:\"ITEM\";s:4:\"600.\";a:5:{s:4:\"name\";s:4:\"copy\";s:5:\"label\";s:39:\"LLL:EXT:lang/locallang_core.xlf:cm.copy\";s:8:\"iconName\";s:25:\"actions-edit-copy-release\";s:16:\"displayCondition\";s:16:\"isInCopyMode = 1\";s:14:\"callbackAction\";s:15:\"disableCopyMode\";}i:700;s:4:\"ITEM\";s:4:\"700.\";a:5:{s:4:\"name\";s:9:\"pasteInto\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteinto\";s:8:\"iconName\";s:27:\"actions-document-paste-into\";s:16:\"displayCondition\";s:85:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedInto != 0\";s:14:\"callbackAction\";s:13:\"pasteIntoNode\";}i:800;s:4:\"ITEM\";s:4:\"800.\";a:5:{s:4:\"name\";s:10:\"pasteAfter\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_core.xlf:cm.pasteafter\";s:8:\"iconName\";s:28:\"actions-document-paste-after\";s:16:\"displayCondition\";s:86:\"getContextInfo|inCopyMode = 1 || getContextInfo|inCutMode = 1 && canBePastedAfter != 0\";s:14:\"callbackAction\";s:14:\"pasteAfterNode\";}i:900;s:7:\"DIVIDER\";i:1000;s:4:\"ITEM\";s:5:\"1000.\";a:5:{s:4:\"name\";s:6:\"delete\";s:5:\"label\";s:41:\"LLL:EXT:lang/locallang_core.xlf:cm.delete\";s:8:\"iconName\";s:19:\"actions-edit-delete\";s:16:\"displayCondition\";s:38:\"canBeRemoved != 0 && isMountPoint != 1\";s:14:\"callbackAction\";s:10:\"removeNode\";}i:1100;s:7:\"DIVIDER\";i:1200;s:4:\"ITEM\";s:5:\"1200.\";a:4:{s:4:\"name\";s:10:\"clearCache\";s:5:\"label\";s:50:\"LLL:EXT:lang/locallang_core.xlf:labels.clear_cache\";s:8:\"iconName\";s:26:\"actions-system-cache-clear\";s:14:\"callbackAction\";s:16:\"clearCacheOfPage\";}}i:1000;s:7:\"SUBMENU\";s:5:\"1000.\";a:13:{s:5:\"label\";s:48:\"LLL:EXT:lang/locallang_core.xlf:cm.branchActions\";i:100;s:4:\"ITEM\";s:4:\"100.\";a:5:{s:4:\"name\";s:15:\"mountAsTreeroot\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.tempMountPoint\";s:8:\"iconName\";s:26:\"actions-pagetree-mountroot\";s:16:\"displayCondition\";s:49:\"canBeTemporaryMountPoint != 0 && isMountPoint = 0\";s:14:\"callbackAction\";s:15:\"mountAsTreeRoot\";}i:200;s:7:\"DIVIDER\";i:300;s:4:\"ITEM\";s:4:\"300.\";a:5:{s:4:\"name\";s:12:\"expandBranch\";s:5:\"label\";s:47:\"LLL:EXT:lang/locallang_core.xlf:cm.expandBranch\";s:8:\"iconName\";s:23:\"actions-pagetree-expand\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:12:\"expandBranch\";}i:400;s:4:\"ITEM\";s:4:\"400.\";a:5:{s:4:\"name\";s:14:\"collapseBranch\";s:5:\"label\";s:49:\"LLL:EXT:lang/locallang_core.xlf:cm.collapseBranch\";s:8:\"iconName\";s:25:\"actions-pagetree-collapse\";s:16:\"displayCondition\";s:0:\"\";s:14:\"callbackAction\";s:14:\"collapseBranch\";}i:9000;s:7:\"DIVIDER\";i:9100;s:4:\"ITEM\";s:5:\"9100.\";a:4:{s:4:\"name\";s:9:\"exportT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:export\";s:8:\"iconName\";s:27:\"actions-document-export-t3d\";s:14:\"callbackAction\";s:9:\"exportT3d\";}i:9200;s:4:\"ITEM\";s:5:\"9200.\";a:4:{s:4:\"name\";s:9:\"importT3d\";s:5:\"label\";s:62:\"LLL:EXT:impexp/Resources/Private/Language/locallang.xlf:import\";s:8:\"iconName\";s:27:\"actions-document-import-t3d\";s:14:\"callbackAction\";s:9:\"importT3d\";}}}}}}s:14:\"disableDelete.\";a:2:{s:17:\"sys_file_metadata\";s:1:\"1\";s:8:\"sys_file\";s:1:\"1\";}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}}s:6:\"setup.\";a:1:{s:8:\"default.\";a:2:{s:8:\"edit_RTE\";s:1:\"1\";s:8:\"tx_form.\";a:1:{s:19:\"showWizardByDefault\";s:1:\"1\";}}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"a09fc10b56a194a05c50b85af93d8e77\";}'),(6,'b217eabe6a66760fd52f7507ccd01d77',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:4:{s:4:\"mod.\";a:3:{s:9:\"web_list.\";a:5:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:22:\"enableLocalizationView\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:11:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:23:\"pages_language_overlay.\";a:1:{s:6:\"before\";s:5:\"pages\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"sys_domain.\";a:1:{s:5:\"after\";s:12:\"sys_template\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}s:12:\"searchLevel.\";a:1:{s:6:\"items.\";a:6:{i:-1;s:55:\"EXT:lang/locallang_core.xlf:labels.searchLevel.infinite\";i:0;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.0\";i:1;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.1\";i:2;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.2\";i:3;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.3\";i:4;s:48:\"EXT:lang/locallang_core.xlf:labels.searchLevel.4\";}}}s:8:\"wizards.\";a:3:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:4:{s:7:\"common.\";a:3:{s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";s:9:\"elements.\";a:8:{s:7:\"header.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-header\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-textpic\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"textpic\";}}s:6:\"image.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-image\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:8:\"bullets.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-bullets\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-table\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}s:10:\"textmedia.\";a:4:{s:14:\"iconIdentifier\";s:17:\"content-textmedia\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:9:\"textmedia\";}}s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}}s:4:\"show\";s:65:\"header,image,bullets,table,header,textmedia,bullets,table,uploads\";}s:8:\"special.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";s:9:\"elements.\";a:5:{s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}s:5:\"menu.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-menu\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_menus_title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_menus_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"menu\";s:9:\"menu_type\";s:1:\"0\";}}s:5:\"html.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-html\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:4:{s:14:\"iconIdentifier\";s:19:\"content-special-div\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}}s:9:\"shortcut.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-special-shortcut\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:53:\"uploads,menu,html,div,shortcut,menu,html,div,shortcut\";}s:6:\"forms.\";a:3:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";s:9:\"elements.\";a:2:{s:6:\"login.\";a:4:{s:14:\"iconIdentifier\";s:22:\"content-elements-login\";s:5:\"title\";s:92:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_login_title\";s:11:\"description\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_login_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"login\";}}s:9:\"mailform.\";a:4:{s:14:\"iconIdentifier\";s:25:\"content-elements-mailform\";s:5:\"title\";s:91:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_mail_title\";s:11:\"description\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms_mail_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:8:\"mailform\";s:8:\"bodytext\";s:60:\"enctype = multipart/form-data\nmethod = post\nprefix = tx_form\";}}}s:4:\"show\";s:14:\"login,mailform\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:1:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}}s:4:\"show\";s:1:\"*\";}}}s:5:\"form.\";a:2:{s:9:\"defaults.\";a:2:{s:8:\"showTabs\";s:23:\"elements, options, form\";s:5:\"tabs.\";a:3:{s:9:\"elements.\";a:2:{s:14:\"showAccordions\";s:26:\"basic, predefined, content\";s:11:\"accordions.\";a:3:{s:6:\"basic.\";a:1:{s:11:\"showButtons\";s:106:\"textline, textarea, checkbox, radio, select, fileupload, hidden, password, fieldset, submit, reset, button\";}s:11:\"predefined.\";a:1:{s:11:\"showButtons\";s:38:\"name, email, checkboxgroup, radiogroup\";}s:8:\"content.\";a:1:{s:11:\"showButtons\";s:17:\"header, textblock\";}}}s:8:\"options.\";a:2:{s:14:\"showAccordions\";s:64:\"legend, label, attributes, options, validation, filters, various\";s:11:\"accordions.\";a:4:{s:6:\"label.\";a:1:{s:14:\"showProperties\";s:5:\"label\";}s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:490:\"accept, accept-charset, accesskey, action, alt, autocomplete, autofocus, checked, class, cols, contenteditable, contextmenu, dir, draggable, dropzone, disabled, enctype, hidden, height, id, inputmode, label, lang, list, max, maxlength, method, min, minlength, multiple, name, novalidate, pattern, placeholder, readonly, required, rows, selected, selectionDirection, selectionEnd, selectionStart, size, spellcheck, src, step, style, tabindex, text, title, translate, type, value, width, wrap\";}s:11:\"validation.\";a:2:{s:9:\"showRules\";s:196:\"alphabetic, alphanumeric, between, date, digit, email, equals, fileallowedtypes, filemaximumsize, fileminimumsize, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";s:6:\"rules.\";a:20:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:44:\"message, error, showMessage, allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:44:\"message, error, showMessage, allowWhiteSpace\";}s:8:\"between.\";a:1:{s:14:\"showProperties\";s:56:\"message, error, showMessage, minimum, maximum, inclusive\";}s:5:\"date.\";a:1:{s:14:\"showProperties\";s:35:\"message, error, showMessage, format\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:6:\"email.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:7:\"equals.\";a:1:{s:14:\"showProperties\";s:34:\"message, error, showMessage, field\";}s:17:\"fileallowedtypes.\";a:1:{s:14:\"showProperties\";s:34:\"message, error, showMessage, types\";}s:16:\"filemaximumsize.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, maximum\";}s:16:\"fileminimumsize.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, minimum\";}s:6:\"float.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:12:\"greaterthan.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, minimum\";}s:8:\"inarray.\";a:1:{s:14:\"showProperties\";s:42:\"message, error, showMessage, array, strict\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:3:\"ip.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:7:\"length.\";a:1:{s:14:\"showProperties\";s:45:\"message, error, showMessage, minimum, maximum\";}s:9:\"lessthan.\";a:1:{s:14:\"showProperties\";s:36:\"message, error, showMessage, maximum\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:39:\"message, error, showMessage, expression\";}s:9:\"required.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}s:4:\"uri.\";a:1:{s:14:\"showProperties\";s:27:\"message, error, showMessage\";}}}s:10:\"filtering.\";a:2:{s:11:\"showFilters\";s:112:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, stripnewlines, titlecase, trim, uppercase\";s:8:\"filters.\";a:11:{s:11:\"alphabetic.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:13:\"alphanumeric.\";a:1:{s:14:\"showProperties\";s:15:\"allowWhiteSpace\";}s:9:\"currency.\";a:1:{s:14:\"showProperties\";s:31:\"decimalPoint, thousandSeparator\";}s:6:\"digit.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:8:\"integer.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"lowercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:7:\"regexp.\";a:1:{s:14:\"showProperties\";s:10:\"expression\";}s:14:\"stripnewlines.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:10:\"titlecase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}s:5:\"trim.\";a:1:{s:14:\"showProperties\";s:13:\"characterList\";}s:10:\"uppercase.\";a:1:{s:14:\"showProperties\";s:0:\"\";}}}}}s:5:\"form.\";a:2:{s:14:\"showAccordions\";s:44:\"behaviour, prefix, attributes, postProcessor\";s:11:\"accordions.\";a:1:{s:14:\"postProcessor.\";a:2:{s:18:\"showPostProcessors\";s:14:\"mail, redirect\";s:15:\"postProcessors.\";a:2:{s:5:\"mail.\";a:1:{s:14:\"showProperties\";s:36:\"recipientEmail, senderEmail, subject\";}s:9:\"redirect.\";a:1:{s:14:\"showProperties\";s:11:\"destination\";}}}}}}}s:9:\"elements.\";a:19:{s:5:\"form.\";a:1:{s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:79:\"accept, action, dir, enctype, lang, method, novalidate, class, id, style, title\";}}}s:7:\"button.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:22:\"name, value, class, id\";}}}s:9:\"checkbox.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, value, class, id, checked, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:9:\"fieldset.\";a:2:{s:14:\"showAccordions\";s:18:\"legend, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:9:\"class, id\";}}}s:11:\"fileupload.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:25:\"name, class, id, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:60:\"required, fileallowedtypes, filemaximumsize, fileminimumsize\";}}}s:7:\"hidden.\";a:2:{s:14:\"showAccordions\";s:10:\"attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:11:\"name, value\";}}}s:9:\"password.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:52:\"name, placeholder, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:16:\"required, equals\";}}}s:6:\"radio.\";a:2:{s:14:\"showAccordions\";s:29:\"label, attributes, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, value, class, id, checked, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:6:\"reset.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:14:\"value,class,id\";}}}s:7:\"select.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, options, validation\";s:11:\"accordions.\";a:2:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:41:\"name, size, class, id, multiple, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:7:\"submit.\";a:2:{s:14:\"showAccordions\";s:17:\"label, attributes\";s:11:\"accordions.\";a:1:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:14:\"value,class,id\";}}}s:9:\"textarea.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:56:\"name, placeholder, cols, rows, class, id, required, text\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:86:\"alphabetic, alphanumeric, lowercase, regexp, stripnewlines, titlecase, trim, uppercase\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:50:\"alphabetic, alphanumeric, length, regexp, required\";}}}s:9:\"textline.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:58:\"name, placeholder, type, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:5:\"name.\";a:1:{s:14:\"showAccordions\";s:15:\"legend, various\";}s:6:\"email.\";a:2:{s:14:\"showAccordions\";s:38:\"label, attributes, validation, filters\";s:11:\"accordions.\";a:3:{s:11:\"attributes.\";a:1:{s:14:\"showProperties\";s:58:\"name, placeholder, type, class, id, autocomplete, required\";}s:11:\"validation.\";a:1:{s:9:\"showRules\";s:144:\"alphabetic, alphanumeric, between, date, digit, email, equals, float, greaterthan, inarray, integer, ip, length, lessthan, regexp, required, uri\";}s:10:\"filtering.\";a:1:{s:11:\"showFilters\";s:97:\"alphabetic, alphanumeric, currency, digit, integer, lowercase, regexp, titlecase, trim, uppercase\";}}}s:14:\"checkboxgroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:11:\"radiogroup.\";a:2:{s:14:\"showAccordions\";s:36:\"legend, options, various, validation\";s:11:\"accordions.\";a:1:{s:11:\"validation.\";a:1:{s:9:\"showRules\";s:8:\"required\";}}}s:7:\"header.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}s:10:\"textblock.\";a:1:{s:14:\"showAccordions\";s:7:\"various\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:11:{s:5:\"1280.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:5:\"1024.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"960.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"800.\";a:1:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";}s:4:\"768.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"600.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:tablet\";}s:4:\"640.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"480.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"400.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"360.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}s:4:\"300.\";a:1:{s:5:\"label\";s:64:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:mobile\";}}}}s:4:\"RTE.\";a:4:{s:8:\"default.\";a:17:{s:5:\"proc.\";a:12:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:16:\"allowTagsOutside\";s:74:\"address, article, aside, blockquote, footer, header, hr, nav, section, div\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:75:\"class, align, id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:1:{s:5:\"unset\";s:1:\"1\";}}s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:5:\"class\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:3:\"FE.\";a:17:{s:5:\"proc.\";a:12:{s:12:\"overruleMode\";s:6:\"ts_css\";s:21:\"dontConvBRtoParagraph\";s:1:\"1\";s:16:\"allowTagsOutside\";s:74:\"address, article, aside, blockquote, footer, header, hr, nav, section, div\";s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:15:\"keepPDIVattribs\";s:75:\"class, align, id, title, dir, lang, xml:lang, itemscope, itemtype, itemprop\";s:26:\"transformBoldAndItalicTags\";s:1:\"1\";s:18:\"entryHTMLparser_db\";s:1:\"1\";s:19:\"entryHTMLparser_db.\";a:5:{s:9:\"allowTags\";s:387:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer,header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, samp, sdfield, section, small,span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:16:\"htmlSpecialChars\";s:1:\"0\";s:5:\"tags.\";a:28:{s:4:\"img.\";a:2:{s:14:\"allowedAttribs\";s:1:\"0\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:5:\"span.\";a:3:{s:10:\"fixAttrib.\";a:1:{s:6:\"style.\";a:1:{s:5:\"unset\";s:1:\"1\";}}s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:15:\"rmTagIfNoAttrib\";s:1:\"1\";}s:2:\"p.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:4:\"div.\";a:2:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";s:10:\"fixAttrib.\";a:1:{s:6:\"align.\";a:1:{s:5:\"unset\";s:1:\"1\";}}}s:3:\"hr.\";a:1:{s:14:\"allowedAttribs\";s:5:\"class\";}s:2:\"b.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"bdo.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"big.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:11:\"blockquote.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"cite.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"code.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"del.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"dfn.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"em.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"i.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"ins.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"kbd.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"label.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"q.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:5:\"samp.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:6:\"small.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strike.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:7:\"strong.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sub.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"sup.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:3:\"tt.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:2:\"u.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}s:4:\"var.\";a:1:{s:14:\"allowedAttribs\";s:68:\"id, title, dir, lang, xml:lang, class, itemscope, itemtype, itemprop\";}}s:10:\"removeTags\";s:63:\"center, font, link, meta, o:p, sdfield, strike, style, title, u\";s:18:\"keepNonMatchedTags\";s:7:\"protect\";}s:14:\"HTMLparser_db.\";a:1:{s:8:\"noAttrib\";s:2:\"br\";}s:17:\"exitHTMLparser_db\";s:1:\"1\";s:18:\"exitHTMLparser_db.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"0\";}s:14:\"allowedClasses\";s:301:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail,align-left, align-center, align-right, align-justify,csc-frame-frame1, csc-frame-frame2,component-items, action-items,component-items-ordered, action-items-ordered,important, name-of-person, detail,indent\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"0\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}s:11:\"hideButtons\";s:202:\"chMode, blockstyle, textstyle, underline, strikethrough, subscript, superscript, lefttoright, righttoleft, left, center, right, justifyfull, table, inserttag, findreplace, removeformat, copy, cut, paste\";}s:15:\"enableWordClean\";s:1:\"1\";s:16:\"removeTrailingBR\";s:1:\"1\";s:14:\"removeComments\";s:1:\"1\";s:10:\"removeTags\";s:37:\"center, font, o:p, sdfield, strike, u\";s:21:\"removeTagsAndContents\";s:32:\"link, meta, script, style, title\";s:11:\"showButtons\";s:493:\"blockstylelabel, blockstyle, textstylelabel, textstyle,formatblock, bold, italic, subscript, superscript,orderedlist, unorderedlist, outdent, indent, textindicator,insertcharacter, link, table, findreplace, chMode, removeformat, undo, redo, about,toggleborders, tableproperties,rowproperties, rowinsertabove, rowinsertunder, rowdelete, rowsplit,columninsertbefore, columninsertafter, columndelete, columnsplit,cellproperties, cellinsertbefore, cellinsertafter, celldelete, cellsplit, cellmerge\";s:23:\"keepButtonGroupTogether\";s:1:\"1\";s:13:\"showStatusBar\";s:1:\"1\";s:8:\"buttons.\";a:7:{s:12:\"formatblock.\";a:1:{s:11:\"removeItems\";s:11:\"pre,address\";}s:11:\"blockstyle.\";a:1:{s:5:\"tags.\";a:3:{s:4:\"div.\";a:1:{s:14:\"allowedClasses\";s:72:\"align-left, align-center, align-right,csc-frame-frame1, csc-frame-frame2\";}s:6:\"table.\";a:1:{s:14:\"allowedClasses\";s:34:\"csc-frame-frame1, csc-frame-frame2\";}s:3:\"td.\";a:1:{s:14:\"allowedClasses\";s:37:\"align-left, align-center, align-right\";}}}s:10:\"textstyle.\";a:1:{s:5:\"tags.\";a:1:{s:5:\"span.\";a:1:{s:14:\"allowedClasses\";s:33:\"important, name-of-person, detail\";}}}s:5:\"link.\";a:5:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:14:\"allowedClasses\";s:96:\"external-link, external-link-new-window, internal-link, internal-link-new-window, download, mail\";}}s:5:\"page.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:13:\"internal-link\";}}}s:4:\"url.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:24:\"external-link-new-window\";}}}s:5:\"file.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:8:\"download\";}}}s:5:\"mail.\";a:1:{s:11:\"properties.\";a:1:{s:6:\"class.\";a:1:{s:7:\"default\";s:4:\"mail\";}}}}s:14:\"toggleborders.\";a:1:{s:18:\"setOnTableCreation\";s:1:\"1\";}s:5:\"bold.\";a:1:{s:6:\"hotKey\";s:1:\"b\";}s:7:\"italic.\";a:1:{s:6:\"hotKey\";s:1:\"i\";}}s:41:\"disableAlignmentFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableSpacingFieldsetInTableOperations\";s:1:\"1\";s:37:\"disableColorFieldsetInTableOperations\";s:1:\"1\";s:38:\"disableLayoutFieldsetInTableOperations\";s:1:\"1\";s:39:\"disableBordersFieldsetInTableOperations\";s:1:\"1\";s:7:\"schema.\";a:1:{s:8:\"sources.\";a:1:{s:9:\"schemaOrg\";s:63:\"EXT:rtehtmlarea/extensions/MicrodataSchema/res/schemaOrgAll.rdf\";}}}s:7:\"config.\";a:1:{s:11:\"tt_content.\";a:1:{s:9:\"bodytext.\";a:2:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}s:6:\"types.\";a:2:{s:5:\"text.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}s:8:\"textpic.\";a:1:{s:5:\"proc.\";a:1:{s:12:\"overruleMode\";s:6:\"ts_css\";}}}}}}s:8:\"classes.\";a:12:{s:11:\"align-left.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyleft\";s:5:\"value\";s:17:\"text-align: left;\";}s:13:\"align-center.\";a:2:{s:4:\"name\";s:83:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifycenter\";s:5:\"value\";s:19:\"text-align: center;\";}s:12:\"align-right.\";a:2:{s:4:\"name\";s:82:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_tooltips.xlf:justifyright\";s:5:\"value\";s:18:\"text-align: right;\";}s:17:\"csc-frame-frame1.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame1\";s:5:\"value\";s:53:\"background-color: #EDEBF1; border: 1px solid #333333;\";}s:17:\"csc-frame-frame2.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:frame-frame2\";s:5:\"value\";s:53:\"background-color: #F5FFAA; border: 1px solid #333333;\";}s:10:\"important.\";a:2:{s:4:\"name\";s:81:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:important\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:15:\"name-of-person.\";a:2:{s:4:\"name\";s:86:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:name-of-person\";s:5:\"value\";s:15:\"color: #10007B;\";}s:7:\"detail.\";a:2:{s:4:\"name\";s:78:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:detail\";s:5:\"value\";s:15:\"color: #186900;\";}s:16:\"component-items.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:13:\"action-items.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}s:24:\"component-items-ordered.\";a:2:{s:4:\"name\";s:87:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:component-items\";s:5:\"value\";s:15:\"color: #186900;\";}s:21:\"action-items-ordered.\";a:2:{s:4:\"name\";s:84:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_contentcss.xlf:action-items\";s:5:\"value\";s:15:\"color: #8A0020;\";}}s:14:\"classesAnchor.\";a:6:{s:13:\"externalLink.\";a:3:{s:5:\"class\";s:13:\"external-link\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_titleText\";}s:24:\"externalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"external-link-new-window\";s:4:\"type\";s:3:\"url\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:external_link_new_window_titleText\";}s:13:\"internalLink.\";a:3:{s:5:\"class\";s:13:\"internal-link\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:103:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_titleText\";}s:24:\"internalLinkInNewWindow.\";a:3:{s:5:\"class\";s:24:\"internal-link-new-window\";s:4:\"type\";s:4:\"page\";s:9:\"titleText\";s:114:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:internal_link_new_window_titleText\";}s:9:\"download.\";a:3:{s:5:\"class\";s:8:\"download\";s:4:\"type\";s:4:\"file\";s:9:\"titleText\";s:98:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:download_titleText\";}s:5:\"mail.\";a:3:{s:5:\"class\";s:4:\"mail\";s:4:\"type\";s:4:\"mail\";s:9:\"titleText\";s:94:\"LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang_accessibilityicons.xlf:mail_titleText\";}}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:1:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}}s:8:\"TCEMAIN.\";a:1:{s:12:\"linkHandler.\";a:5:{s:5:\"page.\";a:2:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\PageLinkHandler\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_browse_links.xlf:page\";}s:5:\"file.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FileLinkHandler\";s:5:\"label\";s:44:\"LLL:EXT:lang/locallang_browse_links.xlf:file\";s:12:\"displayAfter\";s:4:\"page\";s:9:\"scanAfter\";s:4:\"page\";}s:7:\"folder.\";a:4:{s:7:\"handler\";s:50:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FolderLinkHandler\";s:5:\"label\";s:46:\"LLL:EXT:lang/locallang_browse_links.xlf:folder\";s:12:\"displayAfter\";s:4:\"file\";s:9:\"scanAfter\";s:4:\"file\";}s:4:\"url.\";a:4:{s:7:\"handler\";s:47:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\UrlLinkHandler\";s:5:\"label\";s:46:\"LLL:EXT:lang/locallang_browse_links.xlf:extUrl\";s:12:\"displayAfter\";s:6:\"folder\";s:9:\"scanAfter\";s:4:\"mail\";}s:5:\"mail.\";a:3:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\MailLinkHandler\";s:5:\"label\";s:45:\"LLL:EXT:lang/locallang_browse_links.xlf:email\";s:12:\"displayAfter\";s:3:\"url\";}}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"8a99f743d3bb4c2d871bda6dba43029c\";}');
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_hash_tags` VALUES (1,'576595e3254453bd2c9fcb290b77e434','ident_userTS_TSconfig'),(2,'0e9c3034f9460b5e70a7abc53f713cfb','ident_PAGES_TSconfig'),(3,'70366f8a9440a6e5e095e8ccce045a73','ident_TS_TEMPLATE'),(4,'f683606abfaa9c5c73b00cb718af5c2c','ident_TMPL_CONDITIONS_ALL'),(5,'a19b8de3be74571d1d878e11e82b0870','ident_userTS_TSconfig'),(6,'b217eabe6a66760fd52f7507ccd01d77','ident_PAGES_TSconfig');
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline` VALUES (2,'1__0_0_0',1475269584,'a:1:{i:0;a:24:{s:3:\"pid\";i:0;s:3:\"uid\";i:1;s:9:\"t3ver_oid\";i:0;s:10:\"t3ver_wsid\";i:0;s:11:\"t3ver_state\";i:0;s:5:\"title\";s:4:\"Home\";s:5:\"alias\";s:0:\"\";s:9:\"nav_title\";s:0:\"\";s:5:\"media\";s:0:\"\";s:6:\"layout\";i:0;s:6:\"hidden\";i:0;s:9:\"starttime\";i:0;s:7:\"endtime\";i:0;s:8:\"fe_group\";s:1:\"0\";s:16:\"extendToSubpages\";i:0;s:7:\"doktype\";i:1;s:8:\"TSconfig\";N;s:17:\"tsconfig_includes\";N;s:11:\"is_siteroot\";i:1;s:9:\"mount_pid\";i:0;s:12:\"mount_pid_ol\";i:0;s:13:\"fe_login_mode\";i:0;s:25:\"backend_layout_next_level\";s:0:\"\";s:10:\"categories\";s:0:\"\";}}');
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_rootline_tags` VALUES (2,'1__0_0_0','pageId_1');
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
INSERT INTO `cf_extbase_object` VALUES (1,'3bcc835c5d8d7866a0ce2dc41464b9a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(2,'48ee39591354d5b031b745485de55720',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(3,'dbac534c00a92e4f7b105be73fba4655',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(4,'698f3592af2e452d429bd1e9cf4e7f28',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Configuration\\BackendConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:20:\"injectQueryGenerator\";s:38:\"TYPO3\\CMS\\Core\\Database\\QueryGenerator\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectTypoScriptService\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(5,'a83f638ccc959a3a47ea70bd7ad866a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Core\\Database\\QueryGenerator\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(6,'d9a9ae73d3607000daec9828154ef861',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(7,'ffab3d90bc879cb5f9bc7dad6eeca0fe',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Request\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:17:\"injectHashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(8,'b50521e5e180c67942dcfb9564f33b28',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(9,'4162aee1fc2f8a1059d3c19ec4daa1c7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Routing\\UriBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(10,'161ec4a31f0f6bbc932fcc1ae6d48887',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(11,'6c06740645171b100a0605c1774e691c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\ControllerContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:25:\"injectFlashMessageService\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(12,'fcd3672a290f64f6875bb8d84ef8362b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessageService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(13,'e8d805b35474fd740277e82b2633dfdc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\Core\\Rendering\\RenderingContext\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:4:\"view\";s:10:\"dependency\";s:35:\"TYPO3Fluid\\Fluid\\View\\ViewInterface\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:33:\"injectViewHelperVariableContainer\";s:60:\"TYPO3Fluid\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(14,'371048d41cb7b30445109b634ee18f29',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:34:\"TYPO3\\CMS\\Fluid\\View\\TemplatePaths\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:18:\"packageNameOrArray\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(15,'260641975c15b4431e7c2e054aa47a43',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\Core\\ViewHelper\\ViewHelperResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(16,'2f3412020fd44a4207532a873303335f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\Core\\Variables\\CmsVariableProvider\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:9:\"variables\";s:12:\"defaultValue\";a:0:{}}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(17,'dbdda0e7f48585dbbb433d68651c566c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:75:\"TYPO3\\CMS\\Fluid\\Core\\Parser\\PreProcessor\\XmlnsNamespaceTemplatePreProcessor\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(18,'90c4d1fca9b8b368d86a01496d8b1d91',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3Fluid\\Fluid\\Core\\ViewHelper\\ViewHelperVariableContainer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(19,'13a487475f91cffd2dfec760d195b7f7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3Fluid\\Fluid\\ViewHelpers\\IfViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(20,'7570793615e57f1e4d5a532559c3c572',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3Fluid\\Fluid\\ViewHelpers\\ThenViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(21,'b91d7d1131833fa9be06d228a776ff64',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"TYPO3Fluid\\Fluid\\ViewHelpers\\Format\\RawViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(22,'e3d605d1941465d7ecd7444b70f4e754',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3Fluid\\Fluid\\ViewHelpers\\RenderViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(23,'0a2c329eb2c8346be16fcb86e5609437',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\FlashMessagesViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(24,'33557becb5fd776e48ac1a4e8877c048',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(25,'39c6b5b4fd0c110926d6fc9d5179f78f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3Fluid\\Fluid\\ViewHelpers\\ForViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(26,'3460f0111910bdbec763a839d29eaf53',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\TranslateViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(27,'cd8f2845eed2f811525d1188c59c2c7e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3Fluid\\Fluid\\ViewHelpers\\CountViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(28,'f73b3e6b000be85545d970a0625389e3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:43:\"TYPO3Fluid\\Fluid\\ViewHelpers\\ElseViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(29,'78915e2e1fdd639df1175e175e3b005a',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Format\\Nl2brViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(30,'f4161c7b5ff989cc5937476177f76d76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(31,'0d117d62cabc9997e0760b23d053b5e1',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:52:\"TYPO3\\CMS\\Backend\\Security\\CategoryPermissionsAspect\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:25:\"backendUserAuthentication\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(32,'40fc6eb24ec4cac8fd87a969e75c464f',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\Be\\InfoboxViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(33,'a6993d6ce1dd11daab5560826404f359',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Extbase\\Configuration\\FrontendConfigurationManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:21:\"injectFlexFormService\";s:41:\"TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectTypoScriptService\";s:43:\"TYPO3\\CMS\\Extbase\\Service\\TypoScriptService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(34,'7e27373c7241e8ff24a8f03a1b8705d9',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:41:\"TYPO3\\CMS\\Extbase\\Service\\FlexFormService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(35,'2558c2aee7bec9dfe7704d0f28aaeb51',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3Fluid\\Fluid\\ViewHelpers\\LayoutViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(36,'35e605c9ee05772e898ba5a5f4c69031',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3Fluid\\Fluid\\ViewHelpers\\SectionViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(37,'ce1dc7d680fd675ad944884e40914d8c',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CObjectViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:27:\"injectContentObjectRenderer\";s:54:\"TYPO3\\CMS\\Frontend\\ContentObject\\ContentObjectRenderer\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(38,'5d1c7ae05cde41dee2bff5cd36cc4281',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:54:\"TYPO3\\CMS\\Frontend\\ContentObject\\ContentObjectRenderer\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:28:\"typoScriptFrontendController\";s:10:\"dependency\";s:58:\"TYPO3\\CMS\\Frontend\\Controller\\TypoScriptFrontendController\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(39,'1c4ccf3b1c0e8b02b14c2468bd494521',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:56:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\PersistenceManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:18:\"injectQueryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:13:\"injectBackend\";s:54:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\BackendInterface\";s:24:\"injectPersistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(40,'a0b1e155c87dc5e77879a87871025d81',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:50:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(41,'07a1866183ac6e1ac9234808c4928fb3',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:16:\"injectQomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:24:\"injectPersistenceSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:20:\"injectDataMapFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:18:\"injectQueryFactory\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\QueryFactoryInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(42,'7b6eafa37459ae90810443b105992a61',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(43,'b2d13edc404dad53fde6e8ed67946954',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(44,'2c1c56e551397ae5c80783e1cf2c3eda',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:59:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapFactory\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:1;}'),(45,'993ae131d5bac2569b6e9d01b5777ed7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Backend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:20:\"configurationManager\";s:10:\"dependency\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:6:{s:13:\"injectSession\";s:45:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Session\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:16:\"injectQomFactory\";s:65:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Qom\\QueryObjectModelFactory\";s:20:\"injectStorageBackend\";s:62:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\BackendInterface\";s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(46,'01ab75a69565e18f3f821b42318e0ff1',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:60:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbBackend\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:5:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";s:17:\"injectQueryParser\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbQueryParser\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(47,'d3b9a967a6af09d391d44dc0c1d5c4ff',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:18:\"injectCacheManager\";s:33:\"TYPO3\\CMS\\Core\\Cache\\CacheManager\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(48,'29afe09069975b1208d85be2e28fe9e7',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:64:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Storage\\Typo3DbQueryParser\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:16:\"injectDataMapper\";s:55:\"TYPO3\\CMS\\Extbase\\Persistence\\Generic\\Mapper\\DataMapper\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(49,'81de039aca085362d0579722eb57e000',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:44:\"TYPO3\\CMS\\Extbase\\Mvc\\RequestHandlerResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:3:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(50,'1a281c1a4f3a0a8df38130ed92e539a8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\FrontendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:6:{s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(51,'3ed752e7ea60eee5026a21c8b9990a63',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:2:{s:4:\"name\";s:13:\"objectManager\";s:10:\"dependency\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(52,'97da3abbad45298c6665a64c93a84160',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(53,'a4a0eb9689419bdf7e2be55e876763a2',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:47:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\BackendRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(54,'8b1d5067ef201f9397a919b581c2febb',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(55,'a85a0e954caaa9232e9c899c517e8c23',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\RequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:4:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:20:\"injectCommandManager\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(56,'73785a4df7cf6265f746a280a022f98d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Cli\\CommandManager\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(57,'02602cfbe105200536e162488f3b34d8',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestHandler\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:20:\"injectRequestBuilder\";s:40:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\RequestBuilder\";s:26:\"injectWidgetRequestBuilder\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:16:\"injectDispatcher\";s:32:\"TYPO3\\CMS\\Extbase\\Mvc\\Dispatcher\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(58,'17dd4738af3c1aa88da935f7c7461a76',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(59,'38da5993ff181e4a0878ed613360749b',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:48:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\WidgetRequestBuilder\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:5:{s:29:\"injectAjaxWidgetContextHolder\";s:51:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\AjaxWidgetContextHolder\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:22:\"injectExtensionService\";s:42:\"TYPO3\\CMS\\Extbase\\Service\\ExtensionService\";s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(60,'65aa369e3ef7755812afb4329fd61d4d',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:34:\"TYPO3\\CMS\\Extbase\\Mvc\\Web\\Response\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:24:\"injectEnvironmentService\";s:44:\"TYPO3\\CMS\\Extbase\\Service\\EnvironmentService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(61,'a57d22ab974a9c7165a6c9783010f08e',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:49:\"UserlikeChat\\Userlike\\Controller\\WidgetController\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:7:{s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";s:18:\"injectCacheService\";s:38:\"TYPO3\\CMS\\Extbase\\Service\\CacheService\";s:44:\"injectMvcPropertyMappingConfigurationService\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:26:\"injectSignalSlotDispatcher\";s:39:\"TYPO3\\CMS\\Extbase\\SignalSlot\\Dispatcher\";s:23:\"injectValidatorResolver\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:26:\"injectConfigurationManager\";s:61:\"TYPO3\\CMS\\Extbase\\Configuration\\ConfigurationManagerInterface\";s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(62,'71dc71d2ae1928473ef30d8028432258',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:71:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\MvcPropertyMappingConfigurationService\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:17:\"injectHashService\";s:51:\"TYPO3\\CMS\\Extbase\\Security\\Cryptography\\HashService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(63,'c3680131daaff065daf3097af71f1980',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:46:\"TYPO3\\CMS\\Extbase\\Validation\\ValidatorResolver\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:1;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(64,'52b735058f3ab10579fbc382b26f85ac',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:42:\"TYPO3\\CMS\\Extbase\\Mvc\\Controller\\Arguments\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:1:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(65,'b7435caf112d881773a587972170ccea',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:33:\"TYPO3\\CMS\\Fluid\\View\\TemplateView\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:1:{i:0;a:3:{s:4:\"name\";s:7:\"context\";s:10:\"dependency\";s:57:\"TYPO3Fluid\\Fluid\\Core\\Rendering\\RenderingContextInterface\";s:12:\"defaultValue\";N;}}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(66,'cc1e53124179367008735970e2c298fc',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:39:\"TYPO3\\CMS\\Extbase\\Mvc\\View\\NotFoundView\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:0:{}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}'),(67,'3dea605d5d08148ba009a2a9414ed8ad',2145909600,'O:44:\"TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\":6:{s:55:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0className\";s:63:\"TYPO3\\CMS\\FluidStyledContent\\ViewHelpers\\Link\\SectionViewHelper\";s:66:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0constructorArguments\";a:0:{}s:59:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectMethods\";a:2:{s:19:\"injectObjectManager\";s:47:\"TYPO3\\CMS\\Extbase\\Object\\ObjectManagerInterface\";s:23:\"injectReflectionService\";s:46:\"TYPO3\\CMS\\Extbase\\Reflection\\ReflectionService\";}s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0injectProperties\";a:0:{}s:57:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isSingleton\";b:0;s:62:\"\0TYPO3\\CMS\\Extbase\\Object\\Container\\ClassInfo\0isInitializeable\";b:0;}');
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
INSERT INTO `cf_extbase_reflection` VALUES (8,'ReflectionData_Userlike',2145909600,'a:8:{s:19:\"reflectedClassNames\";a:0:{}s:18:\"classPropertyNames\";a:0:{}s:15:\"classTagsValues\";a:0:{}s:16:\"methodTagsValues\";a:0:{}s:16:\"methodParameters\";a:2:{s:45:\"TYPO3\\CMS\\Fluid\\ViewHelpers\\CObjectViewHelper\";a:1:{s:6:\"render\";a:0:{}}s:49:\"UserlikeChat\\Userlike\\Controller\\WidgetController\";a:3:{s:12:\"widgetAction\";a:0:{}s:16:\"initializeAction\";a:0:{}s:11:\"errorAction\";a:0:{}}}s:18:\"propertyTagsValues\";a:0:{}s:13:\"taggedClasses\";a:0:{}s:13:\"classSchemata\";a:0:{}}');
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` DISABLE KEYS */;
INSERT INTO `cf_extbase_typo3dbbackend_queries` VALUES (1,'af4fbeb522ead2e9380f20a722ad45f7',2145909600,'a:10:{s:8:\"keywords\";a:0:{}s:6:\"tables\";a:1:{s:43:\"tx_extensionmanager_domain_model_repository\";s:43:\"tx_extensionmanager_domain_model_repository\";}s:6:\"unions\";a:0:{}s:6:\"fields\";a:1:{s:43:\"tx_extensionmanager_domain_model_repository\";s:45:\"tx_extensionmanager_domain_model_repository.*\";}s:5:\"where\";a:1:{i:0;s:54:\"tx_extensionmanager_domain_model_repository.uid = :uid\";}s:21:\"additionalWhereClause\";a:0:{}s:9:\"orderings\";a:0:{}s:5:\"limit\";i:1;s:6:\"offset\";N;s:13:\"tableAliasMap\";a:1:{s:43:\"tx_extensionmanager_domain_model_repository\";s:43:\"tx_extensionmanager_domain_model_repository\";}}'),(2,'6a7f2bb5c7e147f631d79cde676c0991',2145909600,'a:10:{s:8:\"keywords\";a:0:{}s:6:\"tables\";a:1:{s:42:\"tx_extensionmanager_domain_model_extension\";s:42:\"tx_extensionmanager_domain_model_extension\";}s:6:\"unions\";a:0:{}s:6:\"fields\";a:1:{s:42:\"tx_extensionmanager_domain_model_extension\";s:44:\"tx_extensionmanager_domain_model_extension.*\";}s:5:\"where\";a:5:{i:0;s:1:\"(\";i:1;s:76:\"tx_extensionmanager_domain_model_extension.extension_key = :AND0extensionKey\";i:2;s:5:\" AND \";i:3;s:65:\"tx_extensionmanager_domain_model_extension.version = :AND1version\";i:4;s:1:\")\";}s:21:\"additionalWhereClause\";a:0:{}s:9:\"orderings\";a:0:{}s:5:\"limit\";i:1;s:6:\"offset\";N;s:13:\"tableAliasMap\";a:1:{s:42:\"tx_extensionmanager_domain_model_extension\";s:42:\"tx_extensionmanager_domain_model_extension\";}}'),(3,'a266f1cadf33cc221f896e762393d6c8',2145909600,'a:10:{s:8:\"keywords\";a:0:{}s:6:\"tables\";a:1:{s:42:\"tx_extensionmanager_domain_model_extension\";s:42:\"tx_extensionmanager_domain_model_extension\";}s:6:\"unions\";a:0:{}s:6:\"fields\";a:1:{s:42:\"tx_extensionmanager_domain_model_extension\";s:44:\"tx_extensionmanager_domain_model_extension.*\";}s:5:\"where\";a:5:{i:0;s:1:\"(\";i:1;s:76:\"tx_extensionmanager_domain_model_extension.extension_key = :AND0extensionKey\";i:2;s:5:\" AND \";i:3;s:75:\"tx_extensionmanager_domain_model_extension.review_state >= :AND1reviewState\";i:4;s:1:\")\";}s:21:\"additionalWhereClause\";a:0:{}s:9:\"orderings\";a:1:{i:0;s:63:\"tx_extensionmanager_domain_model_extension.integer_version DESC\";}s:5:\"limit\";i:1;s:6:\"offset\";N;s:13:\"tableAliasMap\";a:1:{s:42:\"tx_extensionmanager_domain_model_extension\";s:42:\"tx_extensionmanager_domain_model_extension\";}}');
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `subgroup` tinytext,
  `TSconfig` text,
  `felogin_redirectPid` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(160) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext,
  `TSconfig` text,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
  `module` varchar(255) NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1449993386,0,0,1,1,32,32,1,0,1449993386,1,0,'Home',1,NULL,1,0,0,'',0,0,0,0,0,0,'0','',0,0,'',0,0,NULL,0,'',0,NULL,0,1472677583,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `description` text,
  `abstract` text,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `url` text,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext NOT NULL,
  `description` text,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) NOT NULL DEFAULT '',
  `redirectTo` varchar(255) NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text,
  `identifier_hash` char(40) NOT NULL DEFAULT '',
  `folder_hash` char(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext,
  `sha1` char(40) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text,
  `recursive` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `alternative` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext,
  `configuration` text,
  `configurationsha1` char(40) NOT NULL DEFAULT '',
  `originalfilesha1` char(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` char(10) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) NOT NULL DEFAULT '',
  `title` tinytext,
  `description` text,
  `alternative` tinytext,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `downloadname` tinytext,
  `crop` varchar(4000) NOT NULL DEFAULT '',
  `autoplay` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `driver` tinytext,
  `configuration` text,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `auto_extract_metadata` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1449993421,1449993421,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `path` varchar(120) NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `read_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext,
  `fieldlist` text,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES (1,0,8,'a:2:{s:9:\"oldRecord\";a:2:{s:11:\"pi_flexform\";N;s:15:\"l18n_diffsource\";s:0:\"\";}s:9:\"newRecord\";a:2:{s:11:\"pi_flexform\";s:400:\"<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.secret\">\n                    <value index=\"vDEF\">6b5bb524d8d9b7fe84a9eac6f8c2b47149c7ea6782041e7a0a47226901efbaff</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>\";s:15:\"l18n_diffsource\";s:496:\"a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:10:\"select_key\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}\";}}','pi_flexform,l18n_diffsource',1,'tt_content',1472677029,NULL,0);
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `language_isocode` varchar(2) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
INSERT INTO `sys_lockedrecords` VALUES (6,1,1472677583,'tt_content',1,1,'admin',0);
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) NOT NULL DEFAULT '0',
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(30) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `data` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1449993397,255,1,'192.168.100.1','a:3:{i:0;s:5:\"admin\";i:1;s:13:\"192.168.100.1\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(2,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1472667986,255,1,'192.168.100.254','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"192.168.100.254\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(3,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1472668019,3,0,'192.168.100.254','a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(4,0,1,1,0,'',0,0,'User %s logged in from %s (%s)',1472675207,255,1,'192.168.100.254','a:3:{i:0;s:5:\"admin\";i:1;s:15:\"192.168.100.254\";i:2;s:0:\"\";}',-1,-99,'','',0,'',0,NULL,NULL),(5,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1472676954,3,0,'192.168.100.254','a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(6,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1472676979,3,0,'192.168.100.254','a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'',0,NULL,NULL),(7,0,1,1,1,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1472677009,1,10,'192.168.100.254','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW57c744868407c374454090','',0,'',0,NULL,NULL),(8,0,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1472677030,1,10,'192.168.100.254','a:2:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";}',1,0,'','',0,'',0,NULL,NULL),(9,0,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1472677033,1,10,'192.168.100.254','a:2:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";}',1,0,'','',0,'',0,NULL,NULL),(10,0,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1472677037,1,10,'192.168.100.254','a:2:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";}',1,0,'','',0,'',0,NULL,NULL),(11,0,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1472677251,1,10,'192.168.100.254','a:2:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";}',1,0,'','',0,'',0,NULL,NULL),(12,0,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',1472677255,3,0,'192.168.100.254','a:2:{i:0;s:5:\"admin\";i:1;s:5:\"pages\";}',-1,0,'','',0,'',0,NULL,NULL),(13,0,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1472677583,1,10,'192.168.100.254','a:2:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:1\";}',1,0,'','',0,'',0,NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(64) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'core','formProtectionSessionToken:1','s:64:\"d232f09bcee01d28ef062601bf951ace7629ffff017a1f6bd342ae475af08505\";'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\DatabaseCharsetUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AccessRightParametersUpdate','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility6ExtractionUpdate','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ContentTypesToTextMediaUpdate','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileListIsStartModuleUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FilesReplacePermissionUpdate','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageIsoCodeUpdate','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MediaceExtractionUpdate','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateMediaToAssetsForTextMediaCe','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateShortcutUrlsAgainUpdate','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\OpenidExtractionUpdate','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PageShortcutParentUpdate','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ProcessedFileChecksumUpdate','i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TableFlexFormToTtContentFieldsUpdate','i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WorkspacesNotificationSettingsUpdate','i:1;'),(20,'installUpdate','TYPO3\\CMS\\Rtehtmlarea\\Hook\\Install\\DeprecatedRteProperties','i:1;'),(21,'installUpdate','TYPO3\\CMS\\Rtehtmlarea\\Hook\\Install\\RteAcronymButtonRenamedToAbbreviation','i:1;'),(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:1;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1449993386,0,1449993386,1,'Main TypoScript Rendering','UserLike Typo3 Test',0,0,0,1,1,'EXT:fluid_styled_content/Configuration/TypoScript/Static/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/','','page = PAGE\npage.10 = TEXT\npage.10.value (\n   <div style=\"width: 800px; margin: 15% auto;\">\n      <div style=\"width: 300px;\">\n        <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 150 42\"><path d=\"M60.2 14.4v27h-3.8v-27h-6.7v-3.3h17.1v3.3h-6.6zm20.2 12.9v14h-3.9v-14l-7.7-16.2h4.1l5.7 12.2 5.7-12.2h3.9l-7.8 16.2zm19.5 2.6h-3.6v11.4h-3.8V11.1s3.7-.3 7.3-.3c6.6 0 8.5 4.1 8.5 9.4 0 6.5-2.3 9.7-8.4 9.7m.4-16c-2.4 0-4.1.3-4.1.3v12.6h4.1c2.4 0 4.1-1.6 4.1-6.3 0-4.4-1-6.6-4.1-6.6m21.5 27.7c-7.1 0-9-5.2-9-15.8 0-10.2 1.9-15.1 9-15.1s9 4.9 9 15.1c.1 10.6-1.8 15.8-9 15.8m0-27.7c-3.9 0-5.2 2.6-5.2 12.1 0 9.3 1.3 12.4 5.2 12.4 3.9 0 5.2-3.1 5.2-12.4 0-9.4-1.3-12.1-5.2-12.1m19.9 27.7c-2.1 0-5.3-.6-5.7-.7v-3.1c1 .2 3.7.7 5.6.7 2.2 0 3.6-1.9 3.6-5.2 0-3.9-.6-6-3.7-6H138V24h3.1c3.5 0 3.7-3.6 3.7-5.3 0-3.4-1.1-4.8-3.2-4.8-1.9 0-4.1.5-5.3.7v-3.2c.5-.1 3-.7 5.2-.7 4.4 0 7 1.9 7 8.3 0 2.9-1 5.5-3.3 6.3 2.6.2 3.8 3.1 3.8 7.3 0 6.6-2.5 9-7.3 9\"/><path fill=\"#FF8700\" d=\"M31.7 28.8c-.6.2-1.1.2-1.7.2-5.2 0-12.9-18.2-12.9-24.3 0-2.2.5-3 1.3-3.6C12 1.9 4.3 4.2 1.9 7.2 1.3 8 1 9.1 1 10.6c0 9.5 10.1 31 17.3 31 3.3 0 8.8-5.4 13.4-12.8M28.4.5c6.6 0 13.2 1.1 13.2 4.8 0 7.6-4.8 16.7-7.2 16.7-4.4 0-9.9-12.1-9.9-18.2C24.5 1 25.6.5 28.4.5\"/></svg>\n      </div>\n      <h4 style=\"font-family: Verdana, Arial, Helvetica, sans-serif;\">Welcome to a default website made with <a href=\"https://typo3.org\">TYPO3</a></h4>\n   </div>\n)\npage.100 < styles.content.get','','This is an Empty Site Package TypoScript template.\n\nFor each website you need a TypoScript template on the main page of your website (on the top level). For better maintenance all TypoScript should be extracted into external files via <INCLUDE_TYPOSCRIPT: source=\"FILE:EXT:site_myproject/Configuration/TypoScript/setup.ts\">.',NULL,0,0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `rowDescription` text,
  `bodytext` mediumtext,
  `image` int(11) unsigned NOT NULL DEFAULT '0',
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` int(11) unsigned NOT NULL DEFAULT '0',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text,
  `pages` text,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` int(11) unsigned NOT NULL DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `menu_type` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `select_key` varchar(80) NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` varchar(10) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_enclosure` smallint(6) unsigned NOT NULL DEFAULT '0',
  `table_header_position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_tfoot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `header_position` varchar(6) NOT NULL DEFAULT '',
  `image_compression` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_effects` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_noRows` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `section_frame` int(11) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_bgColor` int(11) unsigned NOT NULL DEFAULT '0',
  `table_border` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellpadding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellspacing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bullets_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uploads_description` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uploads_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `assets` int(11) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `tx_form_predefinedform` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1472677583,1472677008,1,0,0,256,'list','','',NULL,0,0,0,2,0,0,0,0,0,NULL,'',0,0,0,'','','',0,'0','0','userlike_widget','',1,0,NULL,0,'','',0,0,0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.secret\">\n                    <value index=\"vDEF\">6b5bb524d8d9b7fe84a9eac6f8c2b47149c7ea6782041e7a0a47226901efbaff</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'',0,'a:26:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"list_type\";N;s:11:\"pi_flexform\";N;s:10:\"select_key\";N;s:5:\"pages\";N;s:9:\"recursive\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:14:\"rowDescription\";N;s:10:\"categories\";N;}',NULL,'',NULL,124,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext,
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `wsdl_url` varchar(100) NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rtehtmlarea_acronym`
--

DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) NOT NULL DEFAULT '',
  `acronym` varchar(255) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rtehtmlarea_acronym`
--

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-31 21:09:08
